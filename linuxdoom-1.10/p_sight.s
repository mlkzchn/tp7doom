	.file	"p_sight.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "p_sight.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 50
rcsid:
	.string	"$Id: p_sight.c,v 1.3 1997/01/28 22:08:28 b1 Exp $"
	.globl	sightzstart
	.bss
	.align 4
	.type	sightzstart, @object
	.size	sightzstart, 4
sightzstart:
	.zero	4
	.globl	topslope
	.align 4
	.type	topslope, @object
	.size	topslope, 4
topslope:
	.zero	4
	.globl	bottomslope
	.align 4
	.type	bottomslope, @object
	.size	bottomslope, 4
bottomslope:
	.zero	4
	.globl	strace
	.align 16
	.type	strace, @object
	.size	strace, 16
strace:
	.zero	16
	.globl	t2x
	.align 4
	.type	t2x, @object
	.size	t2x, 4
t2x:
	.zero	4
	.globl	t2y
	.align 4
	.type	t2y, @object
	.size	t2y, 4
t2y:
	.zero	4
	.globl	sightcounts
	.align 8
	.type	sightcounts, @object
	.size	sightcounts, 8
sightcounts:
	.zero	8
	.text
	.globl	P_DivlineSide
	.type	P_DivlineSide, @function
P_DivlineSide:
.LFB0:
	.file 1 "p_sight.c"
	.loc 1 59 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# x, x
	movl	%esi, -24(%rbp)	# y, y
	movq	%rdx, -32(%rbp)	# node, node
# p_sight.c:65:     if (!node->dx)
	.loc 1 65 14
	movq	-32(%rbp), %rax	# node, tmp106
	movl	8(%rax), %eax	# node_25(D)->dx, _1
# p_sight.c:65:     if (!node->dx)
	.loc 1 65 8
	testl	%eax, %eax	# _1
	jne	.L2	#,
# p_sight.c:67: 	if (x==node->x)
	.loc 1 67 13
	movq	-32(%rbp), %rax	# node, tmp107
	movl	(%rax), %eax	# node_25(D)->x, _2
# p_sight.c:67: 	if (x==node->x)
	.loc 1 67 5
	cmpl	%eax, -20(%rbp)	# _2, x
	jne	.L3	#,
# p_sight.c:68: 	    return 2;
	.loc 1 68 13
	movl	$2, %eax	#, _23
	jmp	.L4	#
.L3:
# p_sight.c:70: 	if (x <= node->x)
	.loc 1 70 15
	movq	-32(%rbp), %rax	# node, tmp108
	movl	(%rax), %eax	# node_25(D)->x, _3
# p_sight.c:70: 	if (x <= node->x)
	.loc 1 70 5
	cmpl	%eax, -20(%rbp)	# _3, x
	jg	.L5	#,
# p_sight.c:71: 	    return node->dy > 0;
	.loc 1 71 17
	movq	-32(%rbp), %rax	# node, tmp109
	movl	12(%rax), %eax	# node_25(D)->dy, _4
# p_sight.c:71: 	    return node->dy > 0;
	.loc 1 71 22
	testl	%eax, %eax	# _4
	setg	%al	#, _5
	movzbl	%al, %eax	# _5, _23
	jmp	.L4	#
.L5:
# p_sight.c:73: 	return node->dy < 0;
	.loc 1 73 13
	movq	-32(%rbp), %rax	# node, tmp110
	movl	12(%rax), %eax	# node_25(D)->dy, _6
# p_sight.c:73: 	return node->dy < 0;
	.loc 1 73 18
	shrl	$31, %eax	#, tmp111
	movzbl	%al, %eax	# _7, _23
	jmp	.L4	#
.L2:
# p_sight.c:76:     if (!node->dy)
	.loc 1 76 14
	movq	-32(%rbp), %rax	# node, tmp112
	movl	12(%rax), %eax	# node_25(D)->dy, _8
# p_sight.c:76:     if (!node->dy)
	.loc 1 76 8
	testl	%eax, %eax	# _8
	jne	.L6	#,
# p_sight.c:78: 	if (x==node->y)
	.loc 1 78 13
	movq	-32(%rbp), %rax	# node, tmp113
	movl	4(%rax), %eax	# node_25(D)->y, _9
# p_sight.c:78: 	if (x==node->y)
	.loc 1 78 5
	cmpl	%eax, -20(%rbp)	# _9, x
	jne	.L7	#,
# p_sight.c:79: 	    return 2;
	.loc 1 79 13
	movl	$2, %eax	#, _23
	jmp	.L4	#
.L7:
# p_sight.c:81: 	if (y <= node->y)
	.loc 1 81 15
	movq	-32(%rbp), %rax	# node, tmp114
	movl	4(%rax), %eax	# node_25(D)->y, _10
# p_sight.c:81: 	if (y <= node->y)
	.loc 1 81 5
	cmpl	%eax, -24(%rbp)	# _10, y
	jg	.L8	#,
# p_sight.c:82: 	    return node->dx < 0;
	.loc 1 82 17
	movq	-32(%rbp), %rax	# node, tmp115
	movl	8(%rax), %eax	# node_25(D)->dx, _11
# p_sight.c:82: 	    return node->dx < 0;
	.loc 1 82 22
	shrl	$31, %eax	#, tmp116
	movzbl	%al, %eax	# _12, _23
	jmp	.L4	#
.L8:
# p_sight.c:84: 	return node->dx > 0;
	.loc 1 84 13
	movq	-32(%rbp), %rax	# node, tmp117
	movl	8(%rax), %eax	# node_25(D)->dx, _13
# p_sight.c:84: 	return node->dx > 0;
	.loc 1 84 18
	testl	%eax, %eax	# _13
	setg	%al	#, _14
	movzbl	%al, %eax	# _14, _23
	jmp	.L4	#
.L6:
# p_sight.c:87:     dx = (x - node->x);
	.loc 1 87 19
	movq	-32(%rbp), %rax	# node, tmp118
	movl	(%rax), %eax	# node_25(D)->x, _15
# p_sight.c:87:     dx = (x - node->x);
	.loc 1 87 8
	movl	-20(%rbp), %edx	# x, tmp122
	subl	%eax, %edx	# _15, tmp121
	movl	%edx, -16(%rbp)	# tmp121, dx
# p_sight.c:88:     dy = (y - node->y);
	.loc 1 88 19
	movq	-32(%rbp), %rax	# node, tmp123
	movl	4(%rax), %eax	# node_25(D)->y, _16
# p_sight.c:88:     dy = (y - node->y);
	.loc 1 88 8
	movl	-24(%rbp), %edx	# y, tmp127
	subl	%eax, %edx	# _16, tmp126
	movl	%edx, -12(%rbp)	# tmp126, dy
# p_sight.c:90:     left =  (node->dy>>FRACBITS) * (dx>>FRACBITS);
	.loc 1 90 18
	movq	-32(%rbp), %rax	# node, tmp128
	movl	12(%rax), %eax	# node_25(D)->dy, _17
# p_sight.c:90:     left =  (node->dy>>FRACBITS) * (dx>>FRACBITS);
	.loc 1 90 22
	sarl	$16, %eax	#, _17
	movl	%eax, %edx	# _17, _18
# p_sight.c:90:     left =  (node->dy>>FRACBITS) * (dx>>FRACBITS);
	.loc 1 90 39
	movl	-16(%rbp), %eax	# dx, tmp129
	sarl	$16, %eax	#, _19
# p_sight.c:90:     left =  (node->dy>>FRACBITS) * (dx>>FRACBITS);
	.loc 1 90 10
	imull	%edx, %eax	# _18, tmp130
	movl	%eax, -8(%rbp)	# tmp130, left
# p_sight.c:91:     right = (dy>>FRACBITS) * (node->dx>>FRACBITS);
	.loc 1 91 16
	movl	-12(%rbp), %eax	# dy, tmp131
	sarl	$16, %eax	#, tmp131
	movl	%eax, %edx	# tmp131, _20
# p_sight.c:91:     right = (dy>>FRACBITS) * (node->dx>>FRACBITS);
	.loc 1 91 35
	movq	-32(%rbp), %rax	# node, tmp132
	movl	8(%rax), %eax	# node_25(D)->dx, _21
# p_sight.c:91:     right = (dy>>FRACBITS) * (node->dx>>FRACBITS);
	.loc 1 91 39
	sarl	$16, %eax	#, _22
# p_sight.c:91:     right = (dy>>FRACBITS) * (node->dx>>FRACBITS);
	.loc 1 91 11
	imull	%edx, %eax	# _20, tmp133
	movl	%eax, -4(%rbp)	# tmp133, right
# p_sight.c:93:     if (right < left)
	.loc 1 93 8
	movl	-4(%rbp), %eax	# right, tmp134
	cmpl	-8(%rbp), %eax	# left, tmp134
	jge	.L9	#,
# p_sight.c:94: 	return 0;	// front side
	.loc 1 94 9
	movl	$0, %eax	#, _23
	jmp	.L4	#
.L9:
# p_sight.c:96:     if (left == right)
	.loc 1 96 8
	movl	-8(%rbp), %eax	# left, tmp135
	cmpl	-4(%rbp), %eax	# right, tmp135
	jne	.L10	#,
# p_sight.c:97: 	return 2;
	.loc 1 97 9
	movl	$2, %eax	#, _23
	jmp	.L4	#
.L10:
# p_sight.c:98:     return 1;		// back side
	.loc 1 98 12
	movl	$1, %eax	#, _23
.L4:
# p_sight.c:99: }
	.loc 1 99 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	P_DivlineSide, .-P_DivlineSide
	.globl	P_InterceptVector2
	.type	P_InterceptVector2, @function
P_InterceptVector2:
.LFB1:
	.loc 1 112 1
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
# p_sight.c:117:     den = FixedMul (v1->dy>>8,v2->dx) - FixedMul(v1->dx>>8,v2->dy);
	.loc 1 117 11
	movq	-40(%rbp), %rax	# v2, tmp104
	movl	8(%rax), %eax	# v2_24(D)->dx, _1
# p_sight.c:117:     den = FixedMul (v1->dy>>8,v2->dx) - FixedMul(v1->dx>>8,v2->dy);
	.loc 1 117 23
	movq	-48(%rbp), %rdx	# v1, tmp105
	movl	12(%rdx), %edx	# v1_25(D)->dy, _2
# p_sight.c:117:     den = FixedMul (v1->dy>>8,v2->dx) - FixedMul(v1->dx>>8,v2->dy);
	.loc 1 117 11
	sarl	$8, %edx	#, _3
	movl	%eax, %esi	# _1,
	movl	%edx, %edi	# _3,
	call	FixedMul@PLT	#
	movl	%eax, %ebx	#, _4
# p_sight.c:117:     den = FixedMul (v1->dy>>8,v2->dx) - FixedMul(v1->dx>>8,v2->dy);
	.loc 1 117 41 discriminator 1
	movq	-40(%rbp), %rax	# v2, tmp106
	movl	12(%rax), %eax	# v2_24(D)->dy, _5
# p_sight.c:117:     den = FixedMul (v1->dy>>8,v2->dx) - FixedMul(v1->dx>>8,v2->dy);
	.loc 1 117 52 discriminator 1
	movq	-48(%rbp), %rdx	# v1, tmp107
	movl	8(%rdx), %edx	# v1_25(D)->dx, _6
# p_sight.c:117:     den = FixedMul (v1->dy>>8,v2->dx) - FixedMul(v1->dx>>8,v2->dy);
	.loc 1 117 41 discriminator 1
	sarl	$8, %edx	#, _7
	movl	%eax, %esi	# _5,
	movl	%edx, %edi	# _7,
	call	FixedMul@PLT	#
# p_sight.c:117:     den = FixedMul (v1->dy>>8,v2->dx) - FixedMul(v1->dx>>8,v2->dy);
	.loc 1 117 9 discriminator 2
	subl	%eax, %ebx	# _8, _4
	movl	%ebx, %edx	# _4, tmp108
	movl	%edx, -28(%rbp)	# tmp108, den
# p_sight.c:119:     if (den == 0)
	.loc 1 119 8
	cmpl	$0, -28(%rbp)	#, den
	jne	.L12	#,
# p_sight.c:120: 	return 0;
	.loc 1 120 9
	movl	$0, %eax	#, _21
	jmp	.L13	#
.L12:
# p_sight.c:123:     num = FixedMul ( (v1->x - v2->x)>>8 ,v1->dy) + 
	.loc 1 123 11
	movq	-48(%rbp), %rax	# v1, tmp109
	movl	12(%rax), %eax	# v1_25(D)->dy, _9
# p_sight.c:123:     num = FixedMul ( (v1->x - v2->x)>>8 ,v1->dy) + 
	.loc 1 123 25
	movq	-48(%rbp), %rdx	# v1, tmp110
	movl	(%rdx), %ecx	# v1_25(D)->x, _10
# p_sight.c:123:     num = FixedMul ( (v1->x - v2->x)>>8 ,v1->dy) + 
	.loc 1 123 33
	movq	-40(%rbp), %rdx	# v2, tmp111
	movl	(%rdx), %edx	# v2_24(D)->x, _11
# p_sight.c:123:     num = FixedMul ( (v1->x - v2->x)>>8 ,v1->dy) + 
	.loc 1 123 29
	subl	%edx, %ecx	# _11, _12
# p_sight.c:123:     num = FixedMul ( (v1->x - v2->x)>>8 ,v1->dy) + 
	.loc 1 123 11
	sarl	$8, %ecx	#, _12
	movl	%ecx, %edx	# _12, _13
	movl	%eax, %esi	# _9,
	movl	%edx, %edi	# _13,
	call	FixedMul@PLT	#
	movl	%eax, %ebx	#, _14
# p_sight.c:124: 	FixedMul ( (v2->y - v1->y)>>8 , v1->dx);
	.loc 1 124 2
	movq	-48(%rbp), %rax	# v1, tmp112
	movl	8(%rax), %eax	# v1_25(D)->dx, _15
# p_sight.c:124: 	FixedMul ( (v2->y - v1->y)>>8 , v1->dx);
	.loc 1 124 16
	movq	-40(%rbp), %rdx	# v2, tmp113
	movl	4(%rdx), %ecx	# v2_24(D)->y, _16
# p_sight.c:124: 	FixedMul ( (v2->y - v1->y)>>8 , v1->dx);
	.loc 1 124 24
	movq	-48(%rbp), %rdx	# v1, tmp114
	movl	4(%rdx), %edx	# v1_25(D)->y, _17
# p_sight.c:124: 	FixedMul ( (v2->y - v1->y)>>8 , v1->dx);
	.loc 1 124 20
	subl	%edx, %ecx	# _17, _18
# p_sight.c:124: 	FixedMul ( (v2->y - v1->y)>>8 , v1->dx);
	.loc 1 124 2
	sarl	$8, %ecx	#, _18
	movl	%ecx, %edx	# _18, _19
	movl	%eax, %esi	# _15,
	movl	%edx, %edi	# _19,
	call	FixedMul@PLT	#
# p_sight.c:123:     num = FixedMul ( (v1->x - v2->x)>>8 ,v1->dy) + 
	.loc 1 123 9
	addl	%ebx, %eax	# _14, tmp115
	movl	%eax, -24(%rbp)	# tmp115, num
# p_sight.c:125:     frac = FixedDiv (num , den);
	.loc 1 125 12
	movl	-28(%rbp), %edx	# den, tmp116
	movl	-24(%rbp), %eax	# num, tmp117
	movl	%edx, %esi	# tmp116,
	movl	%eax, %edi	# tmp117,
	call	FixedDiv@PLT	#
	movl	%eax, -20(%rbp)	# tmp118, frac
# p_sight.c:127:     return frac;
	.loc 1 127 12
	movl	-20(%rbp), %eax	# frac, _21
.L13:
# p_sight.c:128: }
	.loc 1 128 1
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	P_InterceptVector2, .-P_InterceptVector2
	.section	.rodata
	.align 8
.LC0:
	.string	"P_CrossSubsector: ss %i with numss = %i"
	.text
	.globl	P_CrossSubsector
	.type	P_CrossSubsector, @function
P_CrossSubsector:
.LFB2:
	.loc 1 136 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movl	%edi, -132(%rbp)	# num, num
# p_sight.c:136: {
	.loc 1 136 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp213
	movq	%rax, -8(%rbp)	# tmp213, D.7169
	xorl	%eax, %eax	# tmp213
# p_sight.c:154:     if (num>=numsubsectors)
	.loc 1 154 12
	movl	numsubsectors(%rip), %eax	# numsubsectors, numsubsectors.0_1
# p_sight.c:154:     if (num>=numsubsectors)
	.loc 1 154 8
	cmpl	%eax, -132(%rbp)	# numsubsectors.0_1, num
	jl	.L15	#,
# p_sight.c:155: 	I_Error ("P_CrossSubsector: ss %i with numss = %i",
	.loc 1 155 2
	movl	numsubsectors(%rip), %edx	# numsubsectors, numsubsectors.1_2
	movl	-132(%rbp), %eax	# num, tmp136
	movl	%eax, %esi	# tmp136,
	leaq	.LC0(%rip), %rax	#, tmp137
	movq	%rax, %rdi	# tmp137,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L15:
# p_sight.c:160:     sub = &subsectors[num];
	.loc 1 160 11
	movq	subsectors(%rip), %rax	# subsectors, subsectors.2_3
# p_sight.c:160:     sub = &subsectors[num];
	.loc 1 160 22
	movl	-132(%rbp), %edx	# num, tmp138
	movslq	%edx, %rdx	# tmp138, _4
	salq	$4, %rdx	#, _5
# p_sight.c:160:     sub = &subsectors[num];
	.loc 1 160 9
	addq	%rdx, %rax	# _5, tmp139
	movq	%rax, -80(%rbp)	# tmp139, sub
# p_sight.c:163:     count = sub->numlines;
	.loc 1 163 16
	movq	-80(%rbp), %rax	# sub, tmp140
	movzwl	8(%rax), %eax	# sub_67->numlines, _6
# p_sight.c:163:     count = sub->numlines;
	.loc 1 163 11
	cwtl
	movl	%eax, -116(%rbp)	# tmp141, count
# p_sight.c:164:     seg = &segs[sub->firstline];
	.loc 1 164 11
	movq	segs(%rip), %rcx	# segs, segs.3_7
# p_sight.c:164:     seg = &segs[sub->firstline];
	.loc 1 164 20
	movq	-80(%rbp), %rax	# sub, tmp142
	movzwl	10(%rax), %eax	# sub_67->firstline, _8
	movswq	%ax, %rdx	# _8, _9
# p_sight.c:164:     seg = &segs[sub->firstline];
	.loc 1 164 16
	movq	%rdx, %rax	# _9, tmp143
	salq	$3, %rax	#, tmp144
	subq	%rdx, %rax	# _9, tmp143
	salq	$3, %rax	#, tmp145
# p_sight.c:164:     seg = &segs[sub->firstline];
	.loc 1 164 9
	addq	%rcx, %rax	# segs.3_7, tmp146
	movq	%rax, -88(%rbp)	# tmp146, seg
# p_sight.c:166:     for ( ; count ; seg++, count--)
	.loc 1 166 5
	jmp	.L16	#
.L31:
# p_sight.c:168: 	line = seg->linedef;
	.loc 1 168 7
	movq	-88(%rbp), %rax	# seg, tmp147
	movq	32(%rax), %rax	# seg_53->linedef, tmp148
	movq	%rax, -72(%rbp)	# tmp148, line
# p_sight.c:171: 	if (line->validcount == validcount)
	.loc 1 171 10
	movq	-72(%rbp), %rax	# line, tmp149
	movl	72(%rax), %edx	# line_71->validcount, _11
# p_sight.c:171: 	if (line->validcount == validcount)
	.loc 1 171 23
	movl	validcount(%rip), %eax	# validcount, validcount.4_12
# p_sight.c:171: 	if (line->validcount == validcount)
	.loc 1 171 5
	cmpl	%eax, %edx	# validcount.4_12, _11
	je	.L34	#,
# p_sight.c:174: 	line->validcount = validcount;
	.loc 1 174 19
	movl	validcount(%rip), %edx	# validcount, validcount.5_13
	movq	-72(%rbp), %rax	# line, tmp150
	movl	%edx, 72(%rax)	# validcount.5_13, line_71->validcount
# p_sight.c:176: 	v1 = line->v1;
	.loc 1 176 5
	movq	-72(%rbp), %rax	# line, tmp151
	movq	(%rax), %rax	# line_71->v1, tmp152
	movq	%rax, -64(%rbp)	# tmp152, v1
# p_sight.c:177: 	v2 = line->v2;
	.loc 1 177 5
	movq	-72(%rbp), %rax	# line, tmp153
	movq	8(%rax), %rax	# line_71->v2, tmp154
	movq	%rax, -56(%rbp)	# tmp154, v2
# p_sight.c:178: 	s1 = P_DivlineSide (v1->x,v1->y, &strace);
	.loc 1 178 7
	movq	-64(%rbp), %rax	# v1, tmp155
	movl	4(%rax), %ecx	# v1_73->y, _14
	movq	-64(%rbp), %rax	# v1, tmp156
	movl	(%rax), %eax	# v1_73->x, _15
	leaq	strace(%rip), %rdx	#, tmp157
	movl	%ecx, %esi	# _14,
	movl	%eax, %edi	# _15,
	call	P_DivlineSide	#
	movl	%eax, -104(%rbp)	# tmp158, s1
# p_sight.c:179: 	s2 = P_DivlineSide (v2->x, v2->y, &strace);
	.loc 1 179 7
	movq	-56(%rbp), %rax	# v2, tmp159
	movl	4(%rax), %ecx	# v2_74->y, _16
	movq	-56(%rbp), %rax	# v2, tmp160
	movl	(%rax), %eax	# v2_74->x, _17
	leaq	strace(%rip), %rdx	#, tmp161
	movl	%ecx, %esi	# _16,
	movl	%eax, %edi	# _17,
	call	P_DivlineSide	#
	movl	%eax, -100(%rbp)	# tmp162, s2
# p_sight.c:182: 	if (s1 == s2)
	.loc 1 182 5
	movl	-104(%rbp), %eax	# s1, tmp163
	cmpl	-100(%rbp), %eax	# s2, tmp163
	je	.L35	#,
# p_sight.c:185: 	divl.x = v1->x;
	.loc 1 185 13
	movq	-64(%rbp), %rax	# v1, tmp164
	movl	(%rax), %eax	# v1_73->x, _18
# p_sight.c:185: 	divl.x = v1->x;
	.loc 1 185 9
	movl	%eax, -32(%rbp)	# _18, divl.x
# p_sight.c:186: 	divl.y = v1->y;
	.loc 1 186 13
	movq	-64(%rbp), %rax	# v1, tmp165
	movl	4(%rax), %eax	# v1_73->y, _19
# p_sight.c:186: 	divl.y = v1->y;
	.loc 1 186 9
	movl	%eax, -28(%rbp)	# _19, divl.y
# p_sight.c:187: 	divl.dx = v2->x - v1->x;
	.loc 1 187 14
	movq	-56(%rbp), %rax	# v2, tmp166
	movl	(%rax), %edx	# v2_74->x, _20
# p_sight.c:187: 	divl.dx = v2->x - v1->x;
	.loc 1 187 22
	movq	-64(%rbp), %rax	# v1, tmp167
	movl	(%rax), %eax	# v1_73->x, _21
# p_sight.c:187: 	divl.dx = v2->x - v1->x;
	.loc 1 187 18
	subl	%eax, %edx	# _21, _22
# p_sight.c:187: 	divl.dx = v2->x - v1->x;
	.loc 1 187 10
	movl	%edx, -24(%rbp)	# _22, divl.dx
# p_sight.c:188: 	divl.dy = v2->y - v1->y;
	.loc 1 188 14
	movq	-56(%rbp), %rax	# v2, tmp168
	movl	4(%rax), %edx	# v2_74->y, _23
# p_sight.c:188: 	divl.dy = v2->y - v1->y;
	.loc 1 188 22
	movq	-64(%rbp), %rax	# v1, tmp169
	movl	4(%rax), %eax	# v1_73->y, _24
# p_sight.c:188: 	divl.dy = v2->y - v1->y;
	.loc 1 188 18
	subl	%eax, %edx	# _24, _25
# p_sight.c:188: 	divl.dy = v2->y - v1->y;
	.loc 1 188 10
	movl	%edx, -20(%rbp)	# _25, divl.dy
# p_sight.c:189: 	s1 = P_DivlineSide (strace.x, strace.y, &divl);
	.loc 1 189 7
	movl	4+strace(%rip), %ecx	# strace.y, _26
	movl	strace(%rip), %eax	# strace.x, _27
	leaq	-32(%rbp), %rdx	#, tmp170
	movl	%ecx, %esi	# _26,
	movl	%eax, %edi	# _27,
	call	P_DivlineSide	#
	movl	%eax, -104(%rbp)	# tmp171, s1
# p_sight.c:190: 	s2 = P_DivlineSide (t2x, t2y, &divl);
	.loc 1 190 7
	movl	t2y(%rip), %ecx	# t2y, t2y.6_28
	movl	t2x(%rip), %eax	# t2x, t2x.7_29
	leaq	-32(%rbp), %rdx	#, tmp172
	movl	%ecx, %esi	# t2y.6_28,
	movl	%eax, %edi	# t2x.7_29,
	call	P_DivlineSide	#
	movl	%eax, -100(%rbp)	# tmp173, s2
# p_sight.c:193: 	if (s1 == s2)
	.loc 1 193 5
	movl	-104(%rbp), %eax	# s1, tmp174
	cmpl	-100(%rbp), %eax	# s2, tmp174
	je	.L36	#,
# p_sight.c:198: 	if ( !(line->flags & ML_TWOSIDED) )
	.loc 1 198 13
	movq	-72(%rbp), %rax	# line, tmp175
	movzwl	24(%rax), %eax	# line_71->flags, _30
# p_sight.c:198: 	if ( !(line->flags & ML_TWOSIDED) )
	.loc 1 198 21
	cwtl
	andl	$4, %eax	#, _32
# p_sight.c:198: 	if ( !(line->flags & ML_TWOSIDED) )
	.loc 1 198 5
	testl	%eax, %eax	# _32
	jne	.L21	#,
# p_sight.c:199: 	    return false;
	.loc 1 199 13
	movl	$0, %eax	#, _57
	jmp	.L32	#
.L21:
# p_sight.c:202: 	front = seg->frontsector;
	.loc 1 202 8
	movq	-88(%rbp), %rax	# seg, tmp176
	movq	40(%rax), %rax	# seg_53->frontsector, tmp177
	movq	%rax, -48(%rbp)	# tmp177, front
# p_sight.c:203: 	back = seg->backsector;
	.loc 1 203 7
	movq	-88(%rbp), %rax	# seg, tmp178
	movq	48(%rax), %rax	# seg_53->backsector, tmp179
	movq	%rax, -40(%rbp)	# tmp179, back
# p_sight.c:206: 	if (front->floorheight == back->floorheight
	.loc 1 206 11
	movq	-48(%rbp), %rax	# front, tmp180
	movl	(%rax), %edx	# front_87->floorheight, _33
# p_sight.c:206: 	if (front->floorheight == back->floorheight
	.loc 1 206 32
	movq	-40(%rbp), %rax	# back, tmp181
	movl	(%rax), %eax	# back_88->floorheight, _34
# p_sight.c:206: 	if (front->floorheight == back->floorheight
	.loc 1 206 5
	cmpl	%eax, %edx	# _34, _33
	jne	.L23	#,
# p_sight.c:207: 	    && front->ceilingheight == back->ceilingheight)
	.loc 1 207 14
	movq	-48(%rbp), %rax	# front, tmp182
	movl	4(%rax), %edx	# front_87->ceilingheight, _35
# p_sight.c:207: 	    && front->ceilingheight == back->ceilingheight)
	.loc 1 207 37
	movq	-40(%rbp), %rax	# back, tmp183
	movl	4(%rax), %eax	# back_88->ceilingheight, _36
# p_sight.c:207: 	    && front->ceilingheight == back->ceilingheight)
	.loc 1 207 6
	cmpl	%eax, %edx	# _36, _35
	je	.L37	#,
.L23:
# p_sight.c:212: 	if (front->ceilingheight < back->ceilingheight)
	.loc 1 212 11
	movq	-48(%rbp), %rax	# front, tmp184
	movl	4(%rax), %edx	# front_87->ceilingheight, _37
# p_sight.c:212: 	if (front->ceilingheight < back->ceilingheight)
	.loc 1 212 33
	movq	-40(%rbp), %rax	# back, tmp185
	movl	4(%rax), %eax	# back_88->ceilingheight, _38
# p_sight.c:212: 	if (front->ceilingheight < back->ceilingheight)
	.loc 1 212 5
	cmpl	%eax, %edx	# _38, _37
	jge	.L24	#,
# p_sight.c:213: 	    opentop = front->ceilingheight;
	.loc 1 213 14
	movq	-48(%rbp), %rax	# front, tmp186
	movl	4(%rax), %eax	# front_87->ceilingheight, tmp187
	movl	%eax, -112(%rbp)	# tmp187, opentop
	jmp	.L25	#
.L24:
# p_sight.c:215: 	    opentop = back->ceilingheight;
	.loc 1 215 14
	movq	-40(%rbp), %rax	# back, tmp188
	movl	4(%rax), %eax	# back_88->ceilingheight, tmp189
	movl	%eax, -112(%rbp)	# tmp189, opentop
.L25:
# p_sight.c:218: 	if (front->floorheight > back->floorheight)
	.loc 1 218 11
	movq	-48(%rbp), %rax	# front, tmp190
	movl	(%rax), %edx	# front_87->floorheight, _39
# p_sight.c:218: 	if (front->floorheight > back->floorheight)
	.loc 1 218 31
	movq	-40(%rbp), %rax	# back, tmp191
	movl	(%rax), %eax	# back_88->floorheight, _40
# p_sight.c:218: 	if (front->floorheight > back->floorheight)
	.loc 1 218 5
	cmpl	%eax, %edx	# _40, _39
	jle	.L26	#,
# p_sight.c:219: 	    openbottom = front->floorheight;
	.loc 1 219 17
	movq	-48(%rbp), %rax	# front, tmp192
	movl	(%rax), %eax	# front_87->floorheight, tmp193
	movl	%eax, -108(%rbp)	# tmp193, openbottom
	jmp	.L27	#
.L26:
# p_sight.c:221: 	    openbottom = back->floorheight;
	.loc 1 221 17
	movq	-40(%rbp), %rax	# back, tmp194
	movl	(%rax), %eax	# back_88->floorheight, tmp195
	movl	%eax, -108(%rbp)	# tmp195, openbottom
.L27:
# p_sight.c:224: 	if (openbottom >= opentop)	
	.loc 1 224 5
	movl	-108(%rbp), %eax	# openbottom, tmp196
	cmpl	-112(%rbp), %eax	# opentop, tmp196
	jl	.L28	#,
# p_sight.c:225: 	    return false;		// stop
	.loc 1 225 13
	movl	$0, %eax	#, _57
	jmp	.L32	#
.L28:
# p_sight.c:227: 	frac = P_InterceptVector2 (&strace, &divl);
	.loc 1 227 9
	leaq	-32(%rbp), %rax	#, tmp197
	movq	%rax, %rsi	# tmp197,
	leaq	strace(%rip), %rax	#, tmp198
	movq	%rax, %rdi	# tmp198,
	call	P_InterceptVector2	#
	movl	%eax, -96(%rbp)	# tmp199, frac
# p_sight.c:229: 	if (front->floorheight != back->floorheight)
	.loc 1 229 11
	movq	-48(%rbp), %rax	# front, tmp200
	movl	(%rax), %edx	# front_87->floorheight, _41
# p_sight.c:229: 	if (front->floorheight != back->floorheight)
	.loc 1 229 32
	movq	-40(%rbp), %rax	# back, tmp201
	movl	(%rax), %eax	# back_88->floorheight, _42
# p_sight.c:229: 	if (front->floorheight != back->floorheight)
	.loc 1 229 5
	cmpl	%eax, %edx	# _42, _41
	je	.L29	#,
