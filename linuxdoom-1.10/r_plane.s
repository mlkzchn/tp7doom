	.file	"r_plane.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "r_plane.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 50
rcsid:
	.string	"$Id: r_plane.c,v 1.4 1997/02/03 16:47:55 b1 Exp $"
	.globl	floorfunc
	.bss
	.align 8
	.type	floorfunc, @object
	.size	floorfunc, 8
floorfunc:
	.zero	8
	.globl	ceilingfunc
	.align 8
	.type	ceilingfunc, @object
	.size	ceilingfunc, 8
ceilingfunc:
	.zero	8
	.globl	visplanes
	.align 32
	.type	visplanes, @object
	.size	visplanes, 84992
visplanes:
	.zero	84992
	.globl	lastvisplane
	.align 8
	.type	lastvisplane, @object
	.size	lastvisplane, 8
lastvisplane:
	.zero	8
	.globl	floorplane
	.align 8
	.type	floorplane, @object
	.size	floorplane, 8
floorplane:
	.zero	8
	.globl	ceilingplane
	.align 8
	.type	ceilingplane, @object
	.size	ceilingplane, 8
ceilingplane:
	.zero	8
	.globl	openings
	.align 32
	.type	openings, @object
	.size	openings, 40960
openings:
	.zero	40960
	.globl	lastopening
	.align 8
	.type	lastopening, @object
	.size	lastopening, 8
lastopening:
	.zero	8
	.globl	floorclip
	.align 32
	.type	floorclip, @object
	.size	floorclip, 640
floorclip:
	.zero	640
	.globl	ceilingclip
	.align 32
	.type	ceilingclip, @object
	.size	ceilingclip, 640
ceilingclip:
	.zero	640
	.globl	spanstart
	.align 32
	.type	spanstart, @object
	.size	spanstart, 800
spanstart:
	.zero	800
	.globl	spanstop
	.align 32
	.type	spanstop, @object
	.size	spanstop, 800
spanstop:
	.zero	800
	.globl	planezlight
	.align 8
	.type	planezlight, @object
	.size	planezlight, 8
planezlight:
	.zero	8
	.globl	planeheight
	.align 4
	.type	planeheight, @object
	.size	planeheight, 4
planeheight:
	.zero	4
	.globl	yslope
	.align 32
	.type	yslope, @object
	.size	yslope, 800
yslope:
	.zero	800
	.globl	distscale
	.align 32
	.type	distscale, @object
	.size	distscale, 1280
distscale:
	.zero	1280
	.globl	basexscale
	.align 4
	.type	basexscale, @object
	.size	basexscale, 4
basexscale:
	.zero	4
	.globl	baseyscale
	.align 4
	.type	baseyscale, @object
	.size	baseyscale, 4
baseyscale:
	.zero	4
	.globl	cachedheight
	.align 32
	.type	cachedheight, @object
	.size	cachedheight, 800
cachedheight:
	.zero	800
	.globl	cacheddistance
	.align 32
	.type	cacheddistance, @object
	.size	cacheddistance, 800
cacheddistance:
	.zero	800
	.globl	cachedxstep
	.align 32
	.type	cachedxstep, @object
	.size	cachedxstep, 800
cachedxstep:
	.zero	800
	.globl	cachedystep
	.align 32
	.type	cachedystep, @object
	.size	cachedystep, 800
cachedystep:
	.zero	800
	.text
	.globl	R_InitPlanes
	.type	R_InitPlanes, @function
R_InitPlanes:
.LFB6:
	.file 1 "r_plane.c"
	.loc 1 102 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# r_plane.c:104: }
	.loc 1 104 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	R_InitPlanes, .-R_InitPlanes
	.section	.rodata
.LC0:
	.string	"R_MapPlane: %i, %i at %i"
	.text
	.globl	R_MapPlane
	.type	R_MapPlane, @function
R_MapPlane:
.LFB7:
	.loc 1 125 1
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
	movl	%edi, -36(%rbp)	# y, y
	movl	%esi, -40(%rbp)	# x1, x1
	movl	%edx, -44(%rbp)	# x2, x2
# r_plane.c:132:     if (x2 < x1
	.loc 1 132 8
	movl	-44(%rbp), %eax	# x2, tmp126
	cmpl	-40(%rbp), %eax	# x1, tmp126
	jl	.L3	#,
# r_plane.c:133: 	|| x1<0
	.loc 1 133 2
	cmpl	$0, -40(%rbp)	#, x1
	js	.L3	#,
# r_plane.c:134: 	|| x2>=viewwidth
	.loc 1 134 7
	movl	viewwidth(%rip), %eax	# viewwidth, viewwidth.0_1
# r_plane.c:134: 	|| x2>=viewwidth
	.loc 1 134 2
	cmpl	%eax, -44(%rbp)	# viewwidth.0_1, x2
	jge	.L3	#,
# r_plane.c:135: 	|| (unsigned)y>viewheight)
	.loc 1 135 5
	movl	-36(%rbp), %eax	# y, y.1_2
# r_plane.c:135: 	|| (unsigned)y>viewheight)
	.loc 1 135 16
	movl	viewheight(%rip), %edx	# viewheight, viewheight.2_3
# r_plane.c:135: 	|| (unsigned)y>viewheight)
	.loc 1 135 2
	cmpl	%eax, %edx	# y.1_2, viewheight.3_4
	jnb	.L4	#,
.L3:
# r_plane.c:137: 	I_Error ("R_MapPlane: %i, %i at %i",x1,x2,y);
	.loc 1 137 2
	movl	-36(%rbp), %ecx	# y, tmp127
	movl	-44(%rbp), %edx	# x2, tmp128
	movl	-40(%rbp), %eax	# x1, tmp129
	movl	%eax, %esi	# tmp129,
	leaq	.LC0(%rip), %rax	#, tmp130
	movq	%rax, %rdi	# tmp130,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L4:
# r_plane.c:141:     if (planeheight != cachedheight[y])
	.loc 1 141 36
	movl	-36(%rbp), %eax	# y, tmp132
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp133
	leaq	cachedheight(%rip), %rax	#, tmp134
	movl	(%rdx,%rax), %edx	# cachedheight[y_53(D)], _5
# r_plane.c:141:     if (planeheight != cachedheight[y])
	.loc 1 141 21
	movl	planeheight(%rip), %eax	# planeheight, planeheight.4_6
# r_plane.c:141:     if (planeheight != cachedheight[y])
	.loc 1 141 8
	cmpl	%eax, %edx	# planeheight.4_6, _5
	je	.L5	#,
# r_plane.c:143: 	cachedheight[y] = planeheight;
	.loc 1 143 18
	movl	planeheight(%rip), %eax	# planeheight, planeheight.5_7
	movl	-36(%rbp), %edx	# y, tmp136
	movslq	%edx, %rdx	# tmp136, tmp135
	leaq	0(,%rdx,4), %rcx	#, tmp137
	leaq	cachedheight(%rip), %rdx	#, tmp138
	movl	%eax, (%rcx,%rdx)	# planeheight.5_7, cachedheight[y_53(D)]
# r_plane.c:144: 	distance = cacheddistance[y] = FixedMul (planeheight, yslope[y]);
	.loc 1 144 33
	movl	-36(%rbp), %eax	# y, tmp140
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp141
	leaq	yslope(%rip), %rax	#, tmp142
	movl	(%rdx,%rax), %edx	# yslope[y_53(D)], _8
	movl	planeheight(%rip), %eax	# planeheight, planeheight.6_9
	movl	%edx, %esi	# _8,
	movl	%eax, %edi	# planeheight.6_9,
	call	FixedMul@PLT	#
# r_plane.c:144: 	distance = cacheddistance[y] = FixedMul (planeheight, yslope[y]);
	.loc 1 144 31 discriminator 1
	movl	-36(%rbp), %edx	# y, tmp144
	movslq	%edx, %rdx	# tmp144, tmp143
	leaq	0(,%rdx,4), %rcx	#, tmp145
	leaq	cacheddistance(%rip), %rdx	#, tmp146
	movl	%eax, (%rcx,%rdx)	# _10, cacheddistance[y_53(D)]
# r_plane.c:144: 	distance = cacheddistance[y] = FixedMul (planeheight, yslope[y]);
	.loc 1 144 11 discriminator 1
	movl	-36(%rbp), %eax	# y, tmp148
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp149
	leaq	cacheddistance(%rip), %rax	#, tmp150
	movl	(%rdx,%rax), %eax	# cacheddistance[y_53(D)], tmp151
	movl	%eax, -32(%rbp)	# tmp151, distance
# r_plane.c:145: 	ds_xstep = cachedxstep[y] = FixedMul (distance,basexscale);
	.loc 1 145 30
	movl	basexscale(%rip), %edx	# basexscale, basexscale.7_11
	movl	-32(%rbp), %eax	# distance, tmp152
	movl	%edx, %esi	# basexscale.7_11,
	movl	%eax, %edi	# tmp152,
	call	FixedMul@PLT	#
# r_plane.c:145: 	ds_xstep = cachedxstep[y] = FixedMul (distance,basexscale);
	.loc 1 145 28 discriminator 1
	movl	-36(%rbp), %edx	# y, tmp154
	movslq	%edx, %rdx	# tmp154, tmp153
	leaq	0(,%rdx,4), %rcx	#, tmp155
	leaq	cachedxstep(%rip), %rdx	#, tmp156
	movl	%eax, (%rcx,%rdx)	# _12, cachedxstep[y_53(D)]
# r_plane.c:145: 	ds_xstep = cachedxstep[y] = FixedMul (distance,basexscale);
	.loc 1 145 24 discriminator 1
	movl	-36(%rbp), %eax	# y, tmp158
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp159
	leaq	cachedxstep(%rip), %rax	#, tmp160
	movl	(%rdx,%rax), %eax	# cachedxstep[y_53(D)], _13
# r_plane.c:145: 	ds_xstep = cachedxstep[y] = FixedMul (distance,basexscale);
	.loc 1 145 11 discriminator 1
	movl	%eax, ds_xstep(%rip)	# _13, ds_xstep
# r_plane.c:146: 	ds_ystep = cachedystep[y] = FixedMul (distance,baseyscale);
	.loc 1 146 30
	movl	baseyscale(%rip), %edx	# baseyscale, baseyscale.8_14
	movl	-32(%rbp), %eax	# distance, tmp161
	movl	%edx, %esi	# baseyscale.8_14,
	movl	%eax, %edi	# tmp161,
	call	FixedMul@PLT	#
# r_plane.c:146: 	ds_ystep = cachedystep[y] = FixedMul (distance,baseyscale);
	.loc 1 146 28 discriminator 1
	movl	-36(%rbp), %edx	# y, tmp163
	movslq	%edx, %rdx	# tmp163, tmp162
	leaq	0(,%rdx,4), %rcx	#, tmp164
	leaq	cachedystep(%rip), %rdx	#, tmp165
	movl	%eax, (%rcx,%rdx)	# _15, cachedystep[y_53(D)]
# r_plane.c:146: 	ds_ystep = cachedystep[y] = FixedMul (distance,baseyscale);
	.loc 1 146 24 discriminator 1
	movl	-36(%rbp), %eax	# y, tmp167
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp168
	leaq	cachedystep(%rip), %rax	#, tmp169
	movl	(%rdx,%rax), %eax	# cachedystep[y_53(D)], _16
# r_plane.c:146: 	ds_ystep = cachedystep[y] = FixedMul (distance,baseyscale);
	.loc 1 146 11 discriminator 1
	movl	%eax, ds_ystep(%rip)	# _16, ds_ystep
	jmp	.L6	#
.L5:
# r_plane.c:150: 	distance = cacheddistance[y];
	.loc 1 150 11
	movl	-36(%rbp), %eax	# y, tmp171
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp172
	leaq	cacheddistance(%rip), %rax	#, tmp173
	movl	(%rdx,%rax), %eax	# cacheddistance[y_53(D)], tmp174
	movl	%eax, -32(%rbp)	# tmp174, distance
# r_plane.c:151: 	ds_xstep = cachedxstep[y];
	.loc 1 151 24
	movl	-36(%rbp), %eax	# y, tmp176
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp177
	leaq	cachedxstep(%rip), %rax	#, tmp178
	movl	(%rdx,%rax), %eax	# cachedxstep[y_53(D)], _17
# r_plane.c:151: 	ds_xstep = cachedxstep[y];
	.loc 1 151 11
	movl	%eax, ds_xstep(%rip)	# _17, ds_xstep
# r_plane.c:152: 	ds_ystep = cachedystep[y];
	.loc 1 152 24
	movl	-36(%rbp), %eax	# y, tmp180
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp181
	leaq	cachedystep(%rip), %rax	#, tmp182
	movl	(%rdx,%rax), %eax	# cachedystep[y_53(D)], _18
# r_plane.c:152: 	ds_ystep = cachedystep[y];
	.loc 1 152 11
	movl	%eax, ds_ystep(%rip)	# _18, ds_ystep
.L6:
# r_plane.c:155:     length = FixedMul (distance,distscale[x1]);
	.loc 1 155 14
	movl	-40(%rbp), %eax	# x1, tmp184
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp185
	leaq	distscale(%rip), %rax	#, tmp186
	movl	(%rdx,%rax), %edx	# distscale[x1_51(D)], _19
	movl	-32(%rbp), %eax	# distance, tmp187
	movl	%edx, %esi	# _19,
	movl	%eax, %edi	# tmp187,
	call	FixedMul@PLT	#
	movl	%eax, -24(%rbp)	# tmp188, length
# r_plane.c:156:     angle = (viewangle + xtoviewangle[x1])>>ANGLETOFINESHIFT;
	.loc 1 156 38
	movl	-40(%rbp), %eax	# x1, tmp190
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp191
	leaq	xtoviewangle(%rip), %rax	#, tmp192
	movl	(%rdx,%rax), %edx	# xtoviewangle[x1_51(D)], _20
# r_plane.c:156:     angle = (viewangle + xtoviewangle[x1])>>ANGLETOFINESHIFT;
	.loc 1 156 24
	movl	viewangle(%rip), %eax	# viewangle, viewangle.9_21
	addl	%edx, %eax	# _20, _22
# r_plane.c:156:     angle = (viewangle + xtoviewangle[x1])>>ANGLETOFINESHIFT;
	.loc 1 156 11
	shrl	$19, %eax	#, tmp193
	movl	%eax, -20(%rbp)	# tmp193, angle
# r_plane.c:157:     ds_xfrac = viewx + FixedMul(finecosine[angle], length);
	.loc 1 157 43
	movq	finecosine(%rip), %rax	# finecosine, finecosine.10_23
	movl	-20(%rbp), %edx	# angle, _24
	salq	$2, %rdx	#, _25
	addq	%rdx, %rax	# _25, _26
# r_plane.c:157:     ds_xfrac = viewx + FixedMul(finecosine[angle], length);
	.loc 1 157 24
	movl	(%rax), %eax	# *_26, _27
	movl	-24(%rbp), %edx	# length, tmp194
	movl	%edx, %esi	# tmp194,
	movl	%eax, %edi	# _27,
	call	FixedMul@PLT	#
# r_plane.c:157:     ds_xfrac = viewx + FixedMul(finecosine[angle], length);
	.loc 1 157 22 discriminator 1
	movl	viewx(%rip), %edx	# viewx, viewx.11_29
	addl	%edx, %eax	# viewx.11_29, _30
# r_plane.c:157:     ds_xfrac = viewx + FixedMul(finecosine[angle], length);
	.loc 1 157 14 discriminator 1
	movl	%eax, ds_xfrac(%rip)	# _30, ds_xfrac
# r_plane.c:158:     ds_yfrac = -viewy - FixedMul(finesine[angle], length);
	.loc 1 158 16
	movl	viewy(%rip), %eax	# viewy, viewy.12_31
	negl	%eax	# viewy.12_31
	movl	%eax, %ebx	# viewy.12_31, _32
# r_plane.c:158:     ds_yfrac = -viewy - FixedMul(finesine[angle], length);
	.loc 1 158 25
	movl	-20(%rbp), %eax	# angle, tmp195
	leaq	0(,%rax,4), %rdx	#, tmp196
	leaq	finesine(%rip), %rax	#, tmp197
	movl	(%rdx,%rax), %eax	# finesine[angle_70], _33
	movl	-24(%rbp), %edx	# length, tmp198
	movl	%edx, %esi	# tmp198,
	movl	%eax, %edi	# _33,
	call	FixedMul@PLT	#
# r_plane.c:158:     ds_yfrac = -viewy - FixedMul(finesine[angle], length);
	.loc 1 158 23 discriminator 1
	subl	%eax, %ebx	# _34, _32
	movl	%ebx, %edx	# _32, _35
# r_plane.c:158:     ds_yfrac = -viewy - FixedMul(finesine[angle], length);
	.loc 1 158 14 discriminator 1
	movl	%edx, ds_yfrac(%rip)	# _35, ds_yfrac
# r_plane.c:160:     if (fixedcolormap)
	.loc 1 160 9
	movq	fixedcolormap(%rip), %rax	# fixedcolormap, fixedcolormap.13_36
# r_plane.c:160:     if (fixedcolormap)
	.loc 1 160 8
	testq	%rax, %rax	# fixedcolormap.13_36
	je	.L7	#,
# r_plane.c:161: 	ds_colormap = fixedcolormap;
	.loc 1 161 14
	movq	fixedcolormap(%rip), %rax	# fixedcolormap, fixedcolormap.14_37
	movq	%rax, ds_colormap(%rip)	# fixedcolormap.14_37, ds_colormap
	jmp	.L8	#
.L7:
# r_plane.c:164: 	index = distance >> LIGHTZSHIFT;
	.loc 1 164 19
	movl	-32(%rbp), %eax	# distance, tmp199
	sarl	$20, %eax	#, _38
# r_plane.c:164: 	index = distance >> LIGHTZSHIFT;
	.loc 1 164 8
	movl	%eax, -28(%rbp)	# _38, index
# r_plane.c:166: 	if (index >= MAXLIGHTZ )
	.loc 1 166 5
	cmpl	$127, -28(%rbp)	#, index
	jbe	.L9	#,
# r_plane.c:167: 	    index = MAXLIGHTZ-1;
	.loc 1 167 12
	movl	$127, -28(%rbp)	#, index
.L9:
# r_plane.c:169: 	ds_colormap = planezlight[index];
	.loc 1 169 27
	movq	planezlight(%rip), %rax	# planezlight, planezlight.15_39
	movl	-28(%rbp), %edx	# index, _40
	salq	$3, %rdx	#, _41
	addq	%rdx, %rax	# _41, _42
	movq	(%rax), %rax	# *_42, _43
# r_plane.c:169: 	ds_colormap = planezlight[index];
	.loc 1 169 14
	movq	%rax, ds_colormap(%rip)	# _43, ds_colormap
.L8:
# r_plane.c:172:     ds_y = y;
	.loc 1 172 10
	movl	-36(%rbp), %eax	# y, tmp200
	movl	%eax, ds_y(%rip)	# tmp200, ds_y
# r_plane.c:173:     ds_x1 = x1;
	.loc 1 173 11
	movl	-40(%rbp), %eax	# x1, tmp201
	movl	%eax, ds_x1(%rip)	# tmp201, ds_x1
# r_plane.c:174:     ds_x2 = x2;
	.loc 1 174 11
	movl	-44(%rbp), %eax	# x2, tmp202
	movl	%eax, ds_x2(%rip)	# tmp202, ds_x2
# r_plane.c:177:     spanfunc ();	
	.loc 1 177 5
	movq	spanfunc(%rip), %rax	# spanfunc, spanfunc.16_44
	call	*%rax	# spanfunc.16_44
.LVL0:
# r_plane.c:178: }
	.loc 1 178 1
	nop	
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	R_MapPlane, .-R_MapPlane
	.globl	R_ClearPlanes
	.type	R_ClearPlanes, @function
R_ClearPlanes:
.LFB8:
	.loc 1 186 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# r_plane.c:191:     for (i=0 ; i<viewwidth ; i++)
	.loc 1 191 11
	movl	$0, -8(%rbp)	#, i
# r_plane.c:191:     for (i=0 ; i<viewwidth ; i++)
	.loc 1 191 5
	jmp	.L11	#
.L12:
# r_plane.c:193: 	floorclip[i] = viewheight;
	.loc 1 193 15
	movl	viewheight(%rip), %eax	# viewheight, viewheight.17_1
	movl	%eax, %ecx	# viewheight.17_1, _2
	movl	-8(%rbp), %eax	# i, tmp99
	cltq
	leaq	(%rax,%rax), %rdx	#, tmp100
	leaq	floorclip(%rip), %rax	#, tmp101
	movw	%cx, (%rdx,%rax)	# _2, floorclip[i_17]
# r_plane.c:194: 	ceilingclip[i] = -1;
	.loc 1 194 17
	movl	-8(%rbp), %eax	# i, tmp103
	cltq
	leaq	(%rax,%rax), %rdx	#, tmp104
	leaq	ceilingclip(%rip), %rax	#, tmp105
	movw	$-1, (%rdx,%rax)	#, ceilingclip[i_17]
# r_plane.c:191:     for (i=0 ; i<viewwidth ; i++)
	.loc 1 191 31 discriminator 3
	addl	$1, -8(%rbp)	#, i
.L11:
# r_plane.c:191:     for (i=0 ; i<viewwidth ; i++)
	.loc 1 191 17 discriminator 1
	movl	viewwidth(%rip), %eax	# viewwidth, viewwidth.18_3
	cmpl	%eax, -8(%rbp)	# viewwidth.18_3, i
	jl	.L12	#,
# r_plane.c:197:     lastvisplane = visplanes;
	.loc 1 197 18
	leaq	visplanes(%rip), %rax	#, tmp106
	movq	%rax, lastvisplane(%rip)	# tmp106, lastvisplane
# r_plane.c:198:     lastopening = openings;
	.loc 1 198 17
	leaq	openings(%rip), %rax	#, tmp107
	movq	%rax, lastopening(%rip)	# tmp107, lastopening
