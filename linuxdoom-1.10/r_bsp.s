	.file	"r_bsp.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "r_bsp.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 48
rcsid:
	.string	"$Id: r_bsp.c,v 1.4 1997/02/03 22:45:12 b1 Exp $"
	.globl	curline
	.bss
	.align 8
	.type	curline, @object
	.size	curline, 8
curline:
	.zero	8
	.globl	sidedef
	.align 8
	.type	sidedef, @object
	.size	sidedef, 8
sidedef:
	.zero	8
	.globl	linedef
	.align 8
	.type	linedef, @object
	.size	linedef, 8
linedef:
	.zero	8
	.globl	frontsector
	.align 8
	.type	frontsector, @object
	.size	frontsector, 8
frontsector:
	.zero	8
	.globl	backsector
	.align 8
	.type	backsector, @object
	.size	backsector, 8
backsector:
	.zero	8
	.globl	drawsegs
	.align 32
	.type	drawsegs, @object
	.size	drawsegs, 16384
drawsegs:
	.zero	16384
	.globl	ds_p
	.align 8
	.type	ds_p, @object
	.size	ds_p, 8
ds_p:
	.zero	8
	.text
	.globl	R_ClearDrawSegs
	.type	R_ClearDrawSegs, @function
R_ClearDrawSegs:
.LFB0:
	.file 1 "r_bsp.c"
	.loc 1 69 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# r_bsp.c:70:     ds_p = drawsegs;
	.loc 1 70 10
	leaq	drawsegs(%rip), %rax	#, tmp82
	movq	%rax, ds_p(%rip)	# tmp82, ds_p
# r_bsp.c:71: }
	.loc 1 71 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	R_ClearDrawSegs, .-R_ClearDrawSegs
	.globl	newend
	.bss
	.align 8
	.type	newend, @object
	.size	newend, 8
newend:
	.zero	8
	.globl	solidsegs
	.align 32
	.type	solidsegs, @object
	.size	solidsegs, 256
solidsegs:
	.zero	256
	.text
	.globl	R_ClipSolidWallSegment
	.type	R_ClipSolidWallSegment, @function
R_ClipSolidWallSegment:
.LFB1:
	.loc 1 107 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# first, first
	movl	%esi, -24(%rbp)	# last, last
# r_bsp.c:113:     start = solidsegs;
	.loc 1 113 11
	leaq	solidsegs(%rip), %rax	#, tmp107
	movq	%rax, -8(%rbp)	# tmp107, start
# r_bsp.c:114:     while (start->last < first-1)
	.loc 1 114 11
	jmp	.L3	#
.L4:
# r_bsp.c:115: 	start++;
	.loc 1 115 7
	addq	$8, -8(%rbp)	#, start
.L3:
# r_bsp.c:114:     while (start->last < first-1)
	.loc 1 114 17
	movq	-8(%rbp), %rax	# start, tmp108
	movl	4(%rax), %edx	# start_30->last, _1
# r_bsp.c:114:     while (start->last < first-1)
	.loc 1 114 31
	movl	-20(%rbp), %eax	# first, tmp109
	subl	$1, %eax	#, _2
# r_bsp.c:114:     while (start->last < first-1)
	.loc 1 114 24
	cmpl	%eax, %edx	# _2, _1
	jl	.L4	#,
# r_bsp.c:117:     if (first < start->first)
	.loc 1 117 22
	movq	-8(%rbp), %rax	# start, tmp110
	movl	(%rax), %eax	# start_30->first, _3
# r_bsp.c:117:     if (first < start->first)
	.loc 1 117 8
	cmpl	%eax, -20(%rbp)	# _3, first
	jge	.L5	#,
# r_bsp.c:119: 	if (last < start->first-1)
	.loc 1 119 18
	movq	-8(%rbp), %rax	# start, tmp111
	movl	(%rax), %eax	# start_30->first, _4
# r_bsp.c:119: 	if (last < start->first-1)
	.loc 1 119 25
	subl	$1, %eax	#, _5
# r_bsp.c:119: 	if (last < start->first-1)
	.loc 1 119 5
	cmpl	%eax, -24(%rbp)	# _5, last
	jge	.L6	#,
# r_bsp.c:123: 	    R_StoreWallRange (first, last);
	.loc 1 123 6
	movl	-24(%rbp), %edx	# last, tmp112
	movl	-20(%rbp), %eax	# first, tmp113
	movl	%edx, %esi	# tmp112,
	movl	%eax, %edi	# tmp113,
	call	R_StoreWallRange@PLT	#
# r_bsp.c:124: 	    next = newend;
	.loc 1 124 11
	movq	newend(%rip), %rax	# newend, tmp114
	movq	%rax, -16(%rbp)	# tmp114, next
# r_bsp.c:125: 	    newend++;
	.loc 1 125 12
	movq	newend(%rip), %rax	# newend, newend.0_6
	addq	$8, %rax	#, _7
	movq	%rax, newend(%rip)	# _7, newend
# r_bsp.c:127: 	    while (next != start)
	.loc 1 127 12
	jmp	.L7	#
.L8:
# r_bsp.c:129: 		*next = *(next-1);
	.loc 1 129 9
	movq	-16(%rbp), %rax	# next, tmp115
	movq	-16(%rbp), %rdx	# next, tmp116
	movq	-8(%rdx), %rdx	# MEM[(struct cliprange_t *)next_26 + -8B], tmp117
	movq	%rdx, (%rax)	# tmp117, *next_26
# r_bsp.c:130: 		next--;
	.loc 1 130 7
	subq	$8, -16(%rbp)	#, next
.L7:
# r_bsp.c:127: 	    while (next != start)
	.loc 1 127 18
	movq	-16(%rbp), %rax	# next, tmp118
	cmpq	-8(%rbp), %rax	# start, tmp118
	jne	.L8	#,
# r_bsp.c:132: 	    next->first = first;
	.loc 1 132 18
	movq	-16(%rbp), %rax	# next, tmp119
	movl	-20(%rbp), %edx	# first, tmp120
	movl	%edx, (%rax)	# tmp120, next_26->first
# r_bsp.c:133: 	    next->last = last;
	.loc 1 133 17
	movq	-16(%rbp), %rax	# next, tmp121
	movl	-24(%rbp), %edx	# last, tmp122
	movl	%edx, 4(%rax)	# tmp122, next_26->last
# r_bsp.c:134: 	    return;
	.loc 1 134 6
	jmp	.L2	#
.L6:
# r_bsp.c:138: 	R_StoreWallRange (first, start->first - 1);
	.loc 1 138 32
	movq	-8(%rbp), %rax	# start, tmp123
	movl	(%rax), %eax	# start_30->first, _8
# r_bsp.c:138: 	R_StoreWallRange (first, start->first - 1);
	.loc 1 138 2
	leal	-1(%rax), %edx	#, _9
	movl	-20(%rbp), %eax	# first, tmp124
	movl	%edx, %esi	# _9,
	movl	%eax, %edi	# tmp124,
	call	R_StoreWallRange@PLT	#
# r_bsp.c:140: 	start->first = first;	
	.loc 1 140 15
	movq	-8(%rbp), %rax	# start, tmp125
	movl	-20(%rbp), %edx	# first, tmp126
	movl	%edx, (%rax)	# tmp126, start_30->first
.L5:
# r_bsp.c:144:     if (last <= start->last)
	.loc 1 144 22
	movq	-8(%rbp), %rax	# start, tmp127
	movl	4(%rax), %eax	# start_30->last, _10
# r_bsp.c:144:     if (last <= start->last)
	.loc 1 144 8
	cmpl	%eax, -24(%rbp)	# _10, last
	jle	.L17	#,
# r_bsp.c:147:     next = start;
	.loc 1 147 10
	movq	-8(%rbp), %rax	# start, tmp128
	movq	%rax, -16(%rbp)	# tmp128, next
# r_bsp.c:148:     while (last >= (next+1)->first-1)
	.loc 1 148 11
	jmp	.L11	#
.L13:
# r_bsp.c:151: 	R_StoreWallRange (next->last + 1, (next+1)->first - 1);
	.loc 1 151 41
	movq	-16(%rbp), %rax	# next, tmp129
	addq	$8, %rax	#, _11
# r_bsp.c:151: 	R_StoreWallRange (next->last + 1, (next+1)->first - 1);
	.loc 1 151 44
	movl	(%rax), %eax	# _11->first, _12
# r_bsp.c:151: 	R_StoreWallRange (next->last + 1, (next+1)->first - 1);
	.loc 1 151 2
	leal	-1(%rax), %edx	#, _13
# r_bsp.c:151: 	R_StoreWallRange (next->last + 1, (next+1)->first - 1);
	.loc 1 151 24
	movq	-16(%rbp), %rax	# next, tmp130
	movl	4(%rax), %eax	# next_27->last, _14
# r_bsp.c:151: 	R_StoreWallRange (next->last + 1, (next+1)->first - 1);
	.loc 1 151 2
	addl	$1, %eax	#, _15
	movl	%edx, %esi	# _13,
	movl	%eax, %edi	# _15,
	call	R_StoreWallRange@PLT	#
# r_bsp.c:152: 	next++;
	.loc 1 152 6
	addq	$8, -16(%rbp)	#, next
# r_bsp.c:154: 	if (last <= next->last)
	.loc 1 154 18
	movq	-16(%rbp), %rax	# next, tmp131
	movl	4(%rax), %eax	# next_55->last, _16
# r_bsp.c:154: 	if (last <= next->last)
	.loc 1 154 5
	cmpl	%eax, -24(%rbp)	# _16, last
	jg	.L11	#,
# r_bsp.c:158: 	    start->last = next->last;	
	.loc 1 158 24
	movq	-16(%rbp), %rax	# next, tmp132
	movl	4(%rax), %edx	# next_55->last, _17
# r_bsp.c:158: 	    start->last = next->last;	
	.loc 1 158 18
	movq	-8(%rbp), %rax	# start, tmp133
	movl	%edx, 4(%rax)	# _17, start_30->last
# r_bsp.c:159: 	    goto crunch;
	.loc 1 159 6
	jmp	.L12	#
.L11:
# r_bsp.c:148:     while (last >= (next+1)->first-1)
	.loc 1 148 25
	movq	-16(%rbp), %rax	# next, tmp134
	addq	$8, %rax	#, _18
# r_bsp.c:148:     while (last >= (next+1)->first-1)
	.loc 1 148 28
	movl	(%rax), %eax	# _18->first, _19
# r_bsp.c:148:     while (last >= (next+1)->first-1)
	.loc 1 148 35
	subl	$1, %eax	#, _20
# r_bsp.c:148:     while (last >= (next+1)->first-1)
	.loc 1 148 17
	cmpl	%eax, -24(%rbp)	# _20, last
	jge	.L13	#,
# r_bsp.c:164:     R_StoreWallRange (next->last + 1, last);
	.loc 1 164 27
	movq	-16(%rbp), %rax	# next, tmp135
	movl	4(%rax), %eax	# next_27->last, _21
# r_bsp.c:164:     R_StoreWallRange (next->last + 1, last);
	.loc 1 164 5
	leal	1(%rax), %edx	#, _22
	movl	-24(%rbp), %eax	# last, tmp136
	movl	%eax, %esi	# tmp136,
	movl	%edx, %edi	# _22,
	call	R_StoreWallRange@PLT	#
# r_bsp.c:166:     start->last = last;
	.loc 1 166 17
	movq	-8(%rbp), %rax	# start, tmp137
	movl	-24(%rbp), %edx	# last, tmp138
	movl	%edx, 4(%rax)	# tmp138, start_30->last
.L12:
# r_bsp.c:171:     if (next == start)
	.loc 1 171 8
	movq	-16(%rbp), %rax	# next, tmp139
	cmpq	-8(%rbp), %rax	# start, tmp139
	je	.L18	#,
# r_bsp.c:178:     while (next++ != newend)
	.loc 1 178 11
	jmp	.L15	#
.L16:
# r_bsp.c:181: 	*++start = *next;
	.loc 1 181 11
	addq	$8, -8(%rbp)	#, start
	movq	-8(%rbp), %rax	# start, tmp140
	movq	-16(%rbp), %rdx	# next, tmp141
	movq	(%rdx), %rdx	# *next_57, tmp142
	movq	%rdx, (%rax)	# tmp142, *start_59
.L15:
# r_bsp.c:178:     while (next++ != newend)
	.loc 1 178 16
	movq	-16(%rbp), %rax	# next, next.1_23
	leaq	8(%rax), %rdx	#, tmp143
	movq	%rdx, -16(%rbp)	# tmp143, next
# r_bsp.c:178:     while (next++ != newend)
	.loc 1 178 19
	movq	newend(%rip), %rdx	# newend, newend.2_24
	cmpq	%rdx, %rax	# newend.2_24, next.1_23
	jne	.L16	#,
# r_bsp.c:184:     newend = start+1;
	.loc 1 184 19
	movq	-8(%rbp), %rax	# start, tmp144
	addq	$8, %rax	#, _25
# r_bsp.c:184:     newend = start+1;
	.loc 1 184 12
	movq	%rax, newend(%rip)	# _25, newend
	jmp	.L2	#
.L17:
# r_bsp.c:145: 	return;			
	.loc 1 145 2
	nop	
	jmp	.L2	#
.L18:
# r_bsp.c:174: 	return;
	.loc 1 174 2
	nop	
.L2:
# r_bsp.c:185: }
	.loc 1 185 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	R_ClipSolidWallSegment, .-R_ClipSolidWallSegment
	.globl	R_ClipPassWallSegment
	.type	R_ClipPassWallSegment, @function
R_ClipPassWallSegment:
.LFB2:
	.loc 1 200 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# first, first
	movl	%esi, -24(%rbp)	# last, last
# r_bsp.c:205:     start = solidsegs;
	.loc 1 205 11
	leaq	solidsegs(%rip), %rax	#, tmp101
	movq	%rax, -8(%rbp)	# tmp101, start
# r_bsp.c:206:     while (start->last < first-1)
	.loc 1 206 11
	jmp	.L20	#
.L21:
# r_bsp.c:207: 	start++;
	.loc 1 207 7
	addq	$8, -8(%rbp)	#, start
.L20:
# r_bsp.c:206:     while (start->last < first-1)
	.loc 1 206 17
	movq	-8(%rbp), %rax	# start, tmp102
	movl	4(%rax), %edx	# start_20->last, _1
# r_bsp.c:206:     while (start->last < first-1)
	.loc 1 206 31
	movl	-20(%rbp), %eax	# first, tmp103
	subl	$1, %eax	#, _2
# r_bsp.c:206:     while (start->last < first-1)
	.loc 1 206 24
	cmpl	%eax, %edx	# _2, _1
	jl	.L21	#,
# r_bsp.c:209:     if (first < start->first)
	.loc 1 209 22
	movq	-8(%rbp), %rax	# start, tmp104
	movl	(%rax), %eax	# start_20->first, _3
# r_bsp.c:209:     if (first < start->first)
	.loc 1 209 8
	cmpl	%eax, -20(%rbp)	# _3, first
	jge	.L22	#,
# r_bsp.c:211: 	if (last < start->first-1)
	.loc 1 211 18
	movq	-8(%rbp), %rax	# start, tmp105
	movl	(%rax), %eax	# start_20->first, _4
# r_bsp.c:211: 	if (last < start->first-1)
	.loc 1 211 25
	subl	$1, %eax	#, _5
# r_bsp.c:211: 	if (last < start->first-1)
	.loc 1 211 5
	cmpl	%eax, -24(%rbp)	# _5, last
	jge	.L23	#,
# r_bsp.c:214: 	    R_StoreWallRange (first, last);
	.loc 1 214 6
	movl	-24(%rbp), %edx	# last, tmp106
	movl	-20(%rbp), %eax	# first, tmp107
	movl	%edx, %esi	# tmp106,
	movl	%eax, %edi	# tmp107,
	call	R_StoreWallRange@PLT	#
# r_bsp.c:215: 	    return;
	.loc 1 215 6
	jmp	.L19	#
.L23:
# r_bsp.c:219: 	R_StoreWallRange (first, start->first - 1);
	.loc 1 219 32
	movq	-8(%rbp), %rax	# start, tmp108
	movl	(%rax), %eax	# start_20->first, _6
# r_bsp.c:219: 	R_StoreWallRange (first, start->first - 1);
	.loc 1 219 2
	leal	-1(%rax), %edx	#, _7
	movl	-20(%rbp), %eax	# first, tmp109
	movl	%edx, %esi	# _7,
	movl	%eax, %edi	# tmp109,
	call	R_StoreWallRange@PLT	#
.L22:
# r_bsp.c:223:     if (last <= start->last)
	.loc 1 223 22
	movq	-8(%rbp), %rax	# start, tmp110
	movl	4(%rax), %eax	# start_20->last, _8
# r_bsp.c:223:     if (last <= start->last)
	.loc 1 223 8
	cmpl	%eax, -24(%rbp)	# _8, last
	jle	.L28	#,
# r_bsp.c:226:     while (last >= (start+1)->first-1)
	.loc 1 226 11
	jmp	.L26	#
.L27:
# r_bsp.c:229: 	R_StoreWallRange (start->last + 1, (start+1)->first - 1);
	.loc 1 229 43
	movq	-8(%rbp), %rax	# start, tmp111
	addq	$8, %rax	#, _9
# r_bsp.c:229: 	R_StoreWallRange (start->last + 1, (start+1)->first - 1);
	.loc 1 229 46
	movl	(%rax), %eax	# _9->first, _10
# r_bsp.c:229: 	R_StoreWallRange (start->last + 1, (start+1)->first - 1);
	.loc 1 229 2
	leal	-1(%rax), %edx	#, _11