# p_sight.c:231: 	    slope = FixedDiv (openbottom - sightzstart , frac);
	.loc 1 231 14
	movl	sightzstart(%rip), %eax	# sightzstart, sightzstart.8_43
	movl	-108(%rbp), %edx	# openbottom, tmp202
	subl	%eax, %edx	# sightzstart.8_43, _44
	movl	-96(%rbp), %eax	# frac, tmp203
	movl	%eax, %esi	# tmp203,
	movl	%edx, %edi	# _44,
	call	FixedDiv@PLT	#
	movl	%eax, -92(%rbp)	# tmp204, slope
# p_sight.c:232: 	    if (slope > bottomslope)
	.loc 1 232 16
	movl	bottomslope(%rip), %eax	# bottomslope, bottomslope.9_45
# p_sight.c:232: 	    if (slope > bottomslope)
	.loc 1 232 9
	cmpl	%eax, -92(%rbp)	# bottomslope.9_45, slope
	jle	.L29	#,
# p_sight.c:233: 		bottomslope = slope;
	.loc 1 233 15
	movl	-92(%rbp), %eax	# slope, tmp205
	movl	%eax, bottomslope(%rip)	# tmp205, bottomslope
.L29:
# p_sight.c:236: 	if (front->ceilingheight != back->ceilingheight)
	.loc 1 236 11
	movq	-48(%rbp), %rax	# front, tmp206
	movl	4(%rax), %edx	# front_87->ceilingheight, _46
# p_sight.c:236: 	if (front->ceilingheight != back->ceilingheight)
	.loc 1 236 34
	movq	-40(%rbp), %rax	# back, tmp207
	movl	4(%rax), %eax	# back_88->ceilingheight, _47
# p_sight.c:236: 	if (front->ceilingheight != back->ceilingheight)
	.loc 1 236 5
	cmpl	%eax, %edx	# _47, _46
	je	.L30	#,
# p_sight.c:238: 	    slope = FixedDiv (opentop - sightzstart , frac);
	.loc 1 238 14
	movl	sightzstart(%rip), %eax	# sightzstart, sightzstart.10_48
	movl	-112(%rbp), %edx	# opentop, tmp208
	subl	%eax, %edx	# sightzstart.10_48, _49
	movl	-96(%rbp), %eax	# frac, tmp209
	movl	%eax, %esi	# tmp209,
	movl	%edx, %edi	# _49,
	call	FixedDiv@PLT	#
	movl	%eax, -92(%rbp)	# tmp210, slope
# p_sight.c:239: 	    if (slope < topslope)
	.loc 1 239 16
	movl	topslope(%rip), %eax	# topslope, topslope.11_50
# p_sight.c:239: 	    if (slope < topslope)
	.loc 1 239 9
	cmpl	%eax, -92(%rbp)	# topslope.11_50, slope
	jge	.L30	#,
# p_sight.c:240: 		topslope = slope;
	.loc 1 240 12
	movl	-92(%rbp), %eax	# slope, tmp211
	movl	%eax, topslope(%rip)	# tmp211, topslope
.L30:
# p_sight.c:243: 	if (topslope <= bottomslope)
	.loc 1 243 15
	movl	topslope(%rip), %edx	# topslope, topslope.12_51
	movl	bottomslope(%rip), %eax	# bottomslope, bottomslope.13_52
# p_sight.c:243: 	if (topslope <= bottomslope)
	.loc 1 243 5
	cmpl	%eax, %edx	# bottomslope.13_52, topslope.12_51
	jg	.L18	#,
# p_sight.c:244: 	    return false;		// stop				
	.loc 1 244 13
	movl	$0, %eax	#, _57
	jmp	.L32	#
.L34:
# p_sight.c:172: 	    continue;
	.loc 1 172 6
	nop	
	jmp	.L18	#
.L35:
# p_sight.c:183: 	    continue;
	.loc 1 183 6
	nop	
	jmp	.L18	#
.L36:
# p_sight.c:194: 	    continue;	
	.loc 1 194 6
	nop	
	jmp	.L18	#
.L37:
# p_sight.c:208: 	    continue;	
	.loc 1 208 6
	nop	
.L18:
# p_sight.c:166:     for ( ; count ; seg++, count--)
	.loc 1 166 24
	addq	$56, -88(%rbp)	#, seg
# p_sight.c:166:     for ( ; count ; seg++, count--)
	.loc 1 166 33
	subl	$1, -116(%rbp)	#, count
.L16:
# p_sight.c:166:     for ( ; count ; seg++, count--)
	.loc 1 166 13 discriminator 1
	cmpl	$0, -116(%rbp)	#, count
	jne	.L31	#,
# p_sight.c:247:     return true;		
	.loc 1 247 12
	movl	$1, %eax	#, _57
.L32:
# p_sight.c:248: }
	.loc 1 248 1
	movq	-8(%rbp), %rdx	# D.7169, tmp214
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp214
	je	.L33	#,
	call	__stack_chk_fail@PLT	#
.L33:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	P_CrossSubsector, .-P_CrossSubsector
	.globl	P_CrossBSPNode
	.type	P_CrossBSPNode, @function
P_CrossBSPNode:
.LFB3:
	.loc 1 258 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# bspnum, bspnum
# p_sight.c:262:     if (bspnum & NF_SUBSECTOR)
	.loc 1 262 16
	movl	-20(%rbp), %eax	# bspnum, tmp100
	andl	$32768, %eax	#, _1
# p_sight.c:262:     if (bspnum & NF_SUBSECTOR)
	.loc 1 262 8
	testl	%eax, %eax	# _1
	je	.L39	#,
# p_sight.c:264: 	if (bspnum == -1)
	.loc 1 264 5
	cmpl	$-1, -20(%rbp)	#, bspnum
	jne	.L40	#,
# p_sight.c:265: 	    return P_CrossSubsector (0);
	.loc 1 265 13
	movl	$0, %edi	#,
	call	P_CrossSubsector	#
	jmp	.L41	#
.L40:
# p_sight.c:267: 	    return P_CrossSubsector (bspnum&(~NF_SUBSECTOR));
	.loc 1 267 13
	movl	-20(%rbp), %eax	# bspnum, tmp101
	andb	$127, %ah	#, _2
	movl	%eax, %edi	# _2,
	call	P_CrossSubsector	#
	jmp	.L41	#
.L39:
# p_sight.c:270:     bsp = &nodes[bspnum];
	.loc 1 270 11
	movq	nodes(%rip), %rcx	# nodes, nodes.14_3
# p_sight.c:270:     bsp = &nodes[bspnum];
	.loc 1 270 17
	movl	-20(%rbp), %eax	# bspnum, tmp102
	movslq	%eax, %rdx	# tmp102, _4
	movq	%rdx, %rax	# _4, tmp103
	addq	%rax, %rax	# tmp103
	addq	%rdx, %rax	# _4, tmp103
	salq	$2, %rax	#, tmp103
	addq	%rdx, %rax	# _4, tmp103
	salq	$2, %rax	#, tmp104
# p_sight.c:270:     bsp = &nodes[bspnum];
	.loc 1 270 9
	addq	%rcx, %rax	# nodes.14_3, tmp105
	movq	%rax, -8(%rbp)	# tmp105, bsp
# p_sight.c:273:     side = P_DivlineSide (strace.x, strace.y, (divline_t *)bsp);
	.loc 1 273 12
	movl	4+strace(%rip), %ecx	# strace.y, _6
	movl	strace(%rip), %eax	# strace.x, _7
	movq	-8(%rbp), %rdx	# bsp, tmp106
	movl	%ecx, %esi	# _6,
	movl	%eax, %edi	# _7,
	call	P_DivlineSide	#
	movl	%eax, -12(%rbp)	# tmp107, side
# p_sight.c:274:     if (side == 2)
	.loc 1 274 8
	cmpl	$2, -12(%rbp)	#, side
	jne	.L42	#,
# p_sight.c:275: 	side = 0;	// an "on" should cross both sides
	.loc 1 275 7
	movl	$0, -12(%rbp)	#, side
.L42:
# p_sight.c:278:     if (!P_CrossBSPNode (bsp->children[side]) )
	.loc 1 278 39
	movq	-8(%rbp), %rax	# bsp, tmp108
	movl	-12(%rbp), %edx	# side, tmp110
	movslq	%edx, %rdx	# tmp110, tmp109
	addq	$24, %rdx	#, tmp111
	movzwl	(%rax,%rdx,2), %eax	# bsp_22->children[side_17], _8
# p_sight.c:278:     if (!P_CrossBSPNode (bsp->children[side]) )
	.loc 1 278 10
	movzwl	%ax, %eax	# _8, _9
	movl	%eax, %edi	# _9,
	call	P_CrossBSPNode	#
# p_sight.c:278:     if (!P_CrossBSPNode (bsp->children[side]) )
	.loc 1 278 8 discriminator 1
	testl	%eax, %eax	# _10
	jne	.L43	#,
# p_sight.c:279: 	return false;
	.loc 1 279 9
	movl	$0, %eax	#, _18
	jmp	.L41	#
.L43:
# p_sight.c:282:     if (side == P_DivlineSide (t2x, t2y,(divline_t *)bsp))
	.loc 1 282 17
	movl	t2y(%rip), %ecx	# t2y, t2y.15_11
	movl	t2x(%rip), %eax	# t2x, t2x.16_12
	movq	-8(%rbp), %rdx	# bsp, tmp112
	movl	%ecx, %esi	# t2y.15_11,
	movl	%eax, %edi	# t2x.16_12,
	call	P_DivlineSide	#
# p_sight.c:282:     if (side == P_DivlineSide (t2x, t2y,(divline_t *)bsp))
	.loc 1 282 8 discriminator 1
	cmpl	%eax, -12(%rbp)	# _13, side
	jne	.L44	#,
# p_sight.c:285: 	return true;
	.loc 1 285 9
	movl	$1, %eax	#, _18
	jmp	.L41	#
.L44:
# p_sight.c:289:     return P_CrossBSPNode (bsp->children[side^1]);
	.loc 1 289 46
	movl	-12(%rbp), %eax	# side, tmp113
	xorl	$1, %eax	#, tmp113
	movl	%eax, %edx	# tmp113, _14
# p_sight.c:289:     return P_CrossBSPNode (bsp->children[side^1]);
	.loc 1 289 41
	movq	-8(%rbp), %rax	# bsp, tmp114
	movslq	%edx, %rdx	# _14, tmp115
	addq	$24, %rdx	#, tmp116
	movzwl	(%rax,%rdx,2), %eax	# bsp_22->children[_14], _15
# p_sight.c:289:     return P_CrossBSPNode (bsp->children[side^1]);
	.loc 1 289 12
	movzwl	%ax, %eax	# _15, _16
	movl	%eax, %edi	# _16,
	call	P_CrossBSPNode	#
.L41:
# p_sight.c:290: }
	.loc 1 290 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3:
	.size	P_CrossBSPNode, .-P_CrossBSPNode
	.globl	P_CheckSight
	.type	P_CheckSight, @function
P_CheckSight:
.LFB4:
	.loc 1 303 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# t1, t1
	movq	%rsi, -48(%rbp)	# t2, t2
# p_sight.c:313:     s1 = (t1->subsector->sector - sectors);
	.loc 1 313 13
	movq	-40(%rbp), %rax	# t1, tmp135
	movq	88(%rax), %rax	# t1_55(D)->subsector, _1
# p_sight.c:313:     s1 = (t1->subsector->sector - sectors);
	.loc 1 313 24
	movq	(%rax), %rdx	# _1->sector, _2
# p_sight.c:313:     s1 = (t1->subsector->sector - sectors);
	.loc 1 313 33
	movq	sectors(%rip), %rax	# sectors, sectors.17_3
	subq	%rax, %rdx	# sectors.17_3, _4
	movq	%rdx, %rax	# _4, _4
	sarq	$7, %rax	#, _4
# p_sight.c:313:     s1 = (t1->subsector->sector - sectors);
	.loc 1 313 8
	movl	%eax, -20(%rbp)	# _5, s1
# p_sight.c:314:     s2 = (t2->subsector->sector - sectors);
	.loc 1 314 13
	movq	-48(%rbp), %rax	# t2, tmp137
	movq	88(%rax), %rax	# t2_57(D)->subsector, _6
# p_sight.c:314:     s2 = (t2->subsector->sector - sectors);
	.loc 1 314 24
	movq	(%rax), %rdx	# _6->sector, _7
# p_sight.c:314:     s2 = (t2->subsector->sector - sectors);
	.loc 1 314 33
	movq	sectors(%rip), %rax	# sectors, sectors.18_8
	subq	%rax, %rdx	# sectors.18_8, _9
	movq	%rdx, %rax	# _9, _9
	sarq	$7, %rax	#, _9
# p_sight.c:314:     s2 = (t2->subsector->sector - sectors);
	.loc 1 314 8
	movl	%eax, -16(%rbp)	# _10, s2
# p_sight.c:315:     pnum = s1*numsectors + s2;
	.loc 1 315 14
	movl	numsectors(%rip), %eax	# numsectors, numsectors.19_11
	imull	-20(%rbp), %eax	# s1, numsectors.19_11
	movl	%eax, %edx	# numsectors.19_11, _12
# p_sight.c:315:     pnum = s1*numsectors + s2;
	.loc 1 315 10
	movl	-16(%rbp), %eax	# s2, tmp142
	addl	%edx, %eax	# _12, tmp141
	movl	%eax, -12(%rbp)	# tmp141, pnum
# p_sight.c:316:     bytenum = pnum>>3;
	.loc 1 316 13
	movl	-12(%rbp), %eax	# pnum, tmp146
	sarl	$3, %eax	#, tmp145
	movl	%eax, -8(%rbp)	# tmp145, bytenum
# p_sight.c:317:     bitnum = 1 << (pnum&7);
	.loc 1 317 24
	movl	-12(%rbp), %eax	# pnum, tmp147
	andl	$7, %eax	#, _13
# p_sight.c:317:     bitnum = 1 << (pnum&7);
	.loc 1 317 12
	movl	$1, %edx	#, tmp148
	movl	%eax, %ecx	# _13, tmp171
	sall	%cl, %edx	# tmp171, tmp148
	movl	%edx, %eax	# tmp148, tmp149
	movl	%eax, -4(%rbp)	# tmp149, bitnum
# p_sight.c:320:     if (rejectmatrix[bytenum]&bitnum)
	.loc 1 320 21
	movq	rejectmatrix(%rip), %rdx	# rejectmatrix, rejectmatrix.20_14
	movl	-8(%rbp), %eax	# bytenum, tmp150
	cltq
	addq	%rdx, %rax	# rejectmatrix.20_14, _16
	movzbl	(%rax), %eax	# *_16, _17
	movzbl	%al, %eax	# _17, _18
# p_sight.c:320:     if (rejectmatrix[bytenum]&bitnum)
	.loc 1 320 30
	andl	-4(%rbp), %eax	# bitnum, _19
# p_sight.c:320:     if (rejectmatrix[bytenum]&bitnum)
	.loc 1 320 8
	testl	%eax, %eax	# _19
	je	.L46	#,
# p_sight.c:322: 	sightcounts[0]++;
	.loc 1 322 13
	movl	sightcounts(%rip), %eax	# sightcounts[0], _20
# p_sight.c:322: 	sightcounts[0]++;
	.loc 1 322 16
	addl	$1, %eax	#, _21
	movl	%eax, sightcounts(%rip)	# _21, sightcounts[0]
# p_sight.c:325: 	return false;	
	.loc 1 325 9
	movl	$0, %eax	#, _52
	jmp	.L47	#
.L46:
# p_sight.c:330:     sightcounts[1]++;
	.loc 1 330 16
	movl	4+sightcounts(%rip), %eax	# sightcounts[1], _22
# p_sight.c:330:     sightcounts[1]++;
	.loc 1 330 19
	addl	$1, %eax	#, _23
	movl	%eax, 4+sightcounts(%rip)	# _23, sightcounts[1]
# p_sight.c:332:     validcount++;
	.loc 1 332 15
	movl	validcount(%rip), %eax	# validcount, validcount.21_24
	addl	$1, %eax	#, _25
	movl	%eax, validcount(%rip)	# _25, validcount
# p_sight.c:334:     sightzstart = t1->z + t1->height - (t1->height>>2);
	.loc 1 334 21
	movq	-40(%rbp), %rax	# t1, tmp151
	movl	32(%rax), %edx	# t1_55(D)->z, _26
# p_sight.c:334:     sightzstart = t1->z + t1->height - (t1->height>>2);
	.loc 1 334 29
	movq	-40(%rbp), %rax	# t1, tmp152
	movl	108(%rax), %eax	# t1_55(D)->height, _27
# p_sight.c:334:     sightzstart = t1->z + t1->height - (t1->height>>2);
	.loc 1 334 25
	leal	(%rdx,%rax), %ecx	#, _28
# p_sight.c:334:     sightzstart = t1->z + t1->height - (t1->height>>2);
	.loc 1 334 43
	movq	-40(%rbp), %rax	# t1, tmp153
	movl	108(%rax), %eax	# t1_55(D)->height, _29
# p_sight.c:334:     sightzstart = t1->z + t1->height - (t1->height>>2);
	.loc 1 334 51
	sarl	$2, %eax	#, _29
	movl	%eax, %edx	# _29, _30
# p_sight.c:334:     sightzstart = t1->z + t1->height - (t1->height>>2);
	.loc 1 334 38
	movl	%ecx, %eax	# _28, _28
	subl	%edx, %eax	# _30, _28
# p_sight.c:334:     sightzstart = t1->z + t1->height - (t1->height>>2);
	.loc 1 334 17
	movl	%eax, sightzstart(%rip)	# _31, sightzstart
# p_sight.c:335:     topslope = (t2->z+t2->height) - sightzstart;
	.loc 1 335 19
	movq	-48(%rbp), %rax	# t2, tmp154
	movl	32(%rax), %edx	# t2_57(D)->z, _32
# p_sight.c:335:     topslope = (t2->z+t2->height) - sightzstart;
	.loc 1 335 25
	movq	-48(%rbp), %rax	# t2, tmp155
	movl	108(%rax), %eax	# t2_57(D)->height, _33
# p_sight.c:335:     topslope = (t2->z+t2->height) - sightzstart;
	.loc 1 335 22
	addl	%eax, %edx	# _33, _34
# p_sight.c:335:     topslope = (t2->z+t2->height) - sightzstart;
	.loc 1 335 35
	movl	sightzstart(%rip), %eax	# sightzstart, sightzstart.22_35
	subl	%eax, %edx	# sightzstart.22_35, _36
# p_sight.c:335:     topslope = (t2->z+t2->height) - sightzstart;
	.loc 1 335 14
	movl	%edx, topslope(%rip)	# _36, topslope
# p_sight.c:336:     bottomslope = (t2->z) - sightzstart;
	.loc 1 336 22
	movq	-48(%rbp), %rax	# t2, tmp156
	movl	32(%rax), %edx	# t2_57(D)->z, _37
# p_sight.c:336:     bottomslope = (t2->z) - sightzstart;
	.loc 1 336 27
	movl	sightzstart(%rip), %eax	# sightzstart, sightzstart.23_38
	subl	%eax, %edx	# sightzstart.23_38, _39
# p_sight.c:336:     bottomslope = (t2->z) - sightzstart;
	.loc 1 336 17
	movl	%edx, bottomslope(%rip)	# _39, bottomslope
# p_sight.c:338:     strace.x = t1->x;
	.loc 1 338 18
	movq	-40(%rbp), %rax	# t1, tmp157
	movl	24(%rax), %eax	# t1_55(D)->x, _40
# p_sight.c:338:     strace.x = t1->x;
	.loc 1 338 14
	movl	%eax, strace(%rip)	# _40, strace.x
# p_sight.c:339:     strace.y = t1->y;
	.loc 1 339 18
	movq	-40(%rbp), %rax	# t1, tmp158
	movl	28(%rax), %eax	# t1_55(D)->y, _41
# p_sight.c:339:     strace.y = t1->y;
	.loc 1 339 14
	movl	%eax, 4+strace(%rip)	# _41, strace.y
# p_sight.c:340:     t2x = t2->x;
	.loc 1 340 13
	movq	-48(%rbp), %rax	# t2, tmp159
	movl	24(%rax), %eax	# t2_57(D)->x, _42
# p_sight.c:340:     t2x = t2->x;
	.loc 1 340 9
	movl	%eax, t2x(%rip)	# _42, t2x
# p_sight.c:341:     t2y = t2->y;
	.loc 1 341 13
	movq	-48(%rbp), %rax	# t2, tmp160
	movl	28(%rax), %eax	# t2_57(D)->y, _43
# p_sight.c:341:     t2y = t2->y;
	.loc 1 341 9
	movl	%eax, t2y(%rip)	# _43, t2y
# p_sight.c:342:     strace.dx = t2->x - t1->x;
	.loc 1 342 19
	movq	-48(%rbp), %rax	# t2, tmp161
	movl	24(%rax), %edx	# t2_57(D)->x, _44
# p_sight.c:342:     strace.dx = t2->x - t1->x;
	.loc 1 342 27
	movq	-40(%rbp), %rax	# t1, tmp162
	movl	24(%rax), %eax	# t1_55(D)->x, _45
# p_sight.c:342:     strace.dx = t2->x - t1->x;
	.loc 1 342 23
	subl	%eax, %edx	# _45, _46
# p_sight.c:342:     strace.dx = t2->x - t1->x;
	.loc 1 342 15
	movl	%edx, 8+strace(%rip)	# _46, strace.dx
# p_sight.c:343:     strace.dy = t2->y - t1->y;
	.loc 1 343 19
	movq	-48(%rbp), %rax	# t2, tmp163
	movl	28(%rax), %edx	# t2_57(D)->y, _47
# p_sight.c:343:     strace.dy = t2->y - t1->y;
	.loc 1 343 27
	movq	-40(%rbp), %rax	# t1, tmp164
	movl	28(%rax), %eax	# t1_55(D)->y, _48
# p_sight.c:343:     strace.dy = t2->y - t1->y;
	.loc 1 343 23
	subl	%eax, %edx	# _48, _49
# p_sight.c:343:     strace.dy = t2->y - t1->y;
	.loc 1 343 15
	movl	%edx, 12+strace(%rip)	# _49, strace.dy
# p_sight.c:346:     return P_CrossBSPNode (numnodes-1);	
	.loc 1 346 12
	movl	numnodes(%rip), %eax	# numnodes, numnodes.24_50
	subl	$1, %eax	#, _51
	movl	%eax, %edi	# _51,
	call	P_CrossBSPNode	#
.L47:
# p_sight.c:347: }
	.loc 1 347 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4:
	.size	P_CheckSight, .-P_CheckSight