# r_plane.c:201:     memset (cachedheight, 0, sizeof(cachedheight));
	.loc 1 201 5
	movl	$800, %edx	#,
	movl	$0, %esi	#,
	leaq	cachedheight(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	memset@PLT	#
# r_plane.c:204:     angle = (viewangle-ANG90)>>ANGLETOFINESHIFT;
	.loc 1 204 23
	movl	viewangle(%rip), %eax	# viewangle, viewangle.19_4
	subl	$1073741824, %eax	#, _5
# r_plane.c:204:     angle = (viewangle-ANG90)>>ANGLETOFINESHIFT;
	.loc 1 204 11
	shrl	$19, %eax	#, tmp109
	movl	%eax, -4(%rbp)	# tmp109, angle
# r_plane.c:207:     basexscale = FixedDiv (finecosine[angle],centerxfrac);
	.loc 1 207 18
	movl	centerxfrac(%rip), %edx	# centerxfrac, centerxfrac.20_6
# r_plane.c:207:     basexscale = FixedDiv (finecosine[angle],centerxfrac);
	.loc 1 207 38
	movq	finecosine(%rip), %rax	# finecosine, finecosine.21_7
	movl	-4(%rbp), %ecx	# angle, _8
	salq	$2, %rcx	#, _9
	addq	%rcx, %rax	# _9, _10
# r_plane.c:207:     basexscale = FixedDiv (finecosine[angle],centerxfrac);
	.loc 1 207 18
	movl	(%rax), %eax	# *_10, _11
	movl	%edx, %esi	# centerxfrac.20_6,
	movl	%eax, %edi	# _11,
	call	FixedDiv@PLT	#
# r_plane.c:207:     basexscale = FixedDiv (finecosine[angle],centerxfrac);
	.loc 1 207 16 discriminator 1
	movl	%eax, basexscale(%rip)	# _12, basexscale
# r_plane.c:208:     baseyscale = -FixedDiv (finesine[angle],centerxfrac);
	.loc 1 208 19
	movl	centerxfrac(%rip), %edx	# centerxfrac, centerxfrac.22_13
	movl	-4(%rbp), %eax	# angle, tmp110
	leaq	0(,%rax,4), %rcx	#, tmp111
	leaq	finesine(%rip), %rax	#, tmp112
	movl	(%rcx,%rax), %eax	# finesine[angle_24], _14
	movl	%edx, %esi	# centerxfrac.22_13,
	movl	%eax, %edi	# _14,
	call	FixedDiv@PLT	#
# r_plane.c:208:     baseyscale = -FixedDiv (finesine[angle],centerxfrac);
	.loc 1 208 18 discriminator 1
	negl	%eax	# _16
# r_plane.c:208:     baseyscale = -FixedDiv (finesine[angle],centerxfrac);
	.loc 1 208 16 discriminator 1
	movl	%eax, baseyscale(%rip)	# _16, baseyscale
# r_plane.c:209: }
	.loc 1 209 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	R_ClearPlanes, .-R_ClearPlanes
	.section	.rodata
	.align 8
.LC1:
	.string	"R_FindPlane: no more visplanes"
	.text
	.globl	R_FindPlane
	.type	R_FindPlane, @function
R_FindPlane:
.LFB9:
	.loc 1 222 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# height, height
	movl	%esi, -24(%rbp)	# picnum, picnum
	movl	%edx, -28(%rbp)	# lightlevel, lightlevel
# r_plane.c:225:     if (picnum == skyflatnum)
	.loc 1 225 16
	movl	skyflatnum(%rip), %eax	# skyflatnum, skyflatnum.23_1
# r_plane.c:225:     if (picnum == skyflatnum)
	.loc 1 225 8
	cmpl	%eax, -24(%rbp)	# skyflatnum.23_1, picnum
	jne	.L14	#,
# r_plane.c:227: 	height = 0;			// all skys map together
	.loc 1 227 9
	movl	$0, -20(%rbp)	#, height
# r_plane.c:228: 	lightlevel = 0;
	.loc 1 228 13
	movl	$0, -28(%rbp)	#, lightlevel
.L14:
# r_plane.c:231:     for (check=visplanes; check<lastvisplane; check++)
	.loc 1 231 15
	leaq	visplanes(%rip), %rax	#, tmp95
	movq	%rax, -8(%rbp)	# tmp95, check
# r_plane.c:231:     for (check=visplanes; check<lastvisplane; check++)
	.loc 1 231 5
	jmp	.L15	#
.L18:
# r_plane.c:233: 	if (height == check->height
	.loc 1 233 21
	movq	-8(%rbp), %rax	# check, tmp96
	movl	(%rax), %eax	# check_14->height, _2
# r_plane.c:233: 	if (height == check->height
	.loc 1 233 5
	cmpl	%eax, -20(%rbp)	# _2, height
	jne	.L16	#,
# r_plane.c:234: 	    && picnum == check->picnum
	.loc 1 234 24
	movq	-8(%rbp), %rax	# check, tmp97
	movl	4(%rax), %eax	# check_14->picnum, _3
# r_plane.c:234: 	    && picnum == check->picnum
	.loc 1 234 6
	cmpl	%eax, -24(%rbp)	# _3, picnum
	jne	.L16	#,
# r_plane.c:235: 	    && lightlevel == check->lightlevel)
	.loc 1 235 28
	movq	-8(%rbp), %rax	# check, tmp98
	movl	8(%rax), %eax	# check_14->lightlevel, _4
# r_plane.c:235: 	    && lightlevel == check->lightlevel)
	.loc 1 235 6
	cmpl	%eax, -28(%rbp)	# _4, lightlevel
	je	.L22	#,
.L16:
# r_plane.c:231:     for (check=visplanes; check<lastvisplane; check++)
	.loc 1 231 52 discriminator 2
	addq	$664, -8(%rbp)	#, check
.L15:
# r_plane.c:231:     for (check=visplanes; check<lastvisplane; check++)
	.loc 1 231 32 discriminator 1
	movq	lastvisplane(%rip), %rax	# lastvisplane, lastvisplane.24_5
	cmpq	%rax, -8(%rbp)	# lastvisplane.24_5, check
	jb	.L18	#,
	jmp	.L17	#
.L22:
# r_plane.c:237: 	    break;
	.loc 1 237 6
	nop	
.L17:
# r_plane.c:242:     if (check < lastvisplane)
	.loc 1 242 15
	movq	lastvisplane(%rip), %rax	# lastvisplane, lastvisplane.25_6
# r_plane.c:242:     if (check < lastvisplane)
	.loc 1 242 8
	cmpq	%rax, -8(%rbp)	# lastvisplane.25_6, check
	jnb	.L19	#,
# r_plane.c:243: 	return check;
	.loc 1 243 9
	movq	-8(%rbp), %rax	# check, _15
	jmp	.L20	#
.L19:
# r_plane.c:245:     if (lastvisplane - visplanes == MAXVISPLANES)
	.loc 1 245 22
	movq	lastvisplane(%rip), %rdx	# lastvisplane, lastvisplane.26_7
	leaq	visplanes(%rip), %rax	#, tmp99
	subq	%rax, %rdx	# tmp99, _8
# r_plane.c:245:     if (lastvisplane - visplanes == MAXVISPLANES)
	.loc 1 245 8
	cmpq	$84992, %rdx	#, _8
	jne	.L21	#,
# r_plane.c:246: 	I_Error ("R_FindPlane: no more visplanes");
	.loc 1 246 2
	leaq	.LC1(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L21:
# r_plane.c:248:     lastvisplane++;
	.loc 1 248 17
	movq	lastvisplane(%rip), %rax	# lastvisplane, lastvisplane.27_9
	addq	$664, %rax	#, _10
	movq	%rax, lastvisplane(%rip)	# _10, lastvisplane
# r_plane.c:250:     check->height = height;
	.loc 1 250 19
	movq	-8(%rbp), %rax	# check, tmp101
	movl	-20(%rbp), %edx	# height, tmp102
	movl	%edx, (%rax)	# tmp102, check_14->height
# r_plane.c:251:     check->picnum = picnum;
	.loc 1 251 19
	movq	-8(%rbp), %rax	# check, tmp103
	movl	-24(%rbp), %edx	# picnum, tmp104
	movl	%edx, 4(%rax)	# tmp104, check_14->picnum
# r_plane.c:252:     check->lightlevel = lightlevel;
	.loc 1 252 23
	movq	-8(%rbp), %rax	# check, tmp105
	movl	-28(%rbp), %edx	# lightlevel, tmp106
	movl	%edx, 8(%rax)	# tmp106, check_14->lightlevel
# r_plane.c:253:     check->minx = SCREENWIDTH;
	.loc 1 253 17
	movq	-8(%rbp), %rax	# check, tmp107
	movl	$320, 12(%rax)	#, check_14->minx
# r_plane.c:254:     check->maxx = -1;
	.loc 1 254 17
	movq	-8(%rbp), %rax	# check, tmp108
	movl	$-1, 16(%rax)	#, check_14->maxx
# r_plane.c:256:     memset (check->top,0xff,sizeof(check->top));
	.loc 1 256 18
	movq	-8(%rbp), %rax	# check, tmp109
	addq	$21, %rax	#, _11
# r_plane.c:256:     memset (check->top,0xff,sizeof(check->top));
	.loc 1 256 5
	movl	$320, %edx	#,
	movl	$255, %esi	#,
	movq	%rax, %rdi	# _11,
	call	memset@PLT	#
# r_plane.c:258:     return check;
	.loc 1 258 12
	movq	-8(%rbp), %rax	# check, _15
.L20:
# r_plane.c:259: }
	.loc 1 259 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	R_FindPlane, .-R_FindPlane
	.globl	R_CheckPlane
	.type	R_CheckPlane, @function
R_CheckPlane:
.LFB10:
	.loc 1 270 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# pl, pl
	movl	%esi, -44(%rbp)	# start, start
	movl	%edx, -48(%rbp)	# stop, stop
# r_plane.c:277:     if (start < pl->minx)
	.loc 1 277 19
	movq	-40(%rbp), %rax	# pl, tmp96
	movl	12(%rax), %eax	# pl_22(D)->minx, _1
# r_plane.c:277:     if (start < pl->minx)
	.loc 1 277 8
	cmpl	%eax, -44(%rbp)	# _1, start
	jge	.L24	#,
# r_plane.c:279: 	intrl = pl->minx;
	.loc 1 279 8
	movq	-40(%rbp), %rax	# pl, tmp97
	movl	12(%rax), %eax	# pl_22(D)->minx, tmp98
	movl	%eax, -20(%rbp)	# tmp98, intrl
# r_plane.c:280: 	unionl = start;
	.loc 1 280 9
	movl	-44(%rbp), %eax	# start, tmp99
	movl	%eax, -12(%rbp)	# tmp99, unionl
	jmp	.L25	#
.L24:
# r_plane.c:284: 	unionl = pl->minx;
	.loc 1 284 9
	movq	-40(%rbp), %rax	# pl, tmp100
	movl	12(%rax), %eax	# pl_22(D)->minx, tmp101
	movl	%eax, -12(%rbp)	# tmp101, unionl
# r_plane.c:285: 	intrl = start;
	.loc 1 285 8
	movl	-44(%rbp), %eax	# start, tmp102
	movl	%eax, -20(%rbp)	# tmp102, intrl
.L25:
# r_plane.c:288:     if (stop > pl->maxx)
	.loc 1 288 18
	movq	-40(%rbp), %rax	# pl, tmp103
	movl	16(%rax), %eax	# pl_22(D)->maxx, _2
# r_plane.c:288:     if (stop > pl->maxx)
	.loc 1 288 8
	cmpl	%eax, -48(%rbp)	# _2, stop
	jle	.L26	#,
# r_plane.c:290: 	intrh = pl->maxx;
	.loc 1 290 8
	movq	-40(%rbp), %rax	# pl, tmp104
	movl	16(%rax), %eax	# pl_22(D)->maxx, tmp105
	movl	%eax, -16(%rbp)	# tmp105, intrh
# r_plane.c:291: 	unionh = stop;
	.loc 1 291 9
	movl	-48(%rbp), %eax	# stop, tmp106
	movl	%eax, -8(%rbp)	# tmp106, unionh
	jmp	.L27	#
.L26:
# r_plane.c:295: 	unionh = pl->maxx;
	.loc 1 295 9
	movq	-40(%rbp), %rax	# pl, tmp107
	movl	16(%rax), %eax	# pl_22(D)->maxx, tmp108
	movl	%eax, -8(%rbp)	# tmp108, unionh
# r_plane.c:296: 	intrh = stop;
	.loc 1 296 8
	movl	-48(%rbp), %eax	# stop, tmp109
	movl	%eax, -16(%rbp)	# tmp109, intrh
.L27:
# r_plane.c:299:     for (x=intrl ; x<= intrh ; x++)
	.loc 1 299 11
	movl	-20(%rbp), %eax	# intrl, tmp110
	movl	%eax, -4(%rbp)	# tmp110, x
# r_plane.c:299:     for (x=intrl ; x<= intrh ; x++)
	.loc 1 299 5
	jmp	.L28	#
.L31:
# r_plane.c:300: 	if (pl->top[x] != 0xff)
	.loc 1 300 13
	movq	-40(%rbp), %rdx	# pl, tmp111
	movl	-4(%rbp), %eax	# x, tmp113
	cltq
	movzbl	21(%rdx,%rax), %eax	# pl_22(D)->top[x_18], _3
# r_plane.c:300: 	if (pl->top[x] != 0xff)
	.loc 1 300 5
	cmpb	$-1, %al	#, _3
	jne	.L34	#,
# r_plane.c:299:     for (x=intrl ; x<= intrh ; x++)
	.loc 1 299 33 discriminator 2
	addl	$1, -4(%rbp)	#, x
.L28:
# r_plane.c:299:     for (x=intrl ; x<= intrh ; x++)
	.loc 1 299 21 discriminator 1
	movl	-4(%rbp), %eax	# x, tmp114
	cmpl	-16(%rbp), %eax	# intrh, tmp114
	jle	.L31	#,
	jmp	.L30	#
.L34:
# r_plane.c:301: 	    break;
	.loc 1 301 6
	nop	
.L30:
# r_plane.c:303:     if (x > intrh)
	.loc 1 303 8
	movl	-4(%rbp), %eax	# x, tmp115
	cmpl	-16(%rbp), %eax	# intrh, tmp115
	jle	.L32	#,
# r_plane.c:305: 	pl->minx = unionl;
	.loc 1 305 11
	movq	-40(%rbp), %rax	# pl, tmp116
	movl	-12(%rbp), %edx	# unionl, tmp117
	movl	%edx, 12(%rax)	# tmp117, pl_22(D)->minx
# r_plane.c:306: 	pl->maxx = unionh;
	.loc 1 306 11
	movq	-40(%rbp), %rax	# pl, tmp118
	movl	-8(%rbp), %edx	# unionh, tmp119
	movl	%edx, 16(%rax)	# tmp119, pl_22(D)->maxx
# r_plane.c:309: 	return pl;		
	.loc 1 309 9
	movq	-40(%rbp), %rax	# pl, _19
	jmp	.L33	#
.L32:
# r_plane.c:313:     lastvisplane->height = pl->height;
	.loc 1 313 17
	movq	lastvisplane(%rip), %rax	# lastvisplane, lastvisplane.28_4
# r_plane.c:313:     lastvisplane->height = pl->height;
	.loc 1 313 30
	movq	-40(%rbp), %rdx	# pl, tmp120
	movl	(%rdx), %edx	# pl_22(D)->height, _5
# r_plane.c:313:     lastvisplane->height = pl->height;
	.loc 1 313 26
	movl	%edx, (%rax)	# _5, lastvisplane.28_4->height
# r_plane.c:314:     lastvisplane->picnum = pl->picnum;
	.loc 1 314 17
	movq	lastvisplane(%rip), %rax	# lastvisplane, lastvisplane.29_6
# r_plane.c:314:     lastvisplane->picnum = pl->picnum;
	.loc 1 314 30
	movq	-40(%rbp), %rdx	# pl, tmp121
	movl	4(%rdx), %edx	# pl_22(D)->picnum, _7
# r_plane.c:314:     lastvisplane->picnum = pl->picnum;
	.loc 1 314 26
	movl	%edx, 4(%rax)	# _7, lastvisplane.29_6->picnum
# r_plane.c:315:     lastvisplane->lightlevel = pl->lightlevel;
	.loc 1 315 17
	movq	lastvisplane(%rip), %rax	# lastvisplane, lastvisplane.30_8
# r_plane.c:315:     lastvisplane->lightlevel = pl->lightlevel;
	.loc 1 315 34
	movq	-40(%rbp), %rdx	# pl, tmp122
	movl	8(%rdx), %edx	# pl_22(D)->lightlevel, _9
# r_plane.c:315:     lastvisplane->lightlevel = pl->lightlevel;
	.loc 1 315 30
	movl	%edx, 8(%rax)	# _9, lastvisplane.30_8->lightlevel
# r_plane.c:317:     pl = lastvisplane++;
	.loc 1 317 22
	movq	lastvisplane(%rip), %rax	# lastvisplane, lastvisplane.31_10
	leaq	664(%rax), %rdx	#, _12
	movq	%rdx, lastvisplane(%rip)	# _12, lastvisplane
# r_plane.c:317:     pl = lastvisplane++;
	.loc 1 317 8
	movq	%rax, -40(%rbp)	# lastvisplane.31_10, pl
# r_plane.c:318:     pl->minx = start;
	.loc 1 318 14
	movq	-40(%rbp), %rax	# pl, tmp123
	movl	-44(%rbp), %edx	# start, tmp124
	movl	%edx, 12(%rax)	# tmp124, pl_39->minx
# r_plane.c:319:     pl->maxx = stop;
	.loc 1 319 14
	movq	-40(%rbp), %rax	# pl, tmp125
	movl	-48(%rbp), %edx	# stop, tmp126
	movl	%edx, 16(%rax)	# tmp126, pl_39->maxx
# r_plane.c:321:     memset (pl->top,0xff,sizeof(pl->top));
	.loc 1 321 15
	movq	-40(%rbp), %rax	# pl, tmp127
	addq	$21, %rax	#, _13
# r_plane.c:321:     memset (pl->top,0xff,sizeof(pl->top));
	.loc 1 321 5
	movl	$320, %edx	#,
	movl	$255, %esi	#,
	movq	%rax, %rdi	# _13,
	call	memset@PLT	#
# r_plane.c:323:     return pl;
	.loc 1 323 12
	movq	-40(%rbp), %rax	# pl, _19
.L33:
# r_plane.c:324: }
	.loc 1 324 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	R_CheckPlane, .-R_CheckPlane
	.globl	R_MakeSpans
	.type	R_MakeSpans, @function
R_MakeSpans:
.LFB11:
	.loc 1 337 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -4(%rbp)	# x, x
	movl	%esi, -8(%rbp)	# t1, t1
	movl	%edx, -12(%rbp)	# b1, b1
	movl	%ecx, -16(%rbp)	# t2, t2
	movl	%r8d, -20(%rbp)	# b2, b2
# r_plane.c:338:     while (t1 < t2 && t1<=b1)
	.loc 1 338 11
	jmp	.L36	#
.L38:
# r_plane.c:340: 	R_MapPlane (t1,spanstart[t1],x-1);
	.loc 1 340 2
	movl	-4(%rbp), %eax	# x, tmp86
	leal	-1(%rax), %edx	#, _1
	movl	-8(%rbp), %eax	# t1, tmp88
	cltq
	leaq	0(,%rax,4), %rcx	#, tmp89
	leaq	spanstart(%rip), %rax	#, tmp90
	movl	(%rcx,%rax), %ecx	# spanstart[t1_5], _2
	movl	-8(%rbp), %eax	# t1, tmp91
	movl	%ecx, %esi	# _2,
	movl	%eax, %edi	# tmp91,
	call	R_MapPlane	#
# r_plane.c:341: 	t1++;
	.loc 1 341 4
	addl	$1, -8(%rbp)	#, t1
.L36:
# r_plane.c:338:     while (t1 < t2 && t1<=b1)
	.loc 1 338 20
	movl	-8(%rbp), %eax	# t1, tmp92
	cmpl	-16(%rbp), %eax	# t2, tmp92
	jge	.L39	#,
# r_plane.c:338:     while (t1 < t2 && t1<=b1)
	.loc 1 338 20 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# t1, tmp93
	cmpl	-12(%rbp), %eax	# b1, tmp93
	jle	.L38	#,
# r_plane.c:343:     while (b1 > b2 && b1>=t1)
	.loc 1 343 11 is_stmt 1
	jmp	.L39	#
.L41:
# r_plane.c:345: 	R_MapPlane (b1,spanstart[b1],x-1);
	.loc 1 345 2
	movl	-4(%rbp), %eax	# x, tmp94
	leal	-1(%rax), %edx	#, _3
	movl	-12(%rbp), %eax	# b1, tmp96
	cltq
	leaq	0(,%rax,4), %rcx	#, tmp97
	leaq	spanstart(%rip), %rax	#, tmp98
	movl	(%rcx,%rax), %ecx	# spanstart[b1_6], _4
	movl	-12(%rbp), %eax	# b1, tmp99
	movl	%ecx, %esi	# _4,
	movl	%eax, %edi	# tmp99,
	call	R_MapPlane	#
# r_plane.c:346: 	b1--;
	.loc 1 346 4
	subl	$1, -12(%rbp)	#, b1
.L39:
# r_plane.c:343:     while (b1 > b2 && b1>=t1)
	.loc 1 343 20
	movl	-12(%rbp), %eax	# b1, tmp100
	cmpl	-20(%rbp), %eax	# b2, tmp100
	jle	.L42	#,
# r_plane.c:343:     while (b1 > b2 && b1>=t1)
	.loc 1 343 20 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# b1, tmp101
	cmpl	-8(%rbp), %eax	# t1, tmp101
	jge	.L41	#,
# r_plane.c:349:     while (t2 < t1 && t2<=b2)
	.loc 1 349 11 is_stmt 1
	jmp	.L42	#
.L44:
# r_plane.c:351: 	spanstart[t2] = x;
	.loc 1 351 16
	movl	-16(%rbp), %eax	# t2, tmp103
	cltq
	leaq	0(,%rax,4), %rcx	#, tmp104
	leaq	spanstart(%rip), %rdx	#, tmp105
	movl	-4(%rbp), %eax	# x, tmp106
	movl	%eax, (%rcx,%rdx)	# tmp106, spanstart[t2_7]
# r_plane.c:352: 	t2++;
	.loc 1 352 4
	addl	$1, -16(%rbp)	#, t2
.L42:
# r_plane.c:349:     while (t2 < t1 && t2<=b2)
	.loc 1 349 20
	movl	-16(%rbp), %eax	# t2, tmp107
	cmpl	-8(%rbp), %eax	# t1, tmp107
	jge	.L45	#,
# r_plane.c:349:     while (t2 < t1 && t2<=b2)
	.loc 1 349 20 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# t2, tmp108
	cmpl	-20(%rbp), %eax	# b2, tmp108
	jle	.L44	#,
# r_plane.c:354:     while (b2 > b1 && b2>=t2)
	.loc 1 354 11 is_stmt 1
	jmp	.L45	#
.L47:
# r_plane.c:356: 	spanstart[b2] = x;
	.loc 1 356 16
	movl	-20(%rbp), %eax	# b2, tmp110
	cltq
	leaq	0(,%rax,4), %rcx	#, tmp111
	leaq	spanstart(%rip), %rdx	#, tmp112
	movl	-4(%rbp), %eax	# x, tmp113
	movl	%eax, (%rcx,%rdx)	# tmp113, spanstart[b2_8]
# r_plane.c:357: 	b2--;
	.loc 1 357 4
	subl	$1, -20(%rbp)	#, b2
.L45:
# r_plane.c:354:     while (b2 > b1 && b2>=t2)
	.loc 1 354 20
	movl	-20(%rbp), %eax	# b2, tmp114
	cmpl	-12(%rbp), %eax	# b1, tmp114
	jle	.L48	#,
# r_plane.c:354:     while (b2 > b1 && b2>=t2)
	.loc 1 354 20 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# b2, tmp115
	cmpl	-16(%rbp), %eax	# t2, tmp115
	jge	.L47	#,
.L48:
# r_plane.c:359: }
	.loc 1 359 1 is_stmt 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	R_MakeSpans, .-R_MakeSpans
	.section	.rodata
	.align 8
.LC2:
	.string	"R_DrawPlanes: drawsegs overflow (%i)"
	.align 8
.LC3:
	.string	"R_DrawPlanes: visplane overflow (%i)"
	.align 8
.LC4:
	.string	"R_DrawPlanes: opening overflow (%i)"
.LC5:
	.string	"Z_CT at r_plane.c:%i"
	.text
	.globl	R_DrawPlanes
	.type	R_DrawPlanes, @function
R_DrawPlanes:
.LFB12:
	.loc 1 368 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# r_plane.c:376:     if (ds_p - drawsegs > MAXDRAWSEGS)
	.loc 1 376 14
	movq	ds_p(%rip), %rdx	# ds_p, ds_p.33_1
	leaq	drawsegs(%rip), %rax	#, tmp157
	subq	%rax, %rdx	# tmp157, _2
# r_plane.c:376:     if (ds_p - drawsegs > MAXDRAWSEGS)
	.loc 1 376 8
	cmpq	$16384, %rdx	#, _2
	jle	.L50	#,
# r_plane.c:378: 		 ds_p - drawsegs);
	.loc 1 378 9
	movq	ds_p(%rip), %rdx	# ds_p, ds_p.34_3
	leaq	drawsegs(%rip), %rax	#, tmp158
	subq	%rax, %rdx	# tmp158, _4
# r_plane.c:377: 	I_Error ("R_DrawPlanes: drawsegs overflow (%i)",
	.loc 1 377 2
	movq	%rdx, %rax	# _4, _4
	sarq	$6, %rax	#, _4
	movq	%rax, %rsi	# _5,
	leaq	.LC2(%rip), %rax	#, tmp160
	movq	%rax, %rdi	# tmp160,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L50:
# r_plane.c:380:     if (lastvisplane - visplanes > MAXVISPLANES)
	.loc 1 380 22
	movq	lastvisplane(%rip), %rdx	# lastvisplane, lastvisplane.35_6
	leaq	visplanes(%rip), %rax	#, tmp161
	subq	%rax, %rdx	# tmp161, _7
# r_plane.c:380:     if (lastvisplane - visplanes > MAXVISPLANES)
	.loc 1 380 8
	cmpq	$84992, %rdx	#, _7
	jle	.L51	#,
# r_plane.c:382: 		 lastvisplane - visplanes);
	.loc 1 382 17
	movq	lastvisplane(%rip), %rdx	# lastvisplane, lastvisplane.36_8
	leaq	visplanes(%rip), %rax	#, tmp162
	subq	%rax, %rdx	# tmp162, _9
# r_plane.c:381: 	I_Error ("R_DrawPlanes: visplane overflow (%i)",
	.loc 1 381 2
	sarq	$3, %rdx	#, tmp163
	movabsq	$-6667497857967307813, %rax	#, tmp165
	imulq	%rdx, %rax	# tmp163, tmp164
	movq	%rax, %rsi	# _10,
	leaq	.LC3(%rip), %rax	#, tmp166
	movq	%rax, %rdi	# tmp166,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L51:
# r_plane.c:384:     if (lastopening - openings > MAXOPENINGS)
	.loc 1 384 21
	movq	lastopening(%rip), %rdx	# lastopening, lastopening.37_11
	leaq	openings(%rip), %rax	#, tmp167
	subq	%rax, %rdx	# tmp167, _12
# r_plane.c:384:     if (lastopening - openings > MAXOPENINGS)
	.loc 1 384 8
	cmpq	$40960, %rdx	#, _12
	jle	.L52	#,
# r_plane.c:386: 		 lastopening - openings);
	.loc 1 386 16
	movq	lastopening(%rip), %rdx	# lastopening, lastopening.38_13
	leaq	openings(%rip), %rax	#, tmp168
	subq	%rax, %rdx	# tmp168, _14
# r_plane.c:385: 	I_Error ("R_DrawPlanes: opening overflow (%i)",
	.loc 1 385 2
	movq	%rdx, %rax	# _14, _14
	sarq	%rax	# _14
	movq	%rax, %rsi	# _15,
	leaq	.LC4(%rip), %rax	#, tmp170
	movq	%rax, %rdi	# tmp170,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L52:
# r_plane.c:389:     for (pl = visplanes ; pl < lastvisplane ; pl++)
	.loc 1 389 13
	leaq	visplanes(%rip), %rax	#, tmp171
	movq	%rax, -8(%rbp)	# tmp171, pl
# r_plane.c:389:     for (pl = visplanes ; pl < lastvisplane ; pl++)
	.loc 1 389 5
	jmp	.L53	#
.L65:
# r_plane.c:391: 	if (pl->minx > pl->maxx)
	.loc 1 391 8
	movq	-8(%rbp), %rax	# pl, tmp172
	movl	12(%rax), %edx	# pl_76->minx, _16
# r_plane.c:391: 	if (pl->minx > pl->maxx)
	.loc 1 391 19
	movq	-8(%rbp), %rax	# pl, tmp173
	movl	16(%rax), %eax	# pl_76->maxx, _17
# r_plane.c:391: 	if (pl->minx > pl->maxx)
	.loc 1 391 5
	cmpl	%eax, %edx	# _17, _16
	jg	.L66	#,
# r_plane.c:396: 	if (pl->picnum == skyflatnum)
	.loc 1 396 8
	movq	-8(%rbp), %rax	# pl, tmp174
	movl	4(%rax), %edx	# pl_76->picnum, _18
# r_plane.c:396: 	if (pl->picnum == skyflatnum)
	.loc 1 396 17
	movl	skyflatnum(%rip), %eax	# skyflatnum, skyflatnum.39_19
# r_plane.c:396: 	if (pl->picnum == skyflatnum)
	.loc 1 396 5
	cmpl	%eax, %edx	# skyflatnum.39_19, _18
	jne	.L56	#,
# r_plane.c:398: 	    dc_iscale = pspriteiscale>>detailshift;
	.loc 1 398 31
	movl	pspriteiscale(%rip), %edx	# pspriteiscale, pspriteiscale.40_20
	movl	detailshift(%rip), %eax	# detailshift, detailshift.41_21
	movl	%eax, %ecx	# detailshift.41_21, tmp228
	sarl	%cl, %edx	# tmp228, pspriteiscale.40_20
	movl	%edx, %eax	# pspriteiscale.40_20, _22
# r_plane.c:398: 	    dc_iscale = pspriteiscale>>detailshift;
	.loc 1 398 16
	movl	%eax, dc_iscale(%rip)	# _22, dc_iscale
# r_plane.c:404: 	    dc_colormap = colormaps;
	.loc 1 404 18
	movq	colormaps(%rip), %rax	# colormaps, colormaps.42_23
	movq	%rax, dc_colormap(%rip)	# colormaps.42_23, dc_colormap
# r_plane.c:405: 	    dc_texturemid = skytexturemid;
	.loc 1 405 20
	movl	skytexturemid(%rip), %eax	# skytexturemid, skytexturemid.43_24
	movl	%eax, dc_texturemid(%rip)	# skytexturemid.43_24, dc_texturemid
# r_plane.c:406: 	    for (x=pl->minx ; x <= pl->maxx ; x++)
	.loc 1 406 12
	movq	-8(%rbp), %rax	# pl, tmp175
	movl	12(%rax), %eax	# pl_76->minx, tmp176
	movl	%eax, -20(%rbp)	# tmp176, x
# r_plane.c:406: 	    for (x=pl->minx ; x <= pl->maxx ; x++)
	.loc 1 406 6
	jmp	.L57	#
.L59:
# r_plane.c:408: 		dc_yl = pl->top[x];
	.loc 1 408 18
	movq	-8(%rbp), %rdx	# pl, tmp177
	movl	-20(%rbp), %eax	# x, tmp179
	cltq
	movzbl	21(%rdx,%rax), %eax	# pl_76->top[x_79], _25
	movzbl	%al, %eax	# _25, _26
# r_plane.c:408: 		dc_yl = pl->top[x];
	.loc 1 408 9
	movl	%eax, dc_yl(%rip)	# _26, dc_yl
# r_plane.c:409: 		dc_yh = pl->bottom[x];
	.loc 1 409 21
	movq	-8(%rbp), %rdx	# pl, tmp180
	movl	-20(%rbp), %eax	# x, tmp182
	cltq
	movzbl	343(%rdx,%rax), %eax	# pl_76->bottom[x_79], _27
	movzbl	%al, %eax	# _27, _28
# r_plane.c:409: 		dc_yh = pl->bottom[x];
	.loc 1 409 9
	movl	%eax, dc_yh(%rip)	# _28, dc_yh
# r_plane.c:411: 		if (dc_yl <= dc_yh)
	.loc 1 411 13
	movl	dc_yl(%rip), %edx	# dc_yl, dc_yl.44_29
	movl	dc_yh(%rip), %eax	# dc_yh, dc_yh.45_30
# r_plane.c:411: 		if (dc_yl <= dc_yh)
	.loc 1 411 6
	cmpl	%eax, %edx	# dc_yh.45_30, dc_yl.44_29
	jg	.L58	#,
# r_plane.c:413: 		    angle = (viewangle + xtoviewangle[x])>>ANGLETOSKYSHIFT;
	.loc 1 413 40
	movl	-20(%rbp), %eax	# x, tmp184
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp185
	leaq	xtoviewangle(%rip), %rax	#, tmp186
	movl	(%rdx,%rax), %edx	# xtoviewangle[x_79], _31
# r_plane.c:413: 		    angle = (viewangle + xtoviewangle[x])>>ANGLETOSKYSHIFT;
	.loc 1 413 26
	movl	viewangle(%rip), %eax	# viewangle, viewangle.46_32
	addl	%edx, %eax	# _31, _33
# r_plane.c:413: 		    angle = (viewangle + xtoviewangle[x])>>ANGLETOSKYSHIFT;
	.loc 1 413 44
	shrl	$22, %eax	#, _34
# r_plane.c:413: 		    angle = (viewangle + xtoviewangle[x])>>ANGLETOSKYSHIFT;
	.loc 1 413 13
	movl	%eax, -12(%rbp)	# _34, angle
# r_plane.c:414: 		    dc_x = x;
	.loc 1 414 12
	movl	-20(%rbp), %eax	# x, tmp187
	movl	%eax, dc_x(%rip)	# tmp187, dc_x
# r_plane.c:415: 		    dc_source = R_GetColumn(skytexture, angle);
	.loc 1 415 19
	movl	skytexture(%rip), %eax	# skytexture, skytexture.47_35
	movl	-12(%rbp), %edx	# angle, tmp188
	movl	%edx, %esi	# tmp188,
	movl	%eax, %edi	# skytexture.47_35,
	call	R_GetColumn@PLT	#
# r_plane.c:415: 		    dc_source = R_GetColumn(skytexture, angle);
	.loc 1 415 17 discriminator 1
	movq	%rax, dc_source(%rip)	# _36, dc_source
# r_plane.c:416: 		    colfunc ();
	.loc 1 416 7
	movq	colfunc(%rip), %rax	# colfunc, colfunc.48_37
	call	*%rax	# colfunc.48_37
.LVL1:
.L58:
# r_plane.c:406: 	    for (x=pl->minx ; x <= pl->maxx ; x++)
	.loc 1 406 41 discriminator 2
	addl	$1, -20(%rbp)	#, x
.L57:
# r_plane.c:406: 	    for (x=pl->minx ; x <= pl->maxx ; x++)
	.loc 1 406 31 discriminator 1
	movq	-8(%rbp), %rax	# pl, tmp189
	movl	16(%rax), %eax	# pl_76->maxx, _38
# r_plane.c:406: 	    for (x=pl->minx ; x <= pl->maxx ; x++)
	.loc 1 406 26 discriminator 1
	cmpl	%eax, -20(%rbp)	# _38, x
	jle	.L59	#,
# r_plane.c:419: 	    continue;
	.loc 1 419 6
	jmp	.L55	#
.L56:
# r_plane.c:424: 				   flattranslation[pl->picnum],
	.loc 1 424 23
	movq	flattranslation(%rip), %rdx	# flattranslation, flattranslation.49_39
# r_plane.c:424: 				   flattranslation[pl->picnum],
	.loc 1 424 26
	movq	-8(%rbp), %rax	# pl, tmp190
	movl	4(%rax), %eax	# pl_76->picnum, _40
	cltq
# r_plane.c:424: 				   flattranslation[pl->picnum],
	.loc 1 424 23
	salq	$2, %rax	#, _42
	addq	%rdx, %rax	# flattranslation.49_39, _43
	movl	(%rax), %edx	# *_43, _44
# r_plane.c:423: 	ds_source = W_CacheLumpNum(firstflat +
	.loc 1 423 14
	movl	firstflat(%rip), %eax	# firstflat, firstflat.50_45
	addl	%edx, %eax	# _44, _46
	movl	$1, %esi	#,
	movl	%eax, %edi	# _46,
	call	W_CacheLumpNum@PLT	#
# r_plane.c:423: 	ds_source = W_CacheLumpNum(firstflat +
	.loc 1 423 12 discriminator 1
	movq	%rax, ds_source(%rip)	# _47, ds_source
# r_plane.c:427: 	planeheight = abs(pl->height-viewz);
	.loc 1 427 22
	movq	-8(%rbp), %rax	# pl, tmp191
	movl	(%rax), %eax	# pl_76->height, _48
# r_plane.c:427: 	planeheight = abs(pl->height-viewz);
	.loc 1 427 16
	movl	viewz(%rip), %edx	# viewz, viewz.51_49
# r_plane.c:427: 	planeheight = abs(pl->height-viewz);
	.loc 1 427 30
	subl	%edx, %eax	# viewz.51_49, _50
# r_plane.c:427: 	planeheight = abs(pl->height-viewz);
	.loc 1 427 16
	movl	%eax, %edx	# _50, tmp223
	negl	%edx	# tmp223
	cmovns	%edx, %eax	# tmp223,, _51
# r_plane.c:427: 	planeheight = abs(pl->height-viewz);
	.loc 1 427 14
	movl	%eax, planeheight(%rip)	# _51, planeheight
# r_plane.c:428: 	light = (pl->lightlevel >> LIGHTSEGSHIFT)+extralight;
	.loc 1 428 13
	movq	-8(%rbp), %rax	# pl, tmp192
	movl	8(%rax), %eax	# pl_76->lightlevel, _52
# r_plane.c:428: 	light = (pl->lightlevel >> LIGHTSEGSHIFT)+extralight;
	.loc 1 428 26
	sarl	$4, %eax	#, _52
	movl	%eax, %edx	# _52, _53
# r_plane.c:428: 	light = (pl->lightlevel >> LIGHTSEGSHIFT)+extralight;
	.loc 1 428 43
	movl	extralight(%rip), %eax	# extralight, extralight.52_54
# r_plane.c:428: 	light = (pl->lightlevel >> LIGHTSEGSHIFT)+extralight;
	.loc 1 428 8
	addl	%edx, %eax	# _53, tmp193
	movl	%eax, -24(%rbp)	# tmp193, light
# r_plane.c:430: 	if (light >= LIGHTLEVELS)
	.loc 1 430 5
	cmpl	$15, -24(%rbp)	#, light
	jle	.L60	#,
# r_plane.c:431: 	    light = LIGHTLEVELS-1;
	.loc 1 431 12
	movl	$15, -24(%rbp)	#, light
.L60:
# r_plane.c:433: 	if (light < 0)
	.loc 1 433 5
	cmpl	$0, -24(%rbp)	#, light
	jns	.L61	#,
# r_plane.c:434: 	    light = 0;
	.loc 1 434 12
	movl	$0, -24(%rbp)	#, light
.L61:
# r_plane.c:436: 	planezlight = zlight[light];
	.loc 1 436 16
	movl	-24(%rbp), %eax	# light, tmp195
	cltq
	salq	$10, %rax	#, tmp194
	movq	%rax, %rdx	# tmp194, tmp196
	leaq	zlight(%rip), %rax	#, tmp197
	addq	%rdx, %rax	# tmp196, _55
# r_plane.c:436: 	planezlight = zlight[light];
	.loc 1 436 14
	movq	%rax, planezlight(%rip)	# _55, planezlight
# r_plane.c:438: 	pl->top[pl->maxx+1] = 0xff;
	.loc 1 438 12
	movq	-8(%rbp), %rax	# pl, tmp198
	movl	16(%rax), %eax	# pl_76->maxx, _56
# r_plane.c:438: 	pl->top[pl->maxx+1] = 0xff;
	.loc 1 438 18
	addl	$1, %eax	#, _57
# r_plane.c:438: 	pl->top[pl->maxx+1] = 0xff;
	.loc 1 438 22
	movq	-8(%rbp), %rdx	# pl, tmp199
	cltq
	movb	$-1, 21(%rdx,%rax)	#, pl_76->top[_57]
# r_plane.c:439: 	pl->top[pl->minx-1] = 0xff;
	.loc 1 439 12
	movq	-8(%rbp), %rax	# pl, tmp201
	movl	12(%rax), %eax	# pl_76->minx, _58
# r_plane.c:439: 	pl->top[pl->minx-1] = 0xff;
	.loc 1 439 18
	subl	$1, %eax	#, _59
# r_plane.c:439: 	pl->top[pl->minx-1] = 0xff;
	.loc 1 439 22
	movq	-8(%rbp), %rdx	# pl, tmp202
	cltq
	movb	$-1, 21(%rdx,%rax)	#, pl_76->top[_59]
# r_plane.c:441: 	stop = pl->maxx + 1;
	.loc 1 441 11
	movq	-8(%rbp), %rax	# pl, tmp204
	movl	16(%rax), %eax	# pl_76->maxx, _60
# r_plane.c:441: 	stop = pl->maxx + 1;
	.loc 1 441 7
	addl	$1, %eax	#, tmp205
	movl	%eax, -16(%rbp)	# tmp205, stop
# r_plane.c:443: 	for (x=pl->minx ; x<= stop ; x++)
	.loc 1 443 8
	movq	-8(%rbp), %rax	# pl, tmp206
	movl	12(%rax), %eax	# pl_76->minx, tmp207
	movl	%eax, -20(%rbp)	# tmp207, x
# r_plane.c:443: 	for (x=pl->minx ; x<= stop ; x++)
	.loc 1 443 2
	jmp	.L62	#
.L63:
# r_plane.c:448: 			pl->bottom[x]);
	.loc 1 448 14
	movq	-8(%rbp), %rdx	# pl, tmp208
	movl	-20(%rbp), %eax	# x, tmp210
	cltq
	movzbl	343(%rdx,%rax), %eax	# pl_76->bottom[x_80], _61
# r_plane.c:445: 	    R_MakeSpans(x,pl->top[x-1],
	.loc 1 445 6
	movzbl	%al, %edi	# _61, _62
# r_plane.c:447: 			pl->top[x],
	.loc 1 447 11
	movq	-8(%rbp), %rdx	# pl, tmp211
	movl	-20(%rbp), %eax	# x, tmp213
	cltq
	movzbl	21(%rdx,%rax), %eax	# pl_76->top[x_80], _63
# r_plane.c:445: 	    R_MakeSpans(x,pl->top[x-1],
	.loc 1 445 6
	movzbl	%al, %ecx	# _63, _64
# r_plane.c:446: 			pl->bottom[x-1],
	.loc 1 446 16
	movl	-20(%rbp), %eax	# x, tmp214
	subl	$1, %eax	#, _65
# r_plane.c:446: 			pl->bottom[x-1],
	.loc 1 446 14
	movq	-8(%rbp), %rdx	# pl, tmp215
	cltq
	movzbl	343(%rdx,%rax), %eax	# pl_76->bottom[_65], _66
# r_plane.c:445: 	    R_MakeSpans(x,pl->top[x-1],
	.loc 1 445 6
	movzbl	%al, %edx	# _66, _67
# r_plane.c:445: 	    R_MakeSpans(x,pl->top[x-1],
	.loc 1 445 29
	movl	-20(%rbp), %eax	# x, tmp217
	subl	$1, %eax	#, _68
# r_plane.c:445: 	    R_MakeSpans(x,pl->top[x-1],
	.loc 1 445 27
	movq	-8(%rbp), %rsi	# pl, tmp218
	cltq
	movzbl	21(%rsi,%rax), %eax	# pl_76->top[_68], _69
# r_plane.c:445: 	    R_MakeSpans(x,pl->top[x-1],
	.loc 1 445 6
	movzbl	%al, %esi	# _69, _70
	movl	-20(%rbp), %eax	# x, tmp220
	movl	%edi, %r8d	# _62,
	movl	%eax, %edi	# tmp220,
	call	R_MakeSpans	#
# r_plane.c:443: 	for (x=pl->minx ; x<= stop ; x++)
	.loc 1 443 32 discriminator 3
	addl	$1, -20(%rbp)	#, x
.L62:
# r_plane.c:443: 	for (x=pl->minx ; x<= stop ; x++)
	.loc 1 443 21 discriminator 1
	movl	-20(%rbp), %eax	# x, tmp221
	cmpl	-16(%rbp), %eax	# stop, tmp221
	jle	.L63	#,
# r_plane.c:451: 	Z_ChangeTag (ds_source, PU_CACHE);
	.loc 1 451 2
	movq	ds_source(%rip), %rax	# ds_source, ds_source.53_71
	subq	$40, %rax	#, _72
	movl	20(%rax), %eax	# MEM[(struct memblock_t *)_72].id, _73
	cmpl	$1919505, %eax	#, _73
	je	.L64	#,
# r_plane.c:451: 	Z_ChangeTag (ds_source, PU_CACHE);
	.loc 1 451 2 is_stmt 0 discriminator 1
	movl	$451, %esi	#,
	leaq	.LC5(%rip), %rax	#, tmp222
	movq	%rax, %rdi	# tmp222,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L64:
# r_plane.c:451: 	Z_ChangeTag (ds_source, PU_CACHE);
	.loc 1 451 2 discriminator 3
	movq	ds_source(%rip), %rax	# ds_source, ds_source.54_74
	movl	$101, %esi	#,
	movq	%rax, %rdi	# ds_source.54_74,
	call	Z_ChangeTag2@PLT	#
	jmp	.L55	#
.L66:
# r_plane.c:392: 	    continue;
	.loc 1 392 6 is_stmt 1
	nop	
.L55:
# r_plane.c:389:     for (pl = visplanes ; pl < lastvisplane ; pl++)
	.loc 1 389 49 discriminator 2
	addq	$664, -8(%rbp)	#, pl
.L53:
# r_plane.c:389:     for (pl = visplanes ; pl < lastvisplane ; pl++)
	.loc 1 389 30 discriminator 1
	movq	lastvisplane(%rip), %rax	# lastvisplane, lastvisplane.55_75
	cmpq	%rax, -8(%rbp)	# lastvisplane.55_75, pl
	jb	.L65	#,
# r_plane.c:453: }
	.loc 1 453 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	R_DrawPlanes, .-R_DrawPlanes
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 3 "doomtype.h"
	.file 4 "d_ticcmd.h"
	.file 5 "z_zone.h"
	.file 6 "doomdef.h"
	.file 7 "doomdata.h"
	.file 8 "m_fixed.h"
	.file 9 "tables.h"
	.file 10 "d_think.h"
	.file 11 "info.h"
	.file 12 "p_pspr.h"
	.file 13 "p_mobj.h"
	.file 14 "r_defs.h"
	.file 15 "d_player.h"
	.file 16 "doomstat.h"
	.file 17 "r_state.h"
	.file 18 "r_main.h"
	.file 19 "r_bsp.h"
	.file 20 "r_plane.h"
	.file 21 "r_things.h"
	.file 22 "r_draw.h"
	.file 23 "r_sky.h"
	.file 24 "w_wad.h"
	.file 25 "r_data.h"
	.file 26 "/usr/include/string.h"
	.file 27 "i_system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3840
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x27
	.long	.LASF1575
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x9
	.long	0x51
	.long	0x3e
	.uleb128 0xb
	.long	0x43
	.byte	0x31
	.byte	0
	.uleb128 0x1f
	.long	0x2e
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x1f
	.long	0x4a
	.uleb128 0x12
	.long	.LASF1557
	.byte	0x1c
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x7
	.long	.LASF14
	.byte	0x2
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x28
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.long	.LASF4
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0xd
	.byte	0x1
	.byte	0x8
	.long	.LASF6
	.uleb128 0xd
	.byte	0x2
	.byte	0x7
	.long	.LASF7
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0xd
	.byte	0x2
	.byte	0x5
	.long	.LASF10
	.uleb128 0x29
	.byte	0x8
	.uleb128 0x6
	.long	0x4a
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0xe
	.long	0x9a
	.byte	0x3
	.byte	0x22
	.byte	0xe
	.long	0xd6
	.uleb128 0x2
	.long	.LASF12
	.byte	0
	.uleb128 0x2
	.long	.LASF13
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF15
	.byte	0x3
	.byte	0x22
	.byte	0x1c
	.long	0xbd
	.uleb128 0x7
	.long	.LASF16
	.byte	0x3
	.byte	0x24
	.byte	0x17
	.long	0x8c
	.uleb128 0x10
	.byte	0x8
	.byte	0x4
	.byte	0x24
	.long	0x145
	.uleb128 0x3
	.long	.LASF17
	.byte	0x4
	.byte	0x26
	.byte	0xa
	.long	0x4a
	.byte	0
	.uleb128 0x3
	.long	.LASF18
	.byte	0x4
	.byte	0x27
	.byte	0xa
	.long	0x4a
	.byte	0x1
	.uleb128 0x3
	.long	.LASF19
	.byte	0x4
	.byte	0x28
	.byte	0xb
	.long	0xa8
	.byte	0x2
	.uleb128 0x3
	.long	.LASF20
	.byte	0x4
	.byte	0x29
	.byte	0xb
	.long	0xa8
	.byte	0x4
	.uleb128 0x3
	.long	.LASF21
	.byte	0x4
	.byte	0x2a
	.byte	0xa
	.long	0xe2
	.byte	0x6
	.uleb128 0x3
	.long	.LASF22
	.byte	0x4
	.byte	0x2b
	.byte	0xa
	.long	0xe2
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.long	.LASF23
	.byte	0x4
	.byte	0x2c
	.byte	0x3
	.long	0xee
	.uleb128 0x16
	.long	.LASF78
	.byte	0x28
	.byte	0x5
	.byte	0x3a
	.long	0x1ab
	.uleb128 0x3
	.long	.LASF24
	.byte	0x5
	.byte	0x3c
	.byte	0xb
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF25
	.byte	0x5
	.byte	0x3d
	.byte	0xd
	.long	0x1ab
	.byte	0x8
	.uleb128 0x8
	.string	"tag"
	.byte	0x5
	.byte	0x3e
	.byte	0xb
	.long	0x77
	.byte	0x10
	.uleb128 0x8
	.string	"id"
	.byte	0x5
	.byte	0x3f
	.byte	0xb
	.long	0x77
	.byte	0x14
	.uleb128 0x3
	.long	.LASF26
	.byte	0x5
	.byte	0x40
	.byte	0x18
	.long	0x1b0
	.byte	0x18
	.uleb128 0x3
	.long	.LASF27
	.byte	0x5
	.byte	0x41
	.byte	0x18
	.long	0x1b0
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.long	0xaf
	.uleb128 0x6
	.long	0x151
	.uleb128 0x7
	.long	.LASF28
	.byte	0x5
	.byte	0x42
	.byte	0x3
	.long	0x151
	.uleb128 0xe
	.long	0x9a
	.byte	0x6
	.byte	0xa3
	.byte	0x1
	.long	0x1f8
	.uleb128 0x2
	.long	.LASF29
	.byte	0
	.uleb128 0x2
	.long	.LASF30
	.byte	0x1
	.uleb128 0x2
	.long	.LASF31
	.byte	0x2
	.uleb128 0x2
	.long	.LASF32
	.byte	0x3
	.uleb128 0x2
	.long	.LASF33
	.byte	0x4
	.uleb128 0x2
	.long	.LASF34
	.byte	0x5
	.uleb128 0x2
	.long	.LASF35
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.long	0x9a
	.byte	0x6
	.byte	0xb5
	.byte	0x1
	.long	0x247
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
	.uleb128 0x2
	.long	.LASF42
	.byte	0x6
	.uleb128 0x2
	.long	.LASF43
	.byte	0x7
	.uleb128 0x2
	.long	.LASF44
	.byte	0x8
	.uleb128 0x2
	.long	.LASF45
	.byte	0x9
	.uleb128 0x2
	.long	.LASF46
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.long	.LASF47
	.byte	0x6
	.byte	0xc5
	.byte	0x3
	.long	0x1f8
	.uleb128 0xe
	.long	0x9a
	.byte	0x6
	.byte	0xca
	.byte	0x1
	.long	0x284
	.uleb128 0x2
	.long	.LASF48
	.byte	0
	.uleb128 0x2
	.long	.LASF49
	.byte	0x1
	.uleb128 0x2
	.long	.LASF50
	.byte	0x2
	.uleb128 0x2
	.long	.LASF51
	.byte	0x3
	.uleb128 0x2
	.long	.LASF52
	.byte	0x4
	.uleb128 0x2
	.long	.LASF53
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.long	0x9a
	.byte	0x6
	.byte	0xd7
	.byte	0x1
	.long	0x2bb
	.uleb128 0x2
	.long	.LASF54
	.byte	0
	.uleb128 0x2
	.long	.LASF55
	.byte	0x1
	.uleb128 0x2
	.long	.LASF56
	.byte	0x2
	.uleb128 0x2
	.long	.LASF57
	.byte	0x3
	.uleb128 0x2
	.long	.LASF58
	.byte	0x4
	.uleb128 0x2
	.long	.LASF59
	.byte	0x5
	.uleb128 0x2
	.long	.LASF60
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.long	0xa8
	.long	0x2cb
	.uleb128 0xb
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.byte	0xa
	.byte	0x7
	.byte	0xcb
	.long	0x311
	.uleb128 0x8
	.string	"x"
	.byte	0x7
	.byte	0xcd
	.byte	0xc
	.long	0xa8
	.byte	0
	.uleb128 0x8
	.string	"y"
	.byte	0x7
	.byte	0xce
	.byte	0xc
	.long	0xa8
	.byte	0x2
	.uleb128 0x3
	.long	.LASF61
	.byte	0x7
	.byte	0xcf
	.byte	0xc
	.long	0xa8
	.byte	0x4
	.uleb128 0x3
	.long	.LASF62
	.byte	0x7
	.byte	0xd0
	.byte	0xc
	.long	0xa8
	.byte	0x6
	.uleb128 0x3
	.long	.LASF63
	.byte	0x7
	.byte	0xd1
	.byte	0xc
	.long	0xa8
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF64
	.byte	0x7
	.byte	0xd2
	.byte	0x3
	.long	0x2cb
	.uleb128 0x7
	.long	.LASF65
	.byte	0x8
	.byte	0x26
	.byte	0xd
	.long	0x77
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.long	.LASF66
	.uleb128 0xd
	.byte	0x8
	.byte	0x4
	.long	.LASF67
	.uleb128 0x9
	.long	0x31d
	.long	0x348
	.uleb128 0x14
	.long	0x43
	.value	0x27ff
	.byte	0
	.uleb128 0x5
	.long	.LASF68
	.byte	0x9
	.byte	0x3a
	.byte	0x12
	.long	0x337
	.uleb128 0x5
	.long	.LASF69
	.byte	0x9
	.byte	0x3d
	.byte	0x12
	.long	0x360
	.uleb128 0x6
	.long	0x31d
	.uleb128 0x7
	.long	.LASF70
	.byte	0x9
	.byte	0x4e
	.byte	0x12
	.long	0x9a
	.uleb128 0x7
	.long	.LASF71
	.byte	0xa
	.byte	0x29
	.byte	0x11
	.long	0x37d
	.uleb128 0x6
	.long	0x382
	.uleb128 0x2a
	.long	0x389
	.uleb128 0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF72
	.byte	0xa
	.byte	0x2a
	.byte	0x11
	.long	0x395
	.uleb128 0x6
	.long	0x39a
	.uleb128 0x19
	.long	0x3a5
	.uleb128 0xa
	.long	0xaf
	.byte	0
	.uleb128 0x7
	.long	.LASF73
	.byte	0xa
	.byte	0x2b
	.byte	0x11
	.long	0x3b1
	.uleb128 0x6
	.long	0x3b6
	.uleb128 0x19
	.long	0x3c6
	.uleb128 0xa
	.long	0xaf
	.uleb128 0xa
	.long	0xaf
	.byte	0
	.uleb128 0x2b
	.byte	0x8
	.byte	0xa
	.byte	0x2d
	.byte	0x9
	.long	0x3f0
	.uleb128 0x21
	.long	.LASF74
	.byte	0x2f
	.long	0x389
	.uleb128 0x2c
	.string	"acv"
	.byte	0xa
	.byte	0x30
	.byte	0xd
	.long	0x371
	.uleb128 0x21
	.long	.LASF75
	.byte	0x31
	.long	0x3a5
	.byte	0
	.uleb128 0x7
	.long	.LASF76
	.byte	0xa
	.byte	0x33
	.byte	0x3
	.long	0x3c6
	.uleb128 0x7
	.long	.LASF77
	.byte	0xa
	.byte	0x3c
	.byte	0x14
	.long	0x3f0
	.uleb128 0x16
	.long	.LASF79
	.byte	0x18
	.byte	0xa
	.byte	0x40
	.long	0x43c
	.uleb128 0x3
	.long	.LASF27
	.byte	0xa
	.byte	0x42
	.byte	0x17
	.long	0x43c
	.byte	0
	.uleb128 0x3
	.long	.LASF26
	.byte	0xa
	.byte	0x43
	.byte	0x17
	.long	0x43c
	.byte	0x8
	.uleb128 0x3
	.long	.LASF80
	.byte	0xa
	.byte	0x44
	.byte	0xe
	.long	0x3fc
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	0x408
	.uleb128 0x7
	.long	.LASF81
	.byte	0xa
	.byte	0x46
	.byte	0x3
	.long	0x408
	.uleb128 0xe
	.long	0x9a
	.byte	0xb
	.byte	0x1f
	.byte	0x1
	.long	0x79c
	.uleb128 0x2
	.long	.LASF82
	.byte	0
	.uleb128 0x2
	.long	.LASF83
	.byte	0x1
	.uleb128 0x2
	.long	.LASF84
	.byte	0x2
	.uleb128 0x2
	.long	.LASF85
	.byte	0x3
	.uleb128 0x2
	.long	.LASF86
	.byte	0x4
	.uleb128 0x2
	.long	.LASF87
	.byte	0x5
	.uleb128 0x2
	.long	.LASF88
	.byte	0x6
	.uleb128 0x2
	.long	.LASF89
	.byte	0x7
	.uleb128 0x2
	.long	.LASF90
	.byte	0x8
	.uleb128 0x2
	.long	.LASF91
	.byte	0x9
	.uleb128 0x2
	.long	.LASF92
	.byte	0xa
	.uleb128 0x2
	.long	.LASF93
	.byte	0xb
	.uleb128 0x2
	.long	.LASF94
	.byte	0xc
	.uleb128 0x2
	.long	.LASF95
	.byte	0xd
	.uleb128 0x2
	.long	.LASF96
	.byte	0xe
	.uleb128 0x2
	.long	.LASF97
	.byte	0xf
	.uleb128 0x2
	.long	.LASF98
	.byte	0x10
	.uleb128 0x2
	.long	.LASF99
	.byte	0x11
	.uleb128 0x2
	.long	.LASF100
	.byte	0x12
	.uleb128 0x2
	.long	.LASF101
	.byte	0x13
	.uleb128 0x2
	.long	.LASF102
	.byte	0x14
	.uleb128 0x2
	.long	.LASF103
	.byte	0x15
	.uleb128 0x2
	.long	.LASF104
	.byte	0x16
	.uleb128 0x2
	.long	.LASF105
	.byte	0x17
	.uleb128 0x2
	.long	.LASF106
	.byte	0x18
	.uleb128 0x2
	.long	.LASF107
	.byte	0x19
	.uleb128 0x2
	.long	.LASF108
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF109
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF110
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF111
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF112
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF113
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF114
	.byte	0x20
	.uleb128 0x2
	.long	.LASF115
	.byte	0x21
	.uleb128 0x2
	.long	.LASF116
	.byte	0x22
	.uleb128 0x2
	.long	.LASF117
	.byte	0x23
	.uleb128 0x2
	.long	.LASF118
	.byte	0x24
	.uleb128 0x2
	.long	.LASF119
	.byte	0x25
	.uleb128 0x2
	.long	.LASF120
	.byte	0x26
	.uleb128 0x2
	.long	.LASF121
	.byte	0x27
	.uleb128 0x2
	.long	.LASF122
	.byte	0x28
	.uleb128 0x2
	.long	.LASF123
	.byte	0x29
	.uleb128 0x2
	.long	.LASF124
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF125
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF126
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF127
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF128
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF129
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF130
	.byte	0x30
	.uleb128 0x2
	.long	.LASF131
	.byte	0x31
	.uleb128 0x2
	.long	.LASF132
	.byte	0x32
	.uleb128 0x2
	.long	.LASF133
	.byte	0x33
	.uleb128 0x2
	.long	.LASF134
	.byte	0x34
	.uleb128 0x2
	.long	.LASF135
	.byte	0x35
	.uleb128 0x2
	.long	.LASF136
	.byte	0x36
	.uleb128 0x2
	.long	.LASF137
	.byte	0x37
	.uleb128 0x2
	.long	.LASF138
	.byte	0x38
	.uleb128 0x2
	.long	.LASF139
	.byte	0x39
	.uleb128 0x2
	.long	.LASF140
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF141
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF142
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF143
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF144
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF145
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF146
	.byte	0x40
	.uleb128 0x2
	.long	.LASF147
	.byte	0x41
	.uleb128 0x2
	.long	.LASF148
	.byte	0x42
	.uleb128 0x2
	.long	.LASF149
	.byte	0x43
	.uleb128 0x2
	.long	.LASF150
	.byte	0x44
	.uleb128 0x2
	.long	.LASF151
	.byte	0x45
	.uleb128 0x2
	.long	.LASF152
	.byte	0x46
	.uleb128 0x2
	.long	.LASF153
	.byte	0x47
	.uleb128 0x2
	.long	.LASF154
	.byte	0x48
	.uleb128 0x2
	.long	.LASF155
	.byte	0x49
	.uleb128 0x2
	.long	.LASF156
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF157
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF158
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF159
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF160
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF161
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF162
	.byte	0x50
	.uleb128 0x2
	.long	.LASF163
	.byte	0x51
	.uleb128 0x2
	.long	.LASF164
	.byte	0x52
	.uleb128 0x2
	.long	.LASF165
	.byte	0x53
	.uleb128 0x2
	.long	.LASF166
	.byte	0x54
	.uleb128 0x2
	.long	.LASF167
	.byte	0x55
	.uleb128 0x2
	.long	.LASF168
	.byte	0x56
	.uleb128 0x2
	.long	.LASF169
	.byte	0x57
	.uleb128 0x2
	.long	.LASF170
	.byte	0x58
	.uleb128 0x2
	.long	.LASF171
	.byte	0x59
	.uleb128 0x2
	.long	.LASF172
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF173
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF174
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF175
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF176
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF177
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF178
	.byte	0x60
	.uleb128 0x2
	.long	.LASF179
	.byte	0x61
	.uleb128 0x2
	.long	.LASF180
	.byte	0x62
	.uleb128 0x2
	.long	.LASF181
	.byte	0x63
	.uleb128 0x2
	.long	.LASF182
	.byte	0x64
	.uleb128 0x2
	.long	.LASF183
	.byte	0x65
	.uleb128 0x2
	.long	.LASF184
	.byte	0x66
	.uleb128 0x2
	.long	.LASF185
	.byte	0x67
	.uleb128 0x2
	.long	.LASF186
	.byte	0x68
	.uleb128 0x2
	.long	.LASF187
	.byte	0x69
	.uleb128 0x2
	.long	.LASF188
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF189
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF190
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF191
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF192
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF193
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF194
	.byte	0x70
	.uleb128 0x2
	.long	.LASF195
	.byte	0x71
	.uleb128 0x2
	.long	.LASF196
	.byte	0x72
	.uleb128 0x2
	.long	.LASF197
	.byte	0x73
	.uleb128 0x2
	.long	.LASF198
	.byte	0x74
	.uleb128 0x2
	.long	.LASF199
	.byte	0x75
	.uleb128 0x2
	.long	.LASF200
	.byte	0x76
	.uleb128 0x2
	.long	.LASF201
	.byte	0x77
	.uleb128 0x2
	.long	.LASF202
	.byte	0x78
	.uleb128 0x2
	.long	.LASF203
	.byte	0x79
	.uleb128 0x2
	.long	.LASF204
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF205
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF206
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF207
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF208
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF209
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF210
	.byte	0x80
	.uleb128 0x2
	.long	.LASF211
	.byte	0x81
	.uleb128 0x2
	.long	.LASF212
	.byte	0x82
	.uleb128 0x2
	.long	.LASF213
	.byte	0x83
	.uleb128 0x2
	.long	.LASF214
	.byte	0x84
	.uleb128 0x2
	.long	.LASF215
	.byte	0x85
	.uleb128 0x2
	.long	.LASF216
	.byte	0x86
	.uleb128 0x2
	.long	.LASF217
	.byte	0x87
	.uleb128 0x2
	.long	.LASF218
	.byte	0x88
	.uleb128 0x2
	.long	.LASF219
	.byte	0x89
	.uleb128 0x2
	.long	.LASF220
	.byte	0x8a
	.byte	0
	.uleb128 0x7
	.long	.LASF221
	.byte	0xb
	.byte	0xac
	.byte	0x3
	.long	0x44d
	.uleb128 0xe
	.long	0x9a
	.byte	0xb
	.byte	0xaf
	.byte	0x1
	.long	0x212d
	.uleb128 0x2
	.long	.LASF222
	.byte	0
	.uleb128 0x2
	.long	.LASF223
	.byte	0x1
	.uleb128 0x2
	.long	.LASF224
	.byte	0x2
	.uleb128 0x2
	.long	.LASF225
	.byte	0x3
	.uleb128 0x2
	.long	.LASF226
	.byte	0x4
	.uleb128 0x2
	.long	.LASF227
	.byte	0x5
	.uleb128 0x2
	.long	.LASF228
	.byte	0x6
	.uleb128 0x2
	.long	.LASF229
	.byte	0x7
	.uleb128 0x2
	.long	.LASF230
	.byte	0x8
	.uleb128 0x2
	.long	.LASF231
	.byte	0x9
	.uleb128 0x2
	.long	.LASF232
	.byte	0xa
	.uleb128 0x2
	.long	.LASF233
	.byte	0xb
	.uleb128 0x2
	.long	.LASF234
	.byte	0xc
	.uleb128 0x2
	.long	.LASF235
	.byte	0xd
	.uleb128 0x2
	.long	.LASF236
	.byte	0xe
	.uleb128 0x2
	.long	.LASF237
	.byte	0xf
	.uleb128 0x2
	.long	.LASF238
	.byte	0x10
	.uleb128 0x2
	.long	.LASF239
	.byte	0x11
	.uleb128 0x2
	.long	.LASF240
	.byte	0x12
	.uleb128 0x2
	.long	.LASF241
	.byte	0x13
	.uleb128 0x2
	.long	.LASF242
	.byte	0x14
	.uleb128 0x2
	.long	.LASF243
	.byte	0x15
	.uleb128 0x2
	.long	.LASF244
	.byte	0x16
	.uleb128 0x2
	.long	.LASF245
	.byte	0x17
	.uleb128 0x2
	.long	.LASF246
	.byte	0x18
	.uleb128 0x2
	.long	.LASF247
	.byte	0x19
	.uleb128 0x2
	.long	.LASF248
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF249
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF250
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF251
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF252
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF253
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF254
	.byte	0x20
	.uleb128 0x2
	.long	.LASF255
	.byte	0x21
	.uleb128 0x2
	.long	.LASF256
	.byte	0x22
	.uleb128 0x2
	.long	.LASF257
	.byte	0x23
	.uleb128 0x2
	.long	.LASF258
	.byte	0x24
	.uleb128 0x2
	.long	.LASF259
	.byte	0x25
	.uleb128 0x2
	.long	.LASF260
	.byte	0x26
	.uleb128 0x2
	.long	.LASF261
	.byte	0x27
	.uleb128 0x2
	.long	.LASF262
	.byte	0x28
	.uleb128 0x2
	.long	.LASF263
	.byte	0x29
	.uleb128 0x2
	.long	.LASF264
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF265
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF266
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF267
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF268
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF269
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF270
	.byte	0x30
	.uleb128 0x2
	.long	.LASF271
	.byte	0x31
	.uleb128 0x2
	.long	.LASF272
	.byte	0x32
	.uleb128 0x2
	.long	.LASF273
	.byte	0x33
	.uleb128 0x2
	.long	.LASF274
	.byte	0x34
	.uleb128 0x2
	.long	.LASF275
	.byte	0x35
	.uleb128 0x2
	.long	.LASF276
	.byte	0x36
	.uleb128 0x2
	.long	.LASF277
	.byte	0x37
	.uleb128 0x2
	.long	.LASF278
	.byte	0x38
	.uleb128 0x2
	.long	.LASF279
	.byte	0x39
	.uleb128 0x2
	.long	.LASF280
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF281
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF282
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF283
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF284
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF285
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF286
	.byte	0x40
	.uleb128 0x2
	.long	.LASF287
	.byte	0x41
	.uleb128 0x2
	.long	.LASF288
	.byte	0x42
	.uleb128 0x2
	.long	.LASF289
	.byte	0x43
	.uleb128 0x2
	.long	.LASF290
	.byte	0x44
	.uleb128 0x2
	.long	.LASF291
	.byte	0x45
	.uleb128 0x2
	.long	.LASF292
	.byte	0x46
	.uleb128 0x2
	.long	.LASF293
	.byte	0x47
	.uleb128 0x2
	.long	.LASF294
	.byte	0x48
	.uleb128 0x2
	.long	.LASF295
	.byte	0x49
	.uleb128 0x2
	.long	.LASF296
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF297
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF298
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF299
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF300
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF301
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF302
	.byte	0x50
	.uleb128 0x2
	.long	.LASF303
	.byte	0x51
	.uleb128 0x2
	.long	.LASF304
	.byte	0x52
	.uleb128 0x2
	.long	.LASF305
	.byte	0x53
	.uleb128 0x2
	.long	.LASF306
	.byte	0x54
	.uleb128 0x2
	.long	.LASF307
	.byte	0x55
	.uleb128 0x2
	.long	.LASF308
	.byte	0x56
	.uleb128 0x2
	.long	.LASF309
	.byte	0x57
	.uleb128 0x2
	.long	.LASF310
	.byte	0x58
	.uleb128 0x2
	.long	.LASF311
	.byte	0x59
	.uleb128 0x2
	.long	.LASF312
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF313
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF314
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF315
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF316
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF317
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF318
	.byte	0x60
	.uleb128 0x2
	.long	.LASF319
	.byte	0x61
	.uleb128 0x2
	.long	.LASF320
	.byte	0x62
	.uleb128 0x2
	.long	.LASF321
	.byte	0x63
	.uleb128 0x2
	.long	.LASF322
	.byte	0x64
	.uleb128 0x2
	.long	.LASF323
	.byte	0x65
	.uleb128 0x2
	.long	.LASF324
	.byte	0x66
	.uleb128 0x2
	.long	.LASF325
	.byte	0x67
	.uleb128 0x2
	.long	.LASF326
	.byte	0x68
	.uleb128 0x2
	.long	.LASF327
	.byte	0x69
	.uleb128 0x2
	.long	.LASF328
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF329
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF330
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF331
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF332
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF333
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF334
	.byte	0x70
	.uleb128 0x2
	.long	.LASF335
	.byte	0x71
	.uleb128 0x2
	.long	.LASF336
	.byte	0x72
	.uleb128 0x2
	.long	.LASF337
	.byte	0x73
	.uleb128 0x2
	.long	.LASF338
	.byte	0x74
	.uleb128 0x2
	.long	.LASF339
	.byte	0x75
	.uleb128 0x2
	.long	.LASF340
	.byte	0x76
	.uleb128 0x2
	.long	.LASF341
	.byte	0x77
	.uleb128 0x2
	.long	.LASF342
	.byte	0x78
	.uleb128 0x2
	.long	.LASF343
	.byte	0x79
	.uleb128 0x2
	.long	.LASF344
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF345
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF346
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF347
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF348
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF349
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF350
	.byte	0x80
	.uleb128 0x2
	.long	.LASF351
	.byte	0x81
	.uleb128 0x2
	.long	.LASF352
	.byte	0x82
	.uleb128 0x2
	.long	.LASF353
	.byte	0x83
	.uleb128 0x2
	.long	.LASF354
	.byte	0x84
	.uleb128 0x2
	.long	.LASF355
	.byte	0x85
	.uleb128 0x2
	.long	.LASF356
	.byte	0x86
	.uleb128 0x2
	.long	.LASF357
	.byte	0x87
	.uleb128 0x2
	.long	.LASF358
	.byte	0x88
	.uleb128 0x2
	.long	.LASF359
	.byte	0x89
	.uleb128 0x2
	.long	.LASF360
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF361
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF362
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF363
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF364
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF365
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF366
	.byte	0x90
	.uleb128 0x2
	.long	.LASF367
	.byte	0x91
	.uleb128 0x2
	.long	.LASF368
	.byte	0x92
	.uleb128 0x2
	.long	.LASF369
	.byte	0x93
	.uleb128 0x2
	.long	.LASF370
	.byte	0x94
	.uleb128 0x2
	.long	.LASF371
	.byte	0x95
	.uleb128 0x2
	.long	.LASF372
	.byte	0x96
	.uleb128 0x2
	.long	.LASF373
	.byte	0x97
	.uleb128 0x2
	.long	.LASF374
	.byte	0x98
	.uleb128 0x2
	.long	.LASF375
	.byte	0x99
	.uleb128 0x2
	.long	.LASF376
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF377
	.byte	0x9b
	.uleb128 0x2
	.long	.LASF378
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF379
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF380
	.byte	0x9e
	.uleb128 0x2
	.long	.LASF381
	.byte	0x9f
	.uleb128 0x2
	.long	.LASF382
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF383
	.byte	0xa1
	.uleb128 0x2
	.long	.LASF384
	.byte	0xa2
	.uleb128 0x2
	.long	.LASF385
	.byte	0xa3
	.uleb128 0x2
	.long	.LASF386
	.byte	0xa4
	.uleb128 0x2
	.long	.LASF387
	.byte	0xa5
	.uleb128 0x2
	.long	.LASF388
	.byte	0xa6
	.uleb128 0x2
	.long	.LASF389
	.byte	0xa7
	.uleb128 0x2
	.long	.LASF390
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF391
	.byte	0xa9
	.uleb128 0x2
	.long	.LASF392
	.byte	0xaa
	.uleb128 0x2
	.long	.LASF393
	.byte	0xab
	.uleb128 0x2
	.long	.LASF394
	.byte	0xac
	.uleb128 0x2
	.long	.LASF395
	.byte	0xad
	.uleb128 0x2
	.long	.LASF396
	.byte	0xae
	.uleb128 0x2
	.long	.LASF397
	.byte	0xaf
	.uleb128 0x2
	.long	.LASF398
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF399
	.byte	0xb1
	.uleb128 0x2
	.long	.LASF400
	.byte	0xb2
	.uleb128 0x2
	.long	.LASF401
	.byte	0xb3
	.uleb128 0x2
	.long	.LASF402
	.byte	0xb4
	.uleb128 0x2
	.long	.LASF403
	.byte	0xb5
	.uleb128 0x2
	.long	.LASF404
	.byte	0xb6
	.uleb128 0x2
	.long	.LASF405
	.byte	0xb7
	.uleb128 0x2
	.long	.LASF406
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF407
	.byte	0xb9
	.uleb128 0x2
	.long	.LASF408
	.byte	0xba
	.uleb128 0x2
	.long	.LASF409
	.byte	0xbb
	.uleb128 0x2
	.long	.LASF410
	.byte	0xbc
	.uleb128 0x2
	.long	.LASF411
	.byte	0xbd
	.uleb128 0x2
	.long	.LASF412
	.byte	0xbe
	.uleb128 0x2
	.long	.LASF413
	.byte	0xbf
	.uleb128 0x2
	.long	.LASF414
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF415
	.byte	0xc1
	.uleb128 0x2
	.long	.LASF416
	.byte	0xc2
	.uleb128 0x2
	.long	.LASF417
	.byte	0xc3
	.uleb128 0x2
	.long	.LASF418
	.byte	0xc4
	.uleb128 0x2
	.long	.LASF419
	.byte	0xc5
	.uleb128 0x2
	.long	.LASF420
	.byte	0xc6
	.uleb128 0x2
	.long	.LASF421
	.byte	0xc7
	.uleb128 0x2
	.long	.LASF422
	.byte	0xc8
	.uleb128 0x2
	.long	.LASF423
	.byte	0xc9
	.uleb128 0x2
	.long	.LASF424
	.byte	0xca
	.uleb128 0x2
	.long	.LASF425
	.byte	0xcb
	.uleb128 0x2
	.long	.LASF426
	.byte	0xcc
	.uleb128 0x2
	.long	.LASF427
	.byte	0xcd
	.uleb128 0x2
	.long	.LASF428
	.byte	0xce
	.uleb128 0x2
	.long	.LASF429
	.byte	0xcf
	.uleb128 0x2
	.long	.LASF430
	.byte	0xd0
	.uleb128 0x2
	.long	.LASF431
	.byte	0xd1
	.uleb128 0x2
	.long	.LASF432
	.byte	0xd2
	.uleb128 0x2
	.long	.LASF433
	.byte	0xd3
	.uleb128 0x2
	.long	.LASF434
	.byte	0xd4
	.uleb128 0x2
	.long	.LASF435
	.byte	0xd5
	.uleb128 0x2
	.long	.LASF436
	.byte	0xd6
	.uleb128 0x2
	.long	.LASF437
	.byte	0xd7
	.uleb128 0x2
	.long	.LASF438
	.byte	0xd8
	.uleb128 0x2
	.long	.LASF439
	.byte	0xd9
	.uleb128 0x2
	.long	.LASF440
	.byte	0xda
	.uleb128 0x2
	.long	.LASF441
	.byte	0xdb
	.uleb128 0x2
	.long	.LASF442
	.byte	0xdc
	.uleb128 0x2
	.long	.LASF443
	.byte	0xdd
	.uleb128 0x2
	.long	.LASF444
	.byte	0xde
	.uleb128 0x2
	.long	.LASF445
	.byte	0xdf
	.uleb128 0x2
	.long	.LASF446
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF447
	.byte	0xe1
	.uleb128 0x2
	.long	.LASF448
	.byte	0xe2
	.uleb128 0x2
	.long	.LASF449
	.byte	0xe3
	.uleb128 0x2
	.long	.LASF450
	.byte	0xe4
	.uleb128 0x2
	.long	.LASF451
	.byte	0xe5
	.uleb128 0x2
	.long	.LASF452
	.byte	0xe6
	.uleb128 0x2
	.long	.LASF453
	.byte	0xe7
	.uleb128 0x2
	.long	.LASF454
	.byte	0xe8
	.uleb128 0x2
	.long	.LASF455
	.byte	0xe9
	.uleb128 0x2
	.long	.LASF456
	.byte	0xea
	.uleb128 0x2
	.long	.LASF457
	.byte	0xeb
	.uleb128 0x2
	.long	.LASF458
	.byte	0xec
	.uleb128 0x2
	.long	.LASF459
	.byte	0xed
	.uleb128 0x2
	.long	.LASF460
	.byte	0xee
	.uleb128 0x2
	.long	.LASF461
	.byte	0xef
	.uleb128 0x2
	.long	.LASF462
	.byte	0xf0
	.uleb128 0x2
	.long	.LASF463
	.byte	0xf1
	.uleb128 0x2
	.long	.LASF464
	.byte	0xf2
	.uleb128 0x2
	.long	.LASF465
	.byte	0xf3
	.uleb128 0x2
	.long	.LASF466
	.byte	0xf4
	.uleb128 0x2
	.long	.LASF467
	.byte	0xf5
	.uleb128 0x2
	.long	.LASF468
	.byte	0xf6
	.uleb128 0x2
	.long	.LASF469
	.byte	0xf7
	.uleb128 0x2
	.long	.LASF470
	.byte	0xf8
	.uleb128 0x2
	.long	.LASF471
	.byte	0xf9
	.uleb128 0x2
	.long	.LASF472
	.byte	0xfa
	.uleb128 0x2
	.long	.LASF473
	.byte	0xfb
	.uleb128 0x2
	.long	.LASF474
	.byte	0xfc
	.uleb128 0x2
	.long	.LASF475
	.byte	0xfd
	.uleb128 0x2
	.long	.LASF476
	.byte	0xfe
	.uleb128 0x2
	.long	.LASF477
	.byte	0xff
	.uleb128 0x1
	.long	.LASF478
	.value	0x100
	.uleb128 0x1
	.long	.LASF479
	.value	0x101
	.uleb128 0x1
	.long	.LASF480
	.value	0x102
	.uleb128 0x1
	.long	.LASF481
	.value	0x103
	.uleb128 0x1
	.long	.LASF482
	.value	0x104
	.uleb128 0x1
	.long	.LASF483
	.value	0x105
	.uleb128 0x1
	.long	.LASF484
	.value	0x106
	.uleb128 0x1
	.long	.LASF485
	.value	0x107
	.uleb128 0x1
	.long	.LASF486
	.value	0x108
	.uleb128 0x1
	.long	.LASF487
	.value	0x109
	.uleb128 0x1
	.long	.LASF488
	.value	0x10a
	.uleb128 0x1
	.long	.LASF489
	.value	0x10b
	.uleb128 0x1
	.long	.LASF490
	.value	0x10c
	.uleb128 0x1
	.long	.LASF491
	.value	0x10d
	.uleb128 0x1
	.long	.LASF492
	.value	0x10e
	.uleb128 0x1
	.long	.LASF493
	.value	0x10f
	.uleb128 0x1
	.long	.LASF494
	.value	0x110
	.uleb128 0x1
	.long	.LASF495
	.value	0x111
	.uleb128 0x1
	.long	.LASF496
	.value	0x112
	.uleb128 0x1
	.long	.LASF497
	.value	0x113
	.uleb128 0x1
	.long	.LASF498
	.value	0x114
	.uleb128 0x1
	.long	.LASF499
	.value	0x115
	.uleb128 0x1
	.long	.LASF500
	.value	0x116
	.uleb128 0x1
	.long	.LASF501
	.value	0x117
	.uleb128 0x1
	.long	.LASF502
	.value	0x118
	.uleb128 0x1
	.long	.LASF503
	.value	0x119
	.uleb128 0x1
	.long	.LASF504
	.value	0x11a
	.uleb128 0x1
	.long	.LASF505
	.value	0x11b
	.uleb128 0x1
	.long	.LASF506
	.value	0x11c
	.uleb128 0x1
	.long	.LASF507
	.value	0x11d
	.uleb128 0x1
	.long	.LASF508
	.value	0x11e
	.uleb128 0x1
	.long	.LASF509
	.value	0x11f
	.uleb128 0x1
	.long	.LASF510
	.value	0x120
	.uleb128 0x1
	.long	.LASF511
	.value	0x121
	.uleb128 0x1
	.long	.LASF512
	.value	0x122
	.uleb128 0x1
	.long	.LASF513
	.value	0x123
	.uleb128 0x1
	.long	.LASF514
	.value	0x124
	.uleb128 0x1
	.long	.LASF515
	.value	0x125
	.uleb128 0x1
	.long	.LASF516
	.value	0x126
	.uleb128 0x1
	.long	.LASF517
	.value	0x127
	.uleb128 0x1
	.long	.LASF518
	.value	0x128
	.uleb128 0x1
	.long	.LASF519
	.value	0x129
	.uleb128 0x1
	.long	.LASF520
	.value	0x12a
	.uleb128 0x1
	.long	.LASF521
	.value	0x12b
	.uleb128 0x1
	.long	.LASF522
	.value	0x12c
	.uleb128 0x1
	.long	.LASF523
	.value	0x12d
	.uleb128 0x1
	.long	.LASF524
	.value	0x12e
	.uleb128 0x1
	.long	.LASF525
	.value	0x12f
	.uleb128 0x1
	.long	.LASF526
	.value	0x130
	.uleb128 0x1
	.long	.LASF527
	.value	0x131
	.uleb128 0x1
	.long	.LASF528
	.value	0x132
	.uleb128 0x1
	.long	.LASF529
	.value	0x133
	.uleb128 0x1
	.long	.LASF530
	.value	0x134
	.uleb128 0x1
	.long	.LASF531
	.value	0x135
	.uleb128 0x1
	.long	.LASF532
	.value	0x136
	.uleb128 0x1
	.long	.LASF533
	.value	0x137
	.uleb128 0x1
	.long	.LASF534
	.value	0x138
	.uleb128 0x1
	.long	.LASF535
	.value	0x139
	.uleb128 0x1
	.long	.LASF536
	.value	0x13a
	.uleb128 0x1
	.long	.LASF537
	.value	0x13b
	.uleb128 0x1
	.long	.LASF538
	.value	0x13c
	.uleb128 0x1
	.long	.LASF539
	.value	0x13d
	.uleb128 0x1
	.long	.LASF540
	.value	0x13e
	.uleb128 0x1
	.long	.LASF541
	.value	0x13f
	.uleb128 0x1
	.long	.LASF542
	.value	0x140
	.uleb128 0x1
	.long	.LASF543
	.value	0x141
	.uleb128 0x1
	.long	.LASF544
	.value	0x142
	.uleb128 0x1
	.long	.LASF545
	.value	0x143
	.uleb128 0x1
	.long	.LASF546
	.value	0x144
	.uleb128 0x1
	.long	.LASF547
	.value	0x145
	.uleb128 0x1
	.long	.LASF548
	.value	0x146
	.uleb128 0x1
	.long	.LASF549
	.value	0x147
	.uleb128 0x1
	.long	.LASF550
	.value	0x148
	.uleb128 0x1
	.long	.LASF551
	.value	0x149
	.uleb128 0x1
	.long	.LASF552
	.value	0x14a
	.uleb128 0x1
	.long	.LASF553
	.value	0x14b
	.uleb128 0x1
	.long	.LASF554
	.value	0x14c
	.uleb128 0x1
	.long	.LASF555
	.value	0x14d
	.uleb128 0x1
	.long	.LASF556
	.value	0x14e
	.uleb128 0x1
	.long	.LASF557
	.value	0x14f
	.uleb128 0x1
	.long	.LASF558
	.value	0x150
	.uleb128 0x1
	.long	.LASF559
	.value	0x151
	.uleb128 0x1
	.long	.LASF560
	.value	0x152
	.uleb128 0x1
	.long	.LASF561
	.value	0x153
	.uleb128 0x1
	.long	.LASF562
	.value	0x154
	.uleb128 0x1
	.long	.LASF563
	.value	0x155
	.uleb128 0x1
	.long	.LASF564
	.value	0x156
	.uleb128 0x1
	.long	.LASF565
	.value	0x157
	.uleb128 0x1
	.long	.LASF566
	.value	0x158
	.uleb128 0x1
	.long	.LASF567
	.value	0x159
	.uleb128 0x1
	.long	.LASF568
	.value	0x15a
	.uleb128 0x1
	.long	.LASF569
	.value	0x15b
	.uleb128 0x1
	.long	.LASF570
	.value	0x15c
	.uleb128 0x1
	.long	.LASF571
	.value	0x15d
	.uleb128 0x1
	.long	.LASF572
	.value	0x15e
	.uleb128 0x1
	.long	.LASF573
	.value	0x15f
	.uleb128 0x1
	.long	.LASF574
	.value	0x160
	.uleb128 0x1
	.long	.LASF575
	.value	0x161
	.uleb128 0x1
	.long	.LASF576
	.value	0x162
	.uleb128 0x1
	.long	.LASF577
	.value	0x163
	.uleb128 0x1
	.long	.LASF578
	.value	0x164
	.uleb128 0x1
	.long	.LASF579
	.value	0x165
	.uleb128 0x1
	.long	.LASF580
	.value	0x166
	.uleb128 0x1
	.long	.LASF581
	.value	0x167
	.uleb128 0x1
	.long	.LASF582
	.value	0x168
	.uleb128 0x1
	.long	.LASF583
	.value	0x169
	.uleb128 0x1
	.long	.LASF584
	.value	0x16a
	.uleb128 0x1
	.long	.LASF585
	.value	0x16b
	.uleb128 0x1
	.long	.LASF586
	.value	0x16c
	.uleb128 0x1
	.long	.LASF587
	.value	0x16d
	.uleb128 0x1
	.long	.LASF588
	.value	0x16e
	.uleb128 0x1
	.long	.LASF589
	.value	0x16f
	.uleb128 0x1
	.long	.LASF590
	.value	0x170
	.uleb128 0x1
	.long	.LASF591
	.value	0x171
	.uleb128 0x1
	.long	.LASF592
	.value	0x172
	.uleb128 0x1
	.long	.LASF593
	.value	0x173
	.uleb128 0x1
	.long	.LASF594
	.value	0x174
	.uleb128 0x1
	.long	.LASF595
	.value	0x175
	.uleb128 0x1
	.long	.LASF596
	.value	0x176
	.uleb128 0x1
	.long	.LASF597
	.value	0x177
	.uleb128 0x1
	.long	.LASF598
	.value	0x178
	.uleb128 0x1
	.long	.LASF599
	.value	0x179
	.uleb128 0x1
	.long	.LASF600
	.value	0x17a
	.uleb128 0x1
	.long	.LASF601
	.value	0x17b
	.uleb128 0x1
	.long	.LASF602
	.value	0x17c
	.uleb128 0x1
	.long	.LASF603
	.value	0x17d
	.uleb128 0x1
	.long	.LASF604
	.value	0x17e
	.uleb128 0x1
	.long	.LASF605
	.value	0x17f
	.uleb128 0x1
	.long	.LASF606
	.value	0x180
	.uleb128 0x1
	.long	.LASF607
	.value	0x181
	.uleb128 0x1
	.long	.LASF608
	.value	0x182
	.uleb128 0x1
	.long	.LASF609
	.value	0x183
	.uleb128 0x1
	.long	.LASF610
	.value	0x184
	.uleb128 0x1
	.long	.LASF611
	.value	0x185
	.uleb128 0x1
	.long	.LASF612
	.value	0x186
	.uleb128 0x1
	.long	.LASF613
	.value	0x187
	.uleb128 0x1
	.long	.LASF614
	.value	0x188
	.uleb128 0x1
	.long	.LASF615
	.value	0x189
	.uleb128 0x1
	.long	.LASF616
	.value	0x18a
	.uleb128 0x1
	.long	.LASF617
	.value	0x18b
	.uleb128 0x1
	.long	.LASF618
	.value	0x18c
	.uleb128 0x1
	.long	.LASF619
	.value	0x18d
	.uleb128 0x1
	.long	.LASF620
	.value	0x18e
	.uleb128 0x1
	.long	.LASF621
	.value	0x18f
	.uleb128 0x1
	.long	.LASF622
	.value	0x190
	.uleb128 0x1
	.long	.LASF623
	.value	0x191
	.uleb128 0x1
	.long	.LASF624
	.value	0x192
	.uleb128 0x1
	.long	.LASF625
	.value	0x193
	.uleb128 0x1
	.long	.LASF626
	.value	0x194
	.uleb128 0x1
	.long	.LASF627
	.value	0x195
	.uleb128 0x1
	.long	.LASF628
	.value	0x196
	.uleb128 0x1
	.long	.LASF629
	.value	0x197
	.uleb128 0x1
	.long	.LASF630
	.value	0x198
	.uleb128 0x1
	.long	.LASF631
	.value	0x199
	.uleb128 0x1
	.long	.LASF632
	.value	0x19a
	.uleb128 0x1
	.long	.LASF633
	.value	0x19b
	.uleb128 0x1
	.long	.LASF634
	.value	0x19c
	.uleb128 0x1
	.long	.LASF635
	.value	0x19d
	.uleb128 0x1
	.long	.LASF636
	.value	0x19e
	.uleb128 0x1
	.long	.LASF637
	.value	0x19f
	.uleb128 0x1
	.long	.LASF638
	.value	0x1a0
	.uleb128 0x1
	.long	.LASF639
	.value	0x1a1
	.uleb128 0x1
	.long	.LASF640
	.value	0x1a2
	.uleb128 0x1
	.long	.LASF641
	.value	0x1a3
	.uleb128 0x1
	.long	.LASF642
	.value	0x1a4
	.uleb128 0x1
	.long	.LASF643
	.value	0x1a5
	.uleb128 0x1
	.long	.LASF644
	.value	0x1a6
	.uleb128 0x1
	.long	.LASF645
	.value	0x1a7
	.uleb128 0x1
	.long	.LASF646
	.value	0x1a8
	.uleb128 0x1
	.long	.LASF647
	.value	0x1a9
	.uleb128 0x1
	.long	.LASF648
	.value	0x1aa
	.uleb128 0x1
	.long	.LASF649
	.value	0x1ab
	.uleb128 0x1
	.long	.LASF650
	.value	0x1ac
	.uleb128 0x1
	.long	.LASF651
	.value	0x1ad
	.uleb128 0x1
	.long	.LASF652
	.value	0x1ae
	.uleb128 0x1
	.long	.LASF653
	.value	0x1af
	.uleb128 0x1
	.long	.LASF654
	.value	0x1b0
	.uleb128 0x1
	.long	.LASF655
	.value	0x1b1
	.uleb128 0x1
	.long	.LASF656
	.value	0x1b2
	.uleb128 0x1
	.long	.LASF657
	.value	0x1b3
	.uleb128 0x1
	.long	.LASF658
	.value	0x1b4
	.uleb128 0x1
	.long	.LASF659
	.value	0x1b5
	.uleb128 0x1
	.long	.LASF660
	.value	0x1b6
	.uleb128 0x1
	.long	.LASF661
	.value	0x1b7
	.uleb128 0x1
	.long	.LASF662
	.value	0x1b8
	.uleb128 0x1
	.long	.LASF663
	.value	0x1b9
	.uleb128 0x1
	.long	.LASF664
	.value	0x1ba
	.uleb128 0x1
	.long	.LASF665
	.value	0x1bb
	.uleb128 0x1
	.long	.LASF666
	.value	0x1bc
	.uleb128 0x1
	.long	.LASF667
	.value	0x1bd
	.uleb128 0x1
	.long	.LASF668
	.value	0x1be
	.uleb128 0x1
	.long	.LASF669
	.value	0x1bf
	.uleb128 0x1
	.long	.LASF670
	.value	0x1c0
	.uleb128 0x1
	.long	.LASF671
	.value	0x1c1
	.uleb128 0x1
	.long	.LASF672
	.value	0x1c2
	.uleb128 0x1
	.long	.LASF673
	.value	0x1c3
	.uleb128 0x1
	.long	.LASF674
	.value	0x1c4
	.uleb128 0x1
	.long	.LASF675
	.value	0x1c5
	.uleb128 0x1
	.long	.LASF676
	.value	0x1c6
	.uleb128 0x1
	.long	.LASF677
	.value	0x1c7
	.uleb128 0x1
	.long	.LASF678
	.value	0x1c8
	.uleb128 0x1
	.long	.LASF679
	.value	0x1c9
	.uleb128 0x1
	.long	.LASF680
	.value	0x1ca
	.uleb128 0x1
	.long	.LASF681
	.value	0x1cb
	.uleb128 0x1
	.long	.LASF682
	.value	0x1cc
	.uleb128 0x1
	.long	.LASF683
	.value	0x1cd
	.uleb128 0x1
	.long	.LASF684
	.value	0x1ce
	.uleb128 0x1
	.long	.LASF685
	.value	0x1cf
	.uleb128 0x1
	.long	.LASF686
	.value	0x1d0
	.uleb128 0x1
	.long	.LASF687
	.value	0x1d1
	.uleb128 0x1
	.long	.LASF688
	.value	0x1d2
	.uleb128 0x1
	.long	.LASF689
	.value	0x1d3
	.uleb128 0x1
	.long	.LASF690
	.value	0x1d4
	.uleb128 0x1
	.long	.LASF691
	.value	0x1d5
	.uleb128 0x1
	.long	.LASF692
	.value	0x1d6
	.uleb128 0x1
	.long	.LASF693
	.value	0x1d7
	.uleb128 0x1
	.long	.LASF694
	.value	0x1d8
	.uleb128 0x1
	.long	.LASF695
	.value	0x1d9
	.uleb128 0x1
	.long	.LASF696
	.value	0x1da
	.uleb128 0x1
	.long	.LASF697
	.value	0x1db
	.uleb128 0x1
	.long	.LASF698
	.value	0x1dc
	.uleb128 0x1
	.long	.LASF699
	.value	0x1dd
	.uleb128 0x1
	.long	.LASF700
	.value	0x1de
	.uleb128 0x1
	.long	.LASF701
	.value	0x1df
	.uleb128 0x1
	.long	.LASF702
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF703
	.value	0x1e1
	.uleb128 0x1
	.long	.LASF704
	.value	0x1e2
	.uleb128 0x1
	.long	.LASF705
	.value	0x1e3
	.uleb128 0x1
	.long	.LASF706
	.value	0x1e4
	.uleb128 0x1
	.long	.LASF707
	.value	0x1e5
	.uleb128 0x1
	.long	.LASF708
	.value	0x1e6
	.uleb128 0x1
	.long	.LASF709
	.value	0x1e7
	.uleb128 0x1
	.long	.LASF710
	.value	0x1e8
	.uleb128 0x1
	.long	.LASF711
	.value	0x1e9
	.uleb128 0x1
	.long	.LASF712
	.value	0x1ea
	.uleb128 0x1
	.long	.LASF713
	.value	0x1eb
	.uleb128 0x1
	.long	.LASF714
	.value	0x1ec
	.uleb128 0x1
	.long	.LASF715
	.value	0x1ed
	.uleb128 0x1
	.long	.LASF716
	.value	0x1ee
	.uleb128 0x1
	.long	.LASF717
	.value	0x1ef
	.uleb128 0x1
	.long	.LASF718
	.value	0x1f0
	.uleb128 0x1
	.long	.LASF719
	.value	0x1f1
	.uleb128 0x1
	.long	.LASF720
	.value	0x1f2
	.uleb128 0x1
	.long	.LASF721
	.value	0x1f3
	.uleb128 0x1
	.long	.LASF722
	.value	0x1f4
	.uleb128 0x1
	.long	.LASF723
	.value	0x1f5
	.uleb128 0x1
	.long	.LASF724
	.value	0x1f6
	.uleb128 0x1
	.long	.LASF725
	.value	0x1f7
	.uleb128 0x1
	.long	.LASF726
	.value	0x1f8
	.uleb128 0x1
	.long	.LASF727
	.value	0x1f9
	.uleb128 0x1
	.long	.LASF728
	.value	0x1fa
	.uleb128 0x1
	.long	.LASF729
	.value	0x1fb
	.uleb128 0x1
	.long	.LASF730
	.value	0x1fc
	.uleb128 0x1
	.long	.LASF731
	.value	0x1fd
	.uleb128 0x1
	.long	.LASF732
	.value	0x1fe
	.uleb128 0x1
	.long	.LASF733
	.value	0x1ff
	.uleb128 0x1
	.long	.LASF734
	.value	0x200
	.uleb128 0x1
	.long	.LASF735
	.value	0x201
	.uleb128 0x1
	.long	.LASF736
	.value	0x202
	.uleb128 0x1
	.long	.LASF737
	.value	0x203
	.uleb128 0x1
	.long	.LASF738
	.value	0x204
	.uleb128 0x1
	.long	.LASF739
	.value	0x205
	.uleb128 0x1
	.long	.LASF740
	.value	0x206
	.uleb128 0x1
	.long	.LASF741
	.value	0x207
	.uleb128 0x1
	.long	.LASF742
	.value	0x208
	.uleb128 0x1
	.long	.LASF743
	.value	0x209
	.uleb128 0x1
	.long	.LASF744
	.value	0x20a
	.uleb128 0x1
	.long	.LASF745
	.value	0x20b
	.uleb128 0x1
	.long	.LASF746
	.value	0x20c
	.uleb128 0x1
	.long	.LASF747
	.value	0x20d
	.uleb128 0x1
	.long	.LASF748
	.value	0x20e
	.uleb128 0x1
	.long	.LASF749
	.value	0x20f
	.uleb128 0x1
	.long	.LASF750
	.value	0x210
	.uleb128 0x1
	.long	.LASF751
	.value	0x211
	.uleb128 0x1
	.long	.LASF752
	.value	0x212
	.uleb128 0x1
	.long	.LASF753
	.value	0x213
	.uleb128 0x1
	.long	.LASF754
	.value	0x214
	.uleb128 0x1
	.long	.LASF755
	.value	0x215
	.uleb128 0x1
	.long	.LASF756
	.value	0x216
	.uleb128 0x1
	.long	.LASF757
	.value	0x217
	.uleb128 0x1
	.long	.LASF758
	.value	0x218
	.uleb128 0x1
	.long	.LASF759
	.value	0x219
	.uleb128 0x1
	.long	.LASF760
	.value	0x21a
	.uleb128 0x1
	.long	.LASF761
	.value	0x21b
	.uleb128 0x1
	.long	.LASF762
	.value	0x21c
	.uleb128 0x1
	.long	.LASF763
	.value	0x21d
	.uleb128 0x1
	.long	.LASF764
	.value	0x21e
	.uleb128 0x1
	.long	.LASF765
	.value	0x21f
	.uleb128 0x1
	.long	.LASF766
	.value	0x220
	.uleb128 0x1
	.long	.LASF767
	.value	0x221
	.uleb128 0x1
	.long	.LASF768
	.value	0x222
	.uleb128 0x1
	.long	.LASF769
	.value	0x223
	.uleb128 0x1
	.long	.LASF770
	.value	0x224
	.uleb128 0x1
	.long	.LASF771
	.value	0x225
	.uleb128 0x1
	.long	.LASF772
	.value	0x226
	.uleb128 0x1
	.long	.LASF773
	.value	0x227
	.uleb128 0x1
	.long	.LASF774
	.value	0x228
	.uleb128 0x1
	.long	.LASF775
	.value	0x229
	.uleb128 0x1
	.long	.LASF776
	.value	0x22a
	.uleb128 0x1
	.long	.LASF777
	.value	0x22b
	.uleb128 0x1
	.long	.LASF778
	.value	0x22c
	.uleb128 0x1
	.long	.LASF779
	.value	0x22d
	.uleb128 0x1
	.long	.LASF780
	.value	0x22e
	.uleb128 0x1
	.long	.LASF781
	.value	0x22f
	.uleb128 0x1
	.long	.LASF782
	.value	0x230
	.uleb128 0x1
	.long	.LASF783
	.value	0x231
	.uleb128 0x1
	.long	.LASF784
	.value	0x232
	.uleb128 0x1
	.long	.LASF785
	.value	0x233
	.uleb128 0x1
	.long	.LASF786
	.value	0x234
	.uleb128 0x1
	.long	.LASF787
	.value	0x235
	.uleb128 0x1
	.long	.LASF788
	.value	0x236
	.uleb128 0x1
	.long	.LASF789
	.value	0x237
	.uleb128 0x1
	.long	.LASF790
	.value	0x238
	.uleb128 0x1
	.long	.LASF791
	.value	0x239
	.uleb128 0x1
	.long	.LASF792
	.value	0x23a
	.uleb128 0x1
	.long	.LASF793
	.value	0x23b
	.uleb128 0x1
	.long	.LASF794
	.value	0x23c
	.uleb128 0x1
	.long	.LASF795
	.value	0x23d
	.uleb128 0x1
	.long	.LASF796
	.value	0x23e
	.uleb128 0x1
	.long	.LASF797
	.value	0x23f
	.uleb128 0x1
	.long	.LASF798
	.value	0x240
	.uleb128 0x1
	.long	.LASF799
	.value	0x241
	.uleb128 0x1
	.long	.LASF800
	.value	0x242
	.uleb128 0x1
	.long	.LASF801
	.value	0x243
	.uleb128 0x1
	.long	.LASF802
	.value	0x244
	.uleb128 0x1
	.long	.LASF803
	.value	0x245
	.uleb128 0x1
	.long	.LASF804
	.value	0x246
	.uleb128 0x1
	.long	.LASF805
	.value	0x247
	.uleb128 0x1
	.long	.LASF806
	.value	0x248
	.uleb128 0x1
	.long	.LASF807
	.value	0x249
	.uleb128 0x1
	.long	.LASF808
	.value	0x24a
	.uleb128 0x1
	.long	.LASF809
	.value	0x24b
	.uleb128 0x1
	.long	.LASF810
	.value	0x24c
	.uleb128 0x1
	.long	.LASF811
	.value	0x24d
	.uleb128 0x1
	.long	.LASF812
	.value	0x24e
	.uleb128 0x1
	.long	.LASF813
	.value	0x24f
	.uleb128 0x1
	.long	.LASF814
	.value	0x250
	.uleb128 0x1
	.long	.LASF815
	.value	0x251
	.uleb128 0x1
	.long	.LASF816
	.value	0x252
	.uleb128 0x1
	.long	.LASF817
	.value	0x253
	.uleb128 0x1
	.long	.LASF818
	.value	0x254
	.uleb128 0x1
	.long	.LASF819
	.value	0x255
	.uleb128 0x1
	.long	.LASF820
	.value	0x256
	.uleb128 0x1
	.long	.LASF821
	.value	0x257
	.uleb128 0x1
	.long	.LASF822
	.value	0x258
	.uleb128 0x1
	.long	.LASF823
	.value	0x259
	.uleb128 0x1
	.long	.LASF824
	.value	0x25a
	.uleb128 0x1
	.long	.LASF825
	.value	0x25b
	.uleb128 0x1
	.long	.LASF826
	.value	0x25c
	.uleb128 0x1
	.long	.LASF827
	.value	0x25d
	.uleb128 0x1
	.long	.LASF828
	.value	0x25e
	.uleb128 0x1
	.long	.LASF829
	.value	0x25f
	.uleb128 0x1
	.long	.LASF830
	.value	0x260
	.uleb128 0x1
	.long	.LASF831
	.value	0x261
	.uleb128 0x1
	.long	.LASF832
	.value	0x262
	.uleb128 0x1
	.long	.LASF833
	.value	0x263
	.uleb128 0x1
	.long	.LASF834
	.value	0x264
	.uleb128 0x1
	.long	.LASF835
	.value	0x265
	.uleb128 0x1
	.long	.LASF836
	.value	0x266
	.uleb128 0x1
	.long	.LASF837
	.value	0x267
	.uleb128 0x1
	.long	.LASF838
	.value	0x268
	.uleb128 0x1
	.long	.LASF839
	.value	0x269
	.uleb128 0x1
	.long	.LASF840
	.value	0x26a
	.uleb128 0x1
	.long	.LASF841
	.value	0x26b
	.uleb128 0x1
	.long	.LASF842
	.value	0x26c
	.uleb128 0x1
	.long	.LASF843
	.value	0x26d
	.uleb128 0x1
	.long	.LASF844
	.value	0x26e
	.uleb128 0x1
	.long	.LASF845
	.value	0x26f
	.uleb128 0x1
	.long	.LASF846
	.value	0x270
	.uleb128 0x1
	.long	.LASF847
	.value	0x271
	.uleb128 0x1
	.long	.LASF848
	.value	0x272
	.uleb128 0x1
	.long	.LASF849
	.value	0x273
	.uleb128 0x1
	.long	.LASF850
	.value	0x274
	.uleb128 0x1
	.long	.LASF851
	.value	0x275
	.uleb128 0x1
	.long	.LASF852
	.value	0x276
	.uleb128 0x1
	.long	.LASF853
	.value	0x277
	.uleb128 0x1
	.long	.LASF854
	.value	0x278
	.uleb128 0x1
	.long	.LASF855
	.value	0x279
	.uleb128 0x1
	.long	.LASF856
	.value	0x27a
	.uleb128 0x1
	.long	.LASF857
	.value	0x27b
	.uleb128 0x1
	.long	.LASF858
	.value	0x27c
	.uleb128 0x1
	.long	.LASF859
	.value	0x27d
	.uleb128 0x1
	.long	.LASF860
	.value	0x27e
	.uleb128 0x1
	.long	.LASF861
	.value	0x27f
	.uleb128 0x1
	.long	.LASF862
	.value	0x280
	.uleb128 0x1
	.long	.LASF863
	.value	0x281
	.uleb128 0x1
	.long	.LASF864
	.value	0x282
	.uleb128 0x1
	.long	.LASF865
	.value	0x283
	.uleb128 0x1
	.long	.LASF866
	.value	0x284
	.uleb128 0x1
	.long	.LASF867
	.value	0x285
	.uleb128 0x1
	.long	.LASF868
	.value	0x286
	.uleb128 0x1
	.long	.LASF869
	.value	0x287
	.uleb128 0x1
	.long	.LASF870
	.value	0x288
	.uleb128 0x1
	.long	.LASF871
	.value	0x289
	.uleb128 0x1
	.long	.LASF872
	.value	0x28a
	.uleb128 0x1
	.long	.LASF873
	.value	0x28b
	.uleb128 0x1
	.long	.LASF874
	.value	0x28c
	.uleb128 0x1
	.long	.LASF875
	.value	0x28d
	.uleb128 0x1
	.long	.LASF876
	.value	0x28e
	.uleb128 0x1
	.long	.LASF877
	.value	0x28f
	.uleb128 0x1
	.long	.LASF878
	.value	0x290
	.uleb128 0x1
	.long	.LASF879
	.value	0x291
	.uleb128 0x1
	.long	.LASF880
	.value	0x292
	.uleb128 0x1
	.long	.LASF881
	.value	0x293
	.uleb128 0x1
	.long	.LASF882
	.value	0x294
	.uleb128 0x1
	.long	.LASF883
	.value	0x295
	.uleb128 0x1
	.long	.LASF884
	.value	0x296
	.uleb128 0x1
	.long	.LASF885
	.value	0x297
	.uleb128 0x1
	.long	.LASF886
	.value	0x298
	.uleb128 0x1
	.long	.LASF887
	.value	0x299
	.uleb128 0x1
	.long	.LASF888
	.value	0x29a
	.uleb128 0x1
	.long	.LASF889
	.value	0x29b
	.uleb128 0x1
	.long	.LASF890
	.value	0x29c
	.uleb128 0x1
	.long	.LASF891
	.value	0x29d
	.uleb128 0x1
	.long	.LASF892
	.value	0x29e
	.uleb128 0x1
	.long	.LASF893
	.value	0x29f
	.uleb128 0x1
	.long	.LASF894
	.value	0x2a0
	.uleb128 0x1
	.long	.LASF895
	.value	0x2a1
	.uleb128 0x1
	.long	.LASF896
	.value	0x2a2
	.uleb128 0x1
	.long	.LASF897
	.value	0x2a3
	.uleb128 0x1
	.long	.LASF898
	.value	0x2a4
	.uleb128 0x1
	.long	.LASF899
	.value	0x2a5
	.uleb128 0x1
	.long	.LASF900
	.value	0x2a6
	.uleb128 0x1
	.long	.LASF901
	.value	0x2a7
	.uleb128 0x1
	.long	.LASF902
	.value	0x2a8
	.uleb128 0x1
	.long	.LASF903
	.value	0x2a9
	.uleb128 0x1
	.long	.LASF904
	.value	0x2aa
	.uleb128 0x1
	.long	.LASF905
	.value	0x2ab
	.uleb128 0x1
	.long	.LASF906
	.value	0x2ac
	.uleb128 0x1
	.long	.LASF907
	.value	0x2ad
	.uleb128 0x1
	.long	.LASF908
	.value	0x2ae
	.uleb128 0x1
	.long	.LASF909
	.value	0x2af
	.uleb128 0x1
	.long	.LASF910
	.value	0x2b0
	.uleb128 0x1
	.long	.LASF911
	.value	0x2b1
	.uleb128 0x1
	.long	.LASF912
	.value	0x2b2
	.uleb128 0x1
	.long	.LASF913
	.value	0x2b3
	.uleb128 0x1
	.long	.LASF914
	.value	0x2b4
	.uleb128 0x1
	.long	.LASF915
	.value	0x2b5
	.uleb128 0x1
	.long	.LASF916
	.value	0x2b6
	.uleb128 0x1
	.long	.LASF917
	.value	0x2b7
	.uleb128 0x1
	.long	.LASF918
	.value	0x2b8
	.uleb128 0x1
	.long	.LASF919
	.value	0x2b9
	.uleb128 0x1
	.long	.LASF920
	.value	0x2ba
	.uleb128 0x1
	.long	.LASF921
	.value	0x2bb
	.uleb128 0x1
	.long	.LASF922
	.value	0x2bc
	.uleb128 0x1
	.long	.LASF923
	.value	0x2bd
	.uleb128 0x1
	.long	.LASF924
	.value	0x2be
	.uleb128 0x1
	.long	.LASF925
	.value	0x2bf
	.uleb128 0x1
	.long	.LASF926
	.value	0x2c0
	.uleb128 0x1
	.long	.LASF927
	.value	0x2c1
	.uleb128 0x1
	.long	.LASF928
	.value	0x2c2
	.uleb128 0x1
	.long	.LASF929
	.value	0x2c3
	.uleb128 0x1
	.long	.LASF930
	.value	0x2c4
	.uleb128 0x1
	.long	.LASF931
	.value	0x2c5
	.uleb128 0x1
	.long	.LASF932
	.value	0x2c6
	.uleb128 0x1
	.long	.LASF933
	.value	0x2c7
	.uleb128 0x1
	.long	.LASF934
	.value	0x2c8
	.uleb128 0x1
	.long	.LASF935
	.value	0x2c9
	.uleb128 0x1
	.long	.LASF936
	.value	0x2ca
	.uleb128 0x1
	.long	.LASF937
	.value	0x2cb
	.uleb128 0x1
	.long	.LASF938
	.value	0x2cc
	.uleb128 0x1
	.long	.LASF939
	.value	0x2cd
	.uleb128 0x1
	.long	.LASF940
	.value	0x2ce
	.uleb128 0x1
	.long	.LASF941
	.value	0x2cf
	.uleb128 0x1
	.long	.LASF942
	.value	0x2d0
	.uleb128 0x1
	.long	.LASF943
	.value	0x2d1
	.uleb128 0x1
	.long	.LASF944
	.value	0x2d2
	.uleb128 0x1
	.long	.LASF945
	.value	0x2d3
	.uleb128 0x1
	.long	.LASF946
	.value	0x2d4
	.uleb128 0x1
	.long	.LASF947
	.value	0x2d5
	.uleb128 0x1
	.long	.LASF948
	.value	0x2d6
	.uleb128 0x1
	.long	.LASF949
	.value	0x2d7
	.uleb128 0x1
	.long	.LASF950
	.value	0x2d8
	.uleb128 0x1
	.long	.LASF951
	.value	0x2d9
	.uleb128 0x1
	.long	.LASF952
	.value	0x2da
	.uleb128 0x1
	.long	.LASF953
	.value	0x2db
	.uleb128 0x1
	.long	.LASF954
	.value	0x2dc
	.uleb128 0x1
	.long	.LASF955
	.value	0x2dd
	.uleb128 0x1
	.long	.LASF956
	.value	0x2de
	.uleb128 0x1
	.long	.LASF957
	.value	0x2df
	.uleb128 0x1
	.long	.LASF958
	.value	0x2e0
	.uleb128 0x1
	.long	.LASF959
	.value	0x2e1
	.uleb128 0x1
	.long	.LASF960
	.value	0x2e2
	.uleb128 0x1
	.long	.LASF961
	.value	0x2e3
	.uleb128 0x1
	.long	.LASF962
	.value	0x2e4
	.uleb128 0x1
	.long	.LASF963
	.value	0x2e5
	.uleb128 0x1
	.long	.LASF964
	.value	0x2e6
	.uleb128 0x1
	.long	.LASF965
	.value	0x2e7
	.uleb128 0x1
	.long	.LASF966
	.value	0x2e8
	.uleb128 0x1
	.long	.LASF967
	.value	0x2e9
	.uleb128 0x1
	.long	.LASF968
	.value	0x2ea
	.uleb128 0x1
	.long	.LASF969
	.value	0x2eb
	.uleb128 0x1
	.long	.LASF970
	.value	0x2ec
	.uleb128 0x1
	.long	.LASF971
	.value	0x2ed
	.uleb128 0x1
	.long	.LASF972
	.value	0x2ee
	.uleb128 0x1
	.long	.LASF973
	.value	0x2ef
	.uleb128 0x1
	.long	.LASF974
	.value	0x2f0
	.uleb128 0x1
	.long	.LASF975
	.value	0x2f1
	.uleb128 0x1
	.long	.LASF976
	.value	0x2f2
	.uleb128 0x1
	.long	.LASF977
	.value	0x2f3
	.uleb128 0x1
	.long	.LASF978
	.value	0x2f4
	.uleb128 0x1
	.long	.LASF979
	.value	0x2f5
	.uleb128 0x1
	.long	.LASF980
	.value	0x2f6
	.uleb128 0x1
	.long	.LASF981
	.value	0x2f7
	.uleb128 0x1
	.long	.LASF982
	.value	0x2f8
	.uleb128 0x1
	.long	.LASF983
	.value	0x2f9
	.uleb128 0x1
	.long	.LASF984
	.value	0x2fa
	.uleb128 0x1
	.long	.LASF985
	.value	0x2fb
	.uleb128 0x1
	.long	.LASF986
	.value	0x2fc
	.uleb128 0x1
	.long	.LASF987
	.value	0x2fd
	.uleb128 0x1
	.long	.LASF988
	.value	0x2fe
	.uleb128 0x1
	.long	.LASF989
	.value	0x2ff
	.uleb128 0x1
	.long	.LASF990
	.value	0x300
	.uleb128 0x1
	.long	.LASF991
	.value	0x301
	.uleb128 0x1
	.long	.LASF992
	.value	0x302
	.uleb128 0x1
	.long	.LASF993
	.value	0x303
	.uleb128 0x1
	.long	.LASF994
	.value	0x304
	.uleb128 0x1
	.long	.LASF995
	.value	0x305
	.uleb128 0x1
	.long	.LASF996
	.value	0x306
	.uleb128 0x1
	.long	.LASF997
	.value	0x307
	.uleb128 0x1
	.long	.LASF998
	.value	0x308
	.uleb128 0x1
	.long	.LASF999
	.value	0x309
	.uleb128 0x1
	.long	.LASF1000
	.value	0x30a
	.uleb128 0x1
	.long	.LASF1001
	.value	0x30b
	.uleb128 0x1
	.long	.LASF1002
	.value	0x30c
	.uleb128 0x1
	.long	.LASF1003
	.value	0x30d
	.uleb128 0x1
	.long	.LASF1004
	.value	0x30e
	.uleb128 0x1
	.long	.LASF1005
	.value	0x30f
	.uleb128 0x1
	.long	.LASF1006
	.value	0x310
	.uleb128 0x1
	.long	.LASF1007
	.value	0x311
	.uleb128 0x1
	.long	.LASF1008
	.value	0x312
	.uleb128 0x1
	.long	.LASF1009
	.value	0x313
	.uleb128 0x1
	.long	.LASF1010
	.value	0x314
	.uleb128 0x1
	.long	.LASF1011
	.value	0x315
	.uleb128 0x1
	.long	.LASF1012
	.value	0x316
	.uleb128 0x1
	.long	.LASF1013
	.value	0x317
	.uleb128 0x1
	.long	.LASF1014
	.value	0x318
	.uleb128 0x1
	.long	.LASF1015
	.value	0x319
	.uleb128 0x1
	.long	.LASF1016
	.value	0x31a
	.uleb128 0x1
	.long	.LASF1017
	.value	0x31b
	.uleb128 0x1
	.long	.LASF1018
	.value	0x31c
	.uleb128 0x1
	.long	.LASF1019
	.value	0x31d
	.uleb128 0x1
	.long	.LASF1020
	.value	0x31e
	.uleb128 0x1
	.long	.LASF1021
	.value	0x31f
	.uleb128 0x1
	.long	.LASF1022
	.value	0x320
	.uleb128 0x1
	.long	.LASF1023
	.value	0x321
	.uleb128 0x1
	.long	.LASF1024
	.value	0x322
	.uleb128 0x1
	.long	.LASF1025
	.value	0x323
	.uleb128 0x1
	.long	.LASF1026
	.value	0x324
	.uleb128 0x1
	.long	.LASF1027
	.value	0x325
	.uleb128 0x1
	.long	.LASF1028
	.value	0x326
	.uleb128 0x1
	.long	.LASF1029
	.value	0x327
	.uleb128 0x1
	.long	.LASF1030
	.value	0x328
	.uleb128 0x1
	.long	.LASF1031
	.value	0x329
	.uleb128 0x1
	.long	.LASF1032
	.value	0x32a
	.uleb128 0x1
	.long	.LASF1033
	.value	0x32b
	.uleb128 0x1
	.long	.LASF1034
	.value	0x32c
	.uleb128 0x1
	.long	.LASF1035
	.value	0x32d
	.uleb128 0x1
	.long	.LASF1036
	.value	0x32e
	.uleb128 0x1
	.long	.LASF1037
	.value	0x32f
	.uleb128 0x1
	.long	.LASF1038
	.value	0x330
	.uleb128 0x1
	.long	.LASF1039
	.value	0x331
	.uleb128 0x1
	.long	.LASF1040
	.value	0x332
	.uleb128 0x1
	.long	.LASF1041
	.value	0x333
	.uleb128 0x1
	.long	.LASF1042
	.value	0x334
	.uleb128 0x1
	.long	.LASF1043
	.value	0x335
	.uleb128 0x1
	.long	.LASF1044
	.value	0x336
	.uleb128 0x1
	.long	.LASF1045
	.value	0x337
	.uleb128 0x1
	.long	.LASF1046
	.value	0x338
	.uleb128 0x1
	.long	.LASF1047
	.value	0x339
	.uleb128 0x1
	.long	.LASF1048
	.value	0x33a
	.uleb128 0x1
	.long	.LASF1049
	.value	0x33b
	.uleb128 0x1
	.long	.LASF1050
	.value	0x33c
	.uleb128 0x1
	.long	.LASF1051
	.value	0x33d
	.uleb128 0x1
	.long	.LASF1052
	.value	0x33e
	.uleb128 0x1
	.long	.LASF1053
	.value	0x33f
	.uleb128 0x1
	.long	.LASF1054
	.value	0x340
	.uleb128 0x1
	.long	.LASF1055
	.value	0x341
	.uleb128 0x1
	.long	.LASF1056
	.value	0x342
	.uleb128 0x1
	.long	.LASF1057
	.value	0x343
	.uleb128 0x1
	.long	.LASF1058
	.value	0x344
	.uleb128 0x1
	.long	.LASF1059
	.value	0x345
	.uleb128 0x1
	.long	.LASF1060
	.value	0x346
	.uleb128 0x1
	.long	.LASF1061
	.value	0x347
	.uleb128 0x1
	.long	.LASF1062
	.value	0x348
	.uleb128 0x1
	.long	.LASF1063
	.value	0x349
	.uleb128 0x1
	.long	.LASF1064
	.value	0x34a
	.uleb128 0x1
	.long	.LASF1065
	.value	0x34b
	.uleb128 0x1
	.long	.LASF1066
	.value	0x34c
	.uleb128 0x1
	.long	.LASF1067
	.value	0x34d
	.uleb128 0x1
	.long	.LASF1068
	.value	0x34e
	.uleb128 0x1
	.long	.LASF1069
	.value	0x34f
	.uleb128 0x1
	.long	.LASF1070
	.value	0x350
	.uleb128 0x1
	.long	.LASF1071
	.value	0x351
	.uleb128 0x1
	.long	.LASF1072
	.value	0x352
	.uleb128 0x1
	.long	.LASF1073
	.value	0x353
	.uleb128 0x1
	.long	.LASF1074
	.value	0x354
	.uleb128 0x1
	.long	.LASF1075
	.value	0x355
	.uleb128 0x1
	.long	.LASF1076
	.value	0x356
	.uleb128 0x1
	.long	.LASF1077
	.value	0x357
	.uleb128 0x1
	.long	.LASF1078
	.value	0x358
	.uleb128 0x1
	.long	.LASF1079
	.value	0x359
	.uleb128 0x1
	.long	.LASF1080
	.value	0x35a
	.uleb128 0x1
	.long	.LASF1081
	.value	0x35b
	.uleb128 0x1
	.long	.LASF1082
	.value	0x35c
	.uleb128 0x1
	.long	.LASF1083
	.value	0x35d
	.uleb128 0x1
	.long	.LASF1084
	.value	0x35e
	.uleb128 0x1
	.long	.LASF1085
	.value	0x35f
	.uleb128 0x1
	.long	.LASF1086
	.value	0x360
	.uleb128 0x1
	.long	.LASF1087
	.value	0x361
	.uleb128 0x1
	.long	.LASF1088
	.value	0x362
	.uleb128 0x1
	.long	.LASF1089
	.value	0x363
	.uleb128 0x1
	.long	.LASF1090
	.value	0x364
	.uleb128 0x1
	.long	.LASF1091
	.value	0x365
	.uleb128 0x1
	.long	.LASF1092
	.value	0x366
	.uleb128 0x1
	.long	.LASF1093
	.value	0x367
	.uleb128 0x1
	.long	.LASF1094
	.value	0x368
	.uleb128 0x1
	.long	.LASF1095
	.value	0x369
	.uleb128 0x1
	.long	.LASF1096
	.value	0x36a
	.uleb128 0x1
	.long	.LASF1097
	.value	0x36b
	.uleb128 0x1
	.long	.LASF1098
	.value	0x36c
	.uleb128 0x1
	.long	.LASF1099
	.value	0x36d
	.uleb128 0x1
	.long	.LASF1100
	.value	0x36e
	.uleb128 0x1
	.long	.LASF1101
	.value	0x36f
	.uleb128 0x1
	.long	.LASF1102
	.value	0x370
	.uleb128 0x1
	.long	.LASF1103
	.value	0x371
	.uleb128 0x1
	.long	.LASF1104
	.value	0x372
	.uleb128 0x1
	.long	.LASF1105
	.value	0x373
	.uleb128 0x1
	.long	.LASF1106
	.value	0x374
	.uleb128 0x1
	.long	.LASF1107
	.value	0x375
	.uleb128 0x1
	.long	.LASF1108
	.value	0x376
	.uleb128 0x1
	.long	.LASF1109
	.value	0x377
	.uleb128 0x1
	.long	.LASF1110
	.value	0x378
	.uleb128 0x1
	.long	.LASF1111
	.value	0x379
	.uleb128 0x1
	.long	.LASF1112
	.value	0x37a
	.uleb128 0x1
	.long	.LASF1113
	.value	0x37b
	.uleb128 0x1
	.long	.LASF1114
	.value	0x37c
	.uleb128 0x1
	.long	.LASF1115
	.value	0x37d
	.uleb128 0x1
	.long	.LASF1116
	.value	0x37e
	.uleb128 0x1
	.long	.LASF1117
	.value	0x37f
	.uleb128 0x1
	.long	.LASF1118
	.value	0x380
	.uleb128 0x1
	.long	.LASF1119
	.value	0x381
	.uleb128 0x1
	.long	.LASF1120
	.value	0x382
	.uleb128 0x1
	.long	.LASF1121
	.value	0x383
	.uleb128 0x1
	.long	.LASF1122
	.value	0x384
	.uleb128 0x1
	.long	.LASF1123
	.value	0x385
	.uleb128 0x1
	.long	.LASF1124
	.value	0x386
	.uleb128 0x1
	.long	.LASF1125
	.value	0x387
	.uleb128 0x1
	.long	.LASF1126
	.value	0x388
	.uleb128 0x1
	.long	.LASF1127
	.value	0x389
	.uleb128 0x1
	.long	.LASF1128
	.value	0x38a
	.uleb128 0x1
	.long	.LASF1129
	.value	0x38b
	.uleb128 0x1
	.long	.LASF1130
	.value	0x38c
	.uleb128 0x1
	.long	.LASF1131
	.value	0x38d
	.uleb128 0x1
	.long	.LASF1132
	.value	0x38e
	.uleb128 0x1
	.long	.LASF1133
	.value	0x38f
	.uleb128 0x1
	.long	.LASF1134
	.value	0x390
	.uleb128 0x1
	.long	.LASF1135
	.value	0x391
	.uleb128 0x1
	.long	.LASF1136
	.value	0x392
	.uleb128 0x1
	.long	.LASF1137
	.value	0x393
	.uleb128 0x1
	.long	.LASF1138
	.value	0x394
	.uleb128 0x1
	.long	.LASF1139
	.value	0x395
	.uleb128 0x1
	.long	.LASF1140
	.value	0x396
	.uleb128 0x1
	.long	.LASF1141
	.value	0x397
	.uleb128 0x1
	.long	.LASF1142
	.value	0x398
	.uleb128 0x1
	.long	.LASF1143
	.value	0x399
	.uleb128 0x1
	.long	.LASF1144
	.value	0x39a
	.uleb128 0x1
	.long	.LASF1145
	.value	0x39b
	.uleb128 0x1
	.long	.LASF1146
	.value	0x39c
	.uleb128 0x1
	.long	.LASF1147
	.value	0x39d
	.uleb128 0x1
	.long	.LASF1148
	.value	0x39e
	.uleb128 0x1
	.long	.LASF1149
	.value	0x39f
	.uleb128 0x1
	.long	.LASF1150
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF1151
	.value	0x3a1
	.uleb128 0x1
	.long	.LASF1152
	.value	0x3a2
	.uleb128 0x1
	.long	.LASF1153
	.value	0x3a3
	.uleb128 0x1
	.long	.LASF1154
	.value	0x3a4
	.uleb128 0x1
	.long	.LASF1155
	.value	0x3a5
	.uleb128 0x1
	.long	.LASF1156
	.value	0x3a6
	.uleb128 0x1
	.long	.LASF1157
	.value	0x3a7
	.uleb128 0x1
	.long	.LASF1158
	.value	0x3a8
	.uleb128 0x1
	.long	.LASF1159
	.value	0x3a9
	.uleb128 0x1
	.long	.LASF1160
	.value	0x3aa
	.uleb128 0x1
	.long	.LASF1161
	.value	0x3ab
	.uleb128 0x1
	.long	.LASF1162
	.value	0x3ac
	.uleb128 0x1
	.long	.LASF1163
	.value	0x3ad
	.uleb128 0x1
	.long	.LASF1164
	.value	0x3ae
	.uleb128 0x1
	.long	.LASF1165
	.value	0x3af
	.uleb128 0x1
	.long	.LASF1166
	.value	0x3b0
	.uleb128 0x1
	.long	.LASF1167
	.value	0x3b1
	.uleb128 0x1
	.long	.LASF1168
	.value	0x3b2
	.uleb128 0x1
	.long	.LASF1169
	.value	0x3b3
	.uleb128 0x1
	.long	.LASF1170
	.value	0x3b4
	.uleb128 0x1
	.long	.LASF1171
	.value	0x3b5
	.uleb128 0x1
	.long	.LASF1172
	.value	0x3b6
	.uleb128 0x1
	.long	.LASF1173
	.value	0x3b7
	.uleb128 0x1
	.long	.LASF1174
	.value	0x3b8
	.uleb128 0x1
	.long	.LASF1175
	.value	0x3b9
	.uleb128 0x1
	.long	.LASF1176
	.value	0x3ba
	.uleb128 0x1
	.long	.LASF1177
	.value	0x3bb
	.uleb128 0x1
	.long	.LASF1178
	.value	0x3bc
	.uleb128 0x1
	.long	.LASF1179
	.value	0x3bd
	.uleb128 0x1
	.long	.LASF1180
	.value	0x3be
	.uleb128 0x1
	.long	.LASF1181
	.value	0x3bf
	.uleb128 0x1
	.long	.LASF1182
	.value	0x3c0
	.uleb128 0x1
	.long	.LASF1183
	.value	0x3c1
	.uleb128 0x1
	.long	.LASF1184
	.value	0x3c2
	.uleb128 0x1
	.long	.LASF1185
	.value	0x3c3
	.uleb128 0x1
	.long	.LASF1186
	.value	0x3c4
	.uleb128 0x1
	.long	.LASF1187
	.value	0x3c5
	.uleb128 0x1
	.long	.LASF1188
	.value	0x3c6
	.uleb128 0x1
	.long	.LASF1189
	.value	0x3c7
	.byte	0
	.uleb128 0xf
	.long	.LASF1190
	.byte	0xb
	.value	0x478
	.byte	0x3
	.long	0x7a8
	.uleb128 0x22
	.byte	0x38
	.value	0x47b
	.long	0x21a5
	.uleb128 0x4
	.long	.LASF1191
	.byte	0xb
	.value	0x47d
	.byte	0xf
	.long	0x79c
	.byte	0
	.uleb128 0x4
	.long	.LASF1192
	.byte	0xb
	.value	0x47e
	.byte	0xa
	.long	0x7e
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1193
	.byte	0xb
	.value	0x47f
	.byte	0xa
	.long	0x7e
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1194
	.byte	0xb
	.value	0x481
	.byte	0xf
	.long	0x3f0
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1195
	.byte	0xb
	.value	0x482
	.byte	0x10
	.long	0x212d
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1196
	.byte	0xb
	.value	0x483
	.byte	0xa
	.long	0x7e
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1197
	.byte	0xb
	.value	0x483
	.byte	0x11
	.long	0x7e
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.long	.LASF1198
	.byte	0xb
	.value	0x484
	.byte	0x3
	.long	0x213a
	.uleb128 0x2d
	.byte	0x7
	.byte	0x4
	.long	0x9a
	.byte	0xb
	.value	0x48b
	.byte	0xe
	.long	0x24fe
	.uleb128 0x2
	.long	.LASF1199
	.byte	0
	.uleb128 0x2
	.long	.LASF1200
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1201
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1202
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1203
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1204
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1205
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1206
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1207
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1208
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1209
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1210
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1211
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1212
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1213
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1214
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1215
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1216
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1217
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1218
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1219
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1220
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1221
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1222
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1223
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1224
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1225
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1226
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1227
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1228
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1229
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1230
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1231
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1232
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1233
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1234
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1235
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1236
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1237
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1238
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1239
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1240
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1241
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1242
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1243
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1244
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1245
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1246
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1247
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1248
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1249
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1250
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1251
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1252
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1253
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1254
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1255
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1256
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1257
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1258
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1259
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1260
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1261
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1262
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1263
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1264
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1265
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1266
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1267
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1268
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1269
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1270
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1271
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1272
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1273
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1274
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1275
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1276
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1277
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1278
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1279
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1280
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1281
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1282
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1283
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1284
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1285
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1286
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1287
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1288
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1289
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1290
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1291
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1292
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1293
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1294
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1295
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1296
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1297
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1298
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1299
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1300
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1301
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1302
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1303
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1304
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1305
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1306
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1307
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1308
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF1309
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF1310
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF1311
	.byte	0x70
	.uleb128 0x2
	.long	.LASF1312
	.byte	0x71
	.uleb128 0x2
	.long	.LASF1313
	.byte	0x72
	.uleb128 0x2
	.long	.LASF1314
	.byte	0x73
	.uleb128 0x2
	.long	.LASF1315
	.byte	0x74
	.uleb128 0x2
	.long	.LASF1316
	.byte	0x75
	.uleb128 0x2
	.long	.LASF1317
	.byte	0x76
	.uleb128 0x2
	.long	.LASF1318
	.byte	0x77
	.uleb128 0x2
	.long	.LASF1319
	.byte	0x78
	.uleb128 0x2
	.long	.LASF1320
	.byte	0x79
	.uleb128 0x2
	.long	.LASF1321
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF1322
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF1323
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF1324
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF1325
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF1326
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF1327
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1328
	.byte	0x81
	.uleb128 0x2
	.long	.LASF1329
	.byte	0x82
	.uleb128 0x2
	.long	.LASF1330
	.byte	0x83
	.uleb128 0x2
	.long	.LASF1331
	.byte	0x84
	.uleb128 0x2
	.long	.LASF1332
	.byte	0x85
	.uleb128 0x2
	.long	.LASF1333
	.byte	0x86
	.uleb128 0x2
	.long	.LASF1334
	.byte	0x87
	.uleb128 0x2
	.long	.LASF1335
	.byte	0x88
	.uleb128 0x2
	.long	.LASF1336
	.byte	0x89
	.byte	0
	.uleb128 0xf
	.long	.LASF1337
	.byte	0xb
	.value	0x517
	.byte	0x3
	.long	0x21b2
	.uleb128 0x22
	.byte	0x5c
	.value	0x519
	.long	0x2656
	.uleb128 0x4
	.long	.LASF1338
	.byte	0xb
	.value	0x51b
	.byte	0x9
	.long	0x77
	.byte	0
	.uleb128 0x4
	.long	.LASF1339
	.byte	0xb
	.value	0x51c
	.byte	0x9
	.long	0x77
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1340
	.byte	0xb
	.value	0x51d
	.byte	0x9
	.long	0x77
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1341
	.byte	0xb
	.value	0x51e
	.byte	0x9
	.long	0x77
	.byte	0xc
	.uleb128 0x4
	.long	.LASF1342
	.byte	0xb
	.value	0x51f
	.byte	0x9
	.long	0x77
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1343
	.byte	0xb
	.value	0x520
	.byte	0x9
	.long	0x77
	.byte	0x14
	.uleb128 0x4
	.long	.LASF1344
	.byte	0xb
	.value	0x521
	.byte	0x9
	.long	0x77
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1345
	.byte	0xb
	.value	0x522
	.byte	0x9
	.long	0x77
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF1346
	.byte	0xb
	.value	0x523
	.byte	0x9
	.long	0x77
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1347
	.byte	0xb
	.value	0x524
	.byte	0x9
	.long	0x77
	.byte	0x24
	.uleb128 0x4
	.long	.LASF1348
	.byte	0xb
	.value	0x525
	.byte	0x9
	.long	0x77
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1349
	.byte	0xb
	.value	0x526
	.byte	0x9
	.long	0x77
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1350
	.byte	0xb
	.value	0x527
	.byte	0x9
	.long	0x77
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1351
	.byte	0xb
	.value	0x528
	.byte	0x9
	.long	0x77
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1352
	.byte	0xb
	.value	0x529
	.byte	0x9
	.long	0x77
	.byte	0x38
	.uleb128 0x4
	.long	.LASF1353
	.byte	0xb
	.value	0x52a
	.byte	0x9
	.long	0x77
	.byte	0x3c
	.uleb128 0x4
	.long	.LASF1354
	.byte	0xb
	.value	0x52b
	.byte	0x9
	.long	0x77
	.byte	0x40
	.uleb128 0x4
	.long	.LASF1355
	.byte	0xb
	.value	0x52c
	.byte	0x9
	.long	0x77
	.byte	0x44
	.uleb128 0x4
	.long	.LASF1356
	.byte	0xb
	.value	0x52d
	.byte	0x9
	.long	0x77
	.byte	0x48
	.uleb128 0x4
	.long	.LASF1357
	.byte	0xb
	.value	0x52e
	.byte	0x9
	.long	0x77
	.byte	0x4c
	.uleb128 0x4
	.long	.LASF1358
	.byte	0xb
	.value	0x52f
	.byte	0x9
	.long	0x77
	.byte	0x50
	.uleb128 0x4
	.long	.LASF1359
	.byte	0xb
	.value	0x530
	.byte	0x9
	.long	0x77
	.byte	0x54
	.uleb128 0x4
	.long	.LASF1360
	.byte	0xb
	.value	0x531
	.byte	0x9
	.long	0x77
	.byte	0x58
	.byte	0
	.uleb128 0xf
	.long	.LASF1361
	.byte	0xb
	.value	0x533
	.byte	0x3
	.long	0x250b
	.uleb128 0xe
	.long	0x9a
	.byte	0xc
	.byte	0x3d
	.byte	0x1
	.long	0x2682
	.uleb128 0x2
	.long	.LASF1362
	.byte	0
	.uleb128 0x2
	.long	.LASF1363
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1364
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.byte	0x18
	.byte	0xc
	.byte	0x44
	.long	0x26bd
	.uleb128 0x3
	.long	.LASF1365
	.byte	0xc
	.byte	0x46
	.byte	0xe
	.long	0x26bd
	.byte	0
	.uleb128 0x3
	.long	.LASF1193
	.byte	0xc
	.byte	0x47
	.byte	0xa
	.long	0x77
	.byte	0x8
	.uleb128 0x8
	.string	"sx"
	.byte	0xc
	.byte	0x48
	.byte	0xd
	.long	0x31d
	.byte	0xc
	.uleb128 0x8
	.string	"sy"
	.byte	0xc
	.byte	0x49
	.byte	0xd
	.long	0x31d
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	0x21a5
	.uleb128 0x7
	.long	.LASF1366
	.byte	0xc
	.byte	0x4b
	.byte	0x3
	.long	0x2682
	.uleb128 0x16
	.long	.LASF1367
	.byte	0xe0
	.byte	0xd
	.byte	0xcf
	.long	0x28a5
	.uleb128 0x3
	.long	.LASF1368
	.byte	0xd
	.byte	0xd2
	.byte	0x10
	.long	0x441
	.byte	0
	.uleb128 0x8
	.string	"x"
	.byte	0xd
	.byte	0xd5
	.byte	0xe
	.long	0x31d
	.byte	0x18
	.uleb128 0x8
	.string	"y"
	.byte	0xd
	.byte	0xd6
	.byte	0xe
	.long	0x31d
	.byte	0x1c
	.uleb128 0x8
	.string	"z"
	.byte	0xd
	.byte	0xd7
	.byte	0xe
	.long	0x31d
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1369
	.byte	0xd
	.byte	0xda
	.byte	0x14
	.long	0x28a5
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1370
	.byte	0xd
	.byte	0xdb
	.byte	0x14
	.long	0x28a5
	.byte	0x30
	.uleb128 0x3
	.long	.LASF61
	.byte	0xd
	.byte	0xde
	.byte	0xe
	.long	0x365
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1191
	.byte	0xd
	.byte	0xdf
	.byte	0x12
	.long	0x79c
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1192
	.byte	0xd
	.byte	0xe0
	.byte	0xb
	.long	0x77
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1371
	.byte	0xd
	.byte	0xe4
	.byte	0x14
	.long	0x28a5
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1372
	.byte	0xd
	.byte	0xe5
	.byte	0x14
	.long	0x28a5
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1373
	.byte	0xd
	.byte	0xe7
	.byte	0x19
	.long	0x28de
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1374
	.byte	0xd
	.byte	0xea
	.byte	0xe
	.long	0x31d
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1375
	.byte	0xd
	.byte	0xeb
	.byte	0xe
	.long	0x31d
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1354
	.byte	0xd
	.byte	0xee
	.byte	0xe
	.long	0x31d
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1355
	.byte	0xd
	.byte	0xef
	.byte	0xe
	.long	0x31d
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1376
	.byte	0xd
	.byte	0xf2
	.byte	0xe
	.long	0x31d
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1377
	.byte	0xd
	.byte	0xf3
	.byte	0xe
	.long	0x31d
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1378
	.byte	0xd
	.byte	0xf4
	.byte	0xe
	.long	0x31d
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1379
	.byte	0xd
	.byte	0xf7
	.byte	0xb
	.long	0x77
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF62
	.byte	0xd
	.byte	0xf9
	.byte	0x11
	.long	0x24fe
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1380
	.byte	0xd
	.byte	0xfa
	.byte	0x12
	.long	0x28e3
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1193
	.byte	0xd
	.byte	0xfc
	.byte	0xb
	.long	0x77
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1365
	.byte	0xd
	.byte	0xfd
	.byte	0xf
	.long	0x26bd
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1359
	.byte	0xd
	.byte	0xfe
	.byte	0xb
	.long	0x77
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1381
	.byte	0xd
	.byte	0xff
	.byte	0xb
	.long	0x77
	.byte	0xa4
	.uleb128 0x4
	.long	.LASF1382
	.byte	0xd
	.value	0x102
	.byte	0xb
	.long	0x77
	.byte	0xa8
	.uleb128 0x4
	.long	.LASF1383
	.byte	0xd
	.value	0x103
	.byte	0xb
	.long	0x77
	.byte	0xac
	.uleb128 0x4
	.long	.LASF1384
	.byte	0xd
	.value	0x107
	.byte	0x14
	.long	0x28a5
	.byte	0xb0
	.uleb128 0x4
	.long	.LASF1343
	.byte	0xd
	.value	0x10b
	.byte	0xb
	.long	0x77
	.byte	0xb8
	.uleb128 0x4
	.long	.LASF1385
	.byte	0xd
	.value	0x10f
	.byte	0xb
	.long	0x77
	.byte	0xbc
	.uleb128 0x4
	.long	.LASF1386
	.byte	0xd
	.value	0x113
	.byte	0x16
	.long	0x2abd
	.byte	0xc0
	.uleb128 0x4
	.long	.LASF1387
	.byte	0xd
	.value	0x116
	.byte	0xb
	.long	0x77
	.byte	0xc8
	.uleb128 0x4
	.long	.LASF1388
	.byte	0xd
	.value	0x119
	.byte	0x11
	.long	0x311
	.byte	0xcc
	.uleb128 0x4
	.long	.LASF1389
	.byte	0xd
	.value	0x11c
	.byte	0x14
	.long	0x28a5
	.byte	0xd8
	.byte	0
	.uleb128 0x6
	.long	0x26ce
	.uleb128 0x16
	.long	.LASF1390
	.byte	0x10
	.byte	0xe
	.byte	0xe3
	.long	0x28de
	.uleb128 0x3
	.long	.LASF1391
	.byte	0xe
	.byte	0xe5
	.byte	0xf
	.long	0x2de7
	.byte	0
	.uleb128 0x3
	.long	.LASF1392
	.byte	0xe
	.byte	0xe6
	.byte	0xb
	.long	0xa8
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1393
	.byte	0xe
	.byte	0xe7
	.byte	0xb
	.long	0xa8
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.long	0x28aa
	.uleb128 0x6
	.long	0x2656
	.uleb128 0x2e
	.long	.LASF1394
	.value	0x140
	.byte	0xf
	.byte	0x53
	.byte	0x10
	.long	0x2abd
	.uleb128 0x8
	.string	"mo"
	.byte	0xf
	.byte	0x55
	.byte	0xe
	.long	0x2afa
	.byte	0
	.uleb128 0x3
	.long	.LASF1395
	.byte	0xf
	.byte	0x56
	.byte	0x13
	.long	0x2aee
	.byte	0x8
	.uleb128 0x8
	.string	"cmd"
	.byte	0xf
	.byte	0x57
	.byte	0xf
	.long	0x145
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1396
	.byte	0xf
	.byte	0x5c
	.byte	0xe
	.long	0x31d
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1397
	.byte	0xf
	.byte	0x5e
	.byte	0xe
	.long	0x31d
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1398
	.byte	0xf
	.byte	0x60
	.byte	0x16
	.long	0x31d
	.byte	0x1c
	.uleb128 0x8
	.string	"bob"
	.byte	0xf
	.byte	0x62
	.byte	0x16
	.long	0x31d
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1381
	.byte	0xf
	.byte	0x66
	.byte	0xb
	.long	0x77
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1399
	.byte	0xf
	.byte	0x67
	.byte	0xb
	.long	0x77
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1400
	.byte	0xf
	.byte	0x69
	.byte	0xb
	.long	0x77
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1401
	.byte	0xf
	.byte	0x6c
	.byte	0xb
	.long	0x2aff
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1402
	.byte	0xf
	.byte	0x6d
	.byte	0xe
	.long	0x2b0f
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1403
	.byte	0xf
	.byte	0x6e
	.byte	0xe
	.long	0xd6
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1404
	.byte	0xf
	.byte	0x71
	.byte	0xb
	.long	0x2b1f
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1405
	.byte	0xf
	.byte	0x72
	.byte	0x12
	.long	0x247
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1406
	.byte	0xf
	.byte	0x75
	.byte	0x12
	.long	0x247
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1407
	.byte	0xf
	.byte	0x77
	.byte	0xe
	.long	0x2b2f
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1408
	.byte	0xf
	.byte	0x78
	.byte	0xb
	.long	0x2b1f
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1409
	.byte	0xf
	.byte	0x79
	.byte	0xb
	.long	0x2b1f
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1410
	.byte	0xf
	.byte	0x7c
	.byte	0xb
	.long	0x77
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1411
	.byte	0xf
	.byte	0x7d
	.byte	0xb
	.long	0x77
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1412
	.byte	0xf
	.byte	0x81
	.byte	0xb
	.long	0x77
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1413
	.byte	0xf
	.byte	0x84
	.byte	0xb
	.long	0x77
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1414
	.byte	0xf
	.byte	0x87
	.byte	0xb
	.long	0x77
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1415
	.byte	0xf
	.byte	0x88
	.byte	0xb
	.long	0x77
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1416
	.byte	0xf
	.byte	0x89
	.byte	0xb
	.long	0x77
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1417
	.byte	0xf
	.byte	0x8c
	.byte	0xc
	.long	0xb1
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1418
	.byte	0xf
	.byte	0x8f
	.byte	0xb
	.long	0x77
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1419
	.byte	0xf
	.byte	0x90
	.byte	0xb
	.long	0x77
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1420
	.byte	0xf
	.byte	0x93
	.byte	0xe
	.long	0x2afa
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1421
	.byte	0xf
	.byte	0x96
	.byte	0xb
	.long	0x77
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1422
	.byte	0xf
	.byte	0x9a
	.byte	0xb
	.long	0x77
	.byte	0xfc
	.uleb128 0x1a
	.long	.LASF1423
	.byte	0x9e
	.byte	0xb
	.long	0x77
	.value	0x100
	.uleb128 0x1a
	.long	.LASF1424
	.byte	0xa1
	.byte	0xf
	.long	0x2b3f
	.value	0x108
	.uleb128 0x1a
	.long	.LASF1425
	.byte	0xa4
	.byte	0xe
	.long	0xd6
	.value	0x138
	.byte	0
	.uleb128 0x6
	.long	0x28e8
	.uleb128 0xf
	.long	.LASF1426
	.byte	0xd
	.value	0x11e
	.byte	0x3
	.long	0x26ce
	.uleb128 0xe
	.long	0x9a
	.byte	0xf
	.byte	0x36
	.byte	0x1
	.long	0x2aee
	.uleb128 0x2
	.long	.LASF1427
	.byte	0
	.uleb128 0x2
	.long	.LASF1428
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1429
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF1430
	.byte	0xf
	.byte	0x3e
	.byte	0x3
	.long	0x2acf
	.uleb128 0x6
	.long	0x2ac2
	.uleb128 0x9
	.long	0x77
	.long	0x2b0f
	.uleb128 0xb
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.long	0xd6
	.long	0x2b1f
	.uleb128 0xb
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.long	0x77
	.long	0x2b2f
	.uleb128 0xb
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	0xd6
	.long	0x2b3f
	.uleb128 0xb
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	0x26c2
	.long	0x2b4f
	.uleb128 0xb
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF1397
	.byte	0x10
	.byte	0x90
	.byte	0xd
	.long	0x77
	.uleb128 0x5
	.long	.LASF1431
	.byte	0x10
	.byte	0x91
	.byte	0xd
	.long	0x77
	.uleb128 0x2f
	.long	.LASF1432
	.byte	0x10
	.value	0x10b
	.byte	0xd
	.long	0x77
	.uleb128 0x10
	.byte	0x8
	.byte	0xe
	.byte	0x47
	.long	0x2b93
	.uleb128 0x8
	.string	"x"
	.byte	0xe
	.byte	0x49
	.byte	0xd
	.long	0x31d
	.byte	0
	.uleb128 0x8
	.string	"y"
	.byte	0xe
	.byte	0x4a
	.byte	0xd
	.long	0x31d
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.long	.LASF1433
	.byte	0xe
	.byte	0x4c
	.byte	0x3
	.long	0x2b74
	.uleb128 0x10
	.byte	0x28
	.byte	0xe
	.byte	0x58
	.long	0x2bd6
	.uleb128 0x3
	.long	.LASF1368
	.byte	0xe
	.byte	0x5a
	.byte	0x10
	.long	0x441
	.byte	0
	.uleb128 0x8
	.string	"x"
	.byte	0xe
	.byte	0x5b
	.byte	0xe
	.long	0x31d
	.byte	0x18
	.uleb128 0x8
	.string	"y"
	.byte	0xe
	.byte	0x5c
	.byte	0xe
	.long	0x31d
	.byte	0x1c
	.uleb128 0x8
	.string	"z"
	.byte	0xe
	.byte	0x5d
	.byte	0xe
	.long	0x31d
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF1434
	.byte	0xe
	.byte	0x5f
	.byte	0x3
	.long	0x2b9f
	.uleb128 0x10
	.byte	0x80
	.byte	0xe
	.byte	0x65
	.long	0x2cbb
	.uleb128 0x3
	.long	.LASF1435
	.byte	0xe
	.byte	0x67
	.byte	0xd
	.long	0x31d
	.byte	0
	.uleb128 0x3
	.long	.LASF1436
	.byte	0xe
	.byte	0x68
	.byte	0xd
	.long	0x31d
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1437
	.byte	0xe
	.byte	0x69
	.byte	0xb
	.long	0xa8
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1438
	.byte	0xe
	.byte	0x6a
	.byte	0xb
	.long	0xa8
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1439
	.byte	0xe
	.byte	0x6b
	.byte	0xb
	.long	0xa8
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1440
	.byte	0xe
	.byte	0x6c
	.byte	0xb
	.long	0xa8
	.byte	0xe
	.uleb128 0x8
	.string	"tag"
	.byte	0xe
	.byte	0x6d
	.byte	0xb
	.long	0xa8
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1441
	.byte	0xe
	.byte	0x70
	.byte	0xa
	.long	0x77
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1442
	.byte	0xe
	.byte	0x73
	.byte	0xd
	.long	0x2afa
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1443
	.byte	0xe
	.byte	0x76
	.byte	0xa
	.long	0x2b1f
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1444
	.byte	0xe
	.byte	0x79
	.byte	0x11
	.long	0x2bd6
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1379
	.byte	0xe
	.byte	0x7c
	.byte	0xa
	.long	0x77
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1445
	.byte	0xe
	.byte	0x7f
	.byte	0xd
	.long	0x2afa
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1446
	.byte	0xe
	.byte	0x82
	.byte	0xb
	.long	0xaf
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1447
	.byte	0xe
	.byte	0x84
	.byte	0xb
	.long	0x77
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1448
	.byte	0xe
	.byte	0x85
	.byte	0x15
	.long	0x2d7a
	.byte	0x78
	.byte	0
	.uleb128 0x16
	.long	.LASF1449
	.byte	0x58
	.byte	0xe
	.byte	0xb3
	.long	0x2d7a
	.uleb128 0x8
	.string	"v1"
	.byte	0xe
	.byte	0xb6
	.byte	0xf
	.long	0x2e29
	.byte	0
	.uleb128 0x8
	.string	"v2"
	.byte	0xe
	.byte	0xb7
	.byte	0xf
	.long	0x2e29
	.byte	0x8
	.uleb128 0x8
	.string	"dx"
	.byte	0xe
	.byte	0xba
	.byte	0xd
	.long	0x31d
	.byte	0x10
	.uleb128 0x8
	.string	"dy"
	.byte	0xe
	.byte	0xbb
	.byte	0xd
	.long	0x31d
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1359
	.byte	0xe
	.byte	0xbe
	.byte	0xb
	.long	0xa8
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1440
	.byte	0xe
	.byte	0xbf
	.byte	0xb
	.long	0xa8
	.byte	0x1a
	.uleb128 0x8
	.string	"tag"
	.byte	0xe
	.byte	0xc0
	.byte	0xb
	.long	0xa8
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1450
	.byte	0xe
	.byte	0xc4
	.byte	0xb
	.long	0x2bb
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1451
	.byte	0xe
	.byte	0xc8
	.byte	0xd
	.long	0x2e2e
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1452
	.byte	0xe
	.byte	0xcb
	.byte	0x11
	.long	0x2e1d
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1453
	.byte	0xe
	.byte	0xcf
	.byte	0xf
	.long	0x2de7
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1454
	.byte	0xe
	.byte	0xd0
	.byte	0xf
	.long	0x2de7
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1379
	.byte	0xe
	.byte	0xd3
	.byte	0xa
	.long	0x77
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1446
	.byte	0xe
	.byte	0xd6
	.byte	0xb
	.long	0xaf
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.long	0x2d7f
	.uleb128 0x6
	.long	0x2cbb
	.uleb128 0x7
	.long	.LASF1455
	.byte	0xe
	.byte	0x87
	.byte	0x3
	.long	0x2be2
	.uleb128 0x10
	.byte	0x18
	.byte	0xe
	.byte	0x90
	.long	0x2de7
	.uleb128 0x3
	.long	.LASF1456
	.byte	0xe
	.byte	0x93
	.byte	0xd
	.long	0x31d
	.byte	0
	.uleb128 0x3
	.long	.LASF1457
	.byte	0xe
	.byte	0x96
	.byte	0xd
	.long	0x31d
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1458
	.byte	0xe
	.byte	0x9a
	.byte	0xb
	.long	0xa8
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1459
	.byte	0xe
	.byte	0x9b
	.byte	0xb
	.long	0xa8
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1460
	.byte	0xe
	.byte	0x9c
	.byte	0xb
	.long	0xa8
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1391
	.byte	0xe
	.byte	0x9f
	.byte	0xf
	.long	0x2de7
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	0x2d84
	.uleb128 0x7
	.long	.LASF1461
	.byte	0xe
	.byte	0xa1
	.byte	0x3
	.long	0x2d90
	.uleb128 0xe
	.long	0x9a
	.byte	0xe
	.byte	0xa9
	.byte	0x1
	.long	0x2e1d
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
	.uleb128 0x7
	.long	.LASF1466
	.byte	0xe
	.byte	0xaf
	.byte	0x3
	.long	0x2df8
	.uleb128 0x6
	.long	0x2b93
	.uleb128 0x9
	.long	0x31d
	.long	0x2e3e
	.uleb128 0xb
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF1467
	.byte	0xe
	.byte	0xd7
	.byte	0x3
	.long	0x2cbb
	.uleb128 0x10
	.byte	0x38
	.byte	0xe
	.byte	0xf0
	.long	0x2eba
	.uleb128 0x8
	.string	"v1"
	.byte	0xe
	.byte	0xf2
	.byte	0xf
	.long	0x2e29
	.byte	0
	.uleb128 0x8
	.string	"v2"
	.byte	0xe
	.byte	0xf3
	.byte	0xf
	.long	0x2e29
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1468
	.byte	0xe
	.byte	0xf5
	.byte	0xd
	.long	0x31d
	.byte	0x10
	.uleb128 0x3
	.long	.LASF61
	.byte	0xe
	.byte	0xf7
	.byte	0xd
	.long	0x365
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1469
	.byte	0xe
	.byte	0xf9
	.byte	0xd
	.long	0x2eba
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1470
	.byte	0xe
	.byte	0xfa
	.byte	0xd
	.long	0x2ebf
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1453
	.byte	0xe
	.byte	0xff
	.byte	0xf
	.long	0x2de7
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1454
	.byte	0xe
	.value	0x100
	.byte	0xf
	.long	0x2de7
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.long	0x2dec
	.uleb128 0x6
	.long	0x2e3e
	.uleb128 0xf
	.long	.LASF1471
	.byte	0xe
	.value	0x102
	.byte	0x3
	.long	0x2e4a
	.uleb128 0xf
	.long	.LASF1472
	.byte	0xe
	.value	0x13a
	.byte	0xe
	.long	0xe2
	.uleb128 0x30
	.long	.LASF1473
	.byte	0x40
	.byte	0xe
	.value	0x142
	.byte	0x10
	.long	0x2f91
	.uleb128 0x4
	.long	.LASF1474
	.byte	0xe
	.value	0x144
	.byte	0xd
	.long	0x2f91
	.byte	0
	.uleb128 0x1b
	.string	"x1"
	.value	0x145
	.byte	0xb
	.long	0x77
	.byte	0x8
	.uleb128 0x1b
	.string	"x2"
	.value	0x146
	.byte	0xb
	.long	0x77
	.byte	0xc
	.uleb128 0x4
	.long	.LASF1475
	.byte	0xe
	.value	0x148
	.byte	0xe
	.long	0x31d
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1476
	.byte	0xe
	.value	0x149
	.byte	0xe
	.long	0x31d
	.byte	0x14
	.uleb128 0x4
	.long	.LASF1477
	.byte	0xe
	.value	0x14a
	.byte	0xe
	.long	0x31d
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1478
	.byte	0xe
	.value	0x14d
	.byte	0xb
	.long	0x77
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF1479
	.byte	0xe
	.value	0x150
	.byte	0xe
	.long	0x31d
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1480
	.byte	0xe
	.value	0x153
	.byte	0xe
	.long	0x31d
	.byte	0x24
	.uleb128 0x4
	.long	.LASF1481
	.byte	0xe
	.value	0x157
	.byte	0xd
	.long	0x2f96
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1482
	.byte	0xe
	.value	0x158
	.byte	0xd
	.long	0x2f96
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1483
	.byte	0xe
	.value	0x159
	.byte	0xd
	.long	0x2f96
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.long	0x2ec4
	.uleb128 0x6
	.long	0xa8
	.uleb128 0xf
	.long	.LASF1484
	.byte	0xe
	.value	0x15b
	.byte	0x3
	.long	0x2ede
	.uleb128 0x6
	.long	0x2ed1
	.uleb128 0x31
	.value	0x298
	.byte	0xe
	.value	0x1cc
	.byte	0x9
	.long	0x304e
	.uleb128 0x4
	.long	.LASF1355
	.byte	0xe
	.value	0x1ce
	.byte	0xc
	.long	0x31d
	.byte	0
	.uleb128 0x4
	.long	.LASF1485
	.byte	0xe
	.value	0x1cf
	.byte	0x9
	.long	0x77
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1439
	.byte	0xe
	.value	0x1d0
	.byte	0x9
	.long	0x77
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1486
	.byte	0xe
	.value	0x1d1
	.byte	0x9
	.long	0x77
	.byte	0xc
	.uleb128 0x4
	.long	.LASF1487
	.byte	0xe
	.value	0x1d2
	.byte	0x9
	.long	0x77
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1488
	.byte	0xe
	.value	0x1d6
	.byte	0x9
	.long	0xe2
	.byte	0x14
	.uleb128 0x1b
	.string	"top"
	.value	0x1d9
	.byte	0x9
	.long	0x304e
	.byte	0x15
	.uleb128 0x18
	.long	.LASF1489
	.value	0x1da
	.long	0xe2
	.value	0x155
	.uleb128 0x18
	.long	.LASF1490
	.value	0x1db
	.long	0xe2
	.value	0x156
	.uleb128 0x18
	.long	.LASF1491
	.value	0x1dd
	.long	0x304e
	.value	0x157
	.uleb128 0x18
	.long	.LASF1492
	.value	0x1de
	.long	0xe2
	.value	0x297
	.byte	0
	.uleb128 0x9
	.long	0xe2
	.long	0x305f
	.uleb128 0x14
	.long	0x43
	.value	0x13f
	.byte	0
	.uleb128 0xf
	.long	.LASF1493
	.byte	0xe
	.value	0x1e0
	.byte	0x3
	.long	0x2fad
	.uleb128 0x5
	.long	.LASF1494
	.byte	0x11
	.byte	0x34
	.byte	0x16
	.long	0x2fa8
	.uleb128 0x5
	.long	.LASF1495
	.byte	0x11
	.byte	0x3a
	.byte	0xd
	.long	0x77
	.uleb128 0x5
	.long	.LASF1496
	.byte	0x11
	.byte	0x3d
	.byte	0xe
	.long	0x3090
	.uleb128 0x6
	.long	0x77
	.uleb128 0x5
	.long	.LASF1497
	.byte	0x11
	.byte	0x67
	.byte	0x11
	.long	0x31d
	.uleb128 0x5
	.long	.LASF1498
	.byte	0x11
	.byte	0x68
	.byte	0x11
	.long	0x31d
	.uleb128 0x5
	.long	.LASF1396
	.byte	0x11
	.byte	0x69
	.byte	0x11
	.long	0x31d
	.uleb128 0x5
	.long	.LASF1499
	.byte	0x11
	.byte	0x6b
	.byte	0x11
	.long	0x365
	.uleb128 0x9
	.long	0x365
	.long	0x30d6
	.uleb128 0x14
	.long	0x43
	.value	0x140
	.byte	0
	.uleb128 0x5
	.long	.LASF1500
	.byte	0x11
	.byte	0x73
	.byte	0x11
	.long	0x30c5
	.uleb128 0x5
	.long	.LASF1501
	.byte	0x11
	.byte	0x81
	.byte	0x14
	.long	0x30ee
	.uleb128 0x6
	.long	0x305f
	.uleb128 0x5
	.long	.LASF1502
	.byte	0x11
	.byte	0x82
	.byte	0x14
	.long	0x30ee
	.uleb128 0x5
	.long	.LASF1503
	.byte	0x12
	.byte	0x33
	.byte	0x11
	.long	0x31d
	.uleb128 0x9
	.long	0x2fa8
	.long	0x3121
	.uleb128 0xb
	.long	0x43
	.byte	0xf
	.uleb128 0xb
	.long	0x43
	.byte	0x7f
	.byte	0
	.uleb128 0x5
	.long	.LASF1504
	.byte	0x12
	.byte	0x4f
	.byte	0x16
	.long	0x310b
	.uleb128 0x5
	.long	.LASF1421
	.byte	0x12
	.byte	0x51
	.byte	0xd
	.long	0x77
	.uleb128 0x5
	.long	.LASF1422
	.byte	0x12
	.byte	0x52
	.byte	0x16
	.long	0x2fa8
	.uleb128 0x5
	.long	.LASF1505
	.byte	0x12
	.byte	0x5d
	.byte	0xd
	.long	0x77
	.uleb128 0x32
	.uleb128 0x5
	.long	.LASF1506
	.byte	0x12
	.byte	0x64
	.byte	0x10
	.long	0x315e
	.uleb128 0x6
	.long	0x3151
	.uleb128 0x5
	.long	.LASF1507
	.byte	0x12
	.byte	0x68
	.byte	0x10
	.long	0x315e
	.uleb128 0x9
	.long	0x2f9b
	.long	0x317f
	.uleb128 0xb
	.long	0x43
	.byte	0xff
	.byte	0
	.uleb128 0x5
	.long	.LASF1508
	.byte	0x13
	.byte	0x30
	.byte	0x12
	.long	0x316f
	.uleb128 0x5
	.long	.LASF1509
	.byte	0x13
	.byte	0x31
	.byte	0x13
	.long	0x3197
	.uleb128 0x6
	.long	0x2f9b
	.uleb128 0x6
	.long	0x2fa8
	.uleb128 0x6
	.long	0x31a6
	.uleb128 0x19
	.long	0x31b6
	.uleb128 0xa
	.long	0x77
	.uleb128 0xa
	.long	0x77
	.byte	0
	.uleb128 0x5
	.long	.LASF1510
	.byte	0x14
	.byte	0x23
	.byte	0x11
	.long	0x2f96
	.uleb128 0x7
	.long	.LASF1511
	.byte	0x14
	.byte	0x26
	.byte	0x10
	.long	0x31a1
	.uleb128 0x5
	.long	.LASF1512
	.byte	0x14
	.byte	0x28
	.byte	0x18
	.long	0x31c2
	.uleb128 0x9
	.long	0xa8
	.long	0x31eb
	.uleb128 0x14
	.long	0x43
	.value	0x13f
	.byte	0
	.uleb128 0x5
	.long	.LASF1513
	.byte	0x14
	.byte	0x2b
	.byte	0xf
	.long	0x31da
	.uleb128 0x5
	.long	.LASF1514
	.byte	0x14
	.byte	0x2c
	.byte	0xf
	.long	0x31da
	.uleb128 0x9
	.long	0x31d
	.long	0x3213
	.uleb128 0xb
	.long	0x43
	.byte	0xc7
	.byte	0
	.uleb128 0x5
	.long	.LASF1515
	.byte	0x14
	.byte	0x2e
	.byte	0x11
	.long	0x3203
	.uleb128 0x9
	.long	0x31d
	.long	0x3230
	.uleb128 0x14
	.long	0x43
	.value	0x13f
	.byte	0
	.uleb128 0x5
	.long	.LASF1516
	.byte	0x14
	.byte	0x2f
	.byte	0x11
	.long	0x321f
	.uleb128 0x5
	.long	.LASF1517
	.byte	0x15
	.byte	0x31
	.byte	0x11
	.long	0x31d
	.uleb128 0x5
	.long	.LASF1518
	.byte	0x16
	.byte	0x20
	.byte	0x16
	.long	0x2fa8
	.uleb128 0x5
	.long	.LASF1519
	.byte	0x16
	.byte	0x21
	.byte	0xd
	.long	0x77
	.uleb128 0x5
	.long	.LASF1520
	.byte	0x16
	.byte	0x22
	.byte	0xd
	.long	0x77
	.uleb128 0x5
	.long	.LASF1521
	.byte	0x16
	.byte	0x23
	.byte	0xd
	.long	0x77
	.uleb128 0x5
	.long	.LASF1522
	.byte	0x16
	.byte	0x24
	.byte	0x11
	.long	0x31d
	.uleb128 0x5
	.long	.LASF1523
	.byte	0x16
	.byte	0x25
	.byte	0x11
	.long	0x31d
	.uleb128 0x5
	.long	.LASF1524
	.byte	0x16
	.byte	0x28
	.byte	0xf
	.long	0x329c
	.uleb128 0x6
	.long	0xe2
	.uleb128 0x5
	.long	.LASF1525
	.byte	0x16
	.byte	0x40
	.byte	0xd
	.long	0x77
	.uleb128 0x5
	.long	.LASF1526
	.byte	0x16
	.byte	0x41
	.byte	0xd
	.long	0x77
	.uleb128 0x5
	.long	.LASF1527
	.byte	0x16
	.byte	0x42
	.byte	0xd
	.long	0x77
	.uleb128 0x5
	.long	.LASF1528
	.byte	0x16
	.byte	0x44
	.byte	0x16
	.long	0x2fa8
	.uleb128 0x5
	.long	.LASF1529
	.byte	0x16
	.byte	0x46
	.byte	0x11
	.long	0x31d
	.uleb128 0x5
	.long	.LASF1530
	.byte	0x16
	.byte	0x47
	.byte	0x11
	.long	0x31d
	.uleb128 0x5
	.long	.LASF1531
	.byte	0x16
	.byte	0x48
	.byte	0x11
	.long	0x31d
	.uleb128 0x5
	.long	.LASF1532
	.byte	0x16
	.byte	0x49
	.byte	0x11
	.long	0x31d
	.uleb128 0x5
	.long	.LASF1533
	.byte	0x16
	.byte	0x4c
	.byte	0xf
	.long	0x329c
	.uleb128 0x5
	.long	.LASF1534
	.byte	0x17
	.byte	0x25
	.byte	0xe
	.long	0x77
	.uleb128 0x5
	.long	.LASF1535
	.byte	0x17
	.byte	0x26
	.byte	0xd
	.long	0x77
	.uleb128 0x11
	.long	0x31ce
	.byte	0x2c
	.byte	0x12
	.uleb128 0x9
	.byte	0x3
	.quad	floorfunc
	.uleb128 0xc
	.long	.LASF1536
	.byte	0x2d
	.byte	0x12
	.long	0x31c2
	.uleb128 0x9
	.byte	0x3
	.quad	ceilingfunc
	.uleb128 0x9
	.long	0x305f
	.long	0x335b
	.uleb128 0xb
	.long	0x43
	.byte	0x7f
	.byte	0
	.uleb128 0xc
	.long	.LASF1537
	.byte	0x35
	.byte	0xd
	.long	0x334b
	.uleb128 0x9
	.byte	0x3
	.quad	visplanes
	.uleb128 0xc
	.long	.LASF1538
	.byte	0x36
	.byte	0xe
	.long	0x30ee
	.uleb128 0x9
	.byte	0x3
	.quad	lastvisplane
	.uleb128 0x11
	.long	0x30e2
	.byte	0x37
	.byte	0xe
	.uleb128 0x9
	.byte	0x3
	.quad	floorplane
	.uleb128 0x11
	.long	0x30f3
	.byte	0x38
	.byte	0xe
	.uleb128 0x9
	.byte	0x3
	.quad	ceilingplane
	.uleb128 0x9
	.long	0xa8
	.long	0x33b8
	.uleb128 0x14
	.long	0x43
	.value	0x4fff
	.byte	0
	.uleb128 0xc
	.long	.LASF1539
	.byte	0x3c
	.byte	0x9
	.long	0x33a7
	.uleb128 0x9
	.byte	0x3
	.quad	openings
	.uleb128 0x11
	.long	0x31b6
	.byte	0x3d
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	lastopening
	.uleb128 0x11
	.long	0x31eb
	.byte	0x45
	.byte	0x9
	.uleb128 0x9
	.byte	0x3
	.quad	floorclip
	.uleb128 0x11
	.long	0x31f7
	.byte	0x46
	.byte	0x9
	.uleb128 0x9
	.byte	0x3
	.quad	ceilingclip
	.uleb128 0x9
	.long	0x77
	.long	0x3410
	.uleb128 0xb
	.long	0x43
	.byte	0xc7
	.byte	0
	.uleb128 0xc
	.long	.LASF1540
	.byte	0x4c
	.byte	0x7
	.long	0x3400
	.uleb128 0x9
	.byte	0x3
	.quad	spanstart
	.uleb128 0xc
	.long	.LASF1541
	.byte	0x4d
	.byte	0x7
	.long	0x3400
	.uleb128 0x9
	.byte	0x3
	.quad	spanstop
	.uleb128 0xc
	.long	.LASF1542
	.byte	0x52
	.byte	0x11
	.long	0x319c
	.uleb128 0x9
	.byte	0x3
	.quad	planezlight
	.uleb128 0xc
	.long	.LASF1543
	.byte	0x53
	.byte	0xb
	.long	0x31d
	.uleb128 0x9
	.byte	0x3
	.quad	planeheight
	.uleb128 0x11
	.long	0x3213
	.byte	0x55
	.byte	0xb
	.uleb128 0x9
	.byte	0x3
	.quad	yslope
	.uleb128 0x11
	.long	0x3230
	.byte	0x56
	.byte	0xb
	.uleb128 0x9
	.byte	0x3
	.quad	distscale
	.uleb128 0xc
	.long	.LASF1544
	.byte	0x57
	.byte	0xb
	.long	0x31d
	.uleb128 0x9
	.byte	0x3
	.quad	basexscale
	.uleb128 0xc
	.long	.LASF1545
	.byte	0x58
	.byte	0xb
	.long	0x31d
	.uleb128 0x9
	.byte	0x3
	.quad	baseyscale
	.uleb128 0xc
	.long	.LASF1546
	.byte	0x5a
	.byte	0xb
	.long	0x3203
	.uleb128 0x9
	.byte	0x3
	.quad	cachedheight
	.uleb128 0xc
	.long	.LASF1547
	.byte	0x5b
	.byte	0xb
	.long	0x3203
	.uleb128 0x9
	.byte	0x3
	.quad	cacheddistance
	.uleb128 0xc
	.long	.LASF1548
	.byte	0x5c
	.byte	0xb
	.long	0x3203
	.uleb128 0x9
	.byte	0x3
	.quad	cachedxstep
	.uleb128 0xc
	.long	.LASF1549
	.byte	0x5d
	.byte	0xb
	.long	0x3203
	.uleb128 0x9
	.byte	0x3
	.quad	cachedystep
	.uleb128 0x23
	.long	.LASF1555
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0x351b
	.uleb128 0xa
	.long	0xaf
	.uleb128 0xa
	.long	0x77
	.byte	0
	.uleb128 0x17
	.long	.LASF1550
	.byte	0x18
	.byte	0x4e
	.byte	0x7
	.long	0xaf
	.long	0x3536
	.uleb128 0xa
	.long	0x77
	.uleb128 0xa
	.long	0x77
	.byte	0
	.uleb128 0x17
	.long	.LASF1551
	.byte	0x19
	.byte	0x24
	.byte	0x1
	.long	0x329c
	.long	0x3551
	.uleb128 0xa
	.long	0x77
	.uleb128 0xa
	.long	0x77
	.byte	0
	.uleb128 0x17
	.long	.LASF1552
	.byte	0x8
	.byte	0x29
	.byte	0x9
	.long	0x31d
	.long	0x356c
	.uleb128 0xa
	.long	0x31d
	.uleb128 0xa
	.long	0x31d
	.byte	0
	.uleb128 0x17
	.long	.LASF1553
	.byte	0x1a
	.byte	0x3d
	.byte	0xe
	.long	0xaf
	.long	0x358c
	.uleb128 0xa
	.long	0xaf
	.uleb128 0xa
	.long	0x77
	.uleb128 0xa
	.long	0x6b
	.byte	0
	.uleb128 0x17
	.long	.LASF1554
	.byte	0x8
	.byte	0x28
	.byte	0x9
	.long	0x31d
	.long	0x35a7
	.uleb128 0xa
	.long	0x31d
	.uleb128 0xa
	.long	0x31d
	.byte	0
	.uleb128 0x23
	.long	.LASF1556
	.byte	0x1b
	.byte	0x59
	.byte	0x6
	.long	0x35ba
	.uleb128 0xa
	.long	0xb1
	.uleb128 0x20
	.byte	0
	.uleb128 0x24
	.long	.LASF1560
	.value	0x16f
	.byte	0x6
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x3621
	.uleb128 0x1c
	.string	"pl"
	.value	0x171
	.byte	0x12
	.long	0x30ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.long	.LASF1558
	.value	0x172
	.byte	0xb
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"x"
	.value	0x173
	.byte	0xb
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.long	.LASF1559
	.value	0x174
	.byte	0xb
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.long	.LASF61
	.value	0x175
	.byte	0xb
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x24
	.long	.LASF1561
	.value	0x14b
	.byte	0x1
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x3685
	.uleb128 0x15
	.string	"x"
	.value	0x14c
	.byte	0x8
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.string	"t1"
	.value	0x14d
	.byte	0x8
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"b1"
	.value	0x14e
	.byte	0x8
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.string	"t2"
	.value	0x14f
	.byte	0x8
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.string	"b2"
	.value	0x150
	.byte	0x8
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x33
	.long	.LASF1567
	.byte	0x1
	.value	0x10a
	.byte	0x1
	.long	0x30ee
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x371c
	.uleb128 0x15
	.string	"pl"
	.value	0x10b
	.byte	0xf
	.long	0x30ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF1562
	.value	0x10c
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x25
	.long	.LASF1559
	.value	0x10d
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.long	.LASF1563
	.value	0x10f
	.byte	0xa
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.long	.LASF1564
	.value	0x110
	.byte	0xa
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.long	.LASF1565
	.value	0x111
	.byte	0xa
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.long	.LASF1566
	.value	0x112
	.byte	0xa
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.string	"x"
	.value	0x113
	.byte	0xa
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x34
	.long	.LASF1568
	.byte	0x1
	.byte	0xda
	.byte	0x1
	.long	0x30ee
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3777
	.uleb128 0x1d
	.long	.LASF1355
	.byte	0xdb
	.byte	0xb
	.long	0x31d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.long	.LASF1485
	.byte	0xdc
	.byte	0x8
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF1439
	.byte	0xdd
	.byte	0x8
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.long	.LASF1569
	.byte	0xdf
	.byte	0x11
	.long	0x30ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF1570
	.byte	0xb9
	.byte	0x6
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x37b0
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.byte	0xbb
	.byte	0xa
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.long	.LASF61
	.byte	0xbc
	.byte	0xd
	.long	0x365
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.long	.LASF1571
	.byte	0x79
	.byte	0x1
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3829
	.uleb128 0x1e
	.string	"y"
	.byte	0x7a
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1e
	.string	"x1"
	.byte	0x7b
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.string	"x2"
	.byte	0x7c
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x12
	.long	.LASF61
	.byte	0x7e
	.byte	0xd
	.long	0x365
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.long	.LASF1572
	.byte	0x7f
	.byte	0xd
	.long	0x31d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.long	.LASF1573
	.byte	0x80
	.byte	0xd
	.long	0x31d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.long	.LASF1574
	.byte	0x81
	.byte	0xe
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x36
	.long	.LASF1576
	.byte	0x1
	.byte	0x65
	.byte	0x6
	.quad	.LFB6
	.quad	.LFE6-.LFB6
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xd
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
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 14
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
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 14
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
.LASF1431:
	.string	"viewwidth"
.LASF859:
	.string	"S_BSPI_RUN3"
.LASF860:
	.string	"S_BSPI_RUN4"
.LASF861:
	.string	"S_BSPI_RUN5"
.LASF862:
	.string	"S_BSPI_RUN6"
.LASF863:
	.string	"S_BSPI_RUN7"
.LASF864:
	.string	"S_BSPI_RUN8"
.LASF865:
	.string	"S_BSPI_RUN9"
.LASF149:
	.string	"SPR_YSKU"
.LASF1420:
	.string	"attacker"
.LASF512:
	.string	"S_FIRE10"
.LASF513:
	.string	"S_FIRE11"
.LASF514:
	.string	"S_FIRE12"
.LASF515:
	.string	"S_FIRE13"
.LASF516:
	.string	"S_FIRE14"
.LASF517:
	.string	"S_FIRE15"
.LASF518:
	.string	"S_FIRE16"
.LASF519:
	.string	"S_FIRE17"
.LASF520:
	.string	"S_FIRE18"
.LASF521:
	.string	"S_FIRE19"
.LASF1333:
	.string	"MT_MISC84"
.LASF1266:
	.string	"MT_MISC20"
.LASF1080:
	.string	"S_MEGA2"
.LASF1081:
	.string	"S_MEGA3"
.LASF1082:
	.string	"S_MEGA4"
.LASF1270:
	.string	"MT_MISC24"
.LASF1271:
	.string	"MT_MISC25"
.LASF1273:
	.string	"MT_MISC26"
.LASF1274:
	.string	"MT_MISC27"
.LASF1275:
	.string	"MT_MISC28"
.LASF1278:
	.string	"MT_MISC29"
.LASF711:
	.string	"S_SARG_PAIN2"
.LASF1385:
	.string	"threshold"
.LASF37:
	.string	"wp_pistol"
.LASF190:
	.string	"SPR_COL1"
.LASF191:
	.string	"SPR_COL2"
.LASF192:
	.string	"SPR_COL3"
.LASF193:
	.string	"SPR_COL4"
.LASF202:
	.string	"SPR_COL5"
.LASF196:
	.string	"SPR_COL6"
.LASF1555:
	.string	"Z_ChangeTag2"
.LASF522:
	.string	"S_FIRE20"
.LASF523:
	.string	"S_FIRE21"
.LASF524:
	.string	"S_FIRE22"
.LASF525:
	.string	"S_FIRE23"
.LASF526:
	.string	"S_FIRE24"
.LASF176:
	.string	"SPR_COLU"
.LASF528:
	.string	"S_FIRE26"
.LASF529:
	.string	"S_FIRE27"
.LASF530:
	.string	"S_FIRE28"
.LASF531:
	.string	"S_FIRE29"
.LASF1279:
	.string	"MT_MISC30"
.LASF1194:
	.string	"action"
.LASF1281:
	.string	"MT_MISC32"
.LASF1282:
	.string	"MT_MISC33"
.LASF873:
	.string	"S_BSPI_PAIN"
.LASF1284:
	.string	"MT_MISC35"
.LASF345:
	.string	"S_BFGEXP"
.LASF51:
	.string	"am_misl"
.LASF1287:
	.string	"MT_MISC38"
.LASF1288:
	.string	"MT_MISC39"
.LASF1437:
	.string	"floorpic"
.LASF875:
	.string	"S_BSPI_DIE1"
.LASF1568:
	.string	"R_FindPlane"
.LASF1364:
	.string	"NUMPSPRITES"
.LASF1554:
	.string	"FixedMul"
.LASF880:
	.string	"S_BSPI_DIE6"
.LASF1483:
	.string	"maskedtexturecol"
.LASF1464:
	.string	"ST_POSITIVE"
.LASF1396:
	.string	"viewz"
.LASF1474:
	.string	"curline"
.LASF1458:
	.string	"toptexture"
.LASF771:
	.string	"S_BOSS_RAISE1"
.LASF772:
	.string	"S_BOSS_RAISE2"
.LASF1213:
	.string	"MT_HEAD"
.LASF773:
	.string	"S_BOSS_RAISE3"
.LASF532:
	.string	"S_FIRE30"
.LASF677:
	.string	"S_TROO_PAIN"
.LASF966:
	.string	"S_SSWV_DIE1"
.LASF776:
	.string	"S_BOSS_RAISE6"
.LASF968:
	.string	"S_SSWV_DIE3"
.LASF969:
	.string	"S_SSWV_DIE4"
.LASF970:
	.string	"S_SSWV_DIE5"
.LASF144:
	.string	"SPR_BKEY"
.LASF788:
	.string	"S_BOS2_ATK1"
.LASF789:
	.string	"S_BOS2_ATK2"
.LASF790:
	.string	"S_BOS2_ATK3"
.LASF178:
	.string	"SPR_GOR1"
.LASF185:
	.string	"SPR_GOR2"
.LASF186:
	.string	"SPR_GOR3"
.LASF187:
	.string	"SPR_GOR4"
.LASF188:
	.string	"SPR_GOR5"
.LASF1291:
	.string	"MT_MISC42"
.LASF1292:
	.string	"MT_MISC43"
.LASF545:
	.string	"S_SKEL_RUN1"
.LASF546:
	.string	"S_SKEL_RUN2"
.LASF547:
	.string	"S_SKEL_RUN3"
.LASF548:
	.string	"S_SKEL_RUN4"
.LASF549:
	.string	"S_SKEL_RUN5"
.LASF550:
	.string	"S_SKEL_RUN6"
.LASF551:
	.string	"S_SKEL_RUN7"
.LASF552:
	.string	"S_SKEL_RUN8"
.LASF553:
	.string	"S_SKEL_RUN9"
.LASF40:
	.string	"wp_missile"
.LASF1031:
	.string	"S_BEXP2"
.LASF1341:
	.string	"seestate"
.LASF726:
	.string	"S_HEAD_ATK1"
.LASF727:
	.string	"S_HEAD_ATK2"
.LASF728:
	.string	"S_HEAD_ATK3"
.LASF1452:
	.string	"slopetype"
.LASF980:
	.string	"S_SSWV_RAISE1"
.LASF981:
	.string	"S_SSWV_RAISE2"
.LASF982:
	.string	"S_SSWV_RAISE3"
.LASF983:
	.string	"S_SSWV_RAISE4"
.LASF984:
	.string	"S_SSWV_RAISE5"
.LASF61:
	.string	"angle"
.LASF1208:
	.string	"MT_FATSHOT"
.LASF164:
	.string	"SPR_CELL"
.LASF165:
	.string	"SPR_CELP"
.LASF1146:
	.string	"S_HEARTCOL"
.LASF1392:
	.string	"numlines"
.LASF1063:
	.string	"S_MEDI"
.LASF1070:
	.string	"S_PINV"
.LASF1257:
	.string	"MT_INS"
.LASF1300:
	.string	"MT_MISC51"
.LASF1301:
	.string	"MT_MISC52"
.LASF1255:
	.string	"MT_INV"
.LASF1303:
	.string	"MT_MISC54"
.LASF1160:
	.string	"S_BTORCHSHRT"
.LASF281:
	.string	"S_MISSILEUP"
.LASF1306:
	.string	"MT_MISC57"
.LASF1307:
	.string	"MT_MISC58"
.LASF1308:
	.string	"MT_MISC59"
.LASF458:
	.string	"S_SPOS_RAISE1"
.LASF1534:
	.string	"skytexture"
.LASF252:
	.string	"S_SGUNFLASH1"
.LASF253:
	.string	"S_SGUNFLASH2"
.LASF800:
	.string	"S_BOS2_RAISE1"
.LASF801:
	.string	"S_BOS2_RAISE2"
.LASF802:
	.string	"S_BOS2_RAISE3"
.LASF803:
	.string	"S_BOS2_RAISE4"
.LASF804:
	.string	"S_BOS2_RAISE5"
.LASF805:
	.string	"S_BOS2_RAISE6"
.LASF806:
	.string	"S_BOS2_RAISE7"
.LASF565:
	.string	"S_SKEL_PAIN"
.LASF1052:
	.string	"S_RKEY"
.LASF26:
	.string	"next"
.LASF1573:
	.string	"length"
.LASF234:
	.string	"S_PISTOLUP"
.LASF920:
	.string	"S_CYBER_DIE8"
.LASF1457:
	.string	"rowoffset"
.LASF1309:
	.string	"MT_MISC60"
.LASF1310:
	.string	"MT_MISC61"
.LASF1311:
	.string	"MT_MISC62"
.LASF1312:
	.string	"MT_MISC63"
.LASF1313:
	.string	"MT_MISC64"
.LASF1314:
	.string	"MT_MISC65"
.LASF1315:
	.string	"MT_MISC66"
.LASF1316:
	.string	"MT_MISC67"
.LASF349:
	.string	"S_EXPLODE1"
.LASF350:
	.string	"S_EXPLODE2"
.LASF351:
	.string	"S_EXPLODE3"
.LASF540:
	.string	"S_TRACEEXP1"
.LASF541:
	.string	"S_TRACEEXP2"
.LASF542:
	.string	"S_TRACEEXP3"
.LASF1570:
	.string	"R_ClearPlanes"
.LASF928:
	.string	"S_PAIN_RUN5"
.LASF1030:
	.string	"S_BEXP"
.LASF929:
	.string	"S_PAIN_RUN6"
.LASF1421:
	.string	"extralight"
.LASF1147:
	.string	"S_HEARTCOL2"
.LASF326:
	.string	"S_RBALLX1"
.LASF1355:
	.string	"height"
.LASF1240:
	.string	"MT_TELEPORTMAN"
.LASF1319:
	.string	"MT_MISC70"
.LASF109:
	.string	"SPR_IFOG"
.LASF1321:
	.string	"MT_MISC72"
.LASF1322:
	.string	"MT_MISC73"
.LASF1323:
	.string	"MT_MISC74"
.LASF1324:
	.string	"MT_MISC75"
.LASF1325:
	.string	"MT_MISC76"
.LASF1153:
	.string	"S_GREENTORCH2"
.LASF1154:
	.string	"S_GREENTORCH3"
.LASF1155:
	.string	"S_GREENTORCH4"
.LASF994:
	.string	"S_COMMKEEN9"
.LASF643:
	.string	"S_CPOS_PAIN2"
.LASF866:
	.string	"S_BSPI_RUN10"
.LASF867:
	.string	"S_BSPI_RUN11"
.LASF868:
	.string	"S_BSPI_RUN12"
.LASF950:
	.string	"S_SSWV_RUN1"
.LASF951:
	.string	"S_SSWV_RUN2"
.LASF952:
	.string	"S_SSWV_RUN3"
.LASF953:
	.string	"S_SSWV_RUN4"
.LASF954:
	.string	"S_SSWV_RUN5"
.LASF955:
	.string	"S_SSWV_RUN6"
.LASF956:
	.string	"S_SSWV_RUN7"
.LASF957:
	.string	"S_SSWV_RUN8"
.LASF1135:
	.string	"S_SKULLCOL"
.LASF1510:
	.string	"lastopening"
.LASF1207:
	.string	"MT_FATSO"
.LASF679:
	.string	"S_TROO_DIE1"
.LASF680:
	.string	"S_TROO_DIE2"
.LASF681:
	.string	"S_TROO_DIE3"
.LASF682:
	.string	"S_TROO_DIE4"
.LASF683:
	.string	"S_TROO_DIE5"
.LASF1520:
	.string	"dc_yl"
.LASF1060:
	.string	"S_YSKULL"
.LASF1061:
	.string	"S_YSKULL2"
.LASF162:
	.string	"SPR_ROCK"
.LASF1232:
	.string	"MT_ROCKET"
.LASF1330:
	.string	"MT_MISC81"
.LASF1331:
	.string	"MT_MISC82"
.LASF1332:
	.string	"MT_MISC83"
.LASF638:
	.string	"S_CPOS_ATK1"
.LASF639:
	.string	"S_CPOS_ATK2"
.LASF640:
	.string	"S_CPOS_ATK3"
.LASF641:
	.string	"S_CPOS_ATK4"
.LASF1199:
	.string	"MT_PLAYER"
.LASF174:
	.string	"SPR_SHOT"
.LASF367:
	.string	"S_IFOG2"
.LASF368:
	.string	"S_IFOG3"
.LASF369:
	.string	"S_IFOG4"
.LASF370:
	.string	"S_IFOG5"
.LASF103:
	.string	"SPR_PLSE"
.LASF95:
	.string	"SPR_PLSF"
.LASF94:
	.string	"SPR_PLSG"
.LASF763:
	.string	"S_BOSS_PAIN2"
.LASF463:
	.string	"S_VILE_STND"
.LASF991:
	.string	"S_COMMKEEN6"
.LASF992:
	.string	"S_COMMKEEN7"
.LASF993:
	.string	"S_COMMKEEN8"
.LASF102:
	.string	"SPR_PLSS"
.LASF842:
	.string	"S_SPID_PAIN2"
.LASF1356:
	.string	"mass"
.LASF1558:
	.string	"light"
.LASF215:
	.string	"SPR_POB1"
.LASF216:
	.string	"SPR_POB2"
.LASF1064:
	.string	"S_SOUL"
.LASF1074:
	.string	"S_PSTR"
.LASF906:
	.string	"S_CYBER_ATK1"
.LASF907:
	.string	"S_CYBER_ATK2"
.LASF908:
	.string	"S_CYBER_ATK3"
.LASF909:
	.string	"S_CYBER_ATK4"
.LASF910:
	.string	"S_CYBER_ATK5"
.LASF911:
	.string	"S_CYBER_ATK6"
.LASF1101:
	.string	"S_BFUG"
.LASF141:
	.string	"SPR_FCAN"
.LASF1467:
	.string	"line_t"
.LASF584:
	.string	"S_FATT_STND"
.LASF1547:
	.string	"cacheddistance"
.LASF1021:
	.string	"S_BRAINEXPLODE1"
.LASF1022:
	.string	"S_BRAINEXPLODE2"
.LASF1023:
	.string	"S_BRAINEXPLODE3"
.LASF305:
	.string	"S_BFGUP"
.LASF146:
	.string	"SPR_YKEY"
.LASF692:
	.string	"S_TROO_RAISE1"
.LASF693:
	.string	"S_TROO_RAISE2"
.LASF694:
	.string	"S_TROO_RAISE3"
.LASF695:
	.string	"S_TROO_RAISE4"
.LASF696:
	.string	"S_TROO_RAISE5"
.LASF1105:
	.string	"S_PLAS"
.LASF987:
	.string	"S_COMMKEEN2"
.LASF988:
	.string	"S_COMMKEEN3"
.LASF989:
	.string	"S_COMMKEEN4"
.LASF990:
	.string	"S_COMMKEEN5"
.LASF371:
	.string	"S_PLAY"
.LASF937:
	.string	"S_PAIN_DIE2"
.LASF938:
	.string	"S_PAIN_DIE3"
.LASF939:
	.string	"S_PAIN_DIE4"
.LASF940:
	.string	"S_PAIN_DIE5"
.LASF941:
	.string	"S_PAIN_DIE6"
.LASF1210:
	.string	"MT_TROOP"
.LASF492:
	.string	"S_VILE_PAIN2"
.LASF620:
	.string	"S_FATT_RAISE1"
.LASF41:
	.string	"wp_plasma"
.LASF622:
	.string	"S_FATT_RAISE3"
.LASF623:
	.string	"S_FATT_RAISE4"
.LASF624:
	.string	"S_FATT_RAISE5"
.LASF625:
	.string	"S_FATT_RAISE6"
.LASF626:
	.string	"S_FATT_RAISE7"
.LASF627:
	.string	"S_FATT_RAISE8"
.LASF336:
	.string	"S_ROCKET"
.LASF1231:
	.string	"MT_HEADSHOT"
.LASF1447:
	.string	"linecount"
.LASF1450:
	.string	"sidenum"
.LASF889:
	.string	"S_ARACH_PLAZ"
.LASF1128:
	.string	"S_STALAGTITE"
.LASF730:
	.string	"S_HEAD_PAIN2"
.LASF731:
	.string	"S_HEAD_PAIN3"
.LASF16:
	.string	"byte"
.LASF34:
	.string	"it_redskull"
.LASF1238:
	.string	"MT_TFOG"
.LASF439:
	.string	"S_SPOS_ATK1"
.LASF440:
	.string	"S_SPOS_ATK2"
.LASF441:
	.string	"S_SPOS_ATK3"
.LASF376:
	.string	"S_PLAY_ATK1"
.LASF377:
	.string	"S_PLAY_ATK2"
.LASF129:
	.string	"SPR_APLS"
.LASF1574:
	.string	"index"
.LASF1541:
	.string	"spanstop"
.LASF68:
	.string	"finesine"
.LASF1517:
	.string	"pspriteiscale"
.LASF1413:
	.string	"refire"
.LASF1157:
	.string	"S_REDTORCH2"
.LASF1158:
	.string	"S_REDTORCH3"
.LASF1159:
	.string	"S_REDTORCH4"
.LASF666:
	.string	"S_TROO_RUN1"
.LASF667:
	.string	"S_TROO_RUN2"
.LASF668:
	.string	"S_TROO_RUN3"
.LASF669:
	.string	"S_TROO_RUN4"
.LASF670:
	.string	"S_TROO_RUN5"
.LASF671:
	.string	"S_TROO_RUN6"
.LASF672:
	.string	"S_TROO_RUN7"
.LASF673:
	.string	"S_TROO_RUN8"
.LASF1485:
	.string	"picnum"
.LASF120:
	.string	"SPR_CPOS"
.LASF581:
	.string	"S_FATSHOTX1"
.LASF582:
	.string	"S_FATSHOTX2"
.LASF583:
	.string	"S_FATSHOTX3"
.LASF661:
	.string	"S_CPOS_RAISE5"
.LASF662:
	.string	"S_CPOS_RAISE6"
.LASF663:
	.string	"S_CPOS_RAISE7"
.LASF36:
	.string	"wp_fist"
.LASF1349:
	.string	"missilestate"
.LASF150:
	.string	"SPR_STIM"
.LASF1475:
	.string	"scale1"
.LASF1476:
	.string	"scale2"
.LASF697:
	.string	"S_SARG_STND"
.LASF922:
	.string	"S_CYBER_DIE10"
.LASF100:
	.string	"SPR_BAL1"
.LASF101:
	.string	"SPR_BAL2"
.LASF123:
	.string	"SPR_BAL7"
.LASF1380:
	.string	"info"
.LASF1116:
	.string	"S_HEADSONSTICK"
.LASF1545:
	.string	"baseyscale"
.LASF1375:
	.string	"ceilingz"
.LASF573:
	.string	"S_SKEL_RAISE1"
.LASF88:
	.string	"SPR_SHT2"
.LASF227:
	.string	"S_PUNCH1"
.LASF228:
	.string	"S_PUNCH2"
.LASF229:
	.string	"S_PUNCH3"
.LASF230:
	.string	"S_PUNCH4"
.LASF231:
	.string	"S_PUNCH5"
.LASF590:
	.string	"S_FATT_RUN5"
.LASF226:
	.string	"S_PUNCHUP"
.LASF843:
	.string	"S_SPID_DIE1"
.LASF594:
	.string	"S_FATT_RUN9"
.LASF845:
	.string	"S_SPID_DIE3"
.LASF846:
	.string	"S_SPID_DIE4"
.LASF87:
	.string	"SPR_SHTF"
.LASF83:
	.string	"SPR_SHTG"
.LASF365:
	.string	"S_IFOG01"
.LASF366:
	.string	"S_IFOG02"
.LASF851:
	.string	"S_SPID_DIE9"
.LASF1509:
	.string	"ds_p"
.LASF1093:
	.string	"S_AMMO"
.LASF1525:
	.string	"ds_y"
.LASF52:
	.string	"NUMAMMO"
.LASF1544:
	.string	"basexscale"
.LASF924:
	.string	"S_PAIN_RUN1"
.LASF925:
	.string	"S_PAIN_RUN2"
.LASF926:
	.string	"S_PAIN_RUN3"
.LASF927:
	.string	"S_PAIN_RUN4"
.LASF209:
	.string	"SPR_HDB1"
.LASF210:
	.string	"SPR_HDB2"
.LASF211:
	.string	"SPR_HDB3"
.LASF212:
	.string	"SPR_HDB4"
.LASF213:
	.string	"SPR_HDB5"
.LASF214:
	.string	"SPR_HDB6"
.LASF1200:
	.string	"MT_POSSESSED"
.LASF259:
	.string	"S_DSGUN3"
.LASF260:
	.string	"S_DSGUN4"
.LASF1456:
	.string	"textureoffset"
.LASF62:
	.string	"type"
.LASF1487:
	.string	"maxx"
.LASF279:
	.string	"S_MISSILE"
.LASF1107:
	.string	"S_SHOT2"
.LASF1174:
	.string	"S_HANGTLOOKDN"
.LASF1504:
	.string	"zlight"
.LASF1382:
	.string	"movedir"
.LASF1508:
	.string	"drawsegs"
.LASF651:
	.string	"S_CPOS_XDIE1"
.LASF1567:
	.string	"R_CheckPlane"
.LASF1566:
	.string	"unionh"
.LASF1565:
	.string	"unionl"
.LASF1502:
	.string	"ceilingplane"
.LASF76:
	.string	"actionf_t"
.LASF71:
	.string	"actionf_v"
.LASF170:
	.string	"SPR_MGUN"
.LASF1212:
	.string	"MT_SHADOWS"
.LASF554:
	.string	"S_SKEL_RUN10"
.LASF555:
	.string	"S_SKEL_RUN11"
.LASF556:
	.string	"S_SKEL_RUN12"
.LASF222:
	.string	"S_NULL"
.LASF764:
	.string	"S_BOSS_DIE1"
.LASF765:
	.string	"S_BOSS_DIE2"
.LASF766:
	.string	"S_BOSS_DIE3"
.LASF767:
	.string	"S_BOSS_DIE4"
.LASF768:
	.string	"S_BOSS_DIE5"
.LASF769:
	.string	"S_BOSS_DIE6"
.LASF770:
	.string	"S_BOSS_DIE7"
.LASF934:
	.string	"S_PAIN_PAIN"
.LASF303:
	.string	"S_BFG"
.LASF1347:
	.string	"painsound"
.LASF1459:
	.string	"bottomtexture"
.LASF1440:
	.string	"special"
.LASF949:
	.string	"S_SSWV_STND2"
.LASF171:
	.string	"SPR_CSAW"
.LASF1084:
	.string	"S_PMAP"
.LASF1090:
	.string	"S_PVIS"
.LASF304:
	.string	"S_BFGDOWN"
.LASF1224:
	.string	"MT_BOSSBRAIN"
.LASF117:
	.string	"SPR_SKEL"
.LASF299:
	.string	"S_PLASMA1"
.LASF300:
	.string	"S_PLASMA2"
.LASF1164:
	.string	"S_GTORCHSHRT"
.LASF1393:
	.string	"firstline"
.LASF1098:
	.string	"S_SHEL"
.LASF855:
	.string	"S_BSPI_STND2"
.LASF6:
	.string	"unsigned char"
.LASF115:
	.string	"SPR_FATB"
.LASF220:
	.string	"NUMSPRITES"
.LASF338:
	.string	"S_BFGSHOT2"
.LASF119:
	.string	"SPR_FATT"
.LASF1065:
	.string	"S_SOUL2"
.LASF1066:
	.string	"S_SOUL3"
.LASF1067:
	.string	"S_SOUL4"
.LASF1068:
	.string	"S_SOUL5"
.LASF1069:
	.string	"S_SOUL6"
.LASF825:
	.string	"S_SPID_RUN1"
.LASF826:
	.string	"S_SPID_RUN2"
.LASF827:
	.string	"S_SPID_RUN3"
.LASF828:
	.string	"S_SPID_RUN4"
.LASF829:
	.string	"S_SPID_RUN5"
.LASF830:
	.string	"S_SPID_RUN6"
.LASF831:
	.string	"S_SPID_RUN7"
.LASF832:
	.string	"S_SPID_RUN8"
.LASF66:
	.string	"float"
.LASF1032:
	.string	"S_BEXP3"
.LASF1033:
	.string	"S_BEXP4"
.LASF1121:
	.string	"S_DEADSTICK"
.LASF1422:
	.string	"fixedcolormap"
.LASF1407:
	.string	"weaponowned"
.LASF1241:
	.string	"MT_EXTRABFG"
.LASF411:
	.string	"S_POSS_DIE1"
.LASF412:
	.string	"S_POSS_DIE2"
.LASF413:
	.string	"S_POSS_DIE3"
.LASF414:
	.string	"S_POSS_DIE4"
.LASF415:
	.string	"S_POSS_DIE5"
.LASF241:
	.string	"S_SGUNDOWN"
.LASF1479:
	.string	"bsilheight"
.LASF90:
	.string	"SPR_CHGF"
.LASF89:
	.string	"SPR_CHGG"
.LASF634:
	.string	"S_CPOS_RUN5"
.LASF893:
	.string	"S_ARACH_PLEX3"
.LASF635:
	.string	"S_CPOS_RUN6"
.LASF895:
	.string	"S_ARACH_PLEX5"
.LASF636:
	.string	"S_CPOS_RUN7"
.LASF1384:
	.string	"target"
.LASF200:
	.string	"SPR_CEYE"
.LASF1478:
	.string	"silhouette"
.LASF1462:
	.string	"ST_HORIZONTAL"
.LASF942:
	.string	"S_PAIN_RAISE1"
.LASF943:
	.string	"S_PAIN_RAISE2"
.LASF944:
	.string	"S_PAIN_RAISE3"
.LASF945:
	.string	"S_PAIN_RAISE4"
.LASF946:
	.string	"S_PAIN_RAISE5"
.LASF579:
	.string	"S_FATSHOT1"
.LASF580:
	.string	"S_FATSHOT2"
.LASF1537:
	.string	"visplanes"
.LASF1543:
	.string	"planeheight"
.LASF1463:
	.string	"ST_VERTICAL"
.LASF1572:
	.string	"distance"
.LASF157:
	.string	"SPR_SUIT"
.LASF807:
	.string	"S_SKULL_STND"
.LASF841:
	.string	"S_SPID_PAIN"
.LASF1336:
	.string	"NUMMOBJTYPES"
.LASF139:
	.string	"SPR_BAR1"
.LASF1461:
	.string	"side_t"
.LASF254:
	.string	"S_DSGUN"
.LASF1133:
	.string	"S_CANDLESTIK"
.LASF58:
	.string	"pw_allmap"
.LASF1189:
	.string	"NUMSTATES"
.LASF833:
	.string	"S_SPID_RUN9"
.LASF319:
	.string	"S_TBALL1"
.LASF320:
	.string	"S_TBALL2"
.LASF533:
	.string	"S_SMOKE1"
.LASF534:
	.string	"S_SMOKE2"
.LASF535:
	.string	"S_SMOKE3"
.LASF536:
	.string	"S_SMOKE4"
.LASF537:
	.string	"S_SMOKE5"
.LASF756:
	.string	"S_BOSS_RUN6"
.LASF757:
	.string	"S_BOSS_RUN7"
.LASF758:
	.string	"S_BOSS_RUN8"
.LASF122:
	.string	"SPR_HEAD"
.LASF1372:
	.string	"bprev"
.LASF183:
	.string	"SPR_POL1"
.LASF179:
	.string	"SPR_POL2"
.LASF182:
	.string	"SPR_POL3"
.LASF181:
	.string	"SPR_POL4"
.LASF180:
	.string	"SPR_POL5"
.LASF184:
	.string	"SPR_POL6"
.LASF1028:
	.string	"S_BAR1"
.LASF1242:
	.string	"MT_MISC0"
.LASF1114:
	.string	"S_DEADTORSO"
.LASF256:
	.string	"S_DSGUNUP"
.LASF1339:
	.string	"spawnstate"
.LASF665:
	.string	"S_TROO_STND2"
.LASF1185:
	.string	"S_TECH2LAMP"
.LASF1228:
	.string	"MT_SPAWNFIRE"
.LASF1203:
	.string	"MT_FIRE"
.LASF1488:
	.string	"pad1"
.LASF1489:
	.string	"pad2"
.LASF1195:
	.string	"nextstate"
.LASF1492:
	.string	"pad4"
.LASF762:
	.string	"S_BOSS_PAIN"
.LASF133:
	.string	"SPR_SSWV"
.LASF324:
	.string	"S_RBALL1"
.LASF325:
	.string	"S_RBALL2"
.LASF1129:
	.string	"S_TALLGRNCOL"
.LASF1387:
	.string	"lastlook"
.LASF1430:
	.string	"playerstate_t"
.LASF1118:
	.string	"S_HEADONASTICK"
.LASF398:
	.string	"S_POSS_RUN1"
.LASF340:
	.string	"S_BFGLAND2"
.LASF341:
	.string	"S_BFGLAND3"
.LASF342:
	.string	"S_BFGLAND4"
.LASF343:
	.string	"S_BFGLAND5"
.LASF344:
	.string	"S_BFGLAND6"
.LASF404:
	.string	"S_POSS_RUN7"
.LASF405:
	.string	"S_POSS_RUN8"
.LASF1536:
	.string	"ceilingfunc"
.LASF387:
	.string	"S_PLAY_XDIE1"
.LASF388:
	.string	"S_PLAY_XDIE2"
.LASF389:
	.string	"S_PLAY_XDIE3"
.LASF390:
	.string	"S_PLAY_XDIE4"
.LASF391:
	.string	"S_PLAY_XDIE5"
.LASF392:
	.string	"S_PLAY_XDIE6"
.LASF393:
	.string	"S_PLAY_XDIE7"
.LASF394:
	.string	"S_PLAY_XDIE8"
.LASF395:
	.string	"S_PLAY_XDIE9"
.LASF793:
	.string	"S_BOS2_DIE1"
.LASF794:
	.string	"S_BOS2_DIE2"
.LASF795:
	.string	"S_BOS2_DIE3"
.LASF796:
	.string	"S_BOS2_DIE4"
.LASF797:
	.string	"S_BOS2_DIE5"
.LASF798:
	.string	"S_BOS2_DIE6"
.LASF799:
	.string	"S_BOS2_DIE7"
.LASF1359:
	.string	"flags"
.LASF719:
	.string	"S_SARG_RAISE2"
.LASF720:
	.string	"S_SARG_RAISE3"
.LASF363:
	.string	"S_TFOG10"
.LASF721:
	.string	"S_SARG_RAISE4"
.LASF1518:
	.string	"dc_colormap"
.LASF416:
	.string	"S_POSS_XDIE1"
.LASF417:
	.string	"S_POSS_XDIE2"
.LASF418:
	.string	"S_POSS_XDIE3"
.LASF419:
	.string	"S_POSS_XDIE4"
.LASF420:
	.string	"S_POSS_XDIE5"
.LASF421:
	.string	"S_POSS_XDIE6"
.LASF422:
	.string	"S_POSS_XDIE7"
.LASF48:
	.string	"am_clip"
.LASF424:
	.string	"S_POSS_XDIE9"
.LASF1117:
	.string	"S_GIBS"
.LASF732:
	.string	"S_HEAD_DIE1"
.LASF733:
	.string	"S_HEAD_DIE2"
.LASF734:
	.string	"S_HEAD_DIE3"
.LASF735:
	.string	"S_HEAD_DIE4"
.LASF736:
	.string	"S_HEAD_DIE5"
.LASF24:
	.string	"size"
.LASF1535:
	.string	"skytexturemid"
.LASF585:
	.string	"S_FATT_STND2"
.LASF1108:
	.string	"S_COLU"
.LASF235:
	.string	"S_PISTOL1"
.LASF236:
	.string	"S_PISTOL2"
.LASF237:
	.string	"S_PISTOL3"
.LASF238:
	.string	"S_PISTOL4"
.LASF574:
	.string	"S_SKEL_RAISE2"
.LASF575:
	.string	"S_SKEL_RAISE3"
.LASF576:
	.string	"S_SKEL_RAISE4"
.LASF577:
	.string	"S_SKEL_RAISE5"
.LASF578:
	.string	"S_SKEL_RAISE6"
.LASF1137:
	.string	"S_BIGTREE"
.LASF1465:
	.string	"ST_NEGATIVE"
.LASF1047:
	.string	"S_BON2C"
.LASF1048:
	.string	"S_BON2D"
.LASF353:
	.string	"S_TFOG01"
.LASF354:
	.string	"S_TFOG02"
.LASF172:
	.string	"SPR_LAUN"
.LASF409:
	.string	"S_POSS_PAIN"
.LASF744:
	.string	"S_BRBALL1"
.LASF745:
	.string	"S_BRBALL2"
.LASF1206:
	.string	"MT_SMOKE"
.LASF1220:
	.string	"MT_CYBORG"
.LASF1357:
	.string	"damage"
.LASF449:
	.string	"S_SPOS_XDIE1"
.LASF450:
	.string	"S_SPOS_XDIE2"
.LASF451:
	.string	"S_SPOS_XDIE3"
.LASF452:
	.string	"S_SPOS_XDIE4"
.LASF453:
	.string	"S_SPOS_XDIE5"
.LASF454:
	.string	"S_SPOS_XDIE6"
.LASF455:
	.string	"S_SPOS_XDIE7"
.LASF456:
	.string	"S_SPOS_XDIE8"
.LASF457:
	.string	"S_SPOS_XDIE9"
.LASF14:
	.string	"size_t"
.LASF1367:
	.string	"mobj_s"
.LASF1426:
	.string	"mobj_t"
.LASF1050:
	.string	"S_BKEY"
.LASF56:
	.string	"pw_invisibility"
.LASF137:
	.string	"SPR_ARM1"
.LASF138:
	.string	"SPR_ARM2"
.LASF1202:
	.string	"MT_VILE"
.LASF32:
	.string	"it_blueskull"
.LASF1444:
	.string	"soundorg"
.LASF297:
	.string	"S_PLASMADOWN"
.LASF609:
	.string	"S_FATT_PAIN2"
.LASF1007:
	.string	"S_BRAINEYESEE"
.LASF1466:
	.string	"slopetype_t"
.LASF544:
	.string	"S_SKEL_STND2"
.LASF897:
	.string	"S_CYBER_STND2"
.LASF1198:
	.string	"state_t"
.LASF741:
	.string	"S_HEAD_RAISE4"
.LASF967:
	.string	"S_SSWV_DIE2"
.LASF423:
	.string	"S_POSS_XDIE8"
.LASF1097:
	.string	"S_CELP"
.LASF1139:
	.string	"S_EVILEYE"
.LASF1165:
	.string	"S_GTORCHSHRT2"
.LASF1166:
	.string	"S_GTORCHSHRT3"
.LASF1167:
	.string	"S_GTORCHSHRT4"
.LASF1397:
	.string	"viewheight"
.LASF1371:
	.string	"bnext"
.LASF598:
	.string	"S_FATT_ATK1"
.LASF131:
	.string	"SPR_CYBR"
.LASF599:
	.string	"S_FATT_ATK2"
.LASF502:
	.string	"S_VILE_DIE10"
.LASF92:
	.string	"SPR_MISF"
.LASF91:
	.string	"SPR_MISG"
.LASF104:
	.string	"SPR_MISL"
.LASF1056:
	.string	"S_BSKULL"
.LASF135:
	.string	"SPR_BBRN"
.LASF477:
	.string	"S_VILE_ATK1"
.LASF478:
	.string	"S_VILE_ATK2"
.LASF479:
	.string	"S_VILE_ATK3"
.LASF480:
	.string	"S_VILE_ATK4"
.LASF481:
	.string	"S_VILE_ATK5"
.LASF482:
	.string	"S_VILE_ATK6"
.LASF483:
	.string	"S_VILE_ATK7"
.LASF224:
	.string	"S_PUNCH"
.LASF485:
	.string	"S_VILE_ATK9"
.LASF206:
	.string	"SPR_SMBT"
.LASF780:
	.string	"S_BOS2_RUN1"
.LASF781:
	.string	"S_BOS2_RUN2"
.LASF782:
	.string	"S_BOS2_RUN3"
.LASF783:
	.string	"S_BOS2_RUN4"
.LASF784:
	.string	"S_BOS2_RUN5"
.LASF785:
	.string	"S_BOS2_RUN6"
.LASF786:
	.string	"S_BOS2_RUN7"
.LASF787:
	.string	"S_BOS2_RUN8"
.LASF1439:
	.string	"lightlevel"
.LASF197:
	.string	"SPR_TRE1"
.LASF198:
	.string	"SPR_TRE2"
.LASF854:
	.string	"S_BSPI_STND"
.LASF1348:
	.string	"meleestate"
.LASF1408:
	.string	"ammo"
.LASF644:
	.string	"S_CPOS_DIE1"
.LASF205:
	.string	"SPR_TRED"
.LASF98:
	.string	"SPR_BLUD"
.LASF600:
	.string	"S_FATT_ATK3"
.LASF601:
	.string	"S_FATT_ATK4"
.LASF602:
	.string	"S_FATT_ATK5"
.LASF603:
	.string	"S_FATT_ATK6"
.LASF604:
	.string	"S_FATT_ATK7"
.LASF605:
	.string	"S_FATT_ATK8"
.LASF606:
	.string	"S_FATT_ATK9"
.LASF108:
	.string	"SPR_TFOG"
.LASF312:
	.string	"S_BLOOD1"
.LASF313:
	.string	"S_BLOOD2"
.LASF314:
	.string	"S_BLOOD3"
.LASF1196:
	.string	"misc1"
.LASF1197:
	.string	"misc2"
.LASF1523:
	.string	"dc_texturemid"
.LASF19:
	.string	"angleturn"
.LASF1104:
	.string	"S_LAUN"
.LASF364:
	.string	"S_IFOG"
.LASF111:
	.string	"SPR_POSS"
.LASF116:
	.string	"SPR_FBXP"
.LASF913:
	.string	"S_CYBER_DIE1"
.LASF914:
	.string	"S_CYBER_DIE2"
.LASF915:
	.string	"S_CYBER_DIE3"
.LASF916:
	.string	"S_CYBER_DIE4"
.LASF917:
	.string	"S_CYBER_DIE5"
.LASF918:
	.string	"S_CYBER_DIE6"
.LASF919:
	.string	"S_CYBER_DIE7"
.LASF791:
	.string	"S_BOS2_PAIN"
.LASF921:
	.string	"S_CYBER_DIE9"
.LASF1388:
	.string	"spawnpoint"
.LASF1191:
	.string	"sprite"
.LASF1531:
	.string	"ds_xstep"
.LASF1269:
	.string	"MT_MISC23"
.LASF1134:
	.string	"S_CANDELABRA"
.LASF474:
	.string	"S_VILE_RUN10"
.LASF475:
	.string	"S_VILE_RUN11"
.LASF476:
	.string	"S_VILE_RUN12"
.LASF1094:
	.string	"S_ROCK"
.LASF243:
	.string	"S_SGUN1"
.LASF244:
	.string	"S_SGUN2"
.LASF245:
	.string	"S_SGUN3"
.LASF246:
	.string	"S_SGUN4"
.LASF247:
	.string	"S_SGUN5"
.LASF248:
	.string	"S_SGUN6"
.LASF249:
	.string	"S_SGUN7"
.LASF250:
	.string	"S_SGUN8"
.LASF251:
	.string	"S_SGUN9"
.LASF1338:
	.string	"doomednum"
.LASF240:
	.string	"S_SGUN"
.LASF1130:
	.string	"S_SHRTGRNCOL"
.LASF1550:
	.string	"W_CacheLumpNum"
.LASF1495:
	.string	"firstflat"
.LASF815:
	.string	"S_SKULL_PAIN"
.LASF1227:
	.string	"MT_SPAWNSHOT"
.LASF539:
	.string	"S_TRACER2"
.LASF1138:
	.string	"S_TECHPILLAR"
.LASF543:
	.string	"S_SKEL_STND"
.LASF698:
	.string	"S_SARG_STND2"
.LASF444:
	.string	"S_SPOS_DIE1"
.LASF445:
	.string	"S_SPOS_DIE2"
.LASF446:
	.string	"S_SPOS_DIE3"
.LASF447:
	.string	"S_SPOS_DIE4"
.LASF448:
	.string	"S_SPOS_DIE5"
.LASF1429:
	.string	"PST_REBORN"
.LASF1173:
	.string	"S_HANGBNOBRAIN"
.LASF707:
	.string	"S_SARG_ATK1"
.LASF708:
	.string	"S_SARG_ATK2"
.LASF709:
	.string	"S_SARG_ATK3"
.LASF298:
	.string	"S_PLASMAUP"
.LASF1193:
	.string	"tics"
.LASF1569:
	.string	"check"
.LASF1054:
	.string	"S_YKEY"
.LASF1477:
	.string	"scalestep"
.LASF1532:
	.string	"ds_ystep"
.LASF1353:
	.string	"speed"
.LASF267:
	.string	"S_DSNR1"
.LASF936:
	.string	"S_PAIN_DIE1"
.LASF1521:
	.string	"dc_yh"
.LASF466:
	.string	"S_VILE_RUN2"
.LASF1184:
	.string	"S_TECHLAMP4"
.LASF630:
	.string	"S_CPOS_RUN1"
.LASF631:
	.string	"S_CPOS_RUN2"
.LASF632:
	.string	"S_CPOS_RUN3"
.LASF633:
	.string	"S_CPOS_RUN4"
.LASF72:
	.string	"actionf_p1"
.LASF73:
	.string	"actionf_p2"
.LASF168:
	.string	"SPR_BPAK"
.LASF637:
	.string	"S_CPOS_RUN8"
.LASF1034:
	.string	"S_BEXP5"
.LASF64:
	.string	"mapthing_t"
.LASF399:
	.string	"S_POSS_RUN2"
.LASF400:
	.string	"S_POSS_RUN3"
.LASF401:
	.string	"S_POSS_RUN4"
.LASF718:
	.string	"S_SARG_RAISE1"
.LASF402:
	.string	"S_POSS_RUN5"
.LASF74:
	.string	"acp1"
.LASF75:
	.string	"acp2"
.LASF722:
	.string	"S_SARG_RAISE5"
.LASF723:
	.string	"S_SARG_RAISE6"
.LASF1302:
	.string	"MT_MISC53"
.LASF207:
	.string	"SPR_SMGT"
.LASF998:
	.string	"S_KEENPAIN"
.LASF346:
	.string	"S_BFGEXP2"
.LASF347:
	.string	"S_BFGEXP3"
.LASF348:
	.string	"S_BFGEXP4"
.LASF277:
	.string	"S_CHAINFLASH1"
.LASF278:
	.string	"S_CHAINFLASH2"
.LASF233:
	.string	"S_PISTOLDOWN"
.LASF78:
	.string	"memblock_s"
.LASF28:
	.string	"memblock_t"
.LASF898:
	.string	"S_CYBER_RUN1"
.LASF899:
	.string	"S_CYBER_RUN2"
.LASF900:
	.string	"S_CYBER_RUN3"
.LASF901:
	.string	"S_CYBER_RUN4"
.LASF902:
	.string	"S_CYBER_RUN5"
.LASF903:
	.string	"S_CYBER_RUN6"
.LASF904:
	.string	"S_CYBER_RUN7"
.LASF905:
	.string	"S_CYBER_RUN8"
.LASF1342:
	.string	"seesound"
.LASF1085:
	.string	"S_PMAP2"
.LASF1086:
	.string	"S_PMAP3"
.LASF1087:
	.string	"S_PMAP4"
.LASF1088:
	.string	"S_PMAP5"
.LASF1089:
	.string	"S_PMAP6"
.LASF1419:
	.string	"bonuscount"
.LASF816:
	.string	"S_SKULL_PAIN2"
.LASF1539:
	.string	"openings"
.LASF1346:
	.string	"painchance"
.LASF642:
	.string	"S_CPOS_PAIN"
.LASF1436:
	.string	"ceilingheight"
.LASF121:
	.string	"SPR_SARG"
.LASF947:
	.string	"S_PAIN_RAISE6"
.LASF1446:
	.string	"specialdata"
.LASF1285:
	.string	"MT_MISC36"
.LASF751:
	.string	"S_BOSS_RUN1"
.LASF752:
	.string	"S_BOSS_RUN2"
.LASF753:
	.string	"S_BOSS_RUN3"
.LASF754:
	.string	"S_BOSS_RUN4"
.LASF755:
	.string	"S_BOSS_RUN5"
.LASF1551:
	.string	"R_GetColumn"
.LASF273:
	.string	"S_CHAINUP"
.LASF1575:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1414:
	.string	"killcount"
.LASF892:
	.string	"S_ARACH_PLEX2"
.LASF1136:
	.string	"S_TORCHTREE"
.LASF948:
	.string	"S_SSWV_STND"
.LASF894:
	.string	"S_ARACH_PLEX4"
.LASF1576:
	.string	"R_InitPlanes"
.LASF995:
	.string	"S_COMMKEEN10"
.LASF996:
	.string	"S_COMMKEEN11"
.LASF997:
	.string	"S_COMMKEEN12"
.LASF912:
	.string	"S_CYBER_PAIN"
.LASF431:
	.string	"S_SPOS_RUN1"
.LASF189:
	.string	"SPR_SMIT"
.LASF15:
	.string	"boolean"
.LASF434:
	.string	"S_SPOS_RUN4"
.LASF435:
	.string	"S_SPOS_RUN5"
.LASF126:
	.string	"SPR_SKUL"
.LASF437:
	.string	"S_SPOS_RUN7"
.LASF438:
	.string	"S_SPOS_RUN8"
.LASF1473:
	.string	"drawseg_s"
.LASF1095:
	.string	"S_BROK"
.LASF1340:
	.string	"spawnhealth"
.LASF225:
	.string	"S_PUNCHDOWN"
.LASF891:
	.string	"S_ARACH_PLEX"
.LASF1152:
	.string	"S_GREENTORCH"
.LASF44:
	.string	"wp_supershotgun"
.LASF291:
	.string	"S_SAWDOWN"
.LASF1190:
	.string	"statenum_t"
.LASF1484:
	.string	"drawseg_t"
.LASF1230:
	.string	"MT_TROOPSHOT"
.LASF1215:
	.string	"MT_BRUISERSHOT"
.LASF23:
	.string	"ticcmd_t"
.LASF1480:
	.string	"tsilheight"
.LASF1335:
	.string	"MT_MISC86"
.LASF1362:
	.string	"ps_weapon"
.LASF1559:
	.string	"stop"
.LASF379:
	.string	"S_PLAY_PAIN2"
.LASF1472:
	.string	"lighttable_t"
.LASF1505:
	.string	"detailshift"
.LASF774:
	.string	"S_BOSS_RAISE4"
.LASF775:
	.string	"S_BOSS_RAISE5"
.LASF1192:
	.string	"frame"
.LASF118:
	.string	"SPR_MANF"
.LASF629:
	.string	"S_CPOS_STND2"
.LASF442:
	.string	"S_SPOS_PAIN"
.LASF38:
	.string	"wp_shotgun"
.LASF410:
	.string	"S_POSS_PAIN2"
.LASF1236:
	.string	"MT_PUFF"
.LASF1482:
	.string	"sprbottomclip"
.LASF282:
	.string	"S_MISSILE1"
.LASF283:
	.string	"S_MISSILE2"
.LASF284:
	.string	"S_MISSILE3"
.LASF658:
	.string	"S_CPOS_RAISE2"
.LASF659:
	.string	"S_CPOS_RAISE3"
.LASF660:
	.string	"S_CPOS_RAISE4"
.LASF1424:
	.string	"psprites"
.LASF1102:
	.string	"S_MGUN"
.LASF1214:
	.string	"MT_BRUISER"
.LASF167:
	.string	"SPR_SBOX"
.LASF1513:
	.string	"floorclip"
.LASF1416:
	.string	"secretcount"
.LASF1337:
	.string	"mobjtype_t"
.LASF1351:
	.string	"xdeathstate"
.LASF1401:
	.string	"powers"
.LASF811:
	.string	"S_SKULL_ATK1"
.LASF812:
	.string	"S_SKULL_ATK2"
.LASF813:
	.string	"S_SKULL_ATK3"
.LASF814:
	.string	"S_SKULL_ATK4"
.LASF792:
	.string	"S_BOS2_PAIN2"
.LASF7:
	.string	"short unsigned int"
.LASF1216:
	.string	"MT_KNIGHT"
.LASF9:
	.string	"signed char"
.LASF18:
	.string	"sidemove"
.LASF1358:
	.string	"activesound"
.LASF443:
	.string	"S_SPOS_PAIN2"
.LASF1562:
	.string	"start"
.LASF607:
	.string	"S_FATT_ATK10"
.LASF204:
	.string	"SPR_TGRN"
.LASF1499:
	.string	"viewangle"
.LASF1261:
	.string	"MT_MEGA"
.LASF106:
	.string	"SPR_BFE1"
.LASF107:
	.string	"SPR_BFE2"
.LASF1445:
	.string	"thinglist"
.LASF1522:
	.string	"dc_iscale"
.LASF1295:
	.string	"MT_MISC46"
.LASF1223:
	.string	"MT_KEEN"
.LASF1512:
	.string	"floorfunc"
.LASF1443:
	.string	"blockbox"
.LASF1008:
	.string	"S_BRAINEYE1"
.LASF1470:
	.string	"linedef"
.LASF664:
	.string	"S_TROO_STND"
.LASF611:
	.string	"S_FATT_DIE2"
.LASF302:
	.string	"S_PLASMAFLASH2"
.LASF47:
	.string	"weapontype_t"
.LASF21:
	.string	"chatchar"
.LASF355:
	.string	"S_TFOG2"
.LASF356:
	.string	"S_TFOG3"
.LASF357:
	.string	"S_TFOG4"
.LASF358:
	.string	"S_TFOG5"
.LASF359:
	.string	"S_TFOG6"
.LASF360:
	.string	"S_TFOG7"
.LASF361:
	.string	"S_TFOG8"
.LASF362:
	.string	"S_TFOG9"
.LASF777:
	.string	"S_BOSS_RAISE7"
.LASF1410:
	.string	"attackdown"
.LASF82:
	.string	"SPR_TROO"
.LASF93:
	.string	"SPR_SAWG"
.LASF737:
	.string	"S_HEAD_DIE6"
.LASF142:
	.string	"SPR_BON1"
.LASF143:
	.string	"SPR_BON2"
.LASF1490:
	.string	"pad3"
.LASF31:
	.string	"it_redcard"
.LASF1131:
	.string	"S_TALLREDCOL"
.LASF1556:
	.string	"I_Error"
.LASF1516:
	.string	"distscale"
.LASF1365:
	.string	"state"
.LASF1106:
	.string	"S_SHOT"
.LASF962:
	.string	"S_SSWV_ATK5"
.LASF1111:
	.string	"S_BLOODYTWITCH2"
.LASF1112:
	.string	"S_BLOODYTWITCH3"
.LASF1113:
	.string	"S_BLOODYTWITCH4"
.LASF852:
	.string	"S_SPID_DIE10"
.LASF853:
	.string	"S_SPID_DIE11"
.LASF1402:
	.string	"cards"
.LASF1471:
	.string	"seg_t"
.LASF199:
	.string	"SPR_ELEC"
.LASF1000:
	.string	"S_BRAIN"
.LASF1218:
	.string	"MT_SPIDER"
.LASF1083:
	.string	"S_SUIT"
.LASF1491:
	.string	"bottom"
.LASF97:
	.string	"SPR_BFGF"
.LASF96:
	.string	"SPR_BFGG"
.LASF923:
	.string	"S_PAIN_STND"
.LASF1432:
	.string	"skyflatnum"
.LASF339:
	.string	"S_BFGLAND"
.LASF1029:
	.string	"S_BAR2"
.LASF1406:
	.string	"pendingweapon"
.LASF80:
	.string	"function"
.LASF49:
	.string	"am_shell"
.LASF1379:
	.string	"validcount"
.LASF1417:
	.string	"message"
.LASF619:
	.string	"S_FATT_DIE10"
.LASF35:
	.string	"NUMCARDS"
.LASF1156:
	.string	"S_REDTORCH"
.LASF1234:
	.string	"MT_BFG"
.LASF403:
	.string	"S_POSS_RUN6"
.LASF113:
	.string	"SPR_VILE"
.LASF1237:
	.string	"MT_BLOOD"
.LASF232:
	.string	"S_PISTOL"
.LASF13:
	.string	"true"
.LASF464:
	.string	"S_VILE_STND2"
.LASF882:
	.string	"S_BSPI_RAISE1"
.LASF883:
	.string	"S_BSPI_RAISE2"
.LASF884:
	.string	"S_BSPI_RAISE3"
.LASF885:
	.string	"S_BSPI_RAISE4"
.LASF886:
	.string	"S_BSPI_RAISE5"
.LASF887:
	.string	"S_BSPI_RAISE6"
.LASF888:
	.string	"S_BSPI_RAISE7"
.LASF1376:
	.string	"momx"
.LASF1377:
	.string	"momy"
.LASF1528:
	.string	"ds_colormap"
.LASF4:
	.string	"long int"
.LASF971:
	.string	"S_SSWV_XDIE1"
.LASF972:
	.string	"S_SSWV_XDIE2"
.LASF973:
	.string	"S_SSWV_XDIE3"
.LASF974:
	.string	"S_SSWV_XDIE4"
.LASF975:
	.string	"S_SSWV_XDIE5"
.LASF976:
	.string	"S_SSWV_XDIE6"
.LASF977:
	.string	"S_SSWV_XDIE7"
.LASF978:
	.string	"S_SSWV_XDIE8"
.LASF979:
	.string	"S_SSWV_XDIE9"
.LASF269:
	.string	"S_DSGUNFLASH1"
.LASF270:
	.string	"S_DSGUNFLASH2"
.LASF1268:
	.string	"MT_MISC22"
.LASF1425:
	.string	"didsecret"
.LASF527:
	.string	"S_FIRE25"
.LASF621:
	.string	"S_FATT_RAISE2"
.LASF1304:
	.string	"MT_MISC55"
.LASF1398:
	.string	"deltaviewheight"
.LASF33:
	.string	"it_yellowskull"
.LASF1059:
	.string	"S_RSKULL2"
.LASF1389:
	.string	"tracer"
.LASF834:
	.string	"S_SPID_RUN10"
.LASF835:
	.string	"S_SPID_RUN11"
.LASF836:
	.string	"S_SPID_RUN12"
.LASF1557:
	.string	"rcsid"
.LASF1360:
	.string	"raisestate"
.LASF1540:
	.string	"spanstart"
.LASF285:
	.string	"S_MISSILEFLASH1"
.LASF286:
	.string	"S_MISSILEFLASH2"
.LASF287:
	.string	"S_MISSILEFLASH3"
.LASF288:
	.string	"S_MISSILEFLASH4"
.LASF148:
	.string	"SPR_RSKU"
.LASF77:
	.string	"think_t"
.LASF1500:
	.string	"xtoviewangle"
.LASF17:
	.string	"forwardmove"
.LASF646:
	.string	"S_CPOS_DIE3"
.LASF647:
	.string	"S_CPOS_DIE4"
.LASF1460:
	.string	"midtexture"
.LASF648:
	.string	"S_CPOS_DIE5"
.LASF649:
	.string	"S_CPOS_DIE6"
.LASF650:
	.string	"S_CPOS_DIE7"
.LASF1506:
	.string	"colfunc"
.LASF1091:
	.string	"S_PVIS2"
.LASF1229:
	.string	"MT_BARREL"
.LASF823:
	.string	"S_SPID_STND"
.LASF595:
	.string	"S_FATT_RUN10"
.LASF596:
	.string	"S_FATT_RUN11"
.LASF597:
	.string	"S_FATT_RUN12"
.LASF1221:
	.string	"MT_PAIN"
.LASF1524:
	.string	"dc_source"
.LASF1149:
	.string	"S_BLUETORCH2"
.LASF1361:
	.string	"mobjinfo_t"
.LASF1150:
	.string	"S_BLUETORCH3"
.LASF1151:
	.string	"S_BLUETORCH4"
.LASF208:
	.string	"SPR_SMRT"
.LASF310:
	.string	"S_BFGFLASH1"
.LASF311:
	.string	"S_BFGFLASH2"
.LASF1519:
	.string	"dc_x"
.LASF844:
	.string	"S_SPID_DIE2"
.LASF1497:
	.string	"viewx"
.LASF1498:
	.string	"viewy"
.LASF125:
	.string	"SPR_BOS2"
.LASF847:
	.string	"S_SPID_DIE5"
.LASF848:
	.string	"S_SPID_DIE6"
.LASF849:
	.string	"S_SPID_DIE7"
.LASF850:
	.string	"S_SPID_DIE8"
.LASF1140:
	.string	"S_EVILEYE2"
.LASF1141:
	.string	"S_EVILEYE3"
.LASF1142:
	.string	"S_EVILEYE4"
.LASF315:
	.string	"S_PUFF1"
.LASF316:
	.string	"S_PUFF2"
.LASF317:
	.string	"S_PUFF3"
.LASF136:
	.string	"SPR_BOSF"
.LASF1448:
	.string	"lines"
.LASF124:
	.string	"SPR_BOSS"
.LASF1503:
	.string	"centerxfrac"
.LASF1233:
	.string	"MT_PLASMA"
.LASF869:
	.string	"S_BSPI_ATK1"
.LASF870:
	.string	"S_BSPI_ATK2"
.LASF871:
	.string	"S_BSPI_ATK3"
.LASF872:
	.string	"S_BSPI_ATK4"
.LASF1051:
	.string	"S_BKEY2"
.LASF45:
	.string	"NUMWEAPONS"
.LASF856:
	.string	"S_BSPI_SIGHT"
.LASF2:
	.string	"long unsigned int"
.LASF858:
	.string	"S_BSPI_RUN2"
.LASF1002:
	.string	"S_BRAIN_DIE1"
.LASF1003:
	.string	"S_BRAIN_DIE2"
.LASF1004:
	.string	"S_BRAIN_DIE3"
.LASF1005:
	.string	"S_BRAIN_DIE4"
.LASF337:
	.string	"S_BFGSHOT"
.LASF1143:
	.string	"S_FLOATSKULL"
.LASF493:
	.string	"S_VILE_DIE1"
.LASF494:
	.string	"S_VILE_DIE2"
.LASF495:
	.string	"S_VILE_DIE3"
.LASF496:
	.string	"S_VILE_DIE4"
.LASF497:
	.string	"S_VILE_DIE5"
.LASF498:
	.string	"S_VILE_DIE6"
.LASF499:
	.string	"S_VILE_DIE7"
.LASF500:
	.string	"S_VILE_DIE8"
.LASF501:
	.string	"S_VILE_DIE9"
.LASF1418:
	.string	"damagecount"
.LASF177:
	.string	"SPR_SMT2"
.LASF1053:
	.string	"S_RKEY2"
.LASF1024:
	.string	"S_ARM1"
.LASF1026:
	.string	"S_ARM2"
.LASF1119:
	.string	"S_HEADCANDLES"
.LASF155:
	.string	"SPR_PINS"
.LASF749:
	.string	"S_BOSS_STND"
.LASF729:
	.string	"S_HEAD_PAIN"
.LASF30:
	.string	"it_yellowcard"
.LASF1205:
	.string	"MT_TRACER"
.LASF610:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF612:
	.string	"S_FATT_DIE3"
.LASF613:
	.string	"S_FATT_DIE4"
.LASF614:
	.string	"S_FATT_DIE5"
.LASF615:
	.string	"S_FATT_DIE6"
.LASF616:
	.string	"S_FATT_DIE7"
.LASF617:
	.string	"S_FATT_DIE8"
.LASF618:
	.string	"S_FATT_DIE9"
.LASF685:
	.string	"S_TROO_XDIE2"
.LASF686:
	.string	"S_TROO_XDIE3"
.LASF687:
	.string	"S_TROO_XDIE4"
.LASF688:
	.string	"S_TROO_XDIE5"
.LASF689:
	.string	"S_TROO_XDIE6"
.LASF690:
	.string	"S_TROO_XDIE7"
.LASF691:
	.string	"S_TROO_XDIE8"
.LASF160:
	.string	"SPR_CLIP"
.LASF1132:
	.string	"S_SHRTREDCOL"
.LASF1175:
	.string	"S_HANGTSKULL"
.LASF1501:
	.string	"floorplane"
.LASF60:
	.string	"NUMPOWERS"
.LASF960:
	.string	"S_SSWV_ATK3"
.LASF961:
	.string	"S_SSWV_ATK4"
.LASF266:
	.string	"S_DSGUN10"
.LASF1548:
	.string	"cachedxstep"
.LASF55:
	.string	"pw_strength"
.LASF194:
	.string	"SPR_CAND"
.LASF1211:
	.string	"MT_SERGEANT"
.LASF1122:
	.string	"S_LIVESTICK"
.LASF1062:
	.string	"S_STIM"
.LASF50:
	.string	"am_cell"
.LASF29:
	.string	"it_bluecard"
.LASF1374:
	.string	"floorz"
.LASF725:
	.string	"S_HEAD_RUN1"
.LASF380:
	.string	"S_PLAY_DIE1"
.LASF381:
	.string	"S_PLAY_DIE2"
.LASF382:
	.string	"S_PLAY_DIE3"
.LASF383:
	.string	"S_PLAY_DIE4"
.LASF384:
	.string	"S_PLAY_DIE5"
.LASF385:
	.string	"S_PLAY_DIE6"
.LASF386:
	.string	"S_PLAY_DIE7"
.LASF396:
	.string	"S_POSS_STND"
.LASF352:
	.string	"S_TFOG"
.LASF1289:
	.string	"MT_MISC40"
.LASF1290:
	.string	"MT_MISC41"
.LASF1390:
	.string	"subsector_s"
.LASF712:
	.string	"S_SARG_DIE1"
.LASF713:
	.string	"S_SARG_DIE2"
.LASF714:
	.string	"S_SARG_DIE3"
.LASF715:
	.string	"S_SARG_DIE4"
.LASF1013:
	.string	"S_SPAWNFIRE1"
.LASF1014:
	.string	"S_SPAWNFIRE2"
.LASF1015:
	.string	"S_SPAWNFIRE3"
.LASF1016:
	.string	"S_SPAWNFIRE4"
.LASF1017:
	.string	"S_SPAWNFIRE5"
.LASF1018:
	.string	"S_SPAWNFIRE6"
.LASF1019:
	.string	"S_SPAWNFIRE7"
.LASF1020:
	.string	"S_SPAWNFIRE8"
.LASF684:
	.string	"S_TROO_XDIE1"
.LASF20:
	.string	"consistancy"
.LASF1391:
	.string	"sector"
.LASF1177:
	.string	"S_HANGTNOBRAIN"
.LASF332:
	.string	"S_PLASEXP2"
.LASF333:
	.string	"S_PLASEXP3"
.LASF334:
	.string	"S_PLASEXP4"
.LASF335:
	.string	"S_PLASEXP5"
.LASF42:
	.string	"wp_bfg"
.LASF1161:
	.string	"S_BTORCHSHRT2"
.LASF1162:
	.string	"S_BTORCHSHRT3"
.LASF1163:
	.string	"S_BTORCHSHRT4"
.LASF465:
	.string	"S_VILE_RUN1"
.LASF255:
	.string	"S_DSGUNDOWN"
.LASF467:
	.string	"S_VILE_RUN3"
.LASF468:
	.string	"S_VILE_RUN4"
.LASF469:
	.string	"S_VILE_RUN5"
.LASF470:
	.string	"S_VILE_RUN6"
.LASF471:
	.string	"S_VILE_RUN7"
.LASF472:
	.string	"S_VILE_RUN8"
.LASF473:
	.string	"S_VILE_RUN9"
.LASF716:
	.string	"S_SARG_DIE5"
.LASF717:
	.string	"S_SARG_DIE6"
.LASF1368:
	.string	"thinker"
.LASF557:
	.string	"S_SKEL_FIST1"
.LASF558:
	.string	"S_SKEL_FIST2"
.LASF559:
	.string	"S_SKEL_FIST3"
.LASF560:
	.string	"S_SKEL_FIST4"
.LASF296:
	.string	"S_PLASMA"
.LASF1075:
	.string	"S_PINS"
.LASF1538:
	.string	"lastvisplane"
.LASF1148:
	.string	"S_BLUETORCH"
.LASF1514:
	.string	"ceilingclip"
.LASF586:
	.string	"S_FATT_RUN1"
.LASF587:
	.string	"S_FATT_RUN2"
.LASF588:
	.string	"S_FATT_RUN3"
.LASF589:
	.string	"S_FATT_RUN4"
.LASF57:
	.string	"pw_ironfeet"
.LASF591:
	.string	"S_FATT_RUN6"
.LASF592:
	.string	"S_FATT_RUN7"
.LASF593:
	.string	"S_FATT_RUN8"
.LASF1124:
	.string	"S_MEAT2"
.LASF1125:
	.string	"S_MEAT3"
.LASF1126:
	.string	"S_MEAT4"
.LASF1127:
	.string	"S_MEAT5"
.LASF239:
	.string	"S_PISTOLFLASH"
.LASF1435:
	.string	"floorheight"
.LASF459:
	.string	"S_SPOS_RAISE2"
.LASF460:
	.string	"S_SPOS_RAISE3"
.LASF461:
	.string	"S_SPOS_RAISE4"
.LASF462:
	.string	"S_SPOS_RAISE5"
.LASF151:
	.string	"SPR_MEDI"
.LASF153:
	.string	"SPR_PINV"
.LASF1533:
	.string	"ds_source"
.LASF1001:
	.string	"S_BRAIN_PAIN"
.LASF272:
	.string	"S_CHAINDOWN"
.LASF491:
	.string	"S_VILE_PAIN"
.LASF1496:
	.string	"flattranslation"
.LASF538:
	.string	"S_TRACER"
.LASF958:
	.string	"S_SSWV_ATK1"
.LASF959:
	.string	"S_SSWV_ATK2"
.LASF488:
	.string	"S_VILE_HEAL1"
.LASF489:
	.string	"S_VILE_HEAL2"
.LASF490:
	.string	"S_VILE_HEAL3"
.LASF963:
	.string	"S_SSWV_ATK6"
.LASF1383:
	.string	"movecount"
.LASF145:
	.string	"SPR_RKEY"
.LASF1109:
	.string	"S_STALAG"
.LASF1542:
	.string	"planezlight"
.LASF824:
	.string	"S_SPID_STND2"
.LASF1515:
	.string	"yslope"
.LASF70:
	.string	"angle_t"
.LASF1438:
	.string	"ceilingpic"
.LASF1110:
	.string	"S_BLOODYTWITCH"
.LASF1179:
	.string	"S_SMALLPOOL"
.LASF1366:
	.string	"pspdef_t"
.LASF1305:
	.string	"MT_MISC56"
.LASF608:
	.string	"S_FATT_PAIN"
.LASF1511:
	.string	"planefunction_t"
.LASF372:
	.string	"S_PLAY_RUN1"
.LASF373:
	.string	"S_PLAY_RUN2"
.LASF374:
	.string	"S_PLAY_RUN3"
.LASF375:
	.string	"S_PLAY_RUN4"
.LASF1100:
	.string	"S_BPAK"
.LASF67:
	.string	"double"
.LASF140:
	.string	"SPR_BEXP"
.LASF1394:
	.string	"player_s"
.LASF1057:
	.string	"S_BSKULL2"
.LASF99:
	.string	"SPR_PUFF"
.LASF986:
	.string	"S_COMMKEEN"
.LASF1561:
	.string	"R_MakeSpans"
.LASF1411:
	.string	"usedown"
.LASF778:
	.string	"S_BOS2_STND"
.LASF105:
	.string	"SPR_BFS1"
.LASF1009:
	.string	"S_SPAWN1"
.LASF1010:
	.string	"S_SPAWN2"
.LASF1011:
	.string	"S_SPAWN3"
.LASF1012:
	.string	"S_SPAWN4"
.LASF1182:
	.string	"S_TECHLAMP2"
.LASF1183:
	.string	"S_TECHLAMP3"
.LASF43:
	.string	"wp_chainsaw"
.LASF1219:
	.string	"MT_BABY"
.LASF1409:
	.string	"maxammo"
.LASF1493:
	.string	"visplane_t"
.LASF1123:
	.string	"S_LIVESTICK2"
.LASF1168:
	.string	"S_RTORCHSHRT"
.LASF1265:
	.string	"MT_MISC19"
.LASF127:
	.string	"SPR_SPID"
.LASF724:
	.string	"S_HEAD_STND"
.LASF699:
	.string	"S_SARG_RUN1"
.LASF700:
	.string	"S_SARG_RUN2"
.LASF702:
	.string	"S_SARG_RUN4"
.LASF703:
	.string	"S_SARG_RUN5"
.LASF704:
	.string	"S_SARG_RUN6"
.LASF705:
	.string	"S_SARG_RUN7"
.LASF706:
	.string	"S_SARG_RUN8"
.LASF1243:
	.string	"MT_MISC1"
.LASF1244:
	.string	"MT_MISC2"
.LASF1245:
	.string	"MT_MISC3"
.LASF1246:
	.string	"MT_MISC4"
.LASF1247:
	.string	"MT_MISC5"
.LASF1248:
	.string	"MT_MISC6"
.LASF1249:
	.string	"MT_MISC7"
.LASF1250:
	.string	"MT_MISC8"
.LASF1251:
	.string	"MT_MISC9"
.LASF289:
	.string	"S_SAW"
.LASF156:
	.string	"SPR_MEGA"
.LASF378:
	.string	"S_PLAY_PAIN"
.LASF330:
	.string	"S_PLASBALL2"
.LASF1363:
	.string	"ps_flash"
.LASF1395:
	.string	"playerstate"
.LASF134:
	.string	"SPR_KEEN"
.LASF964:
	.string	"S_SSWV_PAIN"
.LASF1345:
	.string	"painstate"
.LASF999:
	.string	"S_KEENPAIN2"
.LASF59:
	.string	"pw_infrared"
.LASF486:
	.string	"S_VILE_ATK10"
.LASF487:
	.string	"S_VILE_ATK11"
.LASF965:
	.string	"S_SSWV_PAIN2"
.LASF1329:
	.string	"MT_MISC80"
.LASF1352:
	.string	"deathsound"
.LASF1039:
	.string	"S_BON1A"
.LASF1040:
	.string	"S_BON1B"
.LASF1041:
	.string	"S_BON1C"
.LASF1042:
	.string	"S_BON1D"
.LASF1043:
	.string	"S_BON1E"
.LASF1455:
	.string	"sector_t"
.LASF154:
	.string	"SPR_PSTR"
.LASF1267:
	.string	"MT_MISC21"
.LASF710:
	.string	"S_SARG_PAIN"
.LASF1486:
	.string	"minx"
.LASF1262:
	.string	"MT_CLIP"
.LASF1526:
	.string	"ds_x1"
.LASF1527:
	.string	"ds_x2"
.LASF169:
	.string	"SPR_BFUG"
.LASF1317:
	.string	"MT_MISC68"
.LASF1035:
	.string	"S_BBAR1"
.LASF1036:
	.string	"S_BBAR2"
.LASF1037:
	.string	"S_BBAR3"
.LASF223:
	.string	"S_LIGHTDONE"
.LASF874:
	.string	"S_BSPI_PAIN2"
.LASF1403:
	.string	"backpack"
.LASF674:
	.string	"S_TROO_ATK1"
.LASF675:
	.string	"S_TROO_ATK2"
.LASF676:
	.string	"S_TROO_ATK3"
.LASF818:
	.string	"S_SKULL_DIE2"
.LASF819:
	.string	"S_SKULL_DIE3"
.LASF820:
	.string	"S_SKULL_DIE4"
.LASF821:
	.string	"S_SKULL_DIE5"
.LASF822:
	.string	"S_SKULL_DIE6"
.LASF173:
	.string	"SPR_PLAS"
.LASF1045:
	.string	"S_BON2A"
.LASF1046:
	.string	"S_BON2B"
.LASF86:
	.string	"SPR_PISF"
.LASF85:
	.string	"SPR_PISG"
.LASF1049:
	.string	"S_BON2E"
.LASF1272:
	.string	"MT_CHAINGUN"
.LASF321:
	.string	"S_TBALLX1"
.LASF322:
	.string	"S_TBALLX2"
.LASF323:
	.string	"S_TBALLX3"
.LASF46:
	.string	"wp_nochange"
.LASF1494:
	.string	"colormaps"
.LASF1209:
	.string	"MT_CHAINGUY"
.LASF1434:
	.string	"degenmobj_t"
.LASF817:
	.string	"S_SKULL_DIE1"
.LASF1428:
	.string	"PST_DEAD"
.LASF1180:
	.string	"S_BRAINSTEM"
.LASF985:
	.string	"S_KEENSTND"
.LASF110:
	.string	"SPR_PLAY"
.LASF1405:
	.string	"readyweapon"
.LASF11:
	.string	"long long unsigned int"
.LASF1468:
	.string	"offset"
.LASF1120:
	.string	"S_HEADCANDLES2"
.LASF1239:
	.string	"MT_IFOG"
.LASF1546:
	.string	"cachedheight"
.LASF201:
	.string	"SPR_FSKU"
.LASF436:
	.string	"S_SPOS_RUN6"
.LASF292:
	.string	"S_SAWUP"
.LASF1025:
	.string	"S_ARM1A"
.LASF628:
	.string	"S_CPOS_STND"
.LASF1280:
	.string	"MT_MISC31"
.LASF1378:
	.string	"momz"
.LASF1099:
	.string	"S_SBOX"
.LASF1441:
	.string	"soundtraversed"
.LASF1283:
	.string	"MT_MISC34"
.LASF1451:
	.string	"bbox"
.LASF331:
	.string	"S_PLASEXP"
.LASF1286:
	.string	"MT_MISC37"
.LASF1115:
	.string	"S_DEADBOTTOM"
.LASF1172:
	.string	"S_HANGNOGUTS"
.LASF1344:
	.string	"attacksound"
.LASF1076:
	.string	"S_PINS2"
.LASF1077:
	.string	"S_PINS3"
.LASF1078:
	.string	"S_PINS4"
.LASF930:
	.string	"S_PAIN_ATK1"
.LASF931:
	.string	"S_PAIN_ATK2"
.LASF932:
	.string	"S_PAIN_ATK3"
.LASF933:
	.string	"S_PAIN_ATK4"
.LASF242:
	.string	"S_SGUNUP"
.LASF1453:
	.string	"frontsector"
.LASF195:
	.string	"SPR_CBRA"
.LASF1350:
	.string	"deathstate"
.LASF1027:
	.string	"S_ARM2A"
.LASF896:
	.string	"S_CYBER_STND"
.LASF1055:
	.string	"S_YKEY2"
.LASF505:
	.string	"S_FIRE3"
.LASF1343:
	.string	"reactiontime"
.LASF510:
	.string	"S_FIRE8"
.LASF750:
	.string	"S_BOSS_STND2"
.LASF645:
	.string	"S_CPOS_DIE2"
.LASF1370:
	.string	"sprev"
.LASF293:
	.string	"S_SAW1"
.LASF294:
	.string	"S_SAW2"
.LASF295:
	.string	"S_SAW3"
.LASF1038:
	.string	"S_BON1"
.LASF1044:
	.string	"S_BON2"
.LASF1386:
	.string	"player"
.LASF290:
	.string	"S_SAWB"
.LASF678:
	.string	"S_TROO_PAIN2"
.LASF1560:
	.string	"R_DrawPlanes"
.LASF1225:
	.string	"MT_BOSSSPIT"
.LASF503:
	.string	"S_FIRE1"
.LASF504:
	.string	"S_FIRE2"
.LASF65:
	.string	"fixed_t"
.LASF506:
	.string	"S_FIRE4"
.LASF507:
	.string	"S_FIRE5"
.LASF508:
	.string	"S_FIRE6"
.LASF509:
	.string	"S_FIRE7"
.LASF163:
	.string	"SPR_BROK"
.LASF511:
	.string	"S_FIRE9"
.LASF1293:
	.string	"MT_MISC44"
.LASF1294:
	.string	"MT_MISC45"
.LASF1096:
	.string	"S_CELL"
.LASF1296:
	.string	"MT_MISC47"
.LASF161:
	.string	"SPR_AMMO"
.LASF1297:
	.string	"MT_MISC48"
.LASF1298:
	.string	"MT_MISC49"
.LASF809:
	.string	"S_SKULL_RUN1"
.LASF810:
	.string	"S_SKULL_RUN2"
.LASF1176:
	.string	"S_HANGTLOOKUP"
.LASF271:
	.string	"S_CHAIN"
.LASF1529:
	.string	"ds_xfrac"
.LASF301:
	.string	"S_PLASMAFLASH1"
.LASF257:
	.string	"S_DSGUN1"
.LASF258:
	.string	"S_DSGUN2"
.LASF152:
	.string	"SPR_SOUL"
.LASF112:
	.string	"SPR_SPOS"
.LASF261:
	.string	"S_DSGUN5"
.LASF262:
	.string	"S_DSGUN6"
.LASF263:
	.string	"S_DSGUN7"
.LASF264:
	.string	"S_DSGUN8"
.LASF265:
	.string	"S_DSGUN9"
.LASF429:
	.string	"S_SPOS_STND"
.LASF132:
	.string	"SPR_PAIN"
.LASF657:
	.string	"S_CPOS_RAISE1"
.LASF1404:
	.string	"frags"
.LASF1399:
	.string	"armorpoints"
.LASF22:
	.string	"buttons"
.LASF306:
	.string	"S_BFG1"
.LASF307:
	.string	"S_BFG2"
.LASF308:
	.string	"S_BFG3"
.LASF309:
	.string	"S_BFG4"
.LASF221:
	.string	"spritenum_t"
.LASF268:
	.string	"S_DSNR2"
.LASF808:
	.string	"S_SKULL_STND2"
.LASF1071:
	.string	"S_PINV2"
.LASF1072:
	.string	"S_PINV3"
.LASF701:
	.string	"S_SARG_RUN3"
.LASF1186:
	.string	"S_TECH2LAMP2"
.LASF1187:
	.string	"S_TECH2LAMP3"
.LASF1188:
	.string	"S_TECH2LAMP4"
.LASF69:
	.string	"finecosine"
.LASF1449:
	.string	"line_s"
.LASF5:
	.string	"long long int"
.LASF84:
	.string	"SPR_PUNG"
.LASF652:
	.string	"S_CPOS_XDIE2"
.LASF653:
	.string	"S_CPOS_XDIE3"
.LASF654:
	.string	"S_CPOS_XDIE4"
.LASF655:
	.string	"S_CPOS_XDIE5"
.LASF656:
	.string	"S_CPOS_XDIE6"
.LASF837:
	.string	"S_SPID_ATK1"
.LASF838:
	.string	"S_SPID_ATK2"
.LASF839:
	.string	"S_SPID_ATK3"
.LASF840:
	.string	"S_SPID_ATK4"
.LASF561:
	.string	"S_SKEL_MISS1"
.LASF562:
	.string	"S_SKEL_MISS2"
.LASF563:
	.string	"S_SKEL_MISS3"
.LASF564:
	.string	"S_SKEL_MISS4"
.LASF318:
	.string	"S_PUFF4"
.LASF1058:
	.string	"S_RSKULL"
.LASF890:
	.string	"S_ARACH_PLAZ2"
.LASF1299:
	.string	"MT_MISC50"
.LASF738:
	.string	"S_HEAD_RAISE1"
.LASF1334:
	.string	"MT_MISC85"
.LASF739:
	.string	"S_HEAD_RAISE2"
.LASF740:
	.string	"S_HEAD_RAISE3"
.LASF1412:
	.string	"cheats"
.LASF147:
	.string	"SPR_BSKU"
.LASF742:
	.string	"S_HEAD_RAISE5"
.LASF743:
	.string	"S_HEAD_RAISE6"
.LASF1469:
	.string	"sidedef"
.LASF1564:
	.string	"intrh"
.LASF1553:
	.string	"memset"
.LASF1563:
	.string	"intrl"
.LASF1277:
	.string	"MT_SUPERSHOTGUN"
.LASF158:
	.string	"SPR_PMAP"
.LASF1006:
	.string	"S_BRAINEYE"
.LASF159:
	.string	"SPR_PVIS"
.LASF1427:
	.string	"PST_LIVE"
.LASF1235:
	.string	"MT_ARACHPLAZ"
.LASF25:
	.string	"user"
.LASF484:
	.string	"S_VILE_ATK8"
.LASF425:
	.string	"S_POSS_RAISE1"
.LASF426:
	.string	"S_POSS_RAISE2"
.LASF427:
	.string	"S_POSS_RAISE3"
.LASF428:
	.string	"S_POSS_RAISE4"
.LASF1530:
	.string	"ds_yfrac"
.LASF280:
	.string	"S_MISSILEDOWN"
.LASF1481:
	.string	"sprtopclip"
.LASF1144:
	.string	"S_FLOATSKULL2"
.LASF1145:
	.string	"S_FLOATSKULL3"
.LASF1571:
	.string	"R_MapPlane"
.LASF1079:
	.string	"S_MEGA"
.LASF759:
	.string	"S_BOSS_ATK1"
.LASF760:
	.string	"S_BOSS_ATK2"
.LASF761:
	.string	"S_BOSS_ATK3"
.LASF1373:
	.string	"subsector"
.LASF217:
	.string	"SPR_BRS1"
.LASF1433:
	.string	"vertex_t"
.LASF566:
	.string	"S_SKEL_PAIN2"
.LASF1103:
	.string	"S_CSAW"
.LASF54:
	.string	"pw_invulnerability"
.LASF746:
	.string	"S_BRBALLX1"
.LASF747:
	.string	"S_BRBALLX2"
.LASF748:
	.string	"S_BRBALLX3"
.LASF876:
	.string	"S_BSPI_DIE2"
.LASF877:
	.string	"S_BSPI_DIE3"
.LASF878:
	.string	"S_BSPI_DIE4"
.LASF879:
	.string	"S_BSPI_DIE5"
.LASF39:
	.string	"wp_chaingun"
.LASF881:
	.string	"S_BSPI_DIE7"
.LASF432:
	.string	"S_SPOS_RUN2"
.LASF1454:
	.string	"backsector"
.LASF433:
	.string	"S_SPOS_RUN3"
.LASF935:
	.string	"S_PAIN_PAIN2"
.LASF570:
	.string	"S_SKEL_DIE4"
.LASF166:
	.string	"SPR_SHEL"
.LASF1318:
	.string	"MT_MISC69"
.LASF1400:
	.string	"armortype"
.LASF12:
	.string	"false"
.LASF218:
	.string	"SPR_TLMP"
.LASF397:
	.string	"S_POSS_STND2"
.LASF1276:
	.string	"MT_SHOTGUN"
.LASF1201:
	.string	"MT_SHOTGUY"
.LASF1415:
	.string	"itemcount"
.LASF1181:
	.string	"S_TECHLAMP"
.LASF1549:
	.string	"cachedystep"
.LASF1222:
	.string	"MT_WOLFSS"
.LASF779:
	.string	"S_BOS2_STND2"
.LASF1442:
	.string	"soundtarget"
.LASF274:
	.string	"S_CHAIN1"
.LASF275:
	.string	"S_CHAIN2"
.LASF276:
	.string	"S_CHAIN3"
.LASF327:
	.string	"S_RBALLX2"
.LASF328:
	.string	"S_RBALLX3"
.LASF203:
	.string	"SPR_TBLU"
.LASF430:
	.string	"S_SPOS_STND2"
.LASF8:
	.string	"unsigned int"
.LASF1507:
	.string	"spanfunc"
.LASF1369:
	.string	"snext"
.LASF1552:
	.string	"FixedDiv"
.LASF53:
	.string	"am_noammo"
.LASF79:
	.string	"thinker_s"
.LASF81:
	.string	"thinker_t"
.LASF406:
	.string	"S_POSS_ATK1"
.LASF407:
	.string	"S_POSS_ATK2"
.LASF408:
	.string	"S_POSS_ATK3"
.LASF1320:
	.string	"MT_MISC71"
.LASF1169:
	.string	"S_RTORCHSHRT2"
.LASF1170:
	.string	"S_RTORCHSHRT3"
.LASF1171:
	.string	"S_RTORCHSHRT4"
.LASF1073:
	.string	"S_PINV4"
.LASF10:
	.string	"short int"
.LASF857:
	.string	"S_BSPI_RUN1"
.LASF1326:
	.string	"MT_MISC77"
.LASF1327:
	.string	"MT_MISC78"
.LASF1328:
	.string	"MT_MISC79"
.LASF1217:
	.string	"MT_SKULL"
.LASF1204:
	.string	"MT_UNDEAD"
.LASF27:
	.string	"prev"
.LASF567:
	.string	"S_SKEL_DIE1"
.LASF568:
	.string	"S_SKEL_DIE2"
.LASF569:
	.string	"S_SKEL_DIE3"
.LASF114:
	.string	"SPR_FIRE"
.LASF571:
	.string	"S_SKEL_DIE5"
.LASF572:
	.string	"S_SKEL_DIE6"
.LASF1178:
	.string	"S_COLONGIBS"
.LASF219:
	.string	"SPR_TLP2"
.LASF329:
	.string	"S_PLASBALL"
.LASF175:
	.string	"SPR_SGN2"
.LASF63:
	.string	"options"
.LASF128:
	.string	"SPR_BSPI"
.LASF130:
	.string	"SPR_APBX"
.LASF1423:
	.string	"colormap"
.LASF1252:
	.string	"MT_MISC10"
.LASF1253:
	.string	"MT_MISC11"
.LASF1254:
	.string	"MT_MISC12"
.LASF1256:
	.string	"MT_MISC13"
.LASF1258:
	.string	"MT_MISC14"
.LASF1259:
	.string	"MT_MISC15"
.LASF1260:
	.string	"MT_MISC16"
.LASF1263:
	.string	"MT_MISC17"
.LASF1264:
	.string	"MT_MISC18"
.LASF1092:
	.string	"S_CLIP"
.LASF1354:
	.string	"radius"
.LASF1381:
	.string	"health"
.LASF1226:
	.string	"MT_BOSSTARGET"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10"
.LASF0:
	.string	"r_plane.c"
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