# r_bsp.c:229: 	R_StoreWallRange (start->last + 1, (start+1)->first - 1);
	.loc 1 229 25
	movq	-8(%rbp), %rax	# start, tmp112
	movl	4(%rax), %eax	# start_21->last, _12
# r_bsp.c:229: 	R_StoreWallRange (start->last + 1, (start+1)->first - 1);
	.loc 1 229 2
	addl	$1, %eax	#, _13
	movl	%edx, %esi	# _11,
	movl	%eax, %edi	# _13,
	call	R_StoreWallRange@PLT	#
# r_bsp.c:230: 	start++;
	.loc 1 230 7
	addq	$8, -8(%rbp)	#, start
# r_bsp.c:232: 	if (last <= start->last)
	.loc 1 232 19
	movq	-8(%rbp), %rax	# start, tmp113
	movl	4(%rax), %eax	# start_33->last, _14
# r_bsp.c:232: 	if (last <= start->last)
	.loc 1 232 5
	cmpl	%eax, -24(%rbp)	# _14, last
	jle	.L29	#,
.L26:
# r_bsp.c:226:     while (last >= (start+1)->first-1)
	.loc 1 226 26
	movq	-8(%rbp), %rax	# start, tmp114
	addq	$8, %rax	#, _15
# r_bsp.c:226:     while (last >= (start+1)->first-1)
	.loc 1 226 29
	movl	(%rax), %eax	# _15->first, _16
# r_bsp.c:226:     while (last >= (start+1)->first-1)
	.loc 1 226 36
	subl	$1, %eax	#, _17
# r_bsp.c:226:     while (last >= (start+1)->first-1)
	.loc 1 226 17
	cmpl	%eax, -24(%rbp)	# _17, last
	jge	.L27	#,
# r_bsp.c:237:     R_StoreWallRange (start->last + 1, last);
	.loc 1 237 28
	movq	-8(%rbp), %rax	# start, tmp115
	movl	4(%rax), %eax	# start_21->last, _18
# r_bsp.c:237:     R_StoreWallRange (start->last + 1, last);
	.loc 1 237 5
	leal	1(%rax), %edx	#, _19
	movl	-24(%rbp), %eax	# last, tmp116
	movl	%eax, %esi	# tmp116,
	movl	%edx, %edi	# _19,
	call	R_StoreWallRange@PLT	#
	jmp	.L19	#
.L28:
# r_bsp.c:224: 	return;			
	.loc 1 224 2
	nop	
	jmp	.L19	#
.L29:
# r_bsp.c:233: 	    return;
	.loc 1 233 6
	nop	
.L19:
# r_bsp.c:238: }
	.loc 1 238 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	R_ClipPassWallSegment, .-R_ClipPassWallSegment
	.globl	R_ClearClipSegs
	.type	R_ClearClipSegs, @function
R_ClearClipSegs:
.LFB3:
	.loc 1 246 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# r_bsp.c:247:     solidsegs[0].first = -0x7fffffff;
	.loc 1 247 24
	movl	$-2147483647, solidsegs(%rip)	#, solidsegs[0].first
# r_bsp.c:248:     solidsegs[0].last = -1;
	.loc 1 248 23
	movl	$-1, 4+solidsegs(%rip)	#, solidsegs[0].last
# r_bsp.c:249:     solidsegs[1].first = viewwidth;
	.loc 1 249 24
	movl	viewwidth(%rip), %eax	# viewwidth, viewwidth.3_1
	movl	%eax, 8+solidsegs(%rip)	# viewwidth.3_1, solidsegs[1].first
# r_bsp.c:250:     solidsegs[1].last = 0x7fffffff;
	.loc 1 250 23
	movl	$2147483647, 12+solidsegs(%rip)	#, solidsegs[1].last
# r_bsp.c:251:     newend = solidsegs+2;
	.loc 1 251 23
	leaq	16+solidsegs(%rip), %rax	#, _2
# r_bsp.c:251:     newend = solidsegs+2;
	.loc 1 251 12
	movq	%rax, newend(%rip)	# _2, newend
# r_bsp.c:252: }
	.loc 1 252 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3:
	.size	R_ClearClipSegs, .-R_ClearClipSegs
	.globl	R_AddLine
	.type	R_AddLine, @function
R_AddLine:
.LFB4:
	.loc 1 260 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# line, line
# r_bsp.c:268:     curline = line;
	.loc 1 268 13
	movq	-40(%rbp), %rax	# line, tmp142
	movq	%rax, curline(%rip)	# tmp142, curline
# r_bsp.c:271:     angle1 = R_PointToAngle (line->v1->x, line->v1->y);
	.loc 1 271 47
	movq	-40(%rbp), %rax	# line, tmp143
	movq	(%rax), %rax	# line_65(D)->v1, _1
# r_bsp.c:271:     angle1 = R_PointToAngle (line->v1->x, line->v1->y);
	.loc 1 271 14
	movl	4(%rax), %edx	# _1->y, _2
# r_bsp.c:271:     angle1 = R_PointToAngle (line->v1->x, line->v1->y);
	.loc 1 271 34
	movq	-40(%rbp), %rax	# line, tmp144
	movq	(%rax), %rax	# line_65(D)->v1, _3
# r_bsp.c:271:     angle1 = R_PointToAngle (line->v1->x, line->v1->y);
	.loc 1 271 14
	movl	(%rax), %eax	# _3->x, _4
	movl	%edx, %esi	# _2,
	movl	%eax, %edi	# _4,
	call	R_PointToAngle@PLT	#
	movl	%eax, -24(%rbp)	# tmp145, angle1
# r_bsp.c:272:     angle2 = R_PointToAngle (line->v2->x, line->v2->y);
	.loc 1 272 47
	movq	-40(%rbp), %rax	# line, tmp146
	movq	8(%rax), %rax	# line_65(D)->v2, _5
# r_bsp.c:272:     angle2 = R_PointToAngle (line->v2->x, line->v2->y);
	.loc 1 272 14
	movl	4(%rax), %edx	# _5->y, _6
# r_bsp.c:272:     angle2 = R_PointToAngle (line->v2->x, line->v2->y);
	.loc 1 272 34
	movq	-40(%rbp), %rax	# line, tmp147
	movq	8(%rax), %rax	# line_65(D)->v2, _7
# r_bsp.c:272:     angle2 = R_PointToAngle (line->v2->x, line->v2->y);
	.loc 1 272 14
	movl	(%rax), %eax	# _7->x, _8
	movl	%edx, %esi	# _6,
	movl	%eax, %edi	# _8,
	call	R_PointToAngle@PLT	#
	movl	%eax, -20(%rbp)	# tmp148, angle2
# r_bsp.c:276:     span = angle1 - angle2;
	.loc 1 276 10
	movl	-24(%rbp), %eax	# angle1, tmp152
	subl	-20(%rbp), %eax	# angle2, tmp151
	movl	%eax, -16(%rbp)	# tmp151, span
# r_bsp.c:279:     if (span >= ANG180)
	.loc 1 279 14
	movl	-16(%rbp), %eax	# span, span.4_9
# r_bsp.c:279:     if (span >= ANG180)
	.loc 1 279 8
	testl	%eax, %eax	# span.4_9
	js	.L46	#,
# r_bsp.c:283:     rw_angle1 = angle1;
	.loc 1 283 15
	movl	-24(%rbp), %eax	# angle1, angle1.5_10
	movl	%eax, rw_angle1(%rip)	# angle1.5_10, rw_angle1
# r_bsp.c:284:     angle1 -= viewangle;
	.loc 1 284 12
	movl	viewangle(%rip), %eax	# viewangle, viewangle.6_11
	subl	%eax, -24(%rbp)	# viewangle.6_11, angle1
# r_bsp.c:285:     angle2 -= viewangle;
	.loc 1 285 12
	movl	viewangle(%rip), %eax	# viewangle, viewangle.7_12
	subl	%eax, -20(%rbp)	# viewangle.7_12, angle2
# r_bsp.c:287:     tspan = angle1 + clipangle;
	.loc 1 287 20
	movl	clipangle(%rip), %edx	# clipangle, clipangle.8_13
# r_bsp.c:287:     tspan = angle1 + clipangle;
	.loc 1 287 11
	movl	-24(%rbp), %eax	# angle1, tmp156
	addl	%edx, %eax	# clipangle.8_13, tmp155
	movl	%eax, -12(%rbp)	# tmp155, tspan
# r_bsp.c:288:     if (tspan > 2*clipangle)
	.loc 1 288 18
	movl	clipangle(%rip), %eax	# clipangle, clipangle.9_14
	addl	%eax, %eax	# _15
# r_bsp.c:288:     if (tspan > 2*clipangle)
	.loc 1 288 8
	cmpl	-12(%rbp), %eax	# tspan, _15
	jnb	.L34	#,
# r_bsp.c:290: 	tspan -= 2*clipangle;
	.loc 1 290 12
	movl	clipangle(%rip), %eax	# clipangle, clipangle.10_16
	addl	%eax, %eax	# _17
# r_bsp.c:290: 	tspan -= 2*clipangle;
	.loc 1 290 8
	subl	%eax, -12(%rbp)	# _17, tspan
# r_bsp.c:293: 	if (tspan >= span)
	.loc 1 293 5
	movl	-12(%rbp), %eax	# tspan, tmp157
	cmpl	-16(%rbp), %eax	# span, tmp157
	jnb	.L47	#,
# r_bsp.c:296: 	angle1 = clipangle;
	.loc 1 296 9
	movl	clipangle(%rip), %eax	# clipangle, tmp158
	movl	%eax, -24(%rbp)	# tmp158, angle1
.L34:
# r_bsp.c:298:     tspan = clipangle - angle2;
	.loc 1 298 23
	movl	clipangle(%rip), %eax	# clipangle, clipangle.11_18
# r_bsp.c:298:     tspan = clipangle - angle2;
	.loc 1 298 11
	subl	-20(%rbp), %eax	# angle2, tmp160
	movl	%eax, -12(%rbp)	# tmp160, tspan
# r_bsp.c:299:     if (tspan > 2*clipangle)
	.loc 1 299 18
	movl	clipangle(%rip), %eax	# clipangle, clipangle.12_19
	addl	%eax, %eax	# _20
# r_bsp.c:299:     if (tspan > 2*clipangle)
	.loc 1 299 8
	cmpl	-12(%rbp), %eax	# tspan, _20
	jnb	.L36	#,
# r_bsp.c:301: 	tspan -= 2*clipangle;
	.loc 1 301 12
	movl	clipangle(%rip), %eax	# clipangle, clipangle.13_21
	addl	%eax, %eax	# _22
# r_bsp.c:301: 	tspan -= 2*clipangle;
	.loc 1 301 8
	subl	%eax, -12(%rbp)	# _22, tspan
# r_bsp.c:304: 	if (tspan >= span)
	.loc 1 304 5
	movl	-12(%rbp), %eax	# tspan, tmp161
	cmpl	-16(%rbp), %eax	# span, tmp161
	jnb	.L48	#,
# r_bsp.c:306: 	angle2 = -clipangle;
	.loc 1 306 11
	movl	clipangle(%rip), %eax	# clipangle, clipangle.14_23
# r_bsp.c:306: 	angle2 = -clipangle;
	.loc 1 306 9
	negl	%eax	# tmp162
	movl	%eax, -20(%rbp)	# tmp162, angle2
.L36:
# r_bsp.c:311:     angle1 = (angle1+ANG90)>>ANGLETOFINESHIFT;
	.loc 1 311 21
	movl	-24(%rbp), %eax	# angle1, tmp163
	addl	$1073741824, %eax	#, _24
# r_bsp.c:311:     angle1 = (angle1+ANG90)>>ANGLETOFINESHIFT;
	.loc 1 311 12
	shrl	$19, %eax	#, tmp164
	movl	%eax, -24(%rbp)	# tmp164, angle1
# r_bsp.c:312:     angle2 = (angle2+ANG90)>>ANGLETOFINESHIFT;
	.loc 1 312 21
	movl	-20(%rbp), %eax	# angle2, tmp165
	addl	$1073741824, %eax	#, _25
# r_bsp.c:312:     angle2 = (angle2+ANG90)>>ANGLETOFINESHIFT;
	.loc 1 312 12
	shrl	$19, %eax	#, tmp166
	movl	%eax, -20(%rbp)	# tmp166, angle2
# r_bsp.c:313:     x1 = viewangletox[angle1];
	.loc 1 313 8
	movl	-24(%rbp), %eax	# angle1, tmp167
	leaq	0(,%rax,4), %rdx	#, tmp168
	leaq	viewangletox(%rip), %rax	#, tmp169
	movl	(%rdx,%rax), %eax	# viewangletox[angle1_81], tmp170
	movl	%eax, -8(%rbp)	# tmp170, x1
# r_bsp.c:314:     x2 = viewangletox[angle2];
	.loc 1 314 8
	movl	-20(%rbp), %eax	# angle2, tmp171
	leaq	0(,%rax,4), %rdx	#, tmp172
	leaq	viewangletox(%rip), %rax	#, tmp173
	movl	(%rdx,%rax), %eax	# viewangletox[angle2_82], tmp174
	movl	%eax, -4(%rbp)	# tmp174, x2
# r_bsp.c:317:     if (x1 == x2)
	.loc 1 317 8
	movl	-8(%rbp), %eax	# x1, tmp175
	cmpl	-4(%rbp), %eax	# x2, tmp175
	je	.L49	#,
# r_bsp.c:320:     backsector = line->backsector;
	.loc 1 320 22
	movq	-40(%rbp), %rax	# line, tmp176
	movq	48(%rax), %rax	# line_65(D)->backsector, _26
# r_bsp.c:320:     backsector = line->backsector;
	.loc 1 320 16
	movq	%rax, backsector(%rip)	# _26, backsector
# r_bsp.c:323:     if (!backsector)
	.loc 1 323 9
	movq	backsector(%rip), %rax	# backsector, backsector.15_27
# r_bsp.c:323:     if (!backsector)
	.loc 1 323 8
	testq	%rax, %rax	# backsector.15_27
	je	.L50	#,
# r_bsp.c:327:     if (backsector->ceilingheight <= frontsector->floorheight
	.loc 1 327 19
	movq	backsector(%rip), %rax	# backsector, backsector.16_28
	movl	4(%rax), %edx	# backsector.16_28->ceilingheight, _29
# r_bsp.c:327:     if (backsector->ceilingheight <= frontsector->floorheight
	.loc 1 327 49
	movq	frontsector(%rip), %rax	# frontsector, frontsector.17_30
	movl	(%rax), %eax	# frontsector.17_30->floorheight, _31
# r_bsp.c:327:     if (backsector->ceilingheight <= frontsector->floorheight
	.loc 1 327 8
	cmpl	%eax, %edx	# _31, _29
	jle	.L51	#,
# r_bsp.c:328: 	|| backsector->floorheight >= frontsector->ceilingheight)
	.loc 1 328 15
	movq	backsector(%rip), %rax	# backsector, backsector.18_32
	movl	(%rax), %edx	# backsector.18_32->floorheight, _33
# r_bsp.c:328: 	|| backsector->floorheight >= frontsector->ceilingheight)
	.loc 1 328 43
	movq	frontsector(%rip), %rax	# frontsector, frontsector.19_34
	movl	4(%rax), %eax	# frontsector.19_34->ceilingheight, _35
# r_bsp.c:328: 	|| backsector->floorheight >= frontsector->ceilingheight)
	.loc 1 328 2
	cmpl	%eax, %edx	# _35, _33
	jge	.L51	#,
# r_bsp.c:332:     if (backsector->ceilingheight != frontsector->ceilingheight
	.loc 1 332 19
	movq	backsector(%rip), %rax	# backsector, backsector.20_36
	movl	4(%rax), %edx	# backsector.20_36->ceilingheight, _37
# r_bsp.c:332:     if (backsector->ceilingheight != frontsector->ceilingheight
	.loc 1 332 49
	movq	frontsector(%rip), %rax	# frontsector, frontsector.21_38
	movl	4(%rax), %eax	# frontsector.21_38->ceilingheight, _39
# r_bsp.c:332:     if (backsector->ceilingheight != frontsector->ceilingheight
	.loc 1 332 8
	cmpl	%eax, %edx	# _39, _37
	jne	.L52	#,
# r_bsp.c:333: 	|| backsector->floorheight != frontsector->floorheight)
	.loc 1 333 15
	movq	backsector(%rip), %rax	# backsector, backsector.22_40
	movl	(%rax), %edx	# backsector.22_40->floorheight, _41
# r_bsp.c:333: 	|| backsector->floorheight != frontsector->floorheight)
	.loc 1 333 43
	movq	frontsector(%rip), %rax	# frontsector, frontsector.23_42
	movl	(%rax), %eax	# frontsector.23_42->floorheight, _43
# r_bsp.c:333: 	|| backsector->floorheight != frontsector->floorheight)
	.loc 1 333 2
	cmpl	%eax, %edx	# _43, _41
	jne	.L52	#,
# r_bsp.c:341:     if (backsector->ceilingpic == frontsector->ceilingpic
	.loc 1 341 19
	movq	backsector(%rip), %rax	# backsector, backsector.24_44
	movzwl	10(%rax), %edx	# backsector.24_44->ceilingpic, _45
# r_bsp.c:341:     if (backsector->ceilingpic == frontsector->ceilingpic
	.loc 1 341 46
	movq	frontsector(%rip), %rax	# frontsector, frontsector.25_46
	movzwl	10(%rax), %eax	# frontsector.25_46->ceilingpic, _47