.Letext0:
	.file 2 "doomdef.h"
	.file 3 "doomtype.h"
	.file 4 "d_ticcmd.h"
	.file 5 "m_fixed.h"
	.file 6 "tables.h"
	.file 7 "d_think.h"
	.file 8 "doomdata.h"
	.file 9 "info.h"
	.file 10 "p_mobj.h"
	.file 11 "r_defs.h"
	.file 12 "d_player.h"
	.file 13 "p_pspr.h"
	.file 14 "r_state.h"
	.file 15 "r_main.h"
	.file 16 "p_local.h"
	.file 17 "i_system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x32e9
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x23
	.long	.LASF1502
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
	.byte	0x31
	.byte	0
	.uleb128 0x1a
	.long	0x2e
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x1a
	.long	0x4a
	.uleb128 0x8
	.long	.LASF1480
	.byte	0x19
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x24
	.byte	0x8
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x25
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0xa
	.long	0x90
	.long	0xae
	.uleb128 0x9
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	0x4a
	.uleb128 0xc
	.long	0x6b
	.byte	0x2
	.byte	0xa3
	.byte	0x1
	.long	0xea
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
	.uleb128 0x2
	.long	.LASF15
	.byte	0x5
	.uleb128 0x2
	.long	.LASF16
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.long	0x6b
	.byte	0x2
	.byte	0xb5
	.byte	0x1
	.long	0x139
	.uleb128 0x2
	.long	.LASF17
	.byte	0
	.uleb128 0x2
	.long	.LASF18
	.byte	0x1
	.uleb128 0x2
	.long	.LASF19
	.byte	0x2
	.uleb128 0x2
	.long	.LASF20
	.byte	0x3
	.uleb128 0x2
	.long	.LASF21
	.byte	0x4
	.uleb128 0x2
	.long	.LASF22
	.byte	0x5
	.uleb128 0x2
	.long	.LASF23
	.byte	0x6
	.uleb128 0x2
	.long	.LASF24
	.byte	0x7
	.uleb128 0x2
	.long	.LASF25
	.byte	0x8
	.uleb128 0x2
	.long	.LASF26
	.byte	0x9
	.uleb128 0x2
	.long	.LASF27
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.long	.LASF43
	.byte	0x2
	.byte	0xc5
	.byte	0x3
	.long	0xea
	.uleb128 0xc
	.long	0x6b
	.byte	0x2
	.byte	0xca
	.byte	0x1
	.long	0x176
	.uleb128 0x2
	.long	.LASF28
	.byte	0
	.uleb128 0x2
	.long	.LASF29
	.byte	0x1
	.uleb128 0x2
	.long	.LASF30
	.byte	0x2
	.uleb128 0x2
	.long	.LASF31
	.byte	0x3
	.uleb128 0x2
	.long	.LASF32
	.byte	0x4
	.uleb128 0x2
	.long	.LASF33
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.long	0x6b
	.byte	0x2
	.byte	0xd7
	.byte	0x1
	.long	0x1ad
	.uleb128 0x2
	.long	.LASF34
	.byte	0
	.uleb128 0x2
	.long	.LASF35
	.byte	0x1
	.uleb128 0x2
	.long	.LASF36
	.byte	0x2
	.uleb128 0x2
	.long	.LASF37
	.byte	0x3
	.uleb128 0x2
	.long	.LASF38
	.byte	0x4
	.uleb128 0x2
	.long	.LASF39
	.byte	0x5
	.uleb128 0x2
	.long	.LASF40
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.long	0x6b
	.byte	0x3
	.byte	0x22
	.byte	0xe
	.long	0x1c6
	.uleb128 0x2
	.long	.LASF41
	.byte	0
	.uleb128 0x2
	.long	.LASF42
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.long	.LASF44
	.byte	0x3
	.byte	0x22
	.byte	0x1c
	.long	0x1ad
	.uleb128 0x6
	.long	.LASF45
	.byte	0x3
	.byte	0x24
	.byte	0x17
	.long	0x74
	.uleb128 0xe
	.byte	0x8
	.byte	0x4
	.byte	0x24
	.long	0x235
	.uleb128 0x3
	.long	.LASF46
	.byte	0x4
	.byte	0x26
	.byte	0xa
	.long	0x4a
	.byte	0
	.uleb128 0x3
	.long	.LASF47
	.byte	0x4
	.byte	0x27
	.byte	0xa
	.long	0x4a
	.byte	0x1
	.uleb128 0x3
	.long	.LASF48
	.byte	0x4
	.byte	0x28
	.byte	0xb
	.long	0x89
	.byte	0x2
	.uleb128 0x3
	.long	.LASF49
	.byte	0x4
	.byte	0x29
	.byte	0xb
	.long	0x89
	.byte	0x4
	.uleb128 0x3
	.long	.LASF50
	.byte	0x4
	.byte	0x2a
	.byte	0xa
	.long	0x1d2
	.byte	0x6
	.uleb128 0x3
	.long	.LASF51
	.byte	0x4
	.byte	0x2b
	.byte	0xa
	.long	0x1d2
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.long	.LASF52
	.byte	0x4
	.byte	0x2c
	.byte	0x3
	.long	0x1de
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.long	.LASF53
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.long	.LASF54
	.uleb128 0x6
	.long	.LASF55
	.byte	0x5
	.byte	0x26
	.byte	0xd
	.long	0x90
	.uleb128 0x6
	.long	.LASF56
	.byte	0x6
	.byte	0x4e
	.byte	0x12
	.long	0x6b
	.uleb128 0x6
	.long	.LASF57
	.byte	0x7
	.byte	0x29
	.byte	0x11
	.long	0x273
	.uleb128 0x7
	.long	0x278
	.uleb128 0x26
	.long	0x27f
	.uleb128 0x1b
	.byte	0
	.uleb128 0x6
	.long	.LASF58
	.byte	0x7
	.byte	0x2a
	.byte	0x11
	.long	0x28b
	.uleb128 0x7
	.long	0x290
	.uleb128 0x1c
	.long	0x29b
	.uleb128 0x10
	.long	0x72
	.byte	0
	.uleb128 0x6
	.long	.LASF59
	.byte	0x7
	.byte	0x2b
	.byte	0x11
	.long	0x2a7
	.uleb128 0x7
	.long	0x2ac
	.uleb128 0x1c
	.long	0x2bc
	.uleb128 0x10
	.long	0x72
	.uleb128 0x10
	.long	0x72
	.byte	0
	.uleb128 0x27
	.byte	0x8
	.byte	0x7
	.byte	0x2d
	.byte	0x9
	.long	0x2e6
	.uleb128 0x1d
	.long	.LASF60
	.byte	0x2f
	.long	0x27f
	.uleb128 0x28
	.string	"acv"
	.byte	0x7
	.byte	0x30
	.byte	0xd
	.long	0x267
	.uleb128 0x1d
	.long	.LASF61
	.byte	0x31
	.long	0x29b
	.byte	0
	.uleb128 0x6
	.long	.LASF62
	.byte	0x7
	.byte	0x33
	.byte	0x3
	.long	0x2bc
	.uleb128 0x6
	.long	.LASF63
	.byte	0x7
	.byte	0x3c
	.byte	0x14
	.long	0x2e6
	.uleb128 0x14
	.long	.LASF1352
	.byte	0x18
	.byte	0x7
	.byte	0x40
	.long	0x332
	.uleb128 0x3
	.long	.LASF64
	.byte	0x7
	.byte	0x42
	.byte	0x17
	.long	0x332
	.byte	0
	.uleb128 0x3
	.long	.LASF65
	.byte	0x7
	.byte	0x43
	.byte	0x17
	.long	0x332
	.byte	0x8
	.uleb128 0x3
	.long	.LASF66
	.byte	0x7
	.byte	0x44
	.byte	0xe
	.long	0x2f2
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	0x2fe
	.uleb128 0x6
	.long	.LASF67
	.byte	0x7
	.byte	0x46
	.byte	0x3
	.long	0x2fe
	.uleb128 0xa
	.long	0x89
	.long	0x353
	.uleb128 0x9
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.long	0x7b
	.long	0x363
	.uleb128 0x9
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0xa
	.byte	0x8
	.byte	0xcb
	.long	0x3a9
	.uleb128 0x5
	.string	"x"
	.byte	0x8
	.byte	0xcd
	.byte	0xc
	.long	0x89
	.byte	0
	.uleb128 0x5
	.string	"y"
	.byte	0x8
	.byte	0xce
	.byte	0xc
	.long	0x89
	.byte	0x2
	.uleb128 0x3
	.long	.LASF68
	.byte	0x8
	.byte	0xcf
	.byte	0xc
	.long	0x89
	.byte	0x4
	.uleb128 0x3
	.long	.LASF69
	.byte	0x8
	.byte	0xd0
	.byte	0xc
	.long	0x89
	.byte	0x6
	.uleb128 0x3
	.long	.LASF70
	.byte	0x8
	.byte	0xd1
	.byte	0xc
	.long	0x89
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	.LASF71
	.byte	0x8
	.byte	0xd2
	.byte	0x3
	.long	0x363
	.uleb128 0xc
	.long	0x6b
	.byte	0x9
	.byte	0x1f
	.byte	0x1
	.long	0x704
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
	.uleb128 0x2
	.long	.LASF79
	.byte	0x7
	.uleb128 0x2
	.long	.LASF80
	.byte	0x8
	.uleb128 0x2
	.long	.LASF81
	.byte	0x9
	.uleb128 0x2
	.long	.LASF82
	.byte	0xa
	.uleb128 0x2
	.long	.LASF83
	.byte	0xb
	.uleb128 0x2
	.long	.LASF84
	.byte	0xc
	.uleb128 0x2
	.long	.LASF85
	.byte	0xd
	.uleb128 0x2
	.long	.LASF86
	.byte	0xe
	.uleb128 0x2
	.long	.LASF87
	.byte	0xf
	.uleb128 0x2
	.long	.LASF88
	.byte	0x10
	.uleb128 0x2
	.long	.LASF89
	.byte	0x11
	.uleb128 0x2
	.long	.LASF90
	.byte	0x12
	.uleb128 0x2
	.long	.LASF91
	.byte	0x13
	.uleb128 0x2
	.long	.LASF92
	.byte	0x14
	.uleb128 0x2
	.long	.LASF93
	.byte	0x15
	.uleb128 0x2
	.long	.LASF94
	.byte	0x16
	.uleb128 0x2
	.long	.LASF95
	.byte	0x17
	.uleb128 0x2
	.long	.LASF96
	.byte	0x18
	.uleb128 0x2
	.long	.LASF97
	.byte	0x19
	.uleb128 0x2
	.long	.LASF98
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF99
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF100
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF101
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF102
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF103
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF104
	.byte	0x20
	.uleb128 0x2
	.long	.LASF105
	.byte	0x21
	.uleb128 0x2
	.long	.LASF106
	.byte	0x22
	.uleb128 0x2
	.long	.LASF107
	.byte	0x23
	.uleb128 0x2
	.long	.LASF108
	.byte	0x24
	.uleb128 0x2
	.long	.LASF109
	.byte	0x25
	.uleb128 0x2
	.long	.LASF110
	.byte	0x26
	.uleb128 0x2
	.long	.LASF111
	.byte	0x27
	.uleb128 0x2
	.long	.LASF112
	.byte	0x28
	.uleb128 0x2
	.long	.LASF113
	.byte	0x29
	.uleb128 0x2
	.long	.LASF114
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF115
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF116
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF117
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF118
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF119
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF120
	.byte	0x30
	.uleb128 0x2
	.long	.LASF121
	.byte	0x31
	.uleb128 0x2
	.long	.LASF122
	.byte	0x32
	.uleb128 0x2
	.long	.LASF123
	.byte	0x33
	.uleb128 0x2
	.long	.LASF124
	.byte	0x34
	.uleb128 0x2
	.long	.LASF125
	.byte	0x35
	.uleb128 0x2
	.long	.LASF126
	.byte	0x36
	.uleb128 0x2
	.long	.LASF127
	.byte	0x37
	.uleb128 0x2
	.long	.LASF128
	.byte	0x38
	.uleb128 0x2
	.long	.LASF129
	.byte	0x39
	.uleb128 0x2
	.long	.LASF130
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF131
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF132
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF133
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF134
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF135
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF136
	.byte	0x40
	.uleb128 0x2
	.long	.LASF137
	.byte	0x41
	.uleb128 0x2
	.long	.LASF138
	.byte	0x42
	.uleb128 0x2
	.long	.LASF139
	.byte	0x43
	.uleb128 0x2
	.long	.LASF140
	.byte	0x44
	.uleb128 0x2
	.long	.LASF141
	.byte	0x45
	.uleb128 0x2
	.long	.LASF142
	.byte	0x46
	.uleb128 0x2
	.long	.LASF143
	.byte	0x47
	.uleb128 0x2
	.long	.LASF144
	.byte	0x48
	.uleb128 0x2
	.long	.LASF145
	.byte	0x49
	.uleb128 0x2
	.long	.LASF146
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF147
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF148
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF149
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF150
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF151
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF152
	.byte	0x50
	.uleb128 0x2
	.long	.LASF153
	.byte	0x51
	.uleb128 0x2
	.long	.LASF154
	.byte	0x52
	.uleb128 0x2
	.long	.LASF155
	.byte	0x53
	.uleb128 0x2
	.long	.LASF156
	.byte	0x54
	.uleb128 0x2
	.long	.LASF157
	.byte	0x55
	.uleb128 0x2
	.long	.LASF158
	.byte	0x56
	.uleb128 0x2
	.long	.LASF159
	.byte	0x57
	.uleb128 0x2
	.long	.LASF160
	.byte	0x58
	.uleb128 0x2
	.long	.LASF161
	.byte	0x59
	.uleb128 0x2
	.long	.LASF162
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF163
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF164
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF165
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF166
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF167
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF168
	.byte	0x60
	.uleb128 0x2
	.long	.LASF169
	.byte	0x61
	.uleb128 0x2
	.long	.LASF170
	.byte	0x62
	.uleb128 0x2
	.long	.LASF171
	.byte	0x63
	.uleb128 0x2
	.long	.LASF172
	.byte	0x64
	.uleb128 0x2
	.long	.LASF173
	.byte	0x65
	.uleb128 0x2
	.long	.LASF174
	.byte	0x66
	.uleb128 0x2
	.long	.LASF175
	.byte	0x67
	.uleb128 0x2
	.long	.LASF176
	.byte	0x68
	.uleb128 0x2
	.long	.LASF177
	.byte	0x69
	.uleb128 0x2
	.long	.LASF178
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF179
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF180
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF181
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF182
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF183
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF184
	.byte	0x70
	.uleb128 0x2
	.long	.LASF185
	.byte	0x71
	.uleb128 0x2
	.long	.LASF186
	.byte	0x72
	.uleb128 0x2
	.long	.LASF187
	.byte	0x73
	.uleb128 0x2
	.long	.LASF188
	.byte	0x74
	.uleb128 0x2
	.long	.LASF189
	.byte	0x75
	.uleb128 0x2
	.long	.LASF190
	.byte	0x76
	.uleb128 0x2
	.long	.LASF191
	.byte	0x77
	.uleb128 0x2
	.long	.LASF192
	.byte	0x78
	.uleb128 0x2
	.long	.LASF193
	.byte	0x79
	.uleb128 0x2
	.long	.LASF194
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF195
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF196
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF197
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF198
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF199
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF200
	.byte	0x80
	.uleb128 0x2
	.long	.LASF201
	.byte	0x81
	.uleb128 0x2
	.long	.LASF202
	.byte	0x82
	.uleb128 0x2
	.long	.LASF203
	.byte	0x83
	.uleb128 0x2
	.long	.LASF204
	.byte	0x84
	.uleb128 0x2
	.long	.LASF205
	.byte	0x85
	.uleb128 0x2
	.long	.LASF206
	.byte	0x86
	.uleb128 0x2
	.long	.LASF207
	.byte	0x87
	.uleb128 0x2
	.long	.LASF208
	.byte	0x88
	.uleb128 0x2
	.long	.LASF209
	.byte	0x89
	.uleb128 0x2
	.long	.LASF210
	.byte	0x8a
	.byte	0
	.uleb128 0x6
	.long	.LASF211
	.byte	0x9
	.byte	0xac
	.byte	0x3
	.long	0x3b5
	.uleb128 0xc
	.long	0x6b
	.byte	0x9
	.byte	0xaf
	.byte	0x1
	.long	0x2095
	.uleb128 0x2
	.long	.LASF212
	.byte	0
	.uleb128 0x2
	.long	.LASF213
	.byte	0x1
	.uleb128 0x2
	.long	.LASF214
	.byte	0x2
	.uleb128 0x2
	.long	.LASF215
	.byte	0x3
	.uleb128 0x2
	.long	.LASF216
	.byte	0x4
	.uleb128 0x2
	.long	.LASF217
	.byte	0x5
	.uleb128 0x2
	.long	.LASF218
	.byte	0x6
	.uleb128 0x2
	.long	.LASF219
	.byte	0x7
	.uleb128 0x2
	.long	.LASF220
	.byte	0x8
	.uleb128 0x2
	.long	.LASF221
	.byte	0x9
	.uleb128 0x2
	.long	.LASF222
	.byte	0xa
	.uleb128 0x2
	.long	.LASF223
	.byte	0xb
	.uleb128 0x2
	.long	.LASF224
	.byte	0xc
	.uleb128 0x2
	.long	.LASF225
	.byte	0xd
	.uleb128 0x2
	.long	.LASF226
	.byte	0xe
	.uleb128 0x2
	.long	.LASF227
	.byte	0xf
	.uleb128 0x2
	.long	.LASF228
	.byte	0x10
	.uleb128 0x2
	.long	.LASF229
	.byte	0x11
	.uleb128 0x2
	.long	.LASF230
	.byte	0x12
	.uleb128 0x2
	.long	.LASF231
	.byte	0x13
	.uleb128 0x2
	.long	.LASF232
	.byte	0x14
	.uleb128 0x2
	.long	.LASF233
	.byte	0x15
	.uleb128 0x2
	.long	.LASF234
	.byte	0x16
	.uleb128 0x2
	.long	.LASF235
	.byte	0x17
	.uleb128 0x2
	.long	.LASF236
	.byte	0x18
	.uleb128 0x2
	.long	.LASF237
	.byte	0x19
	.uleb128 0x2
	.long	.LASF238
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF239
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF240
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF241
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF242
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF243
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF244
	.byte	0x20
	.uleb128 0x2
	.long	.LASF245
	.byte	0x21
	.uleb128 0x2
	.long	.LASF246
	.byte	0x22
	.uleb128 0x2
	.long	.LASF247
	.byte	0x23
	.uleb128 0x2
	.long	.LASF248
	.byte	0x24
	.uleb128 0x2
	.long	.LASF249
	.byte	0x25
	.uleb128 0x2
	.long	.LASF250
	.byte	0x26
	.uleb128 0x2
	.long	.LASF251
	.byte	0x27
	.uleb128 0x2
	.long	.LASF252
	.byte	0x28
	.uleb128 0x2
	.long	.LASF253
	.byte	0x29
	.uleb128 0x2
	.long	.LASF254
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF255
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF256
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF257
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF258
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF259
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF260
	.byte	0x30
	.uleb128 0x2
	.long	.LASF261
	.byte	0x31
	.uleb128 0x2
	.long	.LASF262
	.byte	0x32
	.uleb128 0x2
	.long	.LASF263
	.byte	0x33
	.uleb128 0x2
	.long	.LASF264
	.byte	0x34
	.uleb128 0x2
	.long	.LASF265
	.byte	0x35
	.uleb128 0x2
	.long	.LASF266
	.byte	0x36
	.uleb128 0x2
	.long	.LASF267
	.byte	0x37
	.uleb128 0x2
	.long	.LASF268
	.byte	0x38
	.uleb128 0x2
	.long	.LASF269
	.byte	0x39
	.uleb128 0x2
	.long	.LASF270
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF271
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF272
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF273
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF274
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF275
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF276
	.byte	0x40
	.uleb128 0x2
	.long	.LASF277
	.byte	0x41
	.uleb128 0x2
	.long	.LASF278
	.byte	0x42
	.uleb128 0x2
	.long	.LASF279
	.byte	0x43
	.uleb128 0x2
	.long	.LASF280
	.byte	0x44
	.uleb128 0x2
	.long	.LASF281
	.byte	0x45
	.uleb128 0x2
	.long	.LASF282
	.byte	0x46
	.uleb128 0x2
	.long	.LASF283
	.byte	0x47
	.uleb128 0x2
	.long	.LASF284
	.byte	0x48
	.uleb128 0x2
	.long	.LASF285
	.byte	0x49
	.uleb128 0x2
	.long	.LASF286
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF287
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF288
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF289
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF290
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF291
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF292
	.byte	0x50
	.uleb128 0x2
	.long	.LASF293
	.byte	0x51
	.uleb128 0x2
	.long	.LASF294
	.byte	0x52
	.uleb128 0x2
	.long	.LASF295
	.byte	0x53
	.uleb128 0x2
	.long	.LASF296
	.byte	0x54
	.uleb128 0x2
	.long	.LASF297
	.byte	0x55
	.uleb128 0x2
	.long	.LASF298
	.byte	0x56
	.uleb128 0x2
	.long	.LASF299
	.byte	0x57
	.uleb128 0x2
	.long	.LASF300
	.byte	0x58
	.uleb128 0x2
	.long	.LASF301
	.byte	0x59
	.uleb128 0x2
	.long	.LASF302
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF303
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF304
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF305
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF306
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF307
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF308
	.byte	0x60
	.uleb128 0x2
	.long	.LASF309
	.byte	0x61
	.uleb128 0x2
	.long	.LASF310
	.byte	0x62
	.uleb128 0x2
	.long	.LASF311
	.byte	0x63
	.uleb128 0x2
	.long	.LASF312
	.byte	0x64
	.uleb128 0x2
	.long	.LASF313
	.byte	0x65
	.uleb128 0x2
	.long	.LASF314
	.byte	0x66
	.uleb128 0x2
	.long	.LASF315
	.byte	0x67
	.uleb128 0x2
	.long	.LASF316
	.byte	0x68
	.uleb128 0x2
	.long	.LASF317
	.byte	0x69
	.uleb128 0x2
	.long	.LASF318
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF319
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF320
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF321
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF322
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF323
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF324
	.byte	0x70
	.uleb128 0x2
	.long	.LASF325
	.byte	0x71
	.uleb128 0x2
	.long	.LASF326
	.byte	0x72
	.uleb128 0x2
	.long	.LASF327
	.byte	0x73
	.uleb128 0x2
	.long	.LASF328
	.byte	0x74
	.uleb128 0x2
	.long	.LASF329
	.byte	0x75
	.uleb128 0x2
	.long	.LASF330
	.byte	0x76
	.uleb128 0x2
	.long	.LASF331
	.byte	0x77
	.uleb128 0x2
	.long	.LASF332
	.byte	0x78
	.uleb128 0x2
	.long	.LASF333
	.byte	0x79
	.uleb128 0x2
	.long	.LASF334
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF335
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF336
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF337
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF338
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF339
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF340
	.byte	0x80
	.uleb128 0x2
	.long	.LASF341
	.byte	0x81
	.uleb128 0x2
	.long	.LASF342
	.byte	0x82
	.uleb128 0x2
	.long	.LASF343
	.byte	0x83
	.uleb128 0x2
	.long	.LASF344
	.byte	0x84
	.uleb128 0x2
	.long	.LASF345
	.byte	0x85
	.uleb128 0x2
	.long	.LASF346
	.byte	0x86
	.uleb128 0x2
	.long	.LASF347
	.byte	0x87
	.uleb128 0x2
	.long	.LASF348
	.byte	0x88
	.uleb128 0x2
	.long	.LASF349
	.byte	0x89
	.uleb128 0x2
	.long	.LASF350
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF351
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF352
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF353
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF354
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF355
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF356
	.byte	0x90
	.uleb128 0x2
	.long	.LASF357
	.byte	0x91
	.uleb128 0x2
	.long	.LASF358
	.byte	0x92
	.uleb128 0x2
	.long	.LASF359
	.byte	0x93
	.uleb128 0x2
	.long	.LASF360
	.byte	0x94
	.uleb128 0x2
	.long	.LASF361
	.byte	0x95
	.uleb128 0x2
	.long	.LASF362
	.byte	0x96
	.uleb128 0x2
	.long	.LASF363
	.byte	0x97
	.uleb128 0x2
	.long	.LASF364
	.byte	0x98
	.uleb128 0x2
	.long	.LASF365
	.byte	0x99
	.uleb128 0x2
	.long	.LASF366
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF367
	.byte	0x9b
	.uleb128 0x2
	.long	.LASF368
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF369
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF370
	.byte	0x9e
	.uleb128 0x2
	.long	.LASF371
	.byte	0x9f
	.uleb128 0x2
	.long	.LASF372
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF373
	.byte	0xa1
	.uleb128 0x2
	.long	.LASF374
	.byte	0xa2
	.uleb128 0x2
	.long	.LASF375
	.byte	0xa3
	.uleb128 0x2
	.long	.LASF376
	.byte	0xa4
	.uleb128 0x2
	.long	.LASF377
	.byte	0xa5
	.uleb128 0x2
	.long	.LASF378
	.byte	0xa6
	.uleb128 0x2
	.long	.LASF379
	.byte	0xa7
	.uleb128 0x2
	.long	.LASF380
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF381
	.byte	0xa9
	.uleb128 0x2
	.long	.LASF382
	.byte	0xaa
	.uleb128 0x2
	.long	.LASF383
	.byte	0xab
	.uleb128 0x2
	.long	.LASF384
	.byte	0xac
	.uleb128 0x2
	.long	.LASF385
	.byte	0xad
	.uleb128 0x2
	.long	.LASF386
	.byte	0xae
	.uleb128 0x2
	.long	.LASF387
	.byte	0xaf
	.uleb128 0x2
	.long	.LASF388
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF389
	.byte	0xb1
	.uleb128 0x2
	.long	.LASF390
	.byte	0xb2
	.uleb128 0x2
	.long	.LASF391
	.byte	0xb3
	.uleb128 0x2
	.long	.LASF392
	.byte	0xb4
	.uleb128 0x2
	.long	.LASF393
	.byte	0xb5
	.uleb128 0x2
	.long	.LASF394
	.byte	0xb6
	.uleb128 0x2
	.long	.LASF395
	.byte	0xb7
	.uleb128 0x2
	.long	.LASF396
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF397
	.byte	0xb9
	.uleb128 0x2
	.long	.LASF398
	.byte	0xba
	.uleb128 0x2
	.long	.LASF399
	.byte	0xbb
	.uleb128 0x2
	.long	.LASF400
	.byte	0xbc
	.uleb128 0x2
	.long	.LASF401
	.byte	0xbd
	.uleb128 0x2
	.long	.LASF402
	.byte	0xbe
	.uleb128 0x2
	.long	.LASF403
	.byte	0xbf
	.uleb128 0x2
	.long	.LASF404
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF405
	.byte	0xc1
	.uleb128 0x2
	.long	.LASF406
	.byte	0xc2
	.uleb128 0x2
	.long	.LASF407
	.byte	0xc3
	.uleb128 0x2
	.long	.LASF408
	.byte	0xc4
	.uleb128 0x2
	.long	.LASF409
	.byte	0xc5
	.uleb128 0x2
	.long	.LASF410
	.byte	0xc6
	.uleb128 0x2
	.long	.LASF411
	.byte	0xc7
	.uleb128 0x2
	.long	.LASF412
	.byte	0xc8
	.uleb128 0x2
	.long	.LASF413
	.byte	0xc9
	.uleb128 0x2
	.long	.LASF414
	.byte	0xca
	.uleb128 0x2
	.long	.LASF415
	.byte	0xcb
	.uleb128 0x2
	.long	.LASF416
	.byte	0xcc
	.uleb128 0x2
	.long	.LASF417
	.byte	0xcd
	.uleb128 0x2
	.long	.LASF418
	.byte	0xce
	.uleb128 0x2
	.long	.LASF419
	.byte	0xcf
	.uleb128 0x2
	.long	.LASF420
	.byte	0xd0
	.uleb128 0x2
	.long	.LASF421
	.byte	0xd1
	.uleb128 0x2
	.long	.LASF422
	.byte	0xd2
	.uleb128 0x2
	.long	.LASF423
	.byte	0xd3
	.uleb128 0x2
	.long	.LASF424
	.byte	0xd4
	.uleb128 0x2
	.long	.LASF425
	.byte	0xd5
	.uleb128 0x2
	.long	.LASF426
	.byte	0xd6
	.uleb128 0x2
	.long	.LASF427
	.byte	0xd7
	.uleb128 0x2
	.long	.LASF428
	.byte	0xd8
	.uleb128 0x2
	.long	.LASF429
	.byte	0xd9
	.uleb128 0x2
	.long	.LASF430
	.byte	0xda
	.uleb128 0x2
	.long	.LASF431
	.byte	0xdb
	.uleb128 0x2
	.long	.LASF432
	.byte	0xdc
	.uleb128 0x2
	.long	.LASF433
	.byte	0xdd
	.uleb128 0x2
	.long	.LASF434
	.byte	0xde
	.uleb128 0x2
	.long	.LASF435
	.byte	0xdf
	.uleb128 0x2
	.long	.LASF436
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF437
	.byte	0xe1
	.uleb128 0x2
	.long	.LASF438
	.byte	0xe2
	.uleb128 0x2
	.long	.LASF439
	.byte	0xe3
	.uleb128 0x2
	.long	.LASF440
	.byte	0xe4
	.uleb128 0x2
	.long	.LASF441
	.byte	0xe5
	.uleb128 0x2
	.long	.LASF442
	.byte	0xe6
	.uleb128 0x2
	.long	.LASF443
	.byte	0xe7
	.uleb128 0x2
	.long	.LASF444
	.byte	0xe8
	.uleb128 0x2
	.long	.LASF445
	.byte	0xe9
	.uleb128 0x2
	.long	.LASF446
	.byte	0xea
	.uleb128 0x2
	.long	.LASF447
	.byte	0xeb
	.uleb128 0x2
	.long	.LASF448
	.byte	0xec
	.uleb128 0x2
	.long	.LASF449
	.byte	0xed
	.uleb128 0x2
	.long	.LASF450
	.byte	0xee
	.uleb128 0x2
	.long	.LASF451
	.byte	0xef
	.uleb128 0x2
	.long	.LASF452
	.byte	0xf0
	.uleb128 0x2
	.long	.LASF453
	.byte	0xf1
	.uleb128 0x2
	.long	.LASF454
	.byte	0xf2
	.uleb128 0x2
	.long	.LASF455
	.byte	0xf3
	.uleb128 0x2
	.long	.LASF456
	.byte	0xf4
	.uleb128 0x2
	.long	.LASF457
	.byte	0xf5
	.uleb128 0x2
	.long	.LASF458
	.byte	0xf6
	.uleb128 0x2
	.long	.LASF459
	.byte	0xf7
	.uleb128 0x2
	.long	.LASF460
	.byte	0xf8
	.uleb128 0x2
	.long	.LASF461
	.byte	0xf9
	.uleb128 0x2
	.long	.LASF462
	.byte	0xfa
	.uleb128 0x2
	.long	.LASF463
	.byte	0xfb
	.uleb128 0x2
	.long	.LASF464
	.byte	0xfc
	.uleb128 0x2
	.long	.LASF465
	.byte	0xfd
	.uleb128 0x2
	.long	.LASF466
	.byte	0xfe
	.uleb128 0x2
	.long	.LASF467
	.byte	0xff
	.uleb128 0x1
	.long	.LASF468
	.value	0x100
	.uleb128 0x1
	.long	.LASF469
	.value	0x101
	.uleb128 0x1
	.long	.LASF470
	.value	0x102
	.uleb128 0x1
	.long	.LASF471
	.value	0x103
	.uleb128 0x1
	.long	.LASF472
	.value	0x104
	.uleb128 0x1
	.long	.LASF473
	.value	0x105
	.uleb128 0x1
	.long	.LASF474
	.value	0x106
	.uleb128 0x1
	.long	.LASF475
	.value	0x107
	.uleb128 0x1
	.long	.LASF476
	.value	0x108
	.uleb128 0x1
	.long	.LASF477
	.value	0x109
	.uleb128 0x1
	.long	.LASF478
	.value	0x10a
	.uleb128 0x1
	.long	.LASF479
	.value	0x10b
	.uleb128 0x1
	.long	.LASF480
	.value	0x10c
	.uleb128 0x1
	.long	.LASF481
	.value	0x10d
	.uleb128 0x1
	.long	.LASF482
	.value	0x10e
	.uleb128 0x1
	.long	.LASF483
	.value	0x10f
	.uleb128 0x1
	.long	.LASF484
	.value	0x110
	.uleb128 0x1
	.long	.LASF485
	.value	0x111
	.uleb128 0x1
	.long	.LASF486
	.value	0x112
	.uleb128 0x1
	.long	.LASF487
	.value	0x113
	.uleb128 0x1
	.long	.LASF488
	.value	0x114
	.uleb128 0x1
	.long	.LASF489
	.value	0x115
	.uleb128 0x1
	.long	.LASF490
	.value	0x116
	.uleb128 0x1
	.long	.LASF491
	.value	0x117
	.uleb128 0x1
	.long	.LASF492
	.value	0x118
	.uleb128 0x1
	.long	.LASF493
	.value	0x119
	.uleb128 0x1
	.long	.LASF494
	.value	0x11a
	.uleb128 0x1
	.long	.LASF495
	.value	0x11b
	.uleb128 0x1
	.long	.LASF496
	.value	0x11c
	.uleb128 0x1
	.long	.LASF497
	.value	0x11d
	.uleb128 0x1
	.long	.LASF498
	.value	0x11e
	.uleb128 0x1
	.long	.LASF499
	.value	0x11f
	.uleb128 0x1
	.long	.LASF500
	.value	0x120
	.uleb128 0x1
	.long	.LASF501
	.value	0x121
	.uleb128 0x1
	.long	.LASF502
	.value	0x122
	.uleb128 0x1
	.long	.LASF503
	.value	0x123
	.uleb128 0x1
	.long	.LASF504
	.value	0x124
	.uleb128 0x1
	.long	.LASF505
	.value	0x125
	.uleb128 0x1
	.long	.LASF506
	.value	0x126
	.uleb128 0x1
	.long	.LASF507
	.value	0x127
	.uleb128 0x1
	.long	.LASF508
	.value	0x128
	.uleb128 0x1
	.long	.LASF509
	.value	0x129
	.uleb128 0x1
	.long	.LASF510
	.value	0x12a
	.uleb128 0x1
	.long	.LASF511
	.value	0x12b
	.uleb128 0x1
	.long	.LASF512
	.value	0x12c
	.uleb128 0x1
	.long	.LASF513
	.value	0x12d
	.uleb128 0x1
	.long	.LASF514
	.value	0x12e
	.uleb128 0x1
	.long	.LASF515
	.value	0x12f
	.uleb128 0x1
	.long	.LASF516
	.value	0x130
	.uleb128 0x1
	.long	.LASF517
	.value	0x131
	.uleb128 0x1
	.long	.LASF518
	.value	0x132
	.uleb128 0x1
	.long	.LASF519
	.value	0x133
	.uleb128 0x1
	.long	.LASF520
	.value	0x134
	.uleb128 0x1
	.long	.LASF521
	.value	0x135
	.uleb128 0x1
	.long	.LASF522
	.value	0x136
	.uleb128 0x1
	.long	.LASF523
	.value	0x137
	.uleb128 0x1
	.long	.LASF524
	.value	0x138
	.uleb128 0x1
	.long	.LASF525
	.value	0x139
	.uleb128 0x1
	.long	.LASF526
	.value	0x13a
	.uleb128 0x1
	.long	.LASF527
	.value	0x13b
	.uleb128 0x1
	.long	.LASF528
	.value	0x13c
	.uleb128 0x1
	.long	.LASF529
	.value	0x13d
	.uleb128 0x1
	.long	.LASF530
	.value	0x13e
	.uleb128 0x1
	.long	.LASF531
	.value	0x13f
	.uleb128 0x1
	.long	.LASF532
	.value	0x140
	.uleb128 0x1
	.long	.LASF533
	.value	0x141
	.uleb128 0x1
	.long	.LASF534
	.value	0x142
	.uleb128 0x1
	.long	.LASF535
	.value	0x143
	.uleb128 0x1
	.long	.LASF536
	.value	0x144
	.uleb128 0x1
	.long	.LASF537
	.value	0x145
	.uleb128 0x1
	.long	.LASF538
	.value	0x146
	.uleb128 0x1
	.long	.LASF539
	.value	0x147
	.uleb128 0x1
	.long	.LASF540
	.value	0x148
	.uleb128 0x1
	.long	.LASF541
	.value	0x149
	.uleb128 0x1
	.long	.LASF542
	.value	0x14a
	.uleb128 0x1
	.long	.LASF543
	.value	0x14b
	.uleb128 0x1
	.long	.LASF544
	.value	0x14c
	.uleb128 0x1
	.long	.LASF545
	.value	0x14d
	.uleb128 0x1
	.long	.LASF546
	.value	0x14e
	.uleb128 0x1
	.long	.LASF547
	.value	0x14f
	.uleb128 0x1
	.long	.LASF548
	.value	0x150
	.uleb128 0x1
	.long	.LASF549
	.value	0x151
	.uleb128 0x1
	.long	.LASF550
	.value	0x152
	.uleb128 0x1
	.long	.LASF551
	.value	0x153
	.uleb128 0x1
	.long	.LASF552
	.value	0x154
	.uleb128 0x1
	.long	.LASF553
	.value	0x155
	.uleb128 0x1
	.long	.LASF554
	.value	0x156
	.uleb128 0x1
	.long	.LASF555
	.value	0x157
	.uleb128 0x1
	.long	.LASF556
	.value	0x158
	.uleb128 0x1
	.long	.LASF557
	.value	0x159
	.uleb128 0x1
	.long	.LASF558
	.value	0x15a
	.uleb128 0x1
	.long	.LASF559
	.value	0x15b
	.uleb128 0x1
	.long	.LASF560
	.value	0x15c
	.uleb128 0x1
	.long	.LASF561
	.value	0x15d
	.uleb128 0x1
	.long	.LASF562
	.value	0x15e
	.uleb128 0x1
	.long	.LASF563
	.value	0x15f
	.uleb128 0x1
	.long	.LASF564
	.value	0x160
	.uleb128 0x1
	.long	.LASF565
	.value	0x161
	.uleb128 0x1
	.long	.LASF566
	.value	0x162
	.uleb128 0x1
	.long	.LASF567
	.value	0x163
	.uleb128 0x1
	.long	.LASF568
	.value	0x164
	.uleb128 0x1
	.long	.LASF569
	.value	0x165
	.uleb128 0x1
	.long	.LASF570
	.value	0x166
	.uleb128 0x1
	.long	.LASF571
	.value	0x167
	.uleb128 0x1
	.long	.LASF572
	.value	0x168
	.uleb128 0x1
	.long	.LASF573
	.value	0x169
	.uleb128 0x1
	.long	.LASF574
	.value	0x16a
	.uleb128 0x1
	.long	.LASF575
	.value	0x16b
	.uleb128 0x1
	.long	.LASF576
	.value	0x16c
	.uleb128 0x1
	.long	.LASF577
	.value	0x16d
	.uleb128 0x1
	.long	.LASF578
	.value	0x16e
	.uleb128 0x1
	.long	.LASF579
	.value	0x16f
	.uleb128 0x1
	.long	.LASF580
	.value	0x170
	.uleb128 0x1
	.long	.LASF581
	.value	0x171
	.uleb128 0x1
	.long	.LASF582
	.value	0x172
	.uleb128 0x1
	.long	.LASF583
	.value	0x173
	.uleb128 0x1
	.long	.LASF584
	.value	0x174
	.uleb128 0x1
	.long	.LASF585
	.value	0x175
	.uleb128 0x1
	.long	.LASF586
	.value	0x176
	.uleb128 0x1
	.long	.LASF587
	.value	0x177
	.uleb128 0x1
	.long	.LASF588
	.value	0x178
	.uleb128 0x1
	.long	.LASF589
	.value	0x179
	.uleb128 0x1
	.long	.LASF590
	.value	0x17a
	.uleb128 0x1
	.long	.LASF591
	.value	0x17b
	.uleb128 0x1
	.long	.LASF592
	.value	0x17c
	.uleb128 0x1
	.long	.LASF593
	.value	0x17d
	.uleb128 0x1
	.long	.LASF594
	.value	0x17e
	.uleb128 0x1
	.long	.LASF595
	.value	0x17f
	.uleb128 0x1
	.long	.LASF596
	.value	0x180
	.uleb128 0x1
	.long	.LASF597
	.value	0x181
	.uleb128 0x1
	.long	.LASF598
	.value	0x182
	.uleb128 0x1
	.long	.LASF599
	.value	0x183
	.uleb128 0x1
	.long	.LASF600
	.value	0x184
	.uleb128 0x1
	.long	.LASF601
	.value	0x185
	.uleb128 0x1
	.long	.LASF602
	.value	0x186
	.uleb128 0x1
	.long	.LASF603
	.value	0x187
	.uleb128 0x1
	.long	.LASF604
	.value	0x188
	.uleb128 0x1
	.long	.LASF605
	.value	0x189
	.uleb128 0x1
	.long	.LASF606
	.value	0x18a
	.uleb128 0x1
	.long	.LASF607
	.value	0x18b
	.uleb128 0x1
	.long	.LASF608
	.value	0x18c
	.uleb128 0x1
	.long	.LASF609
	.value	0x18d
	.uleb128 0x1
	.long	.LASF610
	.value	0x18e
	.uleb128 0x1
	.long	.LASF611
	.value	0x18f
	.uleb128 0x1
	.long	.LASF612
	.value	0x190
	.uleb128 0x1
	.long	.LASF613
	.value	0x191
	.uleb128 0x1
	.long	.LASF614
	.value	0x192
	.uleb128 0x1
	.long	.LASF615
	.value	0x193
	.uleb128 0x1
	.long	.LASF616
	.value	0x194
	.uleb128 0x1
	.long	.LASF617
	.value	0x195
	.uleb128 0x1
	.long	.LASF618
	.value	0x196
	.uleb128 0x1
	.long	.LASF619
	.value	0x197
	.uleb128 0x1
	.long	.LASF620
	.value	0x198
	.uleb128 0x1
	.long	.LASF621
	.value	0x199
	.uleb128 0x1
	.long	.LASF622
	.value	0x19a
	.uleb128 0x1
	.long	.LASF623
	.value	0x19b
	.uleb128 0x1
	.long	.LASF624
	.value	0x19c
	.uleb128 0x1
	.long	.LASF625
	.value	0x19d
	.uleb128 0x1
	.long	.LASF626
	.value	0x19e
	.uleb128 0x1
	.long	.LASF627
	.value	0x19f
	.uleb128 0x1
	.long	.LASF628
	.value	0x1a0
	.uleb128 0x1
	.long	.LASF629
	.value	0x1a1
	.uleb128 0x1
	.long	.LASF630
	.value	0x1a2
	.uleb128 0x1
	.long	.LASF631
	.value	0x1a3
	.uleb128 0x1
	.long	.LASF632
	.value	0x1a4
	.uleb128 0x1
	.long	.LASF633
	.value	0x1a5
	.uleb128 0x1
	.long	.LASF634
	.value	0x1a6
	.uleb128 0x1
	.long	.LASF635
	.value	0x1a7
	.uleb128 0x1
	.long	.LASF636
	.value	0x1a8
	.uleb128 0x1
	.long	.LASF637
	.value	0x1a9
	.uleb128 0x1
	.long	.LASF638
	.value	0x1aa
	.uleb128 0x1
	.long	.LASF639
	.value	0x1ab
	.uleb128 0x1
	.long	.LASF640
	.value	0x1ac
	.uleb128 0x1
	.long	.LASF641
	.value	0x1ad
	.uleb128 0x1
	.long	.LASF642
	.value	0x1ae
	.uleb128 0x1
	.long	.LASF643
	.value	0x1af
	.uleb128 0x1
	.long	.LASF644
	.value	0x1b0
	.uleb128 0x1
	.long	.LASF645
	.value	0x1b1
	.uleb128 0x1
	.long	.LASF646
	.value	0x1b2
	.uleb128 0x1
	.long	.LASF647
	.value	0x1b3
	.uleb128 0x1
	.long	.LASF648
	.value	0x1b4
	.uleb128 0x1
	.long	.LASF649
	.value	0x1b5
	.uleb128 0x1
	.long	.LASF650
	.value	0x1b6
	.uleb128 0x1
	.long	.LASF651
	.value	0x1b7
	.uleb128 0x1
	.long	.LASF652
	.value	0x1b8
	.uleb128 0x1
	.long	.LASF653
	.value	0x1b9
	.uleb128 0x1
	.long	.LASF654
	.value	0x1ba
	.uleb128 0x1
	.long	.LASF655
	.value	0x1bb
	.uleb128 0x1
	.long	.LASF656
	.value	0x1bc
	.uleb128 0x1
	.long	.LASF657
	.value	0x1bd
	.uleb128 0x1
	.long	.LASF658
	.value	0x1be
	.uleb128 0x1
	.long	.LASF659
	.value	0x1bf
	.uleb128 0x1
	.long	.LASF660
	.value	0x1c0
	.uleb128 0x1
	.long	.LASF661
	.value	0x1c1
	.uleb128 0x1
	.long	.LASF662
	.value	0x1c2
	.uleb128 0x1
	.long	.LASF663
	.value	0x1c3
	.uleb128 0x1
	.long	.LASF664
	.value	0x1c4
	.uleb128 0x1
	.long	.LASF665
	.value	0x1c5
	.uleb128 0x1
	.long	.LASF666
	.value	0x1c6
	.uleb128 0x1
	.long	.LASF667
	.value	0x1c7
	.uleb128 0x1
	.long	.LASF668
	.value	0x1c8
	.uleb128 0x1
	.long	.LASF669
	.value	0x1c9
	.uleb128 0x1
	.long	.LASF670
	.value	0x1ca
	.uleb128 0x1
	.long	.LASF671
	.value	0x1cb
	.uleb128 0x1
	.long	.LASF672
	.value	0x1cc
	.uleb128 0x1
	.long	.LASF673
	.value	0x1cd
	.uleb128 0x1
	.long	.LASF674
	.value	0x1ce
	.uleb128 0x1
	.long	.LASF675
	.value	0x1cf
	.uleb128 0x1
	.long	.LASF676
	.value	0x1d0
	.uleb128 0x1
	.long	.LASF677
	.value	0x1d1
	.uleb128 0x1
	.long	.LASF678
	.value	0x1d2
	.uleb128 0x1
	.long	.LASF679
	.value	0x1d3
	.uleb128 0x1
	.long	.LASF680
	.value	0x1d4
	.uleb128 0x1
	.long	.LASF681
	.value	0x1d5
	.uleb128 0x1
	.long	.LASF682
	.value	0x1d6
	.uleb128 0x1
	.long	.LASF683
	.value	0x1d7
	.uleb128 0x1
	.long	.LASF684
	.value	0x1d8
	.uleb128 0x1
	.long	.LASF685
	.value	0x1d9
	.uleb128 0x1
	.long	.LASF686
	.value	0x1da
	.uleb128 0x1
	.long	.LASF687
	.value	0x1db
	.uleb128 0x1
	.long	.LASF688
	.value	0x1dc
	.uleb128 0x1
	.long	.LASF689
	.value	0x1dd
	.uleb128 0x1
	.long	.LASF690
	.value	0x1de
	.uleb128 0x1
	.long	.LASF691
	.value	0x1df
	.uleb128 0x1
	.long	.LASF692
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF693
	.value	0x1e1
	.uleb128 0x1
	.long	.LASF694
	.value	0x1e2
	.uleb128 0x1
	.long	.LASF695
	.value	0x1e3
	.uleb128 0x1
	.long	.LASF696
	.value	0x1e4
	.uleb128 0x1
	.long	.LASF697
	.value	0x1e5
	.uleb128 0x1
	.long	.LASF698
	.value	0x1e6
	.uleb128 0x1
	.long	.LASF699
	.value	0x1e7
	.uleb128 0x1
	.long	.LASF700
	.value	0x1e8
	.uleb128 0x1
	.long	.LASF701
	.value	0x1e9
	.uleb128 0x1
	.long	.LASF702
	.value	0x1ea
	.uleb128 0x1
	.long	.LASF703
	.value	0x1eb
	.uleb128 0x1
	.long	.LASF704
	.value	0x1ec
	.uleb128 0x1
	.long	.LASF705
	.value	0x1ed
	.uleb128 0x1
	.long	.LASF706
	.value	0x1ee
	.uleb128 0x1
	.long	.LASF707
	.value	0x1ef
	.uleb128 0x1
	.long	.LASF708
	.value	0x1f0
	.uleb128 0x1
	.long	.LASF709
	.value	0x1f1
	.uleb128 0x1
	.long	.LASF710
	.value	0x1f2
	.uleb128 0x1
	.long	.LASF711
	.value	0x1f3
	.uleb128 0x1
	.long	.LASF712
	.value	0x1f4
	.uleb128 0x1
	.long	.LASF713
	.value	0x1f5
	.uleb128 0x1
	.long	.LASF714
	.value	0x1f6
	.uleb128 0x1
	.long	.LASF715
	.value	0x1f7
	.uleb128 0x1
	.long	.LASF716
	.value	0x1f8
	.uleb128 0x1
	.long	.LASF717
	.value	0x1f9
	.uleb128 0x1
	.long	.LASF718
	.value	0x1fa
	.uleb128 0x1
	.long	.LASF719
	.value	0x1fb
	.uleb128 0x1
	.long	.LASF720
	.value	0x1fc
	.uleb128 0x1
	.long	.LASF721
	.value	0x1fd
	.uleb128 0x1
	.long	.LASF722
	.value	0x1fe
	.uleb128 0x1
	.long	.LASF723
	.value	0x1ff
	.uleb128 0x1
	.long	.LASF724
	.value	0x200
	.uleb128 0x1
	.long	.LASF725
	.value	0x201
	.uleb128 0x1
	.long	.LASF726
	.value	0x202
	.uleb128 0x1
	.long	.LASF727
	.value	0x203
	.uleb128 0x1
	.long	.LASF728
	.value	0x204
	.uleb128 0x1
	.long	.LASF729
	.value	0x205
	.uleb128 0x1
	.long	.LASF730
	.value	0x206
	.uleb128 0x1
	.long	.LASF731
	.value	0x207
	.uleb128 0x1
	.long	.LASF732
	.value	0x208
	.uleb128 0x1
	.long	.LASF733
	.value	0x209
	.uleb128 0x1
	.long	.LASF734
	.value	0x20a
	.uleb128 0x1
	.long	.LASF735
	.value	0x20b
	.uleb128 0x1
	.long	.LASF736
	.value	0x20c
	.uleb128 0x1
	.long	.LASF737
	.value	0x20d
	.uleb128 0x1
	.long	.LASF738
	.value	0x20e
	.uleb128 0x1
	.long	.LASF739
	.value	0x20f
	.uleb128 0x1
	.long	.LASF740
	.value	0x210
	.uleb128 0x1
	.long	.LASF741
	.value	0x211
	.uleb128 0x1
	.long	.LASF742
	.value	0x212
	.uleb128 0x1
	.long	.LASF743
	.value	0x213
	.uleb128 0x1
	.long	.LASF744
	.value	0x214
	.uleb128 0x1
	.long	.LASF745
	.value	0x215
	.uleb128 0x1
	.long	.LASF746
	.value	0x216
	.uleb128 0x1
	.long	.LASF747
	.value	0x217
	.uleb128 0x1
	.long	.LASF748
	.value	0x218
	.uleb128 0x1
	.long	.LASF749
	.value	0x219
	.uleb128 0x1
	.long	.LASF750
	.value	0x21a
	.uleb128 0x1
	.long	.LASF751
	.value	0x21b
	.uleb128 0x1
	.long	.LASF752
	.value	0x21c
	.uleb128 0x1
	.long	.LASF753
	.value	0x21d
	.uleb128 0x1
	.long	.LASF754
	.value	0x21e
	.uleb128 0x1
	.long	.LASF755
	.value	0x21f
	.uleb128 0x1
	.long	.LASF756
	.value	0x220
	.uleb128 0x1
	.long	.LASF757
	.value	0x221
	.uleb128 0x1
	.long	.LASF758
	.value	0x222
	.uleb128 0x1
	.long	.LASF759
	.value	0x223
	.uleb128 0x1
	.long	.LASF760
	.value	0x224
	.uleb128 0x1
	.long	.LASF761
	.value	0x225
	.uleb128 0x1
	.long	.LASF762
	.value	0x226
	.uleb128 0x1
	.long	.LASF763
	.value	0x227
	.uleb128 0x1
	.long	.LASF764
	.value	0x228
	.uleb128 0x1
	.long	.LASF765
	.value	0x229
	.uleb128 0x1
	.long	.LASF766
	.value	0x22a
	.uleb128 0x1
	.long	.LASF767
	.value	0x22b
	.uleb128 0x1
	.long	.LASF768
	.value	0x22c
	.uleb128 0x1
	.long	.LASF769
	.value	0x22d
	.uleb128 0x1
	.long	.LASF770
	.value	0x22e
	.uleb128 0x1
	.long	.LASF771
	.value	0x22f
	.uleb128 0x1
	.long	.LASF772
	.value	0x230
	.uleb128 0x1
	.long	.LASF773
	.value	0x231
	.uleb128 0x1
	.long	.LASF774
	.value	0x232
	.uleb128 0x1
	.long	.LASF775
	.value	0x233
	.uleb128 0x1
	.long	.LASF776
	.value	0x234
	.uleb128 0x1
	.long	.LASF777
	.value	0x235
	.uleb128 0x1
	.long	.LASF778
	.value	0x236
	.uleb128 0x1
	.long	.LASF779
	.value	0x237
	.uleb128 0x1
	.long	.LASF780
	.value	0x238
	.uleb128 0x1
	.long	.LASF781
	.value	0x239
	.uleb128 0x1
	.long	.LASF782
	.value	0x23a
	.uleb128 0x1
	.long	.LASF783
	.value	0x23b
	.uleb128 0x1
	.long	.LASF784
	.value	0x23c
	.uleb128 0x1
	.long	.LASF785
	.value	0x23d
	.uleb128 0x1
	.long	.LASF786
	.value	0x23e
	.uleb128 0x1
	.long	.LASF787
	.value	0x23f
	.uleb128 0x1
	.long	.LASF788
	.value	0x240
	.uleb128 0x1
	.long	.LASF789
	.value	0x241
	.uleb128 0x1
	.long	.LASF790
	.value	0x242
	.uleb128 0x1
	.long	.LASF791
	.value	0x243
	.uleb128 0x1
	.long	.LASF792
	.value	0x244
	.uleb128 0x1
	.long	.LASF793
	.value	0x245
	.uleb128 0x1
	.long	.LASF794
	.value	0x246
	.uleb128 0x1
	.long	.LASF795
	.value	0x247
	.uleb128 0x1
	.long	.LASF796
	.value	0x248
	.uleb128 0x1
	.long	.LASF797
	.value	0x249
	.uleb128 0x1
	.long	.LASF798
	.value	0x24a
	.uleb128 0x1
	.long	.LASF799
	.value	0x24b
	.uleb128 0x1
	.long	.LASF800
	.value	0x24c
	.uleb128 0x1
	.long	.LASF801
	.value	0x24d
	.uleb128 0x1
	.long	.LASF802
	.value	0x24e
	.uleb128 0x1
	.long	.LASF803
	.value	0x24f
	.uleb128 0x1
	.long	.LASF804
	.value	0x250
	.uleb128 0x1
	.long	.LASF805
	.value	0x251
	.uleb128 0x1
	.long	.LASF806
	.value	0x252
	.uleb128 0x1
	.long	.LASF807
	.value	0x253
	.uleb128 0x1
	.long	.LASF808
	.value	0x254
	.uleb128 0x1
	.long	.LASF809
	.value	0x255
	.uleb128 0x1
	.long	.LASF810
	.value	0x256
	.uleb128 0x1
	.long	.LASF811
	.value	0x257
	.uleb128 0x1
	.long	.LASF812
	.value	0x258
	.uleb128 0x1
	.long	.LASF813
	.value	0x259
	.uleb128 0x1
	.long	.LASF814
	.value	0x25a
	.uleb128 0x1
	.long	.LASF815
	.value	0x25b
	.uleb128 0x1
	.long	.LASF816
	.value	0x25c
	.uleb128 0x1
	.long	.LASF817
	.value	0x25d
	.uleb128 0x1
	.long	.LASF818
	.value	0x25e
	.uleb128 0x1
	.long	.LASF819
	.value	0x25f
	.uleb128 0x1
	.long	.LASF820
	.value	0x260
	.uleb128 0x1
	.long	.LASF821
	.value	0x261
	.uleb128 0x1
	.long	.LASF822
	.value	0x262
	.uleb128 0x1
	.long	.LASF823
	.value	0x263
	.uleb128 0x1
	.long	.LASF824
	.value	0x264
	.uleb128 0x1
	.long	.LASF825
	.value	0x265
	.uleb128 0x1
	.long	.LASF826
	.value	0x266
	.uleb128 0x1
	.long	.LASF827
	.value	0x267
	.uleb128 0x1
	.long	.LASF828
	.value	0x268
	.uleb128 0x1
	.long	.LASF829
	.value	0x269
	.uleb128 0x1
	.long	.LASF830
	.value	0x26a
	.uleb128 0x1
	.long	.LASF831
	.value	0x26b
	.uleb128 0x1
	.long	.LASF832
	.value	0x26c
	.uleb128 0x1
	.long	.LASF833
	.value	0x26d
	.uleb128 0x1
	.long	.LASF834
	.value	0x26e
	.uleb128 0x1
	.long	.LASF835
	.value	0x26f
	.uleb128 0x1
	.long	.LASF836
	.value	0x270
	.uleb128 0x1
	.long	.LASF837
	.value	0x271
	.uleb128 0x1
	.long	.LASF838
	.value	0x272
	.uleb128 0x1
	.long	.LASF839
	.value	0x273
	.uleb128 0x1
	.long	.LASF840
	.value	0x274
	.uleb128 0x1
	.long	.LASF841
	.value	0x275
	.uleb128 0x1
	.long	.LASF842
	.value	0x276
	.uleb128 0x1
	.long	.LASF843
	.value	0x277
	.uleb128 0x1
	.long	.LASF844
	.value	0x278
	.uleb128 0x1
	.long	.LASF845
	.value	0x279
	.uleb128 0x1
	.long	.LASF846
	.value	0x27a
	.uleb128 0x1
	.long	.LASF847
	.value	0x27b
	.uleb128 0x1
	.long	.LASF848
	.value	0x27c
	.uleb128 0x1
	.long	.LASF849
	.value	0x27d
	.uleb128 0x1
	.long	.LASF850
	.value	0x27e
	.uleb128 0x1
	.long	.LASF851
	.value	0x27f
	.uleb128 0x1
	.long	.LASF852
	.value	0x280
	.uleb128 0x1
	.long	.LASF853
	.value	0x281
	.uleb128 0x1
	.long	.LASF854
	.value	0x282
	.uleb128 0x1
	.long	.LASF855
	.value	0x283
	.uleb128 0x1
	.long	.LASF856
	.value	0x284
	.uleb128 0x1
	.long	.LASF857
	.value	0x285
	.uleb128 0x1
	.long	.LASF858
	.value	0x286
	.uleb128 0x1
	.long	.LASF859
	.value	0x287
	.uleb128 0x1
	.long	.LASF860
	.value	0x288
	.uleb128 0x1
	.long	.LASF861
	.value	0x289
	.uleb128 0x1
	.long	.LASF862
	.value	0x28a
	.uleb128 0x1
	.long	.LASF863
	.value	0x28b
	.uleb128 0x1
	.long	.LASF864
	.value	0x28c
	.uleb128 0x1
	.long	.LASF865
	.value	0x28d
	.uleb128 0x1
	.long	.LASF866
	.value	0x28e
	.uleb128 0x1
	.long	.LASF867
	.value	0x28f
	.uleb128 0x1
	.long	.LASF868
	.value	0x290
	.uleb128 0x1
	.long	.LASF869
	.value	0x291
	.uleb128 0x1
	.long	.LASF870
	.value	0x292
	.uleb128 0x1
	.long	.LASF871
	.value	0x293
	.uleb128 0x1
	.long	.LASF872
	.value	0x294
	.uleb128 0x1
	.long	.LASF873
	.value	0x295
	.uleb128 0x1
	.long	.LASF874
	.value	0x296
	.uleb128 0x1
	.long	.LASF875
	.value	0x297
	.uleb128 0x1
	.long	.LASF876
	.value	0x298
	.uleb128 0x1
	.long	.LASF877
	.value	0x299
	.uleb128 0x1
	.long	.LASF878
	.value	0x29a
	.uleb128 0x1
	.long	.LASF879
	.value	0x29b
	.uleb128 0x1
	.long	.LASF880
	.value	0x29c
	.uleb128 0x1
	.long	.LASF881
	.value	0x29d
	.uleb128 0x1
	.long	.LASF882
	.value	0x29e
	.uleb128 0x1
	.long	.LASF883
	.value	0x29f
	.uleb128 0x1
	.long	.LASF884
	.value	0x2a0
	.uleb128 0x1
	.long	.LASF885
	.value	0x2a1
	.uleb128 0x1
	.long	.LASF886
	.value	0x2a2
	.uleb128 0x1
	.long	.LASF887
	.value	0x2a3
	.uleb128 0x1
	.long	.LASF888
	.value	0x2a4
	.uleb128 0x1
	.long	.LASF889
	.value	0x2a5
	.uleb128 0x1
	.long	.LASF890
	.value	0x2a6
	.uleb128 0x1
	.long	.LASF891
	.value	0x2a7
	.uleb128 0x1
	.long	.LASF892
	.value	0x2a8
	.uleb128 0x1
	.long	.LASF893
	.value	0x2a9
	.uleb128 0x1
	.long	.LASF894
	.value	0x2aa
	.uleb128 0x1
	.long	.LASF895
	.value	0x2ab
	.uleb128 0x1
	.long	.LASF896
	.value	0x2ac
	.uleb128 0x1
	.long	.LASF897
	.value	0x2ad
	.uleb128 0x1
	.long	.LASF898
	.value	0x2ae
	.uleb128 0x1
	.long	.LASF899
	.value	0x2af
	.uleb128 0x1
	.long	.LASF900
	.value	0x2b0
	.uleb128 0x1
	.long	.LASF901
	.value	0x2b1
	.uleb128 0x1
	.long	.LASF902
	.value	0x2b2
	.uleb128 0x1
	.long	.LASF903
	.value	0x2b3
	.uleb128 0x1
	.long	.LASF904
	.value	0x2b4
	.uleb128 0x1
	.long	.LASF905
	.value	0x2b5
	.uleb128 0x1
	.long	.LASF906
	.value	0x2b6
	.uleb128 0x1
	.long	.LASF907
	.value	0x2b7
	.uleb128 0x1
	.long	.LASF908
	.value	0x2b8
	.uleb128 0x1
	.long	.LASF909
	.value	0x2b9
	.uleb128 0x1
	.long	.LASF910
	.value	0x2ba
	.uleb128 0x1
	.long	.LASF911
	.value	0x2bb
	.uleb128 0x1
	.long	.LASF912
	.value	0x2bc
	.uleb128 0x1
	.long	.LASF913
	.value	0x2bd
	.uleb128 0x1
	.long	.LASF914
	.value	0x2be
	.uleb128 0x1
	.long	.LASF915
	.value	0x2bf
	.uleb128 0x1
	.long	.LASF916
	.value	0x2c0
	.uleb128 0x1
	.long	.LASF917
	.value	0x2c1
	.uleb128 0x1
	.long	.LASF918
	.value	0x2c2
	.uleb128 0x1
	.long	.LASF919
	.value	0x2c3
	.uleb128 0x1
	.long	.LASF920
	.value	0x2c4
	.uleb128 0x1
	.long	.LASF921
	.value	0x2c5
	.uleb128 0x1
	.long	.LASF922
	.value	0x2c6
	.uleb128 0x1
	.long	.LASF923
	.value	0x2c7
	.uleb128 0x1
	.long	.LASF924
	.value	0x2c8
	.uleb128 0x1
	.long	.LASF925
	.value	0x2c9
	.uleb128 0x1
	.long	.LASF926
	.value	0x2ca
	.uleb128 0x1
	.long	.LASF927
	.value	0x2cb
	.uleb128 0x1
	.long	.LASF928
	.value	0x2cc
	.uleb128 0x1
	.long	.LASF929
	.value	0x2cd
	.uleb128 0x1
	.long	.LASF930
	.value	0x2ce
	.uleb128 0x1
	.long	.LASF931
	.value	0x2cf
	.uleb128 0x1
	.long	.LASF932
	.value	0x2d0
	.uleb128 0x1
	.long	.LASF933
	.value	0x2d1
	.uleb128 0x1
	.long	.LASF934
	.value	0x2d2
	.uleb128 0x1
	.long	.LASF935
	.value	0x2d3
	.uleb128 0x1
	.long	.LASF936
	.value	0x2d4
	.uleb128 0x1
	.long	.LASF937
	.value	0x2d5
	.uleb128 0x1
	.long	.LASF938
	.value	0x2d6
	.uleb128 0x1
	.long	.LASF939
	.value	0x2d7
	.uleb128 0x1
	.long	.LASF940
	.value	0x2d8
	.uleb128 0x1
	.long	.LASF941
	.value	0x2d9
	.uleb128 0x1
	.long	.LASF942
	.value	0x2da
	.uleb128 0x1
	.long	.LASF943
	.value	0x2db
	.uleb128 0x1
	.long	.LASF944
	.value	0x2dc
	.uleb128 0x1
	.long	.LASF945
	.value	0x2dd
	.uleb128 0x1
	.long	.LASF946
	.value	0x2de
	.uleb128 0x1
	.long	.LASF947
	.value	0x2df
	.uleb128 0x1
	.long	.LASF948
	.value	0x2e0
	.uleb128 0x1
	.long	.LASF949
	.value	0x2e1
	.uleb128 0x1
	.long	.LASF950
	.value	0x2e2
	.uleb128 0x1
	.long	.LASF951
	.value	0x2e3
	.uleb128 0x1
	.long	.LASF952
	.value	0x2e4
	.uleb128 0x1
	.long	.LASF953
	.value	0x2e5
	.uleb128 0x1
	.long	.LASF954
	.value	0x2e6
	.uleb128 0x1
	.long	.LASF955
	.value	0x2e7
	.uleb128 0x1
	.long	.LASF956
	.value	0x2e8
	.uleb128 0x1
	.long	.LASF957
	.value	0x2e9
	.uleb128 0x1
	.long	.LASF958
	.value	0x2ea
	.uleb128 0x1
	.long	.LASF959
	.value	0x2eb
	.uleb128 0x1
	.long	.LASF960
	.value	0x2ec
	.uleb128 0x1
	.long	.LASF961
	.value	0x2ed
	.uleb128 0x1
	.long	.LASF962
	.value	0x2ee
	.uleb128 0x1
	.long	.LASF963
	.value	0x2ef
	.uleb128 0x1
	.long	.LASF964
	.value	0x2f0
	.uleb128 0x1
	.long	.LASF965
	.value	0x2f1
	.uleb128 0x1
	.long	.LASF966
	.value	0x2f2
	.uleb128 0x1
	.long	.LASF967
	.value	0x2f3
	.uleb128 0x1
	.long	.LASF968
	.value	0x2f4
	.uleb128 0x1
	.long	.LASF969
	.value	0x2f5
	.uleb128 0x1
	.long	.LASF970
	.value	0x2f6
	.uleb128 0x1
	.long	.LASF971
	.value	0x2f7
	.uleb128 0x1
	.long	.LASF972
	.value	0x2f8
	.uleb128 0x1
	.long	.LASF973
	.value	0x2f9
	.uleb128 0x1
	.long	.LASF974
	.value	0x2fa
	.uleb128 0x1
	.long	.LASF975
	.value	0x2fb
	.uleb128 0x1
	.long	.LASF976
	.value	0x2fc
	.uleb128 0x1
	.long	.LASF977
	.value	0x2fd
	.uleb128 0x1
	.long	.LASF978
	.value	0x2fe
	.uleb128 0x1
	.long	.LASF979
	.value	0x2ff
	.uleb128 0x1
	.long	.LASF980
	.value	0x300
	.uleb128 0x1
	.long	.LASF981
	.value	0x301
	.uleb128 0x1
	.long	.LASF982
	.value	0x302
	.uleb128 0x1
	.long	.LASF983
	.value	0x303
	.uleb128 0x1
	.long	.LASF984
	.value	0x304
	.uleb128 0x1
	.long	.LASF985
	.value	0x305
	.uleb128 0x1
	.long	.LASF986
	.value	0x306
	.uleb128 0x1
	.long	.LASF987
	.value	0x307
	.uleb128 0x1
	.long	.LASF988
	.value	0x308
	.uleb128 0x1
	.long	.LASF989
	.value	0x309
	.uleb128 0x1
	.long	.LASF990
	.value	0x30a
	.uleb128 0x1
	.long	.LASF991
	.value	0x30b
	.uleb128 0x1
	.long	.LASF992
	.value	0x30c
	.uleb128 0x1
	.long	.LASF993
	.value	0x30d
	.uleb128 0x1
	.long	.LASF994
	.value	0x30e
	.uleb128 0x1
	.long	.LASF995
	.value	0x30f
	.uleb128 0x1
	.long	.LASF996
	.value	0x310
	.uleb128 0x1
	.long	.LASF997
	.value	0x311
	.uleb128 0x1
	.long	.LASF998
	.value	0x312
	.uleb128 0x1
	.long	.LASF999
	.value	0x313
	.uleb128 0x1
	.long	.LASF1000
	.value	0x314
	.uleb128 0x1
	.long	.LASF1001
	.value	0x315
	.uleb128 0x1
	.long	.LASF1002
	.value	0x316
	.uleb128 0x1
	.long	.LASF1003
	.value	0x317
	.uleb128 0x1
	.long	.LASF1004
	.value	0x318
	.uleb128 0x1
	.long	.LASF1005
	.value	0x319
	.uleb128 0x1
	.long	.LASF1006
	.value	0x31a
	.uleb128 0x1
	.long	.LASF1007
	.value	0x31b
	.uleb128 0x1
	.long	.LASF1008
	.value	0x31c
	.uleb128 0x1
	.long	.LASF1009
	.value	0x31d
	.uleb128 0x1
	.long	.LASF1010
	.value	0x31e
	.uleb128 0x1
	.long	.LASF1011
	.value	0x31f
	.uleb128 0x1
	.long	.LASF1012
	.value	0x320
	.uleb128 0x1
	.long	.LASF1013
	.value	0x321
	.uleb128 0x1
	.long	.LASF1014
	.value	0x322
	.uleb128 0x1
	.long	.LASF1015
	.value	0x323
	.uleb128 0x1
	.long	.LASF1016
	.value	0x324
	.uleb128 0x1
	.long	.LASF1017
	.value	0x325
	.uleb128 0x1
	.long	.LASF1018
	.value	0x326
	.uleb128 0x1
	.long	.LASF1019
	.value	0x327
	.uleb128 0x1
	.long	.LASF1020
	.value	0x328
	.uleb128 0x1
	.long	.LASF1021
	.value	0x329
	.uleb128 0x1
	.long	.LASF1022
	.value	0x32a
	.uleb128 0x1
	.long	.LASF1023
	.value	0x32b
	.uleb128 0x1
	.long	.LASF1024
	.value	0x32c
	.uleb128 0x1
	.long	.LASF1025
	.value	0x32d
	.uleb128 0x1
	.long	.LASF1026
	.value	0x32e
	.uleb128 0x1
	.long	.LASF1027
	.value	0x32f
	.uleb128 0x1
	.long	.LASF1028
	.value	0x330
	.uleb128 0x1
	.long	.LASF1029
	.value	0x331
	.uleb128 0x1
	.long	.LASF1030
	.value	0x332
	.uleb128 0x1
	.long	.LASF1031
	.value	0x333
	.uleb128 0x1
	.long	.LASF1032
	.value	0x334
	.uleb128 0x1
	.long	.LASF1033
	.value	0x335
	.uleb128 0x1
	.long	.LASF1034
	.value	0x336
	.uleb128 0x1
	.long	.LASF1035
	.value	0x337
	.uleb128 0x1
	.long	.LASF1036
	.value	0x338
	.uleb128 0x1
	.long	.LASF1037
	.value	0x339
	.uleb128 0x1
	.long	.LASF1038
	.value	0x33a
	.uleb128 0x1
	.long	.LASF1039
	.value	0x33b
	.uleb128 0x1
	.long	.LASF1040
	.value	0x33c
	.uleb128 0x1
	.long	.LASF1041
	.value	0x33d
	.uleb128 0x1
	.long	.LASF1042
	.value	0x33e
	.uleb128 0x1
	.long	.LASF1043
	.value	0x33f
	.uleb128 0x1
	.long	.LASF1044
	.value	0x340
	.uleb128 0x1
	.long	.LASF1045
	.value	0x341
	.uleb128 0x1
	.long	.LASF1046
	.value	0x342
	.uleb128 0x1
	.long	.LASF1047
	.value	0x343
	.uleb128 0x1
	.long	.LASF1048
	.value	0x344
	.uleb128 0x1
	.long	.LASF1049
	.value	0x345
	.uleb128 0x1
	.long	.LASF1050
	.value	0x346
	.uleb128 0x1
	.long	.LASF1051
	.value	0x347
	.uleb128 0x1
	.long	.LASF1052
	.value	0x348
	.uleb128 0x1
	.long	.LASF1053
	.value	0x349
	.uleb128 0x1
	.long	.LASF1054
	.value	0x34a
	.uleb128 0x1
	.long	.LASF1055
	.value	0x34b
	.uleb128 0x1
	.long	.LASF1056
	.value	0x34c
	.uleb128 0x1
	.long	.LASF1057
	.value	0x34d
	.uleb128 0x1
	.long	.LASF1058
	.value	0x34e
	.uleb128 0x1
	.long	.LASF1059
	.value	0x34f
	.uleb128 0x1
	.long	.LASF1060
	.value	0x350
	.uleb128 0x1
	.long	.LASF1061
	.value	0x351
	.uleb128 0x1
	.long	.LASF1062
	.value	0x352
	.uleb128 0x1
	.long	.LASF1063
	.value	0x353
	.uleb128 0x1
	.long	.LASF1064
	.value	0x354
	.uleb128 0x1
	.long	.LASF1065
	.value	0x355
	.uleb128 0x1
	.long	.LASF1066
	.value	0x356
	.uleb128 0x1
	.long	.LASF1067
	.value	0x357
	.uleb128 0x1
	.long	.LASF1068
	.value	0x358
	.uleb128 0x1
	.long	.LASF1069
	.value	0x359
	.uleb128 0x1
	.long	.LASF1070
	.value	0x35a
	.uleb128 0x1
	.long	.LASF1071
	.value	0x35b
	.uleb128 0x1
	.long	.LASF1072
	.value	0x35c
	.uleb128 0x1
	.long	.LASF1073
	.value	0x35d
	.uleb128 0x1
	.long	.LASF1074
	.value	0x35e
	.uleb128 0x1
	.long	.LASF1075
	.value	0x35f
	.uleb128 0x1
	.long	.LASF1076
	.value	0x360
	.uleb128 0x1
	.long	.LASF1077
	.value	0x361
	.uleb128 0x1
	.long	.LASF1078
	.value	0x362
	.uleb128 0x1
	.long	.LASF1079
	.value	0x363
	.uleb128 0x1
	.long	.LASF1080
	.value	0x364
	.uleb128 0x1
	.long	.LASF1081
	.value	0x365
	.uleb128 0x1
	.long	.LASF1082
	.value	0x366
	.uleb128 0x1
	.long	.LASF1083
	.value	0x367
	.uleb128 0x1
	.long	.LASF1084
	.value	0x368
	.uleb128 0x1
	.long	.LASF1085
	.value	0x369
	.uleb128 0x1
	.long	.LASF1086
	.value	0x36a
	.uleb128 0x1
	.long	.LASF1087
	.value	0x36b
	.uleb128 0x1
	.long	.LASF1088
	.value	0x36c
	.uleb128 0x1
	.long	.LASF1089
	.value	0x36d
	.uleb128 0x1
	.long	.LASF1090
	.value	0x36e
	.uleb128 0x1
	.long	.LASF1091
	.value	0x36f
	.uleb128 0x1
	.long	.LASF1092
	.value	0x370
	.uleb128 0x1
	.long	.LASF1093
	.value	0x371
	.uleb128 0x1
	.long	.LASF1094
	.value	0x372
	.uleb128 0x1
	.long	.LASF1095
	.value	0x373
	.uleb128 0x1
	.long	.LASF1096
	.value	0x374
	.uleb128 0x1
	.long	.LASF1097
	.value	0x375
	.uleb128 0x1
	.long	.LASF1098
	.value	0x376
	.uleb128 0x1
	.long	.LASF1099
	.value	0x377
	.uleb128 0x1
	.long	.LASF1100
	.value	0x378
	.uleb128 0x1
	.long	.LASF1101
	.value	0x379
	.uleb128 0x1
	.long	.LASF1102
	.value	0x37a
	.uleb128 0x1
	.long	.LASF1103
	.value	0x37b
	.uleb128 0x1
	.long	.LASF1104
	.value	0x37c
	.uleb128 0x1
	.long	.LASF1105
	.value	0x37d
	.uleb128 0x1
	.long	.LASF1106
	.value	0x37e
	.uleb128 0x1
	.long	.LASF1107
	.value	0x37f
	.uleb128 0x1
	.long	.LASF1108
	.value	0x380
	.uleb128 0x1
	.long	.LASF1109
	.value	0x381
	.uleb128 0x1
	.long	.LASF1110
	.value	0x382
	.uleb128 0x1
	.long	.LASF1111
	.value	0x383
	.uleb128 0x1
	.long	.LASF1112
	.value	0x384
	.uleb128 0x1
	.long	.LASF1113
	.value	0x385
	.uleb128 0x1
	.long	.LASF1114
	.value	0x386
	.uleb128 0x1
	.long	.LASF1115
	.value	0x387
	.uleb128 0x1
	.long	.LASF1116
	.value	0x388
	.uleb128 0x1
	.long	.LASF1117
	.value	0x389
	.uleb128 0x1
	.long	.LASF1118
	.value	0x38a
	.uleb128 0x1
	.long	.LASF1119
	.value	0x38b
	.uleb128 0x1
	.long	.LASF1120
	.value	0x38c
	.uleb128 0x1
	.long	.LASF1121
	.value	0x38d
	.uleb128 0x1
	.long	.LASF1122
	.value	0x38e
	.uleb128 0x1
	.long	.LASF1123
	.value	0x38f
	.uleb128 0x1
	.long	.LASF1124
	.value	0x390
	.uleb128 0x1
	.long	.LASF1125
	.value	0x391
	.uleb128 0x1
	.long	.LASF1126
	.value	0x392
	.uleb128 0x1
	.long	.LASF1127
	.value	0x393
	.uleb128 0x1
	.long	.LASF1128
	.value	0x394
	.uleb128 0x1
	.long	.LASF1129
	.value	0x395
	.uleb128 0x1
	.long	.LASF1130
	.value	0x396
	.uleb128 0x1
	.long	.LASF1131
	.value	0x397
	.uleb128 0x1
	.long	.LASF1132
	.value	0x398
	.uleb128 0x1
	.long	.LASF1133
	.value	0x399
	.uleb128 0x1
	.long	.LASF1134
	.value	0x39a
	.uleb128 0x1
	.long	.LASF1135
	.value	0x39b
	.uleb128 0x1
	.long	.LASF1136
	.value	0x39c
	.uleb128 0x1
	.long	.LASF1137
	.value	0x39d
	.uleb128 0x1
	.long	.LASF1138
	.value	0x39e
	.uleb128 0x1
	.long	.LASF1139
	.value	0x39f
	.uleb128 0x1
	.long	.LASF1140
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF1141
	.value	0x3a1
	.uleb128 0x1
	.long	.LASF1142
	.value	0x3a2
	.uleb128 0x1
	.long	.LASF1143
	.value	0x3a3
	.uleb128 0x1
	.long	.LASF1144
	.value	0x3a4
	.uleb128 0x1
	.long	.LASF1145
	.value	0x3a5
	.uleb128 0x1
	.long	.LASF1146
	.value	0x3a6
	.uleb128 0x1
	.long	.LASF1147
	.value	0x3a7
	.uleb128 0x1
	.long	.LASF1148
	.value	0x3a8
	.uleb128 0x1
	.long	.LASF1149
	.value	0x3a9
	.uleb128 0x1
	.long	.LASF1150
	.value	0x3aa
	.uleb128 0x1
	.long	.LASF1151
	.value	0x3ab
	.uleb128 0x1
	.long	.LASF1152
	.value	0x3ac
	.uleb128 0x1
	.long	.LASF1153
	.value	0x3ad
	.uleb128 0x1
	.long	.LASF1154
	.value	0x3ae
	.uleb128 0x1
	.long	.LASF1155
	.value	0x3af
	.uleb128 0x1
	.long	.LASF1156
	.value	0x3b0
	.uleb128 0x1
	.long	.LASF1157
	.value	0x3b1
	.uleb128 0x1
	.long	.LASF1158
	.value	0x3b2
	.uleb128 0x1
	.long	.LASF1159
	.value	0x3b3
	.uleb128 0x1
	.long	.LASF1160
	.value	0x3b4
	.uleb128 0x1
	.long	.LASF1161
	.value	0x3b5
	.uleb128 0x1
	.long	.LASF1162
	.value	0x3b6
	.uleb128 0x1
	.long	.LASF1163
	.value	0x3b7
	.uleb128 0x1
	.long	.LASF1164
	.value	0x3b8
	.uleb128 0x1
	.long	.LASF1165
	.value	0x3b9
	.uleb128 0x1
	.long	.LASF1166
	.value	0x3ba
	.uleb128 0x1
	.long	.LASF1167
	.value	0x3bb
	.uleb128 0x1
	.long	.LASF1168
	.value	0x3bc
	.uleb128 0x1
	.long	.LASF1169
	.value	0x3bd
	.uleb128 0x1
	.long	.LASF1170
	.value	0x3be
	.uleb128 0x1
	.long	.LASF1171
	.value	0x3bf
	.uleb128 0x1
	.long	.LASF1172
	.value	0x3c0
	.uleb128 0x1
	.long	.LASF1173
	.value	0x3c1
	.uleb128 0x1
	.long	.LASF1174
	.value	0x3c2
	.uleb128 0x1
	.long	.LASF1175
	.value	0x3c3
	.uleb128 0x1
	.long	.LASF1176
	.value	0x3c4
	.uleb128 0x1
	.long	.LASF1177
	.value	0x3c5
	.uleb128 0x1
	.long	.LASF1178
	.value	0x3c6
	.uleb128 0x1
	.long	.LASF1179
	.value	0x3c7
	.byte	0
	.uleb128 0x11
	.long	.LASF1180
	.byte	0x9
	.value	0x478
	.long	0x710
	.uleb128 0x17
	.byte	0x38
	.byte	0x9
	.value	0x47b
	.long	0x210d
	.uleb128 0x4
	.long	.LASF1181
	.byte	0x9
	.value	0x47d
	.byte	0xf
	.long	0x704
	.byte	0
	.uleb128 0x4
	.long	.LASF1182
	.byte	0x9
	.value	0x47e
	.byte	0xa
	.long	0x97
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1183
	.byte	0x9
	.value	0x47f
	.byte	0xa
	.long	0x97
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1184
	.byte	0x9
	.value	0x481
	.byte	0xf
	.long	0x2e6
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1185
	.byte	0x9
	.value	0x482
	.byte	0x10
	.long	0x2095
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1186
	.byte	0x9
	.value	0x483
	.byte	0xa
	.long	0x97
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1187
	.byte	0x9
	.value	0x483
	.byte	0x11
	.long	0x97
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.long	.LASF1188
	.byte	0x9
	.value	0x484
	.long	0x20a1
	.uleb128 0x29
	.byte	0x7
	.byte	0x4
	.long	0x6b
	.byte	0x9
	.value	0x48b
	.byte	0xe
	.long	0x2465
	.uleb128 0x2
	.long	.LASF1189
	.byte	0
	.uleb128 0x2
	.long	.LASF1190
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1191
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1192
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1193
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1194
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1195
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1196
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1197
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1198
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1199
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1200
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1201
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1202
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1203
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1204
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1205
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1206
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1207
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1208
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1209
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1210
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1211
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1212
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1213
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1214
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1215
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1216
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1217
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1218
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1219
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1220
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1221
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1222
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1223
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1224
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1225
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1226
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1227
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1228
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1229
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1230
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1231
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1232
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1233
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1234
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1235
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1236
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1237
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1238
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1239
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1240
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1241
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1242
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1243
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1244
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1245
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1246
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1247
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1248
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1249
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1250
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1251
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1252
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1253
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1254
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1255
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1256
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1257
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1258
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1259
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1260
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1261
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1262
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1263
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1264
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1265
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1266
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1267
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1268
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1269
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1270
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1271
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1272
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1273
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1274
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1275
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1276
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1277
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1278
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1279
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1280
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1281
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1282
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1283
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1284
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1285
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1286
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1287
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1288
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1289
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1290
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1291
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1292
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1293
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1294
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1295
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1296
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1297
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1298
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF1299
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF1300
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF1301
	.byte	0x70
	.uleb128 0x2
	.long	.LASF1302
	.byte	0x71
	.uleb128 0x2
	.long	.LASF1303
	.byte	0x72
	.uleb128 0x2
	.long	.LASF1304
	.byte	0x73
	.uleb128 0x2
	.long	.LASF1305
	.byte	0x74
	.uleb128 0x2
	.long	.LASF1306
	.byte	0x75
	.uleb128 0x2
	.long	.LASF1307
	.byte	0x76
	.uleb128 0x2
	.long	.LASF1308
	.byte	0x77
	.uleb128 0x2
	.long	.LASF1309
	.byte	0x78
	.uleb128 0x2
	.long	.LASF1310
	.byte	0x79
	.uleb128 0x2
	.long	.LASF1311
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF1312
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF1313
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF1314
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF1315
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF1316
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF1317
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1318
	.byte	0x81
	.uleb128 0x2
	.long	.LASF1319
	.byte	0x82
	.uleb128 0x2
	.long	.LASF1320
	.byte	0x83
	.uleb128 0x2
	.long	.LASF1321
	.byte	0x84
	.uleb128 0x2
	.long	.LASF1322
	.byte	0x85
	.uleb128 0x2
	.long	.LASF1323
	.byte	0x86
	.uleb128 0x2
	.long	.LASF1324
	.byte	0x87
	.uleb128 0x2
	.long	.LASF1325
	.byte	0x88
	.uleb128 0x2
	.long	.LASF1326
	.byte	0x89
	.byte	0
	.uleb128 0x11
	.long	.LASF1327
	.byte	0x9
	.value	0x517
	.long	0x2119
	.uleb128 0x17
	.byte	0x5c
	.byte	0x9
	.value	0x519
	.long	0x25bd
	.uleb128 0x4
	.long	.LASF1328
	.byte	0x9
	.value	0x51b
	.byte	0x9
	.long	0x90
	.byte	0
	.uleb128 0x4
	.long	.LASF1329
	.byte	0x9
	.value	0x51c
	.byte	0x9
	.long	0x90
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1330
	.byte	0x9
	.value	0x51d
	.byte	0x9
	.long	0x90
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1331
	.byte	0x9
	.value	0x51e
	.byte	0x9
	.long	0x90
	.byte	0xc
	.uleb128 0x4
	.long	.LASF1332
	.byte	0x9
	.value	0x51f
	.byte	0x9
	.long	0x90
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1333
	.byte	0x9
	.value	0x520
	.byte	0x9
	.long	0x90
	.byte	0x14
	.uleb128 0x4
	.long	.LASF1334
	.byte	0x9
	.value	0x521
	.byte	0x9
	.long	0x90
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1335
	.byte	0x9
	.value	0x522
	.byte	0x9
	.long	0x90
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF1336
	.byte	0x9
	.value	0x523
	.byte	0x9
	.long	0x90
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1337
	.byte	0x9
	.value	0x524
	.byte	0x9
	.long	0x90
	.byte	0x24
	.uleb128 0x4
	.long	.LASF1338
	.byte	0x9
	.value	0x525
	.byte	0x9
	.long	0x90
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1339
	.byte	0x9
	.value	0x526
	.byte	0x9
	.long	0x90
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1340
	.byte	0x9
	.value	0x527
	.byte	0x9
	.long	0x90
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1341
	.byte	0x9
	.value	0x528
	.byte	0x9
	.long	0x90
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1342
	.byte	0x9
	.value	0x529
	.byte	0x9
	.long	0x90
	.byte	0x38
	.uleb128 0x4
	.long	.LASF1343
	.byte	0x9
	.value	0x52a
	.byte	0x9
	.long	0x90
	.byte	0x3c
	.uleb128 0x4
	.long	.LASF1344
	.byte	0x9
	.value	0x52b
	.byte	0x9
	.long	0x90
	.byte	0x40
	.uleb128 0x4
	.long	.LASF1345
	.byte	0x9
	.value	0x52c
	.byte	0x9
	.long	0x90
	.byte	0x44
	.uleb128 0x4
	.long	.LASF1346
	.byte	0x9
	.value	0x52d
	.byte	0x9
	.long	0x90
	.byte	0x48
	.uleb128 0x4
	.long	.LASF1347
	.byte	0x9
	.value	0x52e
	.byte	0x9
	.long	0x90
	.byte	0x4c
	.uleb128 0x4
	.long	.LASF1348
	.byte	0x9
	.value	0x52f
	.byte	0x9
	.long	0x90
	.byte	0x50
	.uleb128 0x4
	.long	.LASF1349
	.byte	0x9
	.value	0x530
	.byte	0x9
	.long	0x90
	.byte	0x54
	.uleb128 0x4
	.long	.LASF1350
	.byte	0x9
	.value	0x531
	.byte	0x9
	.long	0x90
	.byte	0x58
	.byte	0
	.uleb128 0x11
	.long	.LASF1351
	.byte	0x9
	.value	0x533
	.long	0x2471
	.uleb128 0x14
	.long	.LASF1353
	.byte	0xe0
	.byte	0xa
	.byte	0xcf
	.long	0x27a0
	.uleb128 0x3
	.long	.LASF1354
	.byte	0xa
	.byte	0xd2
	.byte	0x10
	.long	0x337
	.byte	0
	.uleb128 0x5
	.string	"x"
	.byte	0xa
	.byte	0xd5
	.byte	0xe
	.long	0x24f
	.byte	0x18
	.uleb128 0x5
	.string	"y"
	.byte	0xa
	.byte	0xd6
	.byte	0xe
	.long	0x24f
	.byte	0x1c
	.uleb128 0x5
	.string	"z"
	.byte	0xa
	.byte	0xd7
	.byte	0xe
	.long	0x24f
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1355
	.byte	0xa
	.byte	0xda
	.byte	0x14
	.long	0x27a0
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1356
	.byte	0xa
	.byte	0xdb
	.byte	0x14
	.long	0x27a0
	.byte	0x30
	.uleb128 0x3
	.long	.LASF68
	.byte	0xa
	.byte	0xde
	.byte	0xe
	.long	0x25b
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1181
	.byte	0xa
	.byte	0xdf
	.byte	0x12
	.long	0x704
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1182
	.byte	0xa
	.byte	0xe0
	.byte	0xb
	.long	0x90
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1357
	.byte	0xa
	.byte	0xe4
	.byte	0x14
	.long	0x27a0
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1358
	.byte	0xa
	.byte	0xe5
	.byte	0x14
	.long	0x27a0
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1359
	.byte	0xa
	.byte	0xe7
	.byte	0x19
	.long	0x27d9
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1360
	.byte	0xa
	.byte	0xea
	.byte	0xe
	.long	0x24f
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1361
	.byte	0xa
	.byte	0xeb
	.byte	0xe
	.long	0x24f
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1344
	.byte	0xa
	.byte	0xee
	.byte	0xe
	.long	0x24f
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1345
	.byte	0xa
	.byte	0xef
	.byte	0xe
	.long	0x24f
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1362
	.byte	0xa
	.byte	0xf2
	.byte	0xe
	.long	0x24f
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1363
	.byte	0xa
	.byte	0xf3
	.byte	0xe
	.long	0x24f
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1364
	.byte	0xa
	.byte	0xf4
	.byte	0xe
	.long	0x24f
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1365
	.byte	0xa
	.byte	0xf7
	.byte	0xb
	.long	0x90
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF69
	.byte	0xa
	.byte	0xf9
	.byte	0x11
	.long	0x2465
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1366
	.byte	0xa
	.byte	0xfa
	.byte	0x12
	.long	0x27de
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1183
	.byte	0xa
	.byte	0xfc
	.byte	0xb
	.long	0x90
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1367
	.byte	0xa
	.byte	0xfd
	.byte	0xf
	.long	0x27e3
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1349
	.byte	0xa
	.byte	0xfe
	.byte	0xb
	.long	0x90
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1368
	.byte	0xa
	.byte	0xff
	.byte	0xb
	.long	0x90
	.byte	0xa4
	.uleb128 0x4
	.long	.LASF1369
	.byte	0xa
	.value	0x102
	.byte	0xb
	.long	0x90
	.byte	0xa8
	.uleb128 0x4
	.long	.LASF1370
	.byte	0xa
	.value	0x103
	.byte	0xb
	.long	0x90
	.byte	0xac
	.uleb128 0x4
	.long	.LASF1371
	.byte	0xa
	.value	0x107
	.byte	0x14
	.long	0x27a0
	.byte	0xb0
	.uleb128 0x4
	.long	.LASF1333
	.byte	0xa
	.value	0x10b
	.byte	0xb
	.long	0x90
	.byte	0xb8
	.uleb128 0x4
	.long	.LASF1372
	.byte	0xa
	.value	0x10f
	.byte	0xb
	.long	0x90
	.byte	0xbc
	.uleb128 0x4
	.long	.LASF1373
	.byte	0xa
	.value	0x113
	.byte	0x16
	.long	0x29bd
	.byte	0xc0
	.uleb128 0x4
	.long	.LASF1374
	.byte	0xa
	.value	0x116
	.byte	0xb
	.long	0x90
	.byte	0xc8
	.uleb128 0x4
	.long	.LASF1375
	.byte	0xa
	.value	0x119
	.byte	0x11
	.long	0x3a9
	.byte	0xcc
	.uleb128 0x4
	.long	.LASF1376
	.byte	0xa
	.value	0x11c
	.byte	0x14
	.long	0x27a0
	.byte	0xd8
	.byte	0
	.uleb128 0x7
	.long	0x25c9
	.uleb128 0x14
	.long	.LASF1377
	.byte	0x10
	.byte	0xb
	.byte	0xe3
	.long	0x27d9
	.uleb128 0x3
	.long	.LASF1378
	.byte	0xb
	.byte	0xe5
	.byte	0xf
	.long	0x2c56
	.byte	0
	.uleb128 0x3
	.long	.LASF1379
	.byte	0xb
	.byte	0xe6
	.byte	0xb
	.long	0x89
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1380
	.byte	0xb
	.byte	0xe7
	.byte	0xb
	.long	0x89
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.long	0x27a5
	.uleb128 0x7
	.long	0x25bd
	.uleb128 0x7
	.long	0x210d
	.uleb128 0x2a
	.long	.LASF1381
	.value	0x140
	.byte	0xc
	.byte	0x53
	.byte	0x10
	.long	0x29bd
	.uleb128 0x5
	.string	"mo"
	.byte	0xc
	.byte	0x55
	.byte	0xe
	.long	0x2b15
	.byte	0
	.uleb128 0x3
	.long	.LASF1382
	.byte	0xc
	.byte	0x56
	.byte	0x13
	.long	0x2e47
	.byte	0x8
	.uleb128 0x5
	.string	"cmd"
	.byte	0xc
	.byte	0x57
	.byte	0xf
	.long	0x235
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1383
	.byte	0xc
	.byte	0x5c
	.byte	0xe
	.long	0x24f
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1384
	.byte	0xc
	.byte	0x5e
	.byte	0xe
	.long	0x24f
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1385
	.byte	0xc
	.byte	0x60
	.byte	0x16
	.long	0x24f
	.byte	0x1c
	.uleb128 0x5
	.string	"bob"
	.byte	0xc
	.byte	0x62
	.byte	0x16
	.long	0x24f
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1368
	.byte	0xc
	.byte	0x66
	.byte	0xb
	.long	0x90
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1386
	.byte	0xc
	.byte	0x67
	.byte	0xb
	.long	0x90
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1387
	.byte	0xc
	.byte	0x69
	.byte	0xb
	.long	0x90
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1388
	.byte	0xc
	.byte	0x6c
	.byte	0xb
	.long	0x2e53
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1389
	.byte	0xc
	.byte	0x6d
	.byte	0xe
	.long	0x2e63
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1390
	.byte	0xc
	.byte	0x6e
	.byte	0xe
	.long	0x1c6
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1391
	.byte	0xc
	.byte	0x71
	.byte	0xb
	.long	0x2b1a
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1392
	.byte	0xc
	.byte	0x72
	.byte	0x12
	.long	0x139
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1393
	.byte	0xc
	.byte	0x75
	.byte	0x12
	.long	0x139
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1394
	.byte	0xc
	.byte	0x77
	.byte	0xe
	.long	0x2e73
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1395
	.byte	0xc
	.byte	0x78
	.byte	0xb
	.long	0x2b1a
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1396
	.byte	0xc
	.byte	0x79
	.byte	0xb
	.long	0x2b1a
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1397
	.byte	0xc
	.byte	0x7c
	.byte	0xb
	.long	0x90
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1398
	.byte	0xc
	.byte	0x7d
	.byte	0xb
	.long	0x90
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1399
	.byte	0xc
	.byte	0x81
	.byte	0xb
	.long	0x90
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1400
	.byte	0xc
	.byte	0x84
	.byte	0xb
	.long	0x90
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1401
	.byte	0xc
	.byte	0x87
	.byte	0xb
	.long	0x90
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1402
	.byte	0xc
	.byte	0x88
	.byte	0xb
	.long	0x90
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1403
	.byte	0xc
	.byte	0x89
	.byte	0xb
	.long	0x90
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1404
	.byte	0xc
	.byte	0x8c
	.byte	0xc
	.long	0xae
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1405
	.byte	0xc
	.byte	0x8f
	.byte	0xb
	.long	0x90
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1406
	.byte	0xc
	.byte	0x90
	.byte	0xb
	.long	0x90
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1407
	.byte	0xc
	.byte	0x93
	.byte	0xe
	.long	0x2b15
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1408
	.byte	0xc
	.byte	0x96
	.byte	0xb
	.long	0x90
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1409
	.byte	0xc
	.byte	0x9a
	.byte	0xb
	.long	0x90
	.byte	0xfc
	.uleb128 0x18
	.long	.LASF1410
	.byte	0x9e
	.byte	0xb
	.long	0x90
	.value	0x100
	.uleb128 0x18
	.long	.LASF1411
	.byte	0xa1
	.byte	0xf
	.long	0x2e83
	.value	0x108
	.uleb128 0x18
	.long	.LASF1412
	.byte	0xa4
	.byte	0xe
	.long	0x1c6
	.value	0x138
	.byte	0
	.uleb128 0x7
	.long	0x27e8
	.uleb128 0x11
	.long	.LASF1413
	.byte	0xa
	.value	0x11e
	.long	0x25c9
	.uleb128 0xe
	.byte	0x8
	.byte	0xb
	.byte	0x47
	.long	0x29ed
	.uleb128 0x5
	.string	"x"
	.byte	0xb
	.byte	0x49
	.byte	0xd
	.long	0x24f
	.byte	0
	.uleb128 0x5
	.string	"y"
	.byte	0xb
	.byte	0x4a
	.byte	0xd
	.long	0x24f
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	.LASF1414
	.byte	0xb
	.byte	0x4c
	.byte	0x3
	.long	0x29ce
	.uleb128 0xe
	.byte	0x28
	.byte	0xb
	.byte	0x58
	.long	0x2a30
	.uleb128 0x3
	.long	.LASF1354
	.byte	0xb
	.byte	0x5a
	.byte	0x10
	.long	0x337
	.byte	0
	.uleb128 0x5
	.string	"x"
	.byte	0xb
	.byte	0x5b
	.byte	0xe
	.long	0x24f
	.byte	0x18
	.uleb128 0x5
	.string	"y"
	.byte	0xb
	.byte	0x5c
	.byte	0xe
	.long	0x24f
	.byte	0x1c
	.uleb128 0x5
	.string	"z"
	.byte	0xb
	.byte	0x5d
	.byte	0xe
	.long	0x24f
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.long	.LASF1415
	.byte	0xb
	.byte	0x5f
	.byte	0x3
	.long	0x29f9
	.uleb128 0xe
	.byte	0x80
	.byte	0xb
	.byte	0x65
	.long	0x2b15
	.uleb128 0x3
	.long	.LASF1416
	.byte	0xb
	.byte	0x67
	.byte	0xd
	.long	0x24f
	.byte	0
	.uleb128 0x3
	.long	.LASF1417
	.byte	0xb
	.byte	0x68
	.byte	0xd
	.long	0x24f
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1418
	.byte	0xb
	.byte	0x69
	.byte	0xb
	.long	0x89
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1419
	.byte	0xb
	.byte	0x6a
	.byte	0xb
	.long	0x89
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1420
	.byte	0xb
	.byte	0x6b
	.byte	0xb
	.long	0x89
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1421
	.byte	0xb
	.byte	0x6c
	.byte	0xb
	.long	0x89
	.byte	0xe
	.uleb128 0x5
	.string	"tag"
	.byte	0xb
	.byte	0x6d
	.byte	0xb
	.long	0x89
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1422
	.byte	0xb
	.byte	0x70
	.byte	0xa
	.long	0x90
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1423
	.byte	0xb
	.byte	0x73
	.byte	0xd
	.long	0x2b15
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1424
	.byte	0xb
	.byte	0x76
	.byte	0xa
	.long	0x2b1a
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1425
	.byte	0xb
	.byte	0x79
	.byte	0x11
	.long	0x2a30
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1365
	.byte	0xb
	.byte	0x7c
	.byte	0xa
	.long	0x90
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1426
	.byte	0xb
	.byte	0x7f
	.byte	0xd
	.long	0x2b15
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1427
	.byte	0xb
	.byte	0x82
	.byte	0xb
	.long	0x72
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1428
	.byte	0xb
	.byte	0x84
	.byte	0xb
	.long	0x90
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1429
	.byte	0xb
	.byte	0x85
	.byte	0x15
	.long	0x2be9
	.byte	0x78
	.byte	0
	.uleb128 0x7
	.long	0x29c2
	.uleb128 0xa
	.long	0x90
	.long	0x2b2a
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.long	.LASF1430
	.byte	0x58
	.byte	0xb
	.byte	0xb3
	.long	0x2be9
	.uleb128 0x5
	.string	"v1"
	.byte	0xb
	.byte	0xb6
	.byte	0xf
	.long	0x2c98
	.byte	0
	.uleb128 0x5
	.string	"v2"
	.byte	0xb
	.byte	0xb7
	.byte	0xf
	.long	0x2c98
	.byte	0x8
	.uleb128 0x5
	.string	"dx"
	.byte	0xb
	.byte	0xba
	.byte	0xd
	.long	0x24f
	.byte	0x10
	.uleb128 0x5
	.string	"dy"
	.byte	0xb
	.byte	0xbb
	.byte	0xd
	.long	0x24f
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1349
	.byte	0xb
	.byte	0xbe
	.byte	0xb
	.long	0x89
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1421
	.byte	0xb
	.byte	0xbf
	.byte	0xb
	.long	0x89
	.byte	0x1a
	.uleb128 0x5
	.string	"tag"
	.byte	0xb
	.byte	0xc0
	.byte	0xb
	.long	0x89
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1431
	.byte	0xb
	.byte	0xc4
	.byte	0xb
	.long	0x343
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1432
	.byte	0xb
	.byte	0xc8
	.byte	0xd
	.long	0x2c9d
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1433
	.byte	0xb
	.byte	0xcb
	.byte	0x11
	.long	0x2c8c
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1434
	.byte	0xb
	.byte	0xcf
	.byte	0xf
	.long	0x2c56
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1435
	.byte	0xb
	.byte	0xd0
	.byte	0xf
	.long	0x2c56
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1365
	.byte	0xb
	.byte	0xd3
	.byte	0xa
	.long	0x90
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1427
	.byte	0xb
	.byte	0xd6
	.byte	0xb
	.long	0x72
	.byte	0x50
	.byte	0
	.uleb128 0x7
	.long	0x2bee
	.uleb128 0x7
	.long	0x2b2a
	.uleb128 0x6
	.long	.LASF1436
	.byte	0xb
	.byte	0x87
	.byte	0x3
	.long	0x2a3c
	.uleb128 0xe
	.byte	0x18
	.byte	0xb
	.byte	0x90
	.long	0x2c56
	.uleb128 0x3
	.long	.LASF1437
	.byte	0xb
	.byte	0x93
	.byte	0xd
	.long	0x24f
	.byte	0
	.uleb128 0x3
	.long	.LASF1438
	.byte	0xb
	.byte	0x96
	.byte	0xd
	.long	0x24f
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1439
	.byte	0xb
	.byte	0x9a
	.byte	0xb
	.long	0x89
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1440
	.byte	0xb
	.byte	0x9b
	.byte	0xb
	.long	0x89
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1441
	.byte	0xb
	.byte	0x9c
	.byte	0xb
	.long	0x89
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1378
	.byte	0xb
	.byte	0x9f
	.byte	0xf
	.long	0x2c56
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	0x2bf3
	.uleb128 0x6
	.long	.LASF1442
	.byte	0xb
	.byte	0xa1
	.byte	0x3
	.long	0x2bff
	.uleb128 0xc
	.long	0x6b
	.byte	0xb
	.byte	0xa9
	.byte	0x1
	.long	0x2c8c
	.uleb128 0x2
	.long	.LASF1443
	.byte	0
	.uleb128 0x2
	.long	.LASF1444
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1445
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1446
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF1447
	.byte	0xb
	.byte	0xaf
	.byte	0x3
	.long	0x2c67
	.uleb128 0x7
	.long	0x29ed
	.uleb128 0xa
	.long	0x24f
	.long	0x2cad
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF1448
	.byte	0xb
	.byte	0xd7
	.byte	0x3
	.long	0x2b2a
	.uleb128 0x6
	.long	.LASF1449
	.byte	0xb
	.byte	0xe9
	.byte	0x3
	.long	0x27a5
	.uleb128 0xe
	.byte	0x38
	.byte	0xb
	.byte	0xf0
	.long	0x2d35
	.uleb128 0x5
	.string	"v1"
	.byte	0xb
	.byte	0xf2
	.byte	0xf
	.long	0x2c98
	.byte	0
	.uleb128 0x5
	.string	"v2"
	.byte	0xb
	.byte	0xf3
	.byte	0xf
	.long	0x2c98
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1450
	.byte	0xb
	.byte	0xf5
	.byte	0xd
	.long	0x24f
	.byte	0x10
	.uleb128 0x3
	.long	.LASF68
	.byte	0xb
	.byte	0xf7
	.byte	0xd
	.long	0x25b
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1451
	.byte	0xb
	.byte	0xf9
	.byte	0xd
	.long	0x2d35
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1452
	.byte	0xb
	.byte	0xfa
	.byte	0xd
	.long	0x2d3a
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1434
	.byte	0xb
	.byte	0xff
	.byte	0xf
	.long	0x2c56
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1435
	.byte	0xb
	.value	0x100
	.byte	0xf
	.long	0x2c56
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.long	0x2c5b
	.uleb128 0x7
	.long	0x2cad
	.uleb128 0x11
	.long	.LASF1453
	.byte	0xb
	.value	0x102
	.long	0x2cc5
	.uleb128 0x17
	.byte	0x34
	.byte	0xb
	.value	0x109
	.long	0x2d9b
	.uleb128 0x15
	.string	"x"
	.value	0x10c
	.long	0x24f
	.byte	0
	.uleb128 0x15
	.string	"y"
	.value	0x10d
	.long	0x24f
	.byte	0x4
	.uleb128 0x15
	.string	"dx"
	.value	0x10e
	.long	0x24f
	.byte	0x8
	.uleb128 0x15
	.string	"dy"
	.value	0x10f
	.long	0x24f
	.byte	0xc
	.uleb128 0x4
	.long	.LASF1432
	.byte	0xb
	.value	0x112
	.byte	0xd
	.long	0x2d9b
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1454
	.byte	0xb
	.value	0x115
	.byte	0x14
	.long	0x353
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.long	0x24f
	.long	0x2db1
	.uleb128 0x9
	.long	0x43
	.byte	0x1
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.long	.LASF1455
	.byte	0xb
	.value	0x117
	.long	0x2d4b
	.uleb128 0x7
	.long	0x2d3f
	.uleb128 0xc
	.long	0x6b
	.byte	0xd
	.byte	0x3d
	.byte	0x1
	.long	0x2de1
	.uleb128 0x2
	.long	.LASF1456
	.byte	0
	.uleb128 0x2
	.long	.LASF1457
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1458
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.byte	0x18
	.byte	0xd
	.byte	0x44
	.long	0x2e1c
	.uleb128 0x3
	.long	.LASF1367
	.byte	0xd
	.byte	0x46
	.byte	0xe
	.long	0x27e3
	.byte	0
	.uleb128 0x3
	.long	.LASF1183
	.byte	0xd
	.byte	0x47
	.byte	0xa
	.long	0x90
	.byte	0x8
	.uleb128 0x5
	.string	"sx"
	.byte	0xd
	.byte	0x48
	.byte	0xd
	.long	0x24f
	.byte	0xc
	.uleb128 0x5
	.string	"sy"
	.byte	0xd
	.byte	0x49
	.byte	0xd
	.long	0x24f
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	.LASF1459
	.byte	0xd
	.byte	0x4b
	.byte	0x3
	.long	0x2de1
	.uleb128 0xc
	.long	0x6b
	.byte	0xc
	.byte	0x36
	.byte	0x1
	.long	0x2e47
	.uleb128 0x2
	.long	.LASF1460
	.byte	0
	.uleb128 0x2
	.long	.LASF1461
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1462
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.long	.LASF1463
	.byte	0xc
	.byte	0x3e
	.byte	0x3
	.long	0x2e28
	.uleb128 0xa
	.long	0x90
	.long	0x2e63
	.uleb128 0x9
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.long	0x1c6
	.long	0x2e73
	.uleb128 0x9
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.long	0x1c6
	.long	0x2e83
	.uleb128 0x9
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.long	0x2e1c
	.long	0x2e93
	.uleb128 0x9
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF1464
	.byte	0xe
	.byte	0x52
	.byte	0x10
	.long	0x2dbd
	.uleb128 0xf
	.long	.LASF1465
	.byte	0xe
	.byte	0x54
	.byte	0xd
	.long	0x90
	.uleb128 0xf
	.long	.LASF1466
	.byte	0xe
	.byte	0x55
	.byte	0x12
	.long	0x2c56
	.uleb128 0xf
	.long	.LASF1467
	.byte	0xe
	.byte	0x57
	.byte	0xd
	.long	0x90
	.uleb128 0xf
	.long	.LASF1468
	.byte	0xe
	.byte	0x58
	.byte	0x15
	.long	0x2ecf
	.uleb128 0x7
	.long	0x2cb9
	.uleb128 0xf
	.long	.LASF1469
	.byte	0xe
	.byte	0x5a
	.byte	0xd
	.long	0x90
	.uleb128 0xf
	.long	.LASF1470
	.byte	0xe
	.byte	0x5b
	.byte	0x11
	.long	0x2eec
	.uleb128 0x7
	.long	0x2db1
	.uleb128 0xf
	.long	.LASF1365
	.byte	0xf
	.byte	0x37
	.byte	0xd
	.long	0x90
	.uleb128 0x7
	.long	0x1d2
	.uleb128 0xe
	.byte	0x10
	.byte	0x10
	.byte	0x87
	.long	0x2f39
	.uleb128 0x5
	.string	"x"
	.byte	0x10
	.byte	0x89
	.byte	0xd
	.long	0x24f
	.byte	0
	.uleb128 0x5
	.string	"y"
	.byte	0x10
	.byte	0x8a
	.byte	0xd
	.long	0x24f
	.byte	0x4
	.uleb128 0x5
	.string	"dx"
	.byte	0x10
	.byte	0x8b
	.byte	0xd
	.long	0x24f
	.byte	0x8
	.uleb128 0x5
	.string	"dy"
	.byte	0x10
	.byte	0x8c
	.byte	0xd
	.long	0x24f
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.long	.LASF1471
	.byte	0x10
	.byte	0x8e
	.byte	0x3
	.long	0x2f02
	.uleb128 0xf
	.long	.LASF1472
	.byte	0x10
	.byte	0xf6
	.byte	0xf
	.long	0x2efd
	.uleb128 0x12
	.long	.LASF1473
	.byte	0x27
	.byte	0xa
	.long	0x24f
	.uleb128 0x9
	.byte	0x3
	.quad	sightzstart
	.uleb128 0x12
	.long	.LASF1474
	.byte	0x28
	.byte	0xa
	.long	0x24f
	.uleb128 0x9
	.byte	0x3
	.quad	topslope
	.uleb128 0x12
	.long	.LASF1475
	.byte	0x29
	.byte	0xa
	.long	0x24f
	.uleb128 0x9
	.byte	0x3
	.quad	bottomslope
	.uleb128 0x12
	.long	.LASF1476
	.byte	0x2b
	.byte	0xb
	.long	0x2f39
	.uleb128 0x9
	.byte	0x3
	.quad	strace
	.uleb128 0x1e
	.string	"t2x"
	.byte	0x2c
	.long	0x24f
	.uleb128 0x9
	.byte	0x3
	.quad	t2x
	.uleb128 0x1e
	.string	"t2y"
	.byte	0x2d
	.long	0x24f
	.uleb128 0x9
	.byte	0x3
	.quad	t2y
	.uleb128 0x12
	.long	.LASF1477
	.byte	0x2f
	.byte	0x6
	.long	0x9e
	.uleb128 0x9
	.byte	0x3
	.quad	sightcounts
	.uleb128 0x2b
	.long	.LASF1503
	.byte	0x11
	.byte	0x59
	.byte	0x6
	.long	0x2ff5
	.uleb128 0x10
	.long	0xae
	.uleb128 0x1b
	.byte	0
	.uleb128 0x1f
	.long	.LASF1478
	.byte	0x29
	.long	0x24f
	.long	0x300e
	.uleb128 0x10
	.long	0x24f
	.uleb128 0x10
	.long	0x24f
	.byte	0
	.uleb128 0x1f
	.long	.LASF1479
	.byte	0x28
	.long	0x24f
	.long	0x3027
	.uleb128 0x10
	.long	0x24f
	.uleb128 0x10
	.long	0x24f
	.byte	0
	.uleb128 0x20
	.long	.LASF1484
	.value	0x12c
	.byte	0x1
	.long	0x1c6
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x30aa
	.uleb128 0x21
	.string	"t1"
	.value	0x12d
	.long	0x2b15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.string	"t2"
	.value	0x12e
	.long	0x2b15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.string	"s1"
	.value	0x130
	.byte	0xa
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.string	"s2"
	.value	0x131
	.byte	0xa
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.long	.LASF1481
	.value	0x132
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.long	.LASF1482
	.value	0x133
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LASF1483
	.value	0x134
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.long	.LASF1485
	.value	0x101
	.byte	0x9
	.long	0x1c6
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x30fa
	.uleb128 0x2c
	.long	.LASF1486
	.byte	0x1
	.value	0x101
	.byte	0x1d
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.string	"bsp"
	.value	0x103
	.byte	0xd
	.long	0x2eec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LASF1487
	.value	0x104
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x22
	.long	.LASF1488
	.byte	0x87
	.byte	0x9
	.long	0x1c6
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3205
	.uleb128 0x13
	.string	"num"
	.byte	0x87
	.byte	0x1f
	.long	0x90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0xd
	.string	"seg"
	.byte	0x89
	.byte	0xd
	.long	0x2dbd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x8
	.long	.LASF1489
	.byte	0x8a
	.byte	0xe
	.long	0x2d3a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xd
	.string	"s1"
	.byte	0x8b
	.byte	0xb
	.long	0x90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0xd
	.string	"s2"
	.byte	0x8c
	.byte	0xb
	.long	0x90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x8
	.long	.LASF1490
	.byte	0x8d
	.byte	0xb
	.long	0x90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0xd
	.string	"sub"
	.byte	0x8e
	.byte	0x12
	.long	0x2ecf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x8
	.long	.LASF1491
	.byte	0x8f
	.byte	0x10
	.long	0x2c56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x8
	.long	.LASF1492
	.byte	0x90
	.byte	0x10
	.long	0x2c56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.long	.LASF1493
	.byte	0x91
	.byte	0xe
	.long	0x24f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x8
	.long	.LASF1494
	.byte	0x92
	.byte	0xe
	.long	0x24f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x8
	.long	.LASF1495
	.byte	0x93
	.byte	0x10
	.long	0x2f39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.string	"v1"
	.byte	0x94
	.byte	0x10
	.long	0x2c98
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xd
	.string	"v2"
	.byte	0x95
	.byte	0x10
	.long	0x2c98
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x8
	.long	.LASF1496
	.byte	0x96
	.byte	0xe
	.long	0x24f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x8
	.long	.LASF1497
	.byte	0x97
	.byte	0xe
	.long	0x24f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0x22
	.long	.LASF1498
	.byte	0x6d
	.byte	0x1
	.long	0x24f
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x326b
	.uleb128 0x13
	.string	"v2"
	.byte	0x6e
	.byte	0xe
	.long	0x326b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.string	"v1"
	.byte	0x6f
	.byte	0xe
	.long	0x326b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x8
	.long	.LASF1496
	.byte	0x71
	.byte	0xd
	.long	0x24f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.string	"num"
	.byte	0x72
	.byte	0xd
	.long	0x24f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"den"
	.byte	0x73
	.byte	0xd
	.long	0x24f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x7
	.long	0x2f39
	.uleb128 0x2d
	.long	.LASF1504
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.long	0x90
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.string	"x"
	.byte	0x38
	.byte	0xb
	.long	0x24f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.string	"y"
	.byte	0x39
	.byte	0xb
	.long	0x24f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF1499
	.byte	0x1
	.byte	0x3a
	.byte	0xe
	.long	0x326b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.string	"dx"
	.byte	0x3c
	.byte	0xd
	.long	0x24f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.string	"dy"
	.byte	0x3d
	.byte	0xd
	.long	0x24f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.long	.LASF1500
	.byte	0x3e
	.byte	0xd
	.long	0x24f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.long	.LASF1501
	.byte	0x3f
	.byte	0xd
	.long	0x24f
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
	.uleb128 0xe
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
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
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x26
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
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
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0x21
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
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2c
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
	.uleb128 0x2e
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
.LASF849:
	.string	"S_BSPI_RUN3"
