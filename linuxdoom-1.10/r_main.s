	.file	"r_main.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "r_main.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 49
rcsid:
	.string	"$Id: r_main.c,v 1.5 1997/02/03 22:45:12 b1 Exp $"
	.globl	viewangleoffset
	.bss
	.align 4
	.type	viewangleoffset, @object
	.size	viewangleoffset, 4
viewangleoffset:
	.zero	4
	.globl	validcount
	.data
	.align 4
	.type	validcount, @object
	.size	validcount, 4
validcount:
	.long	1
	.globl	fixedcolormap
	.bss
	.align 8
	.type	fixedcolormap, @object
	.size	fixedcolormap, 8
fixedcolormap:
	.zero	8
	.globl	centerx
	.align 4
	.type	centerx, @object
	.size	centerx, 4
centerx:
	.zero	4
	.globl	centery
	.align 4
	.type	centery, @object
	.size	centery, 4
centery:
	.zero	4
	.globl	centerxfrac
	.align 4
	.type	centerxfrac, @object
	.size	centerxfrac, 4
centerxfrac:
	.zero	4
	.globl	centeryfrac
	.align 4
	.type	centeryfrac, @object
	.size	centeryfrac, 4
centeryfrac:
	.zero	4
	.globl	projection
	.align 4
	.type	projection, @object
	.size	projection, 4
projection:
	.zero	4
	.globl	framecount
	.align 4
	.type	framecount, @object
	.size	framecount, 4
framecount:
	.zero	4
	.globl	sscount
	.align 4
	.type	sscount, @object
	.size	sscount, 4
sscount:
	.zero	4
	.globl	linecount
	.align 4
	.type	linecount, @object
	.size	linecount, 4
linecount:
	.zero	4
	.globl	loopcount
	.align 4
	.type	loopcount, @object
	.size	loopcount, 4
loopcount:
	.zero	4
	.globl	viewx
	.align 4
	.type	viewx, @object
	.size	viewx, 4
viewx:
	.zero	4
	.globl	viewy
	.align 4
	.type	viewy, @object
	.size	viewy, 4
viewy:
	.zero	4
	.globl	viewz
	.align 4
	.type	viewz, @object
	.size	viewz, 4
viewz:
	.zero	4
	.globl	viewangle
	.align 4
	.type	viewangle, @object
	.size	viewangle, 4
viewangle:
	.zero	4
	.globl	viewcos
	.align 4
	.type	viewcos, @object
	.size	viewcos, 4
viewcos:
	.zero	4
	.globl	viewsin
	.align 4
	.type	viewsin, @object
	.size	viewsin, 4
viewsin:
	.zero	4
	.globl	viewplayer
	.align 8
	.type	viewplayer, @object
	.size	viewplayer, 8
viewplayer:
	.zero	8
	.globl	detailshift
	.align 4
	.type	detailshift, @object
	.size	detailshift, 4
detailshift:
	.zero	4
	.globl	clipangle
	.align 4
	.type	clipangle, @object
	.size	clipangle, 4
clipangle:
	.zero	4
	.globl	viewangletox
	.align 32
	.type	viewangletox, @object
	.size	viewangletox, 16384
viewangletox:
	.zero	16384
	.globl	xtoviewangle
	.align 32
	.type	xtoviewangle, @object
	.size	xtoviewangle, 1284
xtoviewangle:
	.zero	1284
	.globl	finecosine
	.section	.data.rel,"aw"
	.align 8
	.type	finecosine, @object
	.size	finecosine, 8
finecosine:
	.quad	finesine+8192
	.globl	scalelight
	.bss
	.align 32
	.type	scalelight, @object
	.size	scalelight, 6144
scalelight:
	.zero	6144
	.globl	scalelightfixed
	.align 32
	.type	scalelightfixed, @object
	.size	scalelightfixed, 384
scalelightfixed:
	.zero	384
	.globl	zlight
	.align 32
	.type	zlight, @object
	.size	zlight, 16384
zlight:
	.zero	16384
	.globl	extralight
	.align 4
	.type	extralight, @object
	.size	extralight, 4
extralight:
	.zero	4
	.globl	colfunc
	.align 8
	.type	colfunc, @object
	.size	colfunc, 8
colfunc:
	.zero	8
	.globl	basecolfunc
	.align 8
	.type	basecolfunc, @object
	.size	basecolfunc, 8
basecolfunc:
	.zero	8
	.globl	fuzzcolfunc
	.align 8
	.type	fuzzcolfunc, @object
	.size	fuzzcolfunc, 8
fuzzcolfunc:
	.zero	8
	.globl	transcolfunc
	.align 8
	.type	transcolfunc, @object
	.size	transcolfunc, 8
transcolfunc:
	.zero	8
	.globl	spanfunc
	.align 8
	.type	spanfunc, @object
	.size	spanfunc, 8
spanfunc:
	.zero	8
	.text
	.globl	R_AddPointToBox
	.type	R_AddPointToBox, @function
R_AddPointToBox:
.LFB6:
	.file 1 "r_main.c"
	.loc 1 143 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# x, x
	movl	%esi, -8(%rbp)	# y, y
	movq	%rdx, -16(%rbp)	# box, box
# r_main.c:144:     if (x< box[BOXLEFT])
	.loc 1 144 15
	movq	-16(%rbp), %rax	# box, tmp92
	addq	$8, %rax	#, _1
	movl	(%rax), %eax	# *_1, _2
# r_main.c:144:     if (x< box[BOXLEFT])
	.loc 1 144 8
	cmpl	%eax, -4(%rbp)	# _2, x
	jge	.L2	#,
# r_main.c:145: 	box[BOXLEFT] = x;
	.loc 1 145 5
	movq	-16(%rbp), %rax	# box, tmp93
	leaq	8(%rax), %rdx	#, _3
# r_main.c:145: 	box[BOXLEFT] = x;
	.loc 1 145 15
	movl	-4(%rbp), %eax	# x, tmp94
	movl	%eax, (%rdx)	# tmp94, *_3
.L2:
# r_main.c:146:     if (x> box[BOXRIGHT])
	.loc 1 146 15
	movq	-16(%rbp), %rax	# box, tmp95
	addq	$12, %rax	#, _4
	movl	(%rax), %eax	# *_4, _5
# r_main.c:146:     if (x> box[BOXRIGHT])
	.loc 1 146 8
	cmpl	%eax, -4(%rbp)	# _5, x
	jle	.L3	#,
# r_main.c:147: 	box[BOXRIGHT] = x;
	.loc 1 147 5
	movq	-16(%rbp), %rax	# box, tmp96
	leaq	12(%rax), %rdx	#, _6
# r_main.c:147: 	box[BOXRIGHT] = x;
	.loc 1 147 16
	movl	-4(%rbp), %eax	# x, tmp97
	movl	%eax, (%rdx)	# tmp97, *_6
.L3:
# r_main.c:148:     if (y< box[BOXBOTTOM])
	.loc 1 148 15
	movq	-16(%rbp), %rax	# box, tmp98
	addq	$4, %rax	#, _7
	movl	(%rax), %eax	# *_7, _8
# r_main.c:148:     if (y< box[BOXBOTTOM])
	.loc 1 148 8
	cmpl	%eax, -8(%rbp)	# _8, y
	jge	.L4	#,
# r_main.c:149: 	box[BOXBOTTOM] = y;
	.loc 1 149 5
	movq	-16(%rbp), %rax	# box, tmp99
	leaq	4(%rax), %rdx	#, _9
# r_main.c:149: 	box[BOXBOTTOM] = y;
	.loc 1 149 17
	movl	-8(%rbp), %eax	# y, tmp100
	movl	%eax, (%rdx)	# tmp100, *_9
.L4:
# r_main.c:150:     if (y> box[BOXTOP])
	.loc 1 150 15
	movq	-16(%rbp), %rax	# box, tmp101
	movl	(%rax), %eax	# *box_15(D), _10
# r_main.c:150:     if (y> box[BOXTOP])
	.loc 1 150 8
	cmpl	%eax, -8(%rbp)	# _10, y
	jle	.L6	#,
# r_main.c:151: 	box[BOXTOP] = y;
	.loc 1 151 14
	movq	-16(%rbp), %rax	# box, tmp102
	movl	-8(%rbp), %edx	# y, tmp103
	movl	%edx, (%rax)	# tmp103, *box_15(D)
.L6:
# r_main.c:152: }
	.loc 1 152 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	R_AddPointToBox, .-R_AddPointToBox
	.globl	R_PointOnSide
	.type	R_PointOnSide, @function
R_PointOnSide:
.LFB7:
	.loc 1 166 1
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
	movq	%rdx, -32(%rbp)	# node, node
# r_main.c:172:     if (!node->dx)
	.loc 1 172 14
	movq	-32(%rbp), %rax	# node, tmp109
	movl	8(%rax), %eax	# node_29(D)->dx, _1
# r_main.c:172:     if (!node->dx)
	.loc 1 172 8
	testl	%eax, %eax	# _1
	jne	.L8	#,
# r_main.c:174: 	if (x <= node->x)
	.loc 1 174 15
	movq	-32(%rbp), %rax	# node, tmp110
	movl	(%rax), %eax	# node_29(D)->x, _2
# r_main.c:174: 	if (x <= node->x)
	.loc 1 174 5
	cmpl	%eax, -20(%rbp)	# _2, x
	jg	.L9	#,
# r_main.c:175: 	    return node->dy > 0;
	.loc 1 175 17
	movq	-32(%rbp), %rax	# node, tmp111
	movl	12(%rax), %eax	# node_29(D)->dy, _3
# r_main.c:175: 	    return node->dy > 0;
	.loc 1 175 22
	testl	%eax, %eax	# _3
	setg	%al	#, _4
	movzbl	%al, %eax	# _4, _26
	jmp	.L10	#
.L9:
# r_main.c:177: 	return node->dy < 0;
	.loc 1 177 13
	movq	-32(%rbp), %rax	# node, tmp112
	movl	12(%rax), %eax	# node_29(D)->dy, _5
# r_main.c:177: 	return node->dy < 0;
	.loc 1 177 18
	shrl	$31, %eax	#, tmp113
	movzbl	%al, %eax	# _6, _26
	jmp	.L10	#
.L8:
# r_main.c:179:     if (!node->dy)
	.loc 1 179 14
	movq	-32(%rbp), %rax	# node, tmp114
	movl	12(%rax), %eax	# node_29(D)->dy, _7
# r_main.c:179:     if (!node->dy)
	.loc 1 179 8
	testl	%eax, %eax	# _7
	jne	.L11	#,
# r_main.c:181: 	if (y <= node->y)
	.loc 1 181 15
	movq	-32(%rbp), %rax	# node, tmp115
	movl	4(%rax), %eax	# node_29(D)->y, _8
# r_main.c:181: 	if (y <= node->y)
	.loc 1 181 5
	cmpl	%eax, -24(%rbp)	# _8, y
	jg	.L12	#,
# r_main.c:182: 	    return node->dx < 0;
	.loc 1 182 17
	movq	-32(%rbp), %rax	# node, tmp116
	movl	8(%rax), %eax	# node_29(D)->dx, _9
# r_main.c:182: 	    return node->dx < 0;
	.loc 1 182 22
	shrl	$31, %eax	#, tmp117
	movzbl	%al, %eax	# _10, _26
	jmp	.L10	#
.L12:
# r_main.c:184: 	return node->dx > 0;
	.loc 1 184 13
	movq	-32(%rbp), %rax	# node, tmp118
	movl	8(%rax), %eax	# node_29(D)->dx, _11
# r_main.c:184: 	return node->dx > 0;
	.loc 1 184 18
	testl	%eax, %eax	# _11
	setg	%al	#, _12
	movzbl	%al, %eax	# _12, _26
	jmp	.L10	#
.L11:
# r_main.c:187:     dx = (x - node->x);
	.loc 1 187 19
	movq	-32(%rbp), %rax	# node, tmp119
	movl	(%rax), %eax	# node_29(D)->x, _13
# r_main.c:187:     dx = (x - node->x);
	.loc 1 187 8
	movl	-20(%rbp), %edx	# x, tmp123
	subl	%eax, %edx	# _13, tmp122
	movl	%edx, -16(%rbp)	# tmp122, dx
# r_main.c:188:     dy = (y - node->y);
	.loc 1 188 19
	movq	-32(%rbp), %rax	# node, tmp124
	movl	4(%rax), %eax	# node_29(D)->y, _14
# r_main.c:188:     dy = (y - node->y);
	.loc 1 188 8
	movl	-24(%rbp), %edx	# y, tmp128
	subl	%eax, %edx	# _14, tmp127
	movl	%edx, -12(%rbp)	# tmp127, dy
# r_main.c:191:     if ( (node->dy ^ node->dx ^ dx ^ dy)&0x80000000 )
	.loc 1 191 15
	movq	-32(%rbp), %rax	# node, tmp129
	movl	12(%rax), %edx	# node_29(D)->dy, _15
# r_main.c:191:     if ( (node->dy ^ node->dx ^ dx ^ dy)&0x80000000 )
	.loc 1 191 26
	movq	-32(%rbp), %rax	# node, tmp130
	movl	8(%rax), %eax	# node_29(D)->dx, _16
# r_main.c:191:     if ( (node->dy ^ node->dx ^ dx ^ dy)&0x80000000 )
	.loc 1 191 20
	xorl	%edx, %eax	# _15, _17
# r_main.c:191:     if ( (node->dy ^ node->dx ^ dx ^ dy)&0x80000000 )
	.loc 1 191 31
	xorl	-16(%rbp), %eax	# dx, _18
# r_main.c:191:     if ( (node->dy ^ node->dx ^ dx ^ dy)&0x80000000 )
	.loc 1 191 36
	xorl	-12(%rbp), %eax	# dy, _19
# r_main.c:191:     if ( (node->dy ^ node->dx ^ dx ^ dy)&0x80000000 )
	.loc 1 191 8
	testl	%eax, %eax	# _19
	jns	.L13	#,
# r_main.c:193: 	if  ( (node->dy ^ dx) & 0x80000000 )
	.loc 1 193 13
	movq	-32(%rbp), %rax	# node, tmp131
	movl	12(%rax), %eax	# node_29(D)->dy, _20
# r_main.c:193: 	if  ( (node->dy ^ dx) & 0x80000000 )
	.loc 1 193 18
	xorl	-16(%rbp), %eax	# dx, _21
# r_main.c:193: 	if  ( (node->dy ^ dx) & 0x80000000 )
	.loc 1 193 6
	testl	%eax, %eax	# _21
	jns	.L14	#,
# r_main.c:196: 	    return 1;
	.loc 1 196 13
	movl	$1, %eax	#, _26
	jmp	.L10	#
.L14:
# r_main.c:198: 	return 0;
	.loc 1 198 9
	movl	$0, %eax	#, _26
	jmp	.L10	#
.L13:
# r_main.c:201:     left = FixedMul ( node->dy>>FRACBITS , dx );
	.loc 1 201 27
	movq	-32(%rbp), %rax	# node, tmp132
	movl	12(%rax), %eax	# node_29(D)->dy, _22
# r_main.c:201:     left = FixedMul ( node->dy>>FRACBITS , dx );
	.loc 1 201 12
	sarl	$16, %eax	#, _22
	movl	%eax, %edx	# _22, _23
	movl	-16(%rbp), %eax	# dx, tmp133
	movl	%eax, %esi	# tmp133,
	movl	%edx, %edi	# _23,
	call	FixedMul@PLT	#
	movl	%eax, -8(%rbp)	# tmp134, left
# r_main.c:202:     right = FixedMul ( dy , node->dx>>FRACBITS );
	.loc 1 202 33
	movq	-32(%rbp), %rax	# node, tmp135
	movl	8(%rax), %eax	# node_29(D)->dx, _24
# r_main.c:202:     right = FixedMul ( dy , node->dx>>FRACBITS );
	.loc 1 202 13
	sarl	$16, %eax	#, _24
	movl	%eax, %edx	# _24, _25
	movl	-12(%rbp), %eax	# dy, tmp136
	movl	%edx, %esi	# _25,
	movl	%eax, %edi	# tmp136,
	call	FixedMul@PLT	#
	movl	%eax, -4(%rbp)	# tmp137, right
# r_main.c:204:     if (right < left)
	.loc 1 204 8
	movl	-4(%rbp), %eax	# right, tmp138
	cmpl	-8(%rbp), %eax	# left, tmp138
	jge	.L15	#,
# r_main.c:207: 	return 0;
	.loc 1 207 9
	movl	$0, %eax	#, _26
	jmp	.L10	#
.L15:
# r_main.c:210:     return 1;			
	.loc 1 210 12
	movl	$1, %eax	#, _26
.L10:
# r_main.c:211: }
	.loc 1 211 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	R_PointOnSide, .-R_PointOnSide
	.globl	R_PointOnSegSide
	.type	R_PointOnSegSide, @function
R_PointOnSegSide:
.LFB8:
	.loc 1 219 1
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
	movq	%rdx, -48(%rbp)	# line, line
# r_main.c:229:     lx = line->v1->x;
	.loc 1 229 14
	movq	-48(%rbp), %rax	# line, tmp100
	movq	(%rax), %rax	# line_20(D)->v1, _1
# r_main.c:229:     lx = line->v1->x;
	.loc 1 229 8
	movl	(%rax), %eax	# _1->x, tmp101
	movl	%eax, -32(%rbp)	# tmp101, lx
# r_main.c:230:     ly = line->v1->y;
	.loc 1 230 14
	movq	-48(%rbp), %rax	# line, tmp102
	movq	(%rax), %rax	# line_20(D)->v1, _2
# r_main.c:230:     ly = line->v1->y;
	.loc 1 230 8
	movl	4(%rax), %eax	# _2->y, tmp103
	movl	%eax, -28(%rbp)	# tmp103, ly
# r_main.c:232:     ldx = line->v2->x - lx;
	.loc 1 232 15
	movq	-48(%rbp), %rax	# line, tmp104
	movq	8(%rax), %rax	# line_20(D)->v2, _3
# r_main.c:232:     ldx = line->v2->x - lx;
	.loc 1 232 19
	movl	(%rax), %eax	# _3->x, _4
# r_main.c:232:     ldx = line->v2->x - lx;
	.loc 1 232 9
	subl	-32(%rbp), %eax	# lx, tmp106
	movl	%eax, -24(%rbp)	# tmp106, ldx
# r_main.c:233:     ldy = line->v2->y - ly;
	.loc 1 233 15
	movq	-48(%rbp), %rax	# line, tmp107
	movq	8(%rax), %rax	# line_20(D)->v2, _5
# r_main.c:233:     ldy = line->v2->y - ly;
	.loc 1 233 19
	movl	4(%rax), %eax	# _5->y, _6
# r_main.c:233:     ldy = line->v2->y - ly;
	.loc 1 233 9
	subl	-28(%rbp), %eax	# ly, tmp109
	movl	%eax, -20(%rbp)	# tmp109, ldy
# r_main.c:235:     if (!ldx)
	.loc 1 235 8
	cmpl	$0, -24(%rbp)	#, ldx
	jne	.L17	#,
# r_main.c:237: 	if (x <= lx)
	.loc 1 237 5
	movl	-36(%rbp), %eax	# x, tmp110
	cmpl	-32(%rbp), %eax	# lx, tmp110
	jg	.L18	#,
# r_main.c:238: 	    return ldy > 0;
	.loc 1 238 17
	cmpl	$0, -20(%rbp)	#, ldy
	setg	%al	#, _7
	movzbl	%al, %eax	# _7, _17
	jmp	.L19	#
.L18:
# r_main.c:240: 	return ldy < 0;
	.loc 1 240 13
	movl	-20(%rbp), %eax	# ldy, tmp112
	shrl	$31, %eax	#, tmp111
	movzbl	%al, %eax	# _8, _17
	jmp	.L19	#
.L17:
# r_main.c:242:     if (!ldy)
	.loc 1 242 8
	cmpl	$0, -20(%rbp)	#, ldy
	jne	.L20	#,
# r_main.c:244: 	if (y <= ly)
	.loc 1 244 5
	movl	-40(%rbp), %eax	# y, tmp113
	cmpl	-28(%rbp), %eax	# ly, tmp113
	jg	.L21	#,
# r_main.c:245: 	    return ldx < 0;
	.loc 1 245 17
	movl	-24(%rbp), %eax	# ldx, tmp115
	shrl	$31, %eax	#, tmp114
	movzbl	%al, %eax	# _9, _17
	jmp	.L19	#
.L21:
# r_main.c:247: 	return ldx > 0;
	.loc 1 247 13
	cmpl	$0, -24(%rbp)	#, ldx
	setg	%al	#, _10
	movzbl	%al, %eax	# _10, _17
	jmp	.L19	#
.L20:
# r_main.c:250:     dx = (x - lx);
	.loc 1 250 8
	movl	-36(%rbp), %eax	# x, tmp119
	subl	-32(%rbp), %eax	# lx, tmp118
	movl	%eax, -16(%rbp)	# tmp118, dx
# r_main.c:251:     dy = (y - ly);
	.loc 1 251 8
	movl	-40(%rbp), %eax	# y, tmp123
	subl	-28(%rbp), %eax	# ly, tmp122
	movl	%eax, -12(%rbp)	# tmp122, dy
# r_main.c:254:     if ( (ldy ^ ldx ^ dx ^ dy)&0x80000000 )
	.loc 1 254 15
	movl	-20(%rbp), %eax	# ldy, tmp124
	xorl	-24(%rbp), %eax	# ldx, _11
# r_main.c:254:     if ( (ldy ^ ldx ^ dx ^ dy)&0x80000000 )
	.loc 1 254 21
	xorl	-16(%rbp), %eax	# dx, _12
# r_main.c:254:     if ( (ldy ^ ldx ^ dx ^ dy)&0x80000000 )
	.loc 1 254 26
	xorl	-12(%rbp), %eax	# dy, _13
# r_main.c:254:     if ( (ldy ^ ldx ^ dx ^ dy)&0x80000000 )
	.loc 1 254 8
	testl	%eax, %eax	# _13
	jns	.L22	#,
# r_main.c:256: 	if  ( (ldy ^ dx) & 0x80000000 )
	.loc 1 256 13
	movl	-20(%rbp), %eax	# ldy, tmp125
	xorl	-16(%rbp), %eax	# dx, _14
# r_main.c:256: 	if  ( (ldy ^ dx) & 0x80000000 )
	.loc 1 256 6
	testl	%eax, %eax	# _14
	jns	.L23	#,
# r_main.c:259: 	    return 1;
	.loc 1 259 13
	movl	$1, %eax	#, _17
	jmp	.L19	#
.L23:
# r_main.c:261: 	return 0;
	.loc 1 261 9
	movl	$0, %eax	#, _17
	jmp	.L19	#
.L22:
# r_main.c:264:     left = FixedMul ( ldy>>FRACBITS , dx );
	.loc 1 264 12
	movl	-20(%rbp), %eax	# ldy, tmp126
	sarl	$16, %eax	#, tmp126
	movl	%eax, %edx	# tmp126, _15
	movl	-16(%rbp), %eax	# dx, tmp127
	movl	%eax, %esi	# tmp127,
	movl	%edx, %edi	# _15,
	call	FixedMul@PLT	#
	movl	%eax, -8(%rbp)	# tmp128, left
# r_main.c:265:     right = FixedMul ( dy , ldx>>FRACBITS );
	.loc 1 265 13
	movl	-24(%rbp), %eax	# ldx, tmp129
	sarl	$16, %eax	#, tmp129
	movl	%eax, %edx	# tmp129, _16
	movl	-12(%rbp), %eax	# dy, tmp130
	movl	%edx, %esi	# _16,
	movl	%eax, %edi	# tmp130,
	call	FixedMul@PLT	#
	movl	%eax, -4(%rbp)	# tmp131, right
# r_main.c:267:     if (right < left)
	.loc 1 267 8
	movl	-4(%rbp), %eax	# right, tmp132
	cmpl	-8(%rbp), %eax	# left, tmp132
	jge	.L24	#,
# r_main.c:270: 	return 0;
	.loc 1 270 9
	movl	$0, %eax	#, _17
	jmp	.L19	#
.L24:
# r_main.c:273:     return 1;			
	.loc 1 273 12
	movl	$1, %eax	#, _17
.L19:
# r_main.c:274: }
	.loc 1 274 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	R_PointOnSegSide, .-R_PointOnSegSide
	.globl	R_PointToAngle
	.type	R_PointToAngle, @function
R_PointToAngle:
.LFB9:
	.loc 1 295 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# x, x
	movl	%esi, -8(%rbp)	# y, y
# r_main.c:296:     x -= viewx;
	.loc 1 296 7
	movl	viewx(%rip), %eax	# viewx, viewx.0_1
	subl	%eax, -4(%rbp)	# viewx.0_1, x
# r_main.c:297:     y -= viewy;
	.loc 1 297 7
	movl	viewy(%rip), %eax	# viewy, viewy.1_2
	subl	%eax, -8(%rbp)	# viewy.1_2, y
# r_main.c:299:     if ( (!x) && (!y) )
	.loc 1 299 8
	cmpl	$0, -4(%rbp)	#, x
	jne	.L26	#,
# r_main.c:299:     if ( (!x) && (!y) )
	.loc 1 299 15 discriminator 1
	cmpl	$0, -8(%rbp)	#, y
	jne	.L26	#,
# r_main.c:300: 	return 0;
	.loc 1 300 9
	movl	$0, %eax	#, _34
	jmp	.L27	#
.L26:
# r_main.c:302:     if (x>= 0)
	.loc 1 302 8
	cmpl	$0, -4(%rbp)	#, x
	js	.L28	#,
# r_main.c:305: 	if (y>= 0)
	.loc 1 305 5
	cmpl	$0, -8(%rbp)	#, y
	js	.L29	#,
# r_main.c:309: 	    if (x>y)
	.loc 1 309 9
	movl	-4(%rbp), %eax	# x, tmp117
	cmpl	-8(%rbp), %eax	# y, tmp117
	jle	.L30	#,
# r_main.c:312: 		return tantoangle[ SlopeDiv(y,x)];
	.loc 1 312 22
	movl	-4(%rbp), %edx	# x, x.2_3
	movl	-8(%rbp), %eax	# y, y.3_4
	movl	%edx, %esi	# x.2_3,
	movl	%eax, %edi	# y.3_4,
	call	SlopeDiv@PLT	#
# r_main.c:312: 		return tantoangle[ SlopeDiv(y,x)];
	.loc 1 312 20 discriminator 1
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp119
	leaq	tantoangle(%rip), %rax	#, tmp120
	movl	(%rdx,%rax), %eax	# tantoangle[_5], _34
# r_main.c:312: 		return tantoangle[ SlopeDiv(y,x)];
	.loc 1 312 20 is_stmt 0
	jmp	.L27	#
.L30:
# r_main.c:317: 		return ANG90-1-tantoangle[ SlopeDiv(x,y)];
	.loc 1 317 30 is_stmt 1
	movl	-8(%rbp), %edx	# y, y.4_6
	movl	-4(%rbp), %eax	# x, x.5_7
	movl	%edx, %esi	# y.4_6,
	movl	%eax, %edi	# x.5_7,
	call	SlopeDiv@PLT	#
# r_main.c:317: 		return ANG90-1-tantoangle[ SlopeDiv(x,y)];
	.loc 1 317 28 discriminator 1
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp122
	leaq	tantoangle(%rip), %rax	#, tmp123
	movl	(%rdx,%rax), %edx	# tantoangle[_8], _9
# r_main.c:317: 		return ANG90-1-tantoangle[ SlopeDiv(x,y)];
	.loc 1 317 17 discriminator 1
	movl	$1073741823, %eax	#, tmp124
	subl	%edx, %eax	# _9, _34
# r_main.c:317: 		return ANG90-1-tantoangle[ SlopeDiv(x,y)];
	.loc 1 317 17 is_stmt 0
	jmp	.L27	#
.L29:
# r_main.c:323: 	    y = -y;
	.loc 1 323 8 is_stmt 1
	negl	-8(%rbp)	# y
# r_main.c:325: 	    if (x>y)
	.loc 1 325 9
	movl	-4(%rbp), %eax	# x, tmp125
	cmpl	-8(%rbp), %eax	# y, tmp125
	jle	.L31	#,
# r_main.c:328: 		return -tantoangle[SlopeDiv(y,x)];
	.loc 1 328 22
	movl	-4(%rbp), %edx	# x, x.6_10
	movl	-8(%rbp), %eax	# y, y.7_11
	movl	%edx, %esi	# x.6_10,
	movl	%eax, %edi	# y.7_11,
	call	SlopeDiv@PLT	#
# r_main.c:328: 		return -tantoangle[SlopeDiv(y,x)];
	.loc 1 328 21 discriminator 1
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp127
	leaq	tantoangle(%rip), %rax	#, tmp128
	movl	(%rdx,%rax), %eax	# tantoangle[_12], _13
# r_main.c:328: 		return -tantoangle[SlopeDiv(y,x)];
	.loc 1 328 10 discriminator 1
	negl	%eax	# _34
# r_main.c:328: 		return -tantoangle[SlopeDiv(y,x)];
	.loc 1 328 10 is_stmt 0
	jmp	.L27	#
.L31:
# r_main.c:333: 		return ANG270+tantoangle[ SlopeDiv(x,y)];
	.loc 1 333 29 is_stmt 1
	movl	-8(%rbp), %edx	# y, y.8_14
	movl	-4(%rbp), %eax	# x, x.9_15
	movl	%edx, %esi	# y.8_14,
	movl	%eax, %edi	# x.9_15,
	call	SlopeDiv@PLT	#
# r_main.c:333: 		return ANG270+tantoangle[ SlopeDiv(x,y)];
	.loc 1 333 27 discriminator 1
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp130
	leaq	tantoangle(%rip), %rax	#, tmp131
	movl	(%rdx,%rax), %eax	# tantoangle[_16], _17
# r_main.c:333: 		return ANG270+tantoangle[ SlopeDiv(x,y)];
	.loc 1 333 16 discriminator 1
	subl	$1073741824, %eax	#, _34
# r_main.c:333: 		return ANG270+tantoangle[ SlopeDiv(x,y)];
	.loc 1 333 16 is_stmt 0
	jmp	.L27	#
.L28:
# r_main.c:340: 	x = -x;
	.loc 1 340 4 is_stmt 1
	negl	-4(%rbp)	# x
# r_main.c:342: 	if (y>= 0)
	.loc 1 342 5
	cmpl	$0, -8(%rbp)	#, y
	js	.L32	#,
# r_main.c:345: 	    if (x>y)
	.loc 1 345 9
	movl	-4(%rbp), %eax	# x, tmp132
	cmpl	-8(%rbp), %eax	# y, tmp132
	jle	.L33	#,
# r_main.c:348: 		return ANG180-1-tantoangle[ SlopeDiv(y,x)];
	.loc 1 348 31
	movl	-4(%rbp), %edx	# x, x.10_18
	movl	-8(%rbp), %eax	# y, y.11_19
	movl	%edx, %esi	# x.10_18,
	movl	%eax, %edi	# y.11_19,
	call	SlopeDiv@PLT	#
# r_main.c:348: 		return ANG180-1-tantoangle[ SlopeDiv(y,x)];
	.loc 1 348 29 discriminator 1
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp134
	leaq	tantoangle(%rip), %rax	#, tmp135
	movl	(%rdx,%rax), %edx	# tantoangle[_20], _21
# r_main.c:348: 		return ANG180-1-tantoangle[ SlopeDiv(y,x)];
	.loc 1 348 18 discriminator 1
	movl	$2147483647, %eax	#, tmp136
	subl	%edx, %eax	# _21, _34
# r_main.c:348: 		return ANG180-1-tantoangle[ SlopeDiv(y,x)];
	.loc 1 348 18 is_stmt 0
	jmp	.L27	#
.L33:
# r_main.c:353: 		return ANG90+ tantoangle[ SlopeDiv(x,y)];
	.loc 1 353 29 is_stmt 1
	movl	-8(%rbp), %edx	# y, y.12_22
	movl	-4(%rbp), %eax	# x, x.13_23
	movl	%edx, %esi	# y.12_22,
	movl	%eax, %edi	# x.13_23,
	call	SlopeDiv@PLT	#
# r_main.c:353: 		return ANG90+ tantoangle[ SlopeDiv(x,y)];
	.loc 1 353 27 discriminator 1
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp138
	leaq	tantoangle(%rip), %rax	#, tmp139
	movl	(%rdx,%rax), %eax	# tantoangle[_24], _25
# r_main.c:353: 		return ANG90+ tantoangle[ SlopeDiv(x,y)];
	.loc 1 353 15 discriminator 1
	addl	$1073741824, %eax	#, _34
# r_main.c:353: 		return ANG90+ tantoangle[ SlopeDiv(x,y)];
	.loc 1 353 15 is_stmt 0
	jmp	.L27	#
.L32:
# r_main.c:359: 	    y = -y;
	.loc 1 359 8 is_stmt 1
	negl	-8(%rbp)	# y
# r_main.c:361: 	    if (x>y)
	.loc 1 361 9
	movl	-4(%rbp), %eax	# x, tmp140
	cmpl	-8(%rbp), %eax	# y, tmp140
	jle	.L34	#,
# r_main.c:364: 		return ANG180+tantoangle[ SlopeDiv(y,x)];
	.loc 1 364 29
	movl	-4(%rbp), %edx	# x, x.14_26
	movl	-8(%rbp), %eax	# y, y.15_27
	movl	%edx, %esi	# x.14_26,
	movl	%eax, %edi	# y.15_27,
	call	SlopeDiv@PLT	#
# r_main.c:364: 		return ANG180+tantoangle[ SlopeDiv(y,x)];
	.loc 1 364 27 discriminator 1
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp142
	leaq	tantoangle(%rip), %rax	#, tmp143
	movl	(%rdx,%rax), %eax	# tantoangle[_28], _29
# r_main.c:364: 		return ANG180+tantoangle[ SlopeDiv(y,x)];
	.loc 1 364 16 discriminator 1
	addl	$-2147483648, %eax	#, _34
# r_main.c:364: 		return ANG180+tantoangle[ SlopeDiv(y,x)];
	.loc 1 364 16 is_stmt 0
	jmp	.L27	#
.L34:
# r_main.c:369: 		return ANG270-1-tantoangle[ SlopeDiv(x,y)];
	.loc 1 369 31 is_stmt 1
	movl	-8(%rbp), %edx	# y, y.16_30
	movl	-4(%rbp), %eax	# x, x.17_31
	movl	%edx, %esi	# y.16_30,
	movl	%eax, %edi	# x.17_31,
	call	SlopeDiv@PLT	#
# r_main.c:369: 		return ANG270-1-tantoangle[ SlopeDiv(x,y)];
	.loc 1 369 29 discriminator 1
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp145
	leaq	tantoangle(%rip), %rax	#, tmp146
	movl	(%rdx,%rax), %edx	# tantoangle[_32], _33
# r_main.c:369: 		return ANG270-1-tantoangle[ SlopeDiv(x,y)];
	.loc 1 369 18 discriminator 1
	movl	$-1073741825, %eax	#, tmp147
	subl	%edx, %eax	# _33, _34
.L27:
# r_main.c:374: }
	.loc 1 374 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	R_PointToAngle, .-R_PointToAngle
	.globl	R_PointToAngle2
	.type	R_PointToAngle2, @function
R_PointToAngle2:
.LFB10:
	.loc 1 383 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# x1, x1
	movl	%esi, -8(%rbp)	# y1, y1
	movl	%edx, -12(%rbp)	# x2, x2
	movl	%ecx, -16(%rbp)	# y2, y2
# r_main.c:384:     viewx = x1;
	.loc 1 384 11
	movl	-4(%rbp), %eax	# x1, tmp84
	movl	%eax, viewx(%rip)	# tmp84, viewx
# r_main.c:385:     viewy = y1;
	.loc 1 385 11
	movl	-8(%rbp), %eax	# y1, tmp85
	movl	%eax, viewy(%rip)	# tmp85, viewy
# r_main.c:387:     return R_PointToAngle (x2, y2);
	.loc 1 387 12
	movl	-16(%rbp), %edx	# y2, tmp86
	movl	-12(%rbp), %eax	# x2, tmp87
	movl	%edx, %esi	# tmp86,
	movl	%eax, %edi	# tmp87,
	call	R_PointToAngle	#
# r_main.c:388: }
	.loc 1 388 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	R_PointToAngle2, .-R_PointToAngle2
	.globl	R_PointToDist
	.type	R_PointToDist, @function
R_PointToDist:
.LFB11:
	.loc 1 395 1
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
# r_main.c:402:     dx = abs(x - viewx);
	.loc 1 402 10
	movl	viewx(%rip), %edx	# viewx, viewx.18_1
# r_main.c:402:     dx = abs(x - viewx);
	.loc 1 402 16
	movl	-36(%rbp), %eax	# x, tmp94
	subl	%edx, %eax	# viewx.18_1, _2
# r_main.c:402:     dx = abs(x - viewx);
	.loc 1 402 8
	movl	%eax, %edx	# _2, tmp114
	negl	%edx	# tmp114
	cmovns	%edx, %eax	# tmp114,, tmp95
	movl	%eax, -20(%rbp)	# tmp95, dx
# r_main.c:403:     dy = abs(y - viewy);
	.loc 1 403 10
	movl	viewy(%rip), %edx	# viewy, viewy.19_3
# r_main.c:403:     dy = abs(y - viewy);
	.loc 1 403 16
	movl	-40(%rbp), %eax	# y, tmp96
	subl	%edx, %eax	# viewy.19_3, _4
# r_main.c:403:     dy = abs(y - viewy);
	.loc 1 403 8
	movl	%eax, %edx	# _4, tmp115
	negl	%edx	# tmp115
	cmovns	%edx, %eax	# tmp115,, tmp97
	movl	%eax, -16(%rbp)	# tmp97, dy
# r_main.c:405:     if (dy>dx)
	.loc 1 405 8
	movl	-16(%rbp), %eax	# dy, tmp98
	cmpl	-20(%rbp), %eax	# dx, tmp98
	jle	.L38	#,
# r_main.c:407: 	temp = dx;
	.loc 1 407 7
	movl	-20(%rbp), %eax	# dx, tmp99
	movl	%eax, -12(%rbp)	# tmp99, temp
# r_main.c:408: 	dx = dy;
	.loc 1 408 5
	movl	-16(%rbp), %eax	# dy, tmp100
	movl	%eax, -20(%rbp)	# tmp100, dx
# r_main.c:409: 	dy = temp;
	.loc 1 409 5
	movl	-12(%rbp), %eax	# temp, tmp101
	movl	%eax, -16(%rbp)	# tmp101, dy
.L38:
# r_main.c:412:     angle = (tantoangle[ FixedDiv(dy,dx)>>DBITS ]+ANG90) >> ANGLETOFINESHIFT;
	.loc 1 412 26
	movl	-20(%rbp), %edx	# dx, tmp102
	movl	-16(%rbp), %eax	# dy, tmp103
	movl	%edx, %esi	# tmp102,
	movl	%eax, %edi	# tmp103,
	call	FixedDiv@PLT	#
# r_main.c:412:     angle = (tantoangle[ FixedDiv(dy,dx)>>DBITS ]+ANG90) >> ANGLETOFINESHIFT;
	.loc 1 412 41 discriminator 1
	sarl	$5, %eax	#, _6
# r_main.c:412:     angle = (tantoangle[ FixedDiv(dy,dx)>>DBITS ]+ANG90) >> ANGLETOFINESHIFT;
	.loc 1 412 24 discriminator 1
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp105
	leaq	tantoangle(%rip), %rax	#, tmp106
	movl	(%rdx,%rax), %eax	# tantoangle[_6], _7
# r_main.c:412:     angle = (tantoangle[ FixedDiv(dy,dx)>>DBITS ]+ANG90) >> ANGLETOFINESHIFT;
	.loc 1 412 50 discriminator 1
	addl	$1073741824, %eax	#, _8
# r_main.c:412:     angle = (tantoangle[ FixedDiv(dy,dx)>>DBITS ]+ANG90) >> ANGLETOFINESHIFT;
	.loc 1 412 58 discriminator 1
	shrl	$19, %eax	#, _9
# r_main.c:412:     angle = (tantoangle[ FixedDiv(dy,dx)>>DBITS ]+ANG90) >> ANGLETOFINESHIFT;
	.loc 1 412 11 discriminator 1
	movl	%eax, -8(%rbp)	# _9, angle
# r_main.c:415:     dist = FixedDiv (dx, finesine[angle] );	
	.loc 1 415 12
	movl	-8(%rbp), %eax	# angle, tmp108
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp109
	leaq	finesine(%rip), %rax	#, tmp110
	movl	(%rdx,%rax), %edx	# finesine[angle_22], _10
	movl	-20(%rbp), %eax	# dx, tmp111
	movl	%edx, %esi	# _10,
	movl	%eax, %edi	# tmp111,
	call	FixedDiv@PLT	#
	movl	%eax, -4(%rbp)	# tmp112, dist
# r_main.c:417:     return dist;
	.loc 1 417 12
	movl	-4(%rbp), %eax	# dist, _25
# r_main.c:418: }
	.loc 1 418 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	R_PointToDist, .-R_PointToDist
	.globl	R_InitPointToAngle
	.type	R_InitPointToAngle, @function
R_InitPointToAngle:
.LFB12:
	.loc 1 427 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# r_main.c:443: }
	.loc 1 443 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	R_InitPointToAngle, .-R_InitPointToAngle
	.globl	R_ScaleFromGlobalAngle
	.type	R_ScaleFromGlobalAngle, @function
R_ScaleFromGlobalAngle:
.LFB13:
	.loc 1 454 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# visangle, visangle
# r_main.c:480:     anglea = ANG90 + (visangle-viewangle);
	.loc 1 480 31
	movl	viewangle(%rip), %eax	# viewangle, viewangle.20_1
	movl	-36(%rbp), %edx	# visangle, tmp97
	subl	%eax, %edx	# viewangle.20_1, _2
# r_main.c:480:     anglea = ANG90 + (visangle-viewangle);
	.loc 1 480 20
	leal	1073741824(%rdx), %eax	#, _3
# r_main.c:480:     anglea = ANG90 + (visangle-viewangle);
	.loc 1 480 12
	movl	%eax, -24(%rbp)	# _3, anglea
# r_main.c:481:     angleb = ANG90 + (visangle-rw_normalangle);
	.loc 1 481 31
	movl	rw_normalangle(%rip), %eax	# rw_normalangle, rw_normalangle.21_4
	movl	-36(%rbp), %edx	# visangle, tmp98
	subl	%eax, %edx	# rw_normalangle.21_4, _5
# r_main.c:481:     angleb = ANG90 + (visangle-rw_normalangle);
	.loc 1 481 20
	leal	1073741824(%rdx), %eax	#, _6
# r_main.c:481:     angleb = ANG90 + (visangle-rw_normalangle);
	.loc 1 481 12
	movl	%eax, -20(%rbp)	# _6, angleb
# r_main.c:484:     sinea = finesine[anglea>>ANGLETOFINESHIFT];	
	.loc 1 484 28
	movl	-24(%rbp), %eax	# anglea, tmp99
	sarl	$19, %eax	#, _7
# r_main.c:484:     sinea = finesine[anglea>>ANGLETOFINESHIFT];	
	.loc 1 484 11
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp101
	leaq	finesine(%rip), %rax	#, tmp102
	movl	(%rdx,%rax), %eax	# finesine[_7], tmp103
	movl	%eax, -16(%rbp)	# tmp103, sinea
# r_main.c:485:     sineb = finesine[angleb>>ANGLETOFINESHIFT];
	.loc 1 485 28
	movl	-20(%rbp), %eax	# angleb, tmp104
	sarl	$19, %eax	#, _8
# r_main.c:485:     sineb = finesine[angleb>>ANGLETOFINESHIFT];
	.loc 1 485 11
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp106
	leaq	finesine(%rip), %rax	#, tmp107
	movl	(%rdx,%rax), %eax	# finesine[_8], tmp108
	movl	%eax, -12(%rbp)	# tmp108, sineb
# r_main.c:486:     num = FixedMul(projection,sineb)<<detailshift;
	.loc 1 486 11
	movl	projection(%rip), %eax	# projection, projection.22_9
	movl	-12(%rbp), %edx	# sineb, tmp109
	movl	%edx, %esi	# tmp109,
	movl	%eax, %edi	# projection.22_9,
	call	FixedMul@PLT	#
	movl	%eax, %edx	#, _10
# r_main.c:486:     num = FixedMul(projection,sineb)<<detailshift;
	.loc 1 486 37 discriminator 1
	movl	detailshift(%rip), %eax	# detailshift, detailshift.23_11
# r_main.c:486:     num = FixedMul(projection,sineb)<<detailshift;
	.loc 1 486 9 discriminator 1
	movl	%eax, %ecx	# detailshift.23_11, tmp120
	sall	%cl, %edx	# tmp120, _10
	movl	%edx, %eax	# _10, tmp110
	movl	%eax, -8(%rbp)	# tmp110, num
# r_main.c:487:     den = FixedMul(rw_distance,sinea);
	.loc 1 487 11
	movl	rw_distance(%rip), %eax	# rw_distance, rw_distance.24_12
	movl	-16(%rbp), %edx	# sinea, tmp111
	movl	%edx, %esi	# tmp111,
	movl	%eax, %edi	# rw_distance.24_12,
	call	FixedMul@PLT	#
	movl	%eax, -4(%rbp)	# tmp112, den
# r_main.c:489:     if (den > num>>16)
	.loc 1 489 18
	movl	-8(%rbp), %eax	# num, tmp113
	sarl	$16, %eax	#, _13
# r_main.c:489:     if (den > num>>16)
	.loc 1 489 8
	cmpl	%eax, -4(%rbp)	# _13, den
	jle	.L42	#,
# r_main.c:491: 	scale = FixedDiv (num, den);
	.loc 1 491 10
	movl	-4(%rbp), %edx	# den, tmp114
	movl	-8(%rbp), %eax	# num, tmp115
	movl	%edx, %esi	# tmp114,
	movl	%eax, %edi	# tmp115,
	call	FixedDiv@PLT	#
	movl	%eax, -28(%rbp)	# tmp116, scale
# r_main.c:493: 	if (scale > 64*FRACUNIT)
	.loc 1 493 5
	cmpl	$4194304, -28(%rbp)	#, scale
	jle	.L43	#,
# r_main.c:494: 	    scale = 64*FRACUNIT;
	.loc 1 494 12
	movl	$4194304, -28(%rbp)	#, scale
	jmp	.L44	#
.L43:
# r_main.c:495: 	else if (scale < 256)
	.loc 1 495 10
	cmpl	$255, -28(%rbp)	#, scale
	jg	.L44	#,
# r_main.c:496: 	    scale = 256;
	.loc 1 496 12
	movl	$256, -28(%rbp)	#, scale
	jmp	.L44	#
.L42:
# r_main.c:499: 	scale = 64*FRACUNIT;
	.loc 1 499 8
	movl	$4194304, -28(%rbp)	#, scale
.L44:
# r_main.c:501:     return scale;
	.loc 1 501 12
	movl	-28(%rbp), %eax	# scale, _31
# r_main.c:502: }
	.loc 1 502 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE13:
	.size	R_ScaleFromGlobalAngle, .-R_ScaleFromGlobalAngle
	.globl	R_InitTables
	.type	R_InitTables, @function
R_InitTables:
.LFB14:
	.loc 1 510 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# r_main.c:537: }
	.loc 1 537 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE14:
	.size	R_InitTables, .-R_InitTables
	.globl	R_InitTextureMapping
	.type	R_InitTextureMapping, @function
R_InitTextureMapping:
.LFB15:
	.loc 1 545 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# r_main.c:557:     focallength = FixedDiv (centerxfrac,
	.loc 1 557 19
	movl	12288+finetangent(%rip), %edx	# finetangent[3072], _1
	movl	centerxfrac(%rip), %eax	# centerxfrac, centerxfrac.25_2
	movl	%edx, %esi	# _1,
	movl	%eax, %edi	# centerxfrac.25_2,
	call	FixedDiv@PLT	#
	movl	%eax, -4(%rbp)	# tmp107, focallength
# r_main.c:560:     for (i=0 ; i<FINEANGLES/2 ; i++)
	.loc 1 560 11
	movl	$0, -16(%rbp)	#, i
# r_main.c:560:     for (i=0 ; i<FINEANGLES/2 ; i++)
	.loc 1 560 5
	jmp	.L48	#
.L53:
# r_main.c:562: 	if (finetangent[i] > FRACUNIT*2)
	.loc 1 562 17
	movl	-16(%rbp), %eax	# i, tmp109
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp110
	leaq	finetangent(%rip), %rax	#, tmp111
	movl	(%rdx,%rax), %eax	# finetangent[i_26], _3
# r_main.c:562: 	if (finetangent[i] > FRACUNIT*2)
	.loc 1 562 5
	cmpl	$131072, %eax	#, _3
	jle	.L49	#,
# r_main.c:563: 	    t = -1;
	.loc 1 563 8
	movl	$-1, -8(%rbp)	#, t
	jmp	.L50	#
.L49:
# r_main.c:564: 	else if (finetangent[i] < -FRACUNIT*2)
	.loc 1 564 22
	movl	-16(%rbp), %eax	# i, tmp113
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp114
	leaq	finetangent(%rip), %rax	#, tmp115
	movl	(%rdx,%rax), %eax	# finetangent[i_26], _4
# r_main.c:564: 	else if (finetangent[i] < -FRACUNIT*2)
	.loc 1 564 10
	cmpl	$-131072, %eax	#, _4
	jge	.L51	#,
# r_main.c:565: 	    t = viewwidth+1;
	.loc 1 565 19
	movl	viewwidth(%rip), %eax	# viewwidth, viewwidth.26_5
# r_main.c:565: 	    t = viewwidth+1;
	.loc 1 565 8
	addl	$1, %eax	#, tmp116
	movl	%eax, -8(%rbp)	# tmp116, t
	jmp	.L50	#
.L51:
# r_main.c:568: 	    t = FixedMul (finetangent[i], focallength);
	.loc 1 568 10
	movl	-16(%rbp), %eax	# i, tmp118
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp119
	leaq	finetangent(%rip), %rax	#, tmp120
	movl	(%rdx,%rax), %eax	# finetangent[i_26], _6
	movl	-4(%rbp), %edx	# focallength, tmp121
	movl	%edx, %esi	# tmp121,
	movl	%eax, %edi	# _6,
	call	FixedMul@PLT	#
	movl	%eax, -8(%rbp)	# tmp122, t
# r_main.c:569: 	    t = (centerxfrac - t+FRACUNIT-1)>>FRACBITS;
	.loc 1 569 23
	movl	centerxfrac(%rip), %eax	# centerxfrac, centerxfrac.27_7
	subl	-8(%rbp), %eax	# t, _8
# r_main.c:569: 	    t = (centerxfrac - t+FRACUNIT-1)>>FRACBITS;
	.loc 1 569 35
	addl	$65535, %eax	#, _9
# r_main.c:569: 	    t = (centerxfrac - t+FRACUNIT-1)>>FRACBITS;
	.loc 1 569 8
	sarl	$16, %eax	#, tmp123
	movl	%eax, -8(%rbp)	# tmp123, t
# r_main.c:571: 	    if (t < -1)
	.loc 1 571 9
	cmpl	$-1, -8(%rbp)	#, t
	jge	.L52	#,
# r_main.c:572: 		t = -1;
	.loc 1 572 5
	movl	$-1, -8(%rbp)	#, t
	jmp	.L50	#
.L52:
# r_main.c:573: 	    else if (t>viewwidth+1)
	.loc 1 573 26
	movl	viewwidth(%rip), %eax	# viewwidth, viewwidth.28_10
	addl	$1, %eax	#, _11
# r_main.c:573: 	    else if (t>viewwidth+1)
	.loc 1 573 14
	cmpl	%eax, -8(%rbp)	# _11, t
	jle	.L50	#,
# r_main.c:574: 		t = viewwidth+1;
	.loc 1 574 16
	movl	viewwidth(%rip), %eax	# viewwidth, viewwidth.29_12
# r_main.c:574: 		t = viewwidth+1;
	.loc 1 574 5
	addl	$1, %eax	#, tmp124
	movl	%eax, -8(%rbp)	# tmp124, t
.L50:
# r_main.c:576: 	viewangletox[i] = t;
	.loc 1 576 18
	movl	-16(%rbp), %eax	# i, tmp126
	cltq
	leaq	0(,%rax,4), %rcx	#, tmp127
	leaq	viewangletox(%rip), %rdx	#, tmp128
	movl	-8(%rbp), %eax	# t, tmp129
	movl	%eax, (%rcx,%rdx)	# tmp129, viewangletox[i_26]
# r_main.c:560:     for (i=0 ; i<FINEANGLES/2 ; i++)
	.loc 1 560 34 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L48:
# r_main.c:560:     for (i=0 ; i<FINEANGLES/2 ; i++)
	.loc 1 560 17 discriminator 1
	cmpl	$4095, -16(%rbp)	#, i
	jle	.L53	#,
# r_main.c:582:     for (x=0;x<=viewwidth;x++)
	.loc 1 582 11
	movl	$0, -12(%rbp)	#, x
# r_main.c:582:     for (x=0;x<=viewwidth;x++)
	.loc 1 582 5
	jmp	.L54	#
.L57:
# r_main.c:584: 	i = 0;
	.loc 1 584 4
	movl	$0, -16(%rbp)	#, i
# r_main.c:585: 	while (viewangletox[i]>x)
	.loc 1 585 8
	jmp	.L55	#
.L56:
# r_main.c:586: 	    i++;
	.loc 1 586 7
	addl	$1, -16(%rbp)	#, i
.L55:
# r_main.c:585: 	while (viewangletox[i]>x)
	.loc 1 585 21
	movl	-16(%rbp), %eax	# i, tmp131
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp132
	leaq	viewangletox(%rip), %rax	#, tmp133
	movl	(%rdx,%rax), %eax	# viewangletox[i_27], _13
# r_main.c:585: 	while (viewangletox[i]>x)
	.loc 1 585 24
	cmpl	%eax, -12(%rbp)	# _13, x
	jl	.L56	#,
# r_main.c:587: 	xtoviewangle[x] = (i<<ANGLETOFINESHIFT)-ANG90;
	.loc 1 587 22
	movl	-16(%rbp), %eax	# i, tmp134
	sall	$19, %eax	#, _14
# r_main.c:587: 	xtoviewangle[x] = (i<<ANGLETOFINESHIFT)-ANG90;
	.loc 1 587 41
	subl	$1073741824, %eax	#, _15
	movl	%eax, %ecx	# _15, _16
# r_main.c:587: 	xtoviewangle[x] = (i<<ANGLETOFINESHIFT)-ANG90;
	.loc 1 587 18
	movl	-12(%rbp), %eax	# x, tmp136
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp137
	leaq	xtoviewangle(%rip), %rax	#, tmp138
	movl	%ecx, (%rdx,%rax)	# _16, xtoviewangle[x_29]
# r_main.c:582:     for (x=0;x<=viewwidth;x++)
	.loc 1 582 28 discriminator 2
	addl	$1, -12(%rbp)	#, x
.L54:
# r_main.c:582:     for (x=0;x<=viewwidth;x++)
	.loc 1 582 15 discriminator 1
	movl	viewwidth(%rip), %eax	# viewwidth, viewwidth.30_17
	cmpl	%eax, -12(%rbp)	# viewwidth.30_17, x
	jle	.L57	#,
# r_main.c:591:     for (i=0 ; i<FINEANGLES/2 ; i++)
	.loc 1 591 11
	movl	$0, -16(%rbp)	#, i
# r_main.c:591:     for (i=0 ; i<FINEANGLES/2 ; i++)
	.loc 1 591 5
	jmp	.L58	#
.L61:
# r_main.c:593: 	t = FixedMul (finetangent[i], focallength);
	.loc 1 593 6
	movl	-16(%rbp), %eax	# i, tmp140
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp141
	leaq	finetangent(%rip), %rax	#, tmp142
	movl	(%rdx,%rax), %eax	# finetangent[i_28], _18
	movl	-4(%rbp), %edx	# focallength, tmp143
	movl	%edx, %esi	# tmp143,
	movl	%eax, %edi	# _18,
	call	FixedMul@PLT	#
	movl	%eax, -8(%rbp)	# tmp144, t
# r_main.c:594: 	t = centerx - t;
	.loc 1 594 14
	movl	centerx(%rip), %eax	# centerx, centerx.31_19
# r_main.c:594: 	t = centerx - t;
	.loc 1 594 4
	subl	-8(%rbp), %eax	# t, tmp146
	movl	%eax, -8(%rbp)	# tmp146, t
# r_main.c:596: 	if (viewangletox[i] == -1)
	.loc 1 596 18
	movl	-16(%rbp), %eax	# i, tmp148
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp149
	leaq	viewangletox(%rip), %rax	#, tmp150
	movl	(%rdx,%rax), %eax	# viewangletox[i_28], _20
# r_main.c:596: 	if (viewangletox[i] == -1)
	.loc 1 596 5
	cmpl	$-1, %eax	#, _20
	jne	.L59	#,
# r_main.c:597: 	    viewangletox[i] = 0;
	.loc 1 597 22
	movl	-16(%rbp), %eax	# i, tmp152
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp153
	leaq	viewangletox(%rip), %rax	#, tmp154
	movl	$0, (%rdx,%rax)	#, viewangletox[i_28]
	jmp	.L60	#
.L59:
# r_main.c:598: 	else if (viewangletox[i] == viewwidth+1)
	.loc 1 598 23
	movl	-16(%rbp), %eax	# i, tmp156
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp157
	leaq	viewangletox(%rip), %rax	#, tmp158
	movl	(%rdx,%rax), %edx	# viewangletox[i_28], _21
# r_main.c:598: 	else if (viewangletox[i] == viewwidth+1)
	.loc 1 598 39
	movl	viewwidth(%rip), %eax	# viewwidth, viewwidth.32_22
	addl	$1, %eax	#, _23
# r_main.c:598: 	else if (viewangletox[i] == viewwidth+1)
	.loc 1 598 10
	cmpl	%eax, %edx	# _23, _21
	jne	.L60	#,
# r_main.c:599: 	    viewangletox[i]  = viewwidth;
	.loc 1 599 23
	movl	viewwidth(%rip), %eax	# viewwidth, viewwidth.33_24
	movl	-16(%rbp), %edx	# i, tmp160
	movslq	%edx, %rdx	# tmp160, tmp159
	leaq	0(,%rdx,4), %rcx	#, tmp161
	leaq	viewangletox(%rip), %rdx	#, tmp162
	movl	%eax, (%rcx,%rdx)	# viewwidth.33_24, viewangletox[i_28]
.L60:
# r_main.c:591:     for (i=0 ; i<FINEANGLES/2 ; i++)
	.loc 1 591 34 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L58:
# r_main.c:591:     for (i=0 ; i<FINEANGLES/2 ; i++)
	.loc 1 591 17 discriminator 1
	cmpl	$4095, -16(%rbp)	#, i
	jle	.L61	#,
# r_main.c:602:     clipangle = xtoviewangle[0];
	.loc 1 602 29
	movl	xtoviewangle(%rip), %eax	# xtoviewangle[0], _25
# r_main.c:602:     clipangle = xtoviewangle[0];
	.loc 1 602 15
	movl	%eax, clipangle(%rip)	# _25, clipangle
# r_main.c:603: }
	.loc 1 603 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE15:
	.size	R_InitTextureMapping, .-R_InitTextureMapping
	.globl	R_InitLightTables
	.type	R_InitLightTables, @function
R_InitLightTables:
.LFB16:
	.loc 1 615 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# r_main.c:624:     for (i=0 ; i< LIGHTLEVELS ; i++)
	.loc 1 624 11
	movl	$0, -20(%rbp)	#, i
# r_main.c:624:     for (i=0 ; i< LIGHTLEVELS ; i++)
	.loc 1 624 5
	jmp	.L63	#
.L68:
# r_main.c:626: 	startmap = ((LIGHTLEVELS-1-i)*2)*NUMCOLORMAPS/LIGHTLEVELS;
	.loc 1 626 28
	movl	$15, %eax	#, tmp90
	subl	-20(%rbp), %eax	# i, _1
# r_main.c:626: 	startmap = ((LIGHTLEVELS-1-i)*2)*NUMCOLORMAPS/LIGHTLEVELS;
	.loc 1 626 11
	sall	$2, %eax	#, tmp91
	movl	%eax, -8(%rbp)	# tmp91, startmap
# r_main.c:627: 	for (j=0 ; j<MAXLIGHTZ ; j++)
	.loc 1 627 8
	movl	$0, -16(%rbp)	#, j
# r_main.c:627: 	for (j=0 ; j<MAXLIGHTZ ; j++)
	.loc 1 627 2
	jmp	.L64	#
.L67:
# r_main.c:629: 	    scale = FixedDiv ((SCREENWIDTH/2*FRACUNIT), (j+1)<<LIGHTZSHIFT);
	.loc 1 629 52
	movl	-16(%rbp), %eax	# j, tmp92
	addl	$1, %eax	#, _2
# r_main.c:629: 	    scale = FixedDiv ((SCREENWIDTH/2*FRACUNIT), (j+1)<<LIGHTZSHIFT);
	.loc 1 629 14
	sall	$20, %eax	#, _3
	movl	%eax, %esi	# _3,
	movl	$10485760, %edi	#,
	call	FixedDiv@PLT	#
	movl	%eax, -4(%rbp)	# tmp93, scale
# r_main.c:630: 	    scale >>= LIGHTSCALESHIFT;
	.loc 1 630 12
	sarl	$12, -4(%rbp)	#, scale
# r_main.c:631: 	    level = startmap - scale/DISTMAP;
	.loc 1 631 30
	movl	-4(%rbp), %eax	# scale, tmp94
	movl	%eax, %edx	# tmp94, tmp95
	shrl	$31, %edx	#, tmp95
	addl	%edx, %eax	# tmp95, tmp96
	sarl	%eax	# tmp97
	negl	%eax	# tmp97
	movl	%eax, %edx	# tmp97, _4
# r_main.c:631: 	    level = startmap - scale/DISTMAP;
	.loc 1 631 12
	movl	-8(%rbp), %eax	# startmap, tmp101
	addl	%edx, %eax	# _4, tmp100
	movl	%eax, -12(%rbp)	# tmp100, level
# r_main.c:633: 	    if (level < 0)
	.loc 1 633 9
	cmpl	$0, -12(%rbp)	#, level
	jns	.L65	#,
# r_main.c:634: 		level = 0;
	.loc 1 634 9
	movl	$0, -12(%rbp)	#, level
.L65:
# r_main.c:636: 	    if (level >= NUMCOLORMAPS)
	.loc 1 636 9
	cmpl	$31, -12(%rbp)	#, level
	jle	.L66	#,
# r_main.c:637: 		level = NUMCOLORMAPS-1;
	.loc 1 637 9
	movl	$31, -12(%rbp)	#, level
.L66:
# r_main.c:639: 	    zlight[i][j] = colormaps + level*256;
	.loc 1 639 31
	movq	colormaps(%rip), %rdx	# colormaps, colormaps.34_5
# r_main.c:639: 	    zlight[i][j] = colormaps + level*256;
	.loc 1 639 38
	movl	-12(%rbp), %eax	# level, tmp102
	sall	$8, %eax	#, _6
	cltq
# r_main.c:639: 	    zlight[i][j] = colormaps + level*256;
	.loc 1 639 31
	leaq	(%rdx,%rax), %rcx	#, _8
# r_main.c:639: 	    zlight[i][j] = colormaps + level*256;
	.loc 1 639 19
	movl	-16(%rbp), %eax	# j, tmp104
	cltq
	movl	-20(%rbp), %edx	# i, tmp106
	movslq	%edx, %rdx	# tmp106, tmp105
	salq	$7, %rdx	#, tmp107
	addq	%rdx, %rax	# tmp107, tmp108
	leaq	0(,%rax,8), %rdx	#, tmp109
	leaq	zlight(%rip), %rax	#, tmp110
	movq	%rcx, (%rdx,%rax)	# _8, zlight[i_9][j_10]
# r_main.c:627: 	for (j=0 ; j<MAXLIGHTZ ; j++)
	.loc 1 627 28 discriminator 2
	addl	$1, -16(%rbp)	#, j
.L64:
# r_main.c:627: 	for (j=0 ; j<MAXLIGHTZ ; j++)
	.loc 1 627 14 discriminator 1
	cmpl	$127, -16(%rbp)	#, j
	jle	.L67	#,
# r_main.c:624:     for (i=0 ; i< LIGHTLEVELS ; i++)
	.loc 1 624 34 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L63:
# r_main.c:624:     for (i=0 ; i< LIGHTLEVELS ; i++)
	.loc 1 624 17 discriminator 1
	cmpl	$15, -20(%rbp)	#, i
	jle	.L68	#,
# r_main.c:642: }
	.loc 1 642 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE16:
	.size	R_InitLightTables, .-R_InitLightTables
	.globl	setsizeneeded
	.bss
	.align 4
	.type	setsizeneeded, @object
	.size	setsizeneeded, 4
setsizeneeded:
	.zero	4
	.globl	setblocks
	.align 4
	.type	setblocks, @object
	.size	setblocks, 4
setblocks:
	.zero	4
	.globl	setdetail
	.align 4
	.type	setdetail, @object
	.size	setdetail, 4
setdetail:
	.zero	4
	.text
	.globl	R_SetViewSize
	.type	R_SetViewSize, @function
R_SetViewSize:
.LFB17:
	.loc 1 661 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# blocks, blocks
	movl	%esi, -8(%rbp)	# detail, detail
# r_main.c:662:     setsizeneeded = true;
	.loc 1 662 19
	movl	$1, setsizeneeded(%rip)	#, setsizeneeded
# r_main.c:663:     setblocks = blocks;
	.loc 1 663 15
	movl	-4(%rbp), %eax	# blocks, tmp82
	movl	%eax, setblocks(%rip)	# tmp82, setblocks
# r_main.c:664:     setdetail = detail;
	.loc 1 664 15
	movl	-8(%rbp), %eax	# detail, tmp83
	movl	%eax, setdetail(%rip)	# tmp83, setdetail
# r_main.c:665: }
	.loc 1 665 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE17:
	.size	R_SetViewSize, .-R_SetViewSize
	.globl	R_ExecuteSetViewSize
	.type	R_ExecuteSetViewSize, @function
R_ExecuteSetViewSize:
.LFB18:
	.loc 1 672 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# r_main.c:680:     setsizeneeded = false;
	.loc 1 680 19
	movl	$0, setsizeneeded(%rip)	#, setsizeneeded
# r_main.c:682:     if (setblocks == 11)
	.loc 1 682 19
	movl	setblocks(%rip), %eax	# setblocks, setblocks.35_1
# r_main.c:682:     if (setblocks == 11)
	.loc 1 682 8
	cmpl	$11, %eax	#, setblocks.35_1
	jne	.L71	#,
# r_main.c:684: 	scaledviewwidth = SCREENWIDTH;
	.loc 1 684 18
	movl	$320, scaledviewwidth(%rip)	#, scaledviewwidth
# r_main.c:685: 	viewheight = SCREENHEIGHT;
	.loc 1 685 13
	movl	$200, viewheight(%rip)	#, viewheight
	jmp	.L72	#
.L71:
# r_main.c:689: 	scaledviewwidth = setblocks*32;
	.loc 1 689 29
	movl	setblocks(%rip), %eax	# setblocks, setblocks.36_2
	sall	$5, %eax	#, _3
# r_main.c:689: 	scaledviewwidth = setblocks*32;
	.loc 1 689 18
	movl	%eax, scaledviewwidth(%rip)	# _3, scaledviewwidth
# r_main.c:690: 	viewheight = (setblocks*168/10)&~7;
	.loc 1 690 25
	movl	setblocks(%rip), %eax	# setblocks, setblocks.37_4
	imull	$168, %eax, %eax	#, setblocks.37_4, _5
# r_main.c:690: 	viewheight = (setblocks*168/10)&~7;
	.loc 1 690 29
	movslq	%eax, %rdx	# _5, tmp146
	imulq	$1717986919, %rdx, %rdx	#, tmp146, tmp147
	shrq	$32, %rdx	#, tmp148
	sarl	$2, %edx	#, tmp149
	sarl	$31, %eax	#, tmp150
	subl	%eax, %edx	# tmp150, _6
# r_main.c:690: 	viewheight = (setblocks*168/10)&~7;
	.loc 1 690 33
	movl	%edx, %eax	# _6, _6
	andl	$-8, %eax	#, _6
# r_main.c:690: 	viewheight = (setblocks*168/10)&~7;
	.loc 1 690 13
	movl	%eax, viewheight(%rip)	# _7, viewheight
.L72:
# r_main.c:693:     detailshift = setdetail;
	.loc 1 693 17
	movl	setdetail(%rip), %eax	# setdetail, setdetail.38_8
	movl	%eax, detailshift(%rip)	# setdetail.38_8, detailshift
# r_main.c:694:     viewwidth = scaledviewwidth>>detailshift;
	.loc 1 694 32
	movl	scaledviewwidth(%rip), %edx	# scaledviewwidth, scaledviewwidth.39_9
	movl	detailshift(%rip), %eax	# detailshift, detailshift.40_10
	movl	%eax, %ecx	# detailshift.40_10, tmp239
	sarl	%cl, %edx	# tmp239, scaledviewwidth.39_9
	movl	%edx, %eax	# scaledviewwidth.39_9, _11
# r_main.c:694:     viewwidth = scaledviewwidth>>detailshift;
	.loc 1 694 15
	movl	%eax, viewwidth(%rip)	# _11, viewwidth
# r_main.c:696:     centery = viewheight/2;
	.loc 1 696 25
	movl	viewheight(%rip), %eax	# viewheight, viewheight.41_12
	movl	%eax, %edx	# viewheight.41_12, tmp151
	shrl	$31, %edx	#, tmp151
	addl	%edx, %eax	# tmp151, tmp152
	sarl	%eax	# tmp153
# r_main.c:696:     centery = viewheight/2;
	.loc 1 696 13
	movl	%eax, centery(%rip)	# _13, centery
# r_main.c:697:     centerx = viewwidth/2;
	.loc 1 697 24
	movl	viewwidth(%rip), %eax	# viewwidth, viewwidth.42_14
	movl	%eax, %edx	# viewwidth.42_14, tmp154
	shrl	$31, %edx	#, tmp154
	addl	%edx, %eax	# tmp154, tmp155
	sarl	%eax	# tmp156
# r_main.c:697:     centerx = viewwidth/2;
	.loc 1 697 13
	movl	%eax, centerx(%rip)	# _15, centerx
# r_main.c:698:     centerxfrac = centerx<<FRACBITS;
	.loc 1 698 26
	movl	centerx(%rip), %eax	# centerx, centerx.43_16
	sall	$16, %eax	#, _17
# r_main.c:698:     centerxfrac = centerx<<FRACBITS;
	.loc 1 698 17
	movl	%eax, centerxfrac(%rip)	# _17, centerxfrac
# r_main.c:699:     centeryfrac = centery<<FRACBITS;
	.loc 1 699 26
	movl	centery(%rip), %eax	# centery, centery.44_18
	sall	$16, %eax	#, _19
# r_main.c:699:     centeryfrac = centery<<FRACBITS;
	.loc 1 699 17
	movl	%eax, centeryfrac(%rip)	# _19, centeryfrac
# r_main.c:700:     projection = centerxfrac;
	.loc 1 700 16
	movl	centerxfrac(%rip), %eax	# centerxfrac, centerxfrac.45_20
	movl	%eax, projection(%rip)	# centerxfrac.45_20, projection
# r_main.c:702:     if (!detailshift)
	.loc 1 702 9
	movl	detailshift(%rip), %eax	# detailshift, detailshift.46_21
# r_main.c:702:     if (!detailshift)
	.loc 1 702 8
	testl	%eax, %eax	# detailshift.46_21
	jne	.L73	#,
# r_main.c:704: 	colfunc = basecolfunc = R_DrawColumn;
	.loc 1 704 24
	movq	R_DrawColumn@GOTPCREL(%rip), %rax	#, tmp158
	movq	%rax, basecolfunc(%rip)	# tmp157, basecolfunc
# r_main.c:704: 	colfunc = basecolfunc = R_DrawColumn;
	.loc 1 704 10
	movq	basecolfunc(%rip), %rax	# basecolfunc, basecolfunc.47_22
	movq	%rax, colfunc(%rip)	# basecolfunc.47_22, colfunc
# r_main.c:705: 	fuzzcolfunc = R_DrawFuzzColumn;
	.loc 1 705 14
	movq	R_DrawFuzzColumn@GOTPCREL(%rip), %rax	#, tmp160
	movq	%rax, fuzzcolfunc(%rip)	# tmp159, fuzzcolfunc
# r_main.c:706: 	transcolfunc = R_DrawTranslatedColumn;
	.loc 1 706 15
	movq	R_DrawTranslatedColumn@GOTPCREL(%rip), %rax	#, tmp162
	movq	%rax, transcolfunc(%rip)	# tmp161, transcolfunc
# r_main.c:707: 	spanfunc = R_DrawSpan;
	.loc 1 707 11
	movq	R_DrawSpan@GOTPCREL(%rip), %rax	#, tmp164
	movq	%rax, spanfunc(%rip)	# tmp163, spanfunc
	jmp	.L74	#
.L73:
# r_main.c:711: 	colfunc = basecolfunc = R_DrawColumnLow;
	.loc 1 711 24
	movq	R_DrawColumnLow@GOTPCREL(%rip), %rax	#, tmp166
	movq	%rax, basecolfunc(%rip)	# tmp165, basecolfunc
# r_main.c:711: 	colfunc = basecolfunc = R_DrawColumnLow;
	.loc 1 711 10
	movq	basecolfunc(%rip), %rax	# basecolfunc, basecolfunc.48_23
	movq	%rax, colfunc(%rip)	# basecolfunc.48_23, colfunc
# r_main.c:712: 	fuzzcolfunc = R_DrawFuzzColumn;
	.loc 1 712 14
	movq	R_DrawFuzzColumn@GOTPCREL(%rip), %rax	#, tmp168
	movq	%rax, fuzzcolfunc(%rip)	# tmp167, fuzzcolfunc
# r_main.c:713: 	transcolfunc = R_DrawTranslatedColumn;
	.loc 1 713 15
	movq	R_DrawTranslatedColumn@GOTPCREL(%rip), %rax	#, tmp170
	movq	%rax, transcolfunc(%rip)	# tmp169, transcolfunc
# r_main.c:714: 	spanfunc = R_DrawSpanLow;
	.loc 1 714 11
	movq	R_DrawSpanLow@GOTPCREL(%rip), %rax	#, tmp172
	movq	%rax, spanfunc(%rip)	# tmp171, spanfunc
.L74:
# r_main.c:717:     R_InitBuffer (scaledviewwidth, viewheight);
	.loc 1 717 5
	movl	viewheight(%rip), %edx	# viewheight, viewheight.49_24
	movl	scaledviewwidth(%rip), %eax	# scaledviewwidth, scaledviewwidth.50_25
	movl	%edx, %esi	# viewheight.49_24,
	movl	%eax, %edi	# scaledviewwidth.50_25,
	call	R_InitBuffer@PLT	#
# r_main.c:719:     R_InitTextureMapping ();
	.loc 1 719 5
	call	R_InitTextureMapping	#
# r_main.c:722:     pspritescale = FRACUNIT*viewwidth/SCREENWIDTH;
	.loc 1 722 28
	movl	viewwidth(%rip), %eax	# viewwidth, viewwidth.51_26
	sall	$16, %eax	#, _27
# r_main.c:722:     pspritescale = FRACUNIT*viewwidth/SCREENWIDTH;
	.loc 1 722 38
	movslq	%eax, %rdx	# _27, tmp173
	imulq	$1717986919, %rdx, %rdx	#, tmp173, tmp174
	shrq	$32, %rdx	#, tmp175
	movl	%edx, %ecx	# tmp175, tmp176
	sarl	$7, %ecx	#, tmp176
	cltd
	movl	%ecx, %eax	# tmp176, tmp176
	subl	%edx, %eax	# tmp177, tmp176
# r_main.c:722:     pspritescale = FRACUNIT*viewwidth/SCREENWIDTH;
	.loc 1 722 18
	movl	%eax, pspritescale(%rip)	# _28, pspritescale
# r_main.c:723:     pspriteiscale = FRACUNIT*SCREENWIDTH/viewwidth;
	.loc 1 723 41
	movl	viewwidth(%rip), %edi	# viewwidth, viewwidth.52_29
	movl	$20971520, %eax	#, tmp180
	cltd
	idivl	%edi	# viewwidth.52_29
# r_main.c:723:     pspriteiscale = FRACUNIT*SCREENWIDTH/viewwidth;
	.loc 1 723 19
	movl	%eax, pspriteiscale(%rip)	# _30, pspriteiscale
# r_main.c:726:     for (i=0 ; i<viewwidth ; i++)
	.loc 1 726 11
	movl	$0, -24(%rbp)	#, i
# r_main.c:726:     for (i=0 ; i<viewwidth ; i++)
	.loc 1 726 5
	jmp	.L75	#
.L76:
# r_main.c:727: 	screenheightarray[i] = viewheight;
	.loc 1 727 23
	movl	viewheight(%rip), %eax	# viewheight, viewheight.53_31
	movl	%eax, %ecx	# viewheight.53_31, _32
	movl	-24(%rbp), %eax	# i, tmp182
	cltq
	leaq	(%rax,%rax), %rdx	#, tmp183
	leaq	screenheightarray(%rip), %rax	#, tmp184
	movw	%cx, (%rdx,%rax)	# _32, screenheightarray[i_65]
# r_main.c:726:     for (i=0 ; i<viewwidth ; i++)
	.loc 1 726 31 discriminator 3
	addl	$1, -24(%rbp)	#, i
.L75:
# r_main.c:726:     for (i=0 ; i<viewwidth ; i++)
	.loc 1 726 17 discriminator 1
	movl	viewwidth(%rip), %eax	# viewwidth, viewwidth.54_33
	cmpl	%eax, -24(%rbp)	# viewwidth.54_33, i
	jl	.L76	#,
# r_main.c:730:     for (i=0 ; i<viewheight ; i++)
	.loc 1 730 11
	movl	$0, -24(%rbp)	#, i
# r_main.c:730:     for (i=0 ; i<viewheight ; i++)
	.loc 1 730 5
	jmp	.L77	#
.L78:
# r_main.c:732: 	dy = ((i-viewheight/2)<<FRACBITS)+FRACUNIT/2;
	.loc 1 732 21
	movl	viewheight(%rip), %eax	# viewheight, viewheight.55_34
	movl	%eax, %edx	# viewheight.55_34, tmp185
	shrl	$31, %edx	#, tmp185
	addl	%edx, %eax	# tmp185, tmp186
	sarl	%eax	# tmp187
	negl	%eax	# tmp187
	movl	%eax, %edx	# tmp187, _35
# r_main.c:732: 	dy = ((i-viewheight/2)<<FRACBITS)+FRACUNIT/2;
	.loc 1 732 10
	movl	-24(%rbp), %eax	# i, tmp188
	addl	%edx, %eax	# _35, _36
# r_main.c:732: 	dy = ((i-viewheight/2)<<FRACBITS)+FRACUNIT/2;
	.loc 1 732 24
	sall	$16, %eax	#, _37
# r_main.c:732: 	dy = ((i-viewheight/2)<<FRACBITS)+FRACUNIT/2;
	.loc 1 732 5
	addl	$32768, %eax	#, tmp189
	movl	%eax, -4(%rbp)	# tmp189, dy
# r_main.c:733: 	dy = abs(dy);
	.loc 1 733 5
	movl	-4(%rbp), %eax	# dy, tmp234
	movl	%eax, %edx	# tmp234, tmp235
	negl	%edx	# tmp235
	cmovns	%edx, %eax	# tmp235,, tmp190
	movl	%eax, -4(%rbp)	# tmp190, dy
# r_main.c:734: 	yslope[i] = FixedDiv ( (viewwidth<<detailshift)/2*FRACUNIT, dy);
	.loc 1 734 35
	movl	viewwidth(%rip), %edx	# viewwidth, viewwidth.56_38
	movl	detailshift(%rip), %eax	# detailshift, detailshift.57_39
	movl	%eax, %ecx	# detailshift.57_39, tmp248
	sall	%cl, %edx	# tmp248, viewwidth.56_38
	movl	%edx, %eax	# viewwidth.56_38, _40
# r_main.c:734: 	yslope[i] = FixedDiv ( (viewwidth<<detailshift)/2*FRACUNIT, dy);
	.loc 1 734 49
	movl	%eax, %edx	# _40, tmp191
	shrl	$31, %edx	#, tmp191
	addl	%edx, %eax	# tmp191, tmp192
	sarl	%eax	# tmp193
# r_main.c:734: 	yslope[i] = FixedDiv ( (viewwidth<<detailshift)/2*FRACUNIT, dy);
	.loc 1 734 14
	sall	$16, %eax	#, _41
	movl	%eax, %edx	# _41, _42
	movl	-4(%rbp), %eax	# dy, tmp194
	movl	%eax, %esi	# tmp194,
	movl	%edx, %edi	# _42,
	call	FixedDiv@PLT	#
# r_main.c:734: 	yslope[i] = FixedDiv ( (viewwidth<<detailshift)/2*FRACUNIT, dy);
	.loc 1 734 12 discriminator 1
	movl	-24(%rbp), %edx	# i, tmp196
	movslq	%edx, %rdx	# tmp196, tmp195
	leaq	0(,%rdx,4), %rcx	#, tmp197
	leaq	yslope(%rip), %rdx	#, tmp198
	movl	%eax, (%rcx,%rdx)	# _43, yslope[i_66]
# r_main.c:730:     for (i=0 ; i<viewheight ; i++)
	.loc 1 730 32 discriminator 3
	addl	$1, -24(%rbp)	#, i
.L77:
# r_main.c:730:     for (i=0 ; i<viewheight ; i++)
	.loc 1 730 17 discriminator 1
	movl	viewheight(%rip), %eax	# viewheight, viewheight.58_44
	cmpl	%eax, -24(%rbp)	# viewheight.58_44, i
	jl	.L78	#,
# r_main.c:737:     for (i=0 ; i<viewwidth ; i++)
	.loc 1 737 11
	movl	$0, -24(%rbp)	#, i
# r_main.c:737:     for (i=0 ; i<viewwidth ; i++)
	.loc 1 737 5
	jmp	.L79	#
.L80:
# r_main.c:739: 	cosadj = abs(finecosine[xtoviewangle[i]>>ANGLETOFINESHIFT]);
	.loc 1 739 25
	movq	finecosine(%rip), %rax	# finecosine, finecosine.59_45
# r_main.c:739: 	cosadj = abs(finecosine[xtoviewangle[i]>>ANGLETOFINESHIFT]);
	.loc 1 739 38
	movl	-24(%rbp), %edx	# i, tmp200
	movslq	%edx, %rdx	# tmp200, tmp199
	leaq	0(,%rdx,4), %rcx	#, tmp201
	leaq	xtoviewangle(%rip), %rdx	#, tmp202
	movl	(%rcx,%rdx), %edx	# xtoviewangle[i_67], _46
# r_main.c:739: 	cosadj = abs(finecosine[xtoviewangle[i]>>ANGLETOFINESHIFT]);
	.loc 1 739 41
	shrl	$19, %edx	#, _47
	movl	%edx, %edx	# _47, _48
# r_main.c:739: 	cosadj = abs(finecosine[xtoviewangle[i]>>ANGLETOFINESHIFT]);
	.loc 1 739 25
	salq	$2, %rdx	#, _49
	addq	%rdx, %rax	# _49, _50
# r_main.c:739: 	cosadj = abs(finecosine[xtoviewangle[i]>>ANGLETOFINESHIFT]);
	.loc 1 739 11
	movl	(%rax), %eax	# *_50, _51
# r_main.c:739: 	cosadj = abs(finecosine[xtoviewangle[i]>>ANGLETOFINESHIFT]);
	.loc 1 739 9
	movl	%eax, %edx	# _51, tmp233
	negl	%edx	# tmp233
	cmovns	%edx, %eax	# tmp233,, tmp203
	movl	%eax, -8(%rbp)	# tmp203, cosadj
# r_main.c:740: 	distscale[i] = FixedDiv (FRACUNIT,cosadj);
	.loc 1 740 17
	movl	-8(%rbp), %eax	# cosadj, tmp204
	movl	%eax, %esi	# tmp204,
	movl	$65536, %edi	#,
	call	FixedDiv@PLT	#
# r_main.c:740: 	distscale[i] = FixedDiv (FRACUNIT,cosadj);
	.loc 1 740 15 discriminator 1
	movl	-24(%rbp), %edx	# i, tmp206
	movslq	%edx, %rdx	# tmp206, tmp205
	leaq	0(,%rdx,4), %rcx	#, tmp207
	leaq	distscale(%rip), %rdx	#, tmp208
	movl	%eax, (%rcx,%rdx)	# _52, distscale[i_67]
# r_main.c:737:     for (i=0 ; i<viewwidth ; i++)
	.loc 1 737 31 discriminator 3
	addl	$1, -24(%rbp)	#, i
.L79:
# r_main.c:737:     for (i=0 ; i<viewwidth ; i++)
	.loc 1 737 17 discriminator 1
	movl	viewwidth(%rip), %eax	# viewwidth, viewwidth.60_53
	cmpl	%eax, -24(%rbp)	# viewwidth.60_53, i
	jl	.L80	#,
# r_main.c:745:     for (i=0 ; i< LIGHTLEVELS ; i++)
	.loc 1 745 11
	movl	$0, -24(%rbp)	#, i
# r_main.c:745:     for (i=0 ; i< LIGHTLEVELS ; i++)
	.loc 1 745 5
	jmp	.L81	#
.L86:
# r_main.c:747: 	startmap = ((LIGHTLEVELS-1-i)*2)*NUMCOLORMAPS/LIGHTLEVELS;
	.loc 1 747 28
	movl	$15, %eax	#, tmp209
	subl	-24(%rbp), %eax	# i, _54
# r_main.c:747: 	startmap = ((LIGHTLEVELS-1-i)*2)*NUMCOLORMAPS/LIGHTLEVELS;
	.loc 1 747 11
	sall	$2, %eax	#, tmp210
	movl	%eax, -12(%rbp)	# tmp210, startmap
# r_main.c:748: 	for (j=0 ; j<MAXLIGHTSCALE ; j++)
	.loc 1 748 8
	movl	$0, -20(%rbp)	#, j
# r_main.c:748: 	for (j=0 ; j<MAXLIGHTSCALE ; j++)
	.loc 1 748 2
	jmp	.L82	#
.L85:
# r_main.c:750: 	    level = startmap - j*SCREENWIDTH/(viewwidth<<detailshift)/DISTMAP;
	.loc 1 750 26
	movl	-20(%rbp), %edx	# j, tmp211
	movl	%edx, %eax	# tmp211, tmp212
	sall	$2, %eax	#, tmp212
	addl	%edx, %eax	# tmp211, tmp212
	sall	$6, %eax	#, tmp213
	movl	%eax, %esi	# tmp212, _55
# r_main.c:750: 	    level = startmap - j*SCREENWIDTH/(viewwidth<<detailshift)/DISTMAP;
	.loc 1 750 49
	movl	viewwidth(%rip), %edx	# viewwidth, viewwidth.61_56
	movl	detailshift(%rip), %eax	# detailshift, detailshift.62_57
	movl	%eax, %ecx	# detailshift.62_57, tmp252
	movl	%edx, %edi	# viewwidth.61_56, viewwidth.61_56
	sall	%cl, %edi	# tmp252, viewwidth.61_56
# r_main.c:750: 	    level = startmap - j*SCREENWIDTH/(viewwidth<<detailshift)/DISTMAP;
	.loc 1 750 38
	movl	%esi, %eax	# _55, _55
	cltd
	idivl	%edi	# _58
# r_main.c:750: 	    level = startmap - j*SCREENWIDTH/(viewwidth<<detailshift)/DISTMAP;
	.loc 1 750 63
	movl	%eax, %edx	# _59, tmp216
	shrl	$31, %edx	#, tmp216
	addl	%edx, %eax	# tmp216, tmp217
	sarl	%eax	# tmp218
	negl	%eax	# tmp218
	movl	%eax, %edx	# tmp218, _60
# r_main.c:750: 	    level = startmap - j*SCREENWIDTH/(viewwidth<<detailshift)/DISTMAP;
	.loc 1 750 12
	movl	-12(%rbp), %eax	# startmap, tmp222
	addl	%edx, %eax	# _60, tmp221
	movl	%eax, -16(%rbp)	# tmp221, level
# r_main.c:752: 	    if (level < 0)
	.loc 1 752 9
	cmpl	$0, -16(%rbp)	#, level
	jns	.L83	#,
# r_main.c:753: 		level = 0;
	.loc 1 753 9
	movl	$0, -16(%rbp)	#, level
.L83:
# r_main.c:755: 	    if (level >= NUMCOLORMAPS)
	.loc 1 755 9
	cmpl	$31, -16(%rbp)	#, level
	jle	.L84	#,
# r_main.c:756: 		level = NUMCOLORMAPS-1;
	.loc 1 756 9
	movl	$31, -16(%rbp)	#, level
.L84:
# r_main.c:758: 	    scalelight[i][j] = colormaps + level*256;
	.loc 1 758 35
	movq	colormaps(%rip), %rdx	# colormaps, colormaps.63_61
# r_main.c:758: 	    scalelight[i][j] = colormaps + level*256;
	.loc 1 758 42
	movl	-16(%rbp), %eax	# level, tmp223
	sall	$8, %eax	#, _62
	cltq
# r_main.c:758: 	    scalelight[i][j] = colormaps + level*256;
	.loc 1 758 35
	leaq	(%rdx,%rax), %rcx	#, _64
# r_main.c:758: 	    scalelight[i][j] = colormaps + level*256;
	.loc 1 758 23
	movl	-20(%rbp), %eax	# j, tmp225
	movslq	%eax, %rsi	# tmp225, tmp224
	movl	-24(%rbp), %eax	# i, tmp227
	movslq	%eax, %rdx	# tmp227, tmp226
	movq	%rdx, %rax	# tmp226, tmp228
	addq	%rax, %rax	# tmp228
	addq	%rdx, %rax	# tmp226, tmp228
	salq	$4, %rax	#, tmp229
	addq	%rsi, %rax	# tmp224, tmp230
	leaq	0(,%rax,8), %rdx	#, tmp231
	leaq	scalelight(%rip), %rax	#, tmp232
	movq	%rcx, (%rdx,%rax)	# _64, scalelight[i_68][j_69]
# r_main.c:748: 	for (j=0 ; j<MAXLIGHTSCALE ; j++)
	.loc 1 748 32 discriminator 2
	addl	$1, -20(%rbp)	#, j
.L82:
# r_main.c:748: 	for (j=0 ; j<MAXLIGHTSCALE ; j++)
	.loc 1 748 14 discriminator 1
	cmpl	$47, -20(%rbp)	#, j
	jle	.L85	#,
# r_main.c:745:     for (i=0 ; i< LIGHTLEVELS ; i++)
	.loc 1 745 34 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L81:
# r_main.c:745:     for (i=0 ; i< LIGHTLEVELS ; i++)
	.loc 1 745 17 discriminator 1
	cmpl	$15, -24(%rbp)	#, i
	jle	.L86	#,
# r_main.c:761: }
	.loc 1 761 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE18:
	.size	R_ExecuteSetViewSize, .-R_ExecuteSetViewSize
	.section	.rodata
.LC0:
	.string	"\nR_InitData"
.LC1:
	.string	"\nR_InitPointToAngle"
.LC2:
	.string	"\nR_InitTables"
.LC3:
	.string	"\nR_InitPlanes"
.LC4:
	.string	"\nR_InitLightTables"
.LC5:
	.string	"\nR_InitSkyMap"
.LC6:
	.string	"\nR_InitTranslationsTables"
	.text
	.globl	R_Init
	.type	R_Init, @function
R_Init:
.LFB19:
	.loc 1 774 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# r_main.c:775:     R_InitData ();
	.loc 1 775 5
	call	R_InitData@PLT	#
# r_main.c:776:     printf ("\nR_InitData");
	.loc 1 776 5
	leaq	.LC0(%rip), %rax	#, tmp84
	movq	%rax, %rdi	# tmp84,
	movl	$0, %eax	#,
	call	printf@PLT	#
# r_main.c:777:     R_InitPointToAngle ();
	.loc 1 777 5
	call	R_InitPointToAngle	#
# r_main.c:778:     printf ("\nR_InitPointToAngle");
	.loc 1 778 5
	leaq	.LC1(%rip), %rax	#, tmp85
	movq	%rax, %rdi	# tmp85,
	movl	$0, %eax	#,
	call	printf@PLT	#
# r_main.c:779:     R_InitTables ();
	.loc 1 779 5
	call	R_InitTables	#
# r_main.c:781:     printf ("\nR_InitTables");
	.loc 1 781 5
	leaq	.LC2(%rip), %rax	#, tmp86
	movq	%rax, %rdi	# tmp86,
	movl	$0, %eax	#,
	call	printf@PLT	#
# r_main.c:783:     R_SetViewSize (screenblocks, detailLevel);
	.loc 1 783 5
	movl	detailLevel(%rip), %edx	# detailLevel, detailLevel.64_1
	movl	screenblocks(%rip), %eax	# screenblocks, screenblocks.65_2
	movl	%edx, %esi	# detailLevel.64_1,
	movl	%eax, %edi	# screenblocks.65_2,
	call	R_SetViewSize	#
# r_main.c:784:     R_InitPlanes ();
	.loc 1 784 5
	call	R_InitPlanes@PLT	#
# r_main.c:785:     printf ("\nR_InitPlanes");
	.loc 1 785 5
	leaq	.LC3(%rip), %rax	#, tmp87
	movq	%rax, %rdi	# tmp87,
	movl	$0, %eax	#,
	call	printf@PLT	#
# r_main.c:786:     R_InitLightTables ();
	.loc 1 786 5
	call	R_InitLightTables	#
# r_main.c:787:     printf ("\nR_InitLightTables");
	.loc 1 787 5
	leaq	.LC4(%rip), %rax	#, tmp88
	movq	%rax, %rdi	# tmp88,
	movl	$0, %eax	#,
	call	printf@PLT	#
# r_main.c:788:     R_InitSkyMap ();
	.loc 1 788 5
	call	R_InitSkyMap@PLT	#
# r_main.c:789:     printf ("\nR_InitSkyMap");
	.loc 1 789 5
	leaq	.LC5(%rip), %rax	#, tmp89
	movq	%rax, %rdi	# tmp89,
	movl	$0, %eax	#,
	call	printf@PLT	#
# r_main.c:790:     R_InitTranslationTables ();
	.loc 1 790 5
	call	R_InitTranslationTables@PLT	#
# r_main.c:791:     printf ("\nR_InitTranslationsTables");
	.loc 1 791 5
	leaq	.LC6(%rip), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	movl	$0, %eax	#,
	call	printf@PLT	#
# r_main.c:793:     framecount = 0;
	.loc 1 793 16
	movl	$0, framecount(%rip)	#, framecount
# r_main.c:794: }
	.loc 1 794 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE19:
	.size	R_Init, .-R_Init
	.globl	R_PointInSubsector
	.type	R_PointInSubsector, @function
R_PointInSubsector:
.LFB20:
	.loc 1 804 1
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
# r_main.c:810:     if (!numnodes)				
	.loc 1 810 9
	movl	numnodes(%rip), %eax	# numnodes, numnodes.66_1
# r_main.c:810:     if (!numnodes)				
	.loc 1 810 8
	testl	%eax, %eax	# numnodes.66_1
	jne	.L89	#,
# r_main.c:811: 	return subsectors;
	.loc 1 811 9
	movq	subsectors(%rip), %rax	# subsectors, _13
	jmp	.L90	#
.L89:
# r_main.c:813:     nodenum = numnodes-1;
	.loc 1 813 23
	movl	numnodes(%rip), %eax	# numnodes, numnodes.67_2
# r_main.c:813:     nodenum = numnodes-1;
	.loc 1 813 13
	subl	$1, %eax	#, tmp95
	movl	%eax, -16(%rbp)	# tmp95, nodenum
# r_main.c:815:     while (! (nodenum & NF_SUBSECTOR) )
	.loc 1 815 11
	jmp	.L91	#
.L92:
# r_main.c:817: 	node = &nodes[nodenum];
	.loc 1 817 9
	movq	nodes(%rip), %rcx	# nodes, nodes.68_3
# r_main.c:817: 	node = &nodes[nodenum];
	.loc 1 817 15
	movl	-16(%rbp), %eax	# nodenum, tmp96
	movslq	%eax, %rdx	# tmp96, _4
	movq	%rdx, %rax	# _4, tmp97
	addq	%rax, %rax	# tmp97
	addq	%rdx, %rax	# _4, tmp97
	salq	$2, %rax	#, tmp97
	addq	%rdx, %rax	# _4, tmp97
	salq	$2, %rax	#, tmp98
# r_main.c:817: 	node = &nodes[nodenum];
	.loc 1 817 7
	addq	%rcx, %rax	# nodes.68_3, tmp99
	movq	%rax, -8(%rbp)	# tmp99, node
# r_main.c:818: 	side = R_PointOnSide (x, y, node);
	.loc 1 818 9
	movq	-8(%rbp), %rdx	# node, tmp100
	movl	-24(%rbp), %ecx	# y, tmp101
	movl	-20(%rbp), %eax	# x, tmp102
	movl	%ecx, %esi	# tmp101,
	movl	%eax, %edi	# tmp102,
	call	R_PointOnSide	#
	movl	%eax, -12(%rbp)	# tmp103, side
# r_main.c:819: 	nodenum = node->children[side];
	.loc 1 819 26
	movq	-8(%rbp), %rax	# node, tmp104
	movl	-12(%rbp), %edx	# side, tmp106
	movslq	%edx, %rdx	# tmp106, tmp105
	addq	$24, %rdx	#, tmp107
	movzwl	(%rax,%rdx,2), %eax	# node_19->children[side_23], _6
# r_main.c:819: 	nodenum = node->children[side];
	.loc 1 819 10
	movzwl	%ax, %eax	# _6, tmp108
	movl	%eax, -16(%rbp)	# tmp108, nodenum
.L91:
# r_main.c:815:     while (! (nodenum & NF_SUBSECTOR) )
	.loc 1 815 23
	movl	-16(%rbp), %eax	# nodenum, tmp109
	andl	$32768, %eax	#, _7
# r_main.c:815:     while (! (nodenum & NF_SUBSECTOR) )
	.loc 1 815 12
	testl	%eax, %eax	# _7
	je	.L92	#,
# r_main.c:822:     return &subsectors[nodenum & ~NF_SUBSECTOR];
	.loc 1 822 12
	movq	subsectors(%rip), %rax	# subsectors, subsectors.69_8
# r_main.c:822:     return &subsectors[nodenum & ~NF_SUBSECTOR];
	.loc 1 822 32
	movl	-16(%rbp), %edx	# nodenum, tmp110
	andb	$127, %dh	#, _9
	movslq	%edx, %rdx	# _9, _10
# r_main.c:822:     return &subsectors[nodenum & ~NF_SUBSECTOR];
	.loc 1 822 23
	salq	$4, %rdx	#, _11
# r_main.c:822:     return &subsectors[nodenum & ~NF_SUBSECTOR];
	.loc 1 822 12
	addq	%rdx, %rax	# _11, _13
.L90:
# r_main.c:823: }
	.loc 1 823 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE20:
	.size	R_PointInSubsector, .-R_PointInSubsector
	.globl	R_SetupFrame
	.type	R_SetupFrame, @function
R_SetupFrame:
.LFB21:
	.loc 1 831 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# player, player
# r_main.c:834:     viewplayer = player;
	.loc 1 834 16
	movq	-24(%rbp), %rax	# player, tmp114
	movq	%rax, viewplayer(%rip)	# tmp114, viewplayer
# r_main.c:835:     viewx = player->mo->x;
	.loc 1 835 19
	movq	-24(%rbp), %rax	# player, tmp115
	movq	(%rax), %rax	# player_37(D)->mo, _1
# r_main.c:835:     viewx = player->mo->x;
	.loc 1 835 23
	movl	24(%rax), %eax	# _1->x, _2
# r_main.c:835:     viewx = player->mo->x;
	.loc 1 835 11
	movl	%eax, viewx(%rip)	# _2, viewx
# r_main.c:836:     viewy = player->mo->y;
	.loc 1 836 19
	movq	-24(%rbp), %rax	# player, tmp116
	movq	(%rax), %rax	# player_37(D)->mo, _3
# r_main.c:836:     viewy = player->mo->y;
	.loc 1 836 23
	movl	28(%rax), %eax	# _3->y, _4
# r_main.c:836:     viewy = player->mo->y;
	.loc 1 836 11
	movl	%eax, viewy(%rip)	# _4, viewy
# r_main.c:837:     viewangle = player->mo->angle + viewangleoffset;
	.loc 1 837 23
	movq	-24(%rbp), %rax	# player, tmp117
	movq	(%rax), %rax	# player_37(D)->mo, _5
# r_main.c:837:     viewangle = player->mo->angle + viewangleoffset;
	.loc 1 837 27
	movl	56(%rax), %eax	# _5->angle, _6
# r_main.c:837:     viewangle = player->mo->angle + viewangleoffset;
	.loc 1 837 35
	movl	viewangleoffset(%rip), %edx	# viewangleoffset, viewangleoffset.70_7
	addl	%edx, %eax	# viewangleoffset.71_8, _9
# r_main.c:837:     viewangle = player->mo->angle + viewangleoffset;
	.loc 1 837 15
	movl	%eax, viewangle(%rip)	# _9, viewangle
# r_main.c:838:     extralight = player->extralight;
	.loc 1 838 24
	movq	-24(%rbp), %rax	# player, tmp118
	movl	248(%rax), %eax	# player_37(D)->extralight, _10
# r_main.c:838:     extralight = player->extralight;
	.loc 1 838 16
	movl	%eax, extralight(%rip)	# _10, extralight
# r_main.c:840:     viewz = player->viewz;
	.loc 1 840 19
	movq	-24(%rbp), %rax	# player, tmp119
	movl	20(%rax), %eax	# player_37(D)->viewz, _11
# r_main.c:840:     viewz = player->viewz;
	.loc 1 840 11
	movl	%eax, viewz(%rip)	# _11, viewz
# r_main.c:842:     viewsin = finesine[viewangle>>ANGLETOFINESHIFT];
	.loc 1 842 33
	movl	viewangle(%rip), %eax	# viewangle, viewangle.72_12
	shrl	$19, %eax	#, _13
# r_main.c:842:     viewsin = finesine[viewangle>>ANGLETOFINESHIFT];
	.loc 1 842 23
	movl	%eax, %eax	# _13, tmp120
	leaq	0(,%rax,4), %rdx	#, tmp121
	leaq	finesine(%rip), %rax	#, tmp122
	movl	(%rdx,%rax), %eax	# finesine[_13], _14
# r_main.c:842:     viewsin = finesine[viewangle>>ANGLETOFINESHIFT];
	.loc 1 842 13
	movl	%eax, viewsin(%rip)	# _14, viewsin
# r_main.c:843:     viewcos = finecosine[viewangle>>ANGLETOFINESHIFT];
	.loc 1 843 25
	movq	finecosine(%rip), %rax	# finecosine, finecosine.73_15
# r_main.c:843:     viewcos = finecosine[viewangle>>ANGLETOFINESHIFT];
	.loc 1 843 35
	movl	viewangle(%rip), %edx	# viewangle, viewangle.74_16
	shrl	$19, %edx	#, _17
	movl	%edx, %edx	# _17, _18
# r_main.c:843:     viewcos = finecosine[viewangle>>ANGLETOFINESHIFT];
	.loc 1 843 25
	salq	$2, %rdx	#, _19
	addq	%rdx, %rax	# _19, _20
	movl	(%rax), %eax	# *_20, _21
# r_main.c:843:     viewcos = finecosine[viewangle>>ANGLETOFINESHIFT];
	.loc 1 843 13
	movl	%eax, viewcos(%rip)	# _21, viewcos
# r_main.c:845:     sscount = 0;
	.loc 1 845 13
	movl	$0, sscount(%rip)	#, sscount
# r_main.c:847:     if (player->fixedcolormap)
	.loc 1 847 15
	movq	-24(%rbp), %rax	# player, tmp123
	movl	252(%rax), %eax	# player_37(D)->fixedcolormap, _22
# r_main.c:847:     if (player->fixedcolormap)
	.loc 1 847 8
	testl	%eax, %eax	# _22
	je	.L94	#,
# r_main.c:851: 	    + player->fixedcolormap*256*sizeof(lighttable_t);
	.loc 1 851 6
	movq	colormaps(%rip), %rdx	# colormaps, colormaps.75_23
# r_main.c:851: 	    + player->fixedcolormap*256*sizeof(lighttable_t);
	.loc 1 851 14
	movq	-24(%rbp), %rax	# player, tmp124
	movl	252(%rax), %eax	# player_37(D)->fixedcolormap, _24
# r_main.c:851: 	    + player->fixedcolormap*256*sizeof(lighttable_t);
	.loc 1 851 29
	sall	$8, %eax	#, _25
# r_main.c:851: 	    + player->fixedcolormap*256*sizeof(lighttable_t);
	.loc 1 851 33
	cltq
# r_main.c:851: 	    + player->fixedcolormap*256*sizeof(lighttable_t);
	.loc 1 851 6
	addq	%rdx, %rax	# colormaps.75_23, _27
# r_main.c:849: 	fixedcolormap =
	.loc 1 849 16
	movq	%rax, fixedcolormap(%rip)	# _27, fixedcolormap
# r_main.c:853: 	walllights = scalelightfixed;
	.loc 1 853 13
	leaq	scalelightfixed(%rip), %rax	#, tmp125
	movq	%rax, walllights(%rip)	# tmp125, walllights
# r_main.c:855: 	for (i=0 ; i<MAXLIGHTSCALE ; i++)
	.loc 1 855 8
	movl	$0, -4(%rbp)	#, i
# r_main.c:855: 	for (i=0 ; i<MAXLIGHTSCALE ; i++)
	.loc 1 855 2
	jmp	.L95	#
.L96:
# r_main.c:856: 	    scalelightfixed[i] = fixedcolormap;
	.loc 1 856 25
	movq	fixedcolormap(%rip), %rax	# fixedcolormap, fixedcolormap.76_28
	movl	-4(%rbp), %edx	# i, tmp127
	movslq	%edx, %rdx	# tmp127, tmp126
	leaq	0(,%rdx,8), %rcx	#, tmp128
	leaq	scalelightfixed(%rip), %rdx	#, tmp129
	movq	%rax, (%rcx,%rdx)	# fixedcolormap.76_28, scalelightfixed[i_33]
# r_main.c:855: 	for (i=0 ; i<MAXLIGHTSCALE ; i++)
	.loc 1 855 32 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L95:
# r_main.c:855: 	for (i=0 ; i<MAXLIGHTSCALE ; i++)
	.loc 1 855 14 discriminator 1
	cmpl	$47, -4(%rbp)	#, i
	jle	.L96	#,
	jmp	.L97	#
.L94:
# r_main.c:859: 	fixedcolormap = 0;
	.loc 1 859 16
	movq	$0, fixedcolormap(%rip)	#, fixedcolormap
.L97:
# r_main.c:861:     framecount++;
	.loc 1 861 15
	movl	framecount(%rip), %eax	# framecount, framecount.77_29
	addl	$1, %eax	#, _30
	movl	%eax, framecount(%rip)	# _30, framecount
# r_main.c:862:     validcount++;
	.loc 1 862 15
	movl	validcount(%rip), %eax	# validcount, validcount.78_31
	addl	$1, %eax	#, _32
	movl	%eax, validcount(%rip)	# _32, validcount
# r_main.c:863: }
	.loc 1 863 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE21:
	.size	R_SetupFrame, .-R_SetupFrame
	.globl	R_RenderPlayerView
	.type	R_RenderPlayerView, @function
R_RenderPlayerView:
.LFB22:
	.loc 1 871 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# player, player
# r_main.c:872:     R_SetupFrame (player);
	.loc 1 872 5
	movq	-8(%rbp), %rax	# player, tmp84
	movq	%rax, %rdi	# tmp84,
	call	R_SetupFrame	#
# r_main.c:875:     R_ClearClipSegs ();
	.loc 1 875 5
	call	R_ClearClipSegs@PLT	#
# r_main.c:876:     R_ClearDrawSegs ();
	.loc 1 876 5
	call	R_ClearDrawSegs@PLT	#
# r_main.c:877:     R_ClearPlanes ();
	.loc 1 877 5
	call	R_ClearPlanes@PLT	#
# r_main.c:878:     R_ClearSprites ();
	.loc 1 878 5
	call	R_ClearSprites@PLT	#
# r_main.c:881:     NetUpdate ();
	.loc 1 881 5
	call	NetUpdate@PLT	#
# r_main.c:884:     R_RenderBSPNode (numnodes-1);
	.loc 1 884 5
	movl	numnodes(%rip), %eax	# numnodes, numnodes.79_1
	subl	$1, %eax	#, _2
	movl	%eax, %edi	# _2,
	call	R_RenderBSPNode@PLT	#
# r_main.c:887:     NetUpdate ();
	.loc 1 887 5
	call	NetUpdate@PLT	#
# r_main.c:889:     R_DrawPlanes ();
	.loc 1 889 5
	call	R_DrawPlanes@PLT	#
# r_main.c:892:     NetUpdate ();
	.loc 1 892 5
	call	NetUpdate@PLT	#
# r_main.c:894:     R_DrawMasked ();
	.loc 1 894 5
	call	R_DrawMasked@PLT	#
# r_main.c:897:     NetUpdate ();				
	.loc 1 897 5
	call	NetUpdate@PLT	#
# r_main.c:898: }
	.loc 1 898 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE22:
	.size	R_RenderPlayerView, .-R_RenderPlayerView
.Letext0:
	.file 2 "doomdef.h"
	.file 3 "m_fixed.h"
	.file 4 "tables.h"
	.file 5 "d_think.h"
	.file 6 "info.h"
	.file 7 "p_pspr.h"
	.file 8 "doomtype.h"
	.file 9 "doomdata.h"
	.file 10 "p_mobj.h"
	.file 11 "r_defs.h"
	.file 12 "d_player.h"
	.file 13 "d_ticcmd.h"
	.file 14 "m_bbox.h"
	.file 15 "r_state.h"
	.file 16 "r_main.h"
	.file 17 "r_plane.h"
	.file 18 "r_things.h"
	.file 19 "d_net.h"
	.file 20 "r_bsp.h"
	.file 21 "r_draw.h"
	.file 22 "r_sky.h"
	.file 23 "r_data.h"
	.file 24 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3b4e
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x2d
	.long	.LASF1582
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xa
	.long	0x51
	.long	0x3e
	.uleb128 0xc
	.long	0x43
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.long	0x2e
	.uleb128 0x10
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x10
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x23
	.long	0x4a
	.uleb128 0x18
	.long	.LASF1547
	.byte	0x1b
	.byte	0x13
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x2e
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x10
	.byte	0x8
	.byte	0x5
	.long	.LASF4
	.uleb128 0x10
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0x10
	.byte	0x1
	.byte	0x8
	.long	.LASF6
	.uleb128 0x10
	.byte	0x2
	.byte	0x7
	.long	.LASF7
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x10
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x10
	.byte	0x2
	.byte	0x5
	.long	.LASF10
	.uleb128 0x2f
	.byte	0x8
	.uleb128 0x7
	.long	0x4a
	.uleb128 0x10
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x10
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x10
	.byte	0x8
	.byte	0x4
	.long	.LASF13
	.uleb128 0x7
	.long	0x51
	.uleb128 0x11
	.long	0x8e
	.byte	0x2
	.byte	0xa3
	.byte	0x1
	.long	0xfb
	.uleb128 0x2
	.long	.LASF14
	.byte	0
	.uleb128 0x2
	.long	.LASF15
	.byte	0x1
	.uleb128 0x2
	.long	.LASF16
	.byte	0x2
	.uleb128 0x2
	.long	.LASF17
	.byte	0x3
	.uleb128 0x2
	.long	.LASF18
	.byte	0x4
	.uleb128 0x2
	.long	.LASF19
	.byte	0x5
	.uleb128 0x2
	.long	.LASF20
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.long	0x8e
	.byte	0x2
	.byte	0xb5
	.byte	0x1
	.long	0x14a
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
	.uleb128 0x2
	.long	.LASF25
	.byte	0x4
	.uleb128 0x2
	.long	.LASF26
	.byte	0x5
	.uleb128 0x2
	.long	.LASF27
	.byte	0x6
	.uleb128 0x2
	.long	.LASF28
	.byte	0x7
	.uleb128 0x2
	.long	.LASF29
	.byte	0x8
	.uleb128 0x2
	.long	.LASF30
	.byte	0x9
	.uleb128 0x2
	.long	.LASF31
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	.LASF45
	.byte	0x2
	.byte	0xc5
	.byte	0x3
	.long	0xfb
	.uleb128 0x11
	.long	0x8e
	.byte	0x2
	.byte	0xca
	.byte	0x1
	.long	0x187
	.uleb128 0x2
	.long	.LASF32
	.byte	0
	.uleb128 0x2
	.long	.LASF33
	.byte	0x1
	.uleb128 0x2
	.long	.LASF34
	.byte	0x2
	.uleb128 0x2
	.long	.LASF35
	.byte	0x3
	.uleb128 0x2
	.long	.LASF36
	.byte	0x4
	.uleb128 0x2
	.long	.LASF37
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.long	0x8e
	.byte	0x2
	.byte	0xd7
	.byte	0x1
	.long	0x1be
	.uleb128 0x2
	.long	.LASF38
	.byte	0
	.uleb128 0x2
	.long	.LASF39
	.byte	0x1
	.uleb128 0x2
	.long	.LASF40
	.byte	0x2
	.uleb128 0x2
	.long	.LASF41
	.byte	0x3
	.uleb128 0x2
	.long	.LASF42
	.byte	0x4
	.uleb128 0x2
	.long	.LASF43
	.byte	0x5
	.uleb128 0x2
	.long	.LASF44
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	.LASF46
	.byte	0x3
	.byte	0x26
	.byte	0xd
	.long	0x6b
	.uleb128 0xa
	.long	0x1be
	.long	0x1db
	.uleb128 0x16
	.long	0x43
	.value	0x27ff
	.byte	0
	.uleb128 0x4
	.long	.LASF47
	.byte	0x4
	.byte	0x3a
	.byte	0x12
	.long	0x1ca
	.uleb128 0x4
	.long	.LASF48
	.byte	0x4
	.byte	0x3d
	.byte	0x12
	.long	0x1f3
	.uleb128 0x7
	.long	0x1be
	.uleb128 0xa
	.long	0x1be
	.long	0x209
	.uleb128 0x16
	.long	0x43
	.value	0xfff
	.byte	0
	.uleb128 0x4
	.long	.LASF49
	.byte	0x4
	.byte	0x41
	.byte	0x11
	.long	0x1f8
	.uleb128 0x8
	.long	.LASF50
	.byte	0x4
	.byte	0x4e
	.byte	0x12
	.long	0x8e
	.uleb128 0xa
	.long	0x215
	.long	0x232
	.uleb128 0x16
	.long	0x43
	.value	0x800
	.byte	0
	.uleb128 0x4
	.long	.LASF51
	.byte	0x4
	.byte	0x54
	.byte	0x11
	.long	0x221
	.uleb128 0x8
	.long	.LASF52
	.byte	0x5
	.byte	0x29
	.byte	0x11
	.long	0x24a
	.uleb128 0x7
	.long	0x24f
	.uleb128 0x30
	.long	0x256
	.uleb128 0x24
	.byte	0
	.uleb128 0x8
	.long	.LASF53
	.byte	0x5
	.byte	0x2a
	.byte	0x11
	.long	0x262
	.uleb128 0x7
	.long	0x267
	.uleb128 0x25
	.long	0x272
	.uleb128 0xe
	.long	0xa3
	.byte	0
	.uleb128 0x8
	.long	.LASF54
	.byte	0x5
	.byte	0x2b
	.byte	0x11
	.long	0x27e
	.uleb128 0x7
	.long	0x283
	.uleb128 0x25
	.long	0x293
	.uleb128 0xe
	.long	0xa3
	.uleb128 0xe
	.long	0xa3
	.byte	0
	.uleb128 0x31
	.byte	0x8
	.byte	0x5
	.byte	0x2d
	.byte	0x9
	.long	0x2bd
	.uleb128 0x26
	.long	.LASF55
	.byte	0x2f
	.long	0x256
	.uleb128 0x32
	.string	"acv"
	.byte	0x5
	.byte	0x30
	.byte	0xd
	.long	0x23e
	.uleb128 0x26
	.long	.LASF56
	.byte	0x31
	.long	0x272
	.byte	0
	.uleb128 0x8
	.long	.LASF57
	.byte	0x5
	.byte	0x33
	.byte	0x3
	.long	0x293
	.uleb128 0x8
	.long	.LASF58
	.byte	0x5
	.byte	0x3c
	.byte	0x14
	.long	0x2bd
	.uleb128 0x1b
	.long	.LASF1356
	.byte	0x18
	.byte	0x5
	.byte	0x40
	.long	0x309
	.uleb128 0x3
	.long	.LASF59
	.byte	0x5
	.byte	0x42
	.byte	0x17
	.long	0x309
	.byte	0
	.uleb128 0x3
	.long	.LASF60
	.byte	0x5
	.byte	0x43
	.byte	0x17
	.long	0x309
	.byte	0x8
	.uleb128 0x3
	.long	.LASF61
	.byte	0x5
	.byte	0x44
	.byte	0xe
	.long	0x2c9
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	0x2d5
	.uleb128 0x8
	.long	.LASF62
	.byte	0x5
	.byte	0x46
	.byte	0x3
	.long	0x2d5
	.uleb128 0x11
	.long	0x8e
	.byte	0x6
	.byte	0x1f
	.byte	0x1
	.long	0x669
	.uleb128 0x2
	.long	.LASF63
	.byte	0
	.uleb128 0x2
	.long	.LASF64
	.byte	0x1
	.uleb128 0x2
	.long	.LASF65
	.byte	0x2
	.uleb128 0x2
	.long	.LASF66
	.byte	0x3
	.uleb128 0x2
	.long	.LASF67
	.byte	0x4
	.uleb128 0x2
	.long	.LASF68
	.byte	0x5
	.uleb128 0x2
	.long	.LASF69
	.byte	0x6
	.uleb128 0x2
	.long	.LASF70
	.byte	0x7
	.uleb128 0x2
	.long	.LASF71
	.byte	0x8
	.uleb128 0x2
	.long	.LASF72
	.byte	0x9
	.uleb128 0x2
	.long	.LASF73
	.byte	0xa
	.uleb128 0x2
	.long	.LASF74
	.byte	0xb
	.uleb128 0x2
	.long	.LASF75
	.byte	0xc
	.uleb128 0x2
	.long	.LASF76
	.byte	0xd
	.uleb128 0x2
	.long	.LASF77
	.byte	0xe
	.uleb128 0x2
	.long	.LASF78
	.byte	0xf
	.uleb128 0x2
	.long	.LASF79
	.byte	0x10
	.uleb128 0x2
	.long	.LASF80
	.byte	0x11
	.uleb128 0x2
	.long	.LASF81
	.byte	0x12
	.uleb128 0x2
	.long	.LASF82
	.byte	0x13
	.uleb128 0x2
	.long	.LASF83
	.byte	0x14
	.uleb128 0x2
	.long	.LASF84
	.byte	0x15
	.uleb128 0x2
	.long	.LASF85
	.byte	0x16
	.uleb128 0x2
	.long	.LASF86
	.byte	0x17
	.uleb128 0x2
	.long	.LASF87
	.byte	0x18
	.uleb128 0x2
	.long	.LASF88
	.byte	0x19
	.uleb128 0x2
	.long	.LASF89
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF90
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF91
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF92
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF93
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF94
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF95
	.byte	0x20
	.uleb128 0x2
	.long	.LASF96
	.byte	0x21
	.uleb128 0x2
	.long	.LASF97
	.byte	0x22
	.uleb128 0x2
	.long	.LASF98
	.byte	0x23
	.uleb128 0x2
	.long	.LASF99
	.byte	0x24
	.uleb128 0x2
	.long	.LASF100
	.byte	0x25
	.uleb128 0x2
	.long	.LASF101
	.byte	0x26
	.uleb128 0x2
	.long	.LASF102
	.byte	0x27
	.uleb128 0x2
	.long	.LASF103
	.byte	0x28
	.uleb128 0x2
	.long	.LASF104
	.byte	0x29
	.uleb128 0x2
	.long	.LASF105
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF106
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF107
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF108
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF109
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF110
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF111
	.byte	0x30
	.uleb128 0x2
	.long	.LASF112
	.byte	0x31
	.uleb128 0x2
	.long	.LASF113
	.byte	0x32
	.uleb128 0x2
	.long	.LASF114
	.byte	0x33
	.uleb128 0x2
	.long	.LASF115
	.byte	0x34
	.uleb128 0x2
	.long	.LASF116
	.byte	0x35
	.uleb128 0x2
	.long	.LASF117
	.byte	0x36
	.uleb128 0x2
	.long	.LASF118
	.byte	0x37
	.uleb128 0x2
	.long	.LASF119
	.byte	0x38
	.uleb128 0x2
	.long	.LASF120
	.byte	0x39
	.uleb128 0x2
	.long	.LASF121
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF122
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF123
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF124
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF125
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF126
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF127
	.byte	0x40
	.uleb128 0x2
	.long	.LASF128
	.byte	0x41
	.uleb128 0x2
	.long	.LASF129
	.byte	0x42
	.uleb128 0x2
	.long	.LASF130
	.byte	0x43
	.uleb128 0x2
	.long	.LASF131
	.byte	0x44
	.uleb128 0x2
	.long	.LASF132
	.byte	0x45
	.uleb128 0x2
	.long	.LASF133
	.byte	0x46
	.uleb128 0x2
	.long	.LASF134
	.byte	0x47
	.uleb128 0x2
	.long	.LASF135
	.byte	0x48
	.uleb128 0x2
	.long	.LASF136
	.byte	0x49
	.uleb128 0x2
	.long	.LASF137
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF138
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF139
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF140
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF141
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF142
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF143
	.byte	0x50
	.uleb128 0x2
	.long	.LASF144
	.byte	0x51
	.uleb128 0x2
	.long	.LASF145
	.byte	0x52
	.uleb128 0x2
	.long	.LASF146
	.byte	0x53
	.uleb128 0x2
	.long	.LASF147
	.byte	0x54
	.uleb128 0x2
	.long	.LASF148
	.byte	0x55
	.uleb128 0x2
	.long	.LASF149
	.byte	0x56
	.uleb128 0x2
	.long	.LASF150
	.byte	0x57
	.uleb128 0x2
	.long	.LASF151
	.byte	0x58
	.uleb128 0x2
	.long	.LASF152
	.byte	0x59
	.uleb128 0x2
	.long	.LASF153
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF154
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF155
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF156
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF157
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF158
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF159
	.byte	0x60
	.uleb128 0x2
	.long	.LASF160
	.byte	0x61
	.uleb128 0x2
	.long	.LASF161
	.byte	0x62
	.uleb128 0x2
	.long	.LASF162
	.byte	0x63
	.uleb128 0x2
	.long	.LASF163
	.byte	0x64
	.uleb128 0x2
	.long	.LASF164
	.byte	0x65
	.uleb128 0x2
	.long	.LASF165
	.byte	0x66
	.uleb128 0x2
	.long	.LASF166
	.byte	0x67
	.uleb128 0x2
	.long	.LASF167
	.byte	0x68
	.uleb128 0x2
	.long	.LASF168
	.byte	0x69
	.uleb128 0x2
	.long	.LASF169
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF170
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF171
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF172
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF173
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF174
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF175
	.byte	0x70
	.uleb128 0x2
	.long	.LASF176
	.byte	0x71
	.uleb128 0x2
	.long	.LASF177
	.byte	0x72
	.uleb128 0x2
	.long	.LASF178
	.byte	0x73
	.uleb128 0x2
	.long	.LASF179
	.byte	0x74
	.uleb128 0x2
	.long	.LASF180
	.byte	0x75
	.uleb128 0x2
	.long	.LASF181
	.byte	0x76
	.uleb128 0x2
	.long	.LASF182
	.byte	0x77
	.uleb128 0x2
	.long	.LASF183
	.byte	0x78
	.uleb128 0x2
	.long	.LASF184
	.byte	0x79
	.uleb128 0x2
	.long	.LASF185
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF186
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF187
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF188
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF189
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF190
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF191
	.byte	0x80
	.uleb128 0x2
	.long	.LASF192
	.byte	0x81
	.uleb128 0x2
	.long	.LASF193
	.byte	0x82
	.uleb128 0x2
	.long	.LASF194
	.byte	0x83
	.uleb128 0x2
	.long	.LASF195
	.byte	0x84
	.uleb128 0x2
	.long	.LASF196
	.byte	0x85
	.uleb128 0x2
	.long	.LASF197
	.byte	0x86
	.uleb128 0x2
	.long	.LASF198
	.byte	0x87
	.uleb128 0x2
	.long	.LASF199
	.byte	0x88
	.uleb128 0x2
	.long	.LASF200
	.byte	0x89
	.uleb128 0x2
	.long	.LASF201
	.byte	0x8a
	.byte	0
	.uleb128 0x8
	.long	.LASF202
	.byte	0x6
	.byte	0xac
	.byte	0x3
	.long	0x31a
	.uleb128 0x11
	.long	0x8e
	.byte	0x6
	.byte	0xaf
	.byte	0x1
	.long	0x1ffa
	.uleb128 0x2
	.long	.LASF203
	.byte	0
	.uleb128 0x2
	.long	.LASF204
	.byte	0x1
	.uleb128 0x2
	.long	.LASF205
	.byte	0x2
	.uleb128 0x2
	.long	.LASF206
	.byte	0x3
	.uleb128 0x2
	.long	.LASF207
	.byte	0x4
	.uleb128 0x2
	.long	.LASF208
	.byte	0x5
	.uleb128 0x2
	.long	.LASF209
	.byte	0x6
	.uleb128 0x2
	.long	.LASF210
	.byte	0x7
	.uleb128 0x2
	.long	.LASF211
	.byte	0x8
	.uleb128 0x2
	.long	.LASF212
	.byte	0x9
	.uleb128 0x2
	.long	.LASF213
	.byte	0xa
	.uleb128 0x2
	.long	.LASF214
	.byte	0xb
	.uleb128 0x2
	.long	.LASF215
	.byte	0xc
	.uleb128 0x2
	.long	.LASF216
	.byte	0xd
	.uleb128 0x2
	.long	.LASF217
	.byte	0xe
	.uleb128 0x2
	.long	.LASF218
	.byte	0xf
	.uleb128 0x2
	.long	.LASF219
	.byte	0x10
	.uleb128 0x2
	.long	.LASF220
	.byte	0x11
	.uleb128 0x2
	.long	.LASF221
	.byte	0x12
	.uleb128 0x2
	.long	.LASF222
	.byte	0x13
	.uleb128 0x2
	.long	.LASF223
	.byte	0x14
	.uleb128 0x2
	.long	.LASF224
	.byte	0x15
	.uleb128 0x2
	.long	.LASF225
	.byte	0x16
	.uleb128 0x2
	.long	.LASF226
	.byte	0x17
	.uleb128 0x2
	.long	.LASF227
	.byte	0x18
	.uleb128 0x2
	.long	.LASF228
	.byte	0x19
	.uleb128 0x2
	.long	.LASF229
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF230
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF231
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF232
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF233
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF234
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF235
	.byte	0x20
	.uleb128 0x2
	.long	.LASF236
	.byte	0x21
	.uleb128 0x2
	.long	.LASF237
	.byte	0x22
	.uleb128 0x2
	.long	.LASF238
	.byte	0x23
	.uleb128 0x2
	.long	.LASF239
	.byte	0x24
	.uleb128 0x2
	.long	.LASF240
	.byte	0x25
	.uleb128 0x2
	.long	.LASF241
	.byte	0x26
	.uleb128 0x2
	.long	.LASF242
	.byte	0x27
	.uleb128 0x2
	.long	.LASF243
	.byte	0x28
	.uleb128 0x2
	.long	.LASF244
	.byte	0x29
	.uleb128 0x2
	.long	.LASF245
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF246
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF247
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF248
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF249
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF250
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF251
	.byte	0x30
	.uleb128 0x2
	.long	.LASF252
	.byte	0x31
	.uleb128 0x2
	.long	.LASF253
	.byte	0x32
	.uleb128 0x2
	.long	.LASF254
	.byte	0x33
	.uleb128 0x2
	.long	.LASF255
	.byte	0x34
	.uleb128 0x2
	.long	.LASF256
	.byte	0x35
	.uleb128 0x2
	.long	.LASF257
	.byte	0x36
	.uleb128 0x2
	.long	.LASF258
	.byte	0x37
	.uleb128 0x2
	.long	.LASF259
	.byte	0x38
	.uleb128 0x2
	.long	.LASF260
	.byte	0x39
	.uleb128 0x2
	.long	.LASF261
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF262
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF263
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF264
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF265
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF266
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF267
	.byte	0x40
	.uleb128 0x2
	.long	.LASF268
	.byte	0x41
	.uleb128 0x2
	.long	.LASF269
	.byte	0x42
	.uleb128 0x2
	.long	.LASF270
	.byte	0x43
	.uleb128 0x2
	.long	.LASF271
	.byte	0x44
	.uleb128 0x2
	.long	.LASF272
	.byte	0x45
	.uleb128 0x2
	.long	.LASF273
	.byte	0x46
	.uleb128 0x2
	.long	.LASF274
	.byte	0x47
	.uleb128 0x2
	.long	.LASF275
	.byte	0x48
	.uleb128 0x2
	.long	.LASF276
	.byte	0x49
	.uleb128 0x2
	.long	.LASF277
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF278
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF279
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF280
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF281
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF282
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF283
	.byte	0x50
	.uleb128 0x2
	.long	.LASF284
	.byte	0x51
	.uleb128 0x2
	.long	.LASF285
	.byte	0x52
	.uleb128 0x2
	.long	.LASF286
	.byte	0x53
	.uleb128 0x2
	.long	.LASF287
	.byte	0x54
	.uleb128 0x2
	.long	.LASF288
	.byte	0x55
	.uleb128 0x2
	.long	.LASF289
	.byte	0x56
	.uleb128 0x2
	.long	.LASF290
	.byte	0x57
	.uleb128 0x2
	.long	.LASF291
	.byte	0x58
	.uleb128 0x2
	.long	.LASF292
	.byte	0x59
	.uleb128 0x2
	.long	.LASF293
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF294
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF295
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF296
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF297
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF298
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF299
	.byte	0x60
	.uleb128 0x2
	.long	.LASF300
	.byte	0x61
	.uleb128 0x2
	.long	.LASF301
	.byte	0x62
	.uleb128 0x2
	.long	.LASF302
	.byte	0x63
	.uleb128 0x2
	.long	.LASF303
	.byte	0x64
	.uleb128 0x2
	.long	.LASF304
	.byte	0x65
	.uleb128 0x2
	.long	.LASF305
	.byte	0x66
	.uleb128 0x2
	.long	.LASF306
	.byte	0x67
	.uleb128 0x2
	.long	.LASF307
	.byte	0x68
	.uleb128 0x2
	.long	.LASF308
	.byte	0x69
	.uleb128 0x2
	.long	.LASF309
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF310
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF311
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF312
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF313
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF314
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF315
	.byte	0x70
	.uleb128 0x2
	.long	.LASF316
	.byte	0x71
	.uleb128 0x2
	.long	.LASF317
	.byte	0x72
	.uleb128 0x2
	.long	.LASF318
	.byte	0x73
	.uleb128 0x2
	.long	.LASF319
	.byte	0x74
	.uleb128 0x2
	.long	.LASF320
	.byte	0x75
	.uleb128 0x2
	.long	.LASF321
	.byte	0x76
	.uleb128 0x2
	.long	.LASF322
	.byte	0x77
	.uleb128 0x2
	.long	.LASF323
	.byte	0x78
	.uleb128 0x2
	.long	.LASF324
	.byte	0x79
	.uleb128 0x2
	.long	.LASF325
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF326
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF327
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF328
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF329
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF330
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF331
	.byte	0x80
	.uleb128 0x2
	.long	.LASF332
	.byte	0x81
	.uleb128 0x2
	.long	.LASF333
	.byte	0x82
	.uleb128 0x2
	.long	.LASF334
	.byte	0x83
	.uleb128 0x2
	.long	.LASF335
	.byte	0x84
	.uleb128 0x2
	.long	.LASF336
	.byte	0x85
	.uleb128 0x2
	.long	.LASF337
	.byte	0x86
	.uleb128 0x2
	.long	.LASF338
	.byte	0x87
	.uleb128 0x2
	.long	.LASF339
	.byte	0x88
	.uleb128 0x2
	.long	.LASF340
	.byte	0x89
	.uleb128 0x2
	.long	.LASF341
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF342
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF343
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF344
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF345
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF346
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF347
	.byte	0x90
	.uleb128 0x2
	.long	.LASF348
	.byte	0x91
	.uleb128 0x2
	.long	.LASF349
	.byte	0x92
	.uleb128 0x2
	.long	.LASF350
	.byte	0x93
	.uleb128 0x2
	.long	.LASF351
	.byte	0x94
	.uleb128 0x2
	.long	.LASF352
	.byte	0x95
	.uleb128 0x2
	.long	.LASF353
	.byte	0x96
	.uleb128 0x2
	.long	.LASF354
	.byte	0x97
	.uleb128 0x2
	.long	.LASF355
	.byte	0x98
	.uleb128 0x2
	.long	.LASF356
	.byte	0x99
	.uleb128 0x2
	.long	.LASF357
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF358
	.byte	0x9b
	.uleb128 0x2
	.long	.LASF359
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF360
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF361
	.byte	0x9e
	.uleb128 0x2
	.long	.LASF362
	.byte	0x9f
	.uleb128 0x2
	.long	.LASF363
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF364
	.byte	0xa1
	.uleb128 0x2
	.long	.LASF365
	.byte	0xa2
	.uleb128 0x2
	.long	.LASF366
	.byte	0xa3
	.uleb128 0x2
	.long	.LASF367
	.byte	0xa4
	.uleb128 0x2
	.long	.LASF368
	.byte	0xa5
	.uleb128 0x2
	.long	.LASF369
	.byte	0xa6
	.uleb128 0x2
	.long	.LASF370
	.byte	0xa7
	.uleb128 0x2
	.long	.LASF371
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF372
	.byte	0xa9
	.uleb128 0x2
	.long	.LASF373
	.byte	0xaa
	.uleb128 0x2
	.long	.LASF374
	.byte	0xab
	.uleb128 0x2
	.long	.LASF375
	.byte	0xac
	.uleb128 0x2
	.long	.LASF376
	.byte	0xad
	.uleb128 0x2
	.long	.LASF377
	.byte	0xae
	.uleb128 0x2
	.long	.LASF378
	.byte	0xaf
	.uleb128 0x2
	.long	.LASF379
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF380
	.byte	0xb1
	.uleb128 0x2
	.long	.LASF381
	.byte	0xb2
	.uleb128 0x2
	.long	.LASF382
	.byte	0xb3
	.uleb128 0x2
	.long	.LASF383
	.byte	0xb4
	.uleb128 0x2
	.long	.LASF384
	.byte	0xb5
	.uleb128 0x2
	.long	.LASF385
	.byte	0xb6
	.uleb128 0x2
	.long	.LASF386
	.byte	0xb7
	.uleb128 0x2
	.long	.LASF387
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF388
	.byte	0xb9
	.uleb128 0x2
	.long	.LASF389
	.byte	0xba
	.uleb128 0x2
	.long	.LASF390
	.byte	0xbb
	.uleb128 0x2
	.long	.LASF391
	.byte	0xbc
	.uleb128 0x2
	.long	.LASF392
	.byte	0xbd
	.uleb128 0x2
	.long	.LASF393
	.byte	0xbe
	.uleb128 0x2
	.long	.LASF394
	.byte	0xbf
	.uleb128 0x2
	.long	.LASF395
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF396
	.byte	0xc1
	.uleb128 0x2
	.long	.LASF397
	.byte	0xc2
	.uleb128 0x2
	.long	.LASF398
	.byte	0xc3
	.uleb128 0x2
	.long	.LASF399
	.byte	0xc4
	.uleb128 0x2
	.long	.LASF400
	.byte	0xc5
	.uleb128 0x2
	.long	.LASF401
	.byte	0xc6
	.uleb128 0x2
	.long	.LASF402
	.byte	0xc7
	.uleb128 0x2
	.long	.LASF403
	.byte	0xc8
	.uleb128 0x2
	.long	.LASF404
	.byte	0xc9
	.uleb128 0x2
	.long	.LASF405
	.byte	0xca
	.uleb128 0x2
	.long	.LASF406
	.byte	0xcb
	.uleb128 0x2
	.long	.LASF407
	.byte	0xcc
	.uleb128 0x2
	.long	.LASF408
	.byte	0xcd
	.uleb128 0x2
	.long	.LASF409
	.byte	0xce
	.uleb128 0x2
	.long	.LASF410
	.byte	0xcf
	.uleb128 0x2
	.long	.LASF411
	.byte	0xd0
	.uleb128 0x2
	.long	.LASF412
	.byte	0xd1
	.uleb128 0x2
	.long	.LASF413
	.byte	0xd2
	.uleb128 0x2
	.long	.LASF414
	.byte	0xd3
	.uleb128 0x2
	.long	.LASF415
	.byte	0xd4
	.uleb128 0x2
	.long	.LASF416
	.byte	0xd5
	.uleb128 0x2
	.long	.LASF417
	.byte	0xd6
	.uleb128 0x2
	.long	.LASF418
	.byte	0xd7
	.uleb128 0x2
	.long	.LASF419
	.byte	0xd8
	.uleb128 0x2
	.long	.LASF420
	.byte	0xd9
	.uleb128 0x2
	.long	.LASF421
	.byte	0xda
	.uleb128 0x2
	.long	.LASF422
	.byte	0xdb
	.uleb128 0x2
	.long	.LASF423
	.byte	0xdc
	.uleb128 0x2
	.long	.LASF424
	.byte	0xdd
	.uleb128 0x2
	.long	.LASF425
	.byte	0xde
	.uleb128 0x2
	.long	.LASF426
	.byte	0xdf
	.uleb128 0x2
	.long	.LASF427
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF428
	.byte	0xe1
	.uleb128 0x2
	.long	.LASF429
	.byte	0xe2
	.uleb128 0x2
	.long	.LASF430
	.byte	0xe3
	.uleb128 0x2
	.long	.LASF431
	.byte	0xe4
	.uleb128 0x2
	.long	.LASF432
	.byte	0xe5
	.uleb128 0x2
	.long	.LASF433
	.byte	0xe6
	.uleb128 0x2
	.long	.LASF434
	.byte	0xe7
	.uleb128 0x2
	.long	.LASF435
	.byte	0xe8
	.uleb128 0x2
	.long	.LASF436
	.byte	0xe9
	.uleb128 0x2
	.long	.LASF437
	.byte	0xea
	.uleb128 0x2
	.long	.LASF438
	.byte	0xeb
	.uleb128 0x2
	.long	.LASF439
	.byte	0xec
	.uleb128 0x2
	.long	.LASF440
	.byte	0xed
	.uleb128 0x2
	.long	.LASF441
	.byte	0xee
	.uleb128 0x2
	.long	.LASF442
	.byte	0xef
	.uleb128 0x2
	.long	.LASF443
	.byte	0xf0
	.uleb128 0x2
	.long	.LASF444
	.byte	0xf1
	.uleb128 0x2
	.long	.LASF445
	.byte	0xf2
	.uleb128 0x2
	.long	.LASF446
	.byte	0xf3
	.uleb128 0x2
	.long	.LASF447
	.byte	0xf4
	.uleb128 0x2
	.long	.LASF448
	.byte	0xf5
	.uleb128 0x2
	.long	.LASF449
	.byte	0xf6
	.uleb128 0x2
	.long	.LASF450
	.byte	0xf7
	.uleb128 0x2
	.long	.LASF451
	.byte	0xf8
	.uleb128 0x2
	.long	.LASF452
	.byte	0xf9
	.uleb128 0x2
	.long	.LASF453
	.byte	0xfa
	.uleb128 0x2
	.long	.LASF454
	.byte	0xfb
	.uleb128 0x2
	.long	.LASF455
	.byte	0xfc
	.uleb128 0x2
	.long	.LASF456
	.byte	0xfd
	.uleb128 0x2
	.long	.LASF457
	.byte	0xfe
	.uleb128 0x2
	.long	.LASF458
	.byte	0xff
	.uleb128 0x1
	.long	.LASF459
	.value	0x100
	.uleb128 0x1
	.long	.LASF460
	.value	0x101
	.uleb128 0x1
	.long	.LASF461
	.value	0x102
	.uleb128 0x1
	.long	.LASF462
	.value	0x103
	.uleb128 0x1
	.long	.LASF463
	.value	0x104
	.uleb128 0x1
	.long	.LASF464
	.value	0x105
	.uleb128 0x1
	.long	.LASF465
	.value	0x106
	.uleb128 0x1
	.long	.LASF466
	.value	0x107
	.uleb128 0x1
	.long	.LASF467
	.value	0x108
	.uleb128 0x1
	.long	.LASF468
	.value	0x109
	.uleb128 0x1
	.long	.LASF469
	.value	0x10a
	.uleb128 0x1
	.long	.LASF470
	.value	0x10b
	.uleb128 0x1
	.long	.LASF471
	.value	0x10c
	.uleb128 0x1
	.long	.LASF472
	.value	0x10d
	.uleb128 0x1
	.long	.LASF473
	.value	0x10e
	.uleb128 0x1
	.long	.LASF474
	.value	0x10f
	.uleb128 0x1
	.long	.LASF475
	.value	0x110
	.uleb128 0x1
	.long	.LASF476
	.value	0x111
	.uleb128 0x1
	.long	.LASF477
	.value	0x112
	.uleb128 0x1
	.long	.LASF478
	.value	0x113
	.uleb128 0x1
	.long	.LASF479
	.value	0x114
	.uleb128 0x1
	.long	.LASF480
	.value	0x115
	.uleb128 0x1
	.long	.LASF481
	.value	0x116
	.uleb128 0x1
	.long	.LASF482
	.value	0x117
	.uleb128 0x1
	.long	.LASF483
	.value	0x118
	.uleb128 0x1
	.long	.LASF484
	.value	0x119
	.uleb128 0x1
	.long	.LASF485
	.value	0x11a
	.uleb128 0x1
	.long	.LASF486
	.value	0x11b
	.uleb128 0x1
	.long	.LASF487
	.value	0x11c
	.uleb128 0x1
	.long	.LASF488
	.value	0x11d
	.uleb128 0x1
	.long	.LASF489
	.value	0x11e
	.uleb128 0x1
	.long	.LASF490
	.value	0x11f
	.uleb128 0x1
	.long	.LASF491
	.value	0x120
	.uleb128 0x1
	.long	.LASF492
	.value	0x121
	.uleb128 0x1
	.long	.LASF493
	.value	0x122
	.uleb128 0x1
	.long	.LASF494
	.value	0x123
	.uleb128 0x1
	.long	.LASF495
	.value	0x124
	.uleb128 0x1
	.long	.LASF496
	.value	0x125
	.uleb128 0x1
	.long	.LASF497
	.value	0x126
	.uleb128 0x1
	.long	.LASF498
	.value	0x127
	.uleb128 0x1
	.long	.LASF499
	.value	0x128
	.uleb128 0x1
	.long	.LASF500
	.value	0x129
	.uleb128 0x1
	.long	.LASF501
	.value	0x12a
	.uleb128 0x1
	.long	.LASF502
	.value	0x12b
	.uleb128 0x1
	.long	.LASF503
	.value	0x12c
	.uleb128 0x1
	.long	.LASF504
	.value	0x12d
	.uleb128 0x1
	.long	.LASF505
	.value	0x12e
	.uleb128 0x1
	.long	.LASF506
	.value	0x12f
	.uleb128 0x1
	.long	.LASF507
	.value	0x130
	.uleb128 0x1
	.long	.LASF508
	.value	0x131
	.uleb128 0x1
	.long	.LASF509
	.value	0x132
	.uleb128 0x1
	.long	.LASF510
	.value	0x133
	.uleb128 0x1
	.long	.LASF511
	.value	0x134
	.uleb128 0x1
	.long	.LASF512
	.value	0x135
	.uleb128 0x1
	.long	.LASF513
	.value	0x136
	.uleb128 0x1
	.long	.LASF514
	.value	0x137
	.uleb128 0x1
	.long	.LASF515
	.value	0x138
	.uleb128 0x1
	.long	.LASF516
	.value	0x139
	.uleb128 0x1
	.long	.LASF517
	.value	0x13a
	.uleb128 0x1
	.long	.LASF518
	.value	0x13b
	.uleb128 0x1
	.long	.LASF519
	.value	0x13c
	.uleb128 0x1
	.long	.LASF520
	.value	0x13d
	.uleb128 0x1
	.long	.LASF521
	.value	0x13e
	.uleb128 0x1
	.long	.LASF522
	.value	0x13f
	.uleb128 0x1
	.long	.LASF523
	.value	0x140
	.uleb128 0x1
	.long	.LASF524
	.value	0x141
	.uleb128 0x1
	.long	.LASF525
	.value	0x142
	.uleb128 0x1
	.long	.LASF526
	.value	0x143
	.uleb128 0x1
	.long	.LASF527
	.value	0x144
	.uleb128 0x1
	.long	.LASF528
	.value	0x145
	.uleb128 0x1
	.long	.LASF529
	.value	0x146
	.uleb128 0x1
	.long	.LASF530
	.value	0x147
	.uleb128 0x1
	.long	.LASF531
	.value	0x148
	.uleb128 0x1
	.long	.LASF532
	.value	0x149
	.uleb128 0x1
	.long	.LASF533
	.value	0x14a
	.uleb128 0x1
	.long	.LASF534
	.value	0x14b
	.uleb128 0x1
	.long	.LASF535
	.value	0x14c
	.uleb128 0x1
	.long	.LASF536
	.value	0x14d
	.uleb128 0x1
	.long	.LASF537
	.value	0x14e
	.uleb128 0x1
	.long	.LASF538
	.value	0x14f
	.uleb128 0x1
	.long	.LASF539
	.value	0x150
	.uleb128 0x1
	.long	.LASF540
	.value	0x151
	.uleb128 0x1
	.long	.LASF541
	.value	0x152
	.uleb128 0x1
	.long	.LASF542
	.value	0x153
	.uleb128 0x1
	.long	.LASF543
	.value	0x154
	.uleb128 0x1
	.long	.LASF544
	.value	0x155
	.uleb128 0x1
	.long	.LASF545
	.value	0x156
	.uleb128 0x1
	.long	.LASF546
	.value	0x157
	.uleb128 0x1
	.long	.LASF547
	.value	0x158
	.uleb128 0x1
	.long	.LASF548
	.value	0x159
	.uleb128 0x1
	.long	.LASF549
	.value	0x15a
	.uleb128 0x1
	.long	.LASF550
	.value	0x15b
	.uleb128 0x1
	.long	.LASF551
	.value	0x15c
	.uleb128 0x1
	.long	.LASF552
	.value	0x15d
	.uleb128 0x1
	.long	.LASF553
	.value	0x15e
	.uleb128 0x1
	.long	.LASF554
	.value	0x15f
	.uleb128 0x1
	.long	.LASF555
	.value	0x160
	.uleb128 0x1
	.long	.LASF556
	.value	0x161
	.uleb128 0x1
	.long	.LASF557
	.value	0x162
	.uleb128 0x1
	.long	.LASF558
	.value	0x163
	.uleb128 0x1
	.long	.LASF559
	.value	0x164
	.uleb128 0x1
	.long	.LASF560
	.value	0x165
	.uleb128 0x1
	.long	.LASF561
	.value	0x166
	.uleb128 0x1
	.long	.LASF562
	.value	0x167
	.uleb128 0x1
	.long	.LASF563
	.value	0x168
	.uleb128 0x1
	.long	.LASF564
	.value	0x169
	.uleb128 0x1
	.long	.LASF565
	.value	0x16a
	.uleb128 0x1
	.long	.LASF566
	.value	0x16b
	.uleb128 0x1
	.long	.LASF567
	.value	0x16c
	.uleb128 0x1
	.long	.LASF568
	.value	0x16d
	.uleb128 0x1
	.long	.LASF569
	.value	0x16e
	.uleb128 0x1
	.long	.LASF570
	.value	0x16f
	.uleb128 0x1
	.long	.LASF571
	.value	0x170
	.uleb128 0x1
	.long	.LASF572
	.value	0x171
	.uleb128 0x1
	.long	.LASF573
	.value	0x172
	.uleb128 0x1
	.long	.LASF574
	.value	0x173
	.uleb128 0x1
	.long	.LASF575
	.value	0x174
	.uleb128 0x1
	.long	.LASF576
	.value	0x175
	.uleb128 0x1
	.long	.LASF577
	.value	0x176
	.uleb128 0x1
	.long	.LASF578
	.value	0x177
	.uleb128 0x1
	.long	.LASF579
	.value	0x178
	.uleb128 0x1
	.long	.LASF580
	.value	0x179
	.uleb128 0x1
	.long	.LASF581
	.value	0x17a
	.uleb128 0x1
	.long	.LASF582
	.value	0x17b
	.uleb128 0x1
	.long	.LASF583
	.value	0x17c
	.uleb128 0x1
	.long	.LASF584
	.value	0x17d
	.uleb128 0x1
	.long	.LASF585
	.value	0x17e
	.uleb128 0x1
	.long	.LASF586
	.value	0x17f
	.uleb128 0x1
	.long	.LASF587
	.value	0x180
	.uleb128 0x1
	.long	.LASF588
	.value	0x181
	.uleb128 0x1
	.long	.LASF589
	.value	0x182
	.uleb128 0x1
	.long	.LASF590
	.value	0x183
	.uleb128 0x1
	.long	.LASF591
	.value	0x184
	.uleb128 0x1
	.long	.LASF592
	.value	0x185
	.uleb128 0x1
	.long	.LASF593
	.value	0x186
	.uleb128 0x1
	.long	.LASF594
	.value	0x187
	.uleb128 0x1
	.long	.LASF595
	.value	0x188
	.uleb128 0x1
	.long	.LASF596
	.value	0x189
	.uleb128 0x1
	.long	.LASF597
	.value	0x18a
	.uleb128 0x1
	.long	.LASF598
	.value	0x18b
	.uleb128 0x1
	.long	.LASF599
	.value	0x18c
	.uleb128 0x1
	.long	.LASF600
	.value	0x18d
	.uleb128 0x1
	.long	.LASF601
	.value	0x18e
	.uleb128 0x1
	.long	.LASF602
	.value	0x18f
	.uleb128 0x1
	.long	.LASF603
	.value	0x190
	.uleb128 0x1
	.long	.LASF604
	.value	0x191
	.uleb128 0x1
	.long	.LASF605
	.value	0x192
	.uleb128 0x1
	.long	.LASF606
	.value	0x193
	.uleb128 0x1
	.long	.LASF607
	.value	0x194
	.uleb128 0x1
	.long	.LASF608
	.value	0x195
	.uleb128 0x1
	.long	.LASF609
	.value	0x196
	.uleb128 0x1
	.long	.LASF610
	.value	0x197
	.uleb128 0x1
	.long	.LASF611
	.value	0x198
	.uleb128 0x1
	.long	.LASF612
	.value	0x199
	.uleb128 0x1
	.long	.LASF613
	.value	0x19a
	.uleb128 0x1
	.long	.LASF614
	.value	0x19b
	.uleb128 0x1
	.long	.LASF615
	.value	0x19c
	.uleb128 0x1
	.long	.LASF616
	.value	0x19d
	.uleb128 0x1
	.long	.LASF617
	.value	0x19e
	.uleb128 0x1
	.long	.LASF618
	.value	0x19f
	.uleb128 0x1
	.long	.LASF619
	.value	0x1a0
	.uleb128 0x1
	.long	.LASF620
	.value	0x1a1
	.uleb128 0x1
	.long	.LASF621
	.value	0x1a2
	.uleb128 0x1
	.long	.LASF622
	.value	0x1a3
	.uleb128 0x1
	.long	.LASF623
	.value	0x1a4
	.uleb128 0x1
	.long	.LASF624
	.value	0x1a5
	.uleb128 0x1
	.long	.LASF625
	.value	0x1a6
	.uleb128 0x1
	.long	.LASF626
	.value	0x1a7
	.uleb128 0x1
	.long	.LASF627
	.value	0x1a8
	.uleb128 0x1
	.long	.LASF628
	.value	0x1a9
	.uleb128 0x1
	.long	.LASF629
	.value	0x1aa
	.uleb128 0x1
	.long	.LASF630
	.value	0x1ab
	.uleb128 0x1
	.long	.LASF631
	.value	0x1ac
	.uleb128 0x1
	.long	.LASF632
	.value	0x1ad
	.uleb128 0x1
	.long	.LASF633
	.value	0x1ae
	.uleb128 0x1
	.long	.LASF634
	.value	0x1af
	.uleb128 0x1
	.long	.LASF635
	.value	0x1b0
	.uleb128 0x1
	.long	.LASF636
	.value	0x1b1
	.uleb128 0x1
	.long	.LASF637
	.value	0x1b2
	.uleb128 0x1
	.long	.LASF638
	.value	0x1b3
	.uleb128 0x1
	.long	.LASF639
	.value	0x1b4
	.uleb128 0x1
	.long	.LASF640
	.value	0x1b5
	.uleb128 0x1
	.long	.LASF641
	.value	0x1b6
	.uleb128 0x1
	.long	.LASF642
	.value	0x1b7
	.uleb128 0x1
	.long	.LASF643
	.value	0x1b8
	.uleb128 0x1
	.long	.LASF644
	.value	0x1b9
	.uleb128 0x1
	.long	.LASF645
	.value	0x1ba
	.uleb128 0x1
	.long	.LASF646
	.value	0x1bb
	.uleb128 0x1
	.long	.LASF647
	.value	0x1bc
	.uleb128 0x1
	.long	.LASF648
	.value	0x1bd
	.uleb128 0x1
	.long	.LASF649
	.value	0x1be
	.uleb128 0x1
	.long	.LASF650
	.value	0x1bf
	.uleb128 0x1
	.long	.LASF651
	.value	0x1c0
	.uleb128 0x1
	.long	.LASF652
	.value	0x1c1
	.uleb128 0x1
	.long	.LASF653
	.value	0x1c2
	.uleb128 0x1
	.long	.LASF654
	.value	0x1c3
	.uleb128 0x1
	.long	.LASF655
	.value	0x1c4
	.uleb128 0x1
	.long	.LASF656
	.value	0x1c5
	.uleb128 0x1
	.long	.LASF657
	.value	0x1c6
	.uleb128 0x1
	.long	.LASF658
	.value	0x1c7
	.uleb128 0x1
	.long	.LASF659
	.value	0x1c8
	.uleb128 0x1
	.long	.LASF660
	.value	0x1c9
	.uleb128 0x1
	.long	.LASF661
	.value	0x1ca
	.uleb128 0x1
	.long	.LASF662
	.value	0x1cb
	.uleb128 0x1
	.long	.LASF663
	.value	0x1cc
	.uleb128 0x1
	.long	.LASF664
	.value	0x1cd
	.uleb128 0x1
	.long	.LASF665
	.value	0x1ce
	.uleb128 0x1
	.long	.LASF666
	.value	0x1cf
	.uleb128 0x1
	.long	.LASF667
	.value	0x1d0
	.uleb128 0x1
	.long	.LASF668
	.value	0x1d1
	.uleb128 0x1
	.long	.LASF669
	.value	0x1d2
	.uleb128 0x1
	.long	.LASF670
	.value	0x1d3
	.uleb128 0x1
	.long	.LASF671
	.value	0x1d4
	.uleb128 0x1
	.long	.LASF672
	.value	0x1d5
	.uleb128 0x1
	.long	.LASF673
	.value	0x1d6
	.uleb128 0x1
	.long	.LASF674
	.value	0x1d7
	.uleb128 0x1
	.long	.LASF675
	.value	0x1d8
	.uleb128 0x1
	.long	.LASF676
	.value	0x1d9
	.uleb128 0x1
	.long	.LASF677
	.value	0x1da
	.uleb128 0x1
	.long	.LASF678
	.value	0x1db
	.uleb128 0x1
	.long	.LASF679
	.value	0x1dc
	.uleb128 0x1
	.long	.LASF680
	.value	0x1dd
	.uleb128 0x1
	.long	.LASF681
	.value	0x1de
	.uleb128 0x1
	.long	.LASF682
	.value	0x1df
	.uleb128 0x1
	.long	.LASF683
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF684
	.value	0x1e1
	.uleb128 0x1
	.long	.LASF685
	.value	0x1e2
	.uleb128 0x1
	.long	.LASF686
	.value	0x1e3
	.uleb128 0x1
	.long	.LASF687
	.value	0x1e4
	.uleb128 0x1
	.long	.LASF688
	.value	0x1e5
	.uleb128 0x1
	.long	.LASF689
	.value	0x1e6
	.uleb128 0x1
	.long	.LASF690
	.value	0x1e7
	.uleb128 0x1
	.long	.LASF691
	.value	0x1e8
	.uleb128 0x1
	.long	.LASF692
	.value	0x1e9
	.uleb128 0x1
	.long	.LASF693
	.value	0x1ea
	.uleb128 0x1
	.long	.LASF694
	.value	0x1eb
	.uleb128 0x1
	.long	.LASF695
	.value	0x1ec
	.uleb128 0x1
	.long	.LASF696
	.value	0x1ed
	.uleb128 0x1
	.long	.LASF697
	.value	0x1ee
	.uleb128 0x1
	.long	.LASF698
	.value	0x1ef
	.uleb128 0x1
	.long	.LASF699
	.value	0x1f0
	.uleb128 0x1
	.long	.LASF700
	.value	0x1f1
	.uleb128 0x1
	.long	.LASF701
	.value	0x1f2
	.uleb128 0x1
	.long	.LASF702
	.value	0x1f3
	.uleb128 0x1
	.long	.LASF703
	.value	0x1f4
	.uleb128 0x1
	.long	.LASF704
	.value	0x1f5
	.uleb128 0x1
	.long	.LASF705
	.value	0x1f6
	.uleb128 0x1
	.long	.LASF706
	.value	0x1f7
	.uleb128 0x1
	.long	.LASF707
	.value	0x1f8
	.uleb128 0x1
	.long	.LASF708
	.value	0x1f9
	.uleb128 0x1
	.long	.LASF709
	.value	0x1fa
	.uleb128 0x1
	.long	.LASF710
	.value	0x1fb
	.uleb128 0x1
	.long	.LASF711
	.value	0x1fc
	.uleb128 0x1
	.long	.LASF712
	.value	0x1fd
	.uleb128 0x1
	.long	.LASF713
	.value	0x1fe
	.uleb128 0x1
	.long	.LASF714
	.value	0x1ff
	.uleb128 0x1
	.long	.LASF715
	.value	0x200
	.uleb128 0x1
	.long	.LASF716
	.value	0x201
	.uleb128 0x1
	.long	.LASF717
	.value	0x202
	.uleb128 0x1
	.long	.LASF718
	.value	0x203
	.uleb128 0x1
	.long	.LASF719
	.value	0x204
	.uleb128 0x1
	.long	.LASF720
	.value	0x205
	.uleb128 0x1
	.long	.LASF721
	.value	0x206
	.uleb128 0x1
	.long	.LASF722
	.value	0x207
	.uleb128 0x1
	.long	.LASF723
	.value	0x208
	.uleb128 0x1
	.long	.LASF724
	.value	0x209
	.uleb128 0x1
	.long	.LASF725
	.value	0x20a
	.uleb128 0x1
	.long	.LASF726
	.value	0x20b
	.uleb128 0x1
	.long	.LASF727
	.value	0x20c
	.uleb128 0x1
	.long	.LASF728
	.value	0x20d
	.uleb128 0x1
	.long	.LASF729
	.value	0x20e
	.uleb128 0x1
	.long	.LASF730
	.value	0x20f
	.uleb128 0x1
	.long	.LASF731
	.value	0x210
	.uleb128 0x1
	.long	.LASF732
	.value	0x211
	.uleb128 0x1
	.long	.LASF733
	.value	0x212
	.uleb128 0x1
	.long	.LASF734
	.value	0x213
	.uleb128 0x1
	.long	.LASF735
	.value	0x214
	.uleb128 0x1
	.long	.LASF736
	.value	0x215
	.uleb128 0x1
	.long	.LASF737
	.value	0x216
	.uleb128 0x1
	.long	.LASF738
	.value	0x217
	.uleb128 0x1
	.long	.LASF739
	.value	0x218
	.uleb128 0x1
	.long	.LASF740
	.value	0x219
	.uleb128 0x1
	.long	.LASF741
	.value	0x21a
	.uleb128 0x1
	.long	.LASF742
	.value	0x21b
	.uleb128 0x1
	.long	.LASF743
	.value	0x21c
	.uleb128 0x1
	.long	.LASF744
	.value	0x21d
	.uleb128 0x1
	.long	.LASF745
	.value	0x21e
	.uleb128 0x1
	.long	.LASF746
	.value	0x21f
	.uleb128 0x1
	.long	.LASF747
	.value	0x220
	.uleb128 0x1
	.long	.LASF748
	.value	0x221
	.uleb128 0x1
	.long	.LASF749
	.value	0x222
	.uleb128 0x1
	.long	.LASF750
	.value	0x223
	.uleb128 0x1
	.long	.LASF751
	.value	0x224
	.uleb128 0x1
	.long	.LASF752
	.value	0x225
	.uleb128 0x1
	.long	.LASF753
	.value	0x226
	.uleb128 0x1
	.long	.LASF754
	.value	0x227
	.uleb128 0x1
	.long	.LASF755
	.value	0x228
	.uleb128 0x1
	.long	.LASF756
	.value	0x229
	.uleb128 0x1
	.long	.LASF757
	.value	0x22a
	.uleb128 0x1
	.long	.LASF758
	.value	0x22b
	.uleb128 0x1
	.long	.LASF759
	.value	0x22c
	.uleb128 0x1
	.long	.LASF760
	.value	0x22d
	.uleb128 0x1
	.long	.LASF761
	.value	0x22e
	.uleb128 0x1
	.long	.LASF762
	.value	0x22f
	.uleb128 0x1
	.long	.LASF763
	.value	0x230
	.uleb128 0x1
	.long	.LASF764
	.value	0x231
	.uleb128 0x1
	.long	.LASF765
	.value	0x232
	.uleb128 0x1
	.long	.LASF766
	.value	0x233
	.uleb128 0x1
	.long	.LASF767
	.value	0x234
	.uleb128 0x1
	.long	.LASF768
	.value	0x235
	.uleb128 0x1
	.long	.LASF769
	.value	0x236
	.uleb128 0x1
	.long	.LASF770
	.value	0x237
	.uleb128 0x1
	.long	.LASF771
	.value	0x238
	.uleb128 0x1
	.long	.LASF772
	.value	0x239
	.uleb128 0x1
	.long	.LASF773
	.value	0x23a
	.uleb128 0x1
	.long	.LASF774
	.value	0x23b
	.uleb128 0x1
	.long	.LASF775
	.value	0x23c
	.uleb128 0x1
	.long	.LASF776
	.value	0x23d
	.uleb128 0x1
	.long	.LASF777
	.value	0x23e
	.uleb128 0x1
	.long	.LASF778
	.value	0x23f
	.uleb128 0x1
	.long	.LASF779
	.value	0x240
	.uleb128 0x1
	.long	.LASF780
	.value	0x241
	.uleb128 0x1
	.long	.LASF781
	.value	0x242
	.uleb128 0x1
	.long	.LASF782
	.value	0x243
	.uleb128 0x1
	.long	.LASF783
	.value	0x244
	.uleb128 0x1
	.long	.LASF784
	.value	0x245
	.uleb128 0x1
	.long	.LASF785
	.value	0x246
	.uleb128 0x1
	.long	.LASF786
	.value	0x247
	.uleb128 0x1
	.long	.LASF787
	.value	0x248
	.uleb128 0x1
	.long	.LASF788
	.value	0x249
	.uleb128 0x1
	.long	.LASF789
	.value	0x24a
	.uleb128 0x1
	.long	.LASF790
	.value	0x24b
	.uleb128 0x1
	.long	.LASF791
	.value	0x24c
	.uleb128 0x1
	.long	.LASF792
	.value	0x24d
	.uleb128 0x1
	.long	.LASF793
	.value	0x24e
	.uleb128 0x1
	.long	.LASF794
	.value	0x24f
	.uleb128 0x1
	.long	.LASF795
	.value	0x250
	.uleb128 0x1
	.long	.LASF796
	.value	0x251
	.uleb128 0x1
	.long	.LASF797
	.value	0x252
	.uleb128 0x1
	.long	.LASF798
	.value	0x253
	.uleb128 0x1
	.long	.LASF799
	.value	0x254
	.uleb128 0x1
	.long	.LASF800
	.value	0x255
	.uleb128 0x1
	.long	.LASF801
	.value	0x256
	.uleb128 0x1
	.long	.LASF802
	.value	0x257
	.uleb128 0x1
	.long	.LASF803
	.value	0x258
	.uleb128 0x1
	.long	.LASF804
	.value	0x259
	.uleb128 0x1
	.long	.LASF805
	.value	0x25a
	.uleb128 0x1
	.long	.LASF806
	.value	0x25b
	.uleb128 0x1
	.long	.LASF807
	.value	0x25c
	.uleb128 0x1
	.long	.LASF808
	.value	0x25d
	.uleb128 0x1
	.long	.LASF809
	.value	0x25e
	.uleb128 0x1
	.long	.LASF810
	.value	0x25f
	.uleb128 0x1
	.long	.LASF811
	.value	0x260
	.uleb128 0x1
	.long	.LASF812
	.value	0x261
	.uleb128 0x1
	.long	.LASF813
	.value	0x262
	.uleb128 0x1
	.long	.LASF814
	.value	0x263
	.uleb128 0x1
	.long	.LASF815
	.value	0x264
	.uleb128 0x1
	.long	.LASF816
	.value	0x265
	.uleb128 0x1
	.long	.LASF817
	.value	0x266
	.uleb128 0x1
	.long	.LASF818
	.value	0x267
	.uleb128 0x1
	.long	.LASF819
	.value	0x268
	.uleb128 0x1
	.long	.LASF820
	.value	0x269
	.uleb128 0x1
	.long	.LASF821
	.value	0x26a
	.uleb128 0x1
	.long	.LASF822
	.value	0x26b
	.uleb128 0x1
	.long	.LASF823
	.value	0x26c
	.uleb128 0x1
	.long	.LASF824
	.value	0x26d
	.uleb128 0x1
	.long	.LASF825
	.value	0x26e
	.uleb128 0x1
	.long	.LASF826
	.value	0x26f
	.uleb128 0x1
	.long	.LASF827
	.value	0x270
	.uleb128 0x1
	.long	.LASF828
	.value	0x271
	.uleb128 0x1
	.long	.LASF829
	.value	0x272
	.uleb128 0x1
	.long	.LASF830
	.value	0x273
	.uleb128 0x1
	.long	.LASF831
	.value	0x274
	.uleb128 0x1
	.long	.LASF832
	.value	0x275
	.uleb128 0x1
	.long	.LASF833
	.value	0x276
	.uleb128 0x1
	.long	.LASF834
	.value	0x277
	.uleb128 0x1
	.long	.LASF835
	.value	0x278
	.uleb128 0x1
	.long	.LASF836
	.value	0x279
	.uleb128 0x1
	.long	.LASF837
	.value	0x27a
	.uleb128 0x1
	.long	.LASF838
	.value	0x27b
	.uleb128 0x1
	.long	.LASF839
	.value	0x27c
	.uleb128 0x1
	.long	.LASF840
	.value	0x27d
	.uleb128 0x1
	.long	.LASF841
	.value	0x27e
	.uleb128 0x1
	.long	.LASF842
	.value	0x27f
	.uleb128 0x1
	.long	.LASF843
	.value	0x280
	.uleb128 0x1
	.long	.LASF844
	.value	0x281
	.uleb128 0x1
	.long	.LASF845
	.value	0x282
	.uleb128 0x1
	.long	.LASF846
	.value	0x283
	.uleb128 0x1
	.long	.LASF847
	.value	0x284
	.uleb128 0x1
	.long	.LASF848
	.value	0x285
	.uleb128 0x1
	.long	.LASF849
	.value	0x286
	.uleb128 0x1
	.long	.LASF850
	.value	0x287
	.uleb128 0x1
	.long	.LASF851
	.value	0x288
	.uleb128 0x1
	.long	.LASF852
	.value	0x289
	.uleb128 0x1
	.long	.LASF853
	.value	0x28a
	.uleb128 0x1
	.long	.LASF854
	.value	0x28b
	.uleb128 0x1
	.long	.LASF855
	.value	0x28c
	.uleb128 0x1
	.long	.LASF856
	.value	0x28d
	.uleb128 0x1
	.long	.LASF857
	.value	0x28e
	.uleb128 0x1
	.long	.LASF858
	.value	0x28f
	.uleb128 0x1
	.long	.LASF859
	.value	0x290
	.uleb128 0x1
	.long	.LASF860
	.value	0x291
	.uleb128 0x1
	.long	.LASF861
	.value	0x292
	.uleb128 0x1
	.long	.LASF862
	.value	0x293
	.uleb128 0x1
	.long	.LASF863
	.value	0x294
	.uleb128 0x1
	.long	.LASF864
	.value	0x295
	.uleb128 0x1
	.long	.LASF865
	.value	0x296
	.uleb128 0x1
	.long	.LASF866
	.value	0x297
	.uleb128 0x1
	.long	.LASF867
	.value	0x298
	.uleb128 0x1
	.long	.LASF868
	.value	0x299
	.uleb128 0x1
	.long	.LASF869
	.value	0x29a
	.uleb128 0x1
	.long	.LASF870
	.value	0x29b
	.uleb128 0x1
	.long	.LASF871
	.value	0x29c
	.uleb128 0x1
	.long	.LASF872
	.value	0x29d
	.uleb128 0x1
	.long	.LASF873
	.value	0x29e
	.uleb128 0x1
	.long	.LASF874
	.value	0x29f
	.uleb128 0x1
	.long	.LASF875
	.value	0x2a0
	.uleb128 0x1
	.long	.LASF876
	.value	0x2a1
	.uleb128 0x1
	.long	.LASF877
	.value	0x2a2
	.uleb128 0x1
	.long	.LASF878
	.value	0x2a3
	.uleb128 0x1
	.long	.LASF879
	.value	0x2a4
	.uleb128 0x1
	.long	.LASF880
	.value	0x2a5
	.uleb128 0x1
	.long	.LASF881
	.value	0x2a6
	.uleb128 0x1
	.long	.LASF882
	.value	0x2a7
	.uleb128 0x1
	.long	.LASF883
	.value	0x2a8
	.uleb128 0x1
	.long	.LASF884
	.value	0x2a9
	.uleb128 0x1
	.long	.LASF885
	.value	0x2aa
	.uleb128 0x1
	.long	.LASF886
	.value	0x2ab
	.uleb128 0x1
	.long	.LASF887
	.value	0x2ac
	.uleb128 0x1
	.long	.LASF888
	.value	0x2ad
	.uleb128 0x1
	.long	.LASF889
	.value	0x2ae
	.uleb128 0x1
	.long	.LASF890
	.value	0x2af
	.uleb128 0x1
	.long	.LASF891
	.value	0x2b0
	.uleb128 0x1
	.long	.LASF892
	.value	0x2b1
	.uleb128 0x1
	.long	.LASF893
	.value	0x2b2
	.uleb128 0x1
	.long	.LASF894
	.value	0x2b3
	.uleb128 0x1
	.long	.LASF895
	.value	0x2b4
	.uleb128 0x1
	.long	.LASF896
	.value	0x2b5
	.uleb128 0x1
	.long	.LASF897
	.value	0x2b6
	.uleb128 0x1
	.long	.LASF898
	.value	0x2b7
	.uleb128 0x1
	.long	.LASF899
	.value	0x2b8
	.uleb128 0x1
	.long	.LASF900
	.value	0x2b9
	.uleb128 0x1
	.long	.LASF901
	.value	0x2ba
	.uleb128 0x1
	.long	.LASF902
	.value	0x2bb
	.uleb128 0x1
	.long	.LASF903
	.value	0x2bc
	.uleb128 0x1
	.long	.LASF904
	.value	0x2bd
	.uleb128 0x1
	.long	.LASF905
	.value	0x2be
	.uleb128 0x1
	.long	.LASF906
	.value	0x2bf
	.uleb128 0x1
	.long	.LASF907
	.value	0x2c0
	.uleb128 0x1
	.long	.LASF908
	.value	0x2c1
	.uleb128 0x1
	.long	.LASF909
	.value	0x2c2
	.uleb128 0x1
	.long	.LASF910
	.value	0x2c3
	.uleb128 0x1
	.long	.LASF911
	.value	0x2c4
	.uleb128 0x1
	.long	.LASF912
	.value	0x2c5
	.uleb128 0x1
	.long	.LASF913
	.value	0x2c6
	.uleb128 0x1
	.long	.LASF914
	.value	0x2c7
	.uleb128 0x1
	.long	.LASF915
	.value	0x2c8
	.uleb128 0x1
	.long	.LASF916
	.value	0x2c9
	.uleb128 0x1
	.long	.LASF917
	.value	0x2ca
	.uleb128 0x1
	.long	.LASF918
	.value	0x2cb
	.uleb128 0x1
	.long	.LASF919
	.value	0x2cc
	.uleb128 0x1
	.long	.LASF920
	.value	0x2cd
	.uleb128 0x1
	.long	.LASF921
	.value	0x2ce
	.uleb128 0x1
	.long	.LASF922
	.value	0x2cf
	.uleb128 0x1
	.long	.LASF923
	.value	0x2d0
	.uleb128 0x1
	.long	.LASF924
	.value	0x2d1
	.uleb128 0x1
	.long	.LASF925
	.value	0x2d2
	.uleb128 0x1
	.long	.LASF926
	.value	0x2d3
	.uleb128 0x1
	.long	.LASF927
	.value	0x2d4
	.uleb128 0x1
	.long	.LASF928
	.value	0x2d5
	.uleb128 0x1
	.long	.LASF929
	.value	0x2d6
	.uleb128 0x1
	.long	.LASF930
	.value	0x2d7
	.uleb128 0x1
	.long	.LASF931
	.value	0x2d8
	.uleb128 0x1
	.long	.LASF932
	.value	0x2d9
	.uleb128 0x1
	.long	.LASF933
	.value	0x2da
	.uleb128 0x1
	.long	.LASF934
	.value	0x2db
	.uleb128 0x1
	.long	.LASF935
	.value	0x2dc
	.uleb128 0x1
	.long	.LASF936
	.value	0x2dd
	.uleb128 0x1
	.long	.LASF937
	.value	0x2de
	.uleb128 0x1
	.long	.LASF938
	.value	0x2df
	.uleb128 0x1
	.long	.LASF939
	.value	0x2e0
	.uleb128 0x1
	.long	.LASF940
	.value	0x2e1
	.uleb128 0x1
	.long	.LASF941
	.value	0x2e2
	.uleb128 0x1
	.long	.LASF942
	.value	0x2e3
	.uleb128 0x1
	.long	.LASF943
	.value	0x2e4
	.uleb128 0x1
	.long	.LASF944
	.value	0x2e5
	.uleb128 0x1
	.long	.LASF945
	.value	0x2e6
	.uleb128 0x1
	.long	.LASF946
	.value	0x2e7
	.uleb128 0x1
	.long	.LASF947
	.value	0x2e8
	.uleb128 0x1
	.long	.LASF948
	.value	0x2e9
	.uleb128 0x1
	.long	.LASF949
	.value	0x2ea
	.uleb128 0x1
	.long	.LASF950
	.value	0x2eb
	.uleb128 0x1
	.long	.LASF951
	.value	0x2ec
	.uleb128 0x1
	.long	.LASF952
	.value	0x2ed
	.uleb128 0x1
	.long	.LASF953
	.value	0x2ee
	.uleb128 0x1
	.long	.LASF954
	.value	0x2ef
	.uleb128 0x1
	.long	.LASF955
	.value	0x2f0
	.uleb128 0x1
	.long	.LASF956
	.value	0x2f1
	.uleb128 0x1
	.long	.LASF957
	.value	0x2f2
	.uleb128 0x1
	.long	.LASF958
	.value	0x2f3
	.uleb128 0x1
	.long	.LASF959
	.value	0x2f4
	.uleb128 0x1
	.long	.LASF960
	.value	0x2f5
	.uleb128 0x1
	.long	.LASF961
	.value	0x2f6
	.uleb128 0x1
	.long	.LASF962
	.value	0x2f7
	.uleb128 0x1
	.long	.LASF963
	.value	0x2f8
	.uleb128 0x1
	.long	.LASF964
	.value	0x2f9
	.uleb128 0x1
	.long	.LASF965
	.value	0x2fa
	.uleb128 0x1
	.long	.LASF966
	.value	0x2fb
	.uleb128 0x1
	.long	.LASF967
	.value	0x2fc
	.uleb128 0x1
	.long	.LASF968
	.value	0x2fd
	.uleb128 0x1
	.long	.LASF969
	.value	0x2fe
	.uleb128 0x1
	.long	.LASF970
	.value	0x2ff
	.uleb128 0x1
	.long	.LASF971
	.value	0x300
	.uleb128 0x1
	.long	.LASF972
	.value	0x301
	.uleb128 0x1
	.long	.LASF973
	.value	0x302
	.uleb128 0x1
	.long	.LASF974
	.value	0x303
	.uleb128 0x1
	.long	.LASF975
	.value	0x304
	.uleb128 0x1
	.long	.LASF976
	.value	0x305
	.uleb128 0x1
	.long	.LASF977
	.value	0x306
	.uleb128 0x1
	.long	.LASF978
	.value	0x307
	.uleb128 0x1
	.long	.LASF979
	.value	0x308
	.uleb128 0x1
	.long	.LASF980
	.value	0x309
	.uleb128 0x1
	.long	.LASF981
	.value	0x30a
	.uleb128 0x1
	.long	.LASF982
	.value	0x30b
	.uleb128 0x1
	.long	.LASF983
	.value	0x30c
	.uleb128 0x1
	.long	.LASF984
	.value	0x30d
	.uleb128 0x1
	.long	.LASF985
	.value	0x30e
	.uleb128 0x1
	.long	.LASF986
	.value	0x30f
	.uleb128 0x1
	.long	.LASF987
	.value	0x310
	.uleb128 0x1
	.long	.LASF988
	.value	0x311
	.uleb128 0x1
	.long	.LASF989
	.value	0x312
	.uleb128 0x1
	.long	.LASF990
	.value	0x313
	.uleb128 0x1
	.long	.LASF991
	.value	0x314
	.uleb128 0x1
	.long	.LASF992
	.value	0x315
	.uleb128 0x1
	.long	.LASF993
	.value	0x316
	.uleb128 0x1
	.long	.LASF994
	.value	0x317
	.uleb128 0x1
	.long	.LASF995
	.value	0x318
	.uleb128 0x1
	.long	.LASF996
	.value	0x319
	.uleb128 0x1
	.long	.LASF997
	.value	0x31a
	.uleb128 0x1
	.long	.LASF998
	.value	0x31b
	.uleb128 0x1
	.long	.LASF999
	.value	0x31c
	.uleb128 0x1
	.long	.LASF1000
	.value	0x31d
	.uleb128 0x1
	.long	.LASF1001
	.value	0x31e
	.uleb128 0x1
	.long	.LASF1002
	.value	0x31f
	.uleb128 0x1
	.long	.LASF1003
	.value	0x320
	.uleb128 0x1
	.long	.LASF1004
	.value	0x321
	.uleb128 0x1
	.long	.LASF1005
	.value	0x322
	.uleb128 0x1
	.long	.LASF1006
	.value	0x323
	.uleb128 0x1
	.long	.LASF1007
	.value	0x324
	.uleb128 0x1
	.long	.LASF1008
	.value	0x325
	.uleb128 0x1
	.long	.LASF1009
	.value	0x326
	.uleb128 0x1
	.long	.LASF1010
	.value	0x327
	.uleb128 0x1
	.long	.LASF1011
	.value	0x328
	.uleb128 0x1
	.long	.LASF1012
	.value	0x329
	.uleb128 0x1
	.long	.LASF1013
	.value	0x32a
	.uleb128 0x1
	.long	.LASF1014
	.value	0x32b
	.uleb128 0x1
	.long	.LASF1015
	.value	0x32c
	.uleb128 0x1
	.long	.LASF1016
	.value	0x32d
	.uleb128 0x1
	.long	.LASF1017
	.value	0x32e
	.uleb128 0x1
	.long	.LASF1018
	.value	0x32f
	.uleb128 0x1
	.long	.LASF1019
	.value	0x330
	.uleb128 0x1
	.long	.LASF1020
	.value	0x331
	.uleb128 0x1
	.long	.LASF1021
	.value	0x332
	.uleb128 0x1
	.long	.LASF1022
	.value	0x333
	.uleb128 0x1
	.long	.LASF1023
	.value	0x334
	.uleb128 0x1
	.long	.LASF1024
	.value	0x335
	.uleb128 0x1
	.long	.LASF1025
	.value	0x336
	.uleb128 0x1
	.long	.LASF1026
	.value	0x337
	.uleb128 0x1
	.long	.LASF1027
	.value	0x338
	.uleb128 0x1
	.long	.LASF1028
	.value	0x339
	.uleb128 0x1
	.long	.LASF1029
	.value	0x33a
	.uleb128 0x1
	.long	.LASF1030
	.value	0x33b
	.uleb128 0x1
	.long	.LASF1031
	.value	0x33c
	.uleb128 0x1
	.long	.LASF1032
	.value	0x33d
	.uleb128 0x1
	.long	.LASF1033
	.value	0x33e
	.uleb128 0x1
	.long	.LASF1034
	.value	0x33f
	.uleb128 0x1
	.long	.LASF1035
	.value	0x340
	.uleb128 0x1
	.long	.LASF1036
	.value	0x341
	.uleb128 0x1
	.long	.LASF1037
	.value	0x342
	.uleb128 0x1
	.long	.LASF1038
	.value	0x343
	.uleb128 0x1
	.long	.LASF1039
	.value	0x344
	.uleb128 0x1
	.long	.LASF1040
	.value	0x345
	.uleb128 0x1
	.long	.LASF1041
	.value	0x346
	.uleb128 0x1
	.long	.LASF1042
	.value	0x347
	.uleb128 0x1
	.long	.LASF1043
	.value	0x348
	.uleb128 0x1
	.long	.LASF1044
	.value	0x349
	.uleb128 0x1
	.long	.LASF1045
	.value	0x34a
	.uleb128 0x1
	.long	.LASF1046
	.value	0x34b
	.uleb128 0x1
	.long	.LASF1047
	.value	0x34c
	.uleb128 0x1
	.long	.LASF1048
	.value	0x34d
	.uleb128 0x1
	.long	.LASF1049
	.value	0x34e
	.uleb128 0x1
	.long	.LASF1050
	.value	0x34f
	.uleb128 0x1
	.long	.LASF1051
	.value	0x350
	.uleb128 0x1
	.long	.LASF1052
	.value	0x351
	.uleb128 0x1
	.long	.LASF1053
	.value	0x352
	.uleb128 0x1
	.long	.LASF1054
	.value	0x353
	.uleb128 0x1
	.long	.LASF1055
	.value	0x354
	.uleb128 0x1
	.long	.LASF1056
	.value	0x355
	.uleb128 0x1
	.long	.LASF1057
	.value	0x356
	.uleb128 0x1
	.long	.LASF1058
	.value	0x357
	.uleb128 0x1
	.long	.LASF1059
	.value	0x358
	.uleb128 0x1
	.long	.LASF1060
	.value	0x359
	.uleb128 0x1
	.long	.LASF1061
	.value	0x35a
	.uleb128 0x1
	.long	.LASF1062
	.value	0x35b
	.uleb128 0x1
	.long	.LASF1063
	.value	0x35c
	.uleb128 0x1
	.long	.LASF1064
	.value	0x35d
	.uleb128 0x1
	.long	.LASF1065
	.value	0x35e
	.uleb128 0x1
	.long	.LASF1066
	.value	0x35f
	.uleb128 0x1
	.long	.LASF1067
	.value	0x360
	.uleb128 0x1
	.long	.LASF1068
	.value	0x361
	.uleb128 0x1
	.long	.LASF1069
	.value	0x362
	.uleb128 0x1
	.long	.LASF1070
	.value	0x363
	.uleb128 0x1
	.long	.LASF1071
	.value	0x364
	.uleb128 0x1
	.long	.LASF1072
	.value	0x365
	.uleb128 0x1
	.long	.LASF1073
	.value	0x366
	.uleb128 0x1
	.long	.LASF1074
	.value	0x367
	.uleb128 0x1
	.long	.LASF1075
	.value	0x368
	.uleb128 0x1
	.long	.LASF1076
	.value	0x369
	.uleb128 0x1
	.long	.LASF1077
	.value	0x36a
	.uleb128 0x1
	.long	.LASF1078
	.value	0x36b
	.uleb128 0x1
	.long	.LASF1079
	.value	0x36c
	.uleb128 0x1
	.long	.LASF1080
	.value	0x36d
	.uleb128 0x1
	.long	.LASF1081
	.value	0x36e
	.uleb128 0x1
	.long	.LASF1082
	.value	0x36f
	.uleb128 0x1
	.long	.LASF1083
	.value	0x370
	.uleb128 0x1
	.long	.LASF1084
	.value	0x371
	.uleb128 0x1
	.long	.LASF1085
	.value	0x372
	.uleb128 0x1
	.long	.LASF1086
	.value	0x373
	.uleb128 0x1
	.long	.LASF1087
	.value	0x374
	.uleb128 0x1
	.long	.LASF1088
	.value	0x375
	.uleb128 0x1
	.long	.LASF1089
	.value	0x376
	.uleb128 0x1
	.long	.LASF1090
	.value	0x377
	.uleb128 0x1
	.long	.LASF1091
	.value	0x378
	.uleb128 0x1
	.long	.LASF1092
	.value	0x379
	.uleb128 0x1
	.long	.LASF1093
	.value	0x37a
	.uleb128 0x1
	.long	.LASF1094
	.value	0x37b
	.uleb128 0x1
	.long	.LASF1095
	.value	0x37c
	.uleb128 0x1
	.long	.LASF1096
	.value	0x37d
	.uleb128 0x1
	.long	.LASF1097
	.value	0x37e
	.uleb128 0x1
	.long	.LASF1098
	.value	0x37f
	.uleb128 0x1
	.long	.LASF1099
	.value	0x380
	.uleb128 0x1
	.long	.LASF1100
	.value	0x381
	.uleb128 0x1
	.long	.LASF1101
	.value	0x382
	.uleb128 0x1
	.long	.LASF1102
	.value	0x383
	.uleb128 0x1
	.long	.LASF1103
	.value	0x384
	.uleb128 0x1
	.long	.LASF1104
	.value	0x385
	.uleb128 0x1
	.long	.LASF1105
	.value	0x386
	.uleb128 0x1
	.long	.LASF1106
	.value	0x387
	.uleb128 0x1
	.long	.LASF1107
	.value	0x388
	.uleb128 0x1
	.long	.LASF1108
	.value	0x389
	.uleb128 0x1
	.long	.LASF1109
	.value	0x38a
	.uleb128 0x1
	.long	.LASF1110
	.value	0x38b
	.uleb128 0x1
	.long	.LASF1111
	.value	0x38c
	.uleb128 0x1
	.long	.LASF1112
	.value	0x38d
	.uleb128 0x1
	.long	.LASF1113
	.value	0x38e
	.uleb128 0x1
	.long	.LASF1114
	.value	0x38f
	.uleb128 0x1
	.long	.LASF1115
	.value	0x390
	.uleb128 0x1
	.long	.LASF1116
	.value	0x391
	.uleb128 0x1
	.long	.LASF1117
	.value	0x392
	.uleb128 0x1
	.long	.LASF1118
	.value	0x393
	.uleb128 0x1
	.long	.LASF1119
	.value	0x394
	.uleb128 0x1
	.long	.LASF1120
	.value	0x395
	.uleb128 0x1
	.long	.LASF1121
	.value	0x396
	.uleb128 0x1
	.long	.LASF1122
	.value	0x397
	.uleb128 0x1
	.long	.LASF1123
	.value	0x398
	.uleb128 0x1
	.long	.LASF1124
	.value	0x399
	.uleb128 0x1
	.long	.LASF1125
	.value	0x39a
	.uleb128 0x1
	.long	.LASF1126
	.value	0x39b
	.uleb128 0x1
	.long	.LASF1127
	.value	0x39c
	.uleb128 0x1
	.long	.LASF1128
	.value	0x39d
	.uleb128 0x1
	.long	.LASF1129
	.value	0x39e
	.uleb128 0x1
	.long	.LASF1130
	.value	0x39f
	.uleb128 0x1
	.long	.LASF1131
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF1132
	.value	0x3a1
	.uleb128 0x1
	.long	.LASF1133
	.value	0x3a2
	.uleb128 0x1
	.long	.LASF1134
	.value	0x3a3
	.uleb128 0x1
	.long	.LASF1135
	.value	0x3a4
	.uleb128 0x1
	.long	.LASF1136
	.value	0x3a5
	.uleb128 0x1
	.long	.LASF1137
	.value	0x3a6
	.uleb128 0x1
	.long	.LASF1138
	.value	0x3a7
	.uleb128 0x1
	.long	.LASF1139
	.value	0x3a8
	.uleb128 0x1
	.long	.LASF1140
	.value	0x3a9
	.uleb128 0x1
	.long	.LASF1141
	.value	0x3aa
	.uleb128 0x1
	.long	.LASF1142
	.value	0x3ab
	.uleb128 0x1
	.long	.LASF1143
	.value	0x3ac
	.uleb128 0x1
	.long	.LASF1144
	.value	0x3ad
	.uleb128 0x1
	.long	.LASF1145
	.value	0x3ae
	.uleb128 0x1
	.long	.LASF1146
	.value	0x3af
	.uleb128 0x1
	.long	.LASF1147
	.value	0x3b0
	.uleb128 0x1
	.long	.LASF1148
	.value	0x3b1
	.uleb128 0x1
	.long	.LASF1149
	.value	0x3b2
	.uleb128 0x1
	.long	.LASF1150
	.value	0x3b3
	.uleb128 0x1
	.long	.LASF1151
	.value	0x3b4
	.uleb128 0x1
	.long	.LASF1152
	.value	0x3b5
	.uleb128 0x1
	.long	.LASF1153
	.value	0x3b6
	.uleb128 0x1
	.long	.LASF1154
	.value	0x3b7
	.uleb128 0x1
	.long	.LASF1155
	.value	0x3b8
	.uleb128 0x1
	.long	.LASF1156
	.value	0x3b9
	.uleb128 0x1
	.long	.LASF1157
	.value	0x3ba
	.uleb128 0x1
	.long	.LASF1158
	.value	0x3bb
	.uleb128 0x1
	.long	.LASF1159
	.value	0x3bc
	.uleb128 0x1
	.long	.LASF1160
	.value	0x3bd
	.uleb128 0x1
	.long	.LASF1161
	.value	0x3be
	.uleb128 0x1
	.long	.LASF1162
	.value	0x3bf
	.uleb128 0x1
	.long	.LASF1163
	.value	0x3c0
	.uleb128 0x1
	.long	.LASF1164
	.value	0x3c1
	.uleb128 0x1
	.long	.LASF1165
	.value	0x3c2
	.uleb128 0x1
	.long	.LASF1166
	.value	0x3c3
	.uleb128 0x1
	.long	.LASF1167
	.value	0x3c4
	.uleb128 0x1
	.long	.LASF1168
	.value	0x3c5
	.uleb128 0x1
	.long	.LASF1169
	.value	0x3c6
	.uleb128 0x1
	.long	.LASF1170
	.value	0x3c7
	.byte	0
	.uleb128 0x13
	.long	.LASF1171
	.byte	0x6
	.value	0x478
	.byte	0x3
	.long	0x675
	.uleb128 0x1e
	.byte	0x38
	.byte	0x6
	.value	0x47b
	.long	0x2073
	.uleb128 0x5
	.long	.LASF1172
	.byte	0x6
	.value	0x47d
	.byte	0xf
	.long	0x669
	.byte	0
	.uleb128 0x5
	.long	.LASF1173
	.byte	0x6
	.value	0x47e
	.byte	0xa
	.long	0x72
	.byte	0x8
	.uleb128 0x5
	.long	.LASF1174
	.byte	0x6
	.value	0x47f
	.byte	0xa
	.long	0x72
	.byte	0x10
	.uleb128 0x5
	.long	.LASF1175
	.byte	0x6
	.value	0x481
	.byte	0xf
	.long	0x2bd
	.byte	0x18
	.uleb128 0x5
	.long	.LASF1176
	.byte	0x6
	.value	0x482
	.byte	0x10
	.long	0x1ffa
	.byte	0x20
	.uleb128 0x5
	.long	.LASF1177
	.byte	0x6
	.value	0x483
	.byte	0xa
	.long	0x72
	.byte	0x28
	.uleb128 0x5
	.long	.LASF1178
	.byte	0x6
	.value	0x483
	.byte	0x11
	.long	0x72
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.long	.LASF1179
	.byte	0x6
	.value	0x484
	.byte	0x3
	.long	0x2007
	.uleb128 0x33
	.byte	0x7
	.byte	0x4
	.long	0x8e
	.byte	0x6
	.value	0x48b
	.byte	0xe
	.long	0x23cc
	.uleb128 0x2
	.long	.LASF1180
	.byte	0
	.uleb128 0x2
	.long	.LASF1181
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1182
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1183
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1184
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1185
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1186
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1187
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1188
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1189
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1190
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1191
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1192
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1193
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1194
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1195
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1196
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1197
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1198
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1199
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1200
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1201
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1202
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1203
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1204
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1205
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1206
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1207
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1208
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1209
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1210
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1211
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1212
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1213
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1214
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1215
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1216
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1217
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1218
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1219
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1220
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1221
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1222
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1223
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1224
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1225
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1226
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1227
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1228
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1229
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1230
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1231
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1232
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1233
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1234
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1235
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1236
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1237
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1238
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1239
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1240
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1241
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1242
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1243
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1244
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1245
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1246
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1247
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1248
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1249
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1250
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1251
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1252
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1253
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1254
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1255
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1256
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1257
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1258
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1259
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1260
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1261
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1262
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1263
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1264
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1265
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1266
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1267
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1268
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1269
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1270
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1271
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1272
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1273
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1274
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1275
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1276
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1277
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1278
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1279
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1280
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1281
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1282
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1283
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1284
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1285
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1286
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1287
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1288
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1289
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF1290
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF1291
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF1292
	.byte	0x70
	.uleb128 0x2
	.long	.LASF1293
	.byte	0x71
	.uleb128 0x2
	.long	.LASF1294
	.byte	0x72
	.uleb128 0x2
	.long	.LASF1295
	.byte	0x73
	.uleb128 0x2
	.long	.LASF1296
	.byte	0x74
	.uleb128 0x2
	.long	.LASF1297
	.byte	0x75
	.uleb128 0x2
	.long	.LASF1298
	.byte	0x76
	.uleb128 0x2
	.long	.LASF1299
	.byte	0x77
	.uleb128 0x2
	.long	.LASF1300
	.byte	0x78
	.uleb128 0x2
	.long	.LASF1301
	.byte	0x79
	.uleb128 0x2
	.long	.LASF1302
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF1303
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF1304
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF1305
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF1306
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF1307
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF1308
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1309
	.byte	0x81
	.uleb128 0x2
	.long	.LASF1310
	.byte	0x82
	.uleb128 0x2
	.long	.LASF1311
	.byte	0x83
	.uleb128 0x2
	.long	.LASF1312
	.byte	0x84
	.uleb128 0x2
	.long	.LASF1313
	.byte	0x85
	.uleb128 0x2
	.long	.LASF1314
	.byte	0x86
	.uleb128 0x2
	.long	.LASF1315
	.byte	0x87
	.uleb128 0x2
	.long	.LASF1316
	.byte	0x88
	.uleb128 0x2
	.long	.LASF1317
	.byte	0x89
	.byte	0
	.uleb128 0x13
	.long	.LASF1318
	.byte	0x6
	.value	0x517
	.byte	0x3
	.long	0x2080
	.uleb128 0x1e
	.byte	0x5c
	.byte	0x6
	.value	0x519
	.long	0x2525
	.uleb128 0x5
	.long	.LASF1319
	.byte	0x6
	.value	0x51b
	.byte	0x9
	.long	0x6b
	.byte	0
	.uleb128 0x5
	.long	.LASF1320
	.byte	0x6
	.value	0x51c
	.byte	0x9
	.long	0x6b
	.byte	0x4
	.uleb128 0x5
	.long	.LASF1321
	.byte	0x6
	.value	0x51d
	.byte	0x9
	.long	0x6b
	.byte	0x8
	.uleb128 0x5
	.long	.LASF1322
	.byte	0x6
	.value	0x51e
	.byte	0x9
	.long	0x6b
	.byte	0xc
	.uleb128 0x5
	.long	.LASF1323
	.byte	0x6
	.value	0x51f
	.byte	0x9
	.long	0x6b
	.byte	0x10
	.uleb128 0x5
	.long	.LASF1324
	.byte	0x6
	.value	0x520
	.byte	0x9
	.long	0x6b
	.byte	0x14
	.uleb128 0x5
	.long	.LASF1325
	.byte	0x6
	.value	0x521
	.byte	0x9
	.long	0x6b
	.byte	0x18
	.uleb128 0x5
	.long	.LASF1326
	.byte	0x6
	.value	0x522
	.byte	0x9
	.long	0x6b
	.byte	0x1c
	.uleb128 0x5
	.long	.LASF1327
	.byte	0x6
	.value	0x523
	.byte	0x9
	.long	0x6b
	.byte	0x20
	.uleb128 0x5
	.long	.LASF1328
	.byte	0x6
	.value	0x524
	.byte	0x9
	.long	0x6b
	.byte	0x24
	.uleb128 0x5
	.long	.LASF1329
	.byte	0x6
	.value	0x525
	.byte	0x9
	.long	0x6b
	.byte	0x28
	.uleb128 0x5
	.long	.LASF1330
	.byte	0x6
	.value	0x526
	.byte	0x9
	.long	0x6b
	.byte	0x2c
	.uleb128 0x5
	.long	.LASF1331
	.byte	0x6
	.value	0x527
	.byte	0x9
	.long	0x6b
	.byte	0x30
	.uleb128 0x5
	.long	.LASF1332
	.byte	0x6
	.value	0x528
	.byte	0x9
	.long	0x6b
	.byte	0x34
	.uleb128 0x5
	.long	.LASF1333
	.byte	0x6
	.value	0x529
	.byte	0x9
	.long	0x6b
	.byte	0x38
	.uleb128 0x5
	.long	.LASF1334
	.byte	0x6
	.value	0x52a
	.byte	0x9
	.long	0x6b
	.byte	0x3c
	.uleb128 0x5
	.long	.LASF1335
	.byte	0x6
	.value	0x52b
	.byte	0x9
	.long	0x6b
	.byte	0x40
	.uleb128 0x5
	.long	.LASF1336
	.byte	0x6
	.value	0x52c
	.byte	0x9
	.long	0x6b
	.byte	0x44
	.uleb128 0x5
	.long	.LASF1337
	.byte	0x6
	.value	0x52d
	.byte	0x9
	.long	0x6b
	.byte	0x48
	.uleb128 0x5
	.long	.LASF1338
	.byte	0x6
	.value	0x52e
	.byte	0x9
	.long	0x6b
	.byte	0x4c
	.uleb128 0x5
	.long	.LASF1339
	.byte	0x6
	.value	0x52f
	.byte	0x9
	.long	0x6b
	.byte	0x50
	.uleb128 0x5
	.long	.LASF1340
	.byte	0x6
	.value	0x530
	.byte	0x9
	.long	0x6b
	.byte	0x54
	.uleb128 0x5
	.long	.LASF1341
	.byte	0x6
	.value	0x531
	.byte	0x9
	.long	0x6b
	.byte	0x58
	.byte	0
	.uleb128 0x13
	.long	.LASF1342
	.byte	0x6
	.value	0x533
	.byte	0x3
	.long	0x23d9
	.uleb128 0x11
	.long	0x8e
	.byte	0x7
	.byte	0x3d
	.byte	0x1
	.long	0x2551
	.uleb128 0x2
	.long	.LASF1343
	.byte	0
	.uleb128 0x2
	.long	.LASF1344
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1345
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.byte	0x18
	.byte	0x7
	.byte	0x44
	.long	0x258c
	.uleb128 0x3
	.long	.LASF1346
	.byte	0x7
	.byte	0x46
	.byte	0xe
	.long	0x258c
	.byte	0
	.uleb128 0x3
	.long	.LASF1174
	.byte	0x7
	.byte	0x47
	.byte	0xa
	.long	0x6b
	.byte	0x8
	.uleb128 0x9
	.string	"sx"
	.byte	0x7
	.byte	0x48
	.byte	0xd
	.long	0x1be
	.byte	0xc
	.uleb128 0x9
	.string	"sy"
	.byte	0x7
	.byte	0x49
	.byte	0xd
	.long	0x1be
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	0x2073
	.uleb128 0x8
	.long	.LASF1347
	.byte	0x7
	.byte	0x4b
	.byte	0x3
	.long	0x2551
	.uleb128 0x11
	.long	0x8e
	.byte	0x8
	.byte	0x22
	.byte	0xe
	.long	0x25b6
	.uleb128 0x2
	.long	.LASF1348
	.byte	0
	.uleb128 0x2
	.long	.LASF1349
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.long	.LASF1350
	.byte	0x8
	.byte	0x22
	.byte	0x1c
	.long	0x259d
	.uleb128 0x8
	.long	.LASF1351
	.byte	0x8
	.byte	0x24
	.byte	0x17
	.long	0x80
	.uleb128 0xa
	.long	0x9c
	.long	0x25de
	.uleb128 0xc
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.long	0x87
	.long	0x25ee
	.uleb128 0xc
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.byte	0xa
	.byte	0x9
	.byte	0xcb
	.long	0x2634
	.uleb128 0x9
	.string	"x"
	.byte	0x9
	.byte	0xcd
	.byte	0xc
	.long	0x9c
	.byte	0
	.uleb128 0x9
	.string	"y"
	.byte	0x9
	.byte	0xce
	.byte	0xc
	.long	0x9c
	.byte	0x2
	.uleb128 0x3
	.long	.LASF1352
	.byte	0x9
	.byte	0xcf
	.byte	0xc
	.long	0x9c
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1353
	.byte	0x9
	.byte	0xd0
	.byte	0xc
	.long	0x9c
	.byte	0x6
	.uleb128 0x3
	.long	.LASF1354
	.byte	0x9
	.byte	0xd1
	.byte	0xc
	.long	0x9c
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	.LASF1355
	.byte	0x9
	.byte	0xd2
	.byte	0x3
	.long	0x25ee
	.uleb128 0x1b
	.long	.LASF1357
	.byte	0xe0
	.byte	0xa
	.byte	0xcf
	.long	0x2817
	.uleb128 0x3
	.long	.LASF1358
	.byte	0xa
	.byte	0xd2
	.byte	0x10
	.long	0x30e
	.byte	0
	.uleb128 0x9
	.string	"x"
	.byte	0xa
	.byte	0xd5
	.byte	0xe
	.long	0x1be
	.byte	0x18
	.uleb128 0x9
	.string	"y"
	.byte	0xa
	.byte	0xd6
	.byte	0xe
	.long	0x1be
	.byte	0x1c
	.uleb128 0x9
	.string	"z"
	.byte	0xa
	.byte	0xd7
	.byte	0xe
	.long	0x1be
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1359
	.byte	0xa
	.byte	0xda
	.byte	0x14
	.long	0x2817
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1360
	.byte	0xa
	.byte	0xdb
	.byte	0x14
	.long	0x2817
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1352
	.byte	0xa
	.byte	0xde
	.byte	0xe
	.long	0x215
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1172
	.byte	0xa
	.byte	0xdf
	.byte	0x12
	.long	0x669
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1173
	.byte	0xa
	.byte	0xe0
	.byte	0xb
	.long	0x6b
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1361
	.byte	0xa
	.byte	0xe4
	.byte	0x14
	.long	0x2817
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1362
	.byte	0xa
	.byte	0xe5
	.byte	0x14
	.long	0x2817
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1363
	.byte	0xa
	.byte	0xe7
	.byte	0x19
	.long	0x2850
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1364
	.byte	0xa
	.byte	0xea
	.byte	0xe
	.long	0x1be
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1365
	.byte	0xa
	.byte	0xeb
	.byte	0xe
	.long	0x1be
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1335
	.byte	0xa
	.byte	0xee
	.byte	0xe
	.long	0x1be
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1336
	.byte	0xa
	.byte	0xef
	.byte	0xe
	.long	0x1be
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1366
	.byte	0xa
	.byte	0xf2
	.byte	0xe
	.long	0x1be
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1367
	.byte	0xa
	.byte	0xf3
	.byte	0xe
	.long	0x1be
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1368
	.byte	0xa
	.byte	0xf4
	.byte	0xe
	.long	0x1be
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1369
	.byte	0xa
	.byte	0xf7
	.byte	0xb
	.long	0x6b
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1353
	.byte	0xa
	.byte	0xf9
	.byte	0x11
	.long	0x23cc
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1370
	.byte	0xa
	.byte	0xfa
	.byte	0x12
	.long	0x2855
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1174
	.byte	0xa
	.byte	0xfc
	.byte	0xb
	.long	0x6b
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1346
	.byte	0xa
	.byte	0xfd
	.byte	0xf
	.long	0x258c
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1340
	.byte	0xa
	.byte	0xfe
	.byte	0xb
	.long	0x6b
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1371
	.byte	0xa
	.byte	0xff
	.byte	0xb
	.long	0x6b
	.byte	0xa4
	.uleb128 0x5
	.long	.LASF1372
	.byte	0xa
	.value	0x102
	.byte	0xb
	.long	0x6b
	.byte	0xa8
	.uleb128 0x5
	.long	.LASF1373
	.byte	0xa
	.value	0x103
	.byte	0xb
	.long	0x6b
	.byte	0xac
	.uleb128 0x5
	.long	.LASF1374
	.byte	0xa
	.value	0x107
	.byte	0x14
	.long	0x2817
	.byte	0xb0
	.uleb128 0x5
	.long	.LASF1324
	.byte	0xa
	.value	0x10b
	.byte	0xb
	.long	0x6b
	.byte	0xb8
	.uleb128 0x5
	.long	.LASF1375
	.byte	0xa
	.value	0x10f
	.byte	0xb
	.long	0x6b
	.byte	0xbc
	.uleb128 0x5
	.long	.LASF1376
	.byte	0xa
	.value	0x113
	.byte	0x16
	.long	0x2a2f
	.byte	0xc0
	.uleb128 0x5
	.long	.LASF1377
	.byte	0xa
	.value	0x116
	.byte	0xb
	.long	0x6b
	.byte	0xc8
	.uleb128 0x5
	.long	.LASF1378
	.byte	0xa
	.value	0x119
	.byte	0x11
	.long	0x2634
	.byte	0xcc
	.uleb128 0x5
	.long	.LASF1379
	.byte	0xa
	.value	0x11c
	.byte	0x14
	.long	0x2817
	.byte	0xd8
	.byte	0
	.uleb128 0x7
	.long	0x2640
	.uleb128 0x1b
	.long	.LASF1380
	.byte	0x10
	.byte	0xb
	.byte	0xe3
	.long	0x2850
	.uleb128 0x3
	.long	.LASF1381
	.byte	0xb
	.byte	0xe5
	.byte	0xf
	.long	0x2dc8
	.byte	0
	.uleb128 0x3
	.long	.LASF1382
	.byte	0xb
	.byte	0xe6
	.byte	0xb
	.long	0x9c
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1383
	.byte	0xb
	.byte	0xe7
	.byte	0xb
	.long	0x9c
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.long	0x281c
	.uleb128 0x7
	.long	0x2525
	.uleb128 0x34
	.long	.LASF1384
	.value	0x140
	.byte	0xc
	.byte	0x53
	.byte	0x10
	.long	0x2a2f
	.uleb128 0x9
	.string	"mo"
	.byte	0xc
	.byte	0x55
	.byte	0xe
	.long	0x2acf
	.byte	0
	.uleb128 0x3
	.long	.LASF1385
	.byte	0xc
	.byte	0x56
	.byte	0x13
	.long	0x2ac3
	.byte	0x8
	.uleb128 0x9
	.string	"cmd"
	.byte	0xc
	.byte	0x57
	.byte	0xf
	.long	0x2a98
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1386
	.byte	0xc
	.byte	0x5c
	.byte	0xe
	.long	0x1be
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1387
	.byte	0xc
	.byte	0x5e
	.byte	0xe
	.long	0x1be
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1388
	.byte	0xc
	.byte	0x60
	.byte	0x16
	.long	0x1be
	.byte	0x1c
	.uleb128 0x9
	.string	"bob"
	.byte	0xc
	.byte	0x62
	.byte	0x16
	.long	0x1be
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1371
	.byte	0xc
	.byte	0x66
	.byte	0xb
	.long	0x6b
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1389
	.byte	0xc
	.byte	0x67
	.byte	0xb
	.long	0x6b
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1390
	.byte	0xc
	.byte	0x69
	.byte	0xb
	.long	0x6b
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1391
	.byte	0xc
	.byte	0x6c
	.byte	0xb
	.long	0x2ad4
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1392
	.byte	0xc
	.byte	0x6d
	.byte	0xe
	.long	0x2ae4
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1393
	.byte	0xc
	.byte	0x6e
	.byte	0xe
	.long	0x25b6
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1394
	.byte	0xc
	.byte	0x71
	.byte	0xb
	.long	0x2af4
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1395
	.byte	0xc
	.byte	0x72
	.byte	0x12
	.long	0x14a
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1396
	.byte	0xc
	.byte	0x75
	.byte	0x12
	.long	0x14a
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1397
	.byte	0xc
	.byte	0x77
	.byte	0xe
	.long	0x2b04
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1398
	.byte	0xc
	.byte	0x78
	.byte	0xb
	.long	0x2af4
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1399
	.byte	0xc
	.byte	0x79
	.byte	0xb
	.long	0x2af4
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1400
	.byte	0xc
	.byte	0x7c
	.byte	0xb
	.long	0x6b
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1401
	.byte	0xc
	.byte	0x7d
	.byte	0xb
	.long	0x6b
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1402
	.byte	0xc
	.byte	0x81
	.byte	0xb
	.long	0x6b
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1403
	.byte	0xc
	.byte	0x84
	.byte	0xb
	.long	0x6b
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1404
	.byte	0xc
	.byte	0x87
	.byte	0xb
	.long	0x6b
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1405
	.byte	0xc
	.byte	0x88
	.byte	0xb
	.long	0x6b
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1406
	.byte	0xc
	.byte	0x89
	.byte	0xb
	.long	0x6b
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1407
	.byte	0xc
	.byte	0x8c
	.byte	0xc
	.long	0xa5
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1408
	.byte	0xc
	.byte	0x8f
	.byte	0xb
	.long	0x6b
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1409
	.byte	0xc
	.byte	0x90
	.byte	0xb
	.long	0x6b
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1410
	.byte	0xc
	.byte	0x93
	.byte	0xe
	.long	0x2acf
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1411
	.byte	0xc
	.byte	0x96
	.byte	0xb
	.long	0x6b
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1412
	.byte	0xc
	.byte	0x9a
	.byte	0xb
	.long	0x6b
	.byte	0xfc
	.uleb128 0x1f
	.long	.LASF1413
	.byte	0x9e
	.byte	0xb
	.long	0x6b
	.value	0x100
	.uleb128 0x1f
	.long	.LASF1414
	.byte	0xa1
	.byte	0xf
	.long	0x2b14
	.value	0x108
	.uleb128 0x1f
	.long	.LASF1415
	.byte	0xa4
	.byte	0xe
	.long	0x25b6
	.value	0x138
	.byte	0
	.uleb128 0x7
	.long	0x285a
	.uleb128 0x13
	.long	.LASF1416
	.byte	0xa
	.value	0x11e
	.byte	0x3
	.long	0x2640
	.uleb128 0x14
	.byte	0x8
	.byte	0xd
	.byte	0x24
	.long	0x2a98
	.uleb128 0x3
	.long	.LASF1417
	.byte	0xd
	.byte	0x26
	.byte	0xa
	.long	0x4a
	.byte	0
	.uleb128 0x3
	.long	.LASF1418
	.byte	0xd
	.byte	0x27
	.byte	0xa
	.long	0x4a
	.byte	0x1
	.uleb128 0x3
	.long	.LASF1419
	.byte	0xd
	.byte	0x28
	.byte	0xb
	.long	0x9c
	.byte	0x2
	.uleb128 0x3
	.long	.LASF1420
	.byte	0xd
	.byte	0x29
	.byte	0xb
	.long	0x9c
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1421
	.byte	0xd
	.byte	0x2a
	.byte	0xa
	.long	0x25c2
	.byte	0x6
	.uleb128 0x3
	.long	.LASF1422
	.byte	0xd
	.byte	0x2b
	.byte	0xa
	.long	0x25c2
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.long	.LASF1423
	.byte	0xd
	.byte	0x2c
	.byte	0x3
	.long	0x2a41
	.uleb128 0x11
	.long	0x8e
	.byte	0xc
	.byte	0x36
	.byte	0x1
	.long	0x2ac3
	.uleb128 0x2
	.long	.LASF1424
	.byte	0
	.uleb128 0x2
	.long	.LASF1425
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1426
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	.LASF1427
	.byte	0xc
	.byte	0x3e
	.byte	0x3
	.long	0x2aa4
	.uleb128 0x7
	.long	0x2a34
	.uleb128 0xa
	.long	0x6b
	.long	0x2ae4
	.uleb128 0xc
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.long	0x25b6
	.long	0x2af4
	.uleb128 0xc
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.long	0x6b
	.long	0x2b04
	.uleb128 0xc
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.long	0x25b6
	.long	0x2b14
	.uleb128 0xc
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.long	0x2591
	.long	0x2b24
	.uleb128 0xc
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.long	.LASF1428
	.byte	0xc
	.byte	0xa6
	.byte	0x3
	.long	0x285a
	.uleb128 0x11
	.long	0x8e
	.byte	0xe
	.byte	0x21
	.byte	0x1
	.long	0x2b55
	.uleb128 0x2
	.long	.LASF1429
	.byte	0
	.uleb128 0x2
	.long	.LASF1430
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1431
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1432
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.byte	0x8
	.byte	0xb
	.byte	0x47
	.long	0x2b74
	.uleb128 0x9
	.string	"x"
	.byte	0xb
	.byte	0x49
	.byte	0xd
	.long	0x1be
	.byte	0
	.uleb128 0x9
	.string	"y"
	.byte	0xb
	.byte	0x4a
	.byte	0xd
	.long	0x1be
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	.LASF1433
	.byte	0xb
	.byte	0x4c
	.byte	0x3
	.long	0x2b55
	.uleb128 0x14
	.byte	0x28
	.byte	0xb
	.byte	0x58
	.long	0x2bb7
	.uleb128 0x3
	.long	.LASF1358
	.byte	0xb
	.byte	0x5a
	.byte	0x10
	.long	0x30e
	.byte	0
	.uleb128 0x9
	.string	"x"
	.byte	0xb
	.byte	0x5b
	.byte	0xe
	.long	0x1be
	.byte	0x18
	.uleb128 0x9
	.string	"y"
	.byte	0xb
	.byte	0x5c
	.byte	0xe
	.long	0x1be
	.byte	0x1c
	.uleb128 0x9
	.string	"z"
	.byte	0xb
	.byte	0x5d
	.byte	0xe
	.long	0x1be
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.long	.LASF1434
	.byte	0xb
	.byte	0x5f
	.byte	0x3
	.long	0x2b80
	.uleb128 0x14
	.byte	0x80
	.byte	0xb
	.byte	0x65
	.long	0x2c9c
	.uleb128 0x3
	.long	.LASF1435
	.byte	0xb
	.byte	0x67
	.byte	0xd
	.long	0x1be
	.byte	0
	.uleb128 0x3
	.long	.LASF1436
	.byte	0xb
	.byte	0x68
	.byte	0xd
	.long	0x1be
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1437
	.byte	0xb
	.byte	0x69
	.byte	0xb
	.long	0x9c
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1438
	.byte	0xb
	.byte	0x6a
	.byte	0xb
	.long	0x9c
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1439
	.byte	0xb
	.byte	0x6b
	.byte	0xb
	.long	0x9c
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1440
	.byte	0xb
	.byte	0x6c
	.byte	0xb
	.long	0x9c
	.byte	0xe
	.uleb128 0x9
	.string	"tag"
	.byte	0xb
	.byte	0x6d
	.byte	0xb
	.long	0x9c
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1441
	.byte	0xb
	.byte	0x70
	.byte	0xa
	.long	0x6b
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1442
	.byte	0xb
	.byte	0x73
	.byte	0xd
	.long	0x2acf
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1443
	.byte	0xb
	.byte	0x76
	.byte	0xa
	.long	0x2af4
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1444
	.byte	0xb
	.byte	0x79
	.byte	0x11
	.long	0x2bb7
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1369
	.byte	0xb
	.byte	0x7c
	.byte	0xa
	.long	0x6b
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1445
	.byte	0xb
	.byte	0x7f
	.byte	0xd
	.long	0x2acf
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1446
	.byte	0xb
	.byte	0x82
	.byte	0xb
	.long	0xa3
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1447
	.byte	0xb
	.byte	0x84
	.byte	0xb
	.long	0x6b
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1448
	.byte	0xb
	.byte	0x85
	.byte	0x15
	.long	0x2d5b
	.byte	0x78
	.byte	0
	.uleb128 0x1b
	.long	.LASF1449
	.byte	0x58
	.byte	0xb
	.byte	0xb3
	.long	0x2d5b
	.uleb128 0x9
	.string	"v1"
	.byte	0xb
	.byte	0xb6
	.byte	0xf
	.long	0x2e0a
	.byte	0
	.uleb128 0x9
	.string	"v2"
	.byte	0xb
	.byte	0xb7
	.byte	0xf
	.long	0x2e0a
	.byte	0x8
	.uleb128 0x9
	.string	"dx"
	.byte	0xb
	.byte	0xba
	.byte	0xd
	.long	0x1be
	.byte	0x10
	.uleb128 0x9
	.string	"dy"
	.byte	0xb
	.byte	0xbb
	.byte	0xd
	.long	0x1be
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1340
	.byte	0xb
	.byte	0xbe
	.byte	0xb
	.long	0x9c
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1440
	.byte	0xb
	.byte	0xbf
	.byte	0xb
	.long	0x9c
	.byte	0x1a
	.uleb128 0x9
	.string	"tag"
	.byte	0xb
	.byte	0xc0
	.byte	0xb
	.long	0x9c
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1450
	.byte	0xb
	.byte	0xc4
	.byte	0xb
	.long	0x25ce
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1451
	.byte	0xb
	.byte	0xc8
	.byte	0xd
	.long	0x2e0f
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1452
	.byte	0xb
	.byte	0xcb
	.byte	0x11
	.long	0x2dfe
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1453
	.byte	0xb
	.byte	0xcf
	.byte	0xf
	.long	0x2dc8
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1454
	.byte	0xb
	.byte	0xd0
	.byte	0xf
	.long	0x2dc8
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1369
	.byte	0xb
	.byte	0xd3
	.byte	0xa
	.long	0x6b
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1446
	.byte	0xb
	.byte	0xd6
	.byte	0xb
	.long	0xa3
	.byte	0x50
	.byte	0
	.uleb128 0x7
	.long	0x2d60
	.uleb128 0x7
	.long	0x2c9c
	.uleb128 0x8
	.long	.LASF1455
	.byte	0xb
	.byte	0x87
	.byte	0x3
	.long	0x2bc3
	.uleb128 0x14
	.byte	0x18
	.byte	0xb
	.byte	0x90
	.long	0x2dc8
	.uleb128 0x3
	.long	.LASF1456
	.byte	0xb
	.byte	0x93
	.byte	0xd
	.long	0x1be
	.byte	0
	.uleb128 0x3
	.long	.LASF1457
	.byte	0xb
	.byte	0x96
	.byte	0xd
	.long	0x1be
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1458
	.byte	0xb
	.byte	0x9a
	.byte	0xb
	.long	0x9c
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1459
	.byte	0xb
	.byte	0x9b
	.byte	0xb
	.long	0x9c
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1460
	.byte	0xb
	.byte	0x9c
	.byte	0xb
	.long	0x9c
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1381
	.byte	0xb
	.byte	0x9f
	.byte	0xf
	.long	0x2dc8
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	0x2d65
	.uleb128 0x8
	.long	.LASF1461
	.byte	0xb
	.byte	0xa1
	.byte	0x3
	.long	0x2d71
	.uleb128 0x11
	.long	0x8e
	.byte	0xb
	.byte	0xa9
	.byte	0x1
	.long	0x2dfe
	.uleb128 0x2
	.long	.LASF1462
	.byte	0
	.uleb128 0x2
	.long	.LASF1463
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1464
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1465
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	.LASF1466
	.byte	0xb
	.byte	0xaf
	.byte	0x3
	.long	0x2dd9
	.uleb128 0x7
	.long	0x2b74
	.uleb128 0xa
	.long	0x1be
	.long	0x2e1f
	.uleb128 0xc
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	.LASF1467
	.byte	0xb
	.byte	0xd7
	.byte	0x3
	.long	0x2c9c
	.uleb128 0x8
	.long	.LASF1468
	.byte	0xb
	.byte	0xe9
	.byte	0x3
	.long	0x281c
	.uleb128 0x14
	.byte	0x38
	.byte	0xb
	.byte	0xf0
	.long	0x2ea7
	.uleb128 0x9
	.string	"v1"
	.byte	0xb
	.byte	0xf2
	.byte	0xf
	.long	0x2e0a
	.byte	0
	.uleb128 0x9
	.string	"v2"
	.byte	0xb
	.byte	0xf3
	.byte	0xf
	.long	0x2e0a
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1469
	.byte	0xb
	.byte	0xf5
	.byte	0xd
	.long	0x1be
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1352
	.byte	0xb
	.byte	0xf7
	.byte	0xd
	.long	0x215
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1470
	.byte	0xb
	.byte	0xf9
	.byte	0xd
	.long	0x2ea7
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1471
	.byte	0xb
	.byte	0xfa
	.byte	0xd
	.long	0x2eac
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1453
	.byte	0xb
	.byte	0xff
	.byte	0xf
	.long	0x2dc8
	.byte	0x28
	.uleb128 0x5
	.long	.LASF1454
	.byte	0xb
	.value	0x100
	.byte	0xf
	.long	0x2dc8
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.long	0x2dcd
	.uleb128 0x7
	.long	0x2e1f
	.uleb128 0x13
	.long	.LASF1472
	.byte	0xb
	.value	0x102
	.byte	0x3
	.long	0x2e37
	.uleb128 0x1e
	.byte	0x34
	.byte	0xb
	.value	0x109
	.long	0x2f0e
	.uleb128 0x1c
	.string	"x"
	.value	0x10c
	.long	0x1be
	.byte	0
	.uleb128 0x1c
	.string	"y"
	.value	0x10d
	.long	0x1be
	.byte	0x4
	.uleb128 0x1c
	.string	"dx"
	.value	0x10e
	.long	0x1be
	.byte	0x8
	.uleb128 0x1c
	.string	"dy"
	.value	0x10f
	.long	0x1be
	.byte	0xc
	.uleb128 0x5
	.long	.LASF1451
	.byte	0xb
	.value	0x112
	.byte	0xd
	.long	0x2f0e
	.byte	0x10
	.uleb128 0x5
	.long	.LASF1473
	.byte	0xb
	.value	0x115
	.byte	0x14
	.long	0x25de
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.long	0x1be
	.long	0x2f24
	.uleb128 0xc
	.long	0x43
	.byte	0x1
	.uleb128 0xc
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.long	.LASF1474
	.byte	0xb
	.value	0x117
	.byte	0x3
	.long	0x2ebe
	.uleb128 0x13
	.long	.LASF1475
	.byte	0xb
	.value	0x13a
	.byte	0xe
	.long	0x25c2
	.uleb128 0x7
	.long	0x2eb1
	.uleb128 0x7
	.long	0x2f31
	.uleb128 0x4
	.long	.LASF1476
	.byte	0xf
	.byte	0x34
	.byte	0x16
	.long	0x2f43
	.uleb128 0x4
	.long	.LASF1477
	.byte	0xf
	.byte	0x36
	.byte	0xd
	.long	0x6b
	.uleb128 0x4
	.long	.LASF1478
	.byte	0xf
	.byte	0x37
	.byte	0xd
	.long	0x6b
	.uleb128 0x4
	.long	.LASF1387
	.byte	0xf
	.byte	0x38
	.byte	0xd
	.long	0x6b
	.uleb128 0x4
	.long	.LASF1479
	.byte	0xf
	.byte	0x58
	.byte	0x15
	.long	0x2f84
	.uleb128 0x7
	.long	0x2e2b
	.uleb128 0x4
	.long	.LASF1480
	.byte	0xf
	.byte	0x5a
	.byte	0xd
	.long	0x6b
	.uleb128 0x4
	.long	.LASF1481
	.byte	0xf
	.byte	0x5b
	.byte	0x11
	.long	0x2fa1
	.uleb128 0x7
	.long	0x2f24
	.uleb128 0x4
	.long	.LASF1482
	.byte	0xf
	.byte	0x67
	.byte	0x11
	.long	0x1be
	.uleb128 0x4
	.long	.LASF1483
	.byte	0xf
	.byte	0x68
	.byte	0x11
	.long	0x1be
	.uleb128 0x4
	.long	.LASF1386
	.byte	0xf
	.byte	0x69
	.byte	0x11
	.long	0x1be
	.uleb128 0x4
	.long	.LASF1484
	.byte	0xf
	.byte	0x6b
	.byte	0x11
	.long	0x215
	.uleb128 0x4
	.long	.LASF1485
	.byte	0xf
	.byte	0x6c
	.byte	0x12
	.long	0x2fe2
	.uleb128 0x7
	.long	0x2b24
	.uleb128 0x4
	.long	.LASF1486
	.byte	0xf
	.byte	0x70
	.byte	0x11
	.long	0x215
	.uleb128 0xa
	.long	0x6b
	.long	0x3004
	.uleb128 0x16
	.long	0x43
	.value	0xfff
	.byte	0
	.uleb128 0x4
	.long	.LASF1487
	.byte	0xf
	.byte	0x72
	.byte	0xd
	.long	0x2ff3
	.uleb128 0xa
	.long	0x215
	.long	0x3021
	.uleb128 0x16
	.long	0x43
	.value	0x140
	.byte	0
	.uleb128 0x4
	.long	.LASF1488
	.byte	0xf
	.byte	0x73
	.byte	0x11
	.long	0x3010
	.uleb128 0x4
	.long	.LASF1489
	.byte	0xf
	.byte	0x76
	.byte	0x11
	.long	0x1be
	.uleb128 0x4
	.long	.LASF1490
	.byte	0xf
	.byte	0x77
	.byte	0x11
	.long	0x215
	.uleb128 0x4
	.long	.LASF1491
	.byte	0xf
	.byte	0x7f
	.byte	0xd
	.long	0x6b
	.uleb128 0x4
	.long	.LASF1492
	.byte	0x10
	.byte	0x26
	.byte	0x11
	.long	0x1be
	.uleb128 0x4
	.long	.LASF1493
	.byte	0x10
	.byte	0x27
	.byte	0x11
	.long	0x1be
	.uleb128 0x4
	.long	.LASF1494
	.byte	0x10
	.byte	0x30
	.byte	0xd
	.long	0x6b
	.uleb128 0x4
	.long	.LASF1495
	.byte	0x10
	.byte	0x31
	.byte	0xd
	.long	0x6b
	.uleb128 0x4
	.long	.LASF1496
	.byte	0x10
	.byte	0x33
	.byte	0x11
	.long	0x1be
	.uleb128 0x4
	.long	.LASF1497
	.byte	0x10
	.byte	0x34
	.byte	0x11
	.long	0x1be
	.uleb128 0x4
	.long	.LASF1498
	.byte	0x10
	.byte	0x35
	.byte	0x11
	.long	0x1be
	.uleb128 0x4
	.long	.LASF1369
	.byte	0x10
	.byte	0x37
	.byte	0xd
	.long	0x6b
	.uleb128 0x4
	.long	.LASF1447
	.byte	0x10
	.byte	0x39
	.byte	0xd
	.long	0x6b
	.uleb128 0x4
	.long	.LASF1499
	.byte	0x10
	.byte	0x3a
	.byte	0xd
	.long	0x6b
	.uleb128 0xa
	.long	0x2f43
	.long	0x30df
	.uleb128 0xc
	.long	0x43
	.byte	0xf
	.uleb128 0xc
	.long	0x43
	.byte	0x2f
	.byte	0
	.uleb128 0x4
	.long	.LASF1500
	.byte	0x10
	.byte	0x4d
	.byte	0x16
	.long	0x30c9
	.uleb128 0xa
	.long	0x2f43
	.long	0x30fb
	.uleb128 0xc
	.long	0x43
	.byte	0x2f
	.byte	0
	.uleb128 0x4
	.long	.LASF1501
	.byte	0x10
	.byte	0x4e
	.byte	0x16
	.long	0x30eb
	.uleb128 0xa
	.long	0x2f43
	.long	0x311d
	.uleb128 0xc
	.long	0x43
	.byte	0xf
	.uleb128 0xc
	.long	0x43
	.byte	0x7f
	.byte	0
	.uleb128 0x4
	.long	.LASF1502
	.byte	0x10
	.byte	0x4f
	.byte	0x16
	.long	0x3107
	.uleb128 0x4
	.long	.LASF1411
	.byte	0x10
	.byte	0x51
	.byte	0xd
	.long	0x6b
	.uleb128 0x4
	.long	.LASF1412
	.byte	0x10
	.byte	0x52
	.byte	0x16
	.long	0x2f43
	.uleb128 0x4
	.long	.LASF1503
	.byte	0x10
	.byte	0x5d
	.byte	0xd
	.long	0x6b
	.uleb128 0x35
	.uleb128 0x4
	.long	.LASF1504
	.byte	0x10
	.byte	0x64
	.byte	0x10
	.long	0x315a
	.uleb128 0x7
	.long	0x314d
	.uleb128 0x4
	.long	.LASF1505
	.byte	0x10
	.byte	0x65
	.byte	0x10
	.long	0x315a
	.uleb128 0x4
	.long	.LASF1506
	.byte	0x10
	.byte	0x66
	.byte	0x10
	.long	0x315a
	.uleb128 0x4
	.long	.LASF1507
	.byte	0x10
	.byte	0x68
	.byte	0x10
	.long	0x315a
	.uleb128 0x7
	.long	0x2f43
	.uleb128 0xa
	.long	0x9c
	.long	0x3199
	.uleb128 0x16
	.long	0x43
	.value	0x13f
	.byte	0
	.uleb128 0xa
	.long	0x1be
	.long	0x31a9
	.uleb128 0xc
	.long	0x43
	.byte	0xc7
	.byte	0
	.uleb128 0x4
	.long	.LASF1508
	.byte	0x11
	.byte	0x2e
	.byte	0x11
	.long	0x3199
	.uleb128 0xa
	.long	0x1be
	.long	0x31c6
	.uleb128 0x16
	.long	0x43
	.value	0x13f
	.byte	0
	.uleb128 0x4
	.long	.LASF1509
	.byte	0x11
	.byte	0x2f
	.byte	0x11
	.long	0x31b5
	.uleb128 0x4
	.long	.LASF1510
	.byte	0x12
	.byte	0x28
	.byte	0xf
	.long	0x3188
	.uleb128 0x4
	.long	.LASF1511
	.byte	0x12
	.byte	0x30
	.byte	0x11
	.long	0x1be
	.uleb128 0x4
	.long	.LASF1512
	.byte	0x12
	.byte	0x31
	.byte	0x11
	.long	0x1be
	.uleb128 0x20
	.long	.LASF1513
	.byte	0x34
	.byte	0x7
	.long	0x6b
	.uleb128 0x9
	.byte	0x3
	.quad	viewangleoffset
	.uleb128 0x36
	.long	0x30a5
	.byte	0x1
	.byte	0x7
	.uleb128 0x9
	.byte	0x3
	.quad	validcount
	.uleb128 0x6
	.long	0x3135
	.byte	0x3a
	.byte	0x10
	.uleb128 0x9
	.byte	0x3
	.quad	fixedcolormap
	.uleb128 0x4
	.long	.LASF1514
	.byte	0x1
	.byte	0x3b
	.byte	0x17
	.long	0x3183
	.uleb128 0x6
	.long	0x3069
	.byte	0x3d
	.byte	0x7
	.uleb128 0x9
	.byte	0x3
	.quad	centerx
	.uleb128 0x6
	.long	0x3075
	.byte	0x3e
	.byte	0x7
	.uleb128 0x9
	.byte	0x3
	.quad	centery
	.uleb128 0x6
	.long	0x3081
	.byte	0x40
	.byte	0xb
	.uleb128 0x9
	.byte	0x3
	.quad	centerxfrac
	.uleb128 0x6
	.long	0x308d
	.byte	0x41
	.byte	0xb
	.uleb128 0x9
	.byte	0x3
	.quad	centeryfrac
	.uleb128 0x6
	.long	0x3099
	.byte	0x42
	.byte	0xb
	.uleb128 0x9
	.byte	0x3
	.quad	projection
	.uleb128 0x20
	.long	.LASF1515
	.byte	0x45
	.byte	0x7
	.long	0x6b
	.uleb128 0x9
	.byte	0x3
	.quad	framecount
	.uleb128 0x6
	.long	0x3045
	.byte	0x47
	.byte	0x7
	.uleb128 0x9
	.byte	0x3
	.quad	sscount
	.uleb128 0x6
	.long	0x30b1
	.byte	0x48
	.byte	0x7
	.uleb128 0x9
	.byte	0x3
	.quad	linecount
	.uleb128 0x6
	.long	0x30bd
	.byte	0x49
	.byte	0x7
	.uleb128 0x9
	.byte	0x3
	.quad	loopcount
	.uleb128 0x6
	.long	0x2fa6
	.byte	0x4b
	.byte	0xb
	.uleb128 0x9
	.byte	0x3
	.quad	viewx
	.uleb128 0x6
	.long	0x2fb2
	.byte	0x4c
	.byte	0xb
	.uleb128 0x9
	.byte	0x3
	.quad	viewy
	.uleb128 0x6
	.long	0x2fbe
	.byte	0x4d
	.byte	0xb
	.uleb128 0x9
	.byte	0x3
	.quad	viewz
	.uleb128 0x6
	.long	0x2fca
	.byte	0x4f
	.byte	0xb
	.uleb128 0x9
	.byte	0x3
	.quad	viewangle
	.uleb128 0x6
	.long	0x3051
	.byte	0x51
	.byte	0xb
	.uleb128 0x9
	.byte	0x3
	.quad	viewcos
	.uleb128 0x6
	.long	0x305d
	.byte	0x52
	.byte	0xb
	.uleb128 0x9
	.byte	0x3
	.quad	viewsin
	.uleb128 0x6
	.long	0x2fd6
	.byte	0x54
	.byte	0xc
	.uleb128 0x9
	.byte	0x3
	.quad	viewplayer
	.uleb128 0x6
	.long	0x3141
	.byte	0x57
	.byte	0x7
	.uleb128 0x9
	.byte	0x3
	.quad	detailshift
	.uleb128 0x6
	.long	0x2fe7
	.byte	0x5c
	.byte	0xb
	.uleb128 0x9
	.byte	0x3
	.quad	clipangle
	.uleb128 0x6
	.long	0x3004
	.byte	0x62
	.byte	0x7
	.uleb128 0x9
	.byte	0x3
	.quad	viewangletox
	.uleb128 0x6
	.long	0x3021
	.byte	0x67
	.byte	0xb
	.uleb128 0x9
	.byte	0x3
	.quad	xtoviewangle
	.uleb128 0x6
	.long	0x1e7
	.byte	0x71
	.byte	0xb
	.uleb128 0x9
	.byte	0x3
	.quad	finecosine
	.uleb128 0x6
	.long	0x30df
	.byte	0x74
	.byte	0x10
	.uleb128 0x9
	.byte	0x3
	.quad	scalelight
	.uleb128 0x6
	.long	0x30fb
	.byte	0x75
	.byte	0x10
	.uleb128 0x9
	.byte	0x3
	.quad	scalelightfixed
	.uleb128 0x6
	.long	0x311d
	.byte	0x76
	.byte	0x10
	.uleb128 0x9
	.byte	0x3
	.quad	zlight
	.uleb128 0x6
	.long	0x3129
	.byte	0x79
	.byte	0x7
	.uleb128 0x9
	.byte	0x3
	.quad	extralight
	.uleb128 0x6
	.long	0x314e
	.byte	0x7d
	.byte	0x8
	.uleb128 0x9
	.byte	0x3
	.quad	colfunc
	.uleb128 0x6
	.long	0x315f
	.byte	0x7e
	.byte	0x8
	.uleb128 0x9
	.byte	0x3
	.quad	basecolfunc
	.uleb128 0x6
	.long	0x316b
	.byte	0x7f
	.byte	0x8
	.uleb128 0x9
	.byte	0x3
	.quad	fuzzcolfunc
	.uleb128 0x20
	.long	.LASF1516
	.byte	0x80
	.byte	0x8
	.long	0x315a
	.uleb128 0x9
	.byte	0x3
	.quad	transcolfunc
	.uleb128 0x6
	.long	0x3177
	.byte	0x81
	.byte	0x8
	.uleb128 0x9
	.byte	0x3
	.quad	spanfunc
	.uleb128 0x21
	.long	.LASF1517
	.value	0x28c
	.byte	0xa
	.long	0x25b6
	.uleb128 0x9
	.byte	0x3
	.quad	setsizeneeded
	.uleb128 0x21
	.long	.LASF1518
	.value	0x28d
	.byte	0x6
	.long	0x6b
	.uleb128 0x9
	.byte	0x3
	.quad	setblocks
	.uleb128 0x21
	.long	.LASF1519
	.value	0x28e
	.byte	0x6
	.long	0x6b
	.uleb128 0x9
	.byte	0x3
	.quad	setdetail
	.uleb128 0x27
	.long	.LASF1520
	.value	0x300
	.long	0x6b
	.uleb128 0x27
	.long	.LASF1521
	.value	0x301
	.long	0x6b
	.uleb128 0xd
	.long	.LASF1522
	.byte	0x12
	.byte	0x3e
	.byte	0x6
	.uleb128 0xd
	.long	.LASF1523
	.byte	0x11
	.byte	0x42
	.byte	0x6
	.uleb128 0x28
	.long	.LASF1533
	.byte	0x14
	.byte	0x40
	.byte	0x6
	.long	0x34b9
	.uleb128 0xe
	.long	0x6b
	.byte	0
	.uleb128 0xd
	.long	.LASF1524
	.byte	0x13
	.byte	0x84
	.byte	0x6
	.uleb128 0xd
	.long	.LASF1525
	.byte	0x12
	.byte	0x3d
	.byte	0x6
	.uleb128 0xd
	.long	.LASF1526
	.byte	0x11
	.byte	0x32
	.byte	0x6
	.uleb128 0xd
	.long	.LASF1527
	.byte	0x14
	.byte	0x3d
	.byte	0x6
	.uleb128 0xd
	.long	.LASF1528
	.byte	0x14
	.byte	0x3c
	.byte	0x6
	.uleb128 0xd
	.long	.LASF1529
	.byte	0x15
	.byte	0x62
	.byte	0x6
	.uleb128 0xd
	.long	.LASF1530
	.byte	0x16
	.byte	0x29
	.byte	0x6
	.uleb128 0xd
	.long	.LASF1531
	.byte	0x11
	.byte	0x31
	.byte	0x6
	.uleb128 0x37
	.long	.LASF1541
	.byte	0x18
	.value	0x16b
	.byte	0xc
	.long	0x6b
	.long	0x3511
	.uleb128 0xe
	.long	0xbf
	.uleb128 0x24
	.byte	0
	.uleb128 0xd
	.long	.LASF1532
	.byte	0x17
	.byte	0x2a
	.byte	0x6
	.uleb128 0x28
	.long	.LASF1534
	.byte	0x15
	.byte	0x5b
	.byte	0x1
	.long	0x3530
	.uleb128 0xe
	.long	0x6b
	.uleb128 0xe
	.long	0x6b
	.byte	0
	.uleb128 0xd
	.long	.LASF1535
	.byte	0x15
	.byte	0x57
	.byte	0x7
	.uleb128 0xd
	.long	.LASF1536
	.byte	0x15
	.byte	0x2f
	.byte	0x7
	.uleb128 0xd
	.long	.LASF1537
	.byte	0x15
	.byte	0x54
	.byte	0x7
	.uleb128 0xd
	.long	.LASF1538
	.byte	0x15
	.byte	0x38
	.byte	0x6
	.uleb128 0xd
	.long	.LASF1539
	.byte	0x15
	.byte	0x32
	.byte	0x7
	.uleb128 0xd
	.long	.LASF1540
	.byte	0x15
	.byte	0x2e
	.byte	0x7
	.uleb128 0x22
	.long	.LASF1542
	.byte	0x3
	.byte	0x29
	.byte	0x9
	.long	0x1be
	.long	0x357b
	.uleb128 0xe
	.long	0x1be
	.uleb128 0xe
	.long	0x1be
	.byte	0
	.uleb128 0x22
	.long	.LASF1543
	.byte	0x4
	.byte	0x5a
	.byte	0x1
	.long	0x6b
	.long	0x3596
	.uleb128 0xe
	.long	0x8e
	.uleb128 0xe
	.long	0x8e
	.byte	0
	.uleb128 0x22
	.long	.LASF1544
	.byte	0x3
	.byte	0x28
	.byte	0x9
	.long	0x1be
	.long	0x35b1
	.uleb128 0xe
	.long	0x1be
	.uleb128 0xe
	.long	0x1be
	.byte	0
	.uleb128 0x1d
	.long	.LASF1545
	.value	0x366
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x35de
	.uleb128 0x19
	.long	.LASF1376
	.value	0x366
	.byte	0x24
	.long	0x2fe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF1546
	.value	0x33e
	.byte	0x6
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x3619
	.uleb128 0x19
	.long	.LASF1376
	.value	0x33e
	.byte	0x1e
	.long	0x2fe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"i"
	.value	0x340
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.long	.LASF1564
	.value	0x321
	.byte	0x1
	.long	0x2f84
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x3681
	.uleb128 0x12
	.string	"x"
	.value	0x322
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"y"
	.value	0x323
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF1548
	.value	0x325
	.byte	0xd
	.long	0x2fa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.long	.LASF1549
	.value	0x326
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.long	.LASF1550
	.value	0x327
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x38
	.long	.LASF1562
	.byte	0x1
	.value	0x305
	.byte	0x6
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.long	.LASF1551
	.value	0x29f
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x370f
	.uleb128 0xb
	.long	.LASF1552
	.value	0x2a1
	.byte	0xd
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"dy"
	.value	0x2a2
	.byte	0xd
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.string	"i"
	.value	0x2a3
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"j"
	.value	0x2a4
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.long	.LASF1553
	.value	0x2a5
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.long	.LASF1554
	.value	0x2a6
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x29
	.long	.LASF1555
	.value	0x292
	.byte	0x1
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x374c
	.uleb128 0x19
	.long	.LASF1556
	.value	0x293
	.byte	0x8
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.long	.LASF1557
	.value	0x294
	.byte	0x8
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF1558
	.value	0x266
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x37b1
	.uleb128 0xf
	.string	"i"
	.value	0x268
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.string	"j"
	.value	0x269
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.long	.LASF1553
	.value	0x26a
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.long	.LASF1554
	.value	0x26b
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.long	.LASF1559
	.value	0x26c
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.long	.LASF1560
	.value	0x220
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x3805
	.uleb128 0xf
	.string	"i"
	.value	0x222
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.string	"x"
	.value	0x223
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.string	"t"
	.value	0x224
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.long	.LASF1561
	.value	0x225
	.byte	0xe
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.long	.LASF1563
	.value	0x1fd
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.long	.LASF1565
	.value	0x1c5
	.byte	0x9
	.long	0x1be
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x38b9
	.uleb128 0x19
	.long	.LASF1566
	.value	0x1c5
	.byte	0x29
	.long	0x215
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xb
	.long	.LASF1559
	.value	0x1c7
	.byte	0xe
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.long	.LASF1567
	.value	0x1c8
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF1568
	.value	0x1c9
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.long	.LASF1569
	.value	0x1ca
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.long	.LASF1570
	.value	0x1cb
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.string	"num"
	.value	0x1cc
	.byte	0xe
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"den"
	.value	0x1cd
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.long	.LASF1571
	.value	0x1aa
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.long	.LASF1572
	.value	0x188
	.byte	0x1
	.long	0x1be
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x3956
	.uleb128 0x12
	.string	"x"
	.value	0x189
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.string	"y"
	.value	0x18a
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.long	.LASF1352
	.value	0x18c
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"dx"
	.value	0x18d
	.byte	0xd
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.string	"dy"
	.value	0x18e
	.byte	0xd
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.long	.LASF1573
	.value	0x18f
	.byte	0xd
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.long	.LASF1574
	.value	0x190
	.byte	0xd
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.long	.LASF1575
	.value	0x17a
	.byte	0x1
	.long	0x215
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x39ad
	.uleb128 0x12
	.string	"x1"
	.value	0x17b
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.string	"y1"
	.value	0x17c
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"x2"
	.value	0x17d
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.string	"y2"
	.value	0x17e
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1a
	.long	.LASF1576
	.value	0x124
	.byte	0x1
	.long	0x215
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x39e8
	.uleb128 0x12
	.string	"x"
	.value	0x125
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.string	"y"
	.value	0x126
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF1577
	.byte	0xd7
	.long	0x6b
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a95
	.uleb128 0x17
	.string	"x"
	.byte	0xd8
	.byte	0xb
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x17
	.string	"y"
	.byte	0xd9
	.byte	0xb
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF1578
	.byte	0xda
	.byte	0xa
	.long	0x2f3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.string	"lx"
	.byte	0xdc
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.string	"ly"
	.byte	0xdd
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x15
	.string	"ldx"
	.byte	0xde
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"ldy"
	.byte	0xdf
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.string	"dx"
	.byte	0xe0
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.string	"dy"
	.byte	0xe1
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.long	.LASF1579
	.byte	0xe2
	.byte	0xd
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF1580
	.byte	0xe3
	.byte	0xd
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.long	.LASF1581
	.byte	0xa2
	.long	0x6b
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b10
	.uleb128 0x17
	.string	"x"
	.byte	0xa3
	.byte	0xb
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.string	"y"
	.byte	0xa4
	.byte	0xb
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF1548
	.byte	0xa5
	.byte	0xb
	.long	0x2fa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.string	"dx"
	.byte	0xa7
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.string	"dy"
	.byte	0xa8
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.long	.LASF1579
	.byte	0xa9
	.byte	0xd
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF1580
	.byte	0xaa
	.byte	0xd
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x39
	.long	.LASF1583
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.string	"x"
	.byte	0x8c
	.byte	0x8
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.string	"y"
	.byte	0x8d
	.byte	0x8
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"box"
	.byte	0x8e
	.byte	0xc
	.long	0x1f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x23
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.sleb128 12
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
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
.LASF1477:
	.string	"viewwidth"
.LASF838:
	.string	"S_BSPI_RUN1"
.LASF839:
	.string	"S_BSPI_RUN2"
.LASF840:
	.string	"S_BSPI_RUN3"
.LASF841:
	.string	"S_BSPI_RUN4"
.LASF842:
	.string	"S_BSPI_RUN5"
.LASF843:
	.string	"S_BSPI_RUN6"
.LASF844:
	.string	"S_BSPI_RUN7"
.LASF845:
	.string	"S_BSPI_RUN8"
.LASF846:
	.string	"S_BSPI_RUN9"
.LASF130:
	.string	"SPR_YSKU"
.LASF1410:
	.string	"attacker"
.LASF493:
	.string	"S_FIRE10"
.LASF494:
	.string	"S_FIRE11"
.LASF495:
	.string	"S_FIRE12"
.LASF496:
	.string	"S_FIRE13"
.LASF497:
	.string	"S_FIRE14"
.LASF498:
	.string	"S_FIRE15"
.LASF499:
	.string	"S_FIRE16"
.LASF500:
	.string	"S_FIRE17"
.LASF501:
	.string	"S_FIRE18"
.LASF502:
	.string	"S_FIRE19"
.LASF1314:
	.string	"MT_MISC84"
.LASF1247:
	.string	"MT_MISC20"
.LASF1061:
	.string	"S_MEGA2"
.LASF1062:
	.string	"S_MEGA3"
.LASF1063:
	.string	"S_MEGA4"
.LASF1251:
	.string	"MT_MISC24"
.LASF1252:
	.string	"MT_MISC25"
.LASF1254:
	.string	"MT_MISC26"
.LASF1255:
	.string	"MT_MISC27"
.LASF1256:
	.string	"MT_MISC28"
.LASF1259:
	.string	"MT_MISC29"
.LASF692:
	.string	"S_SARG_PAIN2"
.LASF1375:
	.string	"threshold"
.LASF22:
	.string	"wp_pistol"
.LASF171:
	.string	"SPR_COL1"
.LASF172:
	.string	"SPR_COL2"
.LASF173:
	.string	"SPR_COL3"
.LASF174:
	.string	"SPR_COL4"
.LASF183:
	.string	"SPR_COL5"
.LASF177:
	.string	"SPR_COL6"
.LASF1513:
	.string	"viewangleoffset"
.LASF503:
	.string	"S_FIRE20"
.LASF504:
	.string	"S_FIRE21"
.LASF505:
	.string	"S_FIRE22"
.LASF506:
	.string	"S_FIRE23"
.LASF507:
	.string	"S_FIRE24"
.LASF157:
	.string	"SPR_COLU"
.LASF509:
	.string	"S_FIRE26"
.LASF510:
	.string	"S_FIRE27"
.LASF511:
	.string	"S_FIRE28"
.LASF512:
	.string	"S_FIRE29"
.LASF1429:
	.string	"BOXTOP"
.LASF1260:
	.string	"MT_MISC30"
.LASF1261:
	.string	"MT_MISC31"
.LASF1262:
	.string	"MT_MISC32"
.LASF1263:
	.string	"MT_MISC33"
.LASF854:
	.string	"S_BSPI_PAIN"
.LASF1265:
	.string	"MT_MISC35"
.LASF326:
	.string	"S_BFGEXP"
.LASF35:
	.string	"am_misl"
.LASF1268:
	.string	"MT_MISC38"
.LASF1269:
	.string	"MT_MISC39"
.LASF1437:
	.string	"floorpic"
.LASF856:
	.string	"S_BSPI_DIE1"
.LASF1345:
	.string	"NUMPSPRITES"
.LASF1544:
	.string	"FixedMul"
.LASF861:
	.string	"S_BSPI_DIE6"
.LASF1514:
	.string	"walllights"
.LASF1464:
	.string	"ST_POSITIVE"
.LASF1386:
	.string	"viewz"
.LASF1458:
	.string	"toptexture"
.LASF752:
	.string	"S_BOSS_RAISE1"
.LASF753:
	.string	"S_BOSS_RAISE2"
.LASF1194:
	.string	"MT_HEAD"
.LASF754:
	.string	"S_BOSS_RAISE3"
.LASF513:
	.string	"S_FIRE30"
.LASF658:
	.string	"S_TROO_PAIN"
.LASF947:
	.string	"S_SSWV_DIE1"
.LASF757:
	.string	"S_BOSS_RAISE6"
.LASF949:
	.string	"S_SSWV_DIE3"
.LASF950:
	.string	"S_SSWV_DIE4"
.LASF951:
	.string	"S_SSWV_DIE5"
.LASF125:
	.string	"SPR_BKEY"
.LASF769:
	.string	"S_BOS2_ATK1"
.LASF770:
	.string	"S_BOS2_ATK2"
.LASF771:
	.string	"S_BOS2_ATK3"
.LASF159:
	.string	"SPR_GOR1"
.LASF166:
	.string	"SPR_GOR2"
.LASF167:
	.string	"SPR_GOR3"
.LASF168:
	.string	"SPR_GOR4"
.LASF169:
	.string	"SPR_GOR5"
.LASF1272:
	.string	"MT_MISC42"
.LASF1273:
	.string	"MT_MISC43"
.LASF526:
	.string	"S_SKEL_RUN1"
.LASF527:
	.string	"S_SKEL_RUN2"
.LASF528:
	.string	"S_SKEL_RUN3"
.LASF529:
	.string	"S_SKEL_RUN4"
.LASF530:
	.string	"S_SKEL_RUN5"
.LASF531:
	.string	"S_SKEL_RUN6"
.LASF532:
	.string	"S_SKEL_RUN7"
.LASF533:
	.string	"S_SKEL_RUN8"
.LASF534:
	.string	"S_SKEL_RUN9"
.LASF25:
	.string	"wp_missile"
.LASF1012:
	.string	"S_BEXP2"
.LASF1322:
	.string	"seestate"
.LASF1556:
	.string	"blocks"
.LASF707:
	.string	"S_HEAD_ATK1"
.LASF708:
	.string	"S_HEAD_ATK2"
.LASF709:
	.string	"S_HEAD_ATK3"
.LASF1452:
	.string	"slopetype"
.LASF961:
	.string	"S_SSWV_RAISE1"
.LASF962:
	.string	"S_SSWV_RAISE2"
.LASF963:
	.string	"S_SSWV_RAISE3"
.LASF964:
	.string	"S_SSWV_RAISE4"
.LASF965:
	.string	"S_SSWV_RAISE5"
.LASF1352:
	.string	"angle"
.LASF1189:
	.string	"MT_FATSHOT"
.LASF145:
	.string	"SPR_CELL"
.LASF146:
	.string	"SPR_CELP"
.LASF1127:
	.string	"S_HEARTCOL"
.LASF1511:
	.string	"pspritescale"
.LASF1382:
	.string	"numlines"
.LASF1044:
	.string	"S_MEDI"
.LASF1051:
	.string	"S_PINV"
.LASF1238:
	.string	"MT_INS"
.LASF1281:
	.string	"MT_MISC51"
.LASF1282:
	.string	"MT_MISC52"
.LASF1236:
	.string	"MT_INV"
.LASF1284:
	.string	"MT_MISC54"
.LASF1141:
	.string	"S_BTORCHSHRT"
.LASF262:
	.string	"S_MISSILEUP"
.LASF1287:
	.string	"MT_MISC57"
.LASF1288:
	.string	"MT_MISC58"
.LASF1289:
	.string	"MT_MISC59"
.LASF439:
	.string	"S_SPOS_RAISE1"
.LASF233:
	.string	"S_SGUNFLASH1"
.LASF234:
	.string	"S_SGUNFLASH2"
.LASF781:
	.string	"S_BOS2_RAISE1"
.LASF782:
	.string	"S_BOS2_RAISE2"
.LASF783:
	.string	"S_BOS2_RAISE3"
.LASF784:
	.string	"S_BOS2_RAISE4"
.LASF785:
	.string	"S_BOS2_RAISE5"
.LASF786:
	.string	"S_BOS2_RAISE6"
.LASF787:
	.string	"S_BOS2_RAISE7"
.LASF546:
	.string	"S_SKEL_PAIN"
.LASF1033:
	.string	"S_RKEY"
.LASF60:
	.string	"next"
.LASF215:
	.string	"S_PISTOLUP"
.LASF901:
	.string	"S_CYBER_DIE8"
.LASF1457:
	.string	"rowoffset"
.LASF1290:
	.string	"MT_MISC60"
.LASF1291:
	.string	"MT_MISC61"
.LASF1292:
	.string	"MT_MISC62"
.LASF1293:
	.string	"MT_MISC63"
.LASF1294:
	.string	"MT_MISC64"
.LASF1295:
	.string	"MT_MISC65"
.LASF1296:
	.string	"MT_MISC66"
.LASF1297:
	.string	"MT_MISC67"
.LASF330:
	.string	"S_EXPLODE1"
.LASF331:
	.string	"S_EXPLODE2"
.LASF332:
	.string	"S_EXPLODE3"
.LASF1565:
	.string	"R_ScaleFromGlobalAngle"
.LASF1541:
	.string	"printf"
.LASF521:
	.string	"S_TRACEEXP1"
.LASF522:
	.string	"S_TRACEEXP2"
.LASF523:
	.string	"S_TRACEEXP3"
.LASF1526:
	.string	"R_ClearPlanes"
.LASF909:
	.string	"S_PAIN_RUN5"
.LASF1011:
	.string	"S_BEXP"
.LASF910:
	.string	"S_PAIN_RUN6"
.LASF1411:
	.string	"extralight"
.LASF1128:
	.string	"S_HEARTCOL2"
.LASF307:
	.string	"S_RBALLX1"
.LASF1336:
	.string	"height"
.LASF1221:
	.string	"MT_TELEPORTMAN"
.LASF1545:
	.string	"R_RenderPlayerView"
.LASF1493:
	.string	"viewsin"
.LASF1300:
	.string	"MT_MISC70"
.LASF90:
	.string	"SPR_IFOG"
.LASF1302:
	.string	"MT_MISC72"
.LASF1303:
	.string	"MT_MISC73"
.LASF1304:
	.string	"MT_MISC74"
.LASF1305:
	.string	"MT_MISC75"
.LASF1306:
	.string	"MT_MISC76"
.LASF1134:
	.string	"S_GREENTORCH2"
.LASF1135:
	.string	"S_GREENTORCH3"
.LASF1136:
	.string	"S_GREENTORCH4"
.LASF975:
	.string	"S_COMMKEEN9"
.LASF624:
	.string	"S_CPOS_PAIN2"
.LASF847:
	.string	"S_BSPI_RUN10"
.LASF848:
	.string	"S_BSPI_RUN11"
.LASF849:
	.string	"S_BSPI_RUN12"
.LASF931:
	.string	"S_SSWV_RUN1"
.LASF932:
	.string	"S_SSWV_RUN2"
.LASF933:
	.string	"S_SSWV_RUN3"
.LASF934:
	.string	"S_SSWV_RUN4"
.LASF935:
	.string	"S_SSWV_RUN5"
.LASF936:
	.string	"S_SSWV_RUN6"
.LASF937:
	.string	"S_SSWV_RUN7"
.LASF938:
	.string	"S_SSWV_RUN8"
.LASF1116:
	.string	"S_SKULLCOL"
.LASF1188:
	.string	"MT_FATSO"
.LASF660:
	.string	"S_TROO_DIE1"
.LASF661:
	.string	"S_TROO_DIE2"
.LASF662:
	.string	"S_TROO_DIE3"
.LASF663:
	.string	"S_TROO_DIE4"
.LASF664:
	.string	"S_TROO_DIE5"
.LASF1041:
	.string	"S_YSKULL"
.LASF1042:
	.string	"S_YSKULL2"
.LASF143:
	.string	"SPR_ROCK"
.LASF1213:
	.string	"MT_ROCKET"
.LASF1311:
	.string	"MT_MISC81"
.LASF1312:
	.string	"MT_MISC82"
.LASF1313:
	.string	"MT_MISC83"
.LASF619:
	.string	"S_CPOS_ATK1"
.LASF620:
	.string	"S_CPOS_ATK2"
.LASF621:
	.string	"S_CPOS_ATK3"
.LASF622:
	.string	"S_CPOS_ATK4"
.LASF1180:
	.string	"MT_PLAYER"
.LASF155:
	.string	"SPR_SHOT"
.LASF348:
	.string	"S_IFOG2"
.LASF349:
	.string	"S_IFOG3"
.LASF350:
	.string	"S_IFOG4"
.LASF351:
	.string	"S_IFOG5"
.LASF84:
	.string	"SPR_PLSE"
.LASF76:
	.string	"SPR_PLSF"
.LASF75:
	.string	"SPR_PLSG"
.LASF744:
	.string	"S_BOSS_PAIN2"
.LASF444:
	.string	"S_VILE_STND"
.LASF972:
	.string	"S_COMMKEEN6"
.LASF973:
	.string	"S_COMMKEEN7"
.LASF974:
	.string	"S_COMMKEEN8"
.LASF83:
	.string	"SPR_PLSS"
.LASF823:
	.string	"S_SPID_PAIN2"
.LASF1337:
	.string	"mass"
.LASF196:
	.string	"SPR_POB1"
.LASF197:
	.string	"SPR_POB2"
.LASF1045:
	.string	"S_SOUL"
.LASF1055:
	.string	"S_PSTR"
.LASF887:
	.string	"S_CYBER_ATK1"
.LASF888:
	.string	"S_CYBER_ATK2"
.LASF889:
	.string	"S_CYBER_ATK3"
.LASF890:
	.string	"S_CYBER_ATK4"
.LASF891:
	.string	"S_CYBER_ATK5"
.LASF892:
	.string	"S_CYBER_ATK6"
.LASF1082:
	.string	"S_BFUG"
.LASF122:
	.string	"SPR_FCAN"
.LASF1467:
	.string	"line_t"
.LASF565:
	.string	"S_FATT_STND"
.LASF1002:
	.string	"S_BRAINEXPLODE1"
.LASF1003:
	.string	"S_BRAINEXPLODE2"
.LASF1004:
	.string	"S_BRAINEXPLODE3"
.LASF286:
	.string	"S_BFGUP"
.LASF127:
	.string	"SPR_YKEY"
.LASF673:
	.string	"S_TROO_RAISE1"
.LASF674:
	.string	"S_TROO_RAISE2"
.LASF675:
	.string	"S_TROO_RAISE3"
.LASF676:
	.string	"S_TROO_RAISE4"
.LASF677:
	.string	"S_TROO_RAISE5"
.LASF1086:
	.string	"S_PLAS"
.LASF968:
	.string	"S_COMMKEEN2"
.LASF969:
	.string	"S_COMMKEEN3"
.LASF970:
	.string	"S_COMMKEEN4"
.LASF971:
	.string	"S_COMMKEEN5"
.LASF352:
	.string	"S_PLAY"
.LASF918:
	.string	"S_PAIN_DIE2"
.LASF919:
	.string	"S_PAIN_DIE3"
.LASF920:
	.string	"S_PAIN_DIE4"
.LASF921:
	.string	"S_PAIN_DIE5"
.LASF922:
	.string	"S_PAIN_DIE6"
.LASF1191:
	.string	"MT_TROOP"
.LASF473:
	.string	"S_VILE_PAIN2"
.LASF601:
	.string	"S_FATT_RAISE1"
.LASF26:
	.string	"wp_plasma"
.LASF603:
	.string	"S_FATT_RAISE3"
.LASF604:
	.string	"S_FATT_RAISE4"
.LASF605:
	.string	"S_FATT_RAISE5"
.LASF606:
	.string	"S_FATT_RAISE6"
.LASF607:
	.string	"S_FATT_RAISE7"
.LASF608:
	.string	"S_FATT_RAISE8"
.LASF317:
	.string	"S_ROCKET"
.LASF1212:
	.string	"MT_HEADSHOT"
.LASF1447:
	.string	"linecount"
.LASF1450:
	.string	"sidenum"
.LASF870:
	.string	"S_ARACH_PLAZ"
.LASF1109:
	.string	"S_STALAGTITE"
.LASF711:
	.string	"S_HEAD_PAIN2"
.LASF712:
	.string	"S_HEAD_PAIN3"
.LASF1505:
	.string	"basecolfunc"
.LASF1351:
	.string	"byte"
.LASF1563:
	.string	"R_InitTables"
.LASF19:
	.string	"it_redskull"
.LASF1219:
	.string	"MT_TFOG"
.LASF420:
	.string	"S_SPOS_ATK1"
.LASF421:
	.string	"S_SPOS_ATK2"
.LASF422:
	.string	"S_SPOS_ATK3"
.LASF1558:
	.string	"R_InitLightTables"
.LASF357:
	.string	"S_PLAY_ATK1"
.LASF358:
	.string	"S_PLAY_ATK2"
.LASF110:
	.string	"SPR_APLS"
.LASF1501:
	.string	"scalelightfixed"
.LASF1576:
	.string	"R_PointToAngle"
.LASF47:
	.string	"finesine"
.LASF1512:
	.string	"pspriteiscale"
.LASF1403:
	.string	"refire"
.LASF1567:
	.string	"anglea"
.LASF1568:
	.string	"angleb"
.LASF1138:
	.string	"S_REDTORCH2"
.LASF1139:
	.string	"S_REDTORCH3"
.LASF1140:
	.string	"S_REDTORCH4"
.LASF647:
	.string	"S_TROO_RUN1"
.LASF648:
	.string	"S_TROO_RUN2"
.LASF649:
	.string	"S_TROO_RUN3"
.LASF650:
	.string	"S_TROO_RUN4"
.LASF651:
	.string	"S_TROO_RUN5"
.LASF652:
	.string	"S_TROO_RUN6"
.LASF653:
	.string	"S_TROO_RUN7"
.LASF654:
	.string	"S_TROO_RUN8"
.LASF1432:
	.string	"BOXRIGHT"
.LASF101:
	.string	"SPR_CPOS"
.LASF562:
	.string	"S_FATSHOTX1"
.LASF563:
	.string	"S_FATSHOTX2"
.LASF564:
	.string	"S_FATSHOTX3"
.LASF642:
	.string	"S_CPOS_RAISE5"
.LASF643:
	.string	"S_CPOS_RAISE6"
.LASF644:
	.string	"S_CPOS_RAISE7"
.LASF21:
	.string	"wp_fist"
.LASF1330:
	.string	"missilestate"
.LASF131:
	.string	"SPR_STIM"
.LASF678:
	.string	"S_SARG_STND"
.LASF903:
	.string	"S_CYBER_DIE10"
.LASF81:
	.string	"SPR_BAL1"
.LASF82:
	.string	"SPR_BAL2"
.LASF104:
	.string	"SPR_BAL7"
.LASF1370:
	.string	"info"
.LASF1097:
	.string	"S_HEADSONSTICK"
.LASF1365:
	.string	"ceilingz"
.LASF554:
	.string	"S_SKEL_RAISE1"
.LASF69:
	.string	"SPR_SHT2"
.LASF208:
	.string	"S_PUNCH1"
.LASF209:
	.string	"S_PUNCH2"
.LASF210:
	.string	"S_PUNCH3"
.LASF211:
	.string	"S_PUNCH4"
.LASF212:
	.string	"S_PUNCH5"
.LASF571:
	.string	"S_FATT_RUN5"
.LASF207:
	.string	"S_PUNCHUP"
.LASF824:
	.string	"S_SPID_DIE1"
.LASF575:
	.string	"S_FATT_RUN9"
.LASF826:
	.string	"S_SPID_DIE3"
.LASF827:
	.string	"S_SPID_DIE4"
.LASF68:
	.string	"SPR_SHTF"
.LASF64:
	.string	"SPR_SHTG"
.LASF346:
	.string	"S_IFOG01"
.LASF347:
	.string	"S_IFOG02"
.LASF832:
	.string	"S_SPID_DIE9"
.LASF1074:
	.string	"S_AMMO"
.LASF36:
	.string	"NUMAMMO"
.LASF905:
	.string	"S_PAIN_RUN1"
.LASF906:
	.string	"S_PAIN_RUN2"
.LASF907:
	.string	"S_PAIN_RUN3"
.LASF908:
	.string	"S_PAIN_RUN4"
.LASF190:
	.string	"SPR_HDB1"
.LASF191:
	.string	"SPR_HDB2"
.LASF192:
	.string	"SPR_HDB3"
.LASF193:
	.string	"SPR_HDB4"
.LASF194:
	.string	"SPR_HDB5"
.LASF195:
	.string	"SPR_HDB6"
.LASF1181:
	.string	"MT_POSSESSED"
.LASF240:
	.string	"S_DSGUN3"
.LASF241:
	.string	"S_DSGUN4"
.LASF1456:
	.string	"textureoffset"
.LASF1353:
	.string	"type"
.LASF260:
	.string	"S_MISSILE"
.LASF1088:
	.string	"S_SHOT2"
.LASF1516:
	.string	"transcolfunc"
.LASF1481:
	.string	"nodes"
.LASF1155:
	.string	"S_HANGTLOOKDN"
.LASF1502:
	.string	"zlight"
.LASF1372:
	.string	"movedir"
.LASF632:
	.string	"S_CPOS_XDIE1"
.LASF1500:
	.string	"scalelight"
.LASF57:
	.string	"actionf_t"
.LASF52:
	.string	"actionf_v"
.LASF151:
	.string	"SPR_MGUN"
.LASF1193:
	.string	"MT_SHADOWS"
.LASF535:
	.string	"S_SKEL_RUN10"
.LASF536:
	.string	"S_SKEL_RUN11"
.LASF537:
	.string	"S_SKEL_RUN12"
.LASF203:
	.string	"S_NULL"
.LASF1573:
	.string	"temp"
.LASF745:
	.string	"S_BOSS_DIE1"
.LASF746:
	.string	"S_BOSS_DIE2"
.LASF747:
	.string	"S_BOSS_DIE3"
.LASF748:
	.string	"S_BOSS_DIE4"
.LASF749:
	.string	"S_BOSS_DIE5"
.LASF750:
	.string	"S_BOSS_DIE6"
.LASF751:
	.string	"S_BOSS_DIE7"
.LASF1571:
	.string	"R_InitPointToAngle"
.LASF915:
	.string	"S_PAIN_PAIN"
.LASF284:
	.string	"S_BFG"
.LASF1328:
	.string	"painsound"
.LASF1459:
	.string	"bottomtexture"
.LASF1428:
	.string	"player_t"
.LASF1440:
	.string	"special"
.LASF930:
	.string	"S_SSWV_STND2"
.LASF152:
	.string	"SPR_CSAW"
.LASF1065:
	.string	"S_PMAP"
.LASF1071:
	.string	"S_PVIS"
.LASF285:
	.string	"S_BFGDOWN"
.LASF1205:
	.string	"MT_BOSSBRAIN"
.LASF98:
	.string	"SPR_SKEL"
.LASF280:
	.string	"S_PLASMA1"
.LASF281:
	.string	"S_PLASMA2"
.LASF1145:
	.string	"S_GTORCHSHRT"
.LASF1383:
	.string	"firstline"
.LASF1079:
	.string	"S_SHEL"
.LASF1546:
	.string	"R_SetupFrame"
.LASF836:
	.string	"S_BSPI_STND2"
.LASF6:
	.string	"unsigned char"
.LASF96:
	.string	"SPR_FATB"
.LASF201:
	.string	"NUMSPRITES"
.LASF319:
	.string	"S_BFGSHOT2"
.LASF100:
	.string	"SPR_FATT"
.LASF1046:
	.string	"S_SOUL2"
.LASF1047:
	.string	"S_SOUL3"
.LASF1048:
	.string	"S_SOUL4"
.LASF1049:
	.string	"S_SOUL5"
.LASF1050:
	.string	"S_SOUL6"
.LASF806:
	.string	"S_SPID_RUN1"
.LASF807:
	.string	"S_SPID_RUN2"
.LASF808:
	.string	"S_SPID_RUN3"
.LASF809:
	.string	"S_SPID_RUN4"
.LASF810:
	.string	"S_SPID_RUN5"
.LASF811:
	.string	"S_SPID_RUN6"
.LASF812:
	.string	"S_SPID_RUN7"
.LASF813:
	.string	"S_SPID_RUN8"
.LASF12:
	.string	"float"
.LASF1013:
	.string	"S_BEXP3"
.LASF1014:
	.string	"S_BEXP4"
.LASF1102:
	.string	"S_DEADSTICK"
.LASF1474:
	.string	"node_t"
.LASF1412:
	.string	"fixedcolormap"
.LASF1397:
	.string	"weaponowned"
.LASF1222:
	.string	"MT_EXTRABFG"
.LASF392:
	.string	"S_POSS_DIE1"
.LASF393:
	.string	"S_POSS_DIE2"
.LASF394:
	.string	"S_POSS_DIE3"
.LASF395:
	.string	"S_POSS_DIE4"
.LASF396:
	.string	"S_POSS_DIE5"
.LASF222:
	.string	"S_SGUNDOWN"
.LASF71:
	.string	"SPR_CHGF"
.LASF70:
	.string	"SPR_CHGG"
.LASF615:
	.string	"S_CPOS_RUN5"
.LASF874:
	.string	"S_ARACH_PLEX3"
.LASF616:
	.string	"S_CPOS_RUN6"
.LASF876:
	.string	"S_ARACH_PLEX5"
.LASF617:
	.string	"S_CPOS_RUN7"
.LASF1374:
	.string	"target"
.LASF181:
	.string	"SPR_CEYE"
.LASF1462:
	.string	"ST_HORIZONTAL"
.LASF923:
	.string	"S_PAIN_RAISE1"
.LASF924:
	.string	"S_PAIN_RAISE2"
.LASF925:
	.string	"S_PAIN_RAISE3"
.LASF926:
	.string	"S_PAIN_RAISE4"
.LASF927:
	.string	"S_PAIN_RAISE5"
.LASF560:
	.string	"S_FATSHOT1"
.LASF561:
	.string	"S_FATSHOT2"
.LASF1463:
	.string	"ST_VERTICAL"
.LASF138:
	.string	"SPR_SUIT"
.LASF788:
	.string	"S_SKULL_STND"
.LASF1489:
	.string	"rw_distance"
.LASF822:
	.string	"S_SPID_PAIN"
.LASF1317:
	.string	"NUMMOBJTYPES"
.LASF120:
	.string	"SPR_BAR1"
.LASF1461:
	.string	"side_t"
.LASF235:
	.string	"S_DSGUN"
.LASF1570:
	.string	"sineb"
.LASF1114:
	.string	"S_CANDLESTIK"
.LASF42:
	.string	"pw_allmap"
.LASF1170:
	.string	"NUMSTATES"
.LASF814:
	.string	"S_SPID_RUN9"
.LASF300:
	.string	"S_TBALL1"
.LASF301:
	.string	"S_TBALL2"
.LASF514:
	.string	"S_SMOKE1"
.LASF515:
	.string	"S_SMOKE2"
.LASF516:
	.string	"S_SMOKE3"
.LASF517:
	.string	"S_SMOKE4"
.LASF518:
	.string	"S_SMOKE5"
.LASF737:
	.string	"S_BOSS_RUN6"
.LASF738:
	.string	"S_BOSS_RUN7"
.LASF739:
	.string	"S_BOSS_RUN8"
.LASF103:
	.string	"SPR_HEAD"
.LASF1362:
	.string	"bprev"
.LASF164:
	.string	"SPR_POL1"
.LASF160:
	.string	"SPR_POL2"
.LASF163:
	.string	"SPR_POL3"
.LASF162:
	.string	"SPR_POL4"
.LASF161:
	.string	"SPR_POL5"
.LASF165:
	.string	"SPR_POL6"
.LASF1009:
	.string	"S_BAR1"
.LASF1223:
	.string	"MT_MISC0"
.LASF1095:
	.string	"S_DEADTORSO"
.LASF237:
	.string	"S_DSGUNUP"
.LASF1320:
	.string	"spawnstate"
.LASF646:
	.string	"S_TROO_STND2"
.LASF1166:
	.string	"S_TECH2LAMP"
.LASF1209:
	.string	"MT_SPAWNFIRE"
.LASF1184:
	.string	"MT_FIRE"
.LASF1561:
	.string	"focallength"
.LASF1176:
	.string	"nextstate"
.LASF1583:
	.string	"R_AddPointToBox"
.LASF1548:
	.string	"node"
.LASF1480:
	.string	"numnodes"
.LASF743:
	.string	"S_BOSS_PAIN"
.LASF114:
	.string	"SPR_SSWV"
.LASF305:
	.string	"S_RBALL1"
.LASF306:
	.string	"S_RBALL2"
.LASF1110:
	.string	"S_TALLGRNCOL"
.LASF1377:
	.string	"lastlook"
.LASF1427:
	.string	"playerstate_t"
.LASF1099:
	.string	"S_HEADONASTICK"
.LASF379:
	.string	"S_POSS_RUN1"
.LASF321:
	.string	"S_BFGLAND2"
.LASF322:
	.string	"S_BFGLAND3"
.LASF323:
	.string	"S_BFGLAND4"
.LASF324:
	.string	"S_BFGLAND5"
.LASF325:
	.string	"S_BFGLAND6"
.LASF385:
	.string	"S_POSS_RUN7"
.LASF386:
	.string	"S_POSS_RUN8"
.LASF368:
	.string	"S_PLAY_XDIE1"
.LASF369:
	.string	"S_PLAY_XDIE2"
.LASF370:
	.string	"S_PLAY_XDIE3"
.LASF371:
	.string	"S_PLAY_XDIE4"
.LASF372:
	.string	"S_PLAY_XDIE5"
.LASF373:
	.string	"S_PLAY_XDIE6"
.LASF374:
	.string	"S_PLAY_XDIE7"
.LASF375:
	.string	"S_PLAY_XDIE8"
.LASF376:
	.string	"S_PLAY_XDIE9"
.LASF774:
	.string	"S_BOS2_DIE1"
.LASF775:
	.string	"S_BOS2_DIE2"
.LASF776:
	.string	"S_BOS2_DIE3"
.LASF777:
	.string	"S_BOS2_DIE4"
.LASF778:
	.string	"S_BOS2_DIE5"
.LASF779:
	.string	"S_BOS2_DIE6"
.LASF780:
	.string	"S_BOS2_DIE7"
.LASF1340:
	.string	"flags"
.LASF700:
	.string	"S_SARG_RAISE2"
.LASF701:
	.string	"S_SARG_RAISE3"
.LASF344:
	.string	"S_TFOG10"
.LASF702:
	.string	"S_SARG_RAISE4"
.LASF397:
	.string	"S_POSS_XDIE1"
.LASF398:
	.string	"S_POSS_XDIE2"
.LASF399:
	.string	"S_POSS_XDIE3"
.LASF400:
	.string	"S_POSS_XDIE4"
.LASF401:
	.string	"S_POSS_XDIE5"
.LASF402:
	.string	"S_POSS_XDIE6"
.LASF403:
	.string	"S_POSS_XDIE7"
.LASF32:
	.string	"am_clip"
.LASF405:
	.string	"S_POSS_XDIE9"
.LASF1098:
	.string	"S_GIBS"
.LASF713:
	.string	"S_HEAD_DIE1"
.LASF714:
	.string	"S_HEAD_DIE2"
.LASF715:
	.string	"S_HEAD_DIE3"
.LASF716:
	.string	"S_HEAD_DIE4"
.LASF717:
	.string	"S_HEAD_DIE5"
.LASF718:
	.string	"S_HEAD_DIE6"
.LASF566:
	.string	"S_FATT_STND2"
.LASF1089:
	.string	"S_COLU"
.LASF216:
	.string	"S_PISTOL1"
.LASF217:
	.string	"S_PISTOL2"
.LASF218:
	.string	"S_PISTOL3"
.LASF219:
	.string	"S_PISTOL4"
.LASF555:
	.string	"S_SKEL_RAISE2"
.LASF556:
	.string	"S_SKEL_RAISE3"
.LASF557:
	.string	"S_SKEL_RAISE4"
.LASF558:
	.string	"S_SKEL_RAISE5"
.LASF559:
	.string	"S_SKEL_RAISE6"
.LASF1118:
	.string	"S_BIGTREE"
.LASF1465:
	.string	"ST_NEGATIVE"
.LASF1580:
	.string	"right"
.LASF1028:
	.string	"S_BON2C"
.LASF1029:
	.string	"S_BON2D"
.LASF334:
	.string	"S_TFOG01"
.LASF335:
	.string	"S_TFOG02"
.LASF153:
	.string	"SPR_LAUN"
.LASF390:
	.string	"S_POSS_PAIN"
.LASF725:
	.string	"S_BRBALL1"
.LASF726:
	.string	"S_BRBALL2"
.LASF1187:
	.string	"MT_SMOKE"
.LASF1201:
	.string	"MT_CYBORG"
.LASF1338:
	.string	"damage"
.LASF430:
	.string	"S_SPOS_XDIE1"
.LASF431:
	.string	"S_SPOS_XDIE2"
.LASF432:
	.string	"S_SPOS_XDIE3"
.LASF433:
	.string	"S_SPOS_XDIE4"
.LASF434:
	.string	"S_SPOS_XDIE5"
.LASF435:
	.string	"S_SPOS_XDIE6"
.LASF436:
	.string	"S_SPOS_XDIE7"
.LASF437:
	.string	"S_SPOS_XDIE8"
.LASF438:
	.string	"S_SPOS_XDIE9"
.LASF1515:
	.string	"framecount"
.LASF1357:
	.string	"mobj_s"
.LASF1416:
	.string	"mobj_t"
.LASF1031:
	.string	"S_BKEY"
.LASF40:
	.string	"pw_invisibility"
.LASF1536:
	.string	"R_DrawColumnLow"
.LASF1537:
	.string	"R_DrawSpan"
.LASF118:
	.string	"SPR_ARM1"
.LASF119:
	.string	"SPR_ARM2"
.LASF1183:
	.string	"MT_VILE"
.LASF1350:
	.string	"boolean"
.LASF17:
	.string	"it_blueskull"
.LASF1444:
	.string	"soundorg"
.LASF278:
	.string	"S_PLASMADOWN"
.LASF590:
	.string	"S_FATT_PAIN2"
.LASF988:
	.string	"S_BRAINEYESEE"
.LASF1466:
	.string	"slopetype_t"
.LASF525:
	.string	"S_SKEL_STND2"
.LASF878:
	.string	"S_CYBER_STND2"
.LASF1179:
	.string	"state_t"
.LASF722:
	.string	"S_HEAD_RAISE4"
.LASF948:
	.string	"S_SSWV_DIE2"
.LASF404:
	.string	"S_POSS_XDIE8"
.LASF1078:
	.string	"S_CELP"
.LASF1120:
	.string	"S_EVILEYE"
.LASF1146:
	.string	"S_GTORCHSHRT2"
.LASF1147:
	.string	"S_GTORCHSHRT3"
.LASF1148:
	.string	"S_GTORCHSHRT4"
.LASF1495:
	.string	"centery"
.LASF1387:
	.string	"viewheight"
.LASF1361:
	.string	"bnext"
.LASF579:
	.string	"S_FATT_ATK1"
.LASF112:
	.string	"SPR_CYBR"
.LASF580:
	.string	"S_FATT_ATK2"
.LASF483:
	.string	"S_VILE_DIE10"
.LASF73:
	.string	"SPR_MISF"
.LASF72:
	.string	"SPR_MISG"
.LASF85:
	.string	"SPR_MISL"
.LASF1037:
	.string	"S_BSKULL"
.LASF116:
	.string	"SPR_BBRN"
.LASF458:
	.string	"S_VILE_ATK1"
.LASF459:
	.string	"S_VILE_ATK2"
.LASF460:
	.string	"S_VILE_ATK3"
.LASF461:
	.string	"S_VILE_ATK4"
.LASF462:
	.string	"S_VILE_ATK5"
.LASF463:
	.string	"S_VILE_ATK6"
.LASF464:
	.string	"S_VILE_ATK7"
.LASF205:
	.string	"S_PUNCH"
.LASF466:
	.string	"S_VILE_ATK9"
.LASF187:
	.string	"SPR_SMBT"
.LASF761:
	.string	"S_BOS2_RUN1"
.LASF762:
	.string	"S_BOS2_RUN2"
.LASF763:
	.string	"S_BOS2_RUN3"
.LASF764:
	.string	"S_BOS2_RUN4"
.LASF765:
	.string	"S_BOS2_RUN5"
.LASF766:
	.string	"S_BOS2_RUN6"
.LASF767:
	.string	"S_BOS2_RUN7"
.LASF768:
	.string	"S_BOS2_RUN8"
.LASF1439:
	.string	"lightlevel"
.LASF178:
	.string	"SPR_TRE1"
.LASF179:
	.string	"SPR_TRE2"
.LASF835:
	.string	"S_BSPI_STND"
.LASF1329:
	.string	"meleestate"
.LASF1398:
	.string	"ammo"
.LASF625:
	.string	"S_CPOS_DIE1"
.LASF186:
	.string	"SPR_TRED"
.LASF79:
	.string	"SPR_BLUD"
.LASF581:
	.string	"S_FATT_ATK3"
.LASF582:
	.string	"S_FATT_ATK4"
.LASF583:
	.string	"S_FATT_ATK5"
.LASF584:
	.string	"S_FATT_ATK6"
.LASF585:
	.string	"S_FATT_ATK7"
.LASF586:
	.string	"S_FATT_ATK8"
.LASF587:
	.string	"S_FATT_ATK9"
.LASF89:
	.string	"SPR_TFOG"
.LASF293:
	.string	"S_BLOOD1"
.LASF294:
	.string	"S_BLOOD2"
.LASF295:
	.string	"S_BLOOD3"
.LASF1177:
	.string	"misc1"
.LASF1178:
	.string	"misc2"
.LASF1419:
	.string	"angleturn"
.LASF1085:
	.string	"S_LAUN"
.LASF1525:
	.string	"R_ClearSprites"
.LASF345:
	.string	"S_IFOG"
.LASF92:
	.string	"SPR_POSS"
.LASF97:
	.string	"SPR_FBXP"
.LASF894:
	.string	"S_CYBER_DIE1"
.LASF895:
	.string	"S_CYBER_DIE2"
.LASF896:
	.string	"S_CYBER_DIE3"
.LASF897:
	.string	"S_CYBER_DIE4"
.LASF898:
	.string	"S_CYBER_DIE5"
.LASF899:
	.string	"S_CYBER_DIE6"
.LASF900:
	.string	"S_CYBER_DIE7"
.LASF772:
	.string	"S_BOS2_PAIN"
.LASF902:
	.string	"S_CYBER_DIE9"
.LASF1378:
	.string	"spawnpoint"
.LASF1172:
	.string	"sprite"
.LASF1250:
	.string	"MT_MISC23"
.LASF1115:
	.string	"S_CANDELABRA"
.LASF455:
	.string	"S_VILE_RUN10"
.LASF456:
	.string	"S_VILE_RUN11"
.LASF457:
	.string	"S_VILE_RUN12"
.LASF1075:
	.string	"S_ROCK"
.LASF224:
	.string	"S_SGUN1"
.LASF225:
	.string	"S_SGUN2"
.LASF226:
	.string	"S_SGUN3"
.LASF227:
	.string	"S_SGUN4"
.LASF228:
	.string	"S_SGUN5"
.LASF229:
	.string	"S_SGUN6"
.LASF230:
	.string	"S_SGUN7"
.LASF231:
	.string	"S_SGUN8"
.LASF232:
	.string	"S_SGUN9"
.LASF1319:
	.string	"doomednum"
.LASF221:
	.string	"S_SGUN"
.LASF1111:
	.string	"S_SHRTGRNCOL"
.LASF1497:
	.string	"centeryfrac"
.LASF796:
	.string	"S_SKULL_PAIN"
.LASF1208:
	.string	"MT_SPAWNSHOT"
.LASF1534:
	.string	"R_InitBuffer"
.LASF520:
	.string	"S_TRACER2"
.LASF1119:
	.string	"S_TECHPILLAR"
.LASF524:
	.string	"S_SKEL_STND"
.LASF679:
	.string	"S_SARG_STND2"
.LASF425:
	.string	"S_SPOS_DIE1"
.LASF426:
	.string	"S_SPOS_DIE2"
.LASF427:
	.string	"S_SPOS_DIE3"
.LASF428:
	.string	"S_SPOS_DIE4"
.LASF429:
	.string	"S_SPOS_DIE5"
.LASF1426:
	.string	"PST_REBORN"
.LASF1154:
	.string	"S_HANGBNOBRAIN"
.LASF688:
	.string	"S_SARG_ATK1"
.LASF689:
	.string	"S_SARG_ATK2"
.LASF690:
	.string	"S_SARG_ATK3"
.LASF279:
	.string	"S_PLASMAUP"
.LASF1174:
	.string	"tics"
.LASF1035:
	.string	"S_YKEY"
.LASF1334:
	.string	"speed"
.LASF248:
	.string	"S_DSNR1"
.LASF917:
	.string	"S_PAIN_DIE1"
.LASF447:
	.string	"S_VILE_RUN2"
.LASF1165:
	.string	"S_TECHLAMP4"
.LASF611:
	.string	"S_CPOS_RUN1"
.LASF612:
	.string	"S_CPOS_RUN2"
.LASF613:
	.string	"S_CPOS_RUN3"
.LASF614:
	.string	"S_CPOS_RUN4"
.LASF53:
	.string	"actionf_p1"
.LASF54:
	.string	"actionf_p2"
.LASF149:
	.string	"SPR_BPAK"
.LASF618:
	.string	"S_CPOS_RUN8"
.LASF1015:
	.string	"S_BEXP5"
.LASF1355:
	.string	"mapthing_t"
.LASF380:
	.string	"S_POSS_RUN2"
.LASF381:
	.string	"S_POSS_RUN3"
.LASF382:
	.string	"S_POSS_RUN4"
.LASF699:
	.string	"S_SARG_RAISE1"
.LASF383:
	.string	"S_POSS_RUN5"
.LASF55:
	.string	"acp1"
.LASF56:
	.string	"acp2"
.LASF703:
	.string	"S_SARG_RAISE5"
.LASF704:
	.string	"S_SARG_RAISE6"
.LASF1283:
	.string	"MT_MISC53"
.LASF188:
	.string	"SPR_SMGT"
.LASF979:
	.string	"S_KEENPAIN"
.LASF327:
	.string	"S_BFGEXP2"
.LASF328:
	.string	"S_BFGEXP3"
.LASF329:
	.string	"S_BFGEXP4"
.LASF258:
	.string	"S_CHAINFLASH1"
.LASF259:
	.string	"S_CHAINFLASH2"
.LASF214:
	.string	"S_PISTOLDOWN"
.LASF1578:
	.string	"line"
.LASF879:
	.string	"S_CYBER_RUN1"
.LASF880:
	.string	"S_CYBER_RUN2"
.LASF881:
	.string	"S_CYBER_RUN3"
.LASF882:
	.string	"S_CYBER_RUN4"
.LASF883:
	.string	"S_CYBER_RUN5"
.LASF884:
	.string	"S_CYBER_RUN6"
.LASF885:
	.string	"S_CYBER_RUN7"
.LASF886:
	.string	"S_CYBER_RUN8"
.LASF1323:
	.string	"seesound"
.LASF1066:
	.string	"S_PMAP2"
.LASF1067:
	.string	"S_PMAP3"
.LASF1068:
	.string	"S_PMAP4"
.LASF1069:
	.string	"S_PMAP5"
.LASF1070:
	.string	"S_PMAP6"
.LASF1409:
	.string	"bonuscount"
.LASF797:
	.string	"S_SKULL_PAIN2"
.LASF1327:
	.string	"painchance"
.LASF623:
	.string	"S_CPOS_PAIN"
.LASF1436:
	.string	"ceilingheight"
.LASF102:
	.string	"SPR_SARG"
.LASF928:
	.string	"S_PAIN_RAISE6"
.LASF1446:
	.string	"specialdata"
.LASF1266:
	.string	"MT_MISC36"
.LASF732:
	.string	"S_BOSS_RUN1"
.LASF733:
	.string	"S_BOSS_RUN2"
.LASF734:
	.string	"S_BOSS_RUN3"
.LASF735:
	.string	"S_BOSS_RUN4"
.LASF736:
	.string	"S_BOSS_RUN5"
.LASF254:
	.string	"S_CHAINUP"
.LASF1582:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1404:
	.string	"killcount"
.LASF873:
	.string	"S_ARACH_PLEX2"
.LASF1117:
	.string	"S_TORCHTREE"
.LASF929:
	.string	"S_SSWV_STND"
.LASF875:
	.string	"S_ARACH_PLEX4"
.LASF1531:
	.string	"R_InitPlanes"
.LASF976:
	.string	"S_COMMKEEN10"
.LASF977:
	.string	"S_COMMKEEN11"
.LASF978:
	.string	"S_COMMKEEN12"
.LASF1532:
	.string	"R_InitData"
.LASF1553:
	.string	"level"
.LASF893:
	.string	"S_CYBER_PAIN"
.LASF412:
	.string	"S_SPOS_RUN1"
.LASF170:
	.string	"SPR_SMIT"
.LASF414:
	.string	"S_SPOS_RUN3"
.LASF415:
	.string	"S_SPOS_RUN4"
.LASF416:
	.string	"S_SPOS_RUN5"
.LASF107:
	.string	"SPR_SKUL"
.LASF418:
	.string	"S_SPOS_RUN7"
.LASF419:
	.string	"S_SPOS_RUN8"
.LASF1076:
	.string	"S_BROK"
.LASF1321:
	.string	"spawnhealth"
.LASF206:
	.string	"S_PUNCHDOWN"
.LASF872:
	.string	"S_ARACH_PLEX"
.LASF1133:
	.string	"S_GREENTORCH"
.LASF29:
	.string	"wp_supershotgun"
.LASF272:
	.string	"S_SAWDOWN"
.LASF1171:
	.string	"statenum_t"
.LASF1211:
	.string	"MT_TROOPSHOT"
.LASF1196:
	.string	"MT_BRUISERSHOT"
.LASF1423:
	.string	"ticcmd_t"
.LASF1316:
	.string	"MT_MISC86"
.LASF1343:
	.string	"ps_weapon"
.LASF1535:
	.string	"R_DrawSpanLow"
.LASF360:
	.string	"S_PLAY_PAIN2"
.LASF1475:
	.string	"lighttable_t"
.LASF1503:
	.string	"detailshift"
.LASF755:
	.string	"S_BOSS_RAISE4"
.LASF756:
	.string	"S_BOSS_RAISE5"
.LASF1173:
	.string	"frame"
.LASF99:
	.string	"SPR_MANF"
.LASF610:
	.string	"S_CPOS_STND2"
.LASF423:
	.string	"S_SPOS_PAIN"
.LASF23:
	.string	"wp_shotgun"
.LASF1510:
	.string	"screenheightarray"
.LASF1520:
	.string	"detailLevel"
.LASF391:
	.string	"S_POSS_PAIN2"
.LASF1217:
	.string	"MT_PUFF"
.LASF263:
	.string	"S_MISSILE1"
.LASF264:
	.string	"S_MISSILE2"
.LASF265:
	.string	"S_MISSILE3"
.LASF639:
	.string	"S_CPOS_RAISE2"
.LASF640:
	.string	"S_CPOS_RAISE3"
.LASF641:
	.string	"S_CPOS_RAISE4"
.LASF1414:
	.string	"psprites"
.LASF1083:
	.string	"S_MGUN"
.LASF1195:
	.string	"MT_BRUISER"
.LASF148:
	.string	"SPR_SBOX"
.LASF1406:
	.string	"secretcount"
.LASF1318:
	.string	"mobjtype_t"
.LASF1332:
	.string	"xdeathstate"
.LASF1391:
	.string	"powers"
.LASF792:
	.string	"S_SKULL_ATK1"
.LASF793:
	.string	"S_SKULL_ATK2"
.LASF794:
	.string	"S_SKULL_ATK3"
.LASF795:
	.string	"S_SKULL_ATK4"
.LASF773:
	.string	"S_BOS2_PAIN2"
.LASF7:
	.string	"short unsigned int"
.LASF1197:
	.string	"MT_KNIGHT"
.LASF9:
	.string	"signed char"
.LASF1418:
	.string	"sidemove"
.LASF1339:
	.string	"activesound"
.LASF424:
	.string	"S_SPOS_PAIN2"
.LASF588:
	.string	"S_FATT_ATK10"
.LASF185:
	.string	"SPR_TGRN"
.LASF1484:
	.string	"viewangle"
.LASF1430:
	.string	"BOXBOTTOM"
.LASF1242:
	.string	"MT_MEGA"
.LASF87:
	.string	"SPR_BFE1"
.LASF88:
	.string	"SPR_BFE2"
.LASF1445:
	.string	"thinglist"
.LASF1276:
	.string	"MT_MISC46"
.LASF1540:
	.string	"R_DrawColumn"
.LASF1204:
	.string	"MT_KEEN"
.LASF1443:
	.string	"blockbox"
.LASF989:
	.string	"S_BRAINEYE1"
.LASF1471:
	.string	"linedef"
.LASF645:
	.string	"S_TROO_STND"
.LASF592:
	.string	"S_FATT_DIE2"
.LASF283:
	.string	"S_PLASMAFLASH2"
.LASF45:
	.string	"weapontype_t"
.LASF1421:
	.string	"chatchar"
.LASF336:
	.string	"S_TFOG2"
.LASF337:
	.string	"S_TFOG3"
.LASF338:
	.string	"S_TFOG4"
.LASF339:
	.string	"S_TFOG5"
.LASF340:
	.string	"S_TFOG6"
.LASF341:
	.string	"S_TFOG7"
.LASF342:
	.string	"S_TFOG8"
.LASF343:
	.string	"S_TFOG9"
.LASF758:
	.string	"S_BOSS_RAISE7"
.LASF1400:
	.string	"attackdown"
.LASF63:
	.string	"SPR_TROO"
.LASF74:
	.string	"SPR_SAWG"
.LASF123:
	.string	"SPR_BON1"
.LASF124:
	.string	"SPR_BON2"
.LASF16:
	.string	"it_redcard"
.LASF1112:
	.string	"S_TALLREDCOL"
.LASF1509:
	.string	"distscale"
.LASF1346:
	.string	"state"
.LASF1087:
	.string	"S_SHOT"
.LASF943:
	.string	"S_SSWV_ATK5"
.LASF1092:
	.string	"S_BLOODYTWITCH2"
.LASF1093:
	.string	"S_BLOODYTWITCH3"
.LASF1094:
	.string	"S_BLOODYTWITCH4"
.LASF833:
	.string	"S_SPID_DIE10"
.LASF834:
	.string	"S_SPID_DIE11"
.LASF1392:
	.string	"cards"
.LASF1472:
	.string	"seg_t"
.LASF1431:
	.string	"BOXLEFT"
.LASF180:
	.string	"SPR_ELEC"
.LASF981:
	.string	"S_BRAIN"
.LASF1199:
	.string	"MT_SPIDER"
.LASF1064:
	.string	"S_SUIT"
.LASF78:
	.string	"SPR_BFGF"
.LASF77:
	.string	"SPR_BFGG"
.LASF904:
	.string	"S_PAIN_STND"
.LASF320:
	.string	"S_BFGLAND"
.LASF1010:
	.string	"S_BAR2"
.LASF1396:
	.string	"pendingweapon"
.LASF61:
	.string	"function"
.LASF1552:
	.string	"cosadj"
.LASF1521:
	.string	"screenblocks"
.LASF33:
	.string	"am_shell"
.LASF1369:
	.string	"validcount"
.LASF1407:
	.string	"message"
.LASF600:
	.string	"S_FATT_DIE10"
.LASF20:
	.string	"NUMCARDS"
.LASF1137:
	.string	"S_REDTORCH"
.LASF1215:
	.string	"MT_BFG"
.LASF384:
	.string	"S_POSS_RUN6"
.LASF94:
	.string	"SPR_VILE"
.LASF1218:
	.string	"MT_BLOOD"
.LASF213:
	.string	"S_PISTOL"
.LASF1349:
	.string	"true"
.LASF1478:
	.string	"scaledviewwidth"
.LASF445:
	.string	"S_VILE_STND2"
.LASF863:
	.string	"S_BSPI_RAISE1"
.LASF864:
	.string	"S_BSPI_RAISE2"
.LASF865:
	.string	"S_BSPI_RAISE3"
.LASF866:
	.string	"S_BSPI_RAISE4"
.LASF867:
	.string	"S_BSPI_RAISE5"
.LASF868:
	.string	"S_BSPI_RAISE6"
.LASF869:
	.string	"S_BSPI_RAISE7"
.LASF1366:
	.string	"momx"
.LASF1367:
	.string	"momy"
.LASF4:
	.string	"long int"
.LASF952:
	.string	"S_SSWV_XDIE1"
.LASF953:
	.string	"S_SSWV_XDIE2"
.LASF954:
	.string	"S_SSWV_XDIE3"
.LASF955:
	.string	"S_SSWV_XDIE4"
.LASF956:
	.string	"S_SSWV_XDIE5"
.LASF957:
	.string	"S_SSWV_XDIE6"
.LASF958:
	.string	"S_SSWV_XDIE7"
.LASF959:
	.string	"S_SSWV_XDIE8"
.LASF960:
	.string	"S_SSWV_XDIE9"
.LASF250:
	.string	"S_DSGUNFLASH1"
.LASF251:
	.string	"S_DSGUNFLASH2"
.LASF1249:
	.string	"MT_MISC22"
.LASF1415:
	.string	"didsecret"
.LASF508:
	.string	"S_FIRE25"
.LASF602:
	.string	"S_FATT_RAISE2"
.LASF1285:
	.string	"MT_MISC55"
.LASF1388:
	.string	"deltaviewheight"
.LASF18:
	.string	"it_yellowskull"
.LASF1040:
	.string	"S_RSKULL2"
.LASF1379:
	.string	"tracer"
.LASF1492:
	.string	"viewcos"
.LASF815:
	.string	"S_SPID_RUN10"
.LASF816:
	.string	"S_SPID_RUN11"
.LASF817:
	.string	"S_SPID_RUN12"
.LASF1547:
	.string	"rcsid"
.LASF1551:
	.string	"R_ExecuteSetViewSize"
.LASF1341:
	.string	"raisestate"
.LASF266:
	.string	"S_MISSILEFLASH1"
.LASF267:
	.string	"S_MISSILEFLASH2"
.LASF268:
	.string	"S_MISSILEFLASH3"
.LASF269:
	.string	"S_MISSILEFLASH4"
.LASF129:
	.string	"SPR_RSKU"
.LASF1543:
	.string	"SlopeDiv"
.LASF58:
	.string	"think_t"
.LASF1488:
	.string	"xtoviewangle"
.LASF626:
	.string	"S_CPOS_DIE2"
.LASF627:
	.string	"S_CPOS_DIE3"
.LASF628:
	.string	"S_CPOS_DIE4"
.LASF1460:
	.string	"midtexture"
.LASF629:
	.string	"S_CPOS_DIE5"
.LASF630:
	.string	"S_CPOS_DIE6"
.LASF631:
	.string	"S_CPOS_DIE7"
.LASF1504:
	.string	"colfunc"
.LASF1574:
	.string	"dist"
.LASF1485:
	.string	"viewplayer"
.LASF1072:
	.string	"S_PVIS2"
.LASF1210:
	.string	"MT_BARREL"
.LASF804:
	.string	"S_SPID_STND"
.LASF576:
	.string	"S_FATT_RUN10"
.LASF577:
	.string	"S_FATT_RUN11"
.LASF578:
	.string	"S_FATT_RUN12"
.LASF1202:
	.string	"MT_PAIN"
.LASF1130:
	.string	"S_BLUETORCH2"
.LASF1342:
	.string	"mobjinfo_t"
.LASF1131:
	.string	"S_BLUETORCH3"
.LASF1132:
	.string	"S_BLUETORCH4"
.LASF189:
	.string	"SPR_SMRT"
.LASF291:
	.string	"S_BFGFLASH1"
.LASF292:
	.string	"S_BFGFLASH2"
.LASF825:
	.string	"S_SPID_DIE2"
.LASF1482:
	.string	"viewx"
.LASF1483:
	.string	"viewy"
.LASF106:
	.string	"SPR_BOS2"
.LASF828:
	.string	"S_SPID_DIE5"
.LASF829:
	.string	"S_SPID_DIE6"
.LASF830:
	.string	"S_SPID_DIE7"
.LASF831:
	.string	"S_SPID_DIE8"
.LASF1121:
	.string	"S_EVILEYE2"
.LASF1122:
	.string	"S_EVILEYE3"
.LASF1123:
	.string	"S_EVILEYE4"
.LASF1581:
	.string	"R_PointOnSide"
.LASF296:
	.string	"S_PUFF1"
.LASF297:
	.string	"S_PUFF2"
.LASF298:
	.string	"S_PUFF3"
.LASF117:
	.string	"SPR_BOSF"
.LASF1448:
	.string	"lines"
.LASF105:
	.string	"SPR_BOSS"
.LASF1496:
	.string	"centerxfrac"
.LASF1214:
	.string	"MT_PLASMA"
.LASF850:
	.string	"S_BSPI_ATK1"
.LASF851:
	.string	"S_BSPI_ATK2"
.LASF852:
	.string	"S_BSPI_ATK3"
.LASF853:
	.string	"S_BSPI_ATK4"
.LASF1032:
	.string	"S_BKEY2"
.LASF30:
	.string	"NUMWEAPONS"
.LASF837:
	.string	"S_BSPI_SIGHT"
.LASF2:
	.string	"long unsigned int"
.LASF983:
	.string	"S_BRAIN_DIE1"
.LASF984:
	.string	"S_BRAIN_DIE2"
.LASF985:
	.string	"S_BRAIN_DIE3"
.LASF986:
	.string	"S_BRAIN_DIE4"
.LASF318:
	.string	"S_BFGSHOT"
.LASF1124:
	.string	"S_FLOATSKULL"
.LASF474:
	.string	"S_VILE_DIE1"
.LASF475:
	.string	"S_VILE_DIE2"
.LASF476:
	.string	"S_VILE_DIE3"
.LASF477:
	.string	"S_VILE_DIE4"
.LASF478:
	.string	"S_VILE_DIE5"
.LASF479:
	.string	"S_VILE_DIE6"
.LASF480:
	.string	"S_VILE_DIE7"
.LASF481:
	.string	"S_VILE_DIE8"
.LASF482:
	.string	"S_VILE_DIE9"
.LASF1408:
	.string	"damagecount"
.LASF158:
	.string	"SPR_SMT2"
.LASF1034:
	.string	"S_RKEY2"
.LASF1005:
	.string	"S_ARM1"
.LASF1007:
	.string	"S_ARM2"
.LASF1100:
	.string	"S_HEADCANDLES"
.LASF136:
	.string	"SPR_PINS"
.LASF730:
	.string	"S_BOSS_STND"
.LASF710:
	.string	"S_HEAD_PAIN"
.LASF15:
	.string	"it_yellowcard"
.LASF1186:
	.string	"MT_TRACER"
.LASF591:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF593:
	.string	"S_FATT_DIE3"
.LASF594:
	.string	"S_FATT_DIE4"
.LASF595:
	.string	"S_FATT_DIE5"
.LASF596:
	.string	"S_FATT_DIE6"
.LASF597:
	.string	"S_FATT_DIE7"
.LASF598:
	.string	"S_FATT_DIE8"
.LASF599:
	.string	"S_FATT_DIE9"
.LASF666:
	.string	"S_TROO_XDIE2"
.LASF667:
	.string	"S_TROO_XDIE3"
.LASF668:
	.string	"S_TROO_XDIE4"
.LASF669:
	.string	"S_TROO_XDIE5"
.LASF670:
	.string	"S_TROO_XDIE6"
.LASF671:
	.string	"S_TROO_XDIE7"
.LASF672:
	.string	"S_TROO_XDIE8"
.LASF141:
	.string	"SPR_CLIP"
.LASF1113:
	.string	"S_SHRTREDCOL"
.LASF1569:
	.string	"sinea"
.LASF1577:
	.string	"R_PointOnSegSide"
.LASF1156:
	.string	"S_HANGTSKULL"
.LASF1527:
	.string	"R_ClearDrawSegs"
.LASF44:
	.string	"NUMPOWERS"
.LASF941:
	.string	"S_SSWV_ATK3"
.LASF942:
	.string	"S_SSWV_ATK4"
.LASF247:
	.string	"S_DSGUN10"
.LASF39:
	.string	"pw_strength"
.LASF175:
	.string	"SPR_CAND"
.LASF1192:
	.string	"MT_SERGEANT"
.LASF694:
	.string	"S_SARG_DIE2"
.LASF1103:
	.string	"S_LIVESTICK"
.LASF1043:
	.string	"S_STIM"
.LASF34:
	.string	"am_cell"
.LASF14:
	.string	"it_bluecard"
.LASF1364:
	.string	"floorz"
.LASF706:
	.string	"S_HEAD_RUN1"
.LASF361:
	.string	"S_PLAY_DIE1"
.LASF362:
	.string	"S_PLAY_DIE2"
.LASF363:
	.string	"S_PLAY_DIE3"
.LASF364:
	.string	"S_PLAY_DIE4"
.LASF365:
	.string	"S_PLAY_DIE5"
.LASF366:
	.string	"S_PLAY_DIE6"
.LASF367:
	.string	"S_PLAY_DIE7"
.LASF377:
	.string	"S_POSS_STND"
.LASF333:
	.string	"S_TFOG"
.LASF1270:
	.string	"MT_MISC40"
.LASF1271:
	.string	"MT_MISC41"
.LASF1380:
	.string	"subsector_s"
.LASF693:
	.string	"S_SARG_DIE1"
.LASF51:
	.string	"tantoangle"
.LASF695:
	.string	"S_SARG_DIE3"
.LASF696:
	.string	"S_SARG_DIE4"
.LASF994:
	.string	"S_SPAWNFIRE1"
.LASF995:
	.string	"S_SPAWNFIRE2"
.LASF996:
	.string	"S_SPAWNFIRE3"
.LASF997:
	.string	"S_SPAWNFIRE4"
.LASF998:
	.string	"S_SPAWNFIRE5"
.LASF999:
	.string	"S_SPAWNFIRE6"
.LASF1000:
	.string	"S_SPAWNFIRE7"
.LASF1001:
	.string	"S_SPAWNFIRE8"
.LASF665:
	.string	"S_TROO_XDIE1"
.LASF1420:
	.string	"consistancy"
.LASF1381:
	.string	"sector"
.LASF1158:
	.string	"S_HANGTNOBRAIN"
.LASF1538:
	.string	"R_DrawTranslatedColumn"
.LASF313:
	.string	"S_PLASEXP2"
.LASF314:
	.string	"S_PLASEXP3"
.LASF315:
	.string	"S_PLASEXP4"
.LASF316:
	.string	"S_PLASEXP5"
.LASF27:
	.string	"wp_bfg"
.LASF1142:
	.string	"S_BTORCHSHRT2"
.LASF1143:
	.string	"S_BTORCHSHRT3"
.LASF1144:
	.string	"S_BTORCHSHRT4"
.LASF446:
	.string	"S_VILE_RUN1"
.LASF236:
	.string	"S_DSGUNDOWN"
.LASF448:
	.string	"S_VILE_RUN3"
.LASF449:
	.string	"S_VILE_RUN4"
.LASF450:
	.string	"S_VILE_RUN5"
.LASF451:
	.string	"S_VILE_RUN6"
.LASF452:
	.string	"S_VILE_RUN7"
.LASF453:
	.string	"S_VILE_RUN8"
.LASF454:
	.string	"S_VILE_RUN9"
.LASF697:
	.string	"S_SARG_DIE5"
.LASF698:
	.string	"S_SARG_DIE6"
.LASF1358:
	.string	"thinker"
.LASF538:
	.string	"S_SKEL_FIST1"
.LASF539:
	.string	"S_SKEL_FIST2"
.LASF540:
	.string	"S_SKEL_FIST3"
.LASF541:
	.string	"S_SKEL_FIST4"
.LASF277:
	.string	"S_PLASMA"
.LASF1056:
	.string	"S_PINS"
.LASF1129:
	.string	"S_BLUETORCH"
.LASF567:
	.string	"S_FATT_RUN1"
.LASF568:
	.string	"S_FATT_RUN2"
.LASF569:
	.string	"S_FATT_RUN3"
.LASF570:
	.string	"S_FATT_RUN4"
.LASF41:
	.string	"pw_ironfeet"
.LASF572:
	.string	"S_FATT_RUN6"
.LASF573:
	.string	"S_FATT_RUN7"
.LASF574:
	.string	"S_FATT_RUN8"
.LASF1105:
	.string	"S_MEAT2"
.LASF1106:
	.string	"S_MEAT3"
.LASF1107:
	.string	"S_MEAT4"
.LASF1108:
	.string	"S_MEAT5"
.LASF220:
	.string	"S_PISTOLFLASH"
.LASF1435:
	.string	"floorheight"
.LASF440:
	.string	"S_SPOS_RAISE2"
.LASF441:
	.string	"S_SPOS_RAISE3"
.LASF442:
	.string	"S_SPOS_RAISE4"
.LASF443:
	.string	"S_SPOS_RAISE5"
.LASF132:
	.string	"SPR_MEDI"
.LASF134:
	.string	"SPR_PINV"
.LASF982:
	.string	"S_BRAIN_PAIN"
.LASF253:
	.string	"S_CHAINDOWN"
.LASF1487:
	.string	"viewangletox"
.LASF1490:
	.string	"rw_normalangle"
.LASF472:
	.string	"S_VILE_PAIN"
.LASF519:
	.string	"S_TRACER"
.LASF1529:
	.string	"R_InitTranslationTables"
.LASF939:
	.string	"S_SSWV_ATK1"
.LASF940:
	.string	"S_SSWV_ATK2"
.LASF469:
	.string	"S_VILE_HEAL1"
.LASF470:
	.string	"S_VILE_HEAL2"
.LASF471:
	.string	"S_VILE_HEAL3"
.LASF944:
	.string	"S_SSWV_ATK6"
.LASF1373:
	.string	"movecount"
.LASF126:
	.string	"SPR_RKEY"
.LASF1090:
	.string	"S_STALAG"
.LASF1564:
	.string	"R_PointInSubsector"
.LASF805:
	.string	"S_SPID_STND2"
.LASF1508:
	.string	"yslope"
.LASF1473:
	.string	"children"
.LASF50:
	.string	"angle_t"
.LASF1438:
	.string	"ceilingpic"
.LASF1091:
	.string	"S_BLOODYTWITCH"
.LASF1160:
	.string	"S_SMALLPOOL"
.LASF1347:
	.string	"pspdef_t"
.LASF1286:
	.string	"MT_MISC56"
.LASF589:
	.string	"S_FATT_PAIN"
.LASF353:
	.string	"S_PLAY_RUN1"
.LASF354:
	.string	"S_PLAY_RUN2"
.LASF355:
	.string	"S_PLAY_RUN3"
.LASF356:
	.string	"S_PLAY_RUN4"
.LASF1081:
	.string	"S_BPAK"
.LASF13:
	.string	"double"
.LASF121:
	.string	"SPR_BEXP"
.LASF1384:
	.string	"player_s"
.LASF1038:
	.string	"S_BSKULL2"
.LASF80:
	.string	"SPR_PUFF"
.LASF967:
	.string	"S_COMMKEEN"
.LASF1401:
	.string	"usedown"
.LASF1486:
	.string	"clipangle"
.LASF759:
	.string	"S_BOS2_STND"
.LASF86:
	.string	"SPR_BFS1"
.LASF990:
	.string	"S_SPAWN1"
.LASF991:
	.string	"S_SPAWN2"
.LASF992:
	.string	"S_SPAWN3"
.LASF993:
	.string	"S_SPAWN4"
.LASF1163:
	.string	"S_TECHLAMP2"
.LASF1164:
	.string	"S_TECHLAMP3"
.LASF28:
	.string	"wp_chainsaw"
.LASF1200:
	.string	"MT_BABY"
.LASF1399:
	.string	"maxammo"
.LASF1104:
	.string	"S_LIVESTICK2"
.LASF1572:
	.string	"R_PointToDist"
.LASF1149:
	.string	"S_RTORCHSHRT"
.LASF1246:
	.string	"MT_MISC19"
.LASF108:
	.string	"SPR_SPID"
.LASF705:
	.string	"S_HEAD_STND"
.LASF1559:
	.string	"scale"
.LASF1524:
	.string	"NetUpdate"
.LASF680:
	.string	"S_SARG_RUN1"
.LASF681:
	.string	"S_SARG_RUN2"
.LASF683:
	.string	"S_SARG_RUN4"
.LASF684:
	.string	"S_SARG_RUN5"
.LASF685:
	.string	"S_SARG_RUN6"
.LASF686:
	.string	"S_SARG_RUN7"
.LASF687:
	.string	"S_SARG_RUN8"
.LASF1224:
	.string	"MT_MISC1"
.LASF1225:
	.string	"MT_MISC2"
.LASF1226:
	.string	"MT_MISC3"
.LASF1227:
	.string	"MT_MISC4"
.LASF1228:
	.string	"MT_MISC5"
.LASF1229:
	.string	"MT_MISC6"
.LASF1230:
	.string	"MT_MISC7"
.LASF1231:
	.string	"MT_MISC8"
.LASF1232:
	.string	"MT_MISC9"
.LASF270:
	.string	"S_SAW"
.LASF137:
	.string	"SPR_MEGA"
.LASF359:
	.string	"S_PLAY_PAIN"
.LASF311:
	.string	"S_PLASBALL2"
.LASF1344:
	.string	"ps_flash"
.LASF1385:
	.string	"playerstate"
.LASF115:
	.string	"SPR_KEEN"
.LASF945:
	.string	"S_SSWV_PAIN"
.LASF1326:
	.string	"painstate"
.LASF1539:
	.string	"R_DrawFuzzColumn"
.LASF980:
	.string	"S_KEENPAIN2"
.LASF43:
	.string	"pw_infrared"
.LASF467:
	.string	"S_VILE_ATK10"
.LASF468:
	.string	"S_VILE_ATK11"
.LASF946:
	.string	"S_SSWV_PAIN2"
.LASF1310:
	.string	"MT_MISC80"
.LASF1333:
	.string	"deathsound"
.LASF1020:
	.string	"S_BON1A"
.LASF1021:
	.string	"S_BON1B"
.LASF1022:
	.string	"S_BON1C"
.LASF1023:
	.string	"S_BON1D"
.LASF1024:
	.string	"S_BON1E"
.LASF1455:
	.string	"sector_t"
.LASF135:
	.string	"SPR_PSTR"
.LASF1579:
	.string	"left"
.LASF1248:
	.string	"MT_MISC21"
.LASF691:
	.string	"S_SARG_PAIN"
.LASF1243:
	.string	"MT_CLIP"
.LASF150:
	.string	"SPR_BFUG"
.LASF1298:
	.string	"MT_MISC68"
.LASF1016:
	.string	"S_BBAR1"
.LASF1017:
	.string	"S_BBAR2"
.LASF1018:
	.string	"S_BBAR3"
.LASF204:
	.string	"S_LIGHTDONE"
.LASF1499:
	.string	"loopcount"
.LASF855:
	.string	"S_BSPI_PAIN2"
.LASF1393:
	.string	"backpack"
.LASF655:
	.string	"S_TROO_ATK1"
.LASF656:
	.string	"S_TROO_ATK2"
.LASF657:
	.string	"S_TROO_ATK3"
.LASF799:
	.string	"S_SKULL_DIE2"
.LASF800:
	.string	"S_SKULL_DIE3"
.LASF801:
	.string	"S_SKULL_DIE4"
.LASF802:
	.string	"S_SKULL_DIE5"
.LASF803:
	.string	"S_SKULL_DIE6"
.LASF154:
	.string	"SPR_PLAS"
.LASF1026:
	.string	"S_BON2A"
.LASF1027:
	.string	"S_BON2B"
.LASF67:
	.string	"SPR_PISF"
.LASF66:
	.string	"SPR_PISG"
.LASF1030:
	.string	"S_BON2E"
.LASF1253:
	.string	"MT_CHAINGUN"
.LASF302:
	.string	"S_TBALLX1"
.LASF303:
	.string	"S_TBALLX2"
.LASF304:
	.string	"S_TBALLX3"
.LASF31:
	.string	"wp_nochange"
.LASF1476:
	.string	"colormaps"
.LASF1190:
	.string	"MT_CHAINGUY"
.LASF1498:
	.string	"projection"
.LASF1434:
	.string	"degenmobj_t"
.LASF1417:
	.string	"forwardmove"
.LASF798:
	.string	"S_SKULL_DIE1"
.LASF1425:
	.string	"PST_DEAD"
.LASF1161:
	.string	"S_BRAINSTEM"
.LASF966:
	.string	"S_KEENSTND"
.LASF91:
	.string	"SPR_PLAY"
.LASF1395:
	.string	"readyweapon"
.LASF1557:
	.string	"detail"
.LASF11:
	.string	"long long unsigned int"
.LASF1469:
	.string	"offset"
.LASF1101:
	.string	"S_HEADCANDLES2"
.LASF1220:
	.string	"MT_IFOG"
.LASF1491:
	.string	"sscount"
.LASF1554:
	.string	"startmap"
.LASF1506:
	.string	"fuzzcolfunc"
.LASF182:
	.string	"SPR_FSKU"
.LASF417:
	.string	"S_SPOS_RUN6"
.LASF273:
	.string	"S_SAWUP"
.LASF1006:
	.string	"S_ARM1A"
.LASF609:
	.string	"S_CPOS_STND"
.LASF1368:
	.string	"momz"
.LASF1080:
	.string	"S_SBOX"
.LASF1441:
	.string	"soundtraversed"
.LASF1264:
	.string	"MT_MISC34"
.LASF1468:
	.string	"subsector_t"
.LASF1451:
	.string	"bbox"
.LASF312:
	.string	"S_PLASEXP"
.LASF1267:
	.string	"MT_MISC37"
.LASF1096:
	.string	"S_DEADBOTTOM"
.LASF1153:
	.string	"S_HANGNOGUTS"
.LASF1325:
	.string	"attacksound"
.LASF1057:
	.string	"S_PINS2"
.LASF1058:
	.string	"S_PINS3"
.LASF1059:
	.string	"S_PINS4"
.LASF911:
	.string	"S_PAIN_ATK1"
.LASF912:
	.string	"S_PAIN_ATK2"
.LASF913:
	.string	"S_PAIN_ATK3"
.LASF914:
	.string	"S_PAIN_ATK4"
.LASF223:
	.string	"S_SGUNUP"
.LASF1453:
	.string	"frontsector"
.LASF176:
	.string	"SPR_CBRA"
.LASF1331:
	.string	"deathstate"
.LASF1008:
	.string	"S_ARM2A"
.LASF877:
	.string	"S_CYBER_STND"
.LASF1036:
	.string	"S_YKEY2"
.LASF486:
	.string	"S_FIRE3"
.LASF1324:
	.string	"reactiontime"
.LASF491:
	.string	"S_FIRE8"
.LASF731:
	.string	"S_BOSS_STND2"
.LASF1550:
	.string	"nodenum"
.LASF1566:
	.string	"visangle"
.LASF1360:
	.string	"sprev"
.LASF274:
	.string	"S_SAW1"
.LASF275:
	.string	"S_SAW2"
.LASF276:
	.string	"S_SAW3"
.LASF1019:
	.string	"S_BON1"
.LASF1025:
	.string	"S_BON2"
.LASF1376:
	.string	"player"
.LASF271:
	.string	"S_SAWB"
.LASF659:
	.string	"S_TROO_PAIN2"
.LASF1523:
	.string	"R_DrawPlanes"
.LASF1206:
	.string	"MT_BOSSSPIT"
.LASF1533:
	.string	"R_RenderBSPNode"
.LASF484:
	.string	"S_FIRE1"
.LASF485:
	.string	"S_FIRE2"
.LASF46:
	.string	"fixed_t"
.LASF487:
	.string	"S_FIRE4"
.LASF488:
	.string	"S_FIRE5"
.LASF489:
	.string	"S_FIRE6"
.LASF490:
	.string	"S_FIRE7"
.LASF144:
	.string	"SPR_BROK"
.LASF492:
	.string	"S_FIRE9"
.LASF1274:
	.string	"MT_MISC44"
.LASF1275:
	.string	"MT_MISC45"
.LASF1077:
	.string	"S_CELL"
.LASF1277:
	.string	"MT_MISC47"
.LASF142:
	.string	"SPR_AMMO"
.LASF1278:
	.string	"MT_MISC48"
.LASF1279:
	.string	"MT_MISC49"
.LASF790:
	.string	"S_SKULL_RUN1"
.LASF791:
	.string	"S_SKULL_RUN2"
.LASF1157:
	.string	"S_HANGTLOOKUP"
.LASF252:
	.string	"S_CHAIN"
.LASF282:
	.string	"S_PLASMAFLASH1"
.LASF238:
	.string	"S_DSGUN1"
.LASF239:
	.string	"S_DSGUN2"
.LASF133:
	.string	"SPR_SOUL"
.LASF93:
	.string	"SPR_SPOS"
.LASF242:
	.string	"S_DSGUN5"
.LASF243:
	.string	"S_DSGUN6"
.LASF244:
	.string	"S_DSGUN7"
.LASF245:
	.string	"S_DSGUN8"
.LASF246:
	.string	"S_DSGUN9"
.LASF410:
	.string	"S_SPOS_STND"
.LASF1530:
	.string	"R_InitSkyMap"
.LASF113:
	.string	"SPR_PAIN"
.LASF638:
	.string	"S_CPOS_RAISE1"
.LASF1394:
	.string	"frags"
.LASF1389:
	.string	"armorpoints"
.LASF1422:
	.string	"buttons"
.LASF287:
	.string	"S_BFG1"
.LASF288:
	.string	"S_BFG2"
.LASF289:
	.string	"S_BFG3"
.LASF290:
	.string	"S_BFG4"
.LASF1479:
	.string	"subsectors"
.LASF202:
	.string	"spritenum_t"
.LASF249:
	.string	"S_DSNR2"
.LASF789:
	.string	"S_SKULL_STND2"
.LASF1052:
	.string	"S_PINV2"
.LASF1053:
	.string	"S_PINV3"
.LASF682:
	.string	"S_SARG_RUN3"
.LASF1167:
	.string	"S_TECH2LAMP2"
.LASF1168:
	.string	"S_TECH2LAMP3"
.LASF1169:
	.string	"S_TECH2LAMP4"
.LASF48:
	.string	"finecosine"
.LASF1449:
	.string	"line_s"
.LASF5:
	.string	"long long int"
.LASF65:
	.string	"SPR_PUNG"
.LASF633:
	.string	"S_CPOS_XDIE2"
.LASF634:
	.string	"S_CPOS_XDIE3"
.LASF635:
	.string	"S_CPOS_XDIE4"
.LASF636:
	.string	"S_CPOS_XDIE5"
.LASF637:
	.string	"S_CPOS_XDIE6"
.LASF1494:
	.string	"centerx"
.LASF818:
	.string	"S_SPID_ATK1"
.LASF819:
	.string	"S_SPID_ATK2"
.LASF820:
	.string	"S_SPID_ATK3"
.LASF821:
	.string	"S_SPID_ATK4"
.LASF542:
	.string	"S_SKEL_MISS1"
.LASF543:
	.string	"S_SKEL_MISS2"
.LASF544:
	.string	"S_SKEL_MISS3"
.LASF545:
	.string	"S_SKEL_MISS4"
.LASF299:
	.string	"S_PUFF4"
.LASF1039:
	.string	"S_RSKULL"
.LASF871:
	.string	"S_ARACH_PLAZ2"
.LASF1280:
	.string	"MT_MISC50"
.LASF719:
	.string	"S_HEAD_RAISE1"
.LASF1315:
	.string	"MT_MISC85"
.LASF720:
	.string	"S_HEAD_RAISE2"
.LASF721:
	.string	"S_HEAD_RAISE3"
.LASF1402:
	.string	"cheats"
.LASF128:
	.string	"SPR_BSKU"
.LASF723:
	.string	"S_HEAD_RAISE5"
.LASF724:
	.string	"S_HEAD_RAISE6"
.LASF1470:
	.string	"sidedef"
.LASF1258:
	.string	"MT_SUPERSHOTGUN"
.LASF139:
	.string	"SPR_PMAP"
.LASF987:
	.string	"S_BRAINEYE"
.LASF140:
	.string	"SPR_PVIS"
.LASF1424:
	.string	"PST_LIVE"
.LASF1575:
	.string	"R_PointToAngle2"
.LASF1216:
	.string	"MT_ARACHPLAZ"
.LASF465:
	.string	"S_VILE_ATK8"
.LASF406:
	.string	"S_POSS_RAISE1"
.LASF407:
	.string	"S_POSS_RAISE2"
.LASF408:
	.string	"S_POSS_RAISE3"
.LASF409:
	.string	"S_POSS_RAISE4"
.LASF261:
	.string	"S_MISSILEDOWN"
.LASF1125:
	.string	"S_FLOATSKULL2"
.LASF1126:
	.string	"S_FLOATSKULL3"
.LASF1060:
	.string	"S_MEGA"
.LASF740:
	.string	"S_BOSS_ATK1"
.LASF741:
	.string	"S_BOSS_ATK2"
.LASF742:
	.string	"S_BOSS_ATK3"
.LASF1363:
	.string	"subsector"
.LASF198:
	.string	"SPR_BRS1"
.LASF1433:
	.string	"vertex_t"
.LASF547:
	.string	"S_SKEL_PAIN2"
.LASF1084:
	.string	"S_CSAW"
.LASF38:
	.string	"pw_invulnerability"
.LASF1517:
	.string	"setsizeneeded"
.LASF727:
	.string	"S_BRBALLX1"
.LASF728:
	.string	"S_BRBALLX2"
.LASF729:
	.string	"S_BRBALLX3"
.LASF857:
	.string	"S_BSPI_DIE2"
.LASF858:
	.string	"S_BSPI_DIE3"
.LASF859:
	.string	"S_BSPI_DIE4"
.LASF860:
	.string	"S_BSPI_DIE5"
.LASF24:
	.string	"wp_chaingun"
.LASF862:
	.string	"S_BSPI_DIE7"
.LASF413:
	.string	"S_SPOS_RUN2"
.LASF1454:
	.string	"backsector"
.LASF1175:
	.string	"action"
.LASF916:
	.string	"S_PAIN_PAIN2"
.LASF551:
	.string	"S_SKEL_DIE4"
.LASF147:
	.string	"SPR_SHEL"
.LASF1299:
	.string	"MT_MISC69"
.LASF1390:
	.string	"armortype"
.LASF1348:
	.string	"false"
.LASF199:
	.string	"SPR_TLMP"
.LASF1519:
	.string	"setdetail"
.LASF1522:
	.string	"R_DrawMasked"
.LASF378:
	.string	"S_POSS_STND2"
.LASF1257:
	.string	"MT_SHOTGUN"
.LASF49:
	.string	"finetangent"
.LASF1182:
	.string	"MT_SHOTGUY"
.LASF1405:
	.string	"itemcount"
.LASF1162:
	.string	"S_TECHLAMP"
.LASF1203:
	.string	"MT_WOLFSS"
.LASF760:
	.string	"S_BOS2_STND2"
.LASF1442:
	.string	"soundtarget"
.LASF255:
	.string	"S_CHAIN1"
.LASF256:
	.string	"S_CHAIN2"
.LASF257:
	.string	"S_CHAIN3"
.LASF308:
	.string	"S_RBALLX2"
.LASF309:
	.string	"S_RBALLX3"
.LASF1562:
	.string	"R_Init"
.LASF184:
	.string	"SPR_TBLU"
.LASF411:
	.string	"S_SPOS_STND2"
.LASF8:
	.string	"unsigned int"
.LASF1507:
	.string	"spanfunc"
.LASF1359:
	.string	"snext"
.LASF1542:
	.string	"FixedDiv"
.LASF37:
	.string	"am_noammo"
.LASF1356:
	.string	"thinker_s"
.LASF62:
	.string	"thinker_t"
.LASF1560:
	.string	"R_InitTextureMapping"
.LASF387:
	.string	"S_POSS_ATK1"
.LASF388:
	.string	"S_POSS_ATK2"
.LASF389:
	.string	"S_POSS_ATK3"
.LASF1528:
	.string	"R_ClearClipSegs"
.LASF1549:
	.string	"side"
.LASF1301:
	.string	"MT_MISC71"
.LASF1150:
	.string	"S_RTORCHSHRT2"
.LASF1151:
	.string	"S_RTORCHSHRT3"
.LASF1152:
	.string	"S_RTORCHSHRT4"
.LASF1054:
	.string	"S_PINV4"
.LASF10:
	.string	"short int"
.LASF1307:
	.string	"MT_MISC77"
.LASF1308:
	.string	"MT_MISC78"
.LASF1309:
	.string	"MT_MISC79"
.LASF1198:
	.string	"MT_SKULL"
.LASF1185:
	.string	"MT_UNDEAD"
.LASF59:
	.string	"prev"
.LASF548:
	.string	"S_SKEL_DIE1"
.LASF549:
	.string	"S_SKEL_DIE2"
.LASF550:
	.string	"S_SKEL_DIE3"
.LASF95:
	.string	"SPR_FIRE"
.LASF552:
	.string	"S_SKEL_DIE5"
.LASF553:
	.string	"S_SKEL_DIE6"
.LASF1518:
	.string	"setblocks"
.LASF1159:
	.string	"S_COLONGIBS"
.LASF200:
	.string	"SPR_TLP2"
.LASF310:
	.string	"S_PLASBALL"
.LASF156:
	.string	"SPR_SGN2"
.LASF1354:
	.string	"options"
.LASF109:
	.string	"SPR_BSPI"
.LASF111:
	.string	"SPR_APBX"
.LASF1413:
	.string	"colormap"
.LASF1555:
	.string	"R_SetViewSize"
.LASF1233:
	.string	"MT_MISC10"
.LASF1234:
	.string	"MT_MISC11"
.LASF1235:
	.string	"MT_MISC12"
.LASF1237:
	.string	"MT_MISC13"
.LASF1239:
	.string	"MT_MISC14"
.LASF1240:
	.string	"MT_MISC15"
.LASF1241:
	.string	"MT_MISC16"
.LASF1244:
	.string	"MT_MISC17"
.LASF1245:
	.string	"MT_MISC18"
.LASF1073:
	.string	"S_CLIP"
.LASF1335:
	.string	"radius"
.LASF1371:
	.string	"health"
.LASF1207:
	.string	"MT_BOSSTARGET"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"r_main.c"
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