# r_bsp.c:341:     if (backsector->ceilingpic == frontsector->ceilingpic
	.loc 1 341 8
	cmpw	%ax, %dx	# _47, _45
	jne	.L53	#,
# r_bsp.c:342: 	&& backsector->floorpic == frontsector->floorpic
	.loc 1 342 15
	movq	backsector(%rip), %rax	# backsector, backsector.26_48
	movzwl	8(%rax), %edx	# backsector.26_48->floorpic, _49
# r_bsp.c:342: 	&& backsector->floorpic == frontsector->floorpic
	.loc 1 342 40
	movq	frontsector(%rip), %rax	# frontsector, frontsector.27_50
	movzwl	8(%rax), %eax	# frontsector.27_50->floorpic, _51
# r_bsp.c:342: 	&& backsector->floorpic == frontsector->floorpic
	.loc 1 342 2
	cmpw	%ax, %dx	# _51, _49
	jne	.L53	#,
# r_bsp.c:343: 	&& backsector->lightlevel == frontsector->lightlevel
	.loc 1 343 15
	movq	backsector(%rip), %rax	# backsector, backsector.28_52
	movzwl	12(%rax), %edx	# backsector.28_52->lightlevel, _53
# r_bsp.c:343: 	&& backsector->lightlevel == frontsector->lightlevel
	.loc 1 343 42
	movq	frontsector(%rip), %rax	# frontsector, frontsector.29_54
	movzwl	12(%rax), %eax	# frontsector.29_54->lightlevel, _55
# r_bsp.c:343: 	&& backsector->lightlevel == frontsector->lightlevel
	.loc 1 343 2
	cmpw	%ax, %dx	# _55, _53
	jne	.L53	#,
# r_bsp.c:344: 	&& curline->sidedef->midtexture == 0)
	.loc 1 344 12
	movq	curline(%rip), %rax	# curline, curline.30_56
	movq	24(%rax), %rax	# curline.30_56->sidedef, _57
# r_bsp.c:344: 	&& curline->sidedef->midtexture == 0)
	.loc 1 344 21
	movzwl	12(%rax), %eax	# _57->midtexture, _58
# r_bsp.c:344: 	&& curline->sidedef->midtexture == 0)
	.loc 1 344 2
	testw	%ax, %ax	# _58
	je	.L54	#,
# r_bsp.c:350:   clippass:
	.loc 1 350 3
	jmp	.L53	#
.L52:
# r_bsp.c:334: 	goto clippass;	
	.loc 1 334 2
	nop	
	jmp	.L45	#
.L53:
# r_bsp.c:350:   clippass:
	.loc 1 350 3
	nop	
.L45:
# r_bsp.c:351:     R_ClipPassWallSegment (x1, x2-1);	
	.loc 1 351 5
	movl	-4(%rbp), %eax	# x2, tmp177
	leal	-1(%rax), %edx	#, _59
	movl	-8(%rbp), %eax	# x1, tmp178
	movl	%edx, %esi	# _59,
	movl	%eax, %edi	# tmp178,
	call	R_ClipPassWallSegment	#
# r_bsp.c:352:     return;
	.loc 1 352 5
	jmp	.L31	#
.L50:
# r_bsp.c:324: 	goto clipsolid;		
	.loc 1 324 2
	nop	
	jmp	.L40	#
.L51:
# r_bsp.c:329: 	goto clipsolid;		
	.loc 1 329 2
	nop	
.L40:
# r_bsp.c:355:     R_ClipSolidWallSegment (x1, x2-1);
	.loc 1 355 5
	movl	-4(%rbp), %eax	# x2, tmp179
	leal	-1(%rax), %edx	#, _60
	movl	-8(%rbp), %eax	# x1, tmp180
	movl	%edx, %esi	# _60,
	movl	%eax, %edi	# tmp180,
	call	R_ClipSolidWallSegment	#
	jmp	.L31	#
.L46:
# r_bsp.c:280: 	return;		
	.loc 1 280 2
	nop	
	jmp	.L31	#
.L47:
# r_bsp.c:294: 	    return;
	.loc 1 294 6
	nop	
	jmp	.L31	#
.L48:
# r_bsp.c:305: 	    return;	
	.loc 1 305 6
	nop	
	jmp	.L31	#
.L49:
# r_bsp.c:318: 	return;				
	.loc 1 318 2
	nop	
	jmp	.L31	#
.L54:
# r_bsp.c:346: 	return;
	.loc 1 346 2
	nop	
.L31:
# r_bsp.c:356: }
	.loc 1 356 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4:
	.size	R_AddLine, .-R_AddLine
	.globl	checkcoord
	.data
	.align 32
	.type	checkcoord, @object
	.size	checkcoord, 192
checkcoord:
	.long	3
	.long	0
	.long	2
	.long	1
	.long	3
	.long	0
	.long	2
	.long	0
	.long	3
	.long	1
	.long	2
	.long	0
	.long	0
	.zero	12
	.long	2
	.long	0
	.long	2
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	1
	.long	3
	.long	0
	.long	0
	.zero	12
	.long	2
	.long	0
	.long	3
	.long	1
	.long	2
	.long	1
	.long	3
	.long	1
	.long	2
	.long	1
	.long	3
	.long	0
	.zero	16
	.text
	.globl	R_CheckBBox
	.type	R_CheckBBox, @function
R_CheckBBox:
.LFB5:
	.loc 1 382 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# bspcoord, bspcoord
# r_bsp.c:404:     if (viewx <= bspcoord[BOXLEFT])
	.loc 1 404 26
	movq	-72(%rbp), %rax	# bspcoord, tmp133
	addq	$8, %rax	#, _1
	movl	(%rax), %edx	# *_1, _2
# r_bsp.c:404:     if (viewx <= bspcoord[BOXLEFT])
	.loc 1 404 15
	movl	viewx(%rip), %eax	# viewx, viewx.31_3
# r_bsp.c:404:     if (viewx <= bspcoord[BOXLEFT])
	.loc 1 404 8
	cmpl	%eax, %edx	# viewx.31_3, _2
	jl	.L56	#,
# r_bsp.c:405: 	boxx = 0;
	.loc 1 405 7
	movl	$0, -60(%rbp)	#, boxx
	jmp	.L57	#
.L56:
# r_bsp.c:406:     else if (viewx < bspcoord[BOXRIGHT])
	.loc 1 406 30
	movq	-72(%rbp), %rax	# bspcoord, tmp134
	addq	$12, %rax	#, _4
	movl	(%rax), %edx	# *_4, _5
# r_bsp.c:406:     else if (viewx < bspcoord[BOXRIGHT])
	.loc 1 406 20
	movl	viewx(%rip), %eax	# viewx, viewx.32_6
# r_bsp.c:406:     else if (viewx < bspcoord[BOXRIGHT])
	.loc 1 406 13
	cmpl	%eax, %edx	# viewx.32_6, _5
	jle	.L58	#,
# r_bsp.c:407: 	boxx = 1;
	.loc 1 407 7
	movl	$1, -60(%rbp)	#, boxx
	jmp	.L57	#
.L58:
# r_bsp.c:409: 	boxx = 2;
	.loc 1 409 7
	movl	$2, -60(%rbp)	#, boxx
.L57:
# r_bsp.c:411:     if (viewy >= bspcoord[BOXTOP])
	.loc 1 411 26
	movq	-72(%rbp), %rax	# bspcoord, tmp135
	movl	(%rax), %edx	# *bspcoord_57(D), _7
# r_bsp.c:411:     if (viewy >= bspcoord[BOXTOP])
	.loc 1 411 15
	movl	viewy(%rip), %eax	# viewy, viewy.33_8
# r_bsp.c:411:     if (viewy >= bspcoord[BOXTOP])
	.loc 1 411 8
	cmpl	%eax, %edx	# viewy.33_8, _7
	jg	.L59	#,
# r_bsp.c:412: 	boxy = 0;
	.loc 1 412 7
	movl	$0, -56(%rbp)	#, boxy
	jmp	.L60	#
.L59:
# r_bsp.c:413:     else if (viewy > bspcoord[BOXBOTTOM])
	.loc 1 413 30
	movq	-72(%rbp), %rax	# bspcoord, tmp136
	addq	$4, %rax	#, _9
	movl	(%rax), %edx	# *_9, _10
# r_bsp.c:413:     else if (viewy > bspcoord[BOXBOTTOM])
	.loc 1 413 20
	movl	viewy(%rip), %eax	# viewy, viewy.34_11
# r_bsp.c:413:     else if (viewy > bspcoord[BOXBOTTOM])
	.loc 1 413 13
	cmpl	%eax, %edx	# viewy.34_11, _10
	jge	.L61	#,
# r_bsp.c:414: 	boxy = 1;
	.loc 1 414 7
	movl	$1, -56(%rbp)	#, boxy
	jmp	.L60	#
.L61:
# r_bsp.c:416: 	boxy = 2;
	.loc 1 416 7
	movl	$2, -56(%rbp)	#, boxy
.L60:
# r_bsp.c:418:     boxpos = (boxy<<2)+boxx;
	.loc 1 418 19
	movl	-56(%rbp), %eax	# boxy, tmp137
	leal	0(,%rax,4), %edx	#, _12
# r_bsp.c:418:     boxpos = (boxy<<2)+boxx;
	.loc 1 418 12
	movl	-60(%rbp), %eax	# boxx, tmp141
	addl	%edx, %eax	# _12, tmp140
	movl	%eax, -44(%rbp)	# tmp140, boxpos
# r_bsp.c:419:     if (boxpos == 5)
	.loc 1 419 8
	cmpl	$5, -44(%rbp)	#, boxpos
	jne	.L62	#,
# r_bsp.c:420: 	return true;
	.loc 1 420 9
	movl	$1, %eax	#, _55
	jmp	.L63	#
.L62:
# r_bsp.c:422:     x1 = bspcoord[checkcoord[boxpos][0]];
	.loc 1 422 37
	movl	-44(%rbp), %eax	# boxpos, tmp143
	cltq
	salq	$4, %rax	#, tmp142
	movq	%rax, %rdx	# tmp142, tmp144
	leaq	checkcoord(%rip), %rax	#, tmp145
	movl	(%rdx,%rax), %eax	# checkcoord[boxpos_65][0], _13
	cltq
# r_bsp.c:422:     x1 = bspcoord[checkcoord[boxpos][0]];
	.loc 1 422 18
	leaq	0(,%rax,4), %rdx	#, _15
	movq	-72(%rbp), %rax	# bspcoord, tmp146
	addq	%rdx, %rax	# _15, _16
# r_bsp.c:422:     x1 = bspcoord[checkcoord[boxpos][0]];
	.loc 1 422 8
	movl	(%rax), %eax	# *_16, tmp147
	movl	%eax, -40(%rbp)	# tmp147, x1
# r_bsp.c:423:     y1 = bspcoord[checkcoord[boxpos][1]];
	.loc 1 423 37
	movl	-44(%rbp), %eax	# boxpos, tmp149
	cltq
	salq	$4, %rax	#, tmp148
	movq	%rax, %rdx	# tmp148, tmp150
	leaq	4+checkcoord(%rip), %rax	#, tmp151
	movl	(%rdx,%rax), %eax	# checkcoord[boxpos_65][1], _17
	cltq
# r_bsp.c:423:     y1 = bspcoord[checkcoord[boxpos][1]];
	.loc 1 423 18
	leaq	0(,%rax,4), %rdx	#, _19
	movq	-72(%rbp), %rax	# bspcoord, tmp152
	addq	%rdx, %rax	# _19, _20
# r_bsp.c:423:     y1 = bspcoord[checkcoord[boxpos][1]];
	.loc 1 423 8
	movl	(%rax), %eax	# *_20, tmp153
	movl	%eax, -36(%rbp)	# tmp153, y1
# r_bsp.c:424:     x2 = bspcoord[checkcoord[boxpos][2]];
	.loc 1 424 37
	movl	-44(%rbp), %eax	# boxpos, tmp155
	cltq
	salq	$4, %rax	#, tmp154
	movq	%rax, %rdx	# tmp154, tmp156
	leaq	8+checkcoord(%rip), %rax	#, tmp157
	movl	(%rdx,%rax), %eax	# checkcoord[boxpos_65][2], _21
	cltq
# r_bsp.c:424:     x2 = bspcoord[checkcoord[boxpos][2]];
	.loc 1 424 18
	leaq	0(,%rax,4), %rdx	#, _23
	movq	-72(%rbp), %rax	# bspcoord, tmp158
	addq	%rdx, %rax	# _23, _24
# r_bsp.c:424:     x2 = bspcoord[checkcoord[boxpos][2]];
	.loc 1 424 8
	movl	(%rax), %eax	# *_24, tmp159
	movl	%eax, -32(%rbp)	# tmp159, x2
# r_bsp.c:425:     y2 = bspcoord[checkcoord[boxpos][3]];
	.loc 1 425 37
	movl	-44(%rbp), %eax	# boxpos, tmp161
	cltq
	salq	$4, %rax	#, tmp160
	movq	%rax, %rdx	# tmp160, tmp162
	leaq	12+checkcoord(%rip), %rax	#, tmp163
	movl	(%rdx,%rax), %eax	# checkcoord[boxpos_65][3], _25
	cltq
# r_bsp.c:425:     y2 = bspcoord[checkcoord[boxpos][3]];
	.loc 1 425 18
	leaq	0(,%rax,4), %rdx	#, _27
	movq	-72(%rbp), %rax	# bspcoord, tmp164
	addq	%rdx, %rax	# _27, _28
# r_bsp.c:425:     y2 = bspcoord[checkcoord[boxpos][3]];
	.loc 1 425 8
	movl	(%rax), %eax	# *_28, tmp165
	movl	%eax, -28(%rbp)	# tmp165, y2
# r_bsp.c:428:     angle1 = R_PointToAngle (x1, y1) - viewangle;
	.loc 1 428 14
	movl	-36(%rbp), %edx	# y1, tmp166
	movl	-40(%rbp), %eax	# x1, tmp167
	movl	%edx, %esi	# tmp166,
	movl	%eax, %edi	# tmp167,
	call	R_PointToAngle@PLT	#
	movl	%eax, %edx	#, _29
# r_bsp.c:428:     angle1 = R_PointToAngle (x1, y1) - viewangle;
	.loc 1 428 38 discriminator 1
	movl	viewangle(%rip), %eax	# viewangle, viewangle.35_30
# r_bsp.c:428:     angle1 = R_PointToAngle (x1, y1) - viewangle;
	.loc 1 428 12 discriminator 1
	subl	%eax, %edx	# viewangle.35_30, tmp168
	movl	%edx, -52(%rbp)	# tmp168, angle1
# r_bsp.c:429:     angle2 = R_PointToAngle (x2, y2) - viewangle;
	.loc 1 429 14
	movl	-28(%rbp), %edx	# y2, tmp169
	movl	-32(%rbp), %eax	# x2, tmp170
	movl	%edx, %esi	# tmp169,
	movl	%eax, %edi	# tmp170,
	call	R_PointToAngle@PLT	#
	movl	%eax, %edx	#, _31
# r_bsp.c:429:     angle2 = R_PointToAngle (x2, y2) - viewangle;
	.loc 1 429 38 discriminator 1
	movl	viewangle(%rip), %eax	# viewangle, viewangle.36_32
# r_bsp.c:429:     angle2 = R_PointToAngle (x2, y2) - viewangle;
	.loc 1 429 12 discriminator 1
	subl	%eax, %edx	# viewangle.36_32, tmp171
	movl	%edx, -48(%rbp)	# tmp171, angle2
# r_bsp.c:431:     span = angle1 - angle2;
	.loc 1 431 10
	movl	-52(%rbp), %eax	# angle1, tmp175
	subl	-48(%rbp), %eax	# angle2, tmp174
	movl	%eax, -24(%rbp)	# tmp174, span
# r_bsp.c:434:     if (span >= ANG180)
	.loc 1 434 14
	movl	-24(%rbp), %eax	# span, span.37_33
# r_bsp.c:434:     if (span >= ANG180)
	.loc 1 434 8
	testl	%eax, %eax	# span.37_33
	jns	.L64	#,
# r_bsp.c:435: 	return true;
	.loc 1 435 9
	movl	$1, %eax	#, _55
	jmp	.L63	#
.L64:
# r_bsp.c:437:     tspan = angle1 + clipangle;
	.loc 1 437 20
	movl	clipangle(%rip), %edx	# clipangle, clipangle.38_34
# r_bsp.c:437:     tspan = angle1 + clipangle;
	.loc 1 437 11
	movl	-52(%rbp), %eax	# angle1, tmp179
	addl	%edx, %eax	# clipangle.38_34, tmp178
	movl	%eax, -20(%rbp)	# tmp178, tspan
# r_bsp.c:439:     if (tspan > 2*clipangle)
	.loc 1 439 18
	movl	clipangle(%rip), %eax	# clipangle, clipangle.39_35
	addl	%eax, %eax	# _36
# r_bsp.c:439:     if (tspan > 2*clipangle)
	.loc 1 439 8
	cmpl	-20(%rbp), %eax	# tspan, _36
	jnb	.L65	#,
# r_bsp.c:441: 	tspan -= 2*clipangle;
	.loc 1 441 12
	movl	clipangle(%rip), %eax	# clipangle, clipangle.40_37
	addl	%eax, %eax	# _38
# r_bsp.c:441: 	tspan -= 2*clipangle;
	.loc 1 441 8
	subl	%eax, -20(%rbp)	# _38, tspan
# r_bsp.c:444: 	if (tspan >= span)
	.loc 1 444 5
	movl	-20(%rbp), %eax	# tspan, tmp180
	cmpl	-24(%rbp), %eax	# span, tmp180
	jb	.L66	#,