.LASF850:
	.string	"S_BSPI_RUN4"
.LASF851:
	.string	"S_BSPI_RUN5"
.LASF852:
	.string	"S_BSPI_RUN6"
.LASF853:
	.string	"S_BSPI_RUN7"
.LASF854:
	.string	"S_BSPI_RUN8"
.LASF855:
	.string	"S_BSPI_RUN9"
.LASF139:
	.string	"SPR_YSKU"
.LASF1407:
	.string	"attacker"
.LASF502:
	.string	"S_FIRE10"
.LASF503:
	.string	"S_FIRE11"
.LASF504:
	.string	"S_FIRE12"
.LASF505:
	.string	"S_FIRE13"
.LASF506:
	.string	"S_FIRE14"
.LASF507:
	.string	"S_FIRE15"
.LASF508:
	.string	"S_FIRE16"
.LASF509:
	.string	"S_FIRE17"
.LASF510:
	.string	"S_FIRE18"
.LASF511:
	.string	"S_FIRE19"
.LASF1323:
	.string	"MT_MISC84"
.LASF1256:
	.string	"MT_MISC20"
.LASF1070:
	.string	"S_MEGA2"
.LASF1071:
	.string	"S_MEGA3"
.LASF1072:
	.string	"S_MEGA4"
.LASF1260:
	.string	"MT_MISC24"