# r_bsp.c:445: 	    return false;	
	.loc 1 445 13
	movl	$0, %eax	#, _55
	jmp	.L63	#
.L66:
# r_bsp.c:447: 	angle1 = clipangle;
	.loc 1 447 9
	movl	clipangle(%rip), %eax	# clipangle, tmp181
	movl	%eax, -52(%rbp)	# tmp181, angle1
.L65:
# r_bsp.c:449:     tspan = clipangle - angle2;
	.loc 1 449 23
	movl	clipangle(%rip), %eax	# clipangle, clipangle.41_39
# r_bsp.c:449:     tspan = clipangle - angle2;
	.loc 1 449 11
	subl	-48(%rbp), %eax	# angle2, tmp183
	movl	%eax, -20(%rbp)	# tmp183, tspan
# r_bsp.c:450:     if (tspan > 2*clipangle)
	.loc 1 450 18
	movl	clipangle(%rip), %eax	# clipangle, clipangle.42_40
	addl	%eax, %eax	# _41
# r_bsp.c:450:     if (tspan > 2*clipangle)
	.loc 1 450 8
	cmpl	-20(%rbp), %eax	# tspan, _41
	jnb	.L67	#,
# r_bsp.c:452: 	tspan -= 2*clipangle;
	.loc 1 452 12
	movl	clipangle(%rip), %eax	# clipangle, clipangle.43_42
	addl	%eax, %eax	# _43
# r_bsp.c:452: 	tspan -= 2*clipangle;
	.loc 1 452 8
	subl	%eax, -20(%rbp)	# _43, tspan
# r_bsp.c:455: 	if (tspan >= span)
	.loc 1 455 5
	movl	-20(%rbp), %eax	# tspan, tmp184
	cmpl	-24(%rbp), %eax	# span, tmp184
	jb	.L68	#,
# r_bsp.c:456: 	    return false;
	.loc 1 456 13
	movl	$0, %eax	#, _55
	jmp	.L63	#
.L68:
# r_bsp.c:458: 	angle2 = -clipangle;
	.loc 1 458 11
	movl	clipangle(%rip), %eax	# clipangle, clipangle.44_44
# r_bsp.c:458: 	angle2 = -clipangle;
	.loc 1 458 9
	negl	%eax	# tmp185
	movl	%eax, -48(%rbp)	# tmp185, angle2
.L67:
# r_bsp.c:465:     angle1 = (angle1+ANG90)>>ANGLETOFINESHIFT;
	.loc 1 465 21
	movl	-52(%rbp), %eax	# angle1, tmp186
	addl	$1073741824, %eax	#, _45
# r_bsp.c:465:     angle1 = (angle1+ANG90)>>ANGLETOFINESHIFT;
	.loc 1 465 12
	shrl	$19, %eax	#, tmp187
	movl	%eax, -52(%rbp)	# tmp187, angle1
# r_bsp.c:466:     angle2 = (angle2+ANG90)>>ANGLETOFINESHIFT;
	.loc 1 466 21
	movl	-48(%rbp), %eax	# angle2, tmp188
	addl	$1073741824, %eax	#, _46
# r_bsp.c:466:     angle2 = (angle2+ANG90)>>ANGLETOFINESHIFT;
	.loc 1 466 12
	shrl	$19, %eax	#, tmp189
	movl	%eax, -48(%rbp)	# tmp189, angle2
# r_bsp.c:467:     sx1 = viewangletox[angle1];
	.loc 1 467 9
	movl	-52(%rbp), %eax	# angle1, tmp190
	leaq	0(,%rax,4), %rdx	#, tmp191
	leaq	viewangletox(%rip), %rax	#, tmp192
	movl	(%rdx,%rax), %eax	# viewangletox[angle1_83], tmp193
	movl	%eax, -16(%rbp)	# tmp193, sx1
# r_bsp.c:468:     sx2 = viewangletox[angle2];
	.loc 1 468 9
	movl	-48(%rbp), %eax	# angle2, tmp194
	leaq	0(,%rax,4), %rdx	#, tmp195
	leaq	viewangletox(%rip), %rax	#, tmp196
	movl	(%rdx,%rax), %eax	# viewangletox[angle2_84], tmp197
	movl	%eax, -12(%rbp)	# tmp197, sx2
# r_bsp.c:471:     if (sx1 == sx2)
	.loc 1 471 8
	movl	-16(%rbp), %eax	# sx1, tmp198
	cmpl	-12(%rbp), %eax	# sx2, tmp198
	jne	.L69	#,
# r_bsp.c:472: 	return false;			
	.loc 1 472 9
	movl	$0, %eax	#, _55
	jmp	.L63	#
.L69:
# r_bsp.c:473:     sx2--;
	.loc 1 473 8
	subl	$1, -12(%rbp)	#, sx2
# r_bsp.c:475:     start = solidsegs;
	.loc 1 475 11
	leaq	solidsegs(%rip), %rax	#, tmp199
	movq	%rax, -8(%rbp)	# tmp199, start
# r_bsp.c:476:     while (start->last < sx2)
	.loc 1 476 11
	jmp	.L70	#
.L71:
# r_bsp.c:477: 	start++;
	.loc 1 477 7
	addq	$8, -8(%rbp)	#, start
.L70:
# r_bsp.c:476:     while (start->last < sx2)
	.loc 1 476 17
	movq	-8(%rbp), %rax	# start, tmp200
	movl	4(%rax), %eax	# start_54->last, _47
# r_bsp.c:476:     while (start->last < sx2)
	.loc 1 476 24
	cmpl	%eax, -12(%rbp)	# _47, sx2
	jg	.L71	#,
# r_bsp.c:479:     if (sx1 >= start->first
	.loc 1 479 21
	movq	-8(%rbp), %rax	# start, tmp201
	movl	(%rax), %eax	# start_54->first, _48
# r_bsp.c:479:     if (sx1 >= start->first
	.loc 1 479 8
	cmpl	%eax, -16(%rbp)	# _48, sx1
	jl	.L72	#,
# r_bsp.c:480: 	&& sx2 <= start->last)
	.loc 1 480 17
	movq	-8(%rbp), %rax	# start, tmp202
	movl	4(%rax), %eax	# start_54->last, _49
# r_bsp.c:480: 	&& sx2 <= start->last)
	.loc 1 480 2
	cmpl	%eax, -12(%rbp)	# _49, sx2
	jg	.L72	#,
# r_bsp.c:483: 	return false;
	.loc 1 483 9
	movl	$0, %eax	#, _55
	jmp	.L63	#
.L72:
# r_bsp.c:486:     return true;
	.loc 1 486 12
	movl	$1, %eax	#, _55
.L63:
# r_bsp.c:487: }
	.loc 1 487 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5:
	.size	R_CheckBBox, .-R_CheckBBox
	.section	.rodata
	.align 8
.LC0:
	.string	"R_Subsector: ss %i with numss = %i"
	.text
	.globl	R_Subsector
	.type	R_Subsector, @function
R_Subsector:
.LFB6:
	.loc 1 498 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# num, num
# r_bsp.c:504:     if (num>=numsubsectors)
	.loc 1 504 12
	movl	numsubsectors(%rip), %eax	# numsubsectors, numsubsectors.45_1
# r_bsp.c:504:     if (num>=numsubsectors)
	.loc 1 504 8
	cmpl	%eax, -36(%rbp)	# numsubsectors.45_1, num
	jl	.L74	#,
# r_bsp.c:505: 	I_Error ("R_Subsector: ss %i with numss = %i",
	.loc 1 505 2
	movl	numsubsectors(%rip), %edx	# numsubsectors, numsubsectors.46_2
	movl	-36(%rbp), %eax	# num, tmp125
	movl	%eax, %esi	# tmp125,
	leaq	.LC0(%rip), %rax	#, tmp126
	movq	%rax, %rdi	# tmp126,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L74:
# r_bsp.c:510:     sscount++;
	.loc 1 510 12
	movl	sscount(%rip), %eax	# sscount, sscount.47_3
	addl	$1, %eax	#, _4
	movl	%eax, sscount(%rip)	# _4, sscount
# r_bsp.c:511:     sub = &subsectors[num];
	.loc 1 511 11
	movq	subsectors(%rip), %rax	# subsectors, subsectors.48_5
# r_bsp.c:511:     sub = &subsectors[num];
	.loc 1 511 22
	movl	-36(%rbp), %edx	# num, tmp127
	movslq	%edx, %rdx	# tmp127, _6
	salq	$4, %rdx	#, _7
# r_bsp.c:511:     sub = &subsectors[num];
	.loc 1 511 9
	addq	%rdx, %rax	# _7, tmp128
	movq	%rax, -8(%rbp)	# tmp128, sub
# r_bsp.c:512:     frontsector = sub->sector;
	.loc 1 512 22
	movq	-8(%rbp), %rax	# sub, tmp129
	movq	(%rax), %rax	# sub_54->sector, _8
# r_bsp.c:512:     frontsector = sub->sector;
	.loc 1 512 17
	movq	%rax, frontsector(%rip)	# _8, frontsector
# r_bsp.c:513:     count = sub->numlines;
	.loc 1 513 16
	movq	-8(%rbp), %rax	# sub, tmp130
	movzwl	8(%rax), %eax	# sub_54->numlines, _9
# r_bsp.c:513:     count = sub->numlines;
	.loc 1 513 11
	cwtl
	movl	%eax, -20(%rbp)	# tmp131, count
# r_bsp.c:514:     line = &segs[sub->firstline];
	.loc 1 514 12
	movq	segs(%rip), %rcx	# segs, segs.49_10
# r_bsp.c:514:     line = &segs[sub->firstline];
	.loc 1 514 21
	movq	-8(%rbp), %rax	# sub, tmp132
	movzwl	10(%rax), %eax	# sub_54->firstline, _11
	movswq	%ax, %rdx	# _11, _12
# r_bsp.c:514:     line = &segs[sub->firstline];
	.loc 1 514 17
	movq	%rdx, %rax	# _12, tmp133
	salq	$3, %rax	#, tmp134
	subq	%rdx, %rax	# _12, tmp133
	salq	$3, %rax	#, tmp135
# r_bsp.c:514:     line = &segs[sub->firstline];
	.loc 1 514 10
	addq	%rcx, %rax	# segs.49_10, tmp136
	movq	%rax, -16(%rbp)	# tmp136, line
# r_bsp.c:516:     if (frontsector->floorheight < viewz)
	.loc 1 516 20
	movq	frontsector(%rip), %rax	# frontsector, frontsector.50_14
	movl	(%rax), %edx	# frontsector.50_14->floorheight, _15
# r_bsp.c:516:     if (frontsector->floorheight < viewz)
	.loc 1 516 34
	movl	viewz(%rip), %eax	# viewz, viewz.51_16
# r_bsp.c:516:     if (frontsector->floorheight < viewz)
	.loc 1 516 8
	cmpl	%eax, %edx	# viewz.51_16, _15
	jge	.L75	#,
# r_bsp.c:520: 				  frontsector->lightlevel);
	.loc 1 520 18
	movq	frontsector(%rip), %rax	# frontsector, frontsector.52_17
	movzwl	12(%rax), %eax	# frontsector.52_17->lightlevel, _18
# r_bsp.c:518: 	floorplane = R_FindPlane (frontsector->floorheight,
	.loc 1 518 15
	movswl	%ax, %edx	# _18, _19
# r_bsp.c:519: 				  frontsector->floorpic,
	.loc 1 519 18
	movq	frontsector(%rip), %rax	# frontsector, frontsector.53_20
	movzwl	8(%rax), %eax	# frontsector.53_20->floorpic, _21
# r_bsp.c:518: 	floorplane = R_FindPlane (frontsector->floorheight,
	.loc 1 518 15
	movswl	%ax, %ecx	# _21, _22
# r_bsp.c:518: 	floorplane = R_FindPlane (frontsector->floorheight,
	.loc 1 518 39
	movq	frontsector(%rip), %rax	# frontsector, frontsector.54_23
# r_bsp.c:518: 	floorplane = R_FindPlane (frontsector->floorheight,
	.loc 1 518 15
	movl	(%rax), %eax	# frontsector.54_23->floorheight, _24
	movl	%ecx, %esi	# _22,
	movl	%eax, %edi	# _24,
	call	R_FindPlane@PLT	#
# r_bsp.c:518: 	floorplane = R_FindPlane (frontsector->floorheight,
	.loc 1 518 13 discriminator 1
	movq	%rax, floorplane(%rip)	# _25, floorplane
	jmp	.L76	#
.L75:
# r_bsp.c:523: 	floorplane = NULL;
	.loc 1 523 13
	movq	$0, floorplane(%rip)	#, floorplane
.L76:
# r_bsp.c:525:     if (frontsector->ceilingheight > viewz 
	.loc 1 525 20
	movq	frontsector(%rip), %rax	# frontsector, frontsector.55_26
	movl	4(%rax), %edx	# frontsector.55_26->ceilingheight, _27
# r_bsp.c:525:     if (frontsector->ceilingheight > viewz 
	.loc 1 525 36
	movl	viewz(%rip), %eax	# viewz, viewz.56_28
# r_bsp.c:525:     if (frontsector->ceilingheight > viewz 
	.loc 1 525 8
	cmpl	%eax, %edx	# viewz.56_28, _27
	jg	.L77	#,
# r_bsp.c:526: 	|| frontsector->ceilingpic == skyflatnum)
	.loc 1 526 16
	movq	frontsector(%rip), %rax	# frontsector, frontsector.57_29
	movzwl	10(%rax), %eax	# frontsector.57_29->ceilingpic, _30
	movswl	%ax, %edx	# _30, _31
# r_bsp.c:526: 	|| frontsector->ceilingpic == skyflatnum)
	.loc 1 526 29
	movl	skyflatnum(%rip), %eax	# skyflatnum, skyflatnum.58_32
# r_bsp.c:526: 	|| frontsector->ceilingpic == skyflatnum)
	.loc 1 526 2
	cmpl	%eax, %edx	# skyflatnum.58_32, _31
	jne	.L78	#,
.L77:
# r_bsp.c:530: 				    frontsector->lightlevel);
	.loc 1 530 20
	movq	frontsector(%rip), %rax	# frontsector, frontsector.59_33
	movzwl	12(%rax), %eax	# frontsector.59_33->lightlevel, _34
# r_bsp.c:528: 	ceilingplane = R_FindPlane (frontsector->ceilingheight,
	.loc 1 528 17
	movswl	%ax, %edx	# _34, _35
# r_bsp.c:529: 				    frontsector->ceilingpic,
	.loc 1 529 20
	movq	frontsector(%rip), %rax	# frontsector, frontsector.60_36
	movzwl	10(%rax), %eax	# frontsector.60_36->ceilingpic, _37
# r_bsp.c:528: 	ceilingplane = R_FindPlane (frontsector->ceilingheight,
	.loc 1 528 17
	movswl	%ax, %ecx	# _37, _38
# r_bsp.c:528: 	ceilingplane = R_FindPlane (frontsector->ceilingheight,
	.loc 1 528 41
	movq	frontsector(%rip), %rax	# frontsector, frontsector.61_39
# r_bsp.c:528: 	ceilingplane = R_FindPlane (frontsector->ceilingheight,
	.loc 1 528 17
	movl	4(%rax), %eax	# frontsector.61_39->ceilingheight, _40
	movl	%ecx, %esi	# _38,
	movl	%eax, %edi	# _40,
	call	R_FindPlane@PLT	#
# r_bsp.c:528: 	ceilingplane = R_FindPlane (frontsector->ceilingheight,
	.loc 1 528 15 discriminator 1
	movq	%rax, ceilingplane(%rip)	# _41, ceilingplane
# r_bsp.c:528: 	ceilingplane = R_FindPlane (frontsector->ceilingheight,
	.loc 1 528 15 is_stmt 0
	jmp	.L79	#
.L78:
# r_bsp.c:533: 	ceilingplane = NULL;
	.loc 1 533 15 is_stmt 1
	movq	$0, ceilingplane(%rip)	#, ceilingplane
.L79:
# r_bsp.c:535:     R_AddSprites (frontsector);	
	.loc 1 535 5
	movq	frontsector(%rip), %rax	# frontsector, frontsector.62_42
	movq	%rax, %rdi	# frontsector.62_42,
	call	R_AddSprites@PLT	#
# r_bsp.c:537:     while (count--)
	.loc 1 537 11
	jmp	.L80	#
.L81:
# r_bsp.c:539: 	R_AddLine (line);
	.loc 1 539 2
	movq	-16(%rbp), %rax	# line, tmp137
	movq	%rax, %rdi	# tmp137,
	call	R_AddLine	#
# r_bsp.c:540: 	line++;
	.loc 1 540 6
	addq	$56, -16(%rbp)	#, line
.L80:
# r_bsp.c:537:     while (count--)
	.loc 1 537 17
	movl	-20(%rbp), %eax	# count, count.63_43
	leal	-1(%rax), %edx	#, tmp138
	movl	%edx, -20(%rbp)	# tmp138, count
# r_bsp.c:537:     while (count--)
	.loc 1 537 12
	testl	%eax, %eax	# count.63_43
	jne	.L81	#,
# r_bsp.c:542: }
	.loc 1 542 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	R_Subsector, .-R_Subsector
	.globl	R_RenderBSPNode
	.type	R_RenderBSPNode, @function
R_RenderBSPNode:
.LFB7:
	.loc 1 553 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# bspnum, bspnum
# r_bsp.c:558:     if (bspnum & NF_SUBSECTOR)
	.loc 1 558 16
	movl	-20(%rbp), %eax	# bspnum, tmp97
	andl	$32768, %eax	#, _1
# r_bsp.c:558:     if (bspnum & NF_SUBSECTOR)
	.loc 1 558 8
	testl	%eax, %eax	# _1
	je	.L83	#,
# r_bsp.c:560: 	if (bspnum == -1)			
	.loc 1 560 5
	cmpl	$-1, -20(%rbp)	#, bspnum
	jne	.L84	#,
# r_bsp.c:561: 	    R_Subsector (0);
	.loc 1 561 6
	movl	$0, %edi	#,
	call	R_Subsector	#
# r_bsp.c:564: 	return;
	.loc 1 564 2
	jmp	.L82	#
.L84:
# r_bsp.c:563: 	    R_Subsector (bspnum&(~NF_SUBSECTOR));
	.loc 1 563 6
	movl	-20(%rbp), %eax	# bspnum, tmp98
	andb	$127, %ah	#, _2
	movl	%eax, %edi	# _2,
	call	R_Subsector	#
# r_bsp.c:564: 	return;
	.loc 1 564 2
	jmp	.L82	#
.L83:
# r_bsp.c:567:     bsp = &nodes[bspnum];
	.loc 1 567 11
	movq	nodes(%rip), %rcx	# nodes, nodes.64_3
# r_bsp.c:567:     bsp = &nodes[bspnum];
	.loc 1 567 17
	movl	-20(%rbp), %eax	# bspnum, tmp99
	movslq	%eax, %rdx	# tmp99, _4
	movq	%rdx, %rax	# _4, tmp100
	addq	%rax, %rax	# tmp100
	addq	%rdx, %rax	# _4, tmp100
	salq	$2, %rax	#, tmp100
	addq	%rdx, %rax	# _4, tmp100
	salq	$2, %rax	#, tmp101
# r_bsp.c:567:     bsp = &nodes[bspnum];
	.loc 1 567 9
	addq	%rcx, %rax	# nodes.64_3, tmp102
	movq	%rax, -8(%rbp)	# tmp102, bsp
# r_bsp.c:570:     side = R_PointOnSide (viewx, viewy, bsp);
	.loc 1 570 12
	movl	viewy(%rip), %ecx	# viewy, viewy.65_6
	movl	viewx(%rip), %eax	# viewx, viewx.66_7
	movq	-8(%rbp), %rdx	# bsp, tmp103
	movl	%ecx, %esi	# viewy.65_6,
	movl	%eax, %edi	# viewx.66_7,
	call	R_PointOnSide@PLT	#
	movl	%eax, -12(%rbp)	# tmp104, side
# r_bsp.c:573:     R_RenderBSPNode (bsp->children[side]); 
	.loc 1 573 35
	movq	-8(%rbp), %rax	# bsp, tmp105
	movl	-12(%rbp), %edx	# side, tmp107
	movslq	%edx, %rdx	# tmp107, tmp106
	addq	$24, %rdx	#, tmp108
	movzwl	(%rax,%rdx,2), %eax	# bsp_20->children[side_22], _8
# r_bsp.c:573:     R_RenderBSPNode (bsp->children[side]); 
	.loc 1 573 5
	movzwl	%ax, %eax	# _8, _9
	movl	%eax, %edi	# _9,
	call	R_RenderBSPNode	#
# r_bsp.c:576:     if (R_CheckBBox (bsp->bbox[side^1]))	
	.loc 1 576 36
	movl	-12(%rbp), %eax	# side, tmp109
	xorl	$1, %eax	#, _10
# r_bsp.c:576:     if (R_CheckBBox (bsp->bbox[side^1]))	
	.loc 1 576 31
	cltq
	addq	$1, %rax	#, tmp111
	salq	$4, %rax	#, tmp111
	movq	%rax, %rdx	# tmp111, tmp112
	movq	-8(%rbp), %rax	# bsp, tmp113
	addq	%rdx, %rax	# tmp112, _11
# r_bsp.c:576:     if (R_CheckBBox (bsp->bbox[side^1]))	
	.loc 1 576 9
	movq	%rax, %rdi	# _11,
	call	R_CheckBBox	#
# r_bsp.c:576:     if (R_CheckBBox (bsp->bbox[side^1]))	
	.loc 1 576 8 discriminator 1
	testl	%eax, %eax	# _12
	je	.L82	#,
# r_bsp.c:577: 	R_RenderBSPNode (bsp->children[side^1]);
	.loc 1 577 37
	movl	-12(%rbp), %eax	# side, tmp114
	xorl	$1, %eax	#, tmp114
	movl	%eax, %edx	# tmp114, _13
# r_bsp.c:577: 	R_RenderBSPNode (bsp->children[side^1]);
	.loc 1 577 32
	movq	-8(%rbp), %rax	# bsp, tmp115
	movslq	%edx, %rdx	# _13, tmp116
	addq	$24, %rdx	#, tmp117
	movzwl	(%rax,%rdx,2), %eax	# bsp_20->children[_13], _14
# r_bsp.c:577: 	R_RenderBSPNode (bsp->children[side^1]);
	.loc 1 577 2
	movzwl	%ax, %eax	# _14, _15
	movl	%eax, %edi	# _15,
	call	R_RenderBSPNode	#
.L82:
# r_bsp.c:578: }
	.loc 1 578 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	R_RenderBSPNode, .-R_RenderBSPNode