.LASF1261:
	.string	"MT_MISC25"
.LASF1263:
	.string	"MT_MISC26"
.LASF1264:
	.string	"MT_MISC27"
.LASF1265:
	.string	"MT_MISC28"
.LASF1268:
	.string	"MT_MISC29"
.LASF701:
	.string	"S_SARG_PAIN2"
.LASF1372:
	.string	"threshold"
.LASF18:
	.string	"wp_pistol"
.LASF180:
	.string	"SPR_COL1"
.LASF181:
	.string	"SPR_COL2"
.LASF182:
	.string	"SPR_COL3"
.LASF183:
	.string	"SPR_COL4"
.LASF192:
	.string	"SPR_COL5"
.LASF186:
	.string	"SPR_COL6"
.LASF512:
	.string	"S_FIRE20"
.LASF513:
	.string	"S_FIRE21"
.LASF514:
	.string	"S_FIRE22"
.LASF515:
	.string	"S_FIRE23"
.LASF516:
	.string	"S_FIRE24"
.LASF166:
	.string	"SPR_COLU"
.LASF518:
	.string	"S_FIRE26"
.LASF519:
	.string	"S_FIRE27"
.LASF520:
	.string	"S_FIRE28"
.LASF521:
	.string	"S_FIRE29"
.LASF1269:
	.string	"MT_MISC30"