.Letext0:
	.file 2 "doomdef.h"
	.file 3 "m_fixed.h"
	.file 4 "m_bbox.h"
	.file 5 "doomtype.h"
	.file 6 "d_ticcmd.h"
	.file 7 "tables.h"
	.file 8 "d_think.h"
	.file 9 "info.h"
	.file 10 "p_pspr.h"
	.file 11 "doomdata.h"
	.file 12 "p_mobj.h"
	.file 13 "r_defs.h"
	.file 14 "d_player.h"
	.file 15 "r_state.h"
	.file 16 "doomstat.h"
	.file 17 "r_main.h"
	.file 18 "r_plane.h"
	.file 19 "r_things.h"
	.file 20 "i_system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3603
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x26
	.long	.LASF1542
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x8
	.long	0x51
	.long	0x3e
	.uleb128 0x9
	.long	0x43
	.byte	0x2f
	.byte	0
	.uleb128 0x1e
	.long	0x2e
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x1e
	.long	0x4a
	.uleb128 0x14
	.long	.LASF1518
	.byte	0x1a
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x27
	.byte	0x8
	.uleb128 0xe
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0xe
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0xe
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x28
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x5
	.long	0x4a
	.uleb128 0xd
	.long	0x6b
	.byte	0x2
	.byte	0xa3
	.byte	0x1
	.long	0xda
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
	.uleb128 0xd
	.long	0x6b
	.byte	0x2
	.byte	0xb5
	.byte	0x1
	.long	0x129
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
	.long	.LASF41
	.byte	0x2
	.byte	0xc5
	.byte	0x3
	.long	0xda
	.uleb128 0xd
	.long	0x6b
	.byte	0x2
	.byte	0xca
	.byte	0x1
	.long	0x166
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
	.uleb128 0xd
	.long	0x6b
	.byte	0x2
	.byte	0xd7
	.byte	0x1
	.long	0x19d
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
	.uleb128 0x6
	.long	.LASF42
	.byte	0x3
	.byte	0x26
	.byte	0xd
	.long	0x90
	.uleb128 0xd
	.long	0x6b
	.byte	0x4
	.byte	0x21
	.byte	0x1
	.long	0x1ce
	.uleb128 0x2
	.long	.LASF43
	.byte	0
	.uleb128 0x2
	.long	.LASF44
	.byte	0x1
	.uleb128 0x2
	.long	.LASF45
	.byte	0x2
	.uleb128 0x2
	.long	.LASF46
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.long	0x6b
	.byte	0x5
	.byte	0x22
	.byte	0xe
	.long	0x1e7
	.uleb128 0x2
	.long	.LASF47
	.byte	0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.long	.LASF49
	.byte	0x5
	.byte	0x22
	.byte	0x1c
	.long	0x1ce
	.uleb128 0x6
	.long	.LASF50
	.byte	0x5
	.byte	0x24
	.byte	0x17
	.long	0x74
	.uleb128 0x10
	.byte	0x8
	.byte	0x6
	.byte	0x24
	.long	0x256
	.uleb128 0x3
	.long	.LASF51
	.byte	0x6
	.byte	0x26
	.byte	0xa
	.long	0x4a
	.byte	0
	.uleb128 0x3
	.long	.LASF52
	.byte	0x6
	.byte	0x27
	.byte	0xa
	.long	0x4a
	.byte	0x1
	.uleb128 0x3
	.long	.LASF53
	.byte	0x6
	.byte	0x28
	.byte	0xb
	.long	0x89
	.byte	0x2
	.uleb128 0x3
	.long	.LASF54
	.byte	0x6
	.byte	0x29
	.byte	0xb
	.long	0x89
	.byte	0x4
	.uleb128 0x3
	.long	.LASF55
	.byte	0x6
	.byte	0x2a
	.byte	0xa
	.long	0x1f3
	.byte	0x6
	.uleb128 0x3
	.long	.LASF56
	.byte	0x6
	.byte	0x2b
	.byte	0xa
	.long	0x1f3
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.long	.LASF57
	.byte	0x6
	.byte	0x2c
	.byte	0x3
	.long	0x1ff
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.long	.LASF58
	.uleb128 0xe
	.byte	0x8
	.byte	0x4
	.long	.LASF59
	.uleb128 0x5
	.long	0x19d
	.uleb128 0x6
	.long	.LASF60
	.byte	0x7
	.byte	0x4e
	.byte	0x12
	.long	0x6b
	.uleb128 0x6
	.long	.LASF61
	.byte	0x8
	.byte	0x29
	.byte	0x11
	.long	0x28d
	.uleb128 0x5
	.long	0x292
	.uleb128 0x29
	.long	0x299
	.uleb128 0x1f
	.byte	0
	.uleb128 0x6
	.long	.LASF62
	.byte	0x8
	.byte	0x2a
	.byte	0x11
	.long	0x2a5
	.uleb128 0x5
	.long	0x2aa
	.uleb128 0x20
	.long	0x2b5
	.uleb128 0xa
	.long	0x72
	.byte	0
	.uleb128 0x6
	.long	.LASF63
	.byte	0x8
	.byte	0x2b
	.byte	0x11
	.long	0x2c1
	.uleb128 0x5
	.long	0x2c6
	.uleb128 0x20
	.long	0x2d6
	.uleb128 0xa
	.long	0x72
	.uleb128 0xa
	.long	0x72
	.byte	0
	.uleb128 0x2a
	.byte	0x8
	.byte	0x8
	.byte	0x2d
	.byte	0x9
	.long	0x300
	.uleb128 0x21
	.long	.LASF64
	.byte	0x2f
	.long	0x299
	.uleb128 0x2b
	.string	"acv"
	.byte	0x8
	.byte	0x30
	.byte	0xd
	.long	0x281
	.uleb128 0x21
	.long	.LASF65
	.byte	0x31
	.long	0x2b5
	.byte	0
	.uleb128 0x6
	.long	.LASF66
	.byte	0x8
	.byte	0x33
	.byte	0x3
	.long	0x2d6
	.uleb128 0x6
	.long	.LASF67
	.byte	0x8
	.byte	0x3c
	.byte	0x14
	.long	0x300
	.uleb128 0x15
	.long	.LASF1361
	.byte	0x18
	.byte	0x8
	.byte	0x40
	.long	0x34c
	.uleb128 0x3
	.long	.LASF68
	.byte	0x8
	.byte	0x42
	.byte	0x17
	.long	0x34c
	.byte	0
	.uleb128 0x3
	.long	.LASF69
	.byte	0x8
	.byte	0x43
	.byte	0x17
	.long	0x34c
	.byte	0x8
	.uleb128 0x3
	.long	.LASF70
	.byte	0x8
	.byte	0x44
	.byte	0xe
	.long	0x30c
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	0x318
	.uleb128 0x6
	.long	.LASF71
	.byte	0x8
	.byte	0x46
	.byte	0x3
	.long	0x318
	.uleb128 0xd
	.long	0x6b
	.byte	0x9
	.byte	0x1f
	.byte	0x1
	.long	0x6ac
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
	.long	0x35d
	.uleb128 0xd
	.long	0x6b
	.byte	0x9
	.byte	0xaf
	.byte	0x1
	.long	0x203d
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
	.long	0x6b8
	.uleb128 0x18
	.byte	0x38
	.byte	0x9
	.value	0x47b
	.long	0x20b5
	.uleb128 0x4
	.long	.LASF1181
	.byte	0x9
	.value	0x47d
	.byte	0xf
	.long	0x6ac
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
	.long	0x300
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1185
	.byte	0x9
	.value	0x482
	.byte	0x10
	.long	0x203d
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
	.long	0x2049
	.uleb128 0x2c
	.byte	0x7
	.byte	0x4
	.long	0x6b
	.byte	0x9
	.value	0x48b
	.byte	0xe
	.long	0x240d
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
	.long	0x20c1
	.uleb128 0x18
	.byte	0x5c
	.byte	0x9
	.value	0x519
	.long	0x2565
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
	.long	0x2419
	.uleb128 0xd
	.long	0x6b
	.byte	0xa
	.byte	0x3d
	.byte	0x1
	.long	0x2590
	.uleb128 0x2
	.long	.LASF1352
	.byte	0
	.uleb128 0x2
	.long	.LASF1353
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1354
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.byte	0x18
	.byte	0xa
	.byte	0x44
	.long	0x25cb
	.uleb128 0x3
	.long	.LASF1355
	.byte	0xa
	.byte	0x46
	.byte	0xe
	.long	0x25cb
	.byte	0
	.uleb128 0x3
	.long	.LASF1183
	.byte	0xa
	.byte	0x47
	.byte	0xa
	.long	0x90
	.byte	0x8
	.uleb128 0x7
	.string	"sx"
	.byte	0xa
	.byte	0x48
	.byte	0xd
	.long	0x19d
	.byte	0xc
	.uleb128 0x7
	.string	"sy"
	.byte	0xa
	.byte	0x49
	.byte	0xd
	.long	0x19d
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	0x20b5
	.uleb128 0x6
	.long	.LASF1356
	.byte	0xa
	.byte	0x4b
	.byte	0x3
	.long	0x2590
	.uleb128 0x8
	.long	0x89
	.long	0x25ec
	.uleb128 0x9
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.long	0x7b
	.long	0x25fc
	.uleb128 0x9
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.byte	0xa
	.byte	0xb
	.byte	0xcb
	.long	0x2642
	.uleb128 0x7
	.string	"x"
	.byte	0xb
	.byte	0xcd
	.byte	0xc
	.long	0x89
	.byte	0
	.uleb128 0x7
	.string	"y"
	.byte	0xb
	.byte	0xce
	.byte	0xc
	.long	0x89
	.byte	0x2
	.uleb128 0x3
	.long	.LASF1357
	.byte	0xb
	.byte	0xcf
	.byte	0xc
	.long	0x89
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1358
	.byte	0xb
	.byte	0xd0
	.byte	0xc
	.long	0x89
	.byte	0x6
	.uleb128 0x3
	.long	.LASF1359
	.byte	0xb
	.byte	0xd1
	.byte	0xc
	.long	0x89
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	.LASF1360
	.byte	0xb
	.byte	0xd2
	.byte	0x3
	.long	0x25fc
	.uleb128 0x15
	.long	.LASF1362
	.byte	0xe0
	.byte	0xc
	.byte	0xcf
	.long	0x2825
	.uleb128 0x3
	.long	.LASF1363
	.byte	0xc
	.byte	0xd2
	.byte	0x10
	.long	0x351
	.byte	0
	.uleb128 0x7
	.string	"x"
	.byte	0xc
	.byte	0xd5
	.byte	0xe
	.long	0x19d
	.byte	0x18
	.uleb128 0x7
	.string	"y"
	.byte	0xc
	.byte	0xd6
	.byte	0xe
	.long	0x19d
	.byte	0x1c
	.uleb128 0x7
	.string	"z"
	.byte	0xc
	.byte	0xd7
	.byte	0xe
	.long	0x19d
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1364
	.byte	0xc
	.byte	0xda
	.byte	0x14
	.long	0x2825
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1365
	.byte	0xc
	.byte	0xdb
	.byte	0x14
	.long	0x2825
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1357
	.byte	0xc
	.byte	0xde
	.byte	0xe
	.long	0x275
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1181
	.byte	0xc
	.byte	0xdf
	.byte	0x12
	.long	0x6ac
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1182
	.byte	0xc
	.byte	0xe0
	.byte	0xb
	.long	0x90
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1366
	.byte	0xc
	.byte	0xe4
	.byte	0x14
	.long	0x2825
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1367
	.byte	0xc
	.byte	0xe5
	.byte	0x14
	.long	0x2825
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1368
	.byte	0xc
	.byte	0xe7
	.byte	0x19
	.long	0x285e
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1369
	.byte	0xc
	.byte	0xea
	.byte	0xe
	.long	0x19d
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1370
	.byte	0xc
	.byte	0xeb
	.byte	0xe
	.long	0x19d
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1344
	.byte	0xc
	.byte	0xee
	.byte	0xe
	.long	0x19d
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1345
	.byte	0xc
	.byte	0xef
	.byte	0xe
	.long	0x19d
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1371
	.byte	0xc
	.byte	0xf2
	.byte	0xe
	.long	0x19d
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1372
	.byte	0xc
	.byte	0xf3
	.byte	0xe
	.long	0x19d
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1373
	.byte	0xc
	.byte	0xf4
	.byte	0xe
	.long	0x19d
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1374
	.byte	0xc
	.byte	0xf7
	.byte	0xb
	.long	0x90
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1358
	.byte	0xc
	.byte	0xf9
	.byte	0x11
	.long	0x240d
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1375
	.byte	0xc
	.byte	0xfa
	.byte	0x12
	.long	0x2863
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1183
	.byte	0xc
	.byte	0xfc
	.byte	0xb
	.long	0x90
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1355
	.byte	0xc
	.byte	0xfd
	.byte	0xf
	.long	0x25cb
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1349
	.byte	0xc
	.byte	0xfe
	.byte	0xb
	.long	0x90
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1376
	.byte	0xc
	.byte	0xff
	.byte	0xb
	.long	0x90
	.byte	0xa4
	.uleb128 0x4
	.long	.LASF1377
	.byte	0xc
	.value	0x102
	.byte	0xb
	.long	0x90
	.byte	0xa8
	.uleb128 0x4
	.long	.LASF1378
	.byte	0xc
	.value	0x103
	.byte	0xb
	.long	0x90
	.byte	0xac
	.uleb128 0x4
	.long	.LASF1379
	.byte	0xc
	.value	0x107
	.byte	0x14
	.long	0x2825
	.byte	0xb0
	.uleb128 0x4
	.long	.LASF1333
	.byte	0xc
	.value	0x10b
	.byte	0xb
	.long	0x90
	.byte	0xb8
	.uleb128 0x4
	.long	.LASF1380
	.byte	0xc
	.value	0x10f
	.byte	0xb
	.long	0x90
	.byte	0xbc
	.uleb128 0x4
	.long	.LASF1381
	.byte	0xc
	.value	0x113
	.byte	0x16
	.long	0x2a3d
	.byte	0xc0
	.uleb128 0x4
	.long	.LASF1382
	.byte	0xc
	.value	0x116
	.byte	0xb
	.long	0x90
	.byte	0xc8
	.uleb128 0x4
	.long	.LASF1383
	.byte	0xc
	.value	0x119
	.byte	0x11
	.long	0x2642
	.byte	0xcc
	.uleb128 0x4
	.long	.LASF1384
	.byte	0xc
	.value	0x11c
	.byte	0x14
	.long	0x2825
	.byte	0xd8
	.byte	0
	.uleb128 0x5
	.long	0x264e
	.uleb128 0x15
	.long	.LASF1385
	.byte	0x10
	.byte	0xd
	.byte	0xe3
	.long	0x285e
	.uleb128 0x3
	.long	.LASF1386
	.byte	0xd
	.byte	0xe5
	.byte	0xf
	.long	0x2d41
	.byte	0
	.uleb128 0x3
	.long	.LASF1387
	.byte	0xd
	.byte	0xe6
	.byte	0xb
	.long	0x89
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1388
	.byte	0xd
	.byte	0xe7
	.byte	0xb
	.long	0x89
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0x282a
	.uleb128 0x5
	.long	0x2565
	.uleb128 0x2d
	.long	.LASF1389
	.value	0x140
	.byte	0xe
	.byte	0x53
	.byte	0x10
	.long	0x2a3d
	.uleb128 0x7
	.string	"mo"
	.byte	0xe
	.byte	0x55
	.byte	0xe
	.long	0x2a79
	.byte	0
	.uleb128 0x3
	.long	.LASF1390
	.byte	0xe
	.byte	0x56
	.byte	0x13
	.long	0x2a6d
	.byte	0x8
	.uleb128 0x7
	.string	"cmd"
	.byte	0xe
	.byte	0x57
	.byte	0xf
	.long	0x256
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1391
	.byte	0xe
	.byte	0x5c
	.byte	0xe
	.long	0x19d
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1392
	.byte	0xe
	.byte	0x5e
	.byte	0xe
	.long	0x19d
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1393
	.byte	0xe
	.byte	0x60
	.byte	0x16
	.long	0x19d
	.byte	0x1c
	.uleb128 0x7
	.string	"bob"
	.byte	0xe
	.byte	0x62
	.byte	0x16
	.long	0x19d
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1376
	.byte	0xe
	.byte	0x66
	.byte	0xb
	.long	0x90
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1394
	.byte	0xe
	.byte	0x67
	.byte	0xb
	.long	0x90
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1395
	.byte	0xe
	.byte	0x69
	.byte	0xb
	.long	0x90
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1396
	.byte	0xe
	.byte	0x6c
	.byte	0xb
	.long	0x2a7e
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1397
	.byte	0xe
	.byte	0x6d
	.byte	0xe
	.long	0x2a8e
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1398
	.byte	0xe
	.byte	0x6e
	.byte	0xe
	.long	0x1e7
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1399
	.byte	0xe
	.byte	0x71
	.byte	0xb
	.long	0x2a9e
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1400
	.byte	0xe
	.byte	0x72
	.byte	0x12
	.long	0x129
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1401
	.byte	0xe
	.byte	0x75
	.byte	0x12
	.long	0x129
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1402
	.byte	0xe
	.byte	0x77
	.byte	0xe
	.long	0x2aae
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1403
	.byte	0xe
	.byte	0x78
	.byte	0xb
	.long	0x2a9e
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1404
	.byte	0xe
	.byte	0x79
	.byte	0xb
	.long	0x2a9e
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1405
	.byte	0xe
	.byte	0x7c
	.byte	0xb
	.long	0x90
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1406
	.byte	0xe
	.byte	0x7d
	.byte	0xb
	.long	0x90
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1407
	.byte	0xe
	.byte	0x81
	.byte	0xb
	.long	0x90
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1408
	.byte	0xe
	.byte	0x84
	.byte	0xb
	.long	0x90
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1409
	.byte	0xe
	.byte	0x87
	.byte	0xb
	.long	0x90
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1410
	.byte	0xe
	.byte	0x88
	.byte	0xb
	.long	0x90
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1411
	.byte	0xe
	.byte	0x89
	.byte	0xb
	.long	0x90
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1412
	.byte	0xe
	.byte	0x8c
	.byte	0xc
	.long	0x9e
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1413
	.byte	0xe
	.byte	0x8f
	.byte	0xb
	.long	0x90
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1414
	.byte	0xe
	.byte	0x90
	.byte	0xb
	.long	0x90
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1415
	.byte	0xe
	.byte	0x93
	.byte	0xe
	.long	0x2a79
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1416
	.byte	0xe
	.byte	0x96
	.byte	0xb
	.long	0x90
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1417
	.byte	0xe
	.byte	0x9a
	.byte	0xb
	.long	0x90
	.byte	0xfc
	.uleb128 0x19
	.long	.LASF1418
	.byte	0x9e
	.byte	0xb
	.long	0x90
	.value	0x100
	.uleb128 0x19
	.long	.LASF1419
	.byte	0xa1
	.byte	0xf
	.long	0x2abe
	.value	0x108
	.uleb128 0x19
	.long	.LASF1420
	.byte	0xa4
	.byte	0xe
	.long	0x1e7
	.value	0x138
	.byte	0
	.uleb128 0x5
	.long	0x2868
	.uleb128 0x11
	.long	.LASF1421
	.byte	0xc
	.value	0x11e
	.long	0x264e
	.uleb128 0xd
	.long	0x6b
	.byte	0xe
	.byte	0x36
	.byte	0x1
	.long	0x2a6d
	.uleb128 0x2
	.long	.LASF1422
	.byte	0
	.uleb128 0x2
	.long	.LASF1423
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1424
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.long	.LASF1425
	.byte	0xe
	.byte	0x3e
	.byte	0x3
	.long	0x2a4e
	.uleb128 0x5
	.long	0x2a42
	.uleb128 0x8
	.long	0x90
	.long	0x2a8e
	.uleb128 0x9
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.long	0x1e7
	.long	0x2a9e
	.uleb128 0x9
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.long	0x90
	.long	0x2aae
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0x1e7
	.long	0x2abe
	.uleb128 0x9
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x25d0
	.long	0x2ace
	.uleb128 0x9
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.byte	0xd
	.byte	0x47
	.long	0x2aed
	.uleb128 0x7
	.string	"x"
	.byte	0xd
	.byte	0x49
	.byte	0xd
	.long	0x19d
	.byte	0
	.uleb128 0x7
	.string	"y"
	.byte	0xd
	.byte	0x4a
	.byte	0xd
	.long	0x19d
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	.LASF1426
	.byte	0xd
	.byte	0x4c
	.byte	0x3
	.long	0x2ace
	.uleb128 0x10
	.byte	0x28
	.byte	0xd
	.byte	0x58
	.long	0x2b30
	.uleb128 0x3
	.long	.LASF1363
	.byte	0xd
	.byte	0x5a
	.byte	0x10
	.long	0x351
	.byte	0
	.uleb128 0x7
	.string	"x"
	.byte	0xd
	.byte	0x5b
	.byte	0xe
	.long	0x19d
	.byte	0x18
	.uleb128 0x7
	.string	"y"
	.byte	0xd
	.byte	0x5c
	.byte	0xe
	.long	0x19d
	.byte	0x1c
	.uleb128 0x7
	.string	"z"
	.byte	0xd
	.byte	0x5d
	.byte	0xe
	.long	0x19d
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.long	.LASF1427
	.byte	0xd
	.byte	0x5f
	.byte	0x3
	.long	0x2af9
	.uleb128 0x10
	.byte	0x80
	.byte	0xd
	.byte	0x65
	.long	0x2c15
	.uleb128 0x3
	.long	.LASF1428
	.byte	0xd
	.byte	0x67
	.byte	0xd
	.long	0x19d
	.byte	0
	.uleb128 0x3
	.long	.LASF1429
	.byte	0xd
	.byte	0x68
	.byte	0xd
	.long	0x19d
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1430
	.byte	0xd
	.byte	0x69
	.byte	0xb
	.long	0x89
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1431
	.byte	0xd
	.byte	0x6a
	.byte	0xb
	.long	0x89
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1432
	.byte	0xd
	.byte	0x6b
	.byte	0xb
	.long	0x89
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1433
	.byte	0xd
	.byte	0x6c
	.byte	0xb
	.long	0x89
	.byte	0xe
	.uleb128 0x7
	.string	"tag"
	.byte	0xd
	.byte	0x6d
	.byte	0xb
	.long	0x89
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1434
	.byte	0xd
	.byte	0x70
	.byte	0xa
	.long	0x90
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1435
	.byte	0xd
	.byte	0x73
	.byte	0xd
	.long	0x2a79
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1436
	.byte	0xd
	.byte	0x76
	.byte	0xa
	.long	0x2a9e
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1437
	.byte	0xd
	.byte	0x79
	.byte	0x11
	.long	0x2b30
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1374
	.byte	0xd
	.byte	0x7c
	.byte	0xa
	.long	0x90
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1438
	.byte	0xd
	.byte	0x7f
	.byte	0xd
	.long	0x2a79
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1439
	.byte	0xd
	.byte	0x82
	.byte	0xb
	.long	0x72
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1440
	.byte	0xd
	.byte	0x84
	.byte	0xb
	.long	0x90
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1441
	.byte	0xd
	.byte	0x85
	.byte	0x15
	.long	0x2cd4
	.byte	0x78
	.byte	0
	.uleb128 0x15
	.long	.LASF1442
	.byte	0x58
	.byte	0xd
	.byte	0xb3
	.long	0x2cd4
	.uleb128 0x7
	.string	"v1"
	.byte	0xd
	.byte	0xb6
	.byte	0xf
	.long	0x2d83
	.byte	0
	.uleb128 0x7
	.string	"v2"
	.byte	0xd
	.byte	0xb7
	.byte	0xf
	.long	0x2d83
	.byte	0x8
	.uleb128 0x7
	.string	"dx"
	.byte	0xd
	.byte	0xba
	.byte	0xd
	.long	0x19d
	.byte	0x10
	.uleb128 0x7
	.string	"dy"
	.byte	0xd
	.byte	0xbb
	.byte	0xd
	.long	0x19d
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1349
	.byte	0xd
	.byte	0xbe
	.byte	0xb
	.long	0x89
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1433
	.byte	0xd
	.byte	0xbf
	.byte	0xb
	.long	0x89
	.byte	0x1a
	.uleb128 0x7
	.string	"tag"
	.byte	0xd
	.byte	0xc0
	.byte	0xb
	.long	0x89
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1443
	.byte	0xd
	.byte	0xc4
	.byte	0xb
	.long	0x25dc
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1444
	.byte	0xd
	.byte	0xc8
	.byte	0xd
	.long	0x2d88
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1445
	.byte	0xd
	.byte	0xcb
	.byte	0x11
	.long	0x2d77
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1446
	.byte	0xd
	.byte	0xcf
	.byte	0xf
	.long	0x2d41
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1447
	.byte	0xd
	.byte	0xd0
	.byte	0xf
	.long	0x2d41
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1374
	.byte	0xd
	.byte	0xd3
	.byte	0xa
	.long	0x90
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1439
	.byte	0xd
	.byte	0xd6
	.byte	0xb
	.long	0x72
	.byte	0x50
	.byte	0
	.uleb128 0x5
	.long	0x2cd9
	.uleb128 0x5
	.long	0x2c15
	.uleb128 0x6
	.long	.LASF1448
	.byte	0xd
	.byte	0x87
	.byte	0x3
	.long	0x2b3c
	.uleb128 0x10
	.byte	0x18
	.byte	0xd
	.byte	0x90
	.long	0x2d41
	.uleb128 0x3
	.long	.LASF1449
	.byte	0xd
	.byte	0x93
	.byte	0xd
	.long	0x19d
	.byte	0
	.uleb128 0x3
	.long	.LASF1450
	.byte	0xd
	.byte	0x96
	.byte	0xd
	.long	0x19d
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1451
	.byte	0xd
	.byte	0x9a
	.byte	0xb
	.long	0x89
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1452
	.byte	0xd
	.byte	0x9b
	.byte	0xb
	.long	0x89
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1453
	.byte	0xd
	.byte	0x9c
	.byte	0xb
	.long	0x89
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1386
	.byte	0xd
	.byte	0x9f
	.byte	0xf
	.long	0x2d41
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	0x2cde
	.uleb128 0x6
	.long	.LASF1454
	.byte	0xd
	.byte	0xa1
	.byte	0x3
	.long	0x2cea
	.uleb128 0xd
	.long	0x6b
	.byte	0xd
	.byte	0xa9
	.byte	0x1
	.long	0x2d77
	.uleb128 0x2
	.long	.LASF1455
	.byte	0
	.uleb128 0x2
	.long	.LASF1456
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1457
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1458
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF1459
	.byte	0xd
	.byte	0xaf
	.byte	0x3
	.long	0x2d52
	.uleb128 0x5
	.long	0x2aed
	.uleb128 0x8
	.long	0x19d
	.long	0x2d98
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF1460
	.byte	0xd
	.byte	0xd7
	.byte	0x3
	.long	0x2c15
	.uleb128 0x6
	.long	.LASF1461
	.byte	0xd
	.byte	0xe9
	.byte	0x3
	.long	0x282a
	.uleb128 0x10
	.byte	0x38
	.byte	0xd
	.byte	0xf0
	.long	0x2e20
	.uleb128 0x7
	.string	"v1"
	.byte	0xd
	.byte	0xf2
	.byte	0xf
	.long	0x2d83
	.byte	0
	.uleb128 0x7
	.string	"v2"
	.byte	0xd
	.byte	0xf3
	.byte	0xf
	.long	0x2d83
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1462
	.byte	0xd
	.byte	0xf5
	.byte	0xd
	.long	0x19d
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1357
	.byte	0xd
	.byte	0xf7
	.byte	0xd
	.long	0x275
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1463
	.byte	0xd
	.byte	0xf9
	.byte	0xd
	.long	0x2e20
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1464
	.byte	0xd
	.byte	0xfa
	.byte	0xd
	.long	0x2e25
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1446
	.byte	0xd
	.byte	0xff
	.byte	0xf
	.long	0x2d41
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1447
	.byte	0xd
	.value	0x100
	.byte	0xf
	.long	0x2d41
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.long	0x2d46
	.uleb128 0x5
	.long	0x2d98
	.uleb128 0x11
	.long	.LASF1465
	.byte	0xd
	.value	0x102
	.long	0x2db0
	.uleb128 0x18
	.byte	0x34
	.byte	0xd
	.value	0x109
	.long	0x2e8a
	.uleb128 0x13
	.string	"x"
	.value	0x10c
	.byte	0xd
	.long	0x19d
	.byte	0
	.uleb128 0x13
	.string	"y"
	.value	0x10d
	.byte	0xd
	.long	0x19d
	.byte	0x4
	.uleb128 0x13
	.string	"dx"
	.value	0x10e
	.byte	0xd
	.long	0x19d
	.byte	0x8
	.uleb128 0x13
	.string	"dy"
	.value	0x10f
	.byte	0xd
	.long	0x19d
	.byte	0xc
	.uleb128 0x4
	.long	.LASF1444
	.byte	0xd
	.value	0x112
	.byte	0xd
	.long	0x2e8a
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1466
	.byte	0xd
	.value	0x115
	.byte	0x14
	.long	0x25ec
	.byte	0x30
	.byte	0
	.uleb128 0x8
	.long	0x19d
	.long	0x2ea0
	.uleb128 0x9
	.long	0x43
	.byte	0x1
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.long	.LASF1467
	.byte	0xd
	.value	0x117
	.long	0x2e36
	.uleb128 0x2e
	.long	.LASF1468
	.byte	0x40
	.byte	0xd
	.value	0x142
	.byte	0x10
	.long	0x2f5f
	.uleb128 0x4
	.long	.LASF1469
	.byte	0xd
	.value	0x144
	.byte	0xd
	.long	0x2f5f
	.byte	0
	.uleb128 0x13
	.string	"x1"
	.value	0x145
	.byte	0xb
	.long	0x90
	.byte	0x8
	.uleb128 0x13
	.string	"x2"
	.value	0x146
	.byte	0xb
	.long	0x90
	.byte	0xc
	.uleb128 0x4
	.long	.LASF1470
	.byte	0xd
	.value	0x148
	.byte	0xe
	.long	0x19d
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1471
	.byte	0xd
	.value	0x149
	.byte	0xe
	.long	0x19d
	.byte	0x14
	.uleb128 0x4
	.long	.LASF1472
	.byte	0xd
	.value	0x14a
	.byte	0xe
	.long	0x19d
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1473
	.byte	0xd
	.value	0x14d
	.byte	0xb
	.long	0x90
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF1474
	.byte	0xd
	.value	0x150
	.byte	0xe
	.long	0x19d
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1475
	.byte	0xd
	.value	0x153
	.byte	0xe
	.long	0x19d
	.byte	0x24
	.uleb128 0x4
	.long	.LASF1476
	.byte	0xd
	.value	0x157
	.byte	0xd
	.long	0x2f64
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1477
	.byte	0xd
	.value	0x158
	.byte	0xd
	.long	0x2f64
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1478
	.byte	0xd
	.value	0x159
	.byte	0xd
	.long	0x2f64
	.byte	0x38
	.byte	0
	.uleb128 0x5
	.long	0x2e2a
	.uleb128 0x5
	.long	0x89
	.uleb128 0x11
	.long	.LASF1479
	.byte	0xd
	.value	0x15b
	.long	0x2eac
	.uleb128 0x2f
	.value	0x298
	.byte	0xd
	.value	0x1cc
	.byte	0x9
	.long	0x3016
	.uleb128 0x4
	.long	.LASF1345
	.byte	0xd
	.value	0x1ce
	.byte	0xc
	.long	0x19d
	.byte	0
	.uleb128 0x4
	.long	.LASF1480
	.byte	0xd
	.value	0x1cf
	.byte	0x9
	.long	0x90
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1432
	.byte	0xd
	.value	0x1d0
	.byte	0x9
	.long	0x90
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1481
	.byte	0xd
	.value	0x1d1
	.byte	0x9
	.long	0x90
	.byte	0xc
	.uleb128 0x4
	.long	.LASF1482
	.byte	0xd
	.value	0x1d2
	.byte	0x9
	.long	0x90
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1483
	.byte	0xd
	.value	0x1d6
	.byte	0x9
	.long	0x1f3
	.byte	0x14
	.uleb128 0x13
	.string	"top"
	.value	0x1d9
	.byte	0x9
	.long	0x3016
	.byte	0x15
	.uleb128 0x16
	.long	.LASF1484
	.value	0x1da
	.long	0x1f3
	.value	0x155
	.uleb128 0x16
	.long	.LASF1485
	.value	0x1db
	.long	0x1f3
	.value	0x156
	.uleb128 0x16
	.long	.LASF1486
	.value	0x1dd
	.long	0x3016
	.value	0x157
	.uleb128 0x16
	.long	.LASF1487
	.value	0x1de
	.long	0x1f3
	.value	0x297
	.byte	0
	.uleb128 0x8
	.long	0x1f3
	.long	0x3027
	.uleb128 0x22
	.long	0x43
	.value	0x13f
	.byte	0
	.uleb128 0x11
	.long	.LASF1488
	.byte	0xd
	.value	0x1e0
	.long	0x2f75
	.uleb128 0xb
	.long	.LASF1489
	.byte	0x36
	.byte	0xd
	.long	0x90
	.uleb128 0xb
	.long	.LASF1490
	.byte	0x52
	.byte	0x10
	.long	0x2f5f
	.uleb128 0xb
	.long	.LASF1491
	.byte	0x57
	.byte	0xd
	.long	0x90
	.uleb128 0xb
	.long	.LASF1492
	.byte	0x58
	.byte	0x15
	.long	0x305f
	.uleb128 0x5
	.long	0x2da4
	.uleb128 0xb
	.long	.LASF1493
	.byte	0x5b
	.byte	0x11
	.long	0x306f
	.uleb128 0x5
	.long	0x2ea0
	.uleb128 0xb
	.long	.LASF1494
	.byte	0x67
	.byte	0x11
	.long	0x19d
	.uleb128 0xb
	.long	.LASF1495
	.byte	0x68
	.byte	0x11
	.long	0x19d
	.uleb128 0xb
	.long	.LASF1391
	.byte	0x69
	.byte	0x11
	.long	0x19d
	.uleb128 0xb
	.long	.LASF1496
	.byte	0x6b
	.byte	0x11
	.long	0x275
	.uleb128 0xb
	.long	.LASF1497
	.byte	0x70
	.byte	0x11
	.long	0x275
	.uleb128 0x8
	.long	0x90
	.long	0x30bc
	.uleb128 0x22
	.long	0x43
	.value	0xfff
	.byte	0
	.uleb128 0xb
	.long	.LASF1498
	.byte	0x72
	.byte	0xd
	.long	0x30ab
	.uleb128 0xb
	.long	.LASF1499
	.byte	0x7c
	.byte	0xd
	.long	0x90
	.uleb128 0xb
	.long	.LASF1500
	.byte	0x7f
	.byte	0xd
	.long	0x90
	.uleb128 0xb
	.long	.LASF1501
	.byte	0x81
	.byte	0x14
	.long	0x30e8
	.uleb128 0x5
	.long	0x3027
	.uleb128 0xb
	.long	.LASF1502
	.byte	0x82
	.byte	0x14
	.long	0x30e8
	.uleb128 0x30
	.long	.LASF1503
	.byte	0x10
	.value	0x10b
	.byte	0xd
	.long	0x90
	.uleb128 0x12
	.long	.LASF1469
	.byte	0x2f
	.byte	0x9
	.long	0x2f5f
	.uleb128 0x9
	.byte	0x3
	.quad	curline
	.uleb128 0x12
	.long	.LASF1463
	.byte	0x30
	.byte	0xa
	.long	0x2e20
	.uleb128 0x9
	.byte	0x3
	.quad	sidedef
	.uleb128 0x12
	.long	.LASF1464
	.byte	0x31
	.byte	0xa
	.long	0x2e25
	.uleb128 0x9
	.byte	0x3
	.quad	linedef
	.uleb128 0x12
	.long	.LASF1446
	.byte	0x32
	.byte	0xb
	.long	0x2d41
	.uleb128 0x9
	.byte	0x3
	.quad	frontsector
	.uleb128 0x12
	.long	.LASF1447
	.byte	0x33
	.byte	0xb
	.long	0x2d41
	.uleb128 0x9
	.byte	0x3
	.quad	backsector
	.uleb128 0x8
	.long	0x2f69
	.long	0x317e
	.uleb128 0x9
	.long	0x43
	.byte	0xff
	.byte	0
	.uleb128 0x12
	.long	.LASF1504
	.byte	0x35
	.byte	0xb
	.long	0x316e
	.uleb128 0x9
	.byte	0x3
	.quad	drawsegs
	.uleb128 0x12
	.long	.LASF1505
	.byte	0x36
	.byte	0xc
	.long	0x31a8
	.uleb128 0x9
	.byte	0x3
	.quad	ds_p
	.uleb128 0x5
	.long	0x2f69
	.uleb128 0x10
	.byte	0x8
	.byte	0x1
	.byte	0x50
	.long	0x31d0
	.uleb128 0x3
	.long	.LASF1506
	.byte	0x1
	.byte	0x52
	.byte	0x9
	.long	0x90
	.byte	0
	.uleb128 0x3
	.long	.LASF1507
	.byte	0x1
	.byte	0x53
	.byte	0x9
	.long	0x90
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	.LASF1508
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.long	0x31ad
	.uleb128 0x12
	.long	.LASF1509
	.byte	0x5b
	.byte	0xe
	.long	0x31f1
	.uleb128 0x9
	.byte	0x3
	.quad	newend
	.uleb128 0x5
	.long	0x31d0
	.uleb128 0x8
	.long	0x31d0
	.long	0x3206
	.uleb128 0x9
	.long	0x43
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.long	.LASF1510
	.byte	0x5c
	.byte	0xd
	.long	0x31f6
	.uleb128 0x9
	.byte	0x3
	.quad	solidsegs
	.uleb128 0x8
	.long	0x90
	.long	0x3231
	.uleb128 0x9
	.long	0x43
	.byte	0xb
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x31
	.long	.LASF1511
	.byte	0x1
	.value	0x16d
	.byte	0x5
	.long	0x321b
	.uleb128 0x9
	.byte	0x3
	.quad	checkcoord
	.uleb128 0x1a
	.long	.LASF1512
	.byte	0x11
	.byte	0x6e
	.long	0x90
	.long	0x3267
	.uleb128 0xa
	.long	0x19d
	.uleb128 0xa
	.long	0x19d
	.uleb128 0xa
	.long	0x306f
	.byte	0
	.uleb128 0x1b
	.long	.LASF1514
	.byte	0x13
	.byte	0x39
	.byte	0x6
	.long	0x3279
	.uleb128 0xa
	.long	0x2d41
	.byte	0
	.uleb128 0x1a
	.long	.LASF1513
	.byte	0x12
	.byte	0x45
	.long	0x30e8
	.long	0x3298
	.uleb128 0xa
	.long	0x19d
	.uleb128 0xa
	.long	0x90
	.uleb128 0xa
	.long	0x90
	.byte	0
	.uleb128 0x1b
	.long	.LASF1515
	.byte	0x14
	.byte	0x59
	.byte	0x6
	.long	0x32ab
	.uleb128 0xa
	.long	0x9e
	.uleb128 0x1f
	.byte	0
	.uleb128 0x1a
	.long	.LASF1516
	.byte	0x11
	.byte	0x7a
	.long	0x275
	.long	0x32c5
	.uleb128 0xa
	.long	0x19d
	.uleb128 0xa
	.long	0x19d
	.byte	0
	.uleb128 0x1b
	.long	.LASF1517
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.long	0x32dc
	.uleb128 0xa
	.long	0x90
	.uleb128 0xa
	.long	0x90
	.byte	0
	.uleb128 0x1c
	.long	.LASF1520
	.value	0x228
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3327
	.uleb128 0x1d
	.long	.LASF1522
	.value	0x228
	.byte	0x1b
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.string	"bsp"
	.value	0x22a
	.byte	0xd
	.long	0x306f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.long	.LASF1519
	.value	0x22b
	.byte	0xa
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1c
	.long	.LASF1521
	.value	0x1f1
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x3382
	.uleb128 0x32
	.string	"num"
	.byte	0x1
	.value	0x1f1
	.byte	0x17
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xc
	.long	.LASF1523
	.value	0x1f3
	.byte	0xb
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.long	.LASF1524
	.value	0x1f4
	.byte	0xd
	.long	0x2f5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.string	"sub"
	.value	0x1f5
	.byte	0x12
	.long	0x305f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF1543
	.byte	0x1
	.value	0x17d
	.byte	0x9
	.long	0x1e7
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x3487
	.uleb128 0x1d
	.long	.LASF1525
	.value	0x17d
	.byte	0x1f
	.long	0x270
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xc
	.long	.LASF1526
	.value	0x17f
	.byte	0xb
	.long	0x90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xc
	.long	.LASF1527
	.value	0x180
	.byte	0xb
	.long	0x90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xc
	.long	.LASF1528
	.value	0x181
	.byte	0xb
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xf
	.string	"x1"
	.value	0x183
	.byte	0xe
	.long	0x19d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.string	"y1"
	.value	0x184
	.byte	0xe
	.long	0x19d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xf
	.string	"x2"
	.value	0x185
	.byte	0xe
	.long	0x19d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"y2"
	.value	0x186
	.byte	0xe
	.long	0x19d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.long	.LASF1529
	.value	0x188
	.byte	0xe
	.long	0x275
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xc
	.long	.LASF1530
	.value	0x189
	.byte	0xe
	.long	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xc
	.long	.LASF1531
	.value	0x18a
	.byte	0xe
	.long	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.long	.LASF1532
	.value	0x18b
	.byte	0xe
	.long	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.long	.LASF1533
	.value	0x18d
	.byte	0x12
	.long	0x31f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"sx1"
	.value	0x18f
	.byte	0xb
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.string	"sx2"
	.value	0x190
	.byte	0xb
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1c
	.long	.LASF1534
	.value	0x103
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x352a
	.uleb128 0x1d
	.long	.LASF1524
	.value	0x103
	.byte	0x18
	.long	0x2f5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.string	"x1"
	.value	0x105
	.byte	0xb
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"x2"
	.value	0x106
	.byte	0xb
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.long	.LASF1529
	.value	0x107
	.byte	0xe
	.long	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.long	.LASF1530
	.value	0x108
	.byte	0xe
	.long	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.long	.LASF1531
	.value	0x109
	.byte	0xe
	.long	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.long	.LASF1532
	.value	0x10a
	.byte	0xe
	.long	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.long	.LASF1535
	.value	0x162
	.quad	.L40
	.uleb128 0x23
	.long	.LASF1536
	.value	0x15e
	.quad	.L45
	.byte	0
	.uleb128 0x24
	.long	.LASF1540
	.byte	0xf5
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.long	.LASF1537
	.byte	0xc5
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3589
	.uleb128 0x17
	.long	.LASF1506
	.byte	0xc6
	.byte	0x7
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.long	.LASF1507
	.byte	0xc7
	.byte	0x7
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.long	.LASF1533
	.byte	0xc9
	.byte	0x12
	.long	0x31f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF1538
	.byte	0x68
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x35ee
	.uleb128 0x17
	.long	.LASF1506
	.byte	0x69
	.byte	0x9
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.long	.LASF1507
	.byte	0x6a
	.byte	0x9
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.long	.LASF69
	.byte	0x6c
	.byte	0x12
	.long	0x31f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.long	.LASF1533
	.byte	0x6d
	.byte	0x12
	.long	0x31f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF1539
	.byte	0x1
	.byte	0xaa
	.byte	0x3
	.quad	.L12
	.byte	0
	.uleb128 0x24
	.long	.LASF1541
	.byte	0x44
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
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
	.uleb128 0x5
	.byte	0
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
	.sleb128 15
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 13
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
	.uleb128 0x14
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
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xa
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
	.sleb128 3
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x7a
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x13
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
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
.LASF1489:
	.string	"viewwidth"