.LASF1184:
	.string	"action"
.LASF1271:
	.string	"MT_MISC32"
.LASF1272:
	.string	"MT_MISC33"
.LASF863:
	.string	"S_BSPI_PAIN"
.LASF1274:
	.string	"MT_MISC35"
.LASF335:
	.string	"S_BFGEXP"
.LASF31:
	.string	"am_misl"
.LASF1277:
	.string	"MT_MISC38"
.LASF1278:
	.string	"MT_MISC39"
.LASF1418:
	.string	"floorpic"
.LASF865:
	.string	"S_BSPI_DIE1"
.LASF1458:
	.string	"NUMPSPRITES"
.LASF1479:
	.string	"FixedMul"
.LASF870:
	.string	"S_BSPI_DIE6"
.LASF1445:
	.string	"ST_POSITIVE"
.LASF1383:
	.string	"viewz"
.LASF1439:
	.string	"toptexture"
.LASF761:
	.string	"S_BOSS_RAISE1"
.LASF762:
	.string	"S_BOSS_RAISE2"
.LASF1203:
	.string	"MT_HEAD"
.LASF763:
	.string	"S_BOSS_RAISE3"
.LASF522:
	.string	"S_FIRE30"
.LASF667:
	.string	"S_TROO_PAIN"
.LASF956:
	.string	"S_SSWV_DIE1"
.LASF766:
	.string	"S_BOSS_RAISE6"
.LASF958:
	.string	"S_SSWV_DIE3"
.LASF959:
	.string	"S_SSWV_DIE4"
.LASF960:
	.string	"S_SSWV_DIE5"
.LASF134:
	.string	"SPR_BKEY"
.LASF778:
	.string	"S_BOS2_ATK1"
.LASF779:
	.string	"S_BOS2_ATK2"
.LASF780:
	.string	"S_BOS2_ATK3"
.LASF168:
	.string	"SPR_GOR1"
.LASF175:
	.string	"SPR_GOR2"
.LASF176:
	.string	"SPR_GOR3"
.LASF177:
	.string	"SPR_GOR4"
.LASF178:
	.string	"SPR_GOR5"
.LASF1281:
	.string	"MT_MISC42"
.LASF1282:
	.string	"MT_MISC43"
.LASF535:
	.string	"S_SKEL_RUN1"
.LASF536:
	.string	"S_SKEL_RUN2"
.LASF537:
	.string	"S_SKEL_RUN3"
.LASF538:
	.string	"S_SKEL_RUN4"
.LASF539:
	.string	"S_SKEL_RUN5"
.LASF540:
	.string	"S_SKEL_RUN6"
.LASF541:
	.string	"S_SKEL_RUN7"
.LASF542:
	.string	"S_SKEL_RUN8"
.LASF543:
	.string	"S_SKEL_RUN9"
.LASF21:
	.string	"wp_missile"
.LASF1021:
	.string	"S_BEXP2"
.LASF1331:
	.string	"seestate"
.LASF716:
	.string	"S_HEAD_ATK1"
.LASF717:
	.string	"S_HEAD_ATK2"
.LASF718:
	.string	"S_HEAD_ATK3"
.LASF1433:
	.string	"slopetype"
.LASF970:
	.string	"S_SSWV_RAISE1"
.LASF971:
	.string	"S_SSWV_RAISE2"
.LASF972:
	.string	"S_SSWV_RAISE3"
.LASF973:
	.string	"S_SSWV_RAISE4"
.LASF974:
	.string	"S_SSWV_RAISE5"
.LASF68:
	.string	"angle"
.LASF1482:
	.string	"bytenum"
.LASF1198:
	.string	"MT_FATSHOT"
.LASF154:
	.string	"SPR_CELL"
.LASF155:
	.string	"SPR_CELP"
.LASF1136:
	.string	"S_HEARTCOL"
.LASF1379:
	.string	"numlines"
.LASF1053:
	.string	"S_MEDI"
.LASF1060:
	.string	"S_PINV"
.LASF1247:
	.string	"MT_INS"
.LASF1290:
	.string	"MT_MISC51"
.LASF1291:
	.string	"MT_MISC52"
.LASF1245:
	.string	"MT_INV"
.LASF1293:
	.string	"MT_MISC54"
.LASF1150:
	.string	"S_BTORCHSHRT"
.LASF271:
	.string	"S_MISSILEUP"
.LASF1296:
	.string	"MT_MISC57"
.LASF1297:
	.string	"MT_MISC58"
.LASF1298:
	.string	"MT_MISC59"
.LASF448:
	.string	"S_SPOS_RAISE1"
.LASF1472:
	.string	"rejectmatrix"
.LASF242:
	.string	"S_SGUNFLASH1"
.LASF243:
	.string	"S_SGUNFLASH2"
.LASF790:
	.string	"S_BOS2_RAISE1"
.LASF791:
	.string	"S_BOS2_RAISE2"
.LASF792:
	.string	"S_BOS2_RAISE3"
.LASF793:
	.string	"S_BOS2_RAISE4"
.LASF794:
	.string	"S_BOS2_RAISE5"
.LASF795:
	.string	"S_BOS2_RAISE6"
.LASF796:
	.string	"S_BOS2_RAISE7"
.LASF555:
	.string	"S_SKEL_PAIN"
.LASF1042:
	.string	"S_RKEY"
.LASF65:
	.string	"next"
.LASF224:
	.string	"S_PISTOLUP"
.LASF910:
	.string	"S_CYBER_DIE8"
.LASF1438:
	.string	"rowoffset"
.LASF1299:
	.string	"MT_MISC60"
.LASF1300:
	.string	"MT_MISC61"
.LASF1301:
	.string	"MT_MISC62"
.LASF1302:
	.string	"MT_MISC63"
.LASF1303:
	.string	"MT_MISC64"
.LASF1304:
	.string	"MT_MISC65"
.LASF1305:
	.string	"MT_MISC66"
.LASF1306:
	.string	"MT_MISC67"
.LASF339:
	.string	"S_EXPLODE1"
.LASF340:
	.string	"S_EXPLODE2"
.LASF341:
	.string	"S_EXPLODE3"
.LASF530:
	.string	"S_TRACEEXP1"
.LASF531:
	.string	"S_TRACEEXP2"
.LASF532:
	.string	"S_TRACEEXP3"
.LASF918:
	.string	"S_PAIN_RUN5"
.LASF1020:
	.string	"S_BEXP"
.LASF919:
	.string	"S_PAIN_RUN6"
.LASF1408:
	.string	"extralight"
.LASF1463:
	.string	"playerstate_t"
.LASF1137:
	.string	"S_HEARTCOL2"
.LASF316:
	.string	"S_RBALLX1"
.LASF1345:
	.string	"height"
.LASF1230:
	.string	"MT_TELEPORTMAN"
.LASF1496:
	.string	"frac"
.LASF1309:
	.string	"MT_MISC70"
.LASF99:
	.string	"SPR_IFOG"
.LASF1311:
	.string	"MT_MISC72"
.LASF1312:
	.string	"MT_MISC73"
.LASF1313:
	.string	"MT_MISC74"
.LASF1314:
	.string	"MT_MISC75"
.LASF1315:
	.string	"MT_MISC76"
.LASF1143:
	.string	"S_GREENTORCH2"
.LASF1144:
	.string	"S_GREENTORCH3"
.LASF1145:
	.string	"S_GREENTORCH4"
.LASF984:
	.string	"S_COMMKEEN9"
.LASF633:
	.string	"S_CPOS_PAIN2"
.LASF856:
	.string	"S_BSPI_RUN10"
.LASF857:
	.string	"S_BSPI_RUN11"
.LASF858:
	.string	"S_BSPI_RUN12"
.LASF940:
	.string	"S_SSWV_RUN1"
.LASF941:
	.string	"S_SSWV_RUN2"
.LASF942:
	.string	"S_SSWV_RUN3"
.LASF943:
	.string	"S_SSWV_RUN4"
.LASF944:
	.string	"S_SSWV_RUN5"
.LASF945:
	.string	"S_SSWV_RUN6"
.LASF946:
	.string	"S_SSWV_RUN7"
.LASF947:
	.string	"S_SSWV_RUN8"
.LASF1125:
	.string	"S_SKULLCOL"
.LASF1197:
	.string	"MT_FATSO"
.LASF669:
	.string	"S_TROO_DIE1"
.LASF670:
	.string	"S_TROO_DIE2"
.LASF671:
	.string	"S_TROO_DIE3"
.LASF672:
	.string	"S_TROO_DIE4"
.LASF673:
	.string	"S_TROO_DIE5"
.LASF1050:
	.string	"S_YSKULL"
.LASF1051:
	.string	"S_YSKULL2"
.LASF152:
	.string	"SPR_ROCK"
.LASF1222:
	.string	"MT_ROCKET"
.LASF1320:
	.string	"MT_MISC81"
.LASF1321:
	.string	"MT_MISC82"
.LASF1322:
	.string	"MT_MISC83"
.LASF628:
	.string	"S_CPOS_ATK1"
.LASF629:
	.string	"S_CPOS_ATK2"
.LASF630:
	.string	"S_CPOS_ATK3"
.LASF631:
	.string	"S_CPOS_ATK4"
.LASF1189:
	.string	"MT_PLAYER"
.LASF164:
	.string	"SPR_SHOT"
.LASF357:
	.string	"S_IFOG2"
.LASF358:
	.string	"S_IFOG3"
.LASF359:
	.string	"S_IFOG4"
.LASF360:
	.string	"S_IFOG5"
.LASF93:
	.string	"SPR_PLSE"
.LASF85:
	.string	"SPR_PLSF"
.LASF84:
	.string	"SPR_PLSG"
.LASF753:
	.string	"S_BOSS_PAIN2"
.LASF453:
	.string	"S_VILE_STND"
.LASF981:
	.string	"S_COMMKEEN6"
.LASF982:
	.string	"S_COMMKEEN7"
.LASF1465:
	.string	"numsectors"
.LASF983:
	.string	"S_COMMKEEN8"
.LASF92:
	.string	"SPR_PLSS"
.LASF832:
	.string	"S_SPID_PAIN2"
.LASF1346:
	.string	"mass"
.LASF205:
	.string	"SPR_POB1"
.LASF206:
	.string	"SPR_POB2"
.LASF1054:
	.string	"S_SOUL"
.LASF1064:
	.string	"S_PSTR"
.LASF896:
	.string	"S_CYBER_ATK1"
.LASF897:
	.string	"S_CYBER_ATK2"
.LASF898:
	.string	"S_CYBER_ATK3"
.LASF899:
	.string	"S_CYBER_ATK4"
.LASF900:
	.string	"S_CYBER_ATK5"
.LASF901:
	.string	"S_CYBER_ATK6"
.LASF1091:
	.string	"S_BFUG"
.LASF131:
	.string	"SPR_FCAN"
.LASF1448:
	.string	"line_t"
.LASF574:
	.string	"S_FATT_STND"
.LASF1011:
	.string	"S_BRAINEXPLODE1"
.LASF1012:
	.string	"S_BRAINEXPLODE2"
.LASF1013:
	.string	"S_BRAINEXPLODE3"
.LASF295:
	.string	"S_BFGUP"
.LASF136:
	.string	"SPR_YKEY"
.LASF682:
	.string	"S_TROO_RAISE1"
.LASF683:
	.string	"S_TROO_RAISE2"
.LASF684:
	.string	"S_TROO_RAISE3"
.LASF685:
	.string	"S_TROO_RAISE4"
.LASF686:
	.string	"S_TROO_RAISE5"
.LASF1095:
	.string	"S_PLAS"
.LASF977:
	.string	"S_COMMKEEN2"
.LASF978:
	.string	"S_COMMKEEN3"
.LASF979:
	.string	"S_COMMKEEN4"
.LASF980:
	.string	"S_COMMKEEN5"
.LASF361:
	.string	"S_PLAY"
.LASF927:
	.string	"S_PAIN_DIE2"
.LASF928:
	.string	"S_PAIN_DIE3"
.LASF929:
	.string	"S_PAIN_DIE4"
.LASF930:
	.string	"S_PAIN_DIE5"
.LASF931:
	.string	"S_PAIN_DIE6"
.LASF1200:
	.string	"MT_TROOP"
.LASF482:
	.string	"S_VILE_PAIN2"
.LASF1475:
	.string	"bottomslope"
.LASF610:
	.string	"S_FATT_RAISE1"
.LASF22:
	.string	"wp_plasma"
.LASF612:
	.string	"S_FATT_RAISE3"
.LASF613:
	.string	"S_FATT_RAISE4"
.LASF614:
	.string	"S_FATT_RAISE5"
.LASF615:
	.string	"S_FATT_RAISE6"
.LASF616:
	.string	"S_FATT_RAISE7"
.LASF617:
	.string	"S_FATT_RAISE8"
.LASF326:
	.string	"S_ROCKET"
.LASF1221:
	.string	"MT_HEADSHOT"
.LASF1428:
	.string	"linecount"
.LASF1431:
	.string	"sidenum"
.LASF1488:
	.string	"P_CrossSubsector"
.LASF879:
	.string	"S_ARACH_PLAZ"
.LASF1118:
	.string	"S_STALAGTITE"
.LASF720:
	.string	"S_HEAD_PAIN2"
.LASF721:
	.string	"S_HEAD_PAIN3"
.LASF45:
	.string	"byte"
.LASF15:
	.string	"it_redskull"
.LASF1228:
	.string	"MT_TFOG"
.LASF429:
	.string	"S_SPOS_ATK1"
.LASF430:
	.string	"S_SPOS_ATK2"
.LASF431:
	.string	"S_SPOS_ATK3"
.LASF366:
	.string	"S_PLAY_ATK1"
.LASF367:
	.string	"S_PLAY_ATK2"
.LASF119:
	.string	"SPR_APLS"
.LASF1400:
	.string	"refire"
.LASF1147:
	.string	"S_REDTORCH2"
.LASF1148:
	.string	"S_REDTORCH3"
.LASF1149:
	.string	"S_REDTORCH4"
.LASF656:
	.string	"S_TROO_RUN1"
.LASF657:
	.string	"S_TROO_RUN2"
.LASF658:
	.string	"S_TROO_RUN3"
.LASF659:
	.string	"S_TROO_RUN4"
.LASF660:
	.string	"S_TROO_RUN5"
.LASF661:
	.string	"S_TROO_RUN6"
.LASF662:
	.string	"S_TROO_RUN7"
.LASF663:
	.string	"S_TROO_RUN8"
.LASF110:
	.string	"SPR_CPOS"
.LASF571:
	.string	"S_FATSHOTX1"
.LASF572:
	.string	"S_FATSHOTX2"
.LASF573:
	.string	"S_FATSHOTX3"
.LASF651:
	.string	"S_CPOS_RAISE5"
.LASF652:
	.string	"S_CPOS_RAISE6"
.LASF653:
	.string	"S_CPOS_RAISE7"
.LASF17:
	.string	"wp_fist"
.LASF1339:
	.string	"missilestate"
.LASF140:
	.string	"SPR_STIM"
.LASF687:
	.string	"S_SARG_STND"
.LASF912:
	.string	"S_CYBER_DIE10"
.LASF90:
	.string	"SPR_BAL1"
.LASF91:
	.string	"SPR_BAL2"
.LASF113:
	.string	"SPR_BAL7"
.LASF1366:
	.string	"info"
.LASF1106:
	.string	"S_HEADSONSTICK"
.LASF1361:
	.string	"ceilingz"
.LASF563:
	.string	"S_SKEL_RAISE1"
.LASF78:
	.string	"SPR_SHT2"
.LASF217:
	.string	"S_PUNCH1"
.LASF218:
	.string	"S_PUNCH2"
.LASF219:
	.string	"S_PUNCH3"
.LASF220:
	.string	"S_PUNCH4"
.LASF221:
	.string	"S_PUNCH5"
.LASF580:
	.string	"S_FATT_RUN5"
.LASF216:
	.string	"S_PUNCHUP"
.LASF833:
	.string	"S_SPID_DIE1"
.LASF584:
	.string	"S_FATT_RUN9"