.LASF847:
	.string	"S_BSPI_RUN1"
.LASF848:
	.string	"S_BSPI_RUN2"
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
.LASF1415:
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
.LASF1380:
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
.LASF1506:
	.string	"first"
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
.LASF1430:
	.string	"floorpic"
.LASF865:
	.string	"S_BSPI_DIE1"
.LASF1513:
	.string	"R_FindPlane"
.LASF1354:
	.string	"NUMPSPRITES"
.LASF870:
	.string	"S_BSPI_DIE6"
.LASF1478:
	.string	"maskedtexturecol"
.LASF1457:
	.string	"ST_POSITIVE"
.LASF1391:
	.string	"viewz"
.LASF1469:
	.string	"curline"
.LASF1451:
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
.LASF43:
	.string	"BOXTOP"
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
.LASF1445:
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
.LASF1357:
	.string	"angle"
.LASF1198:
	.string	"MT_FATSHOT"
.LASF154:
	.string	"SPR_CELL"
.LASF1532:
	.string	"tspan"
.LASF155:
	.string	"SPR_CELP"
.LASF1136:
	.string	"S_HEARTCOL"
.LASF1387:
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
.LASF69:
	.string	"next"
.LASF224:
	.string	"S_PISTOLUP"
.LASF910:
	.string	"S_CYBER_DIE8"
.LASF1450:
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
.LASF1517:
	.string	"R_StoreWallRange"
.LASF918:
	.string	"S_PAIN_RUN5"
.LASF1020:
	.string	"S_BEXP"
.LASF919:
	.string	"S_PAIN_RUN6"
.LASF1416:
	.string	"extralight"
.LASF1137:
	.string	"S_HEARTCOL2"
.LASF316:
	.string	"S_RBALLX1"
.LASF1507:
	.string	"last"
.LASF1345:
	.string	"height"
.LASF1230:
	.string	"MT_TELEPORTMAN"
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
.LASF1460:
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
.LASF1440:
	.string	"linecount"
.LASF1443:
	.string	"sidenum"
.LASF879:
	.string	"S_ARACH_PLAZ"
.LASF1118:
	.string	"S_STALAGTITE"
.LASF720:
	.string	"S_HEAD_PAIN2"
.LASF721:
	.string	"S_HEAD_PAIN3"
.LASF50:
	.string	"byte"
.LASF1529:
	.string	"angle1"
.LASF1530:
	.string	"angle2"
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
.LASF383:
	.string	"S_PLAY_XDIE7"
.LASF366:
	.string	"S_PLAY_ATK1"
.LASF367:
	.string	"S_PLAY_ATK2"
.LASF119:
	.string	"SPR_APLS"
.LASF1516:
	.string	"R_PointToAngle"
.LASF1408:
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
.LASF1480:
	.string	"picnum"
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
.LASF1470:
	.string	"scale1"
.LASF1471:
	.string	"scale2"
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
.LASF1375:
	.string	"info"
.LASF1106:
	.string	"S_HEADSONSTICK"
.LASF1370:
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
.LASF1505:
	.string	"ds_p"
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
.LASF1449:
	.string	"textureoffset"
.LASF1358:
	.string	"type"
.LASF1482:
	.string	"maxx"
.LASF269:
	.string	"S_MISSILE"
.LASF1097:
	.string	"S_SHOT2"