.LASF835:
	.string	"S_SPID_DIE3"
.LASF836:
	.string	"S_SPID_DIE4"
.LASF77:
	.string	"SPR_SHTF"
.LASF73:
	.string	"SPR_SHTG"
.LASF355:
	.string	"S_IFOG01"
.LASF356:
	.string	"S_IFOG02"
.LASF841:
	.string	"S_SPID_DIE9"
.LASF1083:
	.string	"S_AMMO"
.LASF32:
	.string	"NUMAMMO"
.LASF914:
	.string	"S_PAIN_RUN1"
.LASF915:
	.string	"S_PAIN_RUN2"
.LASF916:
	.string	"S_PAIN_RUN3"
.LASF917:
	.string	"S_PAIN_RUN4"
.LASF199:
	.string	"SPR_HDB1"
.LASF200:
	.string	"SPR_HDB2"
.LASF201:
	.string	"SPR_HDB3"
.LASF202:
	.string	"SPR_HDB4"
.LASF203:
	.string	"SPR_HDB5"
.LASF204:
	.string	"SPR_HDB6"
.LASF1190:
	.string	"MT_POSSESSED"
.LASF249:
	.string	"S_DSGUN3"
.LASF250:
	.string	"S_DSGUN4"
.LASF1437:
	.string	"textureoffset"
.LASF69:
	.string	"type"
.LASF269:
	.string	"S_MISSILE"
.LASF1493:
	.string	"opentop"
.LASF1471:
	.string	"divline_t"
.LASF1097:
	.string	"S_SHOT2"
.LASF1470:
	.string	"nodes"
.LASF1164:
	.string	"S_HANGTLOOKDN"
.LASF1369:
	.string	"movedir"
.LASF641:
	.string	"S_CPOS_XDIE1"
.LASF62:
	.string	"actionf_t"
.LASF57:
	.string	"actionf_v"
.LASF160:
	.string	"SPR_MGUN"
.LASF1202:
	.string	"MT_SHADOWS"
.LASF544:
	.string	"S_SKEL_RUN10"
.LASF545:
	.string	"S_SKEL_RUN11"
.LASF546:
	.string	"S_SKEL_RUN12"
.LASF212:
	.string	"S_NULL"
.LASF754:
	.string	"S_BOSS_DIE1"
.LASF755:
	.string	"S_BOSS_DIE2"
.LASF756:
	.string	"S_BOSS_DIE3"
.LASF757:
	.string	"S_BOSS_DIE4"
.LASF758:
	.string	"S_BOSS_DIE5"
.LASF759:
	.string	"S_BOSS_DIE6"
.LASF760:
	.string	"S_BOSS_DIE7"
.LASF924:
	.string	"S_PAIN_PAIN"
.LASF293:
	.string	"S_BFG"
.LASF1337:
	.string	"painsound"
.LASF1421:
	.string	"special"
.LASF939:
	.string	"S_SSWV_STND2"
.LASF161:
	.string	"SPR_CSAW"
.LASF1074:
	.string	"S_PMAP"
.LASF1080:
	.string	"S_PVIS"
.LASF294:
	.string	"S_BFGDOWN"
.LASF1214:
	.string	"MT_BOSSBRAIN"
.LASF107:
	.string	"SPR_SKEL"
.LASF289:
	.string	"S_PLASMA1"
.LASF290:
	.string	"S_PLASMA2"
.LASF1154:
	.string	"S_GTORCHSHRT"
.LASF1380:
	.string	"firstline"
.LASF1088:
	.string	"S_SHEL"
.LASF845:
	.string	"S_BSPI_STND2"
.LASF5:
	.string	"unsigned char"
.LASF105:
	.string	"SPR_FATB"
.LASF210:
	.string	"NUMSPRITES"
.LASF328:
	.string	"S_BFGSHOT2"
.LASF109:
	.string	"SPR_FATT"
.LASF1055:
	.string	"S_SOUL2"
.LASF1056:
	.string	"S_SOUL3"
.LASF1057:
	.string	"S_SOUL4"
.LASF1058:
	.string	"S_SOUL5"
.LASF1059:
	.string	"S_SOUL6"
.LASF815:
	.string	"S_SPID_RUN1"
.LASF816:
	.string	"S_SPID_RUN2"
.LASF817:
	.string	"S_SPID_RUN3"
.LASF818:
	.string	"S_SPID_RUN4"
.LASF819:
	.string	"S_SPID_RUN5"
.LASF820:
	.string	"S_SPID_RUN6"
.LASF821:
	.string	"S_SPID_RUN7"
.LASF822:
	.string	"S_SPID_RUN8"
.LASF53:
	.string	"float"
.LASF1022:
	.string	"S_BEXP3"
.LASF1023:
	.string	"S_BEXP4"
.LASF1111:
	.string	"S_DEADSTICK"
.LASF1455:
	.string	"node_t"
.LASF1409:
	.string	"fixedcolormap"
.LASF1394:
	.string	"weaponowned"
.LASF1231:
	.string	"MT_EXTRABFG"
.LASF401:
	.string	"S_POSS_DIE1"
.LASF402:
	.string	"S_POSS_DIE2"
.LASF403:
	.string	"S_POSS_DIE3"
.LASF404:
	.string	"S_POSS_DIE4"
.LASF405:
	.string	"S_POSS_DIE5"
.LASF1504:
	.string	"P_DivlineSide"
.LASF231:
	.string	"S_SGUNDOWN"
.LASF80:
	.string	"SPR_CHGF"
.LASF79:
	.string	"SPR_CHGG"
.LASF624:
	.string	"S_CPOS_RUN5"
.LASF883:
	.string	"S_ARACH_PLEX3"
.LASF625:
	.string	"S_CPOS_RUN6"
.LASF885:
	.string	"S_ARACH_PLEX5"
.LASF626:
	.string	"S_CPOS_RUN7"
.LASF1371:
	.string	"target"
.LASF190:
	.string	"SPR_CEYE"
.LASF1443:
	.string	"ST_HORIZONTAL"
.LASF932:
	.string	"S_PAIN_RAISE1"
.LASF933:
	.string	"S_PAIN_RAISE2"
.LASF934:
	.string	"S_PAIN_RAISE3"
.LASF935:
	.string	"S_PAIN_RAISE4"
.LASF936:
	.string	"S_PAIN_RAISE5"
.LASF569:
	.string	"S_FATSHOT1"
.LASF570:
	.string	"S_FATSHOT2"
.LASF1444:
	.string	"ST_VERTICAL"
.LASF147:
	.string	"SPR_SUIT"
.LASF797:
	.string	"S_SKULL_STND"
.LASF831:
	.string	"S_SPID_PAIN"
.LASF1326:
	.string	"NUMMOBJTYPES"
.LASF129:
	.string	"SPR_BAR1"
.LASF1442:
	.string	"side_t"
.LASF244:
	.string	"S_DSGUN"
.LASF1123:
	.string	"S_CANDLESTIK"
.LASF38:
	.string	"pw_allmap"
.LASF1179:
	.string	"NUMSTATES"
.LASF823:
	.string	"S_SPID_RUN9"
.LASF309:
	.string	"S_TBALL1"
.LASF310:
	.string	"S_TBALL2"
.LASF523:
	.string	"S_SMOKE1"
.LASF524:
	.string	"S_SMOKE2"
.LASF525:
	.string	"S_SMOKE3"
.LASF526:
	.string	"S_SMOKE4"
.LASF527:
	.string	"S_SMOKE5"
.LASF746:
	.string	"S_BOSS_RUN6"
.LASF747:
	.string	"S_BOSS_RUN7"
.LASF748:
	.string	"S_BOSS_RUN8"
.LASF112:
	.string	"SPR_HEAD"
.LASF1358:
	.string	"bprev"
.LASF173:
	.string	"SPR_POL1"
.LASF169:
	.string	"SPR_POL2"
.LASF172:
	.string	"SPR_POL3"
.LASF171:
	.string	"SPR_POL4"
.LASF170:
	.string	"SPR_POL5"
.LASF174:
	.string	"SPR_POL6"
.LASF1018:
	.string	"S_BAR1"
.LASF1232:
	.string	"MT_MISC0"
.LASF1104:
	.string	"S_DEADTORSO"
.LASF246:
	.string	"S_DSGUNUP"
.LASF1329:
	.string	"spawnstate"
.LASF655:
	.string	"S_TROO_STND2"
.LASF1175:
	.string	"S_TECH2LAMP"
.LASF1218:
	.string	"MT_SPAWNFIRE"
.LASF1193:
	.string	"MT_FIRE"
.LASF1185:
	.string	"nextstate"
.LASF1499:
	.string	"node"
.LASF1469:
	.string	"numnodes"
.LASF752:
	.string	"S_BOSS_PAIN"
.LASF123:
	.string	"SPR_SSWV"
.LASF314:
	.string	"S_RBALL1"
.LASF315:
	.string	"S_RBALL2"
.LASF1119:
	.string	"S_TALLGRNCOL"
.LASF1374:
	.string	"lastlook"
.LASF1440:
	.string	"bottomtexture"
.LASF1108:
	.string	"S_HEADONASTICK"
.LASF388:
	.string	"S_POSS_RUN1"
.LASF330:
	.string	"S_BFGLAND2"
.LASF331:
	.string	"S_BFGLAND3"
.LASF332:
	.string	"S_BFGLAND4"
.LASF333:
	.string	"S_BFGLAND5"
.LASF334:
	.string	"S_BFGLAND6"
.LASF394:
	.string	"S_POSS_RUN7"
.LASF395:
	.string	"S_POSS_RUN8"
.LASF377:
	.string	"S_PLAY_XDIE1"
.LASF378:
	.string	"S_PLAY_XDIE2"
.LASF379:
	.string	"S_PLAY_XDIE3"
.LASF380:
	.string	"S_PLAY_XDIE4"
.LASF381:
	.string	"S_PLAY_XDIE5"
.LASF382:
	.string	"S_PLAY_XDIE6"
.LASF383:
	.string	"S_PLAY_XDIE7"
.LASF384:
	.string	"S_PLAY_XDIE8"
.LASF385:
	.string	"S_PLAY_XDIE9"
.LASF783:
	.string	"S_BOS2_DIE1"
.LASF784:
	.string	"S_BOS2_DIE2"
.LASF785:
	.string	"S_BOS2_DIE3"
.LASF786:
	.string	"S_BOS2_DIE4"
.LASF787:
	.string	"S_BOS2_DIE5"
.LASF788:
	.string	"S_BOS2_DIE6"
.LASF789:
	.string	"S_BOS2_DIE7"
.LASF1349:
	.string	"flags"
.LASF709:
	.string	"S_SARG_RAISE2"
.LASF710:
	.string	"S_SARG_RAISE3"
.LASF353:
	.string	"S_TFOG10"
.LASF711:
	.string	"S_SARG_RAISE4"
.LASF406:
	.string	"S_POSS_XDIE1"
.LASF407:
	.string	"S_POSS_XDIE2"
.LASF408:
	.string	"S_POSS_XDIE3"
.LASF409:
	.string	"S_POSS_XDIE4"
.LASF410:
	.string	"S_POSS_XDIE5"
.LASF411:
	.string	"S_POSS_XDIE6"
.LASF412:
	.string	"S_POSS_XDIE7"
.LASF28:
	.string	"am_clip"
.LASF414:
	.string	"S_POSS_XDIE9"
.LASF1107:
	.string	"S_GIBS"
.LASF722:
	.string	"S_HEAD_DIE1"
.LASF723:
	.string	"S_HEAD_DIE2"
.LASF724:
	.string	"S_HEAD_DIE3"
.LASF725:
	.string	"S_HEAD_DIE4"
.LASF726:
	.string	"S_HEAD_DIE5"
.LASF727:
	.string	"S_HEAD_DIE6"
.LASF575:
	.string	"S_FATT_STND2"
.LASF1098:
	.string	"S_COLU"
.LASF225:
	.string	"S_PISTOL1"
.LASF226:
	.string	"S_PISTOL2"
.LASF227:
	.string	"S_PISTOL3"
.LASF228:
	.string	"S_PISTOL4"
.LASF564:
	.string	"S_SKEL_RAISE2"
.LASF565:
	.string	"S_SKEL_RAISE3"
.LASF566:
	.string	"S_SKEL_RAISE4"
.LASF567:
	.string	"S_SKEL_RAISE5"
.LASF568:
	.string	"S_SKEL_RAISE6"
.LASF1127:
	.string	"S_BIGTREE"
.LASF1446:
	.string	"ST_NEGATIVE"
.LASF1501:
	.string	"right"
.LASF1037:
	.string	"S_BON2C"
.LASF1038:
	.string	"S_BON2D"
.LASF343:
	.string	"S_TFOG01"
.LASF344:
	.string	"S_TFOG02"
.LASF162:
	.string	"SPR_LAUN"
.LASF399:
	.string	"S_POSS_PAIN"
.LASF734:
	.string	"S_BRBALL1"
.LASF735:
	.string	"S_BRBALL2"
.LASF1196:
	.string	"MT_SMOKE"
.LASF1210:
	.string	"MT_CYBORG"
.LASF1347:
	.string	"damage"
.LASF439:
	.string	"S_SPOS_XDIE1"
.LASF440:
	.string	"S_SPOS_XDIE2"
.LASF441:
	.string	"S_SPOS_XDIE3"
.LASF442:
	.string	"S_SPOS_XDIE4"
.LASF443:
	.string	"S_SPOS_XDIE5"
.LASF444:
	.string	"S_SPOS_XDIE6"
.LASF445:
	.string	"S_SPOS_XDIE7"
.LASF446:
	.string	"S_SPOS_XDIE8"
.LASF447:
	.string	"S_SPOS_XDIE9"
.LASF1353:
	.string	"mobj_s"
.LASF1413:
	.string	"mobj_t"
.LASF1040:
	.string	"S_BKEY"
.LASF36:
	.string	"pw_invisibility"
.LASF127:
	.string	"SPR_ARM1"
.LASF128:
	.string	"SPR_ARM2"
.LASF1192:
	.string	"MT_VILE"
.LASF1491:
	.string	"front"
.LASF13:
	.string	"it_blueskull"
.LASF1425:
	.string	"soundorg"
.LASF287:
	.string	"S_PLASMADOWN"
.LASF599:
	.string	"S_FATT_PAIN2"
.LASF997:
	.string	"S_BRAINEYESEE"
.LASF1447:
	.string	"slopetype_t"
.LASF534:
	.string	"S_SKEL_STND2"
.LASF887:
	.string	"S_CYBER_STND2"
.LASF1188:
	.string	"state_t"
.LASF731:
	.string	"S_HEAD_RAISE4"
.LASF957:
	.string	"S_SSWV_DIE2"
.LASF413:
	.string	"S_POSS_XDIE8"
.LASF1087:
	.string	"S_CELP"
.LASF1129:
	.string	"S_EVILEYE"
.LASF1477:
	.string	"sightcounts"
.LASF1155:
	.string	"S_GTORCHSHRT2"
.LASF1156:
	.string	"S_GTORCHSHRT3"
.LASF1157:
	.string	"S_GTORCHSHRT4"
.LASF1384:
	.string	"viewheight"
.LASF1357:
	.string	"bnext"
.LASF588:
	.string	"S_FATT_ATK1"
.LASF121:
	.string	"SPR_CYBR"
.LASF589:
	.string	"S_FATT_ATK2"
.LASF492:
	.string	"S_VILE_DIE10"
.LASF82:
	.string	"SPR_MISF"
.LASF81:
	.string	"SPR_MISG"
.LASF94:
	.string	"SPR_MISL"
.LASF1046:
	.string	"S_BSKULL"
.LASF125:
	.string	"SPR_BBRN"
.LASF467:
	.string	"S_VILE_ATK1"
.LASF468:
	.string	"S_VILE_ATK2"
.LASF469:
	.string	"S_VILE_ATK3"
.LASF470:
	.string	"S_VILE_ATK4"
.LASF471:
	.string	"S_VILE_ATK5"
.LASF472:
	.string	"S_VILE_ATK6"
.LASF473:
	.string	"S_VILE_ATK7"
.LASF214:
	.string	"S_PUNCH"
.LASF475:
	.string	"S_VILE_ATK9"
.LASF196:
	.string	"SPR_SMBT"
.LASF770:
	.string	"S_BOS2_RUN1"
.LASF771:
	.string	"S_BOS2_RUN2"
.LASF772:
	.string	"S_BOS2_RUN3"
.LASF773:
	.string	"S_BOS2_RUN4"
.LASF774:
	.string	"S_BOS2_RUN5"
.LASF775:
	.string	"S_BOS2_RUN6"
.LASF776:
	.string	"S_BOS2_RUN7"
.LASF777:
	.string	"S_BOS2_RUN8"
.LASF1420:
	.string	"lightlevel"
.LASF187:
	.string	"SPR_TRE1"
.LASF188:
	.string	"SPR_TRE2"
.LASF844:
	.string	"S_BSPI_STND"
.LASF1338:
	.string	"meleestate"
.LASF1395:
	.string	"ammo"
.LASF634:
	.string	"S_CPOS_DIE1"
.LASF195:
	.string	"SPR_TRED"
.LASF88:
	.string	"SPR_BLUD"
.LASF590:
	.string	"S_FATT_ATK3"
.LASF591:
	.string	"S_FATT_ATK4"
.LASF592:
	.string	"S_FATT_ATK5"
.LASF593:
	.string	"S_FATT_ATK6"
.LASF594:
	.string	"S_FATT_ATK7"
.LASF595:
	.string	"S_FATT_ATK8"
.LASF596:
	.string	"S_FATT_ATK9"
.LASF98:
	.string	"SPR_TFOG"
.LASF302:
	.string	"S_BLOOD1"
.LASF303:
	.string	"S_BLOOD2"
.LASF304:
	.string	"S_BLOOD3"
.LASF1186:
	.string	"misc1"
.LASF1187:
	.string	"misc2"
.LASF48:
	.string	"angleturn"
.LASF1094:
	.string	"S_LAUN"
.LASF354:
	.string	"S_IFOG"
.LASF101:
	.string	"SPR_POSS"
.LASF106:
	.string	"SPR_FBXP"
.LASF903:
	.string	"S_CYBER_DIE1"
.LASF904:
	.string	"S_CYBER_DIE2"
.LASF905:
	.string	"S_CYBER_DIE3"
.LASF906:
	.string	"S_CYBER_DIE4"
.LASF907:
	.string	"S_CYBER_DIE5"
.LASF908:
	.string	"S_CYBER_DIE6"
.LASF909:
	.string	"S_CYBER_DIE7"
.LASF781:
	.string	"S_BOS2_PAIN"
.LASF911:
	.string	"S_CYBER_DIE9"
.LASF1375:
	.string	"spawnpoint"
.LASF1181:
	.string	"sprite"
.LASF1259:
	.string	"MT_MISC23"
.LASF1124:
	.string	"S_CANDELABRA"
.LASF464:
	.string	"S_VILE_RUN10"
.LASF465:
	.string	"S_VILE_RUN11"
.LASF466:
	.string	"S_VILE_RUN12"
.LASF1084:
	.string	"S_ROCK"
.LASF233:
	.string	"S_SGUN1"
.LASF234:
	.string	"S_SGUN2"
.LASF235:
	.string	"S_SGUN3"
.LASF236:
	.string	"S_SGUN4"
.LASF237:
	.string	"S_SGUN5"
.LASF238:
	.string	"S_SGUN6"
.LASF239:
	.string	"S_SGUN7"
.LASF240:
	.string	"S_SGUN8"
.LASF241:
	.string	"S_SGUN9"
.LASF1328:
	.string	"doomednum"
.LASF230:
	.string	"S_SGUN"
.LASF1120:
	.string	"S_SHRTGRNCOL"
.LASF805:
	.string	"S_SKULL_PAIN"
.LASF1217:
	.string	"MT_SPAWNSHOT"
.LASF529:
	.string	"S_TRACER2"
.LASF1128:
	.string	"S_TECHPILLAR"
.LASF533:
	.string	"S_SKEL_STND"
.LASF688:
	.string	"S_SARG_STND2"
.LASF434:
	.string	"S_SPOS_DIE1"
.LASF435:
	.string	"S_SPOS_DIE2"
.LASF436:
	.string	"S_SPOS_DIE3"
.LASF437:
	.string	"S_SPOS_DIE4"
.LASF438:
	.string	"S_SPOS_DIE5"
.LASF1462:
	.string	"PST_REBORN"
.LASF1163:
	.string	"S_HANGBNOBRAIN"
.LASF697:
	.string	"S_SARG_ATK1"
.LASF698:
	.string	"S_SARG_ATK2"
.LASF699:
	.string	"S_SARG_ATK3"
.LASF288:
	.string	"S_PLASMAUP"
.LASF1183:
	.string	"tics"
.LASF1044:
	.string	"S_YKEY"
.LASF1343:
	.string	"speed"
.LASF257:
	.string	"S_DSNR1"
.LASF926:
	.string	"S_PAIN_DIE1"
.LASF456:
	.string	"S_VILE_RUN2"
.LASF1174:
	.string	"S_TECHLAMP4"
.LASF620:
	.string	"S_CPOS_RUN1"
.LASF621:
	.string	"S_CPOS_RUN2"
.LASF622:
	.string	"S_CPOS_RUN3"
.LASF623:
	.string	"S_CPOS_RUN4"
.LASF58:
	.string	"actionf_p1"
.LASF59:
	.string	"actionf_p2"
.LASF158:
	.string	"SPR_BPAK"
.LASF627:
	.string	"S_CPOS_RUN8"
.LASF1024:
	.string	"S_BEXP5"
.LASF71:
	.string	"mapthing_t"
.LASF389:
	.string	"S_POSS_RUN2"
.LASF390:
	.string	"S_POSS_RUN3"
.LASF391:
	.string	"S_POSS_RUN4"
.LASF708:
	.string	"S_SARG_RAISE1"
.LASF392:
	.string	"S_POSS_RUN5"
.LASF60:
	.string	"acp1"
.LASF61:
	.string	"acp2"
.LASF712:
	.string	"S_SARG_RAISE5"
.LASF713:
	.string	"S_SARG_RAISE6"
.LASF1292:
	.string	"MT_MISC53"
.LASF197:
	.string	"SPR_SMGT"
.LASF1474:
	.string	"topslope"
.LASF988:
	.string	"S_KEENPAIN"
.LASF336:
	.string	"S_BFGEXP2"
.LASF337:
	.string	"S_BFGEXP3"
.LASF338:
	.string	"S_BFGEXP4"
.LASF267:
	.string	"S_CHAINFLASH1"
.LASF268:
	.string	"S_CHAINFLASH2"
.LASF223:
	.string	"S_PISTOLDOWN"
.LASF1489:
	.string	"line"
.LASF888:
	.string	"S_CYBER_RUN1"
.LASF889:
	.string	"S_CYBER_RUN2"
.LASF890:
	.string	"S_CYBER_RUN3"
.LASF891:
	.string	"S_CYBER_RUN4"
.LASF892:
	.string	"S_CYBER_RUN5"
.LASF893:
	.string	"S_CYBER_RUN6"
.LASF894:
	.string	"S_CYBER_RUN7"
.LASF895:
	.string	"S_CYBER_RUN8"
.LASF1332:
	.string	"seesound"
.LASF1075:
	.string	"S_PMAP2"
.LASF1076:
	.string	"S_PMAP3"
.LASF1077:
	.string	"S_PMAP4"
.LASF1078:
	.string	"S_PMAP5"
.LASF1079:
	.string	"S_PMAP6"
.LASF1406:
	.string	"bonuscount"
.LASF806:
	.string	"S_SKULL_PAIN2"
.LASF1336:
	.string	"painchance"
.LASF632:
	.string	"S_CPOS_PAIN"
.LASF1417:
	.string	"ceilingheight"
.LASF111:
	.string	"SPR_SARG"
.LASF937:
	.string	"S_PAIN_RAISE6"
.LASF1427:
	.string	"specialdata"
.LASF1275:
	.string	"MT_MISC36"
.LASF741:
	.string	"S_BOSS_RUN1"
.LASF742:
	.string	"S_BOSS_RUN2"
.LASF743:
	.string	"S_BOSS_RUN3"
.LASF744:
	.string	"S_BOSS_RUN4"
.LASF745:
	.string	"S_BOSS_RUN5"
.LASF263:
	.string	"S_CHAINUP"
.LASF1502:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1401:
	.string	"killcount"
.LASF882:
	.string	"S_ARACH_PLEX2"
.LASF1126:
	.string	"S_TORCHTREE"
.LASF938:
	.string	"S_SSWV_STND"
.LASF884:
	.string	"S_ARACH_PLEX4"
.LASF985:
	.string	"S_COMMKEEN10"
.LASF986:
	.string	"S_COMMKEEN11"
.LASF987:
	.string	"S_COMMKEEN12"
.LASF902:
	.string	"S_CYBER_PAIN"
.LASF421:
	.string	"S_SPOS_RUN1"
.LASF179:
	.string	"SPR_SMIT"
.LASF44:
	.string	"boolean"
.LASF424:
	.string	"S_SPOS_RUN4"
.LASF425:
	.string	"S_SPOS_RUN5"
.LASF116:
	.string	"SPR_SKUL"
.LASF427:
	.string	"S_SPOS_RUN7"
.LASF428:
	.string	"S_SPOS_RUN8"
.LASF1085:
	.string	"S_BROK"
.LASF1330:
	.string	"spawnhealth"
.LASF215:
	.string	"S_PUNCHDOWN"
.LASF881:
	.string	"S_ARACH_PLEX"
.LASF1142:
	.string	"S_GREENTORCH"
.LASF25:
	.string	"wp_supershotgun"
.LASF281:
	.string	"S_SAWDOWN"
.LASF1180:
	.string	"statenum_t"
.LASF1220:
	.string	"MT_TROOPSHOT"
.LASF1205:
	.string	"MT_BRUISERSHOT"
.LASF1495:
	.string	"divl"
.LASF52:
	.string	"ticcmd_t"
.LASF1325:
	.string	"MT_MISC86"
.LASF1456:
	.string	"ps_weapon"
.LASF369:
	.string	"S_PLAY_PAIN2"
.LASF764:
	.string	"S_BOSS_RAISE4"
.LASF765:
	.string	"S_BOSS_RAISE5"
.LASF1182:
	.string	"frame"
.LASF1494:
	.string	"openbottom"
.LASF108:
	.string	"SPR_MANF"
.LASF619:
	.string	"S_CPOS_STND2"
.LASF432:
	.string	"S_SPOS_PAIN"
.LASF19:
	.string	"wp_shotgun"
.LASF400:
	.string	"S_POSS_PAIN2"
.LASF1226:
	.string	"MT_PUFF"
.LASF272:
	.string	"S_MISSILE1"
.LASF273:
	.string	"S_MISSILE2"
.LASF274:
	.string	"S_MISSILE3"
.LASF648:
	.string	"S_CPOS_RAISE2"
.LASF649:
	.string	"S_CPOS_RAISE3"
.LASF650:
	.string	"S_CPOS_RAISE4"
.LASF1411:
	.string	"psprites"
.LASF1092:
	.string	"S_MGUN"
.LASF1204:
	.string	"MT_BRUISER"
.LASF157:
	.string	"SPR_SBOX"
.LASF1403:
	.string	"secretcount"
.LASF1327:
	.string	"mobjtype_t"
.LASF1341:
	.string	"xdeathstate"
.LASF1388:
	.string	"powers"
.LASF801:
	.string	"S_SKULL_ATK1"
.LASF802:
	.string	"S_SKULL_ATK2"
.LASF803:
	.string	"S_SKULL_ATK3"
.LASF804:
	.string	"S_SKULL_ATK4"
.LASF782:
	.string	"S_BOS2_PAIN2"
.LASF6:
	.string	"short unsigned int"
.LASF1206:
	.string	"MT_KNIGHT"
.LASF7:
	.string	"signed char"
.LASF47:
	.string	"sidemove"
.LASF1348:
	.string	"activesound"
.LASF433:
	.string	"S_SPOS_PAIN2"
.LASF597:
	.string	"S_FATT_ATK10"
.LASF194:
	.string	"SPR_TGRN"
.LASF1251:
	.string	"MT_MEGA"
.LASF96:
	.string	"SPR_BFE1"
.LASF97:
	.string	"SPR_BFE2"
.LASF1426:
	.string	"thinglist"
.LASF1492:
	.string	"back"
.LASF1285:
	.string	"MT_MISC46"
.LASF1467:
	.string	"numsubsectors"
.LASF1490:
	.string	"count"
.LASF1213:
	.string	"MT_KEEN"
.LASF1424:
	.string	"blockbox"
.LASF998:
	.string	"S_BRAINEYE1"
.LASF1452:
	.string	"linedef"
.LASF654:
	.string	"S_TROO_STND"
.LASF601:
	.string	"S_FATT_DIE2"
.LASF292:
	.string	"S_PLASMAFLASH2"
.LASF43:
	.string	"weapontype_t"
.LASF50:
	.string	"chatchar"
.LASF345:
	.string	"S_TFOG2"
.LASF346:
	.string	"S_TFOG3"
.LASF347:
	.string	"S_TFOG4"
.LASF348:
	.string	"S_TFOG5"
.LASF349:
	.string	"S_TFOG6"
.LASF350:
	.string	"S_TFOG7"
.LASF351:
	.string	"S_TFOG8"
.LASF352:
	.string	"S_TFOG9"
.LASF767:
	.string	"S_BOSS_RAISE7"
.LASF1397:
	.string	"attackdown"
.LASF72:
	.string	"SPR_TROO"
.LASF83:
	.string	"SPR_SAWG"
.LASF132:
	.string	"SPR_BON1"
.LASF133:
	.string	"SPR_BON2"
.LASF12:
	.string	"it_redcard"
.LASF1121:
	.string	"S_TALLREDCOL"
.LASF1503:
	.string	"I_Error"
.LASF1367:
	.string	"state"
.LASF1096:
	.string	"S_SHOT"
.LASF952:
	.string	"S_SSWV_ATK5"
.LASF1101:
	.string	"S_BLOODYTWITCH2"
.LASF1102:
	.string	"S_BLOODYTWITCH3"
.LASF1103:
	.string	"S_BLOODYTWITCH4"
.LASF842:
	.string	"S_SPID_DIE10"
.LASF843:
	.string	"S_SPID_DIE11"
.LASF1389:
	.string	"cards"
.LASF1473:
	.string	"sightzstart"
.LASF1453:
	.string	"seg_t"
.LASF189:
	.string	"SPR_ELEC"
.LASF990:
	.string	"S_BRAIN"
.LASF1208:
	.string	"MT_SPIDER"
.LASF1073:
	.string	"S_SUIT"
.LASF87:
	.string	"SPR_BFGF"
.LASF86:
	.string	"SPR_BFGG"
.LASF913:
	.string	"S_PAIN_STND"
.LASF329:
	.string	"S_BFGLAND"
.LASF1019:
	.string	"S_BAR2"
.LASF1393:
	.string	"pendingweapon"
.LASF66:
	.string	"function"
.LASF29:
	.string	"am_shell"
.LASF1365:
	.string	"validcount"
.LASF1404:
	.string	"message"
.LASF609:
	.string	"S_FATT_DIE10"
.LASF16:
	.string	"NUMCARDS"
.LASF1146:
	.string	"S_REDTORCH"
.LASF1224:
	.string	"MT_BFG"
.LASF393:
	.string	"S_POSS_RUN6"
.LASF103:
	.string	"SPR_VILE"
.LASF1227:
	.string	"MT_BLOOD"
.LASF222:
	.string	"S_PISTOL"
.LASF42:
	.string	"true"
.LASF454:
	.string	"S_VILE_STND2"
.LASF872:
	.string	"S_BSPI_RAISE1"
.LASF873:
	.string	"S_BSPI_RAISE2"
.LASF874:
	.string	"S_BSPI_RAISE3"
.LASF875:
	.string	"S_BSPI_RAISE4"
.LASF876:
	.string	"S_BSPI_RAISE5"
.LASF877:
	.string	"S_BSPI_RAISE6"
.LASF878:
	.string	"S_BSPI_RAISE7"
.LASF1362:
	.string	"momx"
.LASF1363:
	.string	"momy"