.LASF1493:
	.string	"nodes"
.LASF1164:
	.string	"S_HANGTLOOKDN"
.LASF1377:
	.string	"movedir"
.LASF1504:
	.string	"drawsegs"
.LASF641:
	.string	"S_CPOS_XDIE1"
.LASF1502:
	.string	"ceilingplane"
.LASF66:
	.string	"actionf_t"
.LASF61:
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
.LASF1452:
	.string	"bottomtexture"
.LASF1433:
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
.LASF1536:
	.string	"clippass"
.LASF1388:
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
.LASF831:
	.string	"S_SPID_PAIN"
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
.LASF58:
	.string	"float"
.LASF1022:
	.string	"S_BEXP3"
.LASF1023:
	.string	"S_BEXP4"
.LASF1111:
	.string	"S_DEADSTICK"
.LASF1467:
	.string	"node_t"
.LASF1417:
	.string	"fixedcolormap"
.LASF1402:
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
.LASF231:
	.string	"S_SGUNDOWN"
.LASF1537:
	.string	"R_ClipPassWallSegment"
.LASF1474:
	.string	"bsilheight"
.LASF80:
	.string	"SPR_CHGF"
.LASF79:
	.string	"SPR_CHGG"
.LASF1525:
	.string	"bspcoord"
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
.LASF1379:
	.string	"target"
.LASF190:
	.string	"SPR_CEYE"
.LASF1473:
	.string	"silhouette"
.LASF1455:
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
.LASF1456:
	.string	"ST_VERTICAL"
.LASF147:
	.string	"SPR_SUIT"
.LASF797:
	.string	"S_SKULL_STND"
.LASF44:
	.string	"BOXBOTTOM"
.LASF1326:
	.string	"NUMMOBJTYPES"
.LASF129:
	.string	"SPR_BAR1"
.LASF1454:
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
.LASF1367:
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
.LASF1483:
	.string	"pad1"
.LASF1484:
	.string	"pad2"
.LASF1185:
	.string	"nextstate"
.LASF1487:
	.string	"pad4"
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
.LASF1382:
	.string	"lastlook"
.LASF1425:
	.string	"playerstate_t"
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
.LASF46:
	.string	"BOXRIGHT"
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
.LASF1535:
	.string	"clipsolid"
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
.LASF1458:
	.string	"ST_NEGATIVE"
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
.LASF1362:
	.string	"mobj_s"
.LASF1421:
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
.LASF13:
	.string	"it_blueskull"
.LASF1437:
	.string	"soundorg"
.LASF287:
	.string	"S_PLASMADOWN"
.LASF1534:
	.string	"R_AddLine"
.LASF599:
	.string	"S_FATT_PAIN2"
.LASF997:
	.string	"S_BRAINEYESEE"
.LASF1459:
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
.LASF1155:
	.string	"S_GTORCHSHRT2"
.LASF1156:
	.string	"S_GTORCHSHRT3"
.LASF1157:
	.string	"S_GTORCHSHRT4"
.LASF1392:
	.string	"viewheight"
.LASF1366:
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
.LASF1432:
	.string	"lightlevel"
.LASF187:
	.string	"SPR_TRE1"
.LASF188:
	.string	"SPR_TRE2"
.LASF844:
	.string	"S_BSPI_STND"
.LASF1338:
	.string	"meleestate"
.LASF1403:
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
.LASF53:
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
.LASF1383:
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
.LASF1424:
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
.LASF1472:
	.string	"scalestep"
.LASF1343:
	.string	"speed"
.LASF257:
	.string	"S_DSNR1"
.LASF926:
	.string	"S_PAIN_DIE1"
.LASF456:
	.string	"S_VILE_RUN2"
.LASF1499:
	.string	"rw_angle1"
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
.LASF62:
	.string	"actionf_p1"
.LASF63:
	.string	"actionf_p2"
.LASF158:
	.string	"SPR_BPAK"
.LASF627:
	.string	"S_CPOS_RUN8"
.LASF1024:
	.string	"S_BEXP5"
.LASF1360:
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
.LASF64:
	.string	"acp1"
.LASF65:
	.string	"acp2"
.LASF712:
	.string	"S_SARG_RAISE5"
.LASF713:
	.string	"S_SARG_RAISE6"
.LASF1292:
	.string	"MT_MISC53"
.LASF197:
	.string	"SPR_SMGT"
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
.LASF1524:
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
.LASF1414:
	.string	"bonuscount"
.LASF806:
	.string	"S_SKULL_PAIN2"
.LASF1336:
	.string	"painchance"
.LASF632:
	.string	"S_CPOS_PAIN"
.LASF1429:
	.string	"ceilingheight"
.LASF111:
	.string	"SPR_SARG"
.LASF937:
	.string	"S_PAIN_RAISE6"
.LASF1439:
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
.LASF1542:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1409:
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
.LASF49:
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
.LASF1468:
	.string	"drawseg_s"
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
.LASF1479:
	.string	"drawseg_t"
.LASF1220:
	.string	"MT_TROOPSHOT"
.LASF1205:
	.string	"MT_BRUISERSHOT"
.LASF57:
	.string	"ticcmd_t"
.LASF1475:
	.string	"tsilheight"
.LASF1325:
	.string	"MT_MISC86"
.LASF1352:
	.string	"ps_weapon"
.LASF369:
	.string	"S_PLAY_PAIN2"
.LASF764:
	.string	"S_BOSS_RAISE4"
.LASF765:
	.string	"S_BOSS_RAISE5"
.LASF1182:
	.string	"frame"
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
.LASF1477:
	.string	"sprbottomclip"
.LASF1509:
	.string	"newend"
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
.LASF1419:
	.string	"psprites"
.LASF1092:
	.string	"S_MGUN"
.LASF1204:
	.string	"MT_BRUISER"
.LASF157:
	.string	"SPR_SBOX"
.LASF1411:
	.string	"secretcount"
.LASF1327:
	.string	"mobjtype_t"
.LASF1341:
	.string	"xdeathstate"
.LASF1396:
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
.LASF52:
	.string	"sidemove"
.LASF1348:
	.string	"activesound"
.LASF433:
	.string	"S_SPOS_PAIN2"
.LASF1533:
	.string	"start"
.LASF597:
	.string	"S_FATT_ATK10"
.LASF194:
	.string	"SPR_TGRN"
.LASF1496:
	.string	"viewangle"
.LASF1251:
	.string	"MT_MEGA"
.LASF96:
	.string	"SPR_BFE1"
.LASF97:
	.string	"SPR_BFE2"
.LASF1438:
	.string	"thinglist"
.LASF1285:
	.string	"MT_MISC46"
.LASF1491:
	.string	"numsubsectors"
.LASF1523:
	.string	"count"
.LASF1213:
	.string	"MT_KEEN"
.LASF1436:
	.string	"blockbox"
.LASF998:
	.string	"S_BRAINEYE1"
.LASF1464:
	.string	"linedef"
.LASF654:
	.string	"S_TROO_STND"
.LASF601:
	.string	"S_FATT_DIE2"
.LASF292:
	.string	"S_PLASMAFLASH2"
.LASF41:
	.string	"weapontype_t"
.LASF55:
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
.LASF1405:
	.string	"attackdown"
.LASF72:
	.string	"SPR_TROO"
.LASF83:
	.string	"SPR_SAWG"
.LASF132:
	.string	"SPR_BON1"
.LASF133:
	.string	"SPR_BON2"
.LASF1485:
	.string	"pad3"
.LASF12:
	.string	"it_redcard"
.LASF1121:
	.string	"S_TALLREDCOL"
.LASF1515:
	.string	"I_Error"
.LASF1355:
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
.LASF537:
	.string	"S_SKEL_RUN3"
.LASF1465:
	.string	"seg_t"
.LASF189:
	.string	"SPR_ELEC"
.LASF990:
	.string	"S_BRAIN"
.LASF1208:
	.string	"MT_SPIDER"
.LASF1073:
	.string	"S_SUIT"
.LASF1486:
	.string	"bottom"
.LASF87:
	.string	"SPR_BFGF"
.LASF86:
	.string	"SPR_BFGG"
.LASF913:
	.string	"S_PAIN_STND"
.LASF1503:
	.string	"skyflatnum"
.LASF329:
	.string	"S_BFGLAND"
.LASF1019:
	.string	"S_BAR2"
.LASF1401:
	.string	"pendingweapon"
.LASF70:
	.string	"function"
.LASF29:
	.string	"am_shell"
.LASF1374:
	.string	"validcount"
.LASF1412:
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
.LASF1531:
	.string	"span"
.LASF48:
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
.LASF1371:
	.string	"momx"
.LASF1372:
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
.LASF1420:
	.string	"didsecret"
.LASF517:
	.string	"S_FIRE25"
.LASF611:
	.string	"S_FATT_RAISE2"
.LASF1294:
	.string	"MT_MISC55"
.LASF1393:
	.string	"deltaviewheight"
.LASF14:
	.string	"it_yellowskull"
.LASF1049:
	.string	"S_RSKULL2"
.LASF1384:
	.string	"tracer"
.LASF1540:
	.string	"R_ClearClipSegs"
.LASF824:
	.string	"S_SPID_RUN10"
.LASF825:
	.string	"S_SPID_RUN11"
.LASF826:
	.string	"S_SPID_RUN12"
.LASF1518:
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
.LASF67:
	.string	"think_t"
.LASF51:
	.string	"forwardmove"
.LASF636:
	.string	"S_CPOS_DIE3"
.LASF637:
	.string	"S_CPOS_DIE4"
.LASF1453:
	.string	"midtexture"
.LASF638:
	.string	"S_CPOS_DIE5"
.LASF639:
	.string	"S_CPOS_DIE6"
.LASF640:
	.string	"S_CPOS_DIE7"
.LASF1081:
	.string	"S_PVIS2"
.LASF1219:
	.string	"MT_BARREL"
.LASF813:
	.string	"S_SPID_STND"
.LASF1490:
	.string	"segs"
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
.LASF1494:
	.string	"viewx"
.LASF1495:
	.string	"viewy"
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
.LASF1512:
	.string	"R_PointOnSide"
.LASF305:
	.string	"S_PUFF1"
.LASF306:
	.string	"S_PUFF2"
.LASF307:
	.string	"S_PUFF3"
.LASF126:
	.string	"SPR_BOSF"
.LASF1441:
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
.LASF1413:
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
.LASF1521:
	.string	"R_Subsector"
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
.LASF1501:
	.string	"floorplane"
.LASF1541:
	.string	"R_ClearDrawSegs"
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
.LASF1543:
	.string	"R_CheckBBox"
.LASF30:
	.string	"am_cell"
.LASF10:
	.string	"it_bluecard"
.LASF1369:
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
.LASF1385:
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
.LASF45:
	.string	"BOXLEFT"
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
.LASF54:
	.string	"consistancy"
.LASF1386:
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
.LASF1397:
	.string	"cards"
.LASF1363:
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
.LASF1138:
	.string	"S_BLUETORCH"
.LASF1539:
	.string	"crunch"
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
.LASF1428:
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
.LASF991:
	.string	"S_BRAIN_PAIN"
.LASF262:
	.string	"S_CHAINDOWN"
.LASF1522:
	.string	"bspnum"
.LASF1498:
	.string	"viewangletox"
.LASF481:
	.string	"S_VILE_PAIN"
.LASF528:
	.string	"S_TRACER"
.LASF1508:
	.string	"cliprange_t"
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
.LASF1378:
	.string	"movecount"
.LASF135:
	.string	"SPR_RKEY"
.LASF1099:
	.string	"S_STALAG"
.LASF814:
	.string	"S_SPID_STND2"
.LASF1466:
	.string	"children"
.LASF60:
	.string	"angle_t"
.LASF1431:
	.string	"ceilingpic"
.LASF1100:
	.string	"S_BLOODYTWITCH"
.LASF1169:
	.string	"S_SMALLPOOL"
.LASF1356:
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
.LASF59:
	.string	"double"
.LASF130:
	.string	"SPR_BEXP"
.LASF1538:
	.string	"R_ClipSolidWallSegment"
.LASF1389:
	.string	"player_s"
.LASF1047:
	.string	"S_BSKULL2"
.LASF89:
	.string	"SPR_PUFF"
.LASF976:
	.string	"S_COMMKEEN"
.LASF1406:
	.string	"usedown"
.LASF1497:
	.string	"clipangle"
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
.LASF1404:
	.string	"maxammo"
.LASF1488:
	.string	"visplane_t"
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
.LASF1353:
	.string	"ps_flash"
.LASF1390:
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
.LASF1448:
	.string	"sector_t"
.LASF144:
	.string	"SPR_PSTR"
.LASF1257:
	.string	"MT_MISC21"
.LASF700:
	.string	"S_SARG_PAIN"
.LASF1481:
	.string	"minx"
.LASF1252:
	.string	"MT_CLIP"
.LASF1528:
	.string	"boxpos"
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
.LASF1398:
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
.LASF1427:
	.string	"degenmobj_t"
.LASF807:
	.string	"S_SKULL_DIE1"
.LASF1423:
	.string	"PST_DEAD"
.LASF1170:
	.string	"S_BRAINSTEM"
.LASF975:
	.string	"S_KEENSTND"
.LASF100:
	.string	"SPR_PLAY"
.LASF1400:
	.string	"readyweapon"
.LASF1462:
	.string	"offset"
.LASF1110:
	.string	"S_HEADCANDLES2"
.LASF1229:
	.string	"MT_IFOG"
.LASF1500:
	.string	"sscount"
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
.LASF1373:
	.string	"momz"
.LASF1089:
	.string	"S_SBOX"
.LASF1434:
	.string	"soundtraversed"
.LASF1273:
	.string	"MT_MISC34"
.LASF1461:
	.string	"subsector_t"
.LASF1444:
	.string	"bbox"
.LASF321:
	.string	"S_PLASEXP"
.LASF1276:
	.string	"MT_MISC37"
.LASF1105:
	.string	"S_DEADBOTTOM"
.LASF1162:
	.string	"S_HANGNOGUTS"
.LASF1514:
	.string	"R_AddSprites"
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
.LASF232:
	.string	"S_SGUNUP"
.LASF1446:
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
.LASF1365:
	.string	"sprev"
.LASF283:
	.string	"S_SAW1"
.LASF284:
	.string	"S_SAW2"
.LASF285:
	.string	"S_SAW3"
.LASF1510:
	.string	"solidsegs"
.LASF1028:
	.string	"S_BON1"
.LASF1034:
	.string	"S_BON2"
.LASF1381:
	.string	"player"
.LASF280:
	.string	"S_SAWB"
.LASF668:
	.string	"S_TROO_PAIN2"
.LASF1215:
	.string	"MT_BOSSSPIT"
.LASF1520:
	.string	"R_RenderBSPNode"
.LASF493:
	.string	"S_FIRE1"
.LASF494:
	.string	"S_FIRE2"
.LASF42:
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
.LASF1399:
	.string	"frags"
.LASF1394:
	.string	"armorpoints"
.LASF56:
	.string	"buttons"
.LASF296:
	.string	"S_BFG1"
.LASF297:
	.string	"S_BFG2"
.LASF298:
	.string	"S_BFG3"
.LASF299:
	.string	"S_BFG4"
.LASF1492:
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
.LASF1442:
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
.LASF1407:
	.string	"cheats"
.LASF137:
	.string	"SPR_BSKU"
.LASF732:
	.string	"S_HEAD_RAISE5"
.LASF733:
	.string	"S_HEAD_RAISE6"
.LASF1463:
	.string	"sidedef"
.LASF1267:
	.string	"MT_SUPERSHOTGUN"
.LASF148:
	.string	"SPR_PMAP"
.LASF996:
	.string	"S_BRAINEYE"
.LASF149:
	.string	"SPR_PVIS"
.LASF1422:
	.string	"PST_LIVE"
.LASF1511:
	.string	"checkcoord"
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
.LASF1476:
	.string	"sprtopclip"
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
.LASF1368:
	.string	"subsector"
.LASF207:
	.string	"SPR_BRS1"
.LASF1426:
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
.LASF1447:
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
.LASF1395:
	.string	"armortype"
.LASF47:
	.string	"false"
.LASF208:
	.string	"SPR_TLMP"
.LASF387:
	.string	"S_POSS_STND2"
.LASF1266:
	.string	"MT_SHOTGUN"
.LASF1191:
	.string	"MT_SHOTGUY"
.LASF1410:
	.string	"itemcount"
.LASF1171:
	.string	"S_TECHLAMP"
.LASF1212:
	.string	"MT_WOLFSS"
.LASF769:
	.string	"S_BOS2_STND2"
.LASF1435:
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
.LASF1526:
	.string	"boxx"
.LASF193:
	.string	"SPR_TBLU"
.LASF1527:
	.string	"boxy"
.LASF420:
	.string	"S_SPOS_STND2"
.LASF4:
	.string	"unsigned int"
.LASF1364:
	.string	"snext"
.LASF33:
	.string	"am_noammo"
.LASF1361:
	.string	"thinker_s"
.LASF71:
	.string	"thinker_t"
.LASF1005:
	.string	"S_SPAWNFIRE3"
.LASF396:
	.string	"S_POSS_ATK1"
.LASF397:
	.string	"S_POSS_ATK2"
.LASF398:
	.string	"S_POSS_ATK3"
.LASF1519:
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
.LASF68:
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
.LASF1359:
	.string	"options"
.LASF118:
	.string	"SPR_BSPI"
.LASF120:
	.string	"SPR_APBX"
.LASF1418:
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
.LASF1376:
	.string	"health"
.LASF1216:
	.string	"MT_BOSSTARGET"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"r_bsp.c"
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