.LASF9:
	.string	"long int"
.LASF961:
	.string	"S_SSWV_XDIE1"
.LASF962:
	.string	"S_SSWV_XDIE2"
.LASF963:
	.string	"S_SSWV_XDIE3"
.LASF964:
	.string	"S_SSWV_XDIE4"
.LASF965:
	.string	"S_SSWV_XDIE5"
.LASF966:
	.string	"S_SSWV_XDIE6"
.LASF967:
	.string	"S_SSWV_XDIE7"
.LASF968:
	.string	"S_SSWV_XDIE8"
.LASF969:
	.string	"S_SSWV_XDIE9"
.LASF259:
	.string	"S_DSGUNFLASH1"
.LASF260:
	.string	"S_DSGUNFLASH2"
.LASF1258:
	.string	"MT_MISC22"
.LASF1412:
	.string	"didsecret"
.LASF517:
	.string	"S_FIRE25"
.LASF611:
	.string	"S_FATT_RAISE2"
.LASF1294:
	.string	"MT_MISC55"
.LASF1385:
	.string	"deltaviewheight"
.LASF14:
	.string	"it_yellowskull"
.LASF1049:
	.string	"S_RSKULL2"
.LASF1376:
	.string	"tracer"
.LASF824:
	.string	"S_SPID_RUN10"
.LASF825:
	.string	"S_SPID_RUN11"
.LASF826:
	.string	"S_SPID_RUN12"
.LASF1480:
	.string	"rcsid"
.LASF1350:
	.string	"raisestate"
.LASF275:
	.string	"S_MISSILEFLASH1"
.LASF276:
	.string	"S_MISSILEFLASH2"
.LASF277:
	.string	"S_MISSILEFLASH3"
.LASF278:
	.string	"S_MISSILEFLASH4"
.LASF138:
	.string	"SPR_RSKU"
.LASF63:
	.string	"think_t"
.LASF46:
	.string	"forwardmove"
.LASF636:
	.string	"S_CPOS_DIE3"
.LASF637:
	.string	"S_CPOS_DIE4"
.LASF1441:
	.string	"midtexture"
.LASF638:
	.string	"S_CPOS_DIE5"
.LASF639:
	.string	"S_CPOS_DIE6"
.LASF640:
	.string	"S_CPOS_DIE7"
.LASF1081:
	.string	"S_PVIS2"
.LASF1497:
	.string	"slope"
.LASF1219:
	.string	"MT_BARREL"
.LASF813:
	.string	"S_SPID_STND"
.LASF1464:
	.string	"segs"
.LASF1484:
	.string	"P_CheckSight"
.LASF585:
	.string	"S_FATT_RUN10"
.LASF586:
	.string	"S_FATT_RUN11"
.LASF587:
	.string	"S_FATT_RUN12"
.LASF1211:
	.string	"MT_PAIN"
.LASF1139:
	.string	"S_BLUETORCH2"
.LASF1351:
	.string	"mobjinfo_t"
.LASF1140:
	.string	"S_BLUETORCH3"
.LASF1141:
	.string	"S_BLUETORCH4"
.LASF198:
	.string	"SPR_SMRT"
.LASF300:
	.string	"S_BFGFLASH1"
.LASF301:
	.string	"S_BFGFLASH2"
.LASF834:
	.string	"S_SPID_DIE2"
.LASF115:
	.string	"SPR_BOS2"
.LASF837:
	.string	"S_SPID_DIE5"
.LASF838:
	.string	"S_SPID_DIE6"
.LASF839:
	.string	"S_SPID_DIE7"
.LASF840:
	.string	"S_SPID_DIE8"
.LASF1130:
	.string	"S_EVILEYE2"
.LASF1131:
	.string	"S_EVILEYE3"
.LASF1132:
	.string	"S_EVILEYE4"
.LASF305:
	.string	"S_PUFF1"
.LASF306:
	.string	"S_PUFF2"
.LASF307:
	.string	"S_PUFF3"
.LASF126:
	.string	"SPR_BOSF"
.LASF1429:
	.string	"lines"
.LASF114:
	.string	"SPR_BOSS"
.LASF1223:
	.string	"MT_PLASMA"
.LASF859:
	.string	"S_BSPI_ATK1"
.LASF860:
	.string	"S_BSPI_ATK2"
.LASF861:
	.string	"S_BSPI_ATK3"
.LASF862:
	.string	"S_BSPI_ATK4"
.LASF1041:
	.string	"S_BKEY2"
.LASF26:
	.string	"NUMWEAPONS"
.LASF846:
	.string	"S_BSPI_SIGHT"
.LASF2:
	.string	"long unsigned int"
.LASF848:
	.string	"S_BSPI_RUN2"
.LASF992:
	.string	"S_BRAIN_DIE1"
.LASF993:
	.string	"S_BRAIN_DIE2"
.LASF994:
	.string	"S_BRAIN_DIE3"
.LASF995:
	.string	"S_BRAIN_DIE4"
.LASF327:
	.string	"S_BFGSHOT"
.LASF1133:
	.string	"S_FLOATSKULL"
.LASF483:
	.string	"S_VILE_DIE1"
.LASF484:
	.string	"S_VILE_DIE2"
.LASF485:
	.string	"S_VILE_DIE3"
.LASF486:
	.string	"S_VILE_DIE4"
.LASF487:
	.string	"S_VILE_DIE5"
.LASF488:
	.string	"S_VILE_DIE6"
.LASF489:
	.string	"S_VILE_DIE7"
.LASF490:
	.string	"S_VILE_DIE8"
.LASF491:
	.string	"S_VILE_DIE9"
.LASF1405:
	.string	"damagecount"
.LASF167:
	.string	"SPR_SMT2"
.LASF1043:
	.string	"S_RKEY2"
.LASF1014:
	.string	"S_ARM1"
.LASF1016:
	.string	"S_ARM2"
.LASF1109:
	.string	"S_HEADCANDLES"
.LASF145:
	.string	"SPR_PINS"
.LASF739:
	.string	"S_BOSS_STND"
.LASF719:
	.string	"S_HEAD_PAIN"
.LASF11:
	.string	"it_yellowcard"
.LASF1195:
	.string	"MT_TRACER"
.LASF600:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF602:
	.string	"S_FATT_DIE3"
.LASF603:
	.string	"S_FATT_DIE4"
.LASF604:
	.string	"S_FATT_DIE5"
.LASF605:
	.string	"S_FATT_DIE6"
.LASF606:
	.string	"S_FATT_DIE7"
.LASF607:
	.string	"S_FATT_DIE8"
.LASF608:
	.string	"S_FATT_DIE9"
.LASF675:
	.string	"S_TROO_XDIE2"
.LASF676:
	.string	"S_TROO_XDIE3"
.LASF677:
	.string	"S_TROO_XDIE4"
.LASF678:
	.string	"S_TROO_XDIE5"
.LASF679:
	.string	"S_TROO_XDIE6"
.LASF680:
	.string	"S_TROO_XDIE7"
.LASF681:
	.string	"S_TROO_XDIE8"
.LASF150:
	.string	"SPR_CLIP"
.LASF1122:
	.string	"S_SHRTREDCOL"
.LASF1165:
	.string	"S_HANGTSKULL"
.LASF40:
	.string	"NUMPOWERS"
.LASF950:
	.string	"S_SSWV_ATK3"
.LASF951:
	.string	"S_SSWV_ATK4"
.LASF256:
	.string	"S_DSGUN10"
.LASF35:
	.string	"pw_strength"
.LASF184:
	.string	"SPR_CAND"
.LASF1201:
	.string	"MT_SERGEANT"
.LASF1112:
	.string	"S_LIVESTICK"
.LASF1052:
	.string	"S_STIM"
.LASF30:
	.string	"am_cell"
.LASF10:
	.string	"it_bluecard"
.LASF1360:
	.string	"floorz"
.LASF715:
	.string	"S_HEAD_RUN1"
.LASF370:
	.string	"S_PLAY_DIE1"
.LASF371:
	.string	"S_PLAY_DIE2"
.LASF372:
	.string	"S_PLAY_DIE3"
.LASF373:
	.string	"S_PLAY_DIE4"
.LASF374:
	.string	"S_PLAY_DIE5"
.LASF375:
	.string	"S_PLAY_DIE6"
.LASF376:
	.string	"S_PLAY_DIE7"
.LASF386:
	.string	"S_POSS_STND"
.LASF342:
	.string	"S_TFOG"
.LASF1279:
	.string	"MT_MISC40"
.LASF1280:
	.string	"MT_MISC41"
.LASF1377:
	.string	"subsector_s"
.LASF702:
	.string	"S_SARG_DIE1"
.LASF703:
	.string	"S_SARG_DIE2"
.LASF704:
	.string	"S_SARG_DIE3"
.LASF705:
	.string	"S_SARG_DIE4"
.LASF1003:
	.string	"S_SPAWNFIRE1"
.LASF1004:
	.string	"S_SPAWNFIRE2"
.LASF1005:
	.string	"S_SPAWNFIRE3"
.LASF1006:
	.string	"S_SPAWNFIRE4"
.LASF1007:
	.string	"S_SPAWNFIRE5"
.LASF1008:
	.string	"S_SPAWNFIRE6"
.LASF1009:
	.string	"S_SPAWNFIRE7"
.LASF1010:
	.string	"S_SPAWNFIRE8"
.LASF674:
	.string	"S_TROO_XDIE1"
.LASF49:
	.string	"consistancy"
.LASF1378:
	.string	"sector"
.LASF1167:
	.string	"S_HANGTNOBRAIN"
.LASF322:
	.string	"S_PLASEXP2"
.LASF323:
	.string	"S_PLASEXP3"
.LASF324:
	.string	"S_PLASEXP4"
.LASF325:
	.string	"S_PLASEXP5"
.LASF23:
	.string	"wp_bfg"
.LASF1151:
	.string	"S_BTORCHSHRT2"
.LASF1152:
	.string	"S_BTORCHSHRT3"
.LASF1153:
	.string	"S_BTORCHSHRT4"
.LASF455:
	.string	"S_VILE_RUN1"
.LASF245:
	.string	"S_DSGUNDOWN"
.LASF457:
	.string	"S_VILE_RUN3"
.LASF458:
	.string	"S_VILE_RUN4"
.LASF459:
	.string	"S_VILE_RUN5"
.LASF460:
	.string	"S_VILE_RUN6"
.LASF461:
	.string	"S_VILE_RUN7"
.LASF462:
	.string	"S_VILE_RUN8"
.LASF463:
	.string	"S_VILE_RUN9"
.LASF706:
	.string	"S_SARG_DIE5"
.LASF707:
	.string	"S_SARG_DIE6"
.LASF1354:
	.string	"thinker"
.LASF547:
	.string	"S_SKEL_FIST1"
.LASF548:
	.string	"S_SKEL_FIST2"
.LASF549:
	.string	"S_SKEL_FIST3"
.LASF550:
	.string	"S_SKEL_FIST4"
.LASF286:
	.string	"S_PLASMA"
.LASF1065:
	.string	"S_PINS"
.LASF1466:
	.string	"sectors"
.LASF1138:
	.string	"S_BLUETORCH"
.LASF576:
	.string	"S_FATT_RUN1"
.LASF577:
	.string	"S_FATT_RUN2"
.LASF578:
	.string	"S_FATT_RUN3"
.LASF579:
	.string	"S_FATT_RUN4"
.LASF37:
	.string	"pw_ironfeet"
.LASF581:
	.string	"S_FATT_RUN6"
.LASF582:
	.string	"S_FATT_RUN7"
.LASF583:
	.string	"S_FATT_RUN8"
.LASF1114:
	.string	"S_MEAT2"
.LASF1115:
	.string	"S_MEAT3"
.LASF1116:
	.string	"S_MEAT4"
.LASF1117:
	.string	"S_MEAT5"
.LASF229:
	.string	"S_PISTOLFLASH"
.LASF1416:
	.string	"floorheight"
.LASF449:
	.string	"S_SPOS_RAISE2"
.LASF450:
	.string	"S_SPOS_RAISE3"
.LASF451:
	.string	"S_SPOS_RAISE4"
.LASF452:
	.string	"S_SPOS_RAISE5"
.LASF141:
	.string	"SPR_MEDI"
.LASF143:
	.string	"SPR_PINV"
.LASF1483:
	.string	"bitnum"
.LASF991:
	.string	"S_BRAIN_PAIN"
.LASF262:
	.string	"S_CHAINDOWN"
.LASF1486:
	.string	"bspnum"
.LASF481:
	.string	"S_VILE_PAIN"
.LASF528:
	.string	"S_TRACER"
.LASF948:
	.string	"S_SSWV_ATK1"
.LASF949:
	.string	"S_SSWV_ATK2"
.LASF478:
	.string	"S_VILE_HEAL1"
.LASF479:
	.string	"S_VILE_HEAL2"
.LASF480:
	.string	"S_VILE_HEAL3"
.LASF953:
	.string	"S_SSWV_ATK6"
.LASF1370:
	.string	"movecount"
.LASF135:
	.string	"SPR_RKEY"
.LASF1099:
	.string	"S_STALAG"
.LASF814:
	.string	"S_SPID_STND2"
.LASF1454:
	.string	"children"
.LASF56:
	.string	"angle_t"
.LASF1419:
	.string	"ceilingpic"
.LASF1100:
	.string	"S_BLOODYTWITCH"
.LASF1169:
	.string	"S_SMALLPOOL"
.LASF1459:
	.string	"pspdef_t"
.LASF1295:
	.string	"MT_MISC56"
.LASF598:
	.string	"S_FATT_PAIN"
.LASF362:
	.string	"S_PLAY_RUN1"
.LASF363:
	.string	"S_PLAY_RUN2"
.LASF364:
	.string	"S_PLAY_RUN3"
.LASF365:
	.string	"S_PLAY_RUN4"
.LASF1090:
	.string	"S_BPAK"
.LASF54:
	.string	"double"
.LASF130:
	.string	"SPR_BEXP"
.LASF1381:
	.string	"player_s"
.LASF1047:
	.string	"S_BSKULL2"
.LASF89:
	.string	"SPR_PUFF"
.LASF976:
	.string	"S_COMMKEEN"
.LASF1398:
	.string	"usedown"
.LASF768:
	.string	"S_BOS2_STND"
.LASF95:
	.string	"SPR_BFS1"
.LASF999:
	.string	"S_SPAWN1"
.LASF1000:
	.string	"S_SPAWN2"
.LASF1001:
	.string	"S_SPAWN3"
.LASF1002:
	.string	"S_SPAWN4"
.LASF1172:
	.string	"S_TECHLAMP2"
.LASF1173:
	.string	"S_TECHLAMP3"
.LASF24:
	.string	"wp_chainsaw"
.LASF1209:
	.string	"MT_BABY"
.LASF1396:
	.string	"maxammo"
.LASF1113:
	.string	"S_LIVESTICK2"
.LASF1158:
	.string	"S_RTORCHSHRT"
.LASF1255:
	.string	"MT_MISC19"
.LASF117:
	.string	"SPR_SPID"
.LASF714:
	.string	"S_HEAD_STND"
.LASF689:
	.string	"S_SARG_RUN1"
.LASF690:
	.string	"S_SARG_RUN2"
.LASF692:
	.string	"S_SARG_RUN4"
.LASF693:
	.string	"S_SARG_RUN5"
.LASF694:
	.string	"S_SARG_RUN6"
.LASF695:
	.string	"S_SARG_RUN7"
.LASF696:
	.string	"S_SARG_RUN8"
.LASF1233:
	.string	"MT_MISC1"
.LASF1234:
	.string	"MT_MISC2"
.LASF1235:
	.string	"MT_MISC3"
.LASF1236:
	.string	"MT_MISC4"
.LASF1237:
	.string	"MT_MISC5"
.LASF1238:
	.string	"MT_MISC6"
.LASF1239:
	.string	"MT_MISC7"
.LASF1240:
	.string	"MT_MISC8"
.LASF1241:
	.string	"MT_MISC9"
.LASF279:
	.string	"S_SAW"
.LASF146:
	.string	"SPR_MEGA"
.LASF368:
	.string	"S_PLAY_PAIN"
.LASF320:
	.string	"S_PLASBALL2"
.LASF1457:
	.string	"ps_flash"
.LASF1382:
	.string	"playerstate"
.LASF124:
	.string	"SPR_KEEN"
.LASF954:
	.string	"S_SSWV_PAIN"
.LASF1335:
	.string	"painstate"
.LASF989:
	.string	"S_KEENPAIN2"
.LASF39:
	.string	"pw_infrared"
.LASF476:
	.string	"S_VILE_ATK10"
.LASF477:
	.string	"S_VILE_ATK11"
.LASF955:
	.string	"S_SSWV_PAIN2"
.LASF1319:
	.string	"MT_MISC80"
.LASF1342:
	.string	"deathsound"
.LASF1029:
	.string	"S_BON1A"
.LASF1030:
	.string	"S_BON1B"
.LASF1031:
	.string	"S_BON1C"
.LASF1032:
	.string	"S_BON1D"
.LASF1033:
	.string	"S_BON1E"
.LASF1436:
	.string	"sector_t"
.LASF144:
	.string	"SPR_PSTR"
.LASF1500:
	.string	"left"
.LASF1257:
	.string	"MT_MISC21"
.LASF700:
	.string	"S_SARG_PAIN"
.LASF1252:
	.string	"MT_CLIP"
.LASF159:
	.string	"SPR_BFUG"
.LASF1307:
	.string	"MT_MISC68"
.LASF1025:
	.string	"S_BBAR1"
.LASF1026:
	.string	"S_BBAR2"
.LASF1027:
	.string	"S_BBAR3"
.LASF213:
	.string	"S_LIGHTDONE"
.LASF864:
	.string	"S_BSPI_PAIN2"
.LASF1390:
	.string	"backpack"
.LASF664:
	.string	"S_TROO_ATK1"
.LASF665:
	.string	"S_TROO_ATK2"
.LASF666:
	.string	"S_TROO_ATK3"
.LASF808:
	.string	"S_SKULL_DIE2"
.LASF809:
	.string	"S_SKULL_DIE3"
.LASF810:
	.string	"S_SKULL_DIE4"
.LASF811:
	.string	"S_SKULL_DIE5"
.LASF812:
	.string	"S_SKULL_DIE6"
.LASF163:
	.string	"SPR_PLAS"
.LASF1035:
	.string	"S_BON2A"
.LASF1036:
	.string	"S_BON2B"
.LASF76:
	.string	"SPR_PISF"
.LASF75:
	.string	"SPR_PISG"
.LASF1039:
	.string	"S_BON2E"
.LASF1262:
	.string	"MT_CHAINGUN"
.LASF311:
	.string	"S_TBALLX1"
.LASF312:
	.string	"S_TBALLX2"
.LASF313:
	.string	"S_TBALLX3"
.LASF27:
	.string	"wp_nochange"
.LASF1199:
	.string	"MT_CHAINGUY"
.LASF1415:
	.string	"degenmobj_t"
.LASF1498:
	.string	"P_InterceptVector2"
.LASF807:
	.string	"S_SKULL_DIE1"
.LASF1461:
	.string	"PST_DEAD"
.LASF1170:
	.string	"S_BRAINSTEM"
.LASF975:
	.string	"S_KEENSTND"
.LASF100:
	.string	"SPR_PLAY"
.LASF1392:
	.string	"readyweapon"
.LASF1450:
	.string	"offset"
.LASF1110:
	.string	"S_HEADCANDLES2"
.LASF1229:
	.string	"MT_IFOG"
.LASF191:
	.string	"SPR_FSKU"
.LASF426:
	.string	"S_SPOS_RUN6"
.LASF282:
	.string	"S_SAWUP"
.LASF1015:
	.string	"S_ARM1A"
.LASF618:
	.string	"S_CPOS_STND"
.LASF1270:
	.string	"MT_MISC31"
.LASF1364:
	.string	"momz"
.LASF1089:
	.string	"S_SBOX"
.LASF1422:
	.string	"soundtraversed"
.LASF1273:
	.string	"MT_MISC34"
.LASF1449:
	.string	"subsector_t"
.LASF1432:
	.string	"bbox"
.LASF321:
	.string	"S_PLASEXP"
.LASF1276:
	.string	"MT_MISC37"
.LASF1105:
	.string	"S_DEADBOTTOM"
.LASF1162:
	.string	"S_HANGNOGUTS"
.LASF1334:
	.string	"attacksound"
.LASF1066:
	.string	"S_PINS2"
.LASF1067:
	.string	"S_PINS3"
.LASF1068:
	.string	"S_PINS4"
.LASF920:
	.string	"S_PAIN_ATK1"
.LASF921:
	.string	"S_PAIN_ATK2"
.LASF922:
	.string	"S_PAIN_ATK3"
.LASF923:
	.string	"S_PAIN_ATK4"
.LASF1481:
	.string	"pnum"
.LASF232:
	.string	"S_SGUNUP"
.LASF1434:
	.string	"frontsector"
.LASF185:
	.string	"SPR_CBRA"
.LASF1340:
	.string	"deathstate"
.LASF1017:
	.string	"S_ARM2A"
.LASF886:
	.string	"S_CYBER_STND"
.LASF1045:
	.string	"S_YKEY2"
.LASF495:
	.string	"S_FIRE3"
.LASF1333:
	.string	"reactiontime"
.LASF500:
	.string	"S_FIRE8"
.LASF740:
	.string	"S_BOSS_STND2"
.LASF635:
	.string	"S_CPOS_DIE2"
.LASF1356:
	.string	"sprev"
.LASF283:
	.string	"S_SAW1"
.LASF284:
	.string	"S_SAW2"
.LASF285:
	.string	"S_SAW3"
.LASF1028:
	.string	"S_BON1"
.LASF1034:
	.string	"S_BON2"
.LASF1373:
	.string	"player"
.LASF280:
	.string	"S_SAWB"
.LASF668:
	.string	"S_TROO_PAIN2"
.LASF1215:
	.string	"MT_BOSSSPIT"
.LASF493:
	.string	"S_FIRE1"
.LASF494:
	.string	"S_FIRE2"
.LASF55:
	.string	"fixed_t"
.LASF496:
	.string	"S_FIRE4"
.LASF497:
	.string	"S_FIRE5"
.LASF498:
	.string	"S_FIRE6"
.LASF499:
	.string	"S_FIRE7"
.LASF153:
	.string	"SPR_BROK"
.LASF501:
	.string	"S_FIRE9"
.LASF1283:
	.string	"MT_MISC44"
.LASF1284:
	.string	"MT_MISC45"
.LASF1086:
	.string	"S_CELL"
.LASF1286:
	.string	"MT_MISC47"
.LASF151:
	.string	"SPR_AMMO"
.LASF1287:
	.string	"MT_MISC48"
.LASF1288:
	.string	"MT_MISC49"
.LASF799:
	.string	"S_SKULL_RUN1"
.LASF800:
	.string	"S_SKULL_RUN2"
.LASF1166:
	.string	"S_HANGTLOOKUP"
.LASF261:
	.string	"S_CHAIN"
.LASF291:
	.string	"S_PLASMAFLASH1"
.LASF247:
	.string	"S_DSGUN1"
.LASF248:
	.string	"S_DSGUN2"
.LASF142:
	.string	"SPR_SOUL"
.LASF102:
	.string	"SPR_SPOS"
.LASF251:
	.string	"S_DSGUN5"
.LASF252:
	.string	"S_DSGUN6"
.LASF253:
	.string	"S_DSGUN7"
.LASF254:
	.string	"S_DSGUN8"
.LASF255:
	.string	"S_DSGUN9"
.LASF419:
	.string	"S_SPOS_STND"
.LASF122:
	.string	"SPR_PAIN"
.LASF647:
	.string	"S_CPOS_RAISE1"
.LASF1391:
	.string	"frags"
.LASF1386:
	.string	"armorpoints"
.LASF51:
	.string	"buttons"
.LASF296:
	.string	"S_BFG1"
.LASF297:
	.string	"S_BFG2"
.LASF298:
	.string	"S_BFG3"
.LASF299:
	.string	"S_BFG4"
.LASF1468:
	.string	"subsectors"
.LASF211:
	.string	"spritenum_t"
.LASF258:
	.string	"S_DSNR2"
.LASF798:
	.string	"S_SKULL_STND2"
.LASF1061:
	.string	"S_PINV2"
.LASF1062:
	.string	"S_PINV3"
.LASF691:
	.string	"S_SARG_RUN3"
.LASF1176:
	.string	"S_TECH2LAMP2"
.LASF1177:
	.string	"S_TECH2LAMP3"
.LASF1178:
	.string	"S_TECH2LAMP4"
.LASF1430:
	.string	"line_s"
.LASF74:
	.string	"SPR_PUNG"
.LASF642:
	.string	"S_CPOS_XDIE2"
.LASF643:
	.string	"S_CPOS_XDIE3"
.LASF644:
	.string	"S_CPOS_XDIE4"
.LASF645:
	.string	"S_CPOS_XDIE5"
.LASF646:
	.string	"S_CPOS_XDIE6"
.LASF827:
	.string	"S_SPID_ATK1"
.LASF828:
	.string	"S_SPID_ATK2"
.LASF829:
	.string	"S_SPID_ATK3"
.LASF830:
	.string	"S_SPID_ATK4"
.LASF551:
	.string	"S_SKEL_MISS1"
.LASF552:
	.string	"S_SKEL_MISS2"
.LASF553:
	.string	"S_SKEL_MISS3"
.LASF554:
	.string	"S_SKEL_MISS4"
.LASF308:
	.string	"S_PUFF4"
.LASF1048:
	.string	"S_RSKULL"
.LASF880:
	.string	"S_ARACH_PLAZ2"
.LASF1289:
	.string	"MT_MISC50"
.LASF728:
	.string	"S_HEAD_RAISE1"
.LASF1324:
	.string	"MT_MISC85"
.LASF729:
	.string	"S_HEAD_RAISE2"
.LASF730:
	.string	"S_HEAD_RAISE3"
.LASF1399:
	.string	"cheats"
.LASF137:
	.string	"SPR_BSKU"
.LASF732:
	.string	"S_HEAD_RAISE5"
.LASF733:
	.string	"S_HEAD_RAISE6"
.LASF1451:
	.string	"sidedef"
.LASF1267:
	.string	"MT_SUPERSHOTGUN"
.LASF148:
	.string	"SPR_PMAP"
.LASF996:
	.string	"S_BRAINEYE"
.LASF149:
	.string	"SPR_PVIS"
.LASF1460:
	.string	"PST_LIVE"
.LASF1225:
	.string	"MT_ARACHPLAZ"
.LASF474:
	.string	"S_VILE_ATK8"
.LASF415:
	.string	"S_POSS_RAISE1"
.LASF416:
	.string	"S_POSS_RAISE2"
.LASF417:
	.string	"S_POSS_RAISE3"
.LASF418:
	.string	"S_POSS_RAISE4"
.LASF270:
	.string	"S_MISSILEDOWN"
.LASF1134:
	.string	"S_FLOATSKULL2"
.LASF1135:
	.string	"S_FLOATSKULL3"
.LASF1069:
	.string	"S_MEGA"
.LASF749:
	.string	"S_BOSS_ATK1"
.LASF750:
	.string	"S_BOSS_ATK2"
.LASF751:
	.string	"S_BOSS_ATK3"
.LASF1359:
	.string	"subsector"
.LASF207:
	.string	"SPR_BRS1"
.LASF1414:
	.string	"vertex_t"
.LASF556:
	.string	"S_SKEL_PAIN2"
.LASF1093:
	.string	"S_CSAW"
.LASF34:
	.string	"pw_invulnerability"
.LASF736:
	.string	"S_BRBALLX1"
.LASF737:
	.string	"S_BRBALLX2"
.LASF738:
	.string	"S_BRBALLX3"
.LASF866:
	.string	"S_BSPI_DIE2"
.LASF867:
	.string	"S_BSPI_DIE3"
.LASF868:
	.string	"S_BSPI_DIE4"
.LASF869:
	.string	"S_BSPI_DIE5"
.LASF20:
	.string	"wp_chaingun"
.LASF871:
	.string	"S_BSPI_DIE7"
.LASF422:
	.string	"S_SPOS_RUN2"
.LASF1435:
	.string	"backsector"
.LASF423:
	.string	"S_SPOS_RUN3"
.LASF925:
	.string	"S_PAIN_PAIN2"
.LASF560:
	.string	"S_SKEL_DIE4"
.LASF156:
	.string	"SPR_SHEL"
.LASF1308:
	.string	"MT_MISC69"
.LASF1387:
	.string	"armortype"
.LASF41:
	.string	"false"
.LASF208:
	.string	"SPR_TLMP"
.LASF387:
	.string	"S_POSS_STND2"
.LASF1266:
	.string	"MT_SHOTGUN"
.LASF1191:
	.string	"MT_SHOTGUY"
.LASF1402:
	.string	"itemcount"
.LASF1171:
	.string	"S_TECHLAMP"
.LASF1212:
	.string	"MT_WOLFSS"
.LASF769:
	.string	"S_BOS2_STND2"
.LASF1485:
	.string	"P_CrossBSPNode"
.LASF1423:
	.string	"soundtarget"
.LASF264:
	.string	"S_CHAIN1"
.LASF265:
	.string	"S_CHAIN2"
.LASF266:
	.string	"S_CHAIN3"
.LASF317:
	.string	"S_RBALLX2"
.LASF318:
	.string	"S_RBALLX3"
.LASF193:
	.string	"SPR_TBLU"
.LASF420:
	.string	"S_SPOS_STND2"
.LASF4:
	.string	"unsigned int"
.LASF1355:
	.string	"snext"
.LASF1478:
	.string	"FixedDiv"
.LASF33:
	.string	"am_noammo"
.LASF1352:
	.string	"thinker_s"
.LASF67:
	.string	"thinker_t"
.LASF396:
	.string	"S_POSS_ATK1"
.LASF397:
	.string	"S_POSS_ATK2"
.LASF398:
	.string	"S_POSS_ATK3"
.LASF1487:
	.string	"side"
.LASF1310:
	.string	"MT_MISC71"
.LASF1159:
	.string	"S_RTORCHSHRT2"
.LASF1160:
	.string	"S_RTORCHSHRT3"
.LASF1161:
	.string	"S_RTORCHSHRT4"
.LASF1063:
	.string	"S_PINV4"
.LASF8:
	.string	"short int"
.LASF847:
	.string	"S_BSPI_RUN1"
.LASF1316:
	.string	"MT_MISC77"
.LASF1317:
	.string	"MT_MISC78"
.LASF1318:
	.string	"MT_MISC79"
.LASF1207:
	.string	"MT_SKULL"
.LASF1194:
	.string	"MT_UNDEAD"
.LASF64:
	.string	"prev"
.LASF557:
	.string	"S_SKEL_DIE1"
.LASF558:
	.string	"S_SKEL_DIE2"
.LASF559:
	.string	"S_SKEL_DIE3"
.LASF104:
	.string	"SPR_FIRE"
.LASF561:
	.string	"S_SKEL_DIE5"
.LASF562:
	.string	"S_SKEL_DIE6"
.LASF1168:
	.string	"S_COLONGIBS"
.LASF209:
	.string	"SPR_TLP2"
.LASF319:
	.string	"S_PLASBALL"
.LASF165:
	.string	"SPR_SGN2"
.LASF70:
	.string	"options"
.LASF118:
	.string	"SPR_BSPI"
.LASF120:
	.string	"SPR_APBX"
.LASF1410:
	.string	"colormap"
.LASF1242:
	.string	"MT_MISC10"
.LASF1243:
	.string	"MT_MISC11"
.LASF1244:
	.string	"MT_MISC12"
.LASF1246:
	.string	"MT_MISC13"
.LASF1248:
	.string	"MT_MISC14"
.LASF1249:
	.string	"MT_MISC15"
.LASF1250:
	.string	"MT_MISC16"
.LASF1253:
	.string	"MT_MISC17"
.LASF1254:
	.string	"MT_MISC18"
.LASF1082:
	.string	"S_CLIP"
.LASF1344:
	.string	"radius"
.LASF1368:
	.string	"health"
.LASF1216:
	.string	"MT_BOSSTARGET"
.LASF1476:
	.string	"strace"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"p_sight.c"
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
