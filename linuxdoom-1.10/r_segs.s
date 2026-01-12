	.file	"r_segs.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "r_segs.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 49
rcsid:
	.string	"$Id: r_segs.c,v 1.3 1997/01/29 20:10:19 b1 Exp $"
	.globl	segtextured
	.bss
	.align 4
	.type	segtextured, @object
	.size	segtextured, 4
segtextured:
	.zero	4
	.globl	markfloor
	.align 4
	.type	markfloor, @object
	.size	markfloor, 4
markfloor:
	.zero	4
	.globl	markceiling
	.align 4
	.type	markceiling, @object
	.size	markceiling, 4
markceiling:
	.zero	4
	.globl	maskedtexture
	.align 4
	.type	maskedtexture, @object
	.size	maskedtexture, 4
maskedtexture:
	.zero	4
	.globl	toptexture
	.align 4
	.type	toptexture, @object
	.size	toptexture, 4
toptexture:
	.zero	4
	.globl	bottomtexture
	.align 4
	.type	bottomtexture, @object
	.size	bottomtexture, 4
bottomtexture:
	.zero	4
	.globl	midtexture
	.align 4
	.type	midtexture, @object
	.size	midtexture, 4
midtexture:
	.zero	4
	.globl	rw_normalangle
	.align 4
	.type	rw_normalangle, @object
	.size	rw_normalangle, 4
rw_normalangle:
	.zero	4
	.globl	rw_angle1
	.align 4
	.type	rw_angle1, @object
	.size	rw_angle1, 4
rw_angle1:
	.zero	4
	.globl	rw_x
	.align 4
	.type	rw_x, @object
	.size	rw_x, 4
rw_x:
	.zero	4
	.globl	rw_stopx
	.align 4
	.type	rw_stopx, @object
	.size	rw_stopx, 4
rw_stopx:
	.zero	4
	.globl	rw_centerangle
	.align 4
	.type	rw_centerangle, @object
	.size	rw_centerangle, 4
rw_centerangle:
	.zero	4
	.globl	rw_offset
	.align 4
	.type	rw_offset, @object
	.size	rw_offset, 4
rw_offset:
	.zero	4
	.globl	rw_distance
	.align 4
	.type	rw_distance, @object
	.size	rw_distance, 4
rw_distance:
	.zero	4
	.globl	rw_scale
	.align 4
	.type	rw_scale, @object
	.size	rw_scale, 4
rw_scale:
	.zero	4
	.globl	rw_scalestep
	.align 4
	.type	rw_scalestep, @object
	.size	rw_scalestep, 4
rw_scalestep:
	.zero	4
	.globl	rw_midtexturemid
	.align 4
	.type	rw_midtexturemid, @object
	.size	rw_midtexturemid, 4
rw_midtexturemid:
	.zero	4
	.globl	rw_toptexturemid
	.align 4
	.type	rw_toptexturemid, @object
	.size	rw_toptexturemid, 4
rw_toptexturemid:
	.zero	4
	.globl	rw_bottomtexturemid
	.align 4
	.type	rw_bottomtexturemid, @object
	.size	rw_bottomtexturemid, 4
rw_bottomtexturemid:
	.zero	4
	.globl	worldtop
	.align 4
	.type	worldtop, @object
	.size	worldtop, 4
worldtop:
	.zero	4
	.globl	worldbottom
	.align 4
	.type	worldbottom, @object
	.size	worldbottom, 4
worldbottom:
	.zero	4
	.globl	worldhigh
	.align 4
	.type	worldhigh, @object
	.size	worldhigh, 4
worldhigh:
	.zero	4
	.globl	worldlow
	.align 4
	.type	worldlow, @object
	.size	worldlow, 4
worldlow:
	.zero	4
	.globl	pixhigh
	.align 4
	.type	pixhigh, @object
	.size	pixhigh, 4
pixhigh:
	.zero	4
	.globl	pixlow
	.align 4
	.type	pixlow, @object
	.size	pixlow, 4
pixlow:
	.zero	4
	.globl	pixhighstep
	.align 4
	.type	pixhighstep, @object
	.size	pixhighstep, 4
pixhighstep:
	.zero	4
	.globl	pixlowstep
	.align 4
	.type	pixlowstep, @object
	.size	pixlowstep, 4
pixlowstep:
	.zero	4
	.globl	topfrac
	.align 4
	.type	topfrac, @object
	.size	topfrac, 4
topfrac:
	.zero	4
	.globl	topstep
	.align 4
	.type	topstep, @object
	.size	topstep, 4
topstep:
	.zero	4
	.globl	bottomfrac
	.align 4
	.type	bottomfrac, @object
	.size	bottomfrac, 4
bottomfrac:
	.zero	4
	.globl	bottomstep
	.align 4
	.type	bottomstep, @object
	.size	bottomstep, 4
bottomstep:
	.zero	4
	.globl	walllights
	.align 8
	.type	walllights, @object
	.size	walllights, 8
walllights:
	.zero	8
	.globl	maskedtexturecol
	.align 8
	.type	maskedtexturecol, @object
	.size	maskedtexturecol, 8
maskedtexturecol:
	.zero	8
	.text
	.globl	R_RenderMaskedSegRange
	.type	R_RenderMaskedSegRange, @function
R_RenderMaskedSegRange:
.LFB6:
	.file 1 "r_segs.c"
	.loc 1 107 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# ds, ds
	movl	%esi, -60(%rbp)	# x1, x1
	movl	%edx, -64(%rbp)	# x2, x2
# r_segs.c:117:     curline = ds->curline;
	.loc 1 117 17
	movq	-56(%rbp), %rax	# ds, tmp198
	movq	(%rax), %rax	# ds_126(D)->curline, _1
# r_segs.c:117:     curline = ds->curline;
	.loc 1 117 13
	movq	%rax, curline(%rip)	# _1, curline
# r_segs.c:118:     frontsector = curline->frontsector;
	.loc 1 118 26
	movq	curline(%rip), %rax	# curline, curline.0_2
	movq	40(%rax), %rax	# curline.0_2->frontsector, _3
# r_segs.c:118:     frontsector = curline->frontsector;
	.loc 1 118 17
	movq	%rax, frontsector(%rip)	# _3, frontsector
# r_segs.c:119:     backsector = curline->backsector;
	.loc 1 119 25
	movq	curline(%rip), %rax	# curline, curline.1_4
	movq	48(%rax), %rax	# curline.1_4->backsector, _5
# r_segs.c:119:     backsector = curline->backsector;
	.loc 1 119 16
	movq	%rax, backsector(%rip)	# _5, backsector
# r_segs.c:120:     texnum = texturetranslation[curline->sidedef->midtexture];
	.loc 1 120 32
	movq	texturetranslation(%rip), %rdx	# texturetranslation, texturetranslation.2_6
# r_segs.c:120:     texnum = texturetranslation[curline->sidedef->midtexture];
	.loc 1 120 40
	movq	curline(%rip), %rax	# curline, curline.3_7
	movq	24(%rax), %rax	# curline.3_7->sidedef, _8
# r_segs.c:120:     texnum = texturetranslation[curline->sidedef->midtexture];
	.loc 1 120 49
	movzwl	12(%rax), %eax	# _8->midtexture, _9
	movswq	%ax, %rax	# _9, _10
# r_segs.c:120:     texnum = texturetranslation[curline->sidedef->midtexture];
	.loc 1 120 32
	salq	$2, %rax	#, _11
	addq	%rdx, %rax	# texturetranslation.2_6, _12
# r_segs.c:120:     texnum = texturetranslation[curline->sidedef->midtexture];
	.loc 1 120 12
	movl	(%rax), %eax	# *_12, tmp199
	movl	%eax, -28(%rbp)	# tmp199, texnum
# r_segs.c:122:     lightnum = (frontsector->lightlevel >> LIGHTSEGSHIFT)+extralight;
	.loc 1 122 28
	movq	frontsector(%rip), %rax	# frontsector, frontsector.4_13
	movzwl	12(%rax), %eax	# frontsector.4_13->lightlevel, _14
# r_segs.c:122:     lightnum = (frontsector->lightlevel >> LIGHTSEGSHIFT)+extralight;
	.loc 1 122 41
	sarw	$4, %ax	#, _15
	movswl	%ax, %edx	# _15, _16
# r_segs.c:122:     lightnum = (frontsector->lightlevel >> LIGHTSEGSHIFT)+extralight;
	.loc 1 122 58
	movl	extralight(%rip), %eax	# extralight, extralight.5_17
# r_segs.c:122:     lightnum = (frontsector->lightlevel >> LIGHTSEGSHIFT)+extralight;
	.loc 1 122 14
	addl	%edx, %eax	# _16, tmp200
	movl	%eax, -32(%rbp)	# tmp200, lightnum
# r_segs.c:124:     if (curline->v1->y == curline->v2->y)
	.loc 1 124 16
	movq	curline(%rip), %rax	# curline, curline.6_18
	movq	(%rax), %rax	# curline.6_18->v1, _19
# r_segs.c:124:     if (curline->v1->y == curline->v2->y)
	.loc 1 124 20
	movl	4(%rax), %edx	# _19->y, _20
# r_segs.c:124:     if (curline->v1->y == curline->v2->y)
	.loc 1 124 34
	movq	curline(%rip), %rax	# curline, curline.7_21
	movq	8(%rax), %rax	# curline.7_21->v2, _22
# r_segs.c:124:     if (curline->v1->y == curline->v2->y)
	.loc 1 124 38
	movl	4(%rax), %eax	# _22->y, _23
# r_segs.c:124:     if (curline->v1->y == curline->v2->y)
	.loc 1 124 8
	cmpl	%eax, %edx	# _23, _20
	jne	.L2	#,
# r_segs.c:125: 	lightnum--;
	.loc 1 125 10
	subl	$1, -32(%rbp)	#, lightnum
	jmp	.L3	#
.L2:
# r_segs.c:126:     else if (curline->v1->x == curline->v2->x)
	.loc 1 126 21
	movq	curline(%rip), %rax	# curline, curline.8_24
	movq	(%rax), %rax	# curline.8_24->v1, _25
# r_segs.c:126:     else if (curline->v1->x == curline->v2->x)
	.loc 1 126 25
	movl	(%rax), %edx	# _25->x, _26
# r_segs.c:126:     else if (curline->v1->x == curline->v2->x)
	.loc 1 126 39
	movq	curline(%rip), %rax	# curline, curline.9_27
	movq	8(%rax), %rax	# curline.9_27->v2, _28
# r_segs.c:126:     else if (curline->v1->x == curline->v2->x)
	.loc 1 126 43
	movl	(%rax), %eax	# _28->x, _29
# r_segs.c:126:     else if (curline->v1->x == curline->v2->x)
	.loc 1 126 13
	cmpl	%eax, %edx	# _29, _26
	jne	.L3	#,
# r_segs.c:127: 	lightnum++;
	.loc 1 127 10
	addl	$1, -32(%rbp)	#, lightnum
.L3:
# r_segs.c:129:     if (lightnum < 0)		
	.loc 1 129 8
	cmpl	$0, -32(%rbp)	#, lightnum
	jns	.L4	#,
# r_segs.c:130: 	walllights = scalelight[0];
	.loc 1 130 13
	leaq	scalelight(%rip), %rax	#, tmp201
	movq	%rax, walllights(%rip)	# tmp201, walllights
	jmp	.L5	#
.L4:
# r_segs.c:131:     else if (lightnum >= LIGHTLEVELS)
	.loc 1 131 13
	cmpl	$15, -32(%rbp)	#, lightnum
	jle	.L6	#,
# r_segs.c:132: 	walllights = scalelight[LIGHTLEVELS-1];
	.loc 1 132 13
	leaq	5760+scalelight(%rip), %rax	#, tmp202
	movq	%rax, walllights(%rip)	# tmp202, walllights
	jmp	.L5	#
.L6:
# r_segs.c:134: 	walllights = scalelight[lightnum];
	.loc 1 134 15
	movl	-32(%rbp), %eax	# lightnum, tmp204
	movslq	%eax, %rdx	# tmp204, tmp203
	movq	%rdx, %rax	# tmp203, tmp205
	addq	%rax, %rax	# tmp205
	addq	%rdx, %rax	# tmp203, tmp205
	salq	$7, %rax	#, tmp206
	leaq	scalelight(%rip), %rdx	#, tmp207
	addq	%rdx, %rax	# tmp207, _30
# r_segs.c:134: 	walllights = scalelight[lightnum];
	.loc 1 134 13
	movq	%rax, walllights(%rip)	# _30, walllights
.L5:
# r_segs.c:136:     maskedtexturecol = ds->maskedtexturecol;
	.loc 1 136 26
	movq	-56(%rbp), %rax	# ds, tmp208
	movq	56(%rax), %rax	# ds_126(D)->maskedtexturecol, _31
# r_segs.c:136:     maskedtexturecol = ds->maskedtexturecol;
	.loc 1 136 22
	movq	%rax, maskedtexturecol(%rip)	# _31, maskedtexturecol
# r_segs.c:138:     rw_scalestep = ds->scalestep;		
	.loc 1 138 22
	movq	-56(%rbp), %rax	# ds, tmp209
	movl	24(%rax), %eax	# ds_126(D)->scalestep, _32
# r_segs.c:138:     rw_scalestep = ds->scalestep;		
	.loc 1 138 18
	movl	%eax, rw_scalestep(%rip)	# _32, rw_scalestep
# r_segs.c:139:     spryscale = ds->scale1 + (x1 - ds->x1)*rw_scalestep;
	.loc 1 139 19
	movq	-56(%rbp), %rax	# ds, tmp210
	movl	16(%rax), %edx	# ds_126(D)->scale1, _33
# r_segs.c:139:     spryscale = ds->scale1 + (x1 - ds->x1)*rw_scalestep;
	.loc 1 139 38
	movq	-56(%rbp), %rax	# ds, tmp211
	movl	8(%rax), %eax	# ds_126(D)->x1, _34
# r_segs.c:139:     spryscale = ds->scale1 + (x1 - ds->x1)*rw_scalestep;
	.loc 1 139 34
	movl	-60(%rbp), %ecx	# x1, tmp212
	subl	%eax, %ecx	# _34, _35
# r_segs.c:139:     spryscale = ds->scale1 + (x1 - ds->x1)*rw_scalestep;
	.loc 1 139 43
	movl	rw_scalestep(%rip), %eax	# rw_scalestep, rw_scalestep.10_36
	imull	%ecx, %eax	# _35, _37
# r_segs.c:139:     spryscale = ds->scale1 + (x1 - ds->x1)*rw_scalestep;
	.loc 1 139 28
	addl	%edx, %eax	# _33, _38
# r_segs.c:139:     spryscale = ds->scale1 + (x1 - ds->x1)*rw_scalestep;
	.loc 1 139 15
	movl	%eax, spryscale(%rip)	# _38, spryscale
# r_segs.c:140:     mfloorclip = ds->sprbottomclip;
	.loc 1 140 20
	movq	-56(%rbp), %rax	# ds, tmp213
	movq	48(%rax), %rax	# ds_126(D)->sprbottomclip, _39
# r_segs.c:140:     mfloorclip = ds->sprbottomclip;
	.loc 1 140 16
	movq	%rax, mfloorclip(%rip)	# _39, mfloorclip
# r_segs.c:141:     mceilingclip = ds->sprtopclip;
	.loc 1 141 22
	movq	-56(%rbp), %rax	# ds, tmp214
	movq	40(%rax), %rax	# ds_126(D)->sprtopclip, _40
# r_segs.c:141:     mceilingclip = ds->sprtopclip;
	.loc 1 141 18
	movq	%rax, mceilingclip(%rip)	# _40, mceilingclip
# r_segs.c:144:     if (curline->linedef->flags & ML_DONTPEGBOTTOM)
	.loc 1 144 16
	movq	curline(%rip), %rax	# curline, curline.11_41
	movq	32(%rax), %rax	# curline.11_41->linedef, _42
# r_segs.c:144:     if (curline->linedef->flags & ML_DONTPEGBOTTOM)
	.loc 1 144 25
	movzwl	24(%rax), %eax	# _42->flags, _43
# r_segs.c:144:     if (curline->linedef->flags & ML_DONTPEGBOTTOM)
	.loc 1 144 33
	cwtl
	andl	$16, %eax	#, _45
# r_segs.c:144:     if (curline->linedef->flags & ML_DONTPEGBOTTOM)
	.loc 1 144 8
	testl	%eax, %eax	# _45
	je	.L7	#,
# r_segs.c:146: 	dc_texturemid = frontsector->floorheight > backsector->floorheight
	.loc 1 146 55
	movq	backsector(%rip), %rax	# backsector, backsector.12_46
	movl	(%rax), %edx	# backsector.12_46->floorheight, _47
# r_segs.c:146: 	dc_texturemid = frontsector->floorheight > backsector->floorheight
	.loc 1 146 29
	movq	frontsector(%rip), %rax	# frontsector, frontsector.13_48
	movl	(%rax), %eax	# frontsector.13_48->floorheight, _49
# r_segs.c:147: 	    ? frontsector->floorheight : backsector->floorheight;
	.loc 1 147 33
	cmpl	%eax, %edx	# _49, _47
	cmovge	%edx, %eax	# _47,, _50
# r_segs.c:146: 	dc_texturemid = frontsector->floorheight > backsector->floorheight
	.loc 1 146 16
	movl	%eax, dc_texturemid(%rip)	# _50, dc_texturemid
# r_segs.c:148: 	dc_texturemid = dc_texturemid + textureheight[texnum] - viewz;
	.loc 1 148 47
	movq	textureheight(%rip), %rax	# textureheight, textureheight.14_51
	movl	-28(%rbp), %edx	# texnum, tmp215
	movslq	%edx, %rdx	# tmp215, _52
	salq	$2, %rdx	#, _53
	addq	%rdx, %rax	# _53, _54
	movl	(%rax), %edx	# *_54, _55
# r_segs.c:148: 	dc_texturemid = dc_texturemid + textureheight[texnum] - viewz;
	.loc 1 148 32
	movl	dc_texturemid(%rip), %eax	# dc_texturemid, dc_texturemid.15_56
	addl	%eax, %edx	# dc_texturemid.15_56, _57
# r_segs.c:148: 	dc_texturemid = dc_texturemid + textureheight[texnum] - viewz;
	.loc 1 148 56
	movl	viewz(%rip), %eax	# viewz, viewz.16_58
	subl	%eax, %edx	# viewz.16_58, _59
# r_segs.c:148: 	dc_texturemid = dc_texturemid + textureheight[texnum] - viewz;
	.loc 1 148 16
	movl	%edx, dc_texturemid(%rip)	# _59, dc_texturemid
	jmp	.L8	#
.L7:
# r_segs.c:152: 	dc_texturemid =frontsector->ceilingheight<backsector->ceilingheight
	.loc 1 152 54
	movq	backsector(%rip), %rax	# backsector, backsector.17_60
	movl	4(%rax), %edx	# backsector.17_60->ceilingheight, _61
# r_segs.c:152: 	dc_texturemid =frontsector->ceilingheight<backsector->ceilingheight
	.loc 1 152 28
	movq	frontsector(%rip), %rax	# frontsector, frontsector.18_62
	movl	4(%rax), %eax	# frontsector.18_62->ceilingheight, _63
# r_segs.c:153: 	    ? frontsector->ceilingheight : backsector->ceilingheight;
	.loc 1 153 35
	cmpl	%eax, %edx	# _63, _61
	cmovle	%edx, %eax	# _61,, _64
# r_segs.c:152: 	dc_texturemid =frontsector->ceilingheight<backsector->ceilingheight
	.loc 1 152 16
	movl	%eax, dc_texturemid(%rip)	# _64, dc_texturemid
# r_segs.c:154: 	dc_texturemid = dc_texturemid - viewz;
	.loc 1 154 32
	movl	dc_texturemid(%rip), %edx	# dc_texturemid, dc_texturemid.19_65
	movl	viewz(%rip), %eax	# viewz, viewz.20_66
	subl	%eax, %edx	# viewz.20_66, _67
# r_segs.c:154: 	dc_texturemid = dc_texturemid - viewz;
	.loc 1 154 16
	movl	%edx, dc_texturemid(%rip)	# _67, dc_texturemid
.L8:
# r_segs.c:156:     dc_texturemid += curline->sidedef->rowoffset;
	.loc 1 156 29
	movq	curline(%rip), %rax	# curline, curline.21_68
	movq	24(%rax), %rax	# curline.21_68->sidedef, _69
# r_segs.c:156:     dc_texturemid += curline->sidedef->rowoffset;
	.loc 1 156 38
	movl	4(%rax), %edx	# _69->rowoffset, _70
# r_segs.c:156:     dc_texturemid += curline->sidedef->rowoffset;
	.loc 1 156 19
	movl	dc_texturemid(%rip), %eax	# dc_texturemid, dc_texturemid.22_71
	addl	%edx, %eax	# _70, _72
	movl	%eax, dc_texturemid(%rip)	# _72, dc_texturemid
# r_segs.c:158:     if (fixedcolormap)
	.loc 1 158 9
	movq	fixedcolormap(%rip), %rax	# fixedcolormap, fixedcolormap.23_73
# r_segs.c:158:     if (fixedcolormap)
	.loc 1 158 8
	testq	%rax, %rax	# fixedcolormap.23_73
	je	.L9	#,
# r_segs.c:159: 	dc_colormap = fixedcolormap;
	.loc 1 159 14
	movq	fixedcolormap(%rip), %rax	# fixedcolormap, fixedcolormap.24_74
	movq	%rax, dc_colormap(%rip)	# fixedcolormap.24_74, dc_colormap
.L9:
# r_segs.c:162:     for (dc_x = x1 ; dc_x <= x2 ; dc_x++)
	.loc 1 162 15
	movl	-60(%rbp), %eax	# x1, tmp216
	movl	%eax, dc_x(%rip)	# tmp216, dc_x
# r_segs.c:162:     for (dc_x = x1 ; dc_x <= x2 ; dc_x++)
	.loc 1 162 5
	jmp	.L10	#
.L14:
# r_segs.c:165: 	if (maskedtexturecol[dc_x] != MAXSHORT)
	.loc 1 165 22
	movq	maskedtexturecol(%rip), %rax	# maskedtexturecol, maskedtexturecol.25_75
	movl	dc_x(%rip), %edx	# dc_x, dc_x.26_76
	movslq	%edx, %rdx	# dc_x.26_76, _77
	addq	%rdx, %rdx	# _78
	addq	%rdx, %rax	# _78, _79
	movzwl	(%rax), %eax	# *_79, _80
# r_segs.c:165: 	if (maskedtexturecol[dc_x] != MAXSHORT)
	.loc 1 165 5
	cmpw	$32767, %ax	#, _80
	je	.L11	#,
# r_segs.c:167: 	    if (!fixedcolormap)
	.loc 1 167 10
	movq	fixedcolormap(%rip), %rax	# fixedcolormap, fixedcolormap.27_81
# r_segs.c:167: 	    if (!fixedcolormap)
	.loc 1 167 9
	testq	%rax, %rax	# fixedcolormap.27_81
	jne	.L12	#,
# r_segs.c:169: 		index = spryscale>>LIGHTSCALESHIFT;
	.loc 1 169 20
	movl	spryscale(%rip), %eax	# spryscale, spryscale.28_82
	sarl	$12, %eax	#, _83
# r_segs.c:169: 		index = spryscale>>LIGHTSCALESHIFT;
	.loc 1 169 9
	movl	%eax, -36(%rbp)	# _83, index
# r_segs.c:171: 		if (index >=  MAXLIGHTSCALE )
	.loc 1 171 6
	cmpl	$47, -36(%rbp)	#, index
	jbe	.L13	#,
# r_segs.c:172: 		    index = MAXLIGHTSCALE-1;
	.loc 1 172 13
	movl	$47, -36(%rbp)	#, index
.L13:
# r_segs.c:174: 		dc_colormap = walllights[index];
	.loc 1 174 27
	movq	walllights(%rip), %rax	# walllights, walllights.29_84
	movl	-36(%rbp), %edx	# index, _85
	salq	$3, %rdx	#, _86
	addq	%rdx, %rax	# _86, _87
	movq	(%rax), %rax	# *_87, _88
# r_segs.c:174: 		dc_colormap = walllights[index];
	.loc 1 174 15
	movq	%rax, dc_colormap(%rip)	# _88, dc_colormap
.L12:
# r_segs.c:177: 	    sprtopscreen = centeryfrac - FixedMul(dc_texturemid, spryscale);
	.loc 1 177 33
	movl	centeryfrac(%rip), %ebx	# centeryfrac, centeryfrac.30_89
# r_segs.c:177: 	    sprtopscreen = centeryfrac - FixedMul(dc_texturemid, spryscale);
	.loc 1 177 35
	movl	spryscale(%rip), %edx	# spryscale, spryscale.31_90
	movl	dc_texturemid(%rip), %eax	# dc_texturemid, dc_texturemid.32_91
	movl	%edx, %esi	# spryscale.31_90,
	movl	%eax, %edi	# dc_texturemid.32_91,
	call	FixedMul@PLT	#
# r_segs.c:177: 	    sprtopscreen = centeryfrac - FixedMul(dc_texturemid, spryscale);
	.loc 1 177 33 discriminator 1
	subl	%eax, %ebx	# _92, centeryfrac.30_89
	movl	%ebx, %edx	# centeryfrac.30_89, _93
# r_segs.c:177: 	    sprtopscreen = centeryfrac - FixedMul(dc_texturemid, spryscale);
	.loc 1 177 19 discriminator 1
	movl	%edx, sprtopscreen(%rip)	# _93, sprtopscreen
# r_segs.c:178: 	    dc_iscale = 0xffffffffu / (unsigned)spryscale;
	.loc 1 178 32
	movl	spryscale(%rip), %eax	# spryscale, spryscale.33_94
	movl	%eax, %esi	# spryscale.33_94, spryscale.34_95
# r_segs.c:178: 	    dc_iscale = 0xffffffffu / (unsigned)spryscale;
	.loc 1 178 30
	movl	$-1, %eax	#, tmp219
	movl	$0, %edx	#, tmp218
	divl	%esi	# spryscale.34_95
# r_segs.c:178: 	    dc_iscale = 0xffffffffu / (unsigned)spryscale;
	.loc 1 178 16
	movl	%eax, dc_iscale(%rip)	# _97, dc_iscale
# r_segs.c:182: 		(byte *)R_GetColumn(texnum,maskedtexturecol[dc_x]) -3);
	.loc 1 182 46
	movq	maskedtexturecol(%rip), %rax	# maskedtexturecol, maskedtexturecol.35_98
	movl	dc_x(%rip), %edx	# dc_x, dc_x.36_99
	movslq	%edx, %rdx	# dc_x.36_99, _100
	addq	%rdx, %rdx	# _101
	addq	%rdx, %rax	# _101, _102
	movzwl	(%rax), %eax	# *_102, _103
# r_segs.c:182: 		(byte *)R_GetColumn(texnum,maskedtexturecol[dc_x]) -3);
	.loc 1 182 3
	movswl	%ax, %edx	# _103, _104
	movl	-28(%rbp), %eax	# texnum, tmp220
	movl	%edx, %esi	# _104,
	movl	%eax, %edi	# tmp220,
	call	R_GetColumn@PLT	#
# r_segs.c:181: 	    col = (column_t *)( 
	.loc 1 181 10
	subq	$3, %rax	#, tmp221
	movq	%rax, -24(%rbp)	# tmp221, col
# r_segs.c:184: 	    R_DrawMaskedColumn (col);
	.loc 1 184 6
	movq	-24(%rbp), %rax	# col, tmp222
	movq	%rax, %rdi	# tmp222,
	call	R_DrawMaskedColumn@PLT	#
# r_segs.c:185: 	    maskedtexturecol[dc_x] = MAXSHORT;
	.loc 1 185 22
	movq	maskedtexturecol(%rip), %rax	# maskedtexturecol, maskedtexturecol.37_106
	movl	dc_x(%rip), %edx	# dc_x, dc_x.38_107
	movslq	%edx, %rdx	# dc_x.38_107, _108
	addq	%rdx, %rdx	# _109
	addq	%rdx, %rax	# _109, _110
# r_segs.c:185: 	    maskedtexturecol[dc_x] = MAXSHORT;
	.loc 1 185 29
	movw	$32767, (%rax)	#, *_110
.L11:
# r_segs.c:187: 	spryscale += rw_scalestep;
	.loc 1 187 12
	movl	spryscale(%rip), %edx	# spryscale, spryscale.39_111
	movl	rw_scalestep(%rip), %eax	# rw_scalestep, rw_scalestep.40_112
	addl	%edx, %eax	# spryscale.39_111, _113
	movl	%eax, spryscale(%rip)	# _113, spryscale
# r_segs.c:162:     for (dc_x = x1 ; dc_x <= x2 ; dc_x++)
	.loc 1 162 39 discriminator 2
	movl	dc_x(%rip), %eax	# dc_x, dc_x.41_114
	addl	$1, %eax	#, _115
	movl	%eax, dc_x(%rip)	# _115, dc_x
.L10:
# r_segs.c:162:     for (dc_x = x1 ; dc_x <= x2 ; dc_x++)
	.loc 1 162 27 discriminator 1
	movl	dc_x(%rip), %eax	# dc_x, dc_x.42_116
	cmpl	%eax, -64(%rbp)	# dc_x.42_116, x2
	jge	.L14	#,
# r_segs.c:190: }
	.loc 1 190 1
	nop	
	nop	
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	R_RenderMaskedSegRange, .-R_RenderMaskedSegRange
	.globl	R_RenderSegLoop
	.type	R_RenderSegLoop, @function
R_RenderSegLoop:
.LFB7:
	.loc 1 207 1
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
# r_segs.c:219:     for ( ; rw_x < rw_stopx ; rw_x++)
	.loc 1 219 5
	jmp	.L16	#
.L35:
# r_segs.c:222: 	yl = (topfrac+HEIGHTUNIT-1)>>HEIGHTBITS;
	.loc 1 222 26
	movl	topfrac(%rip), %eax	# topfrac, topfrac.43_1
	addl	$4095, %eax	#, _2
# r_segs.c:222: 	yl = (topfrac+HEIGHTUNIT-1)>>HEIGHTBITS;
	.loc 1 222 5
	sarl	$12, %eax	#, tmp232
	movl	%eax, -44(%rbp)	# tmp232, yl
# r_segs.c:225: 	if (yl < ceilingclip[rw_x]+1)
	.loc 1 225 22
	movl	rw_x(%rip), %eax	# rw_x, rw_x.44_3
	cltq
	leaq	(%rax,%rax), %rdx	#, tmp234
	leaq	ceilingclip(%rip), %rax	#, tmp235
	movzwl	(%rdx,%rax), %eax	# ceilingclip[rw_x.44_3], _4
	cwtl
# r_segs.c:225: 	if (yl < ceilingclip[rw_x]+1)
	.loc 1 225 5
	cmpl	%eax, -44(%rbp)	# _5, yl
	jg	.L17	#,
# r_segs.c:226: 	    yl = ceilingclip[rw_x]+1;
	.loc 1 226 22
	movl	rw_x(%rip), %eax	# rw_x, rw_x.45_6
	cltq
	leaq	(%rax,%rax), %rdx	#, tmp237
	leaq	ceilingclip(%rip), %rax	#, tmp238
	movzwl	(%rdx,%rax), %eax	# ceilingclip[rw_x.45_6], _7
	cwtl
# r_segs.c:226: 	    yl = ceilingclip[rw_x]+1;
	.loc 1 226 9
	addl	$1, %eax	#, tmp239
	movl	%eax, -44(%rbp)	# tmp239, yl
.L17:
# r_segs.c:228: 	if (markceiling)
	.loc 1 228 6
	movl	markceiling(%rip), %eax	# markceiling, markceiling.46_9
# r_segs.c:228: 	if (markceiling)
	.loc 1 228 5
	testl	%eax, %eax	# markceiling.46_9
	je	.L18	#,
# r_segs.c:230: 	    top = ceilingclip[rw_x]+1;
	.loc 1 230 23
	movl	rw_x(%rip), %eax	# rw_x, rw_x.47_10
	cltq
	leaq	(%rax,%rax), %rdx	#, tmp241
	leaq	ceilingclip(%rip), %rax	#, tmp242
	movzwl	(%rdx,%rax), %eax	# ceilingclip[rw_x.47_10], _11
	cwtl
# r_segs.c:230: 	    top = ceilingclip[rw_x]+1;
	.loc 1 230 10
	addl	$1, %eax	#, tmp243
	movl	%eax, -28(%rbp)	# tmp243, top
# r_segs.c:231: 	    bottom = yl-1;
	.loc 1 231 13
	movl	-44(%rbp), %eax	# yl, tmp247
	subl	$1, %eax	#, tmp246
	movl	%eax, -24(%rbp)	# tmp246, bottom
# r_segs.c:233: 	    if (bottom >= floorclip[rw_x])
	.loc 1 233 29
	movl	rw_x(%rip), %eax	# rw_x, rw_x.48_13
	cltq
	leaq	(%rax,%rax), %rdx	#, tmp249
	leaq	floorclip(%rip), %rax	#, tmp250
	movzwl	(%rdx,%rax), %eax	# floorclip[rw_x.48_13], _14
	cwtl
# r_segs.c:233: 	    if (bottom >= floorclip[rw_x])
	.loc 1 233 9
	cmpl	%eax, -24(%rbp)	# _15, bottom
	jl	.L19	#,
# r_segs.c:234: 		bottom = floorclip[rw_x]-1;
	.loc 1 234 21
	movl	rw_x(%rip), %eax	# rw_x, rw_x.49_16
	cltq
	leaq	(%rax,%rax), %rdx	#, tmp252
	leaq	floorclip(%rip), %rax	#, tmp253
	movzwl	(%rdx,%rax), %eax	# floorclip[rw_x.49_16], _17
	cwtl
# r_segs.c:234: 		bottom = floorclip[rw_x]-1;
	.loc 1 234 10
	subl	$1, %eax	#, tmp254
	movl	%eax, -24(%rbp)	# tmp254, bottom
.L19:
# r_segs.c:236: 	    if (top <= bottom)
	.loc 1 236 9
	movl	-28(%rbp), %eax	# top, tmp255
	cmpl	-24(%rbp), %eax	# bottom, tmp255
	jg	.L18	#,
# r_segs.c:238: 		ceilingplane->top[rw_x] = top;
	.loc 1 238 15
	movq	ceilingplane(%rip), %rdx	# ceilingplane, ceilingplane.50_19
# r_segs.c:238: 		ceilingplane->top[rw_x] = top;
	.loc 1 238 20
	movl	rw_x(%rip), %eax	# rw_x, rw_x.51_20
# r_segs.c:238: 		ceilingplane->top[rw_x] = top;
	.loc 1 238 27
	movl	-28(%rbp), %ecx	# top, tmp256
	cltq
	movb	%cl, 21(%rdx,%rax)	# _21, ceilingplane.50_19->top[rw_x.51_20]
# r_segs.c:239: 		ceilingplane->bottom[rw_x] = bottom;
	.loc 1 239 15
	movq	ceilingplane(%rip), %rdx	# ceilingplane, ceilingplane.52_22
# r_segs.c:239: 		ceilingplane->bottom[rw_x] = bottom;
	.loc 1 239 23
	movl	rw_x(%rip), %eax	# rw_x, rw_x.53_23
# r_segs.c:239: 		ceilingplane->bottom[rw_x] = bottom;
	.loc 1 239 30
	movl	-24(%rbp), %ecx	# bottom, tmp258
	cltq
	movb	%cl, 343(%rdx,%rax)	# _24, ceilingplane.52_22->bottom[rw_x.53_23]
.L18:
# r_segs.c:243: 	yh = bottomfrac>>HEIGHTBITS;
	.loc 1 243 17
	movl	bottomfrac(%rip), %eax	# bottomfrac, bottomfrac.54_25
# r_segs.c:243: 	yh = bottomfrac>>HEIGHTBITS;
	.loc 1 243 5
	sarl	$12, %eax	#, tmp260
	movl	%eax, -40(%rbp)	# tmp260, yh
# r_segs.c:245: 	if (yh >= floorclip[rw_x])
	.loc 1 245 21
	movl	rw_x(%rip), %eax	# rw_x, rw_x.55_26
	cltq
	leaq	(%rax,%rax), %rdx	#, tmp262
	leaq	floorclip(%rip), %rax	#, tmp263
	movzwl	(%rdx,%rax), %eax	# floorclip[rw_x.55_26], _27
	cwtl
# r_segs.c:245: 	if (yh >= floorclip[rw_x])
	.loc 1 245 5
	cmpl	%eax, -40(%rbp)	# _28, yh
	jl	.L20	#,
# r_segs.c:246: 	    yh = floorclip[rw_x]-1;
	.loc 1 246 20
	movl	rw_x(%rip), %eax	# rw_x, rw_x.56_29
	cltq
	leaq	(%rax,%rax), %rdx	#, tmp265
	leaq	floorclip(%rip), %rax	#, tmp266
	movzwl	(%rdx,%rax), %eax	# floorclip[rw_x.56_29], _30
	cwtl
# r_segs.c:246: 	    yh = floorclip[rw_x]-1;
	.loc 1 246 9
	subl	$1, %eax	#, tmp267
	movl	%eax, -40(%rbp)	# tmp267, yh
.L20:
# r_segs.c:248: 	if (markfloor)
	.loc 1 248 6
	movl	markfloor(%rip), %eax	# markfloor, markfloor.57_32
# r_segs.c:248: 	if (markfloor)
	.loc 1 248 5
	testl	%eax, %eax	# markfloor.57_32
	je	.L21	#,
# r_segs.c:250: 	    top = yh+1;
	.loc 1 250 10
	movl	-40(%rbp), %eax	# yh, tmp271
	addl	$1, %eax	#, tmp270
	movl	%eax, -28(%rbp)	# tmp270, top
# r_segs.c:251: 	    bottom = floorclip[rw_x]-1;
	.loc 1 251 24
	movl	rw_x(%rip), %eax	# rw_x, rw_x.58_33
	cltq
	leaq	(%rax,%rax), %rdx	#, tmp273
	leaq	floorclip(%rip), %rax	#, tmp274
	movzwl	(%rdx,%rax), %eax	# floorclip[rw_x.58_33], _34
	cwtl
# r_segs.c:251: 	    bottom = floorclip[rw_x]-1;
	.loc 1 251 13
	subl	$1, %eax	#, tmp275
	movl	%eax, -24(%rbp)	# tmp275, bottom
# r_segs.c:252: 	    if (top <= ceilingclip[rw_x])
	.loc 1 252 28
	movl	rw_x(%rip), %eax	# rw_x, rw_x.59_36
	cltq
	leaq	(%rax,%rax), %rdx	#, tmp277
	leaq	ceilingclip(%rip), %rax	#, tmp278
	movzwl	(%rdx,%rax), %eax	# ceilingclip[rw_x.59_36], _37
	cwtl
# r_segs.c:252: 	    if (top <= ceilingclip[rw_x])
	.loc 1 252 9
	cmpl	%eax, -28(%rbp)	# _38, top
	jg	.L22	#,
# r_segs.c:253: 		top = ceilingclip[rw_x]+1;
	.loc 1 253 20
	movl	rw_x(%rip), %eax	# rw_x, rw_x.60_39
	cltq
	leaq	(%rax,%rax), %rdx	#, tmp280
	leaq	ceilingclip(%rip), %rax	#, tmp281
	movzwl	(%rdx,%rax), %eax	# ceilingclip[rw_x.60_39], _40
	cwtl
# r_segs.c:253: 		top = ceilingclip[rw_x]+1;
	.loc 1 253 7
	addl	$1, %eax	#, tmp282
	movl	%eax, -28(%rbp)	# tmp282, top
.L22:
# r_segs.c:254: 	    if (top <= bottom)
	.loc 1 254 9
	movl	-28(%rbp), %eax	# top, tmp283
	cmpl	-24(%rbp), %eax	# bottom, tmp283
	jg	.L21	#,
# r_segs.c:256: 		floorplane->top[rw_x] = top;
	.loc 1 256 13
	movq	floorplane(%rip), %rdx	# floorplane, floorplane.61_42
# r_segs.c:256: 		floorplane->top[rw_x] = top;
	.loc 1 256 18
	movl	rw_x(%rip), %eax	# rw_x, rw_x.62_43
# r_segs.c:256: 		floorplane->top[rw_x] = top;
	.loc 1 256 25
	movl	-28(%rbp), %ecx	# top, tmp284
	cltq
	movb	%cl, 21(%rdx,%rax)	# _44, floorplane.61_42->top[rw_x.62_43]
# r_segs.c:257: 		floorplane->bottom[rw_x] = bottom;
	.loc 1 257 13
	movq	floorplane(%rip), %rdx	# floorplane, floorplane.63_45
# r_segs.c:257: 		floorplane->bottom[rw_x] = bottom;
	.loc 1 257 21
	movl	rw_x(%rip), %eax	# rw_x, rw_x.64_46
# r_segs.c:257: 		floorplane->bottom[rw_x] = bottom;
	.loc 1 257 28
	movl	-24(%rbp), %ecx	# bottom, tmp286
	cltq
	movb	%cl, 343(%rdx,%rax)	# _47, floorplane.63_45->bottom[rw_x.64_46]
.L21:
# r_segs.c:262: 	if (segtextured)
	.loc 1 262 6
	movl	segtextured(%rip), %eax	# segtextured, segtextured.65_48
# r_segs.c:262: 	if (segtextured)
	.loc 1 262 5
	testl	%eax, %eax	# segtextured.65_48
	je	.L23	#,
# r_segs.c:265: 	    angle = (rw_centerangle + xtoviewangle[rw_x])>>ANGLETOFINESHIFT;
	.loc 1 265 44
	movl	rw_x(%rip), %eax	# rw_x, rw_x.66_49
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp289
	leaq	xtoviewangle(%rip), %rax	#, tmp290
	movl	(%rdx,%rax), %edx	# xtoviewangle[rw_x.66_49], _50
# r_segs.c:265: 	    angle = (rw_centerangle + xtoviewangle[rw_x])>>ANGLETOFINESHIFT;
	.loc 1 265 30
	movl	rw_centerangle(%rip), %eax	# rw_centerangle, rw_centerangle.67_51
	addl	%edx, %eax	# _50, _52
# r_segs.c:265: 	    angle = (rw_centerangle + xtoviewangle[rw_x])>>ANGLETOFINESHIFT;
	.loc 1 265 12
	shrl	$19, %eax	#, tmp291
	movl	%eax, -20(%rbp)	# tmp291, angle
# r_segs.c:266: 	    texturecolumn = rw_offset-FixedMul(finetangent[angle],rw_distance);
	.loc 1 266 31
	movl	rw_offset(%rip), %ebx	# rw_offset, rw_offset.68_53
# r_segs.c:266: 	    texturecolumn = rw_offset-FixedMul(finetangent[angle],rw_distance);
	.loc 1 266 32
	movl	rw_distance(%rip), %edx	# rw_distance, rw_distance.69_54
	movl	-20(%rbp), %eax	# angle, tmp292
	leaq	0(,%rax,4), %rcx	#, tmp293
	leaq	finetangent(%rip), %rax	#, tmp294
	movl	(%rcx,%rax), %eax	# finetangent[angle_183], _55
	movl	%edx, %esi	# rw_distance.69_54,
	movl	%eax, %edi	# _55,
	call	FixedMul@PLT	#
# r_segs.c:266: 	    texturecolumn = rw_offset-FixedMul(finetangent[angle],rw_distance);
	.loc 1 266 20 discriminator 1
	subl	%eax, %ebx	# _56, rw_offset.68_53
	movl	%ebx, %edx	# rw_offset.68_53, tmp295
	movl	%edx, -32(%rbp)	# tmp295, texturecolumn
# r_segs.c:267: 	    texturecolumn >>= FRACBITS;
	.loc 1 267 20
	sarl	$16, -32(%rbp)	#, texturecolumn
# r_segs.c:269: 	    index = rw_scale>>LIGHTSCALESHIFT;
	.loc 1 269 22
	movl	rw_scale(%rip), %eax	# rw_scale, rw_scale.70_57
	sarl	$12, %eax	#, _58
# r_segs.c:269: 	    index = rw_scale>>LIGHTSCALESHIFT;
	.loc 1 269 12
	movl	%eax, -48(%rbp)	# _58, index
# r_segs.c:271: 	    if (index >=  MAXLIGHTSCALE )
	.loc 1 271 9
	cmpl	$47, -48(%rbp)	#, index
	jbe	.L24	#,
# r_segs.c:272: 		index = MAXLIGHTSCALE-1;
	.loc 1 272 9
	movl	$47, -48(%rbp)	#, index
.L24:
# r_segs.c:274: 	    dc_colormap = walllights[index];
	.loc 1 274 30
	movq	walllights(%rip), %rax	# walllights, walllights.71_59
	movl	-48(%rbp), %edx	# index, _60
	salq	$3, %rdx	#, _61
	addq	%rdx, %rax	# _61, _62
	movq	(%rax), %rax	# *_62, _63
# r_segs.c:274: 	    dc_colormap = walllights[index];
	.loc 1 274 18
	movq	%rax, dc_colormap(%rip)	# _63, dc_colormap
# r_segs.c:275: 	    dc_x = rw_x;
	.loc 1 275 11
	movl	rw_x(%rip), %eax	# rw_x, rw_x.72_64
	movl	%eax, dc_x(%rip)	# rw_x.72_64, dc_x
# r_segs.c:276: 	    dc_iscale = 0xffffffffu / (unsigned)rw_scale;
	.loc 1 276 32
	movl	rw_scale(%rip), %eax	# rw_scale, rw_scale.73_65
	movl	%eax, %esi	# rw_scale.73_65, rw_scale.74_66
# r_segs.c:276: 	    dc_iscale = 0xffffffffu / (unsigned)rw_scale;
	.loc 1 276 30
	movl	$-1, %eax	#, tmp298
	movl	$0, %edx	#, tmp297
	divl	%esi	# rw_scale.74_66
# r_segs.c:276: 	    dc_iscale = 0xffffffffu / (unsigned)rw_scale;
	.loc 1 276 16
	movl	%eax, dc_iscale(%rip)	# _68, dc_iscale
.L23:
# r_segs.c:280: 	if (midtexture)
	.loc 1 280 6
	movl	midtexture(%rip), %eax	# midtexture, midtexture.75_69
# r_segs.c:280: 	if (midtexture)
	.loc 1 280 5
	testl	%eax, %eax	# midtexture.75_69
	je	.L25	#,
# r_segs.c:283: 	    dc_yl = yl;
	.loc 1 283 12
	movl	-44(%rbp), %eax	# yl, tmp299
	movl	%eax, dc_yl(%rip)	# tmp299, dc_yl
# r_segs.c:284: 	    dc_yh = yh;
	.loc 1 284 12
	movl	-40(%rbp), %eax	# yh, tmp300
	movl	%eax, dc_yh(%rip)	# tmp300, dc_yh
# r_segs.c:285: 	    dc_texturemid = rw_midtexturemid;
	.loc 1 285 20
	movl	rw_midtexturemid(%rip), %eax	# rw_midtexturemid, rw_midtexturemid.76_70
	movl	%eax, dc_texturemid(%rip)	# rw_midtexturemid.76_70, dc_texturemid
# r_segs.c:286: 	    dc_source = R_GetColumn(midtexture,texturecolumn);
	.loc 1 286 18
	movl	midtexture(%rip), %eax	# midtexture, midtexture.77_71
	movl	-32(%rbp), %edx	# texturecolumn, tmp301
	movl	%edx, %esi	# tmp301,
	movl	%eax, %edi	# midtexture.77_71,
	call	R_GetColumn@PLT	#
# r_segs.c:286: 	    dc_source = R_GetColumn(midtexture,texturecolumn);
	.loc 1 286 16 discriminator 1
	movq	%rax, dc_source(%rip)	# _72, dc_source
# r_segs.c:287: 	    colfunc ();
	.loc 1 287 6
	movq	colfunc(%rip), %rax	# colfunc, colfunc.78_73
	call	*%rax	# colfunc.78_73
.LVL0:
# r_segs.c:288: 	    ceilingclip[rw_x] = viewheight;
	.loc 1 288 24
	movl	viewheight(%rip), %edx	# viewheight, viewheight.79_74
# r_segs.c:288: 	    ceilingclip[rw_x] = viewheight;
	.loc 1 288 17
	movl	rw_x(%rip), %eax	# rw_x, rw_x.80_75
# r_segs.c:288: 	    ceilingclip[rw_x] = viewheight;
	.loc 1 288 24
	movl	%edx, %ecx	# viewheight.79_74, _76
	cltq
	leaq	(%rax,%rax), %rdx	#, tmp303
	leaq	ceilingclip(%rip), %rax	#, tmp304
	movw	%cx, (%rdx,%rax)	# _76, ceilingclip[rw_x.80_75]
# r_segs.c:289: 	    floorclip[rw_x] = -1;
	.loc 1 289 15
	movl	rw_x(%rip), %eax	# rw_x, rw_x.81_77
# r_segs.c:289: 	    floorclip[rw_x] = -1;
	.loc 1 289 22
	cltq
	leaq	(%rax,%rax), %rdx	#, tmp306
	leaq	floorclip(%rip), %rax	#, tmp307
	movw	$-1, (%rdx,%rax)	#, floorclip[rw_x.81_77]
	jmp	.L26	#
.L25:
# r_segs.c:294: 	    if (toptexture)
	.loc 1 294 10
	movl	toptexture(%rip), %eax	# toptexture, toptexture.82_78
# r_segs.c:294: 	    if (toptexture)
	.loc 1 294 9
	testl	%eax, %eax	# toptexture.82_78
	je	.L27	#,
# r_segs.c:297: 		mid = pixhigh>>HEIGHTBITS;
	.loc 1 297 16
	movl	pixhigh(%rip), %eax	# pixhigh, pixhigh.83_79
# r_segs.c:297: 		mid = pixhigh>>HEIGHTBITS;
	.loc 1 297 7
	sarl	$12, %eax	#, tmp308
	movl	%eax, -36(%rbp)	# tmp308, mid
# r_segs.c:298: 		pixhigh += pixhighstep;
	.loc 1 298 11
	movl	pixhigh(%rip), %edx	# pixhigh, pixhigh.84_80
	movl	pixhighstep(%rip), %eax	# pixhighstep, pixhighstep.85_81
	addl	%edx, %eax	# pixhigh.84_80, _82
	movl	%eax, pixhigh(%rip)	# _82, pixhigh
# r_segs.c:300: 		if (mid >= floorclip[rw_x])
	.loc 1 300 23
	movl	rw_x(%rip), %eax	# rw_x, rw_x.86_83
	cltq
	leaq	(%rax,%rax), %rdx	#, tmp310
	leaq	floorclip(%rip), %rax	#, tmp311
	movzwl	(%rdx,%rax), %eax	# floorclip[rw_x.86_83], _84
	cwtl
# r_segs.c:300: 		if (mid >= floorclip[rw_x])
	.loc 1 300 6
	cmpl	%eax, -36(%rbp)	# _85, mid
	jl	.L28	#,
# r_segs.c:301: 		    mid = floorclip[rw_x]-1;
	.loc 1 301 22
	movl	rw_x(%rip), %eax	# rw_x, rw_x.87_86
	cltq
	leaq	(%rax,%rax), %rdx	#, tmp313
	leaq	floorclip(%rip), %rax	#, tmp314
	movzwl	(%rdx,%rax), %eax	# floorclip[rw_x.87_86], _87
	cwtl
# r_segs.c:301: 		    mid = floorclip[rw_x]-1;
	.loc 1 301 11
	subl	$1, %eax	#, tmp315
	movl	%eax, -36(%rbp)	# tmp315, mid
.L28:
# r_segs.c:303: 		if (mid >= yl)
	.loc 1 303 6
	movl	-36(%rbp), %eax	# mid, tmp316
	cmpl	-44(%rbp), %eax	# yl, tmp316
	jl	.L29	#,
# r_segs.c:305: 		    dc_yl = yl;
	.loc 1 305 13
	movl	-44(%rbp), %eax	# yl, tmp317
	movl	%eax, dc_yl(%rip)	# tmp317, dc_yl
# r_segs.c:306: 		    dc_yh = mid;
	.loc 1 306 13
	movl	-36(%rbp), %eax	# mid, tmp318
	movl	%eax, dc_yh(%rip)	# tmp318, dc_yh
# r_segs.c:307: 		    dc_texturemid = rw_toptexturemid;
	.loc 1 307 21
	movl	rw_toptexturemid(%rip), %eax	# rw_toptexturemid, rw_toptexturemid.88_89
	movl	%eax, dc_texturemid(%rip)	# rw_toptexturemid.88_89, dc_texturemid
# r_segs.c:308: 		    dc_source = R_GetColumn(toptexture,texturecolumn);
	.loc 1 308 19
	movl	toptexture(%rip), %eax	# toptexture, toptexture.89_90
	movl	-32(%rbp), %edx	# texturecolumn, tmp319
	movl	%edx, %esi	# tmp319,
	movl	%eax, %edi	# toptexture.89_90,
	call	R_GetColumn@PLT	#
# r_segs.c:308: 		    dc_source = R_GetColumn(toptexture,texturecolumn);
	.loc 1 308 17 discriminator 1
	movq	%rax, dc_source(%rip)	# _91, dc_source
# r_segs.c:309: 		    colfunc ();
	.loc 1 309 7
	movq	colfunc(%rip), %rax	# colfunc, colfunc.90_92
	call	*%rax	# colfunc.90_92
.LVL1:
# r_segs.c:310: 		    ceilingclip[rw_x] = mid;
	.loc 1 310 18
	movl	rw_x(%rip), %eax	# rw_x, rw_x.91_93
# r_segs.c:310: 		    ceilingclip[rw_x] = mid;
	.loc 1 310 25
	movl	-36(%rbp), %edx	# mid, tmp320
	movl	%edx, %ecx	# tmp320, _94
	cltq
	leaq	(%rax,%rax), %rdx	#, tmp322
	leaq	ceilingclip(%rip), %rax	#, tmp323
	movw	%cx, (%rdx,%rax)	# _94, ceilingclip[rw_x.91_93]
	jmp	.L30	#
.L29:
# r_segs.c:313: 		    ceilingclip[rw_x] = yl-1;
	.loc 1 313 29
	movl	-44(%rbp), %eax	# yl, tmp324
	leal	-1(%rax), %edx	#, _96
# r_segs.c:313: 		    ceilingclip[rw_x] = yl-1;
	.loc 1 313 18
	movl	rw_x(%rip), %eax	# rw_x, rw_x.92_97
# r_segs.c:313: 		    ceilingclip[rw_x] = yl-1;
	.loc 1 313 29
	movl	%edx, %ecx	# _96, _98
# r_segs.c:313: 		    ceilingclip[rw_x] = yl-1;
	.loc 1 313 25
	cltq
	leaq	(%rax,%rax), %rdx	#, tmp326
	leaq	ceilingclip(%rip), %rax	#, tmp327
	movw	%cx, (%rdx,%rax)	# _98, ceilingclip[rw_x.92_97]
	jmp	.L30	#
.L27:
# r_segs.c:318: 		if (markceiling)
	.loc 1 318 7
	movl	markceiling(%rip), %eax	# markceiling, markceiling.93_99
# r_segs.c:318: 		if (markceiling)
	.loc 1 318 6
	testl	%eax, %eax	# markceiling.93_99
	je	.L30	#,
# r_segs.c:319: 		    ceilingclip[rw_x] = yl-1;
	.loc 1 319 29
	movl	-44(%rbp), %eax	# yl, tmp328
	leal	-1(%rax), %edx	#, _101
# r_segs.c:319: 		    ceilingclip[rw_x] = yl-1;
	.loc 1 319 18
	movl	rw_x(%rip), %eax	# rw_x, rw_x.94_102
# r_segs.c:319: 		    ceilingclip[rw_x] = yl-1;
	.loc 1 319 29
	movl	%edx, %ecx	# _101, _103
# r_segs.c:319: 		    ceilingclip[rw_x] = yl-1;
	.loc 1 319 25
	cltq
	leaq	(%rax,%rax), %rdx	#, tmp330
	leaq	ceilingclip(%rip), %rax	#, tmp331
	movw	%cx, (%rdx,%rax)	# _103, ceilingclip[rw_x.94_102]
.L30:
# r_segs.c:322: 	    if (bottomtexture)
	.loc 1 322 10
	movl	bottomtexture(%rip), %eax	# bottomtexture, bottomtexture.95_104
# r_segs.c:322: 	    if (bottomtexture)
	.loc 1 322 9
	testl	%eax, %eax	# bottomtexture.95_104
	je	.L31	#,
# r_segs.c:325: 		mid = (pixlow+HEIGHTUNIT-1)>>HEIGHTBITS;
	.loc 1 325 27
	movl	pixlow(%rip), %eax	# pixlow, pixlow.96_105
	addl	$4095, %eax	#, _106
# r_segs.c:325: 		mid = (pixlow+HEIGHTUNIT-1)>>HEIGHTBITS;
	.loc 1 325 7
	sarl	$12, %eax	#, tmp332
	movl	%eax, -36(%rbp)	# tmp332, mid
# r_segs.c:326: 		pixlow += pixlowstep;
	.loc 1 326 10
	movl	pixlow(%rip), %edx	# pixlow, pixlow.97_107
	movl	pixlowstep(%rip), %eax	# pixlowstep, pixlowstep.98_108
	addl	%edx, %eax	# pixlow.97_107, _109
	movl	%eax, pixlow(%rip)	# _109, pixlow
# r_segs.c:329: 		if (mid <= ceilingclip[rw_x])
	.loc 1 329 25
	movl	rw_x(%rip), %eax	# rw_x, rw_x.99_110
	cltq
	leaq	(%rax,%rax), %rdx	#, tmp334
	leaq	ceilingclip(%rip), %rax	#, tmp335
	movzwl	(%rdx,%rax), %eax	# ceilingclip[rw_x.99_110], _111
	cwtl
# r_segs.c:329: 		if (mid <= ceilingclip[rw_x])
	.loc 1 329 6
	cmpl	%eax, -36(%rbp)	# _112, mid
	jg	.L32	#,
# r_segs.c:330: 		    mid = ceilingclip[rw_x]+1;
	.loc 1 330 24
	movl	rw_x(%rip), %eax	# rw_x, rw_x.100_113
	cltq
	leaq	(%rax,%rax), %rdx	#, tmp337
	leaq	ceilingclip(%rip), %rax	#, tmp338
	movzwl	(%rdx,%rax), %eax	# ceilingclip[rw_x.100_113], _114
	cwtl
# r_segs.c:330: 		    mid = ceilingclip[rw_x]+1;
	.loc 1 330 11
	addl	$1, %eax	#, tmp339
	movl	%eax, -36(%rbp)	# tmp339, mid
.L32:
# r_segs.c:332: 		if (mid <= yh)
	.loc 1 332 6
	movl	-36(%rbp), %eax	# mid, tmp340
	cmpl	-40(%rbp), %eax	# yh, tmp340
	jg	.L33	#,
# r_segs.c:334: 		    dc_yl = mid;
	.loc 1 334 13
	movl	-36(%rbp), %eax	# mid, tmp341
	movl	%eax, dc_yl(%rip)	# tmp341, dc_yl
# r_segs.c:335: 		    dc_yh = yh;
	.loc 1 335 13
	movl	-40(%rbp), %eax	# yh, tmp342
	movl	%eax, dc_yh(%rip)	# tmp342, dc_yh
# r_segs.c:336: 		    dc_texturemid = rw_bottomtexturemid;
	.loc 1 336 21
	movl	rw_bottomtexturemid(%rip), %eax	# rw_bottomtexturemid, rw_bottomtexturemid.101_116
	movl	%eax, dc_texturemid(%rip)	# rw_bottomtexturemid.101_116, dc_texturemid
# r_segs.c:337: 		    dc_source = R_GetColumn(bottomtexture,
	.loc 1 337 19
	movl	bottomtexture(%rip), %eax	# bottomtexture, bottomtexture.102_117
	movl	-32(%rbp), %edx	# texturecolumn, tmp343
	movl	%edx, %esi	# tmp343,
	movl	%eax, %edi	# bottomtexture.102_117,
	call	R_GetColumn@PLT	#
# r_segs.c:337: 		    dc_source = R_GetColumn(bottomtexture,
	.loc 1 337 17 discriminator 1
	movq	%rax, dc_source(%rip)	# _118, dc_source
# r_segs.c:339: 		    colfunc ();
	.loc 1 339 7
	movq	colfunc(%rip), %rax	# colfunc, colfunc.103_119
	call	*%rax	# colfunc.103_119
.LVL2:
# r_segs.c:340: 		    floorclip[rw_x] = mid;
	.loc 1 340 16
	movl	rw_x(%rip), %eax	# rw_x, rw_x.104_120
# r_segs.c:340: 		    floorclip[rw_x] = mid;
	.loc 1 340 23
	movl	-36(%rbp), %edx	# mid, tmp344
	movl	%edx, %ecx	# tmp344, _121
	cltq
	leaq	(%rax,%rax), %rdx	#, tmp346
	leaq	floorclip(%rip), %rax	#, tmp347
	movw	%cx, (%rdx,%rax)	# _121, floorclip[rw_x.104_120]
	jmp	.L34	#
.L33:
# r_segs.c:343: 		    floorclip[rw_x] = yh+1;
	.loc 1 343 27
	movl	-40(%rbp), %eax	# yh, tmp348
	leal	1(%rax), %edx	#, _123
# r_segs.c:343: 		    floorclip[rw_x] = yh+1;
	.loc 1 343 16
	movl	rw_x(%rip), %eax	# rw_x, rw_x.105_124
# r_segs.c:343: 		    floorclip[rw_x] = yh+1;
	.loc 1 343 27
	movl	%edx, %ecx	# _123, _125
# r_segs.c:343: 		    floorclip[rw_x] = yh+1;
	.loc 1 343 23
	cltq
	leaq	(%rax,%rax), %rdx	#, tmp350
	leaq	floorclip(%rip), %rax	#, tmp351
	movw	%cx, (%rdx,%rax)	# _125, floorclip[rw_x.105_124]
	jmp	.L34	#
.L31:
# r_segs.c:348: 		if (markfloor)
	.loc 1 348 7
	movl	markfloor(%rip), %eax	# markfloor, markfloor.106_126
# r_segs.c:348: 		if (markfloor)
	.loc 1 348 6
	testl	%eax, %eax	# markfloor.106_126
	je	.L34	#,
# r_segs.c:349: 		    floorclip[rw_x] = yh+1;
	.loc 1 349 27
	movl	-40(%rbp), %eax	# yh, tmp352
	leal	1(%rax), %edx	#, _128
# r_segs.c:349: 		    floorclip[rw_x] = yh+1;
	.loc 1 349 16
	movl	rw_x(%rip), %eax	# rw_x, rw_x.107_129
# r_segs.c:349: 		    floorclip[rw_x] = yh+1;
	.loc 1 349 27
	movl	%edx, %ecx	# _128, _130
# r_segs.c:349: 		    floorclip[rw_x] = yh+1;
	.loc 1 349 23
	cltq
	leaq	(%rax,%rax), %rdx	#, tmp354
	leaq	floorclip(%rip), %rax	#, tmp355
	movw	%cx, (%rdx,%rax)	# _130, floorclip[rw_x.107_129]
.L34:
# r_segs.c:352: 	    if (maskedtexture)
	.loc 1 352 10
	movl	maskedtexture(%rip), %eax	# maskedtexture, maskedtexture.108_131
# r_segs.c:352: 	    if (maskedtexture)
	.loc 1 352 9
	testl	%eax, %eax	# maskedtexture.108_131
	je	.L26	#,
# r_segs.c:356: 		maskedtexturecol[rw_x] = texturecolumn;
	.loc 1 356 19
	movq	maskedtexturecol(%rip), %rax	# maskedtexturecol, maskedtexturecol.109_132
	movl	rw_x(%rip), %edx	# rw_x, rw_x.110_133
	movslq	%edx, %rdx	# rw_x.110_133, _134
	addq	%rdx, %rdx	# _135
	addq	%rdx, %rax	# _135, _136
# r_segs.c:356: 		maskedtexturecol[rw_x] = texturecolumn;
	.loc 1 356 26
	movl	-32(%rbp), %edx	# texturecolumn, tmp356
	movw	%dx, (%rax)	# _137, *_136
.L26:
# r_segs.c:360: 	rw_scale += rw_scalestep;
	.loc 1 360 11
	movl	rw_scale(%rip), %edx	# rw_scale, rw_scale.111_138
	movl	rw_scalestep(%rip), %eax	# rw_scalestep, rw_scalestep.112_139
	addl	%edx, %eax	# rw_scale.111_138, _140
	movl	%eax, rw_scale(%rip)	# _140, rw_scale
# r_segs.c:361: 	topfrac += topstep;
	.loc 1 361 10
	movl	topfrac(%rip), %edx	# topfrac, topfrac.113_141
	movl	topstep(%rip), %eax	# topstep, topstep.114_142
	addl	%edx, %eax	# topfrac.113_141, _143
	movl	%eax, topfrac(%rip)	# _143, topfrac
# r_segs.c:362: 	bottomfrac += bottomstep;
	.loc 1 362 13
	movl	bottomfrac(%rip), %edx	# bottomfrac, bottomfrac.115_144
	movl	bottomstep(%rip), %eax	# bottomstep, bottomstep.116_145
	addl	%edx, %eax	# bottomfrac.115_144, _146
	movl	%eax, bottomfrac(%rip)	# _146, bottomfrac
# r_segs.c:219:     for ( ; rw_x < rw_stopx ; rw_x++)
	.loc 1 219 35
	movl	rw_x(%rip), %eax	# rw_x, rw_x.117_147
	addl	$1, %eax	#, _148
	movl	%eax, rw_x(%rip)	# _148, rw_x
.L16:
# r_segs.c:219:     for ( ; rw_x < rw_stopx ; rw_x++)
	.loc 1 219 18 discriminator 1
	movl	rw_x(%rip), %edx	# rw_x, rw_x.118_149
	movl	rw_stopx(%rip), %eax	# rw_stopx, rw_stopx.119_150
	cmpl	%eax, %edx	# rw_stopx.119_150, rw_x.118_149
	jl	.L35	#,
# r_segs.c:364: }
	.loc 1 364 1
	nop	
	nop	
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	R_RenderSegLoop, .-R_RenderSegLoop
	.section	.rodata
	.align 8
.LC0:
	.string	"Bad R_RenderWallRange: %i to %i"
	.text
	.globl	R_StoreWallRange
	.type	R_StoreWallRange, @function
R_StoreWallRange:
.LFB8:
	.loc 1 378 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)	# start, start
	movl	%esi, -56(%rbp)	# stop, stop
# r_segs.c:386:     if (ds_p == &drawsegs[MAXDRAWSEGS])
	.loc 1 386 14
	movq	ds_p(%rip), %rdx	# ds_p, ds_p.120_1
# r_segs.c:386:     if (ds_p == &drawsegs[MAXDRAWSEGS])
	.loc 1 386 8
	leaq	16384+drawsegs(%rip), %rax	#, tmp547
	cmpq	%rax, %rdx	# tmp547, ds_p.120_1
	je	.L87	#,
# r_segs.c:390:     if (start >=viewwidth || start > stop)
	.loc 1 390 15
	movl	viewwidth(%rip), %eax	# viewwidth, viewwidth.121_2
# r_segs.c:390:     if (start >=viewwidth || start > stop)
	.loc 1 390 8
	cmpl	%eax, -52(%rbp)	# viewwidth.121_2, start
	jge	.L39	#,
# r_segs.c:390:     if (start >=viewwidth || start > stop)
	.loc 1 390 27 discriminator 1
	movl	-52(%rbp), %eax	# start, tmp548
	cmpl	-56(%rbp), %eax	# stop, tmp548
	jle	.L40	#,
.L39:
# r_segs.c:391: 	I_Error ("Bad R_RenderWallRange: %i to %i", start , stop);
	.loc 1 391 2
	movl	-56(%rbp), %edx	# stop, tmp549
	movl	-52(%rbp), %eax	# start, tmp550
	movl	%eax, %esi	# tmp550,
	leaq	.LC0(%rip), %rax	#, tmp551
	movq	%rax, %rdi	# tmp551,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L40:
# r_segs.c:394:     sidedef = curline->sidedef;
	.loc 1 394 22
	movq	curline(%rip), %rax	# curline, curline.122_3
	movq	24(%rax), %rax	# curline.122_3->sidedef, _4
# r_segs.c:394:     sidedef = curline->sidedef;
	.loc 1 394 13
	movq	%rax, sidedef(%rip)	# _4, sidedef
# r_segs.c:395:     linedef = curline->linedef;
	.loc 1 395 22
	movq	curline(%rip), %rax	# curline, curline.123_5
	movq	32(%rax), %rax	# curline.123_5->linedef, _6
# r_segs.c:395:     linedef = curline->linedef;
	.loc 1 395 13
	movq	%rax, linedef(%rip)	# _6, linedef
# r_segs.c:398:     linedef->flags |= ML_MAPPED;
	.loc 1 398 12
	movq	linedef(%rip), %rax	# linedef, linedef.124_7
	movzwl	24(%rax), %edx	# linedef.124_7->flags, _8
	movq	linedef(%rip), %rax	# linedef, linedef.125_9
# r_segs.c:398:     linedef->flags |= ML_MAPPED;
	.loc 1 398 20
	orb	$1, %dh	#, _10
	movw	%dx, 24(%rax)	# _10, linedef.125_9->flags
# r_segs.c:401:     rw_normalangle = curline->angle + ANG90;
	.loc 1 401 29
	movq	curline(%rip), %rax	# curline, curline.126_11
	movl	20(%rax), %eax	# curline.126_11->angle, _12
# r_segs.c:401:     rw_normalangle = curline->angle + ANG90;
	.loc 1 401 37
	addl	$1073741824, %eax	#, _13
# r_segs.c:401:     rw_normalangle = curline->angle + ANG90;
	.loc 1 401 20
	movl	%eax, rw_normalangle(%rip)	# _13, rw_normalangle
# r_segs.c:402:     offsetangle = abs(rw_normalangle-rw_angle1);
	.loc 1 402 37
	movl	rw_normalangle(%rip), %eax	# rw_normalangle, rw_normalangle.127_14
	movl	rw_angle1(%rip), %edx	# rw_angle1, rw_angle1.128_15
	subl	%edx, %eax	# rw_angle1.129_16, _17
# r_segs.c:402:     offsetangle = abs(rw_normalangle-rw_angle1);
	.loc 1 402 19
	movl	%eax, %edx	# _18, tmp609
	negl	%edx	# tmp609
	cmovns	%edx, %eax	# tmp609,, _19
# r_segs.c:402:     offsetangle = abs(rw_normalangle-rw_angle1);
	.loc 1 402 17
	movl	%eax, -40(%rbp)	# _19, offsetangle
# r_segs.c:404:     if (offsetangle > ANG90)
	.loc 1 404 8
	cmpl	$1073741824, -40(%rbp)	#, offsetangle
	jbe	.L41	#,
# r_segs.c:405: 	offsetangle = ANG90;
	.loc 1 405 14
	movl	$1073741824, -40(%rbp)	#, offsetangle
.L41:
# r_segs.c:407:     distangle = ANG90 - offsetangle;
	.loc 1 407 15
	movl	$1073741824, %eax	#, tmp555
	subl	-40(%rbp), %eax	# offsetangle, tmp554
	movl	%eax, -32(%rbp)	# tmp554, distangle
# r_segs.c:408:     hyp = R_PointToDist (curline->v1->x, curline->v1->y);
	.loc 1 408 49
	movq	curline(%rip), %rax	# curline, curline.130_20
	movq	(%rax), %rax	# curline.130_20->v1, _21
# r_segs.c:408:     hyp = R_PointToDist (curline->v1->x, curline->v1->y);
	.loc 1 408 11
	movl	4(%rax), %edx	# _21->y, _22
# r_segs.c:408:     hyp = R_PointToDist (curline->v1->x, curline->v1->y);
	.loc 1 408 33
	movq	curline(%rip), %rax	# curline, curline.131_23
	movq	(%rax), %rax	# curline.131_23->v1, _24
# r_segs.c:408:     hyp = R_PointToDist (curline->v1->x, curline->v1->y);
	.loc 1 408 11
	movl	(%rax), %eax	# _24->x, _25
	movl	%edx, %esi	# _22,
	movl	%eax, %edi	# _25,
	call	R_PointToDist@PLT	#
	movl	%eax, -28(%rbp)	# tmp556, hyp
# r_segs.c:409:     sineval = finesine[distangle>>ANGLETOFINESHIFT];
	.loc 1 409 33
	movl	-32(%rbp), %eax	# distangle, tmp557
	shrl	$19, %eax	#, _26
# r_segs.c:409:     sineval = finesine[distangle>>ANGLETOFINESHIFT];
	.loc 1 409 13
	movl	%eax, %eax	# _26, tmp558
	leaq	0(,%rax,4), %rdx	#, tmp559
	leaq	finesine(%rip), %rax	#, tmp560
	movl	(%rdx,%rax), %eax	# finesine[_26], tmp561
	movl	%eax, -24(%rbp)	# tmp561, sineval
# r_segs.c:410:     rw_distance = FixedMul (hyp, sineval);
	.loc 1 410 19
	movl	-24(%rbp), %edx	# sineval, tmp562
	movl	-28(%rbp), %eax	# hyp, tmp563
	movl	%edx, %esi	# tmp562,
	movl	%eax, %edi	# tmp563,
	call	FixedMul@PLT	#
# r_segs.c:410:     rw_distance = FixedMul (hyp, sineval);
	.loc 1 410 17 discriminator 1
	movl	%eax, rw_distance(%rip)	# _27, rw_distance
# r_segs.c:413:     ds_p->x1 = rw_x = start;
	.loc 1 413 21
	movl	-52(%rbp), %eax	# start, tmp564
	movl	%eax, rw_x(%rip)	# tmp564, rw_x
# r_segs.c:413:     ds_p->x1 = rw_x = start;
	.loc 1 413 9
	movq	ds_p(%rip), %rax	# ds_p, ds_p.132_28
# r_segs.c:413:     ds_p->x1 = rw_x = start;
	.loc 1 413 14
	movl	rw_x(%rip), %edx	# rw_x, rw_x.133_29
	movl	%edx, 8(%rax)	# rw_x.133_29, ds_p.132_28->x1
# r_segs.c:414:     ds_p->x2 = stop;
	.loc 1 414 9
	movq	ds_p(%rip), %rax	# ds_p, ds_p.134_30
# r_segs.c:414:     ds_p->x2 = stop;
	.loc 1 414 14
	movl	-56(%rbp), %edx	# stop, tmp565
	movl	%edx, 12(%rax)	# tmp565, ds_p.134_30->x2
# r_segs.c:415:     ds_p->curline = curline;
	.loc 1 415 9
	movq	ds_p(%rip), %rax	# ds_p, ds_p.135_31
# r_segs.c:415:     ds_p->curline = curline;
	.loc 1 415 19
	movq	curline(%rip), %rdx	# curline, curline.136_32
	movq	%rdx, (%rax)	# curline.136_32, ds_p.135_31->curline
# r_segs.c:416:     rw_stopx = stop+1;
	.loc 1 416 20
	movl	-56(%rbp), %eax	# stop, tmp566
	addl	$1, %eax	#, _33
# r_segs.c:416:     rw_stopx = stop+1;
	.loc 1 416 14
	movl	%eax, rw_stopx(%rip)	# _33, rw_stopx
# r_segs.c:420: 	R_ScaleFromGlobalAngle (viewangle + xtoviewangle[start]);
	.loc 1 420 50
	movl	-52(%rbp), %eax	# start, tmp568
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp569
	leaq	xtoviewangle(%rip), %rax	#, tmp570
	movl	(%rdx,%rax), %edx	# xtoviewangle[start_498(D)], _34
# r_segs.c:420: 	R_ScaleFromGlobalAngle (viewangle + xtoviewangle[start]);
	.loc 1 420 2
	movl	viewangle(%rip), %eax	# viewangle, viewangle.137_35
	addl	%edx, %eax	# _34, _36
	movl	%eax, %edi	# _36,
	call	R_ScaleFromGlobalAngle@PLT	#
# r_segs.c:419:     ds_p->scale1 = rw_scale = 
	.loc 1 419 29
	movl	%eax, rw_scale(%rip)	# _37, rw_scale
# r_segs.c:419:     ds_p->scale1 = rw_scale = 
	.loc 1 419 9
	movq	ds_p(%rip), %rax	# ds_p, ds_p.138_38
# r_segs.c:419:     ds_p->scale1 = rw_scale = 
	.loc 1 419 18
	movl	rw_scale(%rip), %edx	# rw_scale, rw_scale.139_39
	movl	%edx, 16(%rax)	# rw_scale.139_39, ds_p.138_38->scale1
# r_segs.c:422:     if (stop > start )
	.loc 1 422 8
	movl	-56(%rbp), %eax	# stop, tmp571
	cmpl	-52(%rbp), %eax	# start, tmp571
	jle	.L42	#,
# r_segs.c:424: 	ds_p->scale2 = R_ScaleFromGlobalAngle (viewangle + xtoviewangle[stop]);
	.loc 1 424 65
	movl	-56(%rbp), %eax	# stop, tmp573
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp574
	leaq	xtoviewangle(%rip), %rax	#, tmp575
	movl	(%rdx,%rax), %edx	# xtoviewangle[stop_499(D)], _40
# r_segs.c:424: 	ds_p->scale2 = R_ScaleFromGlobalAngle (viewangle + xtoviewangle[stop]);
	.loc 1 424 17
	movl	viewangle(%rip), %eax	# viewangle, viewangle.140_41
	addl	%edx, %eax	# _40, _42
# r_segs.c:424: 	ds_p->scale2 = R_ScaleFromGlobalAngle (viewangle + xtoviewangle[stop]);
	.loc 1 424 6
	movq	ds_p(%rip), %rbx	# ds_p, ds_p.141_43
# r_segs.c:424: 	ds_p->scale2 = R_ScaleFromGlobalAngle (viewangle + xtoviewangle[stop]);
	.loc 1 424 17
	movl	%eax, %edi	# _42,
	call	R_ScaleFromGlobalAngle@PLT	#
# r_segs.c:424: 	ds_p->scale2 = R_ScaleFromGlobalAngle (viewangle + xtoviewangle[stop]);
	.loc 1 424 15 discriminator 1
	movl	%eax, 20(%rbx)	# _44, ds_p.141_43->scale2
# r_segs.c:426: 	    (ds_p->scale2 - rw_scale) / (stop-start);
	.loc 1 426 11
	movq	ds_p(%rip), %rax	# ds_p, ds_p.142_45
	movl	20(%rax), %edx	# ds_p.142_45->scale2, _46
# r_segs.c:426: 	    (ds_p->scale2 - rw_scale) / (stop-start);
	.loc 1 426 20
	movl	rw_scale(%rip), %eax	# rw_scale, rw_scale.143_47
	movl	%edx, %ecx	# _46, _46
	subl	%eax, %ecx	# rw_scale.143_47, _46
# r_segs.c:426: 	    (ds_p->scale2 - rw_scale) / (stop-start);
	.loc 1 426 39
	movl	-56(%rbp), %eax	# stop, tmp576
	subl	-52(%rbp), %eax	# start, tmp576
	movl	%eax, %esi	# tmp576, _49
# r_segs.c:426: 	    (ds_p->scale2 - rw_scale) / (stop-start);
	.loc 1 426 32
	movl	%ecx, %eax	# _48, _48
	cltd
	idivl	%esi	# _49
# r_segs.c:425: 	ds_p->scalestep = rw_scalestep = 
	.loc 1 425 33
	movl	%eax, rw_scalestep(%rip)	# _50, rw_scalestep
# r_segs.c:425: 	ds_p->scalestep = rw_scalestep = 
	.loc 1 425 6
	movq	ds_p(%rip), %rax	# ds_p, ds_p.144_51
# r_segs.c:425: 	ds_p->scalestep = rw_scalestep = 
	.loc 1 425 18
	movl	rw_scalestep(%rip), %edx	# rw_scalestep, rw_scalestep.145_52
	movl	%edx, 24(%rax)	# rw_scalestep.145_52, ds_p.144_51->scalestep
	jmp	.L43	#
.L42:
# r_segs.c:445: 	ds_p->scale2 = ds_p->scale1;
	.loc 1 445 21
	movq	ds_p(%rip), %rdx	# ds_p, ds_p.146_53
# r_segs.c:445: 	ds_p->scale2 = ds_p->scale1;
	.loc 1 445 6
	movq	ds_p(%rip), %rax	# ds_p, ds_p.147_54
# r_segs.c:445: 	ds_p->scale2 = ds_p->scale1;
	.loc 1 445 21
	movl	16(%rdx), %edx	# ds_p.146_53->scale1, _55
# r_segs.c:445: 	ds_p->scale2 = ds_p->scale1;
	.loc 1 445 15
	movl	%edx, 20(%rax)	# _55, ds_p.147_54->scale2
.L43:
# r_segs.c:450:     worldtop = frontsector->ceilingheight - viewz;
	.loc 1 450 27
	movq	frontsector(%rip), %rax	# frontsector, frontsector.148_56
	movl	4(%rax), %edx	# frontsector.148_56->ceilingheight, _57
# r_segs.c:450:     worldtop = frontsector->ceilingheight - viewz;
	.loc 1 450 43
	movl	viewz(%rip), %eax	# viewz, viewz.149_58
	subl	%eax, %edx	# viewz.149_58, _59
# r_segs.c:450:     worldtop = frontsector->ceilingheight - viewz;
	.loc 1 450 14
	movl	%edx, worldtop(%rip)	# _59, worldtop
# r_segs.c:451:     worldbottom = frontsector->floorheight - viewz;
	.loc 1 451 30
	movq	frontsector(%rip), %rax	# frontsector, frontsector.150_60
	movl	(%rax), %edx	# frontsector.150_60->floorheight, _61
# r_segs.c:451:     worldbottom = frontsector->floorheight - viewz;
	.loc 1 451 44
	movl	viewz(%rip), %eax	# viewz, viewz.151_62
	subl	%eax, %edx	# viewz.151_62, _63
# r_segs.c:451:     worldbottom = frontsector->floorheight - viewz;
	.loc 1 451 17
	movl	%edx, worldbottom(%rip)	# _63, worldbottom
# r_segs.c:453:     midtexture = toptexture = bottomtexture = maskedtexture = 0;
	.loc 1 453 61
	movl	$0, maskedtexture(%rip)	#, maskedtexture
# r_segs.c:453:     midtexture = toptexture = bottomtexture = maskedtexture = 0;
	.loc 1 453 45
	movl	$0, bottomtexture(%rip)	#, bottomtexture
# r_segs.c:453:     midtexture = toptexture = bottomtexture = maskedtexture = 0;
	.loc 1 453 29
	movl	bottomtexture(%rip), %eax	# bottomtexture, bottomtexture.152_64
	movl	%eax, toptexture(%rip)	# bottomtexture.152_64, toptexture
# r_segs.c:453:     midtexture = toptexture = bottomtexture = maskedtexture = 0;
	.loc 1 453 16
	movl	toptexture(%rip), %eax	# toptexture, toptexture.153_65
	movl	%eax, midtexture(%rip)	# toptexture.153_65, midtexture
# r_segs.c:454:     ds_p->maskedtexturecol = NULL;
	.loc 1 454 9
	movq	ds_p(%rip), %rax	# ds_p, ds_p.154_66
# r_segs.c:454:     ds_p->maskedtexturecol = NULL;
	.loc 1 454 28
	movq	$0, 56(%rax)	#, ds_p.154_66->maskedtexturecol
# r_segs.c:456:     if (!backsector)
	.loc 1 456 9
	movq	backsector(%rip), %rax	# backsector, backsector.155_67
# r_segs.c:456:     if (!backsector)
	.loc 1 456 8
	testq	%rax, %rax	# backsector.155_67
	jne	.L44	#,
# r_segs.c:459: 	midtexture = texturetranslation[sidedef->midtexture];
	.loc 1 459 33
	movq	texturetranslation(%rip), %rdx	# texturetranslation, texturetranslation.156_68
# r_segs.c:459: 	midtexture = texturetranslation[sidedef->midtexture];
	.loc 1 459 41
	movq	sidedef(%rip), %rax	# sidedef, sidedef.157_69
	movzwl	12(%rax), %eax	# sidedef.157_69->midtexture, _70
	movswq	%ax, %rax	# _70, _71
# r_segs.c:459: 	midtexture = texturetranslation[sidedef->midtexture];
	.loc 1 459 33
	salq	$2, %rax	#, _72
	addq	%rdx, %rax	# texturetranslation.156_68, _73
	movl	(%rax), %eax	# *_73, _74
# r_segs.c:459: 	midtexture = texturetranslation[sidedef->midtexture];
	.loc 1 459 13
	movl	%eax, midtexture(%rip)	# _74, midtexture
# r_segs.c:461: 	markfloor = markceiling = true;
	.loc 1 461 26
	movl	$1, markceiling(%rip)	#, markceiling
# r_segs.c:461: 	markfloor = markceiling = true;
	.loc 1 461 12
	movl	markceiling(%rip), %eax	# markceiling, markceiling.158_75
	movl	%eax, markfloor(%rip)	# markceiling.158_75, markfloor
# r_segs.c:462: 	if (linedef->flags & ML_DONTPEGBOTTOM)
	.loc 1 462 13
	movq	linedef(%rip), %rax	# linedef, linedef.159_76
	movzwl	24(%rax), %eax	# linedef.159_76->flags, _77
# r_segs.c:462: 	if (linedef->flags & ML_DONTPEGBOTTOM)
	.loc 1 462 21
	cwtl
	andl	$16, %eax	#, _79
# r_segs.c:462: 	if (linedef->flags & ML_DONTPEGBOTTOM)
	.loc 1 462 5
	testl	%eax, %eax	# _79
	je	.L45	#,
# r_segs.c:464: 	    vtop = frontsector->floorheight +
	.loc 1 464 24
	movq	frontsector(%rip), %rax	# frontsector, frontsector.160_80
	movl	(%rax), %edx	# frontsector.160_80->floorheight, _81
# r_segs.c:465: 		textureheight[sidedef->midtexture];
	.loc 1 465 16
	movq	textureheight(%rip), %rcx	# textureheight, textureheight.161_82
# r_segs.c:465: 		textureheight[sidedef->midtexture];
	.loc 1 465 24
	movq	sidedef(%rip), %rax	# sidedef, sidedef.162_83
	movzwl	12(%rax), %eax	# sidedef.162_83->midtexture, _84
	movswq	%ax, %rax	# _84, _85
# r_segs.c:465: 		textureheight[sidedef->midtexture];
	.loc 1 465 16
	salq	$2, %rax	#, _86
	addq	%rcx, %rax	# textureheight.161_82, _87
	movl	(%rax), %eax	# *_87, _88
# r_segs.c:464: 	    vtop = frontsector->floorheight +
	.loc 1 464 11
	addl	%edx, %eax	# _81, tmp579
	movl	%eax, -20(%rbp)	# tmp579, vtop
# r_segs.c:467: 	    rw_midtexturemid = vtop - viewz;	
	.loc 1 467 30
	movl	viewz(%rip), %eax	# viewz, viewz.163_89
	movl	-20(%rbp), %edx	# vtop, tmp580
	subl	%eax, %edx	# viewz.163_89, _90
# r_segs.c:467: 	    rw_midtexturemid = vtop - viewz;	
	.loc 1 467 23
	movl	%edx, rw_midtexturemid(%rip)	# _90, rw_midtexturemid
	jmp	.L46	#
.L45:
# r_segs.c:472: 	    rw_midtexturemid = worldtop;
	.loc 1 472 23
	movl	worldtop(%rip), %eax	# worldtop, worldtop.164_91
	movl	%eax, rw_midtexturemid(%rip)	# worldtop.164_91, rw_midtexturemid
.L46:
# r_segs.c:474: 	rw_midtexturemid += sidedef->rowoffset;
	.loc 1 474 29
	movq	sidedef(%rip), %rax	# sidedef, sidedef.165_92
	movl	4(%rax), %edx	# sidedef.165_92->rowoffset, _93
# r_segs.c:474: 	rw_midtexturemid += sidedef->rowoffset;
	.loc 1 474 19
	movl	rw_midtexturemid(%rip), %eax	# rw_midtexturemid, rw_midtexturemid.166_94
	addl	%edx, %eax	# _93, _95
	movl	%eax, rw_midtexturemid(%rip)	# _95, rw_midtexturemid
# r_segs.c:476: 	ds_p->silhouette = SIL_BOTH;
	.loc 1 476 6
	movq	ds_p(%rip), %rax	# ds_p, ds_p.167_96
# r_segs.c:476: 	ds_p->silhouette = SIL_BOTH;
	.loc 1 476 19
	movl	$3, 28(%rax)	#, ds_p.167_96->silhouette
# r_segs.c:477: 	ds_p->sprtopclip = screenheightarray;
	.loc 1 477 6
	movq	ds_p(%rip), %rax	# ds_p, ds_p.168_97
# r_segs.c:477: 	ds_p->sprtopclip = screenheightarray;
	.loc 1 477 19
	leaq	screenheightarray(%rip), %rdx	#, tmp581
	movq	%rdx, 40(%rax)	# tmp581, ds_p.168_97->sprtopclip
# r_segs.c:478: 	ds_p->sprbottomclip = negonearray;
	.loc 1 478 6
	movq	ds_p(%rip), %rax	# ds_p, ds_p.169_98
# r_segs.c:478: 	ds_p->sprbottomclip = negonearray;
	.loc 1 478 22
	leaq	negonearray(%rip), %rdx	#, tmp582
	movq	%rdx, 48(%rax)	# tmp582, ds_p.169_98->sprbottomclip
# r_segs.c:479: 	ds_p->bsilheight = MAXINT;
	.loc 1 479 6
	movq	ds_p(%rip), %rax	# ds_p, ds_p.170_99
# r_segs.c:479: 	ds_p->bsilheight = MAXINT;
	.loc 1 479 19
	movl	$2147483647, 32(%rax)	#, ds_p.170_99->bsilheight
# r_segs.c:480: 	ds_p->tsilheight = MININT;
	.loc 1 480 6
	movq	ds_p(%rip), %rax	# ds_p, ds_p.171_100
# r_segs.c:480: 	ds_p->tsilheight = MININT;
	.loc 1 480 19
	movl	$-2147483648, 36(%rax)	#, ds_p.171_100->tsilheight
	jmp	.L47	#
.L44:
# r_segs.c:485: 	ds_p->sprtopclip = ds_p->sprbottomclip = NULL;
	.loc 1 485 25
	movq	ds_p(%rip), %rax	# ds_p, ds_p.172_101
# r_segs.c:485: 	ds_p->sprtopclip = ds_p->sprbottomclip = NULL;
	.loc 1 485 41
	movq	$0, 48(%rax)	#, ds_p.172_101->sprbottomclip
# r_segs.c:485: 	ds_p->sprtopclip = ds_p->sprbottomclip = NULL;
	.loc 1 485 6
	movq	ds_p(%rip), %rdx	# ds_p, ds_p.173_102
# r_segs.c:485: 	ds_p->sprtopclip = ds_p->sprbottomclip = NULL;
	.loc 1 485 25
	movq	48(%rax), %rax	# ds_p.172_101->sprbottomclip, _103
# r_segs.c:485: 	ds_p->sprtopclip = ds_p->sprbottomclip = NULL;
	.loc 1 485 19
	movq	%rax, 40(%rdx)	# _103, ds_p.173_102->sprtopclip
# r_segs.c:486: 	ds_p->silhouette = 0;
	.loc 1 486 6
	movq	ds_p(%rip), %rax	# ds_p, ds_p.174_104
# r_segs.c:486: 	ds_p->silhouette = 0;
	.loc 1 486 19
	movl	$0, 28(%rax)	#, ds_p.174_104->silhouette
# r_segs.c:488: 	if (frontsector->floorheight > backsector->floorheight)
	.loc 1 488 17
	movq	frontsector(%rip), %rax	# frontsector, frontsector.175_105
	movl	(%rax), %edx	# frontsector.175_105->floorheight, _106
# r_segs.c:488: 	if (frontsector->floorheight > backsector->floorheight)
	.loc 1 488 43
	movq	backsector(%rip), %rax	# backsector, backsector.176_107
	movl	(%rax), %eax	# backsector.176_107->floorheight, _108
# r_segs.c:488: 	if (frontsector->floorheight > backsector->floorheight)
	.loc 1 488 5
	cmpl	%eax, %edx	# _108, _106
	jle	.L48	#,
# r_segs.c:490: 	    ds_p->silhouette = SIL_BOTTOM;
	.loc 1 490 10
	movq	ds_p(%rip), %rax	# ds_p, ds_p.177_109
# r_segs.c:490: 	    ds_p->silhouette = SIL_BOTTOM;
	.loc 1 490 23
	movl	$1, 28(%rax)	#, ds_p.177_109->silhouette
# r_segs.c:491: 	    ds_p->bsilheight = frontsector->floorheight;
	.loc 1 491 36
	movq	frontsector(%rip), %rdx	# frontsector, frontsector.178_110
# r_segs.c:491: 	    ds_p->bsilheight = frontsector->floorheight;
	.loc 1 491 10
	movq	ds_p(%rip), %rax	# ds_p, ds_p.179_111
# r_segs.c:491: 	    ds_p->bsilheight = frontsector->floorheight;
	.loc 1 491 36
	movl	(%rdx), %edx	# frontsector.178_110->floorheight, _112
# r_segs.c:491: 	    ds_p->bsilheight = frontsector->floorheight;
	.loc 1 491 23
	movl	%edx, 32(%rax)	# _112, ds_p.179_111->bsilheight
	jmp	.L49	#
.L48:
# r_segs.c:493: 	else if (backsector->floorheight > viewz)
	.loc 1 493 21
	movq	backsector(%rip), %rax	# backsector, backsector.180_113
	movl	(%rax), %edx	# backsector.180_113->floorheight, _114
# r_segs.c:493: 	else if (backsector->floorheight > viewz)
	.loc 1 493 35
	movl	viewz(%rip), %eax	# viewz, viewz.181_115
# r_segs.c:493: 	else if (backsector->floorheight > viewz)
	.loc 1 493 10
	cmpl	%eax, %edx	# viewz.181_115, _114
	jle	.L49	#,
# r_segs.c:495: 	    ds_p->silhouette = SIL_BOTTOM;
	.loc 1 495 10
	movq	ds_p(%rip), %rax	# ds_p, ds_p.182_116
# r_segs.c:495: 	    ds_p->silhouette = SIL_BOTTOM;
	.loc 1 495 23
	movl	$1, 28(%rax)	#, ds_p.182_116->silhouette
# r_segs.c:496: 	    ds_p->bsilheight = MAXINT;
	.loc 1 496 10
	movq	ds_p(%rip), %rax	# ds_p, ds_p.183_117
# r_segs.c:496: 	    ds_p->bsilheight = MAXINT;
	.loc 1 496 23
	movl	$2147483647, 32(%rax)	#, ds_p.183_117->bsilheight
.L49:
# r_segs.c:500: 	if (frontsector->ceilingheight < backsector->ceilingheight)
	.loc 1 500 17
	movq	frontsector(%rip), %rax	# frontsector, frontsector.184_118
	movl	4(%rax), %edx	# frontsector.184_118->ceilingheight, _119
# r_segs.c:500: 	if (frontsector->ceilingheight < backsector->ceilingheight)
	.loc 1 500 45
	movq	backsector(%rip), %rax	# backsector, backsector.185_120
	movl	4(%rax), %eax	# backsector.185_120->ceilingheight, _121
# r_segs.c:500: 	if (frontsector->ceilingheight < backsector->ceilingheight)
	.loc 1 500 5
	cmpl	%eax, %edx	# _121, _119
	jge	.L50	#,
# r_segs.c:502: 	    ds_p->silhouette |= SIL_TOP;
	.loc 1 502 10
	movq	ds_p(%rip), %rax	# ds_p, ds_p.186_122
	movl	28(%rax), %edx	# ds_p.186_122->silhouette, _123
	movq	ds_p(%rip), %rax	# ds_p, ds_p.187_124
# r_segs.c:502: 	    ds_p->silhouette |= SIL_TOP;
	.loc 1 502 23
	orl	$2, %edx	#, _125
	movl	%edx, 28(%rax)	# _125, ds_p.187_124->silhouette
# r_segs.c:503: 	    ds_p->tsilheight = frontsector->ceilingheight;
	.loc 1 503 36
	movq	frontsector(%rip), %rdx	# frontsector, frontsector.188_126
# r_segs.c:503: 	    ds_p->tsilheight = frontsector->ceilingheight;
	.loc 1 503 10
	movq	ds_p(%rip), %rax	# ds_p, ds_p.189_127
# r_segs.c:503: 	    ds_p->tsilheight = frontsector->ceilingheight;
	.loc 1 503 36
	movl	4(%rdx), %edx	# frontsector.188_126->ceilingheight, _128
# r_segs.c:503: 	    ds_p->tsilheight = frontsector->ceilingheight;
	.loc 1 503 23
	movl	%edx, 36(%rax)	# _128, ds_p.189_127->tsilheight
	jmp	.L51	#
.L50:
# r_segs.c:505: 	else if (backsector->ceilingheight < viewz)
	.loc 1 505 21
	movq	backsector(%rip), %rax	# backsector, backsector.190_129
	movl	4(%rax), %edx	# backsector.190_129->ceilingheight, _130
# r_segs.c:505: 	else if (backsector->ceilingheight < viewz)
	.loc 1 505 37
	movl	viewz(%rip), %eax	# viewz, viewz.191_131
# r_segs.c:505: 	else if (backsector->ceilingheight < viewz)
	.loc 1 505 10
	cmpl	%eax, %edx	# viewz.191_131, _130
	jge	.L51	#,
# r_segs.c:507: 	    ds_p->silhouette |= SIL_TOP;
	.loc 1 507 10
	movq	ds_p(%rip), %rax	# ds_p, ds_p.192_132
	movl	28(%rax), %edx	# ds_p.192_132->silhouette, _133
	movq	ds_p(%rip), %rax	# ds_p, ds_p.193_134
# r_segs.c:507: 	    ds_p->silhouette |= SIL_TOP;
	.loc 1 507 23
	orl	$2, %edx	#, _135
	movl	%edx, 28(%rax)	# _135, ds_p.193_134->silhouette
# r_segs.c:508: 	    ds_p->tsilheight = MININT;
	.loc 1 508 10
	movq	ds_p(%rip), %rax	# ds_p, ds_p.194_136
# r_segs.c:508: 	    ds_p->tsilheight = MININT;
	.loc 1 508 23
	movl	$-2147483648, 36(%rax)	#, ds_p.194_136->tsilheight
.L51:
# r_segs.c:512: 	if (backsector->ceilingheight <= frontsector->floorheight)
	.loc 1 512 16
	movq	backsector(%rip), %rax	# backsector, backsector.195_137
	movl	4(%rax), %edx	# backsector.195_137->ceilingheight, _138
# r_segs.c:512: 	if (backsector->ceilingheight <= frontsector->floorheight)
	.loc 1 512 46
	movq	frontsector(%rip), %rax	# frontsector, frontsector.196_139
	movl	(%rax), %eax	# frontsector.196_139->floorheight, _140
# r_segs.c:512: 	if (backsector->ceilingheight <= frontsector->floorheight)
	.loc 1 512 5
	cmpl	%eax, %edx	# _140, _138
	jg	.L52	#,
# r_segs.c:514: 	    ds_p->sprbottomclip = negonearray;
	.loc 1 514 10
	movq	ds_p(%rip), %rax	# ds_p, ds_p.197_141
# r_segs.c:514: 	    ds_p->sprbottomclip = negonearray;
	.loc 1 514 26
	leaq	negonearray(%rip), %rdx	#, tmp583
	movq	%rdx, 48(%rax)	# tmp583, ds_p.197_141->sprbottomclip
# r_segs.c:515: 	    ds_p->bsilheight = MAXINT;
	.loc 1 515 10
	movq	ds_p(%rip), %rax	# ds_p, ds_p.198_142
# r_segs.c:515: 	    ds_p->bsilheight = MAXINT;
	.loc 1 515 23
	movl	$2147483647, 32(%rax)	#, ds_p.198_142->bsilheight
# r_segs.c:516: 	    ds_p->silhouette |= SIL_BOTTOM;
	.loc 1 516 10
	movq	ds_p(%rip), %rax	# ds_p, ds_p.199_143
	movl	28(%rax), %edx	# ds_p.199_143->silhouette, _144
	movq	ds_p(%rip), %rax	# ds_p, ds_p.200_145
# r_segs.c:516: 	    ds_p->silhouette |= SIL_BOTTOM;
	.loc 1 516 23
	orl	$1, %edx	#, _146
	movl	%edx, 28(%rax)	# _146, ds_p.200_145->silhouette
.L52:
# r_segs.c:519: 	if (backsector->floorheight >= frontsector->ceilingheight)
	.loc 1 519 16
	movq	backsector(%rip), %rax	# backsector, backsector.201_147
	movl	(%rax), %edx	# backsector.201_147->floorheight, _148
# r_segs.c:519: 	if (backsector->floorheight >= frontsector->ceilingheight)
	.loc 1 519 44
	movq	frontsector(%rip), %rax	# frontsector, frontsector.202_149
	movl	4(%rax), %eax	# frontsector.202_149->ceilingheight, _150
# r_segs.c:519: 	if (backsector->floorheight >= frontsector->ceilingheight)
	.loc 1 519 5
	cmpl	%eax, %edx	# _150, _148
	jl	.L53	#,
# r_segs.c:521: 	    ds_p->sprtopclip = screenheightarray;
	.loc 1 521 10
	movq	ds_p(%rip), %rax	# ds_p, ds_p.203_151
# r_segs.c:521: 	    ds_p->sprtopclip = screenheightarray;
	.loc 1 521 23
	leaq	screenheightarray(%rip), %rdx	#, tmp584
	movq	%rdx, 40(%rax)	# tmp584, ds_p.203_151->sprtopclip
# r_segs.c:522: 	    ds_p->tsilheight = MININT;
	.loc 1 522 10
	movq	ds_p(%rip), %rax	# ds_p, ds_p.204_152
# r_segs.c:522: 	    ds_p->tsilheight = MININT;
	.loc 1 522 23
	movl	$-2147483648, 36(%rax)	#, ds_p.204_152->tsilheight
# r_segs.c:523: 	    ds_p->silhouette |= SIL_TOP;
	.loc 1 523 10
	movq	ds_p(%rip), %rax	# ds_p, ds_p.205_153
	movl	28(%rax), %edx	# ds_p.205_153->silhouette, _154
	movq	ds_p(%rip), %rax	# ds_p, ds_p.206_155
# r_segs.c:523: 	    ds_p->silhouette |= SIL_TOP;
	.loc 1 523 23
	orl	$2, %edx	#, _156
	movl	%edx, 28(%rax)	# _156, ds_p.206_155->silhouette
.L53:
# r_segs.c:526: 	worldhigh = backsector->ceilingheight - viewz;
	.loc 1 526 24
	movq	backsector(%rip), %rax	# backsector, backsector.207_157
	movl	4(%rax), %edx	# backsector.207_157->ceilingheight, _158
# r_segs.c:526: 	worldhigh = backsector->ceilingheight - viewz;
	.loc 1 526 40
	movl	viewz(%rip), %eax	# viewz, viewz.208_159
	subl	%eax, %edx	# viewz.208_159, _160
# r_segs.c:526: 	worldhigh = backsector->ceilingheight - viewz;
	.loc 1 526 12
	movl	%edx, worldhigh(%rip)	# _160, worldhigh
# r_segs.c:527: 	worldlow = backsector->floorheight - viewz;
	.loc 1 527 23
	movq	backsector(%rip), %rax	# backsector, backsector.209_161
	movl	(%rax), %edx	# backsector.209_161->floorheight, _162
# r_segs.c:527: 	worldlow = backsector->floorheight - viewz;
	.loc 1 527 37
	movl	viewz(%rip), %eax	# viewz, viewz.210_163
	subl	%eax, %edx	# viewz.210_163, _164
# r_segs.c:527: 	worldlow = backsector->floorheight - viewz;
	.loc 1 527 11
	movl	%edx, worldlow(%rip)	# _164, worldlow
# r_segs.c:530: 	if (frontsector->ceilingpic == skyflatnum 
	.loc 1 530 17
	movq	frontsector(%rip), %rax	# frontsector, frontsector.211_165
	movzwl	10(%rax), %eax	# frontsector.211_165->ceilingpic, _166
	movswl	%ax, %edx	# _166, _167
# r_segs.c:530: 	if (frontsector->ceilingpic == skyflatnum 
	.loc 1 530 30
	movl	skyflatnum(%rip), %eax	# skyflatnum, skyflatnum.212_168
# r_segs.c:530: 	if (frontsector->ceilingpic == skyflatnum 
	.loc 1 530 5
	cmpl	%eax, %edx	# skyflatnum.212_168, _167
	jne	.L54	#,
# r_segs.c:531: 	    && backsector->ceilingpic == skyflatnum)
	.loc 1 531 19
	movq	backsector(%rip), %rax	# backsector, backsector.213_169
	movzwl	10(%rax), %eax	# backsector.213_169->ceilingpic, _170
	movswl	%ax, %edx	# _170, _171
# r_segs.c:531: 	    && backsector->ceilingpic == skyflatnum)
	.loc 1 531 32
	movl	skyflatnum(%rip), %eax	# skyflatnum, skyflatnum.214_172
# r_segs.c:531: 	    && backsector->ceilingpic == skyflatnum)
	.loc 1 531 6
	cmpl	%eax, %edx	# skyflatnum.214_172, _171
	jne	.L54	#,
# r_segs.c:533: 	    worldtop = worldhigh;
	.loc 1 533 15
	movl	worldhigh(%rip), %eax	# worldhigh, worldhigh.215_173
	movl	%eax, worldtop(%rip)	# worldhigh.215_173, worldtop
.L54:
# r_segs.c:537: 	if (worldlow != worldbottom 
	.loc 1 537 15
	movl	worldlow(%rip), %edx	# worldlow, worldlow.216_174
	movl	worldbottom(%rip), %eax	# worldbottom, worldbottom.217_175
# r_segs.c:537: 	if (worldlow != worldbottom 
	.loc 1 537 5
	cmpl	%eax, %edx	# worldbottom.217_175, worldlow.216_174
	jne	.L55	#,
# r_segs.c:538: 	    || backsector->floorpic != frontsector->floorpic
	.loc 1 538 19
	movq	backsector(%rip), %rax	# backsector, backsector.218_176
	movzwl	8(%rax), %edx	# backsector.218_176->floorpic, _177
# r_segs.c:538: 	    || backsector->floorpic != frontsector->floorpic
	.loc 1 538 44
	movq	frontsector(%rip), %rax	# frontsector, frontsector.219_178
	movzwl	8(%rax), %eax	# frontsector.219_178->floorpic, _179
# r_segs.c:538: 	    || backsector->floorpic != frontsector->floorpic
	.loc 1 538 6
	cmpw	%ax, %dx	# _179, _177
	jne	.L55	#,
# r_segs.c:539: 	    || backsector->lightlevel != frontsector->lightlevel)
	.loc 1 539 19
	movq	backsector(%rip), %rax	# backsector, backsector.220_180
	movzwl	12(%rax), %edx	# backsector.220_180->lightlevel, _181
# r_segs.c:539: 	    || backsector->lightlevel != frontsector->lightlevel)
	.loc 1 539 46
	movq	frontsector(%rip), %rax	# frontsector, frontsector.221_182
	movzwl	12(%rax), %eax	# frontsector.221_182->lightlevel, _183
# r_segs.c:539: 	    || backsector->lightlevel != frontsector->lightlevel)
	.loc 1 539 6
	cmpw	%ax, %dx	# _183, _181
	je	.L56	#,
.L55:
# r_segs.c:541: 	    markfloor = true;
	.loc 1 541 16
	movl	$1, markfloor(%rip)	#, markfloor
	jmp	.L57	#
.L56:
# r_segs.c:546: 	    markfloor = false;
	.loc 1 546 16
	movl	$0, markfloor(%rip)	#, markfloor
.L57:
# r_segs.c:550: 	if (worldhigh != worldtop 
	.loc 1 550 16
	movl	worldhigh(%rip), %edx	# worldhigh, worldhigh.222_184
	movl	worldtop(%rip), %eax	# worldtop, worldtop.223_185
# r_segs.c:550: 	if (worldhigh != worldtop 
	.loc 1 550 5
	cmpl	%eax, %edx	# worldtop.223_185, worldhigh.222_184
	jne	.L58	#,
# r_segs.c:551: 	    || backsector->ceilingpic != frontsector->ceilingpic
	.loc 1 551 19
	movq	backsector(%rip), %rax	# backsector, backsector.224_186
	movzwl	10(%rax), %edx	# backsector.224_186->ceilingpic, _187
# r_segs.c:551: 	    || backsector->ceilingpic != frontsector->ceilingpic
	.loc 1 551 46
	movq	frontsector(%rip), %rax	# frontsector, frontsector.225_188
	movzwl	10(%rax), %eax	# frontsector.225_188->ceilingpic, _189
# r_segs.c:551: 	    || backsector->ceilingpic != frontsector->ceilingpic
	.loc 1 551 6
	cmpw	%ax, %dx	# _189, _187
	jne	.L58	#,
# r_segs.c:552: 	    || backsector->lightlevel != frontsector->lightlevel)
	.loc 1 552 19
	movq	backsector(%rip), %rax	# backsector, backsector.226_190
	movzwl	12(%rax), %edx	# backsector.226_190->lightlevel, _191
# r_segs.c:552: 	    || backsector->lightlevel != frontsector->lightlevel)
	.loc 1 552 46
	movq	frontsector(%rip), %rax	# frontsector, frontsector.227_192
	movzwl	12(%rax), %eax	# frontsector.227_192->lightlevel, _193
# r_segs.c:552: 	    || backsector->lightlevel != frontsector->lightlevel)
	.loc 1 552 6
	cmpw	%ax, %dx	# _193, _191
	je	.L59	#,
.L58:
# r_segs.c:554: 	    markceiling = true;
	.loc 1 554 18
	movl	$1, markceiling(%rip)	#, markceiling
	jmp	.L60	#
.L59:
# r_segs.c:559: 	    markceiling = false;
	.loc 1 559 18
	movl	$0, markceiling(%rip)	#, markceiling
.L60:
# r_segs.c:562: 	if (backsector->ceilingheight <= frontsector->floorheight
	.loc 1 562 16
	movq	backsector(%rip), %rax	# backsector, backsector.228_194
	movl	4(%rax), %edx	# backsector.228_194->ceilingheight, _195
# r_segs.c:562: 	if (backsector->ceilingheight <= frontsector->floorheight
	.loc 1 562 46
	movq	frontsector(%rip), %rax	# frontsector, frontsector.229_196
	movl	(%rax), %eax	# frontsector.229_196->floorheight, _197
# r_segs.c:562: 	if (backsector->ceilingheight <= frontsector->floorheight
	.loc 1 562 5
	cmpl	%eax, %edx	# _197, _195
	jle	.L61	#,
# r_segs.c:563: 	    || backsector->floorheight >= frontsector->ceilingheight)
	.loc 1 563 19
	movq	backsector(%rip), %rax	# backsector, backsector.230_198
	movl	(%rax), %edx	# backsector.230_198->floorheight, _199
# r_segs.c:563: 	    || backsector->floorheight >= frontsector->ceilingheight)
	.loc 1 563 47
	movq	frontsector(%rip), %rax	# frontsector, frontsector.231_200
	movl	4(%rax), %eax	# frontsector.231_200->ceilingheight, _201
# r_segs.c:563: 	    || backsector->floorheight >= frontsector->ceilingheight)
	.loc 1 563 6
	cmpl	%eax, %edx	# _201, _199
	jl	.L62	#,
.L61:
# r_segs.c:566: 	    markceiling = markfloor = true;
	.loc 1 566 30
	movl	$1, markfloor(%rip)	#, markfloor
# r_segs.c:566: 	    markceiling = markfloor = true;
	.loc 1 566 18
	movl	markfloor(%rip), %eax	# markfloor, markfloor.232_202
	movl	%eax, markceiling(%rip)	# markfloor.232_202, markceiling
.L62:
# r_segs.c:570: 	if (worldhigh < worldtop)
	.loc 1 570 16
	movl	worldhigh(%rip), %edx	# worldhigh, worldhigh.233_203
	movl	worldtop(%rip), %eax	# worldtop, worldtop.234_204
# r_segs.c:570: 	if (worldhigh < worldtop)
	.loc 1 570 5
	cmpl	%eax, %edx	# worldtop.234_204, worldhigh.233_203
	jge	.L63	#,
# r_segs.c:573: 	    toptexture = texturetranslation[sidedef->toptexture];
	.loc 1 573 37
	movq	texturetranslation(%rip), %rdx	# texturetranslation, texturetranslation.235_205
# r_segs.c:573: 	    toptexture = texturetranslation[sidedef->toptexture];
	.loc 1 573 45
	movq	sidedef(%rip), %rax	# sidedef, sidedef.236_206
	movzwl	8(%rax), %eax	# sidedef.236_206->toptexture, _207
	movswq	%ax, %rax	# _207, _208
# r_segs.c:573: 	    toptexture = texturetranslation[sidedef->toptexture];
	.loc 1 573 37
	salq	$2, %rax	#, _209
	addq	%rdx, %rax	# texturetranslation.235_205, _210
	movl	(%rax), %eax	# *_210, _211
# r_segs.c:573: 	    toptexture = texturetranslation[sidedef->toptexture];
	.loc 1 573 17
	movl	%eax, toptexture(%rip)	# _211, toptexture
# r_segs.c:574: 	    if (linedef->flags & ML_DONTPEGTOP)
	.loc 1 574 17
	movq	linedef(%rip), %rax	# linedef, linedef.237_212
	movzwl	24(%rax), %eax	# linedef.237_212->flags, _213
# r_segs.c:574: 	    if (linedef->flags & ML_DONTPEGTOP)
	.loc 1 574 25
	cwtl
	andl	$8, %eax	#, _215
# r_segs.c:574: 	    if (linedef->flags & ML_DONTPEGTOP)
	.loc 1 574 9
	testl	%eax, %eax	# _215
	je	.L64	#,
# r_segs.c:577: 		rw_toptexturemid = worldtop;
	.loc 1 577 20
	movl	worldtop(%rip), %eax	# worldtop, worldtop.238_216
	movl	%eax, rw_toptexturemid(%rip)	# worldtop.238_216, rw_toptexturemid
	jmp	.L63	#
.L64:
# r_segs.c:582: 		    backsector->ceilingheight
	.loc 1 582 17
	movq	backsector(%rip), %rax	# backsector, backsector.239_217
	movl	4(%rax), %edx	# backsector.239_217->ceilingheight, _218
# r_segs.c:583: 		    + textureheight[sidedef->toptexture];
	.loc 1 583 22
	movq	textureheight(%rip), %rcx	# textureheight, textureheight.240_219
# r_segs.c:583: 		    + textureheight[sidedef->toptexture];
	.loc 1 583 30
	movq	sidedef(%rip), %rax	# sidedef, sidedef.241_220
	movzwl	8(%rax), %eax	# sidedef.241_220->toptexture, _221
	movswq	%ax, %rax	# _221, _222
# r_segs.c:583: 		    + textureheight[sidedef->toptexture];
	.loc 1 583 22
	salq	$2, %rax	#, _223
	addq	%rcx, %rax	# textureheight.240_219, _224
	movl	(%rax), %eax	# *_224, _225
# r_segs.c:581: 		vtop =
	.loc 1 581 8
	addl	%edx, %eax	# _218, tmp585
	movl	%eax, -20(%rbp)	# tmp585, vtop
# r_segs.c:586: 		rw_toptexturemid = vtop - viewz;	
	.loc 1 586 27
	movl	viewz(%rip), %eax	# viewz, viewz.242_226
	movl	-20(%rbp), %edx	# vtop, tmp586
	subl	%eax, %edx	# viewz.242_226, _227
# r_segs.c:586: 		rw_toptexturemid = vtop - viewz;	
	.loc 1 586 20
	movl	%edx, rw_toptexturemid(%rip)	# _227, rw_toptexturemid
.L63:
# r_segs.c:589: 	if (worldlow > worldbottom)
	.loc 1 589 15
	movl	worldlow(%rip), %edx	# worldlow, worldlow.243_228
	movl	worldbottom(%rip), %eax	# worldbottom, worldbottom.244_229
# r_segs.c:589: 	if (worldlow > worldbottom)
	.loc 1 589 5
	cmpl	%eax, %edx	# worldbottom.244_229, worldlow.243_228
	jle	.L65	#,
# r_segs.c:592: 	    bottomtexture = texturetranslation[sidedef->bottomtexture];
	.loc 1 592 40
	movq	texturetranslation(%rip), %rdx	# texturetranslation, texturetranslation.245_230
# r_segs.c:592: 	    bottomtexture = texturetranslation[sidedef->bottomtexture];
	.loc 1 592 48
	movq	sidedef(%rip), %rax	# sidedef, sidedef.246_231
	movzwl	10(%rax), %eax	# sidedef.246_231->bottomtexture, _232
	movswq	%ax, %rax	# _232, _233
# r_segs.c:592: 	    bottomtexture = texturetranslation[sidedef->bottomtexture];
	.loc 1 592 40
	salq	$2, %rax	#, _234
	addq	%rdx, %rax	# texturetranslation.245_230, _235
	movl	(%rax), %eax	# *_235, _236
# r_segs.c:592: 	    bottomtexture = texturetranslation[sidedef->bottomtexture];
	.loc 1 592 20
	movl	%eax, bottomtexture(%rip)	# _236, bottomtexture
# r_segs.c:594: 	    if (linedef->flags & ML_DONTPEGBOTTOM )
	.loc 1 594 17
	movq	linedef(%rip), %rax	# linedef, linedef.247_237
	movzwl	24(%rax), %eax	# linedef.247_237->flags, _238
# r_segs.c:594: 	    if (linedef->flags & ML_DONTPEGBOTTOM )
	.loc 1 594 25
	cwtl
	andl	$16, %eax	#, _240
# r_segs.c:594: 	    if (linedef->flags & ML_DONTPEGBOTTOM )
	.loc 1 594 9
	testl	%eax, %eax	# _240
	je	.L66	#,
# r_segs.c:598: 		rw_bottomtexturemid = worldtop;
	.loc 1 598 23
	movl	worldtop(%rip), %eax	# worldtop, worldtop.248_241
	movl	%eax, rw_bottomtexturemid(%rip)	# worldtop.248_241, rw_bottomtexturemid
	jmp	.L65	#
.L66:
# r_segs.c:601: 		rw_bottomtexturemid = worldlow;
	.loc 1 601 23
	movl	worldlow(%rip), %eax	# worldlow, worldlow.249_242
	movl	%eax, rw_bottomtexturemid(%rip)	# worldlow.249_242, rw_bottomtexturemid
.L65:
# r_segs.c:603: 	rw_toptexturemid += sidedef->rowoffset;
	.loc 1 603 29
	movq	sidedef(%rip), %rax	# sidedef, sidedef.250_243
	movl	4(%rax), %edx	# sidedef.250_243->rowoffset, _244
# r_segs.c:603: 	rw_toptexturemid += sidedef->rowoffset;
	.loc 1 603 19
	movl	rw_toptexturemid(%rip), %eax	# rw_toptexturemid, rw_toptexturemid.251_245
	addl	%edx, %eax	# _244, _246
	movl	%eax, rw_toptexturemid(%rip)	# _246, rw_toptexturemid
# r_segs.c:604: 	rw_bottomtexturemid += sidedef->rowoffset;
	.loc 1 604 32
	movq	sidedef(%rip), %rax	# sidedef, sidedef.252_247
	movl	4(%rax), %edx	# sidedef.252_247->rowoffset, _248
# r_segs.c:604: 	rw_bottomtexturemid += sidedef->rowoffset;
	.loc 1 604 22
	movl	rw_bottomtexturemid(%rip), %eax	# rw_bottomtexturemid, rw_bottomtexturemid.253_249
	addl	%edx, %eax	# _248, _250
	movl	%eax, rw_bottomtexturemid(%rip)	# _250, rw_bottomtexturemid
# r_segs.c:607: 	if (sidedef->midtexture)
	.loc 1 607 13
	movq	sidedef(%rip), %rax	# sidedef, sidedef.254_251
	movzwl	12(%rax), %eax	# sidedef.254_251->midtexture, _252
# r_segs.c:607: 	if (sidedef->midtexture)
	.loc 1 607 5
	testw	%ax, %ax	# _252
	je	.L47	#,
# r_segs.c:610: 	    maskedtexture = true;
	.loc 1 610 20
	movl	$1, maskedtexture(%rip)	#, maskedtexture
# r_segs.c:611: 	    ds_p->maskedtexturecol = maskedtexturecol = lastopening - rw_x;
	.loc 1 611 62
	movq	lastopening(%rip), %rax	# lastopening, lastopening.255_253
	movl	rw_x(%rip), %edx	# rw_x, rw_x.256_254
	movslq	%edx, %rdx	# rw_x.256_254, _255
	addq	%rdx, %rdx	# _256
	negq	%rdx	# _257
	addq	%rdx, %rax	# _257, _258
# r_segs.c:611: 	    ds_p->maskedtexturecol = maskedtexturecol = lastopening - rw_x;
	.loc 1 611 48
	movq	%rax, maskedtexturecol(%rip)	# _258, maskedtexturecol
# r_segs.c:611: 	    ds_p->maskedtexturecol = maskedtexturecol = lastopening - rw_x;
	.loc 1 611 10
	movq	ds_p(%rip), %rax	# ds_p, ds_p.257_259
# r_segs.c:611: 	    ds_p->maskedtexturecol = maskedtexturecol = lastopening - rw_x;
	.loc 1 611 29
	movq	maskedtexturecol(%rip), %rdx	# maskedtexturecol, maskedtexturecol.258_260
	movq	%rdx, 56(%rax)	# maskedtexturecol.258_260, ds_p.257_259->maskedtexturecol
# r_segs.c:612: 	    lastopening += rw_stopx - rw_x;
	.loc 1 612 18
	movq	lastopening(%rip), %rdx	# lastopening, lastopening.259_261
# r_segs.c:612: 	    lastopening += rw_stopx - rw_x;
	.loc 1 612 30
	movl	rw_stopx(%rip), %ecx	# rw_stopx, rw_stopx.260_262
	movl	rw_x(%rip), %eax	# rw_x, rw_x.261_263
	subl	%eax, %ecx	# rw_x.261_263, _264
	movslq	%ecx, %rax	# _264, _265
# r_segs.c:612: 	    lastopening += rw_stopx - rw_x;
	.loc 1 612 18
	addq	%rax, %rax	# _266
	addq	%rdx, %rax	# lastopening.259_261, _267
	movq	%rax, lastopening(%rip)	# _267, lastopening
.L47:
# r_segs.c:617:     segtextured = midtexture | toptexture | bottomtexture | maskedtexture;
	.loc 1 617 30
	movl	midtexture(%rip), %edx	# midtexture, midtexture.262_268
	movl	toptexture(%rip), %eax	# toptexture, toptexture.263_269
	orl	%eax, %edx	# toptexture.263_269, _270
# r_segs.c:617:     segtextured = midtexture | toptexture | bottomtexture | maskedtexture;
	.loc 1 617 43
	movl	bottomtexture(%rip), %eax	# bottomtexture, bottomtexture.264_271
	orl	%edx, %eax	# _270, _272
	movl	%eax, %edx	# _272, _273
# r_segs.c:617:     segtextured = midtexture | toptexture | bottomtexture | maskedtexture;
	.loc 1 617 59
	movl	maskedtexture(%rip), %eax	# maskedtexture, maskedtexture.265_274
	orl	%edx, %eax	# _273, _275
# r_segs.c:617:     segtextured = midtexture | toptexture | bottomtexture | maskedtexture;
	.loc 1 617 17
	movl	%eax, segtextured(%rip)	# _275, segtextured
# r_segs.c:619:     if (segtextured)
	.loc 1 619 9
	movl	segtextured(%rip), %eax	# segtextured, segtextured.266_276
# r_segs.c:619:     if (segtextured)
	.loc 1 619 8
	testl	%eax, %eax	# segtextured.266_276
	je	.L67	#,
# r_segs.c:621: 	offsetangle = rw_normalangle-rw_angle1;
	.loc 1 621 30
	movl	rw_normalangle(%rip), %eax	# rw_normalangle, rw_normalangle.267_277
	movl	rw_angle1(%rip), %edx	# rw_angle1, rw_angle1.268_278
# r_segs.c:621: 	offsetangle = rw_normalangle-rw_angle1;
	.loc 1 621 14
	subl	%edx, %eax	# rw_angle1.269_279, tmp587
	movl	%eax, -40(%rbp)	# tmp587, offsetangle
# r_segs.c:623: 	if (offsetangle > ANG180)
	.loc 1 623 5
	cmpl	$-2147483648, -40(%rbp)	#, offsetangle
	jbe	.L68	#,
# r_segs.c:624: 	    offsetangle = -offsetangle;
	.loc 1 624 18
	negl	-40(%rbp)	# offsetangle
.L68:
# r_segs.c:626: 	if (offsetangle > ANG90)
	.loc 1 626 5
	cmpl	$1073741824, -40(%rbp)	#, offsetangle
	jbe	.L69	#,
# r_segs.c:627: 	    offsetangle = ANG90;
	.loc 1 627 18
	movl	$1073741824, -40(%rbp)	#, offsetangle
.L69:
# r_segs.c:629: 	sineval = finesine[offsetangle >>ANGLETOFINESHIFT];
	.loc 1 629 33
	movl	-40(%rbp), %eax	# offsetangle, tmp588
	shrl	$19, %eax	#, _280
# r_segs.c:629: 	sineval = finesine[offsetangle >>ANGLETOFINESHIFT];
	.loc 1 629 10
	movl	%eax, %eax	# _280, tmp589
	leaq	0(,%rax,4), %rdx	#, tmp590
	leaq	finesine(%rip), %rax	#, tmp591
	movl	(%rdx,%rax), %eax	# finesine[_280], tmp592
	movl	%eax, -24(%rbp)	# tmp592, sineval
# r_segs.c:630: 	rw_offset = FixedMul (hyp, sineval);
	.loc 1 630 14
	movl	-24(%rbp), %edx	# sineval, tmp593
	movl	-28(%rbp), %eax	# hyp, tmp594
	movl	%edx, %esi	# tmp593,
	movl	%eax, %edi	# tmp594,
	call	FixedMul@PLT	#
# r_segs.c:630: 	rw_offset = FixedMul (hyp, sineval);
	.loc 1 630 12 discriminator 1
	movl	%eax, rw_offset(%rip)	# _281, rw_offset
# r_segs.c:632: 	if (rw_normalangle-rw_angle1 < ANG180)
	.loc 1 632 20
	movl	rw_normalangle(%rip), %eax	# rw_normalangle, rw_normalangle.270_282
	movl	rw_angle1(%rip), %edx	# rw_angle1, rw_angle1.271_283
	subl	%edx, %eax	# rw_angle1.272_284, _285
# r_segs.c:632: 	if (rw_normalangle-rw_angle1 < ANG180)
	.loc 1 632 5
	testl	%eax, %eax	# _286
	js	.L70	#,
# r_segs.c:633: 	    rw_offset = -rw_offset;
	.loc 1 633 18
	movl	rw_offset(%rip), %eax	# rw_offset, rw_offset.273_287
	negl	%eax	# _288
# r_segs.c:633: 	    rw_offset = -rw_offset;
	.loc 1 633 16
	movl	%eax, rw_offset(%rip)	# _288, rw_offset
.L70:
# r_segs.c:635: 	rw_offset += sidedef->textureoffset + curline->offset;
	.loc 1 635 22
	movq	sidedef(%rip), %rax	# sidedef, sidedef.274_289
	movl	(%rax), %edx	# sidedef.274_289->textureoffset, _290
# r_segs.c:635: 	rw_offset += sidedef->textureoffset + curline->offset;
	.loc 1 635 47
	movq	curline(%rip), %rax	# curline, curline.275_291
	movl	16(%rax), %eax	# curline.275_291->offset, _292
# r_segs.c:635: 	rw_offset += sidedef->textureoffset + curline->offset;
	.loc 1 635 38
	addl	%eax, %edx	# _292, _293
# r_segs.c:635: 	rw_offset += sidedef->textureoffset + curline->offset;
	.loc 1 635 12
	movl	rw_offset(%rip), %eax	# rw_offset, rw_offset.276_294
	addl	%edx, %eax	# _293, _295
	movl	%eax, rw_offset(%rip)	# _295, rw_offset
# r_segs.c:636: 	rw_centerangle = ANG90 + viewangle - rw_normalangle;
	.loc 1 636 37
	movl	viewangle(%rip), %edx	# viewangle, viewangle.277_296
	movl	rw_normalangle(%rip), %eax	# rw_normalangle, rw_normalangle.278_297
	subl	%eax, %edx	# rw_normalangle.278_297, _298
	leal	1073741824(%rdx), %eax	#, _299
# r_segs.c:636: 	rw_centerangle = ANG90 + viewangle - rw_normalangle;
	.loc 1 636 17
	movl	%eax, rw_centerangle(%rip)	# _299, rw_centerangle
# r_segs.c:642: 	if (!fixedcolormap)
	.loc 1 642 6
	movq	fixedcolormap(%rip), %rax	# fixedcolormap, fixedcolormap.279_300
# r_segs.c:642: 	if (!fixedcolormap)
	.loc 1 642 5
	testq	%rax, %rax	# fixedcolormap.279_300
	jne	.L67	#,
# r_segs.c:644: 	    lightnum = (frontsector->lightlevel >> LIGHTSEGSHIFT)+extralight;
	.loc 1 644 29
	movq	frontsector(%rip), %rax	# frontsector, frontsector.280_301
	movzwl	12(%rax), %eax	# frontsector.280_301->lightlevel, _302
# r_segs.c:644: 	    lightnum = (frontsector->lightlevel >> LIGHTSEGSHIFT)+extralight;
	.loc 1 644 42
	sarw	$4, %ax	#, _303
	movswl	%ax, %edx	# _303, _304
# r_segs.c:644: 	    lightnum = (frontsector->lightlevel >> LIGHTSEGSHIFT)+extralight;
	.loc 1 644 59
	movl	extralight(%rip), %eax	# extralight, extralight.281_305
# r_segs.c:644: 	    lightnum = (frontsector->lightlevel >> LIGHTSEGSHIFT)+extralight;
	.loc 1 644 15
	addl	%edx, %eax	# _304, tmp595
	movl	%eax, -36(%rbp)	# tmp595, lightnum
# r_segs.c:646: 	    if (curline->v1->y == curline->v2->y)
	.loc 1 646 17
	movq	curline(%rip), %rax	# curline, curline.282_306
	movq	(%rax), %rax	# curline.282_306->v1, _307
# r_segs.c:646: 	    if (curline->v1->y == curline->v2->y)
	.loc 1 646 21
	movl	4(%rax), %edx	# _307->y, _308
# r_segs.c:646: 	    if (curline->v1->y == curline->v2->y)
	.loc 1 646 35
	movq	curline(%rip), %rax	# curline, curline.283_309
	movq	8(%rax), %rax	# curline.283_309->v2, _310
# r_segs.c:646: 	    if (curline->v1->y == curline->v2->y)
	.loc 1 646 39
	movl	4(%rax), %eax	# _310->y, _311
# r_segs.c:646: 	    if (curline->v1->y == curline->v2->y)
	.loc 1 646 9
	cmpl	%eax, %edx	# _311, _308
	jne	.L71	#,
# r_segs.c:647: 		lightnum--;
	.loc 1 647 11
	subl	$1, -36(%rbp)	#, lightnum
	jmp	.L72	#
.L71:
# r_segs.c:648: 	    else if (curline->v1->x == curline->v2->x)
	.loc 1 648 22
	movq	curline(%rip), %rax	# curline, curline.284_312
	movq	(%rax), %rax	# curline.284_312->v1, _313
# r_segs.c:648: 	    else if (curline->v1->x == curline->v2->x)
	.loc 1 648 26
	movl	(%rax), %edx	# _313->x, _314
# r_segs.c:648: 	    else if (curline->v1->x == curline->v2->x)
	.loc 1 648 40
	movq	curline(%rip), %rax	# curline, curline.285_315
	movq	8(%rax), %rax	# curline.285_315->v2, _316
# r_segs.c:648: 	    else if (curline->v1->x == curline->v2->x)
	.loc 1 648 44
	movl	(%rax), %eax	# _316->x, _317
# r_segs.c:648: 	    else if (curline->v1->x == curline->v2->x)
	.loc 1 648 14
	cmpl	%eax, %edx	# _317, _314
	jne	.L72	#,
# r_segs.c:649: 		lightnum++;
	.loc 1 649 11
	addl	$1, -36(%rbp)	#, lightnum
.L72:
# r_segs.c:651: 	    if (lightnum < 0)		
	.loc 1 651 9
	cmpl	$0, -36(%rbp)	#, lightnum
	jns	.L73	#,
# r_segs.c:652: 		walllights = scalelight[0];
	.loc 1 652 14
	leaq	scalelight(%rip), %rax	#, tmp596
	movq	%rax, walllights(%rip)	# tmp596, walllights
	jmp	.L67	#
.L73:
# r_segs.c:653: 	    else if (lightnum >= LIGHTLEVELS)
	.loc 1 653 14
	cmpl	$15, -36(%rbp)	#, lightnum
	jle	.L74	#,
# r_segs.c:654: 		walllights = scalelight[LIGHTLEVELS-1];
	.loc 1 654 14
	leaq	5760+scalelight(%rip), %rax	#, tmp597
	movq	%rax, walllights(%rip)	# tmp597, walllights
	jmp	.L67	#
.L74:
# r_segs.c:656: 		walllights = scalelight[lightnum];
	.loc 1 656 16
	movl	-36(%rbp), %eax	# lightnum, tmp599
	movslq	%eax, %rdx	# tmp599, tmp598
	movq	%rdx, %rax	# tmp598, tmp600
	addq	%rax, %rax	# tmp600
	addq	%rdx, %rax	# tmp598, tmp600
	salq	$7, %rax	#, tmp601
	leaq	scalelight(%rip), %rdx	#, tmp602
	addq	%rdx, %rax	# tmp602, _318
# r_segs.c:656: 		walllights = scalelight[lightnum];
	.loc 1 656 14
	movq	%rax, walllights(%rip)	# _318, walllights
.L67:
# r_segs.c:665:     if (frontsector->floorheight >= viewz)
	.loc 1 665 20
	movq	frontsector(%rip), %rax	# frontsector, frontsector.286_319
	movl	(%rax), %edx	# frontsector.286_319->floorheight, _320
# r_segs.c:665:     if (frontsector->floorheight >= viewz)
	.loc 1 665 34
	movl	viewz(%rip), %eax	# viewz, viewz.287_321
# r_segs.c:665:     if (frontsector->floorheight >= viewz)
	.loc 1 665 8
	cmpl	%eax, %edx	# viewz.287_321, _320
	jl	.L75	#,
# r_segs.c:668: 	markfloor = false;
	.loc 1 668 12
	movl	$0, markfloor(%rip)	#, markfloor
.L75:
# r_segs.c:671:     if (frontsector->ceilingheight <= viewz 
	.loc 1 671 20
	movq	frontsector(%rip), %rax	# frontsector, frontsector.288_322
	movl	4(%rax), %edx	# frontsector.288_322->ceilingheight, _323
# r_segs.c:671:     if (frontsector->ceilingheight <= viewz 
	.loc 1 671 36
	movl	viewz(%rip), %eax	# viewz, viewz.289_324
# r_segs.c:671:     if (frontsector->ceilingheight <= viewz 
	.loc 1 671 8
	cmpl	%eax, %edx	# viewz.289_324, _323
	jg	.L76	#,
# r_segs.c:672: 	&& frontsector->ceilingpic != skyflatnum)
	.loc 1 672 16
	movq	frontsector(%rip), %rax	# frontsector, frontsector.290_325
	movzwl	10(%rax), %eax	# frontsector.290_325->ceilingpic, _326
	movswl	%ax, %edx	# _326, _327
# r_segs.c:672: 	&& frontsector->ceilingpic != skyflatnum)
	.loc 1 672 29
	movl	skyflatnum(%rip), %eax	# skyflatnum, skyflatnum.291_328
# r_segs.c:672: 	&& frontsector->ceilingpic != skyflatnum)
	.loc 1 672 2
	cmpl	%eax, %edx	# skyflatnum.291_328, _327
	je	.L76	#,
# r_segs.c:675: 	markceiling = false;
	.loc 1 675 14
	movl	$0, markceiling(%rip)	#, markceiling
.L76:
# r_segs.c:680:     worldtop >>= 4;
	.loc 1 680 14
	movl	worldtop(%rip), %eax	# worldtop, worldtop.292_329
	sarl	$4, %eax	#, _330
	movl	%eax, worldtop(%rip)	# _330, worldtop
# r_segs.c:681:     worldbottom >>= 4;
	.loc 1 681 17
	movl	worldbottom(%rip), %eax	# worldbottom, worldbottom.293_331
	sarl	$4, %eax	#, _332
	movl	%eax, worldbottom(%rip)	# _332, worldbottom
# r_segs.c:683:     topstep = -FixedMul (rw_scalestep, worldtop);
	.loc 1 683 16
	movl	worldtop(%rip), %edx	# worldtop, worldtop.294_333
	movl	rw_scalestep(%rip), %eax	# rw_scalestep, rw_scalestep.295_334
	movl	%edx, %esi	# worldtop.294_333,
	movl	%eax, %edi	# rw_scalestep.295_334,
	call	FixedMul@PLT	#
# r_segs.c:683:     topstep = -FixedMul (rw_scalestep, worldtop);
	.loc 1 683 15 discriminator 1
	negl	%eax	# _336
# r_segs.c:683:     topstep = -FixedMul (rw_scalestep, worldtop);
	.loc 1 683 13 discriminator 1
	movl	%eax, topstep(%rip)	# _336, topstep
# r_segs.c:684:     topfrac = (centeryfrac>>4) - FixedMul (worldtop, rw_scale);
	.loc 1 684 27
	movl	centeryfrac(%rip), %eax	# centeryfrac, centeryfrac.296_337
	sarl	$4, %eax	#, centeryfrac.296_337
	movl	%eax, %ebx	# centeryfrac.296_337, _338
# r_segs.c:684:     topfrac = (centeryfrac>>4) - FixedMul (worldtop, rw_scale);
	.loc 1 684 34
	movl	rw_scale(%rip), %edx	# rw_scale, rw_scale.297_339
	movl	worldtop(%rip), %eax	# worldtop, worldtop.298_340
	movl	%edx, %esi	# rw_scale.297_339,
	movl	%eax, %edi	# worldtop.298_340,
	call	FixedMul@PLT	#
# r_segs.c:684:     topfrac = (centeryfrac>>4) - FixedMul (worldtop, rw_scale);
	.loc 1 684 32 discriminator 1
	subl	%eax, %ebx	# _341, _338
	movl	%ebx, %edx	# _338, _342
# r_segs.c:684:     topfrac = (centeryfrac>>4) - FixedMul (worldtop, rw_scale);
	.loc 1 684 13 discriminator 1
	movl	%edx, topfrac(%rip)	# _342, topfrac
# r_segs.c:686:     bottomstep = -FixedMul (rw_scalestep,worldbottom);
	.loc 1 686 19
	movl	worldbottom(%rip), %edx	# worldbottom, worldbottom.299_343
	movl	rw_scalestep(%rip), %eax	# rw_scalestep, rw_scalestep.300_344
	movl	%edx, %esi	# worldbottom.299_343,
	movl	%eax, %edi	# rw_scalestep.300_344,
	call	FixedMul@PLT	#
# r_segs.c:686:     bottomstep = -FixedMul (rw_scalestep,worldbottom);
	.loc 1 686 18 discriminator 1
	negl	%eax	# _346
# r_segs.c:686:     bottomstep = -FixedMul (rw_scalestep,worldbottom);
	.loc 1 686 16 discriminator 1
	movl	%eax, bottomstep(%rip)	# _346, bottomstep
# r_segs.c:687:     bottomfrac = (centeryfrac>>4) - FixedMul (worldbottom, rw_scale);
	.loc 1 687 30
	movl	centeryfrac(%rip), %eax	# centeryfrac, centeryfrac.301_347
	sarl	$4, %eax	#, centeryfrac.301_347
	movl	%eax, %ebx	# centeryfrac.301_347, _348
# r_segs.c:687:     bottomfrac = (centeryfrac>>4) - FixedMul (worldbottom, rw_scale);
	.loc 1 687 37
	movl	rw_scale(%rip), %edx	# rw_scale, rw_scale.302_349
	movl	worldbottom(%rip), %eax	# worldbottom, worldbottom.303_350
	movl	%edx, %esi	# rw_scale.302_349,
	movl	%eax, %edi	# worldbottom.303_350,
	call	FixedMul@PLT	#
# r_segs.c:687:     bottomfrac = (centeryfrac>>4) - FixedMul (worldbottom, rw_scale);
	.loc 1 687 35 discriminator 1
	subl	%eax, %ebx	# _351, _348
	movl	%ebx, %edx	# _348, _352
# r_segs.c:687:     bottomfrac = (centeryfrac>>4) - FixedMul (worldbottom, rw_scale);
	.loc 1 687 16 discriminator 1
	movl	%edx, bottomfrac(%rip)	# _352, bottomfrac
# r_segs.c:689:     if (backsector)
	.loc 1 689 9
	movq	backsector(%rip), %rax	# backsector, backsector.304_353
# r_segs.c:689:     if (backsector)
	.loc 1 689 8
	testq	%rax, %rax	# backsector.304_353
	je	.L77	#,
# r_segs.c:691: 	worldhigh >>= 4;
	.loc 1 691 12
	movl	worldhigh(%rip), %eax	# worldhigh, worldhigh.305_354
	sarl	$4, %eax	#, _355
	movl	%eax, worldhigh(%rip)	# _355, worldhigh
# r_segs.c:692: 	worldlow >>= 4;
	.loc 1 692 11
	movl	worldlow(%rip), %eax	# worldlow, worldlow.306_356
	sarl	$4, %eax	#, _357
	movl	%eax, worldlow(%rip)	# _357, worldlow
# r_segs.c:694: 	if (worldhigh < worldtop)
	.loc 1 694 16
	movl	worldhigh(%rip), %edx	# worldhigh, worldhigh.307_358
	movl	worldtop(%rip), %eax	# worldtop, worldtop.308_359
# r_segs.c:694: 	if (worldhigh < worldtop)
	.loc 1 694 5
	cmpl	%eax, %edx	# worldtop.308_359, worldhigh.307_358
	jge	.L78	#,
# r_segs.c:696: 	    pixhigh = (centeryfrac>>4) - FixedMul (worldhigh, rw_scale);
	.loc 1 696 28
	movl	centeryfrac(%rip), %eax	# centeryfrac, centeryfrac.309_360
	sarl	$4, %eax	#, centeryfrac.309_360
	movl	%eax, %ebx	# centeryfrac.309_360, _361
# r_segs.c:696: 	    pixhigh = (centeryfrac>>4) - FixedMul (worldhigh, rw_scale);
	.loc 1 696 35
	movl	rw_scale(%rip), %edx	# rw_scale, rw_scale.310_362
	movl	worldhigh(%rip), %eax	# worldhigh, worldhigh.311_363
	movl	%edx, %esi	# rw_scale.310_362,
	movl	%eax, %edi	# worldhigh.311_363,
	call	FixedMul@PLT	#
# r_segs.c:696: 	    pixhigh = (centeryfrac>>4) - FixedMul (worldhigh, rw_scale);
	.loc 1 696 33 discriminator 1
	subl	%eax, %ebx	# _364, _361
	movl	%ebx, %edx	# _361, _365
# r_segs.c:696: 	    pixhigh = (centeryfrac>>4) - FixedMul (worldhigh, rw_scale);
	.loc 1 696 14 discriminator 1
	movl	%edx, pixhigh(%rip)	# _365, pixhigh
# r_segs.c:697: 	    pixhighstep = -FixedMul (rw_scalestep,worldhigh);
	.loc 1 697 21
	movl	worldhigh(%rip), %edx	# worldhigh, worldhigh.312_366
	movl	rw_scalestep(%rip), %eax	# rw_scalestep, rw_scalestep.313_367
	movl	%edx, %esi	# worldhigh.312_366,
	movl	%eax, %edi	# rw_scalestep.313_367,
	call	FixedMul@PLT	#
# r_segs.c:697: 	    pixhighstep = -FixedMul (rw_scalestep,worldhigh);
	.loc 1 697 20 discriminator 1
	negl	%eax	# _369
# r_segs.c:697: 	    pixhighstep = -FixedMul (rw_scalestep,worldhigh);
	.loc 1 697 18 discriminator 1
	movl	%eax, pixhighstep(%rip)	# _369, pixhighstep
.L78:
# r_segs.c:700: 	if (worldlow > worldbottom)
	.loc 1 700 15
	movl	worldlow(%rip), %edx	# worldlow, worldlow.314_370
	movl	worldbottom(%rip), %eax	# worldbottom, worldbottom.315_371
# r_segs.c:700: 	if (worldlow > worldbottom)
	.loc 1 700 5
	cmpl	%eax, %edx	# worldbottom.315_371, worldlow.314_370
	jle	.L77	#,
# r_segs.c:702: 	    pixlow = (centeryfrac>>4) - FixedMul (worldlow, rw_scale);
	.loc 1 702 27
	movl	centeryfrac(%rip), %eax	# centeryfrac, centeryfrac.316_372
	sarl	$4, %eax	#, centeryfrac.316_372
	movl	%eax, %ebx	# centeryfrac.316_372, _373
# r_segs.c:702: 	    pixlow = (centeryfrac>>4) - FixedMul (worldlow, rw_scale);
	.loc 1 702 34
	movl	rw_scale(%rip), %edx	# rw_scale, rw_scale.317_374
	movl	worldlow(%rip), %eax	# worldlow, worldlow.318_375
	movl	%edx, %esi	# rw_scale.317_374,
	movl	%eax, %edi	# worldlow.318_375,
	call	FixedMul@PLT	#
# r_segs.c:702: 	    pixlow = (centeryfrac>>4) - FixedMul (worldlow, rw_scale);
	.loc 1 702 32 discriminator 1
	subl	%eax, %ebx	# _376, _373
	movl	%ebx, %edx	# _373, _377
# r_segs.c:702: 	    pixlow = (centeryfrac>>4) - FixedMul (worldlow, rw_scale);
	.loc 1 702 13 discriminator 1
	movl	%edx, pixlow(%rip)	# _377, pixlow
# r_segs.c:703: 	    pixlowstep = -FixedMul (rw_scalestep,worldlow);
	.loc 1 703 20
	movl	worldlow(%rip), %edx	# worldlow, worldlow.319_378
	movl	rw_scalestep(%rip), %eax	# rw_scalestep, rw_scalestep.320_379
	movl	%edx, %esi	# worldlow.319_378,
	movl	%eax, %edi	# rw_scalestep.320_379,
	call	FixedMul@PLT	#
# r_segs.c:703: 	    pixlowstep = -FixedMul (rw_scalestep,worldlow);
	.loc 1 703 19 discriminator 1
	negl	%eax	# _381
# r_segs.c:703: 	    pixlowstep = -FixedMul (rw_scalestep,worldlow);
	.loc 1 703 17 discriminator 1
	movl	%eax, pixlowstep(%rip)	# _381, pixlowstep
.L77:
# r_segs.c:708:     if (markceiling)
	.loc 1 708 9
	movl	markceiling(%rip), %eax	# markceiling, markceiling.321_382
# r_segs.c:708:     if (markceiling)
	.loc 1 708 8
	testl	%eax, %eax	# markceiling.321_382
	je	.L79	#,
# r_segs.c:709: 	ceilingplane = R_CheckPlane (ceilingplane, rw_x, rw_stopx-1);
	.loc 1 709 17
	movl	rw_stopx(%rip), %eax	# rw_stopx, rw_stopx.322_383
	leal	-1(%rax), %edx	#, _384
	movl	rw_x(%rip), %ecx	# rw_x, rw_x.323_385
	movq	ceilingplane(%rip), %rax	# ceilingplane, ceilingplane.324_386
	movl	%ecx, %esi	# rw_x.323_385,
	movq	%rax, %rdi	# ceilingplane.324_386,
	call	R_CheckPlane@PLT	#
# r_segs.c:709: 	ceilingplane = R_CheckPlane (ceilingplane, rw_x, rw_stopx-1);
	.loc 1 709 15 discriminator 1
	movq	%rax, ceilingplane(%rip)	# _387, ceilingplane
.L79:
# r_segs.c:711:     if (markfloor)
	.loc 1 711 9
	movl	markfloor(%rip), %eax	# markfloor, markfloor.325_388
# r_segs.c:711:     if (markfloor)
	.loc 1 711 8
	testl	%eax, %eax	# markfloor.325_388
	je	.L80	#,
# r_segs.c:712: 	floorplane = R_CheckPlane (floorplane, rw_x, rw_stopx-1);
	.loc 1 712 15
	movl	rw_stopx(%rip), %eax	# rw_stopx, rw_stopx.326_389
	leal	-1(%rax), %edx	#, _390
	movl	rw_x(%rip), %ecx	# rw_x, rw_x.327_391
	movq	floorplane(%rip), %rax	# floorplane, floorplane.328_392
	movl	%ecx, %esi	# rw_x.327_391,
	movq	%rax, %rdi	# floorplane.328_392,
	call	R_CheckPlane@PLT	#
# r_segs.c:712: 	floorplane = R_CheckPlane (floorplane, rw_x, rw_stopx-1);
	.loc 1 712 13 discriminator 1
	movq	%rax, floorplane(%rip)	# _393, floorplane
.L80:
# r_segs.c:714:     R_RenderSegLoop ();
	.loc 1 714 5
	call	R_RenderSegLoop	#
# r_segs.c:718:     if ( ((ds_p->silhouette & SIL_TOP) || maskedtexture)
	.loc 1 718 16
	movq	ds_p(%rip), %rax	# ds_p, ds_p.329_394
	movl	28(%rax), %eax	# ds_p.329_394->silhouette, _395
# r_segs.c:718:     if ( ((ds_p->silhouette & SIL_TOP) || maskedtexture)
	.loc 1 718 29
	andl	$2, %eax	#, _396
# r_segs.c:718:     if ( ((ds_p->silhouette & SIL_TOP) || maskedtexture)
	.loc 1 718 8
	testl	%eax, %eax	# _396
	jne	.L81	#,
# r_segs.c:718:     if ( ((ds_p->silhouette & SIL_TOP) || maskedtexture)
	.loc 1 718 40 discriminator 1
	movl	maskedtexture(%rip), %eax	# maskedtexture, maskedtexture.330_397
	testl	%eax, %eax	# maskedtexture.330_397
	je	.L82	#,
.L81:
# r_segs.c:719: 	 && !ds_p->sprtopclip)
	.loc 1 719 11
	movq	ds_p(%rip), %rax	# ds_p, ds_p.331_398
	movq	40(%rax), %rax	# ds_p.331_398->sprtopclip, _399
# r_segs.c:719: 	 && !ds_p->sprtopclip)
	.loc 1 719 3
	testq	%rax, %rax	# _399
	jne	.L82	#,
# r_segs.c:721: 	memcpy (lastopening, ceilingclip+start, 2*(rw_stopx-start));
	.loc 1 721 53
	movl	rw_stopx(%rip), %eax	# rw_stopx, rw_stopx.332_400
	subl	-52(%rbp), %eax	# start, _401
# r_segs.c:721: 	memcpy (lastopening, ceilingclip+start, 2*(rw_stopx-start));
	.loc 1 721 43
	addl	%eax, %eax	# _402
# r_segs.c:721: 	memcpy (lastopening, ceilingclip+start, 2*(rw_stopx-start));
	.loc 1 721 2
	movslq	%eax, %rdx	# _402, _403
# r_segs.c:721: 	memcpy (lastopening, ceilingclip+start, 2*(rw_stopx-start));
	.loc 1 721 34
	movl	-52(%rbp), %eax	# start, tmp603
	cltq
	leaq	(%rax,%rax), %rcx	#, _405
# r_segs.c:721: 	memcpy (lastopening, ceilingclip+start, 2*(rw_stopx-start));
	.loc 1 721 2
	leaq	ceilingclip(%rip), %rax	#, tmp604
	addq	%rax, %rcx	# tmp604, _406
	movq	lastopening(%rip), %rax	# lastopening, lastopening.333_407
	movq	%rcx, %rsi	# _406,
	movq	%rax, %rdi	# lastopening.333_407,
	call	memcpy@PLT	#
# r_segs.c:722: 	ds_p->sprtopclip = lastopening - start;
	.loc 1 722 33
	movq	lastopening(%rip), %rdx	# lastopening, lastopening.334_408
	movl	-52(%rbp), %eax	# start, tmp605
	cltq
	addq	%rax, %rax	# _410
	negq	%rax	# _410
	movq	%rax, %rcx	# _410, _411
# r_segs.c:722: 	ds_p->sprtopclip = lastopening - start;
	.loc 1 722 6
	movq	ds_p(%rip), %rax	# ds_p, ds_p.335_412
# r_segs.c:722: 	ds_p->sprtopclip = lastopening - start;
	.loc 1 722 33
	addq	%rcx, %rdx	# _411, _413
# r_segs.c:722: 	ds_p->sprtopclip = lastopening - start;
	.loc 1 722 19
	movq	%rdx, 40(%rax)	# _413, ds_p.335_412->sprtopclip
# r_segs.c:723: 	lastopening += rw_stopx - start;
	.loc 1 723 14
	movq	lastopening(%rip), %rdx	# lastopening, lastopening.336_414
# r_segs.c:723: 	lastopening += rw_stopx - start;
	.loc 1 723 26
	movl	rw_stopx(%rip), %eax	# rw_stopx, rw_stopx.337_415
	subl	-52(%rbp), %eax	# start, _416
	cltq
# r_segs.c:723: 	lastopening += rw_stopx - start;
	.loc 1 723 14
	addq	%rax, %rax	# _418
	addq	%rdx, %rax	# lastopening.336_414, _419
	movq	%rax, lastopening(%rip)	# _419, lastopening
.L82:
# r_segs.c:726:     if ( ((ds_p->silhouette & SIL_BOTTOM) || maskedtexture)
	.loc 1 726 16
	movq	ds_p(%rip), %rax	# ds_p, ds_p.338_420
	movl	28(%rax), %eax	# ds_p.338_420->silhouette, _421
# r_segs.c:726:     if ( ((ds_p->silhouette & SIL_BOTTOM) || maskedtexture)
	.loc 1 726 29
	andl	$1, %eax	#, _422
# r_segs.c:726:     if ( ((ds_p->silhouette & SIL_BOTTOM) || maskedtexture)
	.loc 1 726 8
	testl	%eax, %eax	# _422
	jne	.L83	#,
# r_segs.c:726:     if ( ((ds_p->silhouette & SIL_BOTTOM) || maskedtexture)
	.loc 1 726 43 discriminator 1
	movl	maskedtexture(%rip), %eax	# maskedtexture, maskedtexture.339_423
	testl	%eax, %eax	# maskedtexture.339_423
	je	.L84	#,
.L83:
# r_segs.c:727: 	 && !ds_p->sprbottomclip)
	.loc 1 727 11
	movq	ds_p(%rip), %rax	# ds_p, ds_p.340_424
	movq	48(%rax), %rax	# ds_p.340_424->sprbottomclip, _425
# r_segs.c:727: 	 && !ds_p->sprbottomclip)
	.loc 1 727 3
	testq	%rax, %rax	# _425
	jne	.L84	#,
# r_segs.c:729: 	memcpy (lastopening, floorclip+start, 2*(rw_stopx-start));
	.loc 1 729 51
	movl	rw_stopx(%rip), %eax	# rw_stopx, rw_stopx.341_426
	subl	-52(%rbp), %eax	# start, _427
# r_segs.c:729: 	memcpy (lastopening, floorclip+start, 2*(rw_stopx-start));
	.loc 1 729 41
	addl	%eax, %eax	# _428
# r_segs.c:729: 	memcpy (lastopening, floorclip+start, 2*(rw_stopx-start));
	.loc 1 729 2
	movslq	%eax, %rdx	# _428, _429
# r_segs.c:729: 	memcpy (lastopening, floorclip+start, 2*(rw_stopx-start));
	.loc 1 729 32
	movl	-52(%rbp), %eax	# start, tmp606
	cltq
	leaq	(%rax,%rax), %rcx	#, _431
# r_segs.c:729: 	memcpy (lastopening, floorclip+start, 2*(rw_stopx-start));
	.loc 1 729 2
	leaq	floorclip(%rip), %rax	#, tmp607
	addq	%rax, %rcx	# tmp607, _432
	movq	lastopening(%rip), %rax	# lastopening, lastopening.342_433
	movq	%rcx, %rsi	# _432,
	movq	%rax, %rdi	# lastopening.342_433,
	call	memcpy@PLT	#
# r_segs.c:730: 	ds_p->sprbottomclip = lastopening - start;
	.loc 1 730 36
	movq	lastopening(%rip), %rdx	# lastopening, lastopening.343_434
	movl	-52(%rbp), %eax	# start, tmp608
	cltq
	addq	%rax, %rax	# _436
	negq	%rax	# _436
	movq	%rax, %rcx	# _436, _437
# r_segs.c:730: 	ds_p->sprbottomclip = lastopening - start;
	.loc 1 730 6
	movq	ds_p(%rip), %rax	# ds_p, ds_p.344_438
# r_segs.c:730: 	ds_p->sprbottomclip = lastopening - start;
	.loc 1 730 36
	addq	%rcx, %rdx	# _437, _439
# r_segs.c:730: 	ds_p->sprbottomclip = lastopening - start;
	.loc 1 730 22
	movq	%rdx, 48(%rax)	# _439, ds_p.344_438->sprbottomclip
# r_segs.c:731: 	lastopening += rw_stopx - start;	
	.loc 1 731 14
	movq	lastopening(%rip), %rdx	# lastopening, lastopening.345_440
# r_segs.c:731: 	lastopening += rw_stopx - start;	
	.loc 1 731 26
	movl	rw_stopx(%rip), %eax	# rw_stopx, rw_stopx.346_441
	subl	-52(%rbp), %eax	# start, _442
	cltq
# r_segs.c:731: 	lastopening += rw_stopx - start;	
	.loc 1 731 14
	addq	%rax, %rax	# _444
	addq	%rdx, %rax	# lastopening.345_440, _445
	movq	%rax, lastopening(%rip)	# _445, lastopening
.L84:
# r_segs.c:734:     if (maskedtexture && !(ds_p->silhouette&SIL_TOP))
	.loc 1 734 9
	movl	maskedtexture(%rip), %eax	# maskedtexture, maskedtexture.347_446
# r_segs.c:734:     if (maskedtexture && !(ds_p->silhouette&SIL_TOP))
	.loc 1 734 8
	testl	%eax, %eax	# maskedtexture.347_446
	je	.L85	#,
# r_segs.c:734:     if (maskedtexture && !(ds_p->silhouette&SIL_TOP))
	.loc 1 734 32 discriminator 1
	movq	ds_p(%rip), %rax	# ds_p, ds_p.348_447
	movl	28(%rax), %eax	# ds_p.348_447->silhouette, _448
# r_segs.c:734:     if (maskedtexture && !(ds_p->silhouette&SIL_TOP))
	.loc 1 734 44 discriminator 1
	andl	$2, %eax	#, _449
# r_segs.c:734:     if (maskedtexture && !(ds_p->silhouette&SIL_TOP))
	.loc 1 734 23 discriminator 1
	testl	%eax, %eax	# _449
	jne	.L85	#,
# r_segs.c:736: 	ds_p->silhouette |= SIL_TOP;
	.loc 1 736 6
	movq	ds_p(%rip), %rax	# ds_p, ds_p.349_450
	movl	28(%rax), %edx	# ds_p.349_450->silhouette, _451
	movq	ds_p(%rip), %rax	# ds_p, ds_p.350_452
# r_segs.c:736: 	ds_p->silhouette |= SIL_TOP;
	.loc 1 736 19
	orl	$2, %edx	#, _453
	movl	%edx, 28(%rax)	# _453, ds_p.350_452->silhouette
# r_segs.c:737: 	ds_p->tsilheight = MININT;
	.loc 1 737 6
	movq	ds_p(%rip), %rax	# ds_p, ds_p.351_454
# r_segs.c:737: 	ds_p->tsilheight = MININT;
	.loc 1 737 19
	movl	$-2147483648, 36(%rax)	#, ds_p.351_454->tsilheight
.L85:
# r_segs.c:739:     if (maskedtexture && !(ds_p->silhouette&SIL_BOTTOM))
	.loc 1 739 9
	movl	maskedtexture(%rip), %eax	# maskedtexture, maskedtexture.352_455
# r_segs.c:739:     if (maskedtexture && !(ds_p->silhouette&SIL_BOTTOM))
	.loc 1 739 8
	testl	%eax, %eax	# maskedtexture.352_455
	je	.L86	#,
# r_segs.c:739:     if (maskedtexture && !(ds_p->silhouette&SIL_BOTTOM))
	.loc 1 739 32 discriminator 1
	movq	ds_p(%rip), %rax	# ds_p, ds_p.353_456
	movl	28(%rax), %eax	# ds_p.353_456->silhouette, _457
# r_segs.c:739:     if (maskedtexture && !(ds_p->silhouette&SIL_BOTTOM))
	.loc 1 739 44 discriminator 1
	andl	$1, %eax	#, _458
# r_segs.c:739:     if (maskedtexture && !(ds_p->silhouette&SIL_BOTTOM))
	.loc 1 739 23 discriminator 1
	testl	%eax, %eax	# _458
	jne	.L86	#,
# r_segs.c:741: 	ds_p->silhouette |= SIL_BOTTOM;
	.loc 1 741 6
	movq	ds_p(%rip), %rax	# ds_p, ds_p.354_459
	movl	28(%rax), %edx	# ds_p.354_459->silhouette, _460
	movq	ds_p(%rip), %rax	# ds_p, ds_p.355_461
# r_segs.c:741: 	ds_p->silhouette |= SIL_BOTTOM;
	.loc 1 741 19
	orl	$1, %edx	#, _462
	movl	%edx, 28(%rax)	# _462, ds_p.355_461->silhouette
# r_segs.c:742: 	ds_p->bsilheight = MAXINT;
	.loc 1 742 6
	movq	ds_p(%rip), %rax	# ds_p, ds_p.356_463
# r_segs.c:742: 	ds_p->bsilheight = MAXINT;
	.loc 1 742 19
	movl	$2147483647, 32(%rax)	#, ds_p.356_463->bsilheight
.L86:
# r_segs.c:744:     ds_p++;
	.loc 1 744 9
	movq	ds_p(%rip), %rax	# ds_p, ds_p.357_464
	addq	$64, %rax	#, _465
	movq	%rax, ds_p(%rip)	# _465, ds_p
	jmp	.L36	#
.L87:
# r_segs.c:387: 	return;		
	.loc 1 387 2
	nop	
.L36:
# r_segs.c:745: }
	.loc 1 745 1
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	R_StoreWallRange, .-R_StoreWallRange
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 3 "doomtype.h"
	.file 4 "d_ticcmd.h"
	.file 5 "doomdef.h"
	.file 6 "doomdata.h"
	.file 7 "m_fixed.h"
	.file 8 "tables.h"
	.file 9 "d_think.h"
	.file 10 "info.h"
	.file 11 "p_pspr.h"
	.file 12 "p_mobj.h"
	.file 13 "r_defs.h"
	.file 14 "d_player.h"
	.file 15 "doomstat.h"
	.file 16 "r_state.h"
	.file 17 "r_main.h"
	.file 18 "r_bsp.h"
	.file 19 "r_plane.h"
	.file 20 "r_things.h"
	.file 21 "r_draw.h"
	.file 22 "/usr/include/string.h"
	.file 23 "i_system.h"
	.file 24 "r_data.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x37c4
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x23
	.long	.LASF1571
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xb
	.long	0x51
	.long	0x3e
	.uleb128 0xd
	.long	0x43
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.long	0x2e
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x1d
	.long	0x4a
	.uleb128 0x10
	.long	.LASF1560
	.byte	0x1a
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x8
	.long	.LASF14
	.byte	0x2
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x24
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.long	.LASF4
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.long	.LASF6
	.uleb128 0xc
	.byte	0x2
	.byte	0x7
	.long	.LASF7
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0xc
	.byte	0x2
	.byte	0x5
	.long	.LASF10
	.uleb128 0x25
	.byte	0x8
	.uleb128 0x6
	.long	0x4a
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x6
	.long	0xc2
	.uleb128 0x26
	.uleb128 0xf
	.long	0x9a
	.byte	0x3
	.byte	0x22
	.byte	0xe
	.long	0xdc
	.uleb128 0x2
	.long	.LASF12
	.byte	0
	.uleb128 0x2
	.long	.LASF13
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x3
	.byte	0x22
	.byte	0x1c
	.long	0xc3
	.uleb128 0x8
	.long	.LASF16
	.byte	0x3
	.byte	0x24
	.byte	0x17
	.long	0x8c
	.uleb128 0x11
	.byte	0x8
	.byte	0x4
	.byte	0x24
	.long	0x14b
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
	.long	0xe8
	.byte	0x6
	.uleb128 0x3
	.long	.LASF22
	.byte	0x4
	.byte	0x2b
	.byte	0xa
	.long	0xe8
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.long	.LASF23
	.byte	0x4
	.byte	0x2c
	.byte	0x3
	.long	0xf4
	.uleb128 0xf
	.long	0x9a
	.byte	0x5
	.byte	0xa3
	.byte	0x1
	.long	0x18e
	.uleb128 0x2
	.long	.LASF24
	.byte	0
	.uleb128 0x2
	.long	.LASF25
	.byte	0x1
	.uleb128 0x2
	.long	.LASF26
	.byte	0x2
	.uleb128 0x2
	.long	.LASF27
	.byte	0x3
	.uleb128 0x2
	.long	.LASF28
	.byte	0x4
	.uleb128 0x2
	.long	.LASF29
	.byte	0x5
	.uleb128 0x2
	.long	.LASF30
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.long	0x9a
	.byte	0x5
	.byte	0xb5
	.byte	0x1
	.long	0x1dd
	.uleb128 0x2
	.long	.LASF31
	.byte	0
	.uleb128 0x2
	.long	.LASF32
	.byte	0x1
	.uleb128 0x2
	.long	.LASF33
	.byte	0x2
	.uleb128 0x2
	.long	.LASF34
	.byte	0x3
	.uleb128 0x2
	.long	.LASF35
	.byte	0x4
	.uleb128 0x2
	.long	.LASF36
	.byte	0x5
	.uleb128 0x2
	.long	.LASF37
	.byte	0x6
	.uleb128 0x2
	.long	.LASF38
	.byte	0x7
	.uleb128 0x2
	.long	.LASF39
	.byte	0x8
	.uleb128 0x2
	.long	.LASF40
	.byte	0x9
	.uleb128 0x2
	.long	.LASF41
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	.LASF42
	.byte	0x5
	.byte	0xc5
	.byte	0x3
	.long	0x18e
	.uleb128 0xf
	.long	0x9a
	.byte	0x5
	.byte	0xca
	.byte	0x1
	.long	0x21a
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
	.uleb128 0x2
	.long	.LASF47
	.byte	0x4
	.uleb128 0x2
	.long	.LASF48
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.long	0x9a
	.byte	0x5
	.byte	0xd7
	.byte	0x1
	.long	0x251
	.uleb128 0x2
	.long	.LASF49
	.byte	0
	.uleb128 0x2
	.long	.LASF50
	.byte	0x1
	.uleb128 0x2
	.long	.LASF51
	.byte	0x2
	.uleb128 0x2
	.long	.LASF52
	.byte	0x3
	.uleb128 0x2
	.long	.LASF53
	.byte	0x4
	.uleb128 0x2
	.long	.LASF54
	.byte	0x5
	.uleb128 0x2
	.long	.LASF55
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.long	0xa8
	.long	0x261
	.uleb128 0xd
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.byte	0xa
	.byte	0x6
	.byte	0xcb
	.long	0x2a7
	.uleb128 0x9
	.string	"x"
	.byte	0x6
	.byte	0xcd
	.byte	0xc
	.long	0xa8
	.byte	0
	.uleb128 0x9
	.string	"y"
	.byte	0x6
	.byte	0xce
	.byte	0xc
	.long	0xa8
	.byte	0x2
	.uleb128 0x3
	.long	.LASF56
	.byte	0x6
	.byte	0xcf
	.byte	0xc
	.long	0xa8
	.byte	0x4
	.uleb128 0x3
	.long	.LASF57
	.byte	0x6
	.byte	0xd0
	.byte	0xc
	.long	0xa8
	.byte	0x6
	.uleb128 0x3
	.long	.LASF58
	.byte	0x6
	.byte	0xd1
	.byte	0xc
	.long	0xa8
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	.LASF59
	.byte	0x6
	.byte	0xd2
	.byte	0x3
	.long	0x261
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0x26
	.byte	0xd
	.long	0x77
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.long	.LASF61
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.long	.LASF62
	.uleb128 0xb
	.long	0x2b3
	.long	0x2de
	.uleb128 0x14
	.long	0x43
	.value	0x27ff
	.byte	0
	.uleb128 0x5
	.long	.LASF63
	.byte	0x8
	.byte	0x3a
	.byte	0x12
	.long	0x2cd
	.uleb128 0x6
	.long	0x2b3
	.uleb128 0xb
	.long	0x2b3
	.long	0x300
	.uleb128 0x14
	.long	0x43
	.value	0xfff
	.byte	0
	.uleb128 0x5
	.long	.LASF64
	.byte	0x8
	.byte	0x41
	.byte	0x11
	.long	0x2ef
	.uleb128 0x8
	.long	.LASF65
	.byte	0x8
	.byte	0x4e
	.byte	0x12
	.long	0x9a
	.uleb128 0x8
	.long	.LASF66
	.byte	0x9
	.byte	0x29
	.byte	0x11
	.long	0x324
	.uleb128 0x6
	.long	0x329
	.uleb128 0x27
	.long	0x330
	.uleb128 0x1e
	.byte	0
	.uleb128 0x8
	.long	.LASF67
	.byte	0x9
	.byte	0x2a
	.byte	0x11
	.long	0x33c
	.uleb128 0x6
	.long	0x341
	.uleb128 0x1f
	.long	0x34c
	.uleb128 0xa
	.long	0xaf
	.byte	0
	.uleb128 0x8
	.long	.LASF68
	.byte	0x9
	.byte	0x2b
	.byte	0x11
	.long	0x358
	.uleb128 0x6
	.long	0x35d
	.uleb128 0x1f
	.long	0x36d
	.uleb128 0xa
	.long	0xaf
	.uleb128 0xa
	.long	0xaf
	.byte	0
	.uleb128 0x28
	.byte	0x8
	.byte	0x9
	.byte	0x2d
	.byte	0x9
	.long	0x397
	.uleb128 0x20
	.long	.LASF69
	.byte	0x2f
	.long	0x330
	.uleb128 0x29
	.string	"acv"
	.byte	0x9
	.byte	0x30
	.byte	0xd
	.long	0x318
	.uleb128 0x20
	.long	.LASF70
	.byte	0x31
	.long	0x34c
	.byte	0
	.uleb128 0x8
	.long	.LASF71
	.byte	0x9
	.byte	0x33
	.byte	0x3
	.long	0x36d
	.uleb128 0x8
	.long	.LASF72
	.byte	0x9
	.byte	0x3c
	.byte	0x14
	.long	0x397
	.uleb128 0x17
	.long	.LASF1362
	.byte	0x18
	.byte	0x9
	.byte	0x40
	.long	0x3e3
	.uleb128 0x3
	.long	.LASF73
	.byte	0x9
	.byte	0x42
	.byte	0x17
	.long	0x3e3
	.byte	0
	.uleb128 0x3
	.long	.LASF74
	.byte	0x9
	.byte	0x43
	.byte	0x17
	.long	0x3e3
	.byte	0x8
	.uleb128 0x3
	.long	.LASF75
	.byte	0x9
	.byte	0x44
	.byte	0xe
	.long	0x3a3
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	0x3af
	.uleb128 0x8
	.long	.LASF76
	.byte	0x9
	.byte	0x46
	.byte	0x3
	.long	0x3af
	.uleb128 0xf
	.long	0x9a
	.byte	0xa
	.byte	0x1f
	.byte	0x1
	.long	0x743
	.uleb128 0x2
	.long	.LASF77
	.byte	0
	.uleb128 0x2
	.long	.LASF78
	.byte	0x1
	.uleb128 0x2
	.long	.LASF79
	.byte	0x2
	.uleb128 0x2
	.long	.LASF80
	.byte	0x3
	.uleb128 0x2
	.long	.LASF81
	.byte	0x4
	.uleb128 0x2
	.long	.LASF82
	.byte	0x5
	.uleb128 0x2
	.long	.LASF83
	.byte	0x6
	.uleb128 0x2
	.long	.LASF84
	.byte	0x7
	.uleb128 0x2
	.long	.LASF85
	.byte	0x8
	.uleb128 0x2
	.long	.LASF86
	.byte	0x9
	.uleb128 0x2
	.long	.LASF87
	.byte	0xa
	.uleb128 0x2
	.long	.LASF88
	.byte	0xb
	.uleb128 0x2
	.long	.LASF89
	.byte	0xc
	.uleb128 0x2
	.long	.LASF90
	.byte	0xd
	.uleb128 0x2
	.long	.LASF91
	.byte	0xe
	.uleb128 0x2
	.long	.LASF92
	.byte	0xf
	.uleb128 0x2
	.long	.LASF93
	.byte	0x10
	.uleb128 0x2
	.long	.LASF94
	.byte	0x11
	.uleb128 0x2
	.long	.LASF95
	.byte	0x12
	.uleb128 0x2
	.long	.LASF96
	.byte	0x13
	.uleb128 0x2
	.long	.LASF97
	.byte	0x14
	.uleb128 0x2
	.long	.LASF98
	.byte	0x15
	.uleb128 0x2
	.long	.LASF99
	.byte	0x16
	.uleb128 0x2
	.long	.LASF100
	.byte	0x17
	.uleb128 0x2
	.long	.LASF101
	.byte	0x18
	.uleb128 0x2
	.long	.LASF102
	.byte	0x19
	.uleb128 0x2
	.long	.LASF103
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF104
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF105
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF106
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF107
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF108
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF109
	.byte	0x20
	.uleb128 0x2
	.long	.LASF110
	.byte	0x21
	.uleb128 0x2
	.long	.LASF111
	.byte	0x22
	.uleb128 0x2
	.long	.LASF112
	.byte	0x23
	.uleb128 0x2
	.long	.LASF113
	.byte	0x24
	.uleb128 0x2
	.long	.LASF114
	.byte	0x25
	.uleb128 0x2
	.long	.LASF115
	.byte	0x26
	.uleb128 0x2
	.long	.LASF116
	.byte	0x27
	.uleb128 0x2
	.long	.LASF117
	.byte	0x28
	.uleb128 0x2
	.long	.LASF118
	.byte	0x29
	.uleb128 0x2
	.long	.LASF119
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF120
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF121
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF122
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF123
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF124
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF125
	.byte	0x30
	.uleb128 0x2
	.long	.LASF126
	.byte	0x31
	.uleb128 0x2
	.long	.LASF127
	.byte	0x32
	.uleb128 0x2
	.long	.LASF128
	.byte	0x33
	.uleb128 0x2
	.long	.LASF129
	.byte	0x34
	.uleb128 0x2
	.long	.LASF130
	.byte	0x35
	.uleb128 0x2
	.long	.LASF131
	.byte	0x36
	.uleb128 0x2
	.long	.LASF132
	.byte	0x37
	.uleb128 0x2
	.long	.LASF133
	.byte	0x38
	.uleb128 0x2
	.long	.LASF134
	.byte	0x39
	.uleb128 0x2
	.long	.LASF135
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF136
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF137
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF138
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF139
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF140
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF141
	.byte	0x40
	.uleb128 0x2
	.long	.LASF142
	.byte	0x41
	.uleb128 0x2
	.long	.LASF143
	.byte	0x42
	.uleb128 0x2
	.long	.LASF144
	.byte	0x43
	.uleb128 0x2
	.long	.LASF145
	.byte	0x44
	.uleb128 0x2
	.long	.LASF146
	.byte	0x45
	.uleb128 0x2
	.long	.LASF147
	.byte	0x46
	.uleb128 0x2
	.long	.LASF148
	.byte	0x47
	.uleb128 0x2
	.long	.LASF149
	.byte	0x48
	.uleb128 0x2
	.long	.LASF150
	.byte	0x49
	.uleb128 0x2
	.long	.LASF151
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF152
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF153
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF154
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF155
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF156
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF157
	.byte	0x50
	.uleb128 0x2
	.long	.LASF158
	.byte	0x51
	.uleb128 0x2
	.long	.LASF159
	.byte	0x52
	.uleb128 0x2
	.long	.LASF160
	.byte	0x53
	.uleb128 0x2
	.long	.LASF161
	.byte	0x54
	.uleb128 0x2
	.long	.LASF162
	.byte	0x55
	.uleb128 0x2
	.long	.LASF163
	.byte	0x56
	.uleb128 0x2
	.long	.LASF164
	.byte	0x57
	.uleb128 0x2
	.long	.LASF165
	.byte	0x58
	.uleb128 0x2
	.long	.LASF166
	.byte	0x59
	.uleb128 0x2
	.long	.LASF167
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF168
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF169
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF170
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF171
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF172
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF173
	.byte	0x60
	.uleb128 0x2
	.long	.LASF174
	.byte	0x61
	.uleb128 0x2
	.long	.LASF175
	.byte	0x62
	.uleb128 0x2
	.long	.LASF176
	.byte	0x63
	.uleb128 0x2
	.long	.LASF177
	.byte	0x64
	.uleb128 0x2
	.long	.LASF178
	.byte	0x65
	.uleb128 0x2
	.long	.LASF179
	.byte	0x66
	.uleb128 0x2
	.long	.LASF180
	.byte	0x67
	.uleb128 0x2
	.long	.LASF181
	.byte	0x68
	.uleb128 0x2
	.long	.LASF182
	.byte	0x69
	.uleb128 0x2
	.long	.LASF183
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF184
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF185
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF186
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF187
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF188
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF189
	.byte	0x70
	.uleb128 0x2
	.long	.LASF190
	.byte	0x71
	.uleb128 0x2
	.long	.LASF191
	.byte	0x72
	.uleb128 0x2
	.long	.LASF192
	.byte	0x73
	.uleb128 0x2
	.long	.LASF193
	.byte	0x74
	.uleb128 0x2
	.long	.LASF194
	.byte	0x75
	.uleb128 0x2
	.long	.LASF195
	.byte	0x76
	.uleb128 0x2
	.long	.LASF196
	.byte	0x77
	.uleb128 0x2
	.long	.LASF197
	.byte	0x78
	.uleb128 0x2
	.long	.LASF198
	.byte	0x79
	.uleb128 0x2
	.long	.LASF199
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF200
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF201
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF202
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF203
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF204
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF205
	.byte	0x80
	.uleb128 0x2
	.long	.LASF206
	.byte	0x81
	.uleb128 0x2
	.long	.LASF207
	.byte	0x82
	.uleb128 0x2
	.long	.LASF208
	.byte	0x83
	.uleb128 0x2
	.long	.LASF209
	.byte	0x84
	.uleb128 0x2
	.long	.LASF210
	.byte	0x85
	.uleb128 0x2
	.long	.LASF211
	.byte	0x86
	.uleb128 0x2
	.long	.LASF212
	.byte	0x87
	.uleb128 0x2
	.long	.LASF213
	.byte	0x88
	.uleb128 0x2
	.long	.LASF214
	.byte	0x89
	.uleb128 0x2
	.long	.LASF215
	.byte	0x8a
	.byte	0
	.uleb128 0x8
	.long	.LASF216
	.byte	0xa
	.byte	0xac
	.byte	0x3
	.long	0x3f4
	.uleb128 0xf
	.long	0x9a
	.byte	0xa
	.byte	0xaf
	.byte	0x1
	.long	0x20d4
	.uleb128 0x2
	.long	.LASF217
	.byte	0
	.uleb128 0x2
	.long	.LASF218
	.byte	0x1
	.uleb128 0x2
	.long	.LASF219
	.byte	0x2
	.uleb128 0x2
	.long	.LASF220
	.byte	0x3
	.uleb128 0x2
	.long	.LASF221
	.byte	0x4
	.uleb128 0x2
	.long	.LASF222
	.byte	0x5
	.uleb128 0x2
	.long	.LASF223
	.byte	0x6
	.uleb128 0x2
	.long	.LASF224
	.byte	0x7
	.uleb128 0x2
	.long	.LASF225
	.byte	0x8
	.uleb128 0x2
	.long	.LASF226
	.byte	0x9
	.uleb128 0x2
	.long	.LASF227
	.byte	0xa
	.uleb128 0x2
	.long	.LASF228
	.byte	0xb
	.uleb128 0x2
	.long	.LASF229
	.byte	0xc
	.uleb128 0x2
	.long	.LASF230
	.byte	0xd
	.uleb128 0x2
	.long	.LASF231
	.byte	0xe
	.uleb128 0x2
	.long	.LASF232
	.byte	0xf
	.uleb128 0x2
	.long	.LASF233
	.byte	0x10
	.uleb128 0x2
	.long	.LASF234
	.byte	0x11
	.uleb128 0x2
	.long	.LASF235
	.byte	0x12
	.uleb128 0x2
	.long	.LASF236
	.byte	0x13
	.uleb128 0x2
	.long	.LASF237
	.byte	0x14
	.uleb128 0x2
	.long	.LASF238
	.byte	0x15
	.uleb128 0x2
	.long	.LASF239
	.byte	0x16
	.uleb128 0x2
	.long	.LASF240
	.byte	0x17
	.uleb128 0x2
	.long	.LASF241
	.byte	0x18
	.uleb128 0x2
	.long	.LASF242
	.byte	0x19
	.uleb128 0x2
	.long	.LASF243
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF244
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF245
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF246
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF247
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF248
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF249
	.byte	0x20
	.uleb128 0x2
	.long	.LASF250
	.byte	0x21
	.uleb128 0x2
	.long	.LASF251
	.byte	0x22
	.uleb128 0x2
	.long	.LASF252
	.byte	0x23
	.uleb128 0x2
	.long	.LASF253
	.byte	0x24
	.uleb128 0x2
	.long	.LASF254
	.byte	0x25
	.uleb128 0x2
	.long	.LASF255
	.byte	0x26
	.uleb128 0x2
	.long	.LASF256
	.byte	0x27
	.uleb128 0x2
	.long	.LASF257
	.byte	0x28
	.uleb128 0x2
	.long	.LASF258
	.byte	0x29
	.uleb128 0x2
	.long	.LASF259
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF260
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF261
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF262
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF263
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF264
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF265
	.byte	0x30
	.uleb128 0x2
	.long	.LASF266
	.byte	0x31
	.uleb128 0x2
	.long	.LASF267
	.byte	0x32
	.uleb128 0x2
	.long	.LASF268
	.byte	0x33
	.uleb128 0x2
	.long	.LASF269
	.byte	0x34
	.uleb128 0x2
	.long	.LASF270
	.byte	0x35
	.uleb128 0x2
	.long	.LASF271
	.byte	0x36
	.uleb128 0x2
	.long	.LASF272
	.byte	0x37
	.uleb128 0x2
	.long	.LASF273
	.byte	0x38
	.uleb128 0x2
	.long	.LASF274
	.byte	0x39
	.uleb128 0x2
	.long	.LASF275
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF276
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF277
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF278
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF279
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF280
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF281
	.byte	0x40
	.uleb128 0x2
	.long	.LASF282
	.byte	0x41
	.uleb128 0x2
	.long	.LASF283
	.byte	0x42
	.uleb128 0x2
	.long	.LASF284
	.byte	0x43
	.uleb128 0x2
	.long	.LASF285
	.byte	0x44
	.uleb128 0x2
	.long	.LASF286
	.byte	0x45
	.uleb128 0x2
	.long	.LASF287
	.byte	0x46
	.uleb128 0x2
	.long	.LASF288
	.byte	0x47
	.uleb128 0x2
	.long	.LASF289
	.byte	0x48
	.uleb128 0x2
	.long	.LASF290
	.byte	0x49
	.uleb128 0x2
	.long	.LASF291
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF292
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF293
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF294
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF295
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF296
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF297
	.byte	0x50
	.uleb128 0x2
	.long	.LASF298
	.byte	0x51
	.uleb128 0x2
	.long	.LASF299
	.byte	0x52
	.uleb128 0x2
	.long	.LASF300
	.byte	0x53
	.uleb128 0x2
	.long	.LASF301
	.byte	0x54
	.uleb128 0x2
	.long	.LASF302
	.byte	0x55
	.uleb128 0x2
	.long	.LASF303
	.byte	0x56
	.uleb128 0x2
	.long	.LASF304
	.byte	0x57
	.uleb128 0x2
	.long	.LASF305
	.byte	0x58
	.uleb128 0x2
	.long	.LASF306
	.byte	0x59
	.uleb128 0x2
	.long	.LASF307
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF308
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF309
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF310
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF311
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF312
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF313
	.byte	0x60
	.uleb128 0x2
	.long	.LASF314
	.byte	0x61
	.uleb128 0x2
	.long	.LASF315
	.byte	0x62
	.uleb128 0x2
	.long	.LASF316
	.byte	0x63
	.uleb128 0x2
	.long	.LASF317
	.byte	0x64
	.uleb128 0x2
	.long	.LASF318
	.byte	0x65
	.uleb128 0x2
	.long	.LASF319
	.byte	0x66
	.uleb128 0x2
	.long	.LASF320
	.byte	0x67
	.uleb128 0x2
	.long	.LASF321
	.byte	0x68
	.uleb128 0x2
	.long	.LASF322
	.byte	0x69
	.uleb128 0x2
	.long	.LASF323
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF324
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF325
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF326
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF327
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF328
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF329
	.byte	0x70
	.uleb128 0x2
	.long	.LASF330
	.byte	0x71
	.uleb128 0x2
	.long	.LASF331
	.byte	0x72
	.uleb128 0x2
	.long	.LASF332
	.byte	0x73
	.uleb128 0x2
	.long	.LASF333
	.byte	0x74
	.uleb128 0x2
	.long	.LASF334
	.byte	0x75
	.uleb128 0x2
	.long	.LASF335
	.byte	0x76
	.uleb128 0x2
	.long	.LASF336
	.byte	0x77
	.uleb128 0x2
	.long	.LASF337
	.byte	0x78
	.uleb128 0x2
	.long	.LASF338
	.byte	0x79
	.uleb128 0x2
	.long	.LASF339
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF340
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF341
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF342
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF343
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF344
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF345
	.byte	0x80
	.uleb128 0x2
	.long	.LASF346
	.byte	0x81
	.uleb128 0x2
	.long	.LASF347
	.byte	0x82
	.uleb128 0x2
	.long	.LASF348
	.byte	0x83
	.uleb128 0x2
	.long	.LASF349
	.byte	0x84
	.uleb128 0x2
	.long	.LASF350
	.byte	0x85
	.uleb128 0x2
	.long	.LASF351
	.byte	0x86
	.uleb128 0x2
	.long	.LASF352
	.byte	0x87
	.uleb128 0x2
	.long	.LASF353
	.byte	0x88
	.uleb128 0x2
	.long	.LASF354
	.byte	0x89
	.uleb128 0x2
	.long	.LASF355
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF356
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF357
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF358
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF359
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF360
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF361
	.byte	0x90
	.uleb128 0x2
	.long	.LASF362
	.byte	0x91
	.uleb128 0x2
	.long	.LASF363
	.byte	0x92
	.uleb128 0x2
	.long	.LASF364
	.byte	0x93
	.uleb128 0x2
	.long	.LASF365
	.byte	0x94
	.uleb128 0x2
	.long	.LASF366
	.byte	0x95
	.uleb128 0x2
	.long	.LASF367
	.byte	0x96
	.uleb128 0x2
	.long	.LASF368
	.byte	0x97
	.uleb128 0x2
	.long	.LASF369
	.byte	0x98
	.uleb128 0x2
	.long	.LASF370
	.byte	0x99
	.uleb128 0x2
	.long	.LASF371
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF372
	.byte	0x9b
	.uleb128 0x2
	.long	.LASF373
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF374
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF375
	.byte	0x9e
	.uleb128 0x2
	.long	.LASF376
	.byte	0x9f
	.uleb128 0x2
	.long	.LASF377
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF378
	.byte	0xa1
	.uleb128 0x2
	.long	.LASF379
	.byte	0xa2
	.uleb128 0x2
	.long	.LASF380
	.byte	0xa3
	.uleb128 0x2
	.long	.LASF381
	.byte	0xa4
	.uleb128 0x2
	.long	.LASF382
	.byte	0xa5
	.uleb128 0x2
	.long	.LASF383
	.byte	0xa6
	.uleb128 0x2
	.long	.LASF384
	.byte	0xa7
	.uleb128 0x2
	.long	.LASF385
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF386
	.byte	0xa9
	.uleb128 0x2
	.long	.LASF387
	.byte	0xaa
	.uleb128 0x2
	.long	.LASF388
	.byte	0xab
	.uleb128 0x2
	.long	.LASF389
	.byte	0xac
	.uleb128 0x2
	.long	.LASF390
	.byte	0xad
	.uleb128 0x2
	.long	.LASF391
	.byte	0xae
	.uleb128 0x2
	.long	.LASF392
	.byte	0xaf
	.uleb128 0x2
	.long	.LASF393
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF394
	.byte	0xb1
	.uleb128 0x2
	.long	.LASF395
	.byte	0xb2
	.uleb128 0x2
	.long	.LASF396
	.byte	0xb3
	.uleb128 0x2
	.long	.LASF397
	.byte	0xb4
	.uleb128 0x2
	.long	.LASF398
	.byte	0xb5
	.uleb128 0x2
	.long	.LASF399
	.byte	0xb6
	.uleb128 0x2
	.long	.LASF400
	.byte	0xb7
	.uleb128 0x2
	.long	.LASF401
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF402
	.byte	0xb9
	.uleb128 0x2
	.long	.LASF403
	.byte	0xba
	.uleb128 0x2
	.long	.LASF404
	.byte	0xbb
	.uleb128 0x2
	.long	.LASF405
	.byte	0xbc
	.uleb128 0x2
	.long	.LASF406
	.byte	0xbd
	.uleb128 0x2
	.long	.LASF407
	.byte	0xbe
	.uleb128 0x2
	.long	.LASF408
	.byte	0xbf
	.uleb128 0x2
	.long	.LASF409
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF410
	.byte	0xc1
	.uleb128 0x2
	.long	.LASF411
	.byte	0xc2
	.uleb128 0x2
	.long	.LASF412
	.byte	0xc3
	.uleb128 0x2
	.long	.LASF413
	.byte	0xc4
	.uleb128 0x2
	.long	.LASF414
	.byte	0xc5
	.uleb128 0x2
	.long	.LASF415
	.byte	0xc6
	.uleb128 0x2
	.long	.LASF416
	.byte	0xc7
	.uleb128 0x2
	.long	.LASF417
	.byte	0xc8
	.uleb128 0x2
	.long	.LASF418
	.byte	0xc9
	.uleb128 0x2
	.long	.LASF419
	.byte	0xca
	.uleb128 0x2
	.long	.LASF420
	.byte	0xcb
	.uleb128 0x2
	.long	.LASF421
	.byte	0xcc
	.uleb128 0x2
	.long	.LASF422
	.byte	0xcd
	.uleb128 0x2
	.long	.LASF423
	.byte	0xce
	.uleb128 0x2
	.long	.LASF424
	.byte	0xcf
	.uleb128 0x2
	.long	.LASF425
	.byte	0xd0
	.uleb128 0x2
	.long	.LASF426
	.byte	0xd1
	.uleb128 0x2
	.long	.LASF427
	.byte	0xd2
	.uleb128 0x2
	.long	.LASF428
	.byte	0xd3
	.uleb128 0x2
	.long	.LASF429
	.byte	0xd4
	.uleb128 0x2
	.long	.LASF430
	.byte	0xd5
	.uleb128 0x2
	.long	.LASF431
	.byte	0xd6
	.uleb128 0x2
	.long	.LASF432
	.byte	0xd7
	.uleb128 0x2
	.long	.LASF433
	.byte	0xd8
	.uleb128 0x2
	.long	.LASF434
	.byte	0xd9
	.uleb128 0x2
	.long	.LASF435
	.byte	0xda
	.uleb128 0x2
	.long	.LASF436
	.byte	0xdb
	.uleb128 0x2
	.long	.LASF437
	.byte	0xdc
	.uleb128 0x2
	.long	.LASF438
	.byte	0xdd
	.uleb128 0x2
	.long	.LASF439
	.byte	0xde
	.uleb128 0x2
	.long	.LASF440
	.byte	0xdf
	.uleb128 0x2
	.long	.LASF441
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF442
	.byte	0xe1
	.uleb128 0x2
	.long	.LASF443
	.byte	0xe2
	.uleb128 0x2
	.long	.LASF444
	.byte	0xe3
	.uleb128 0x2
	.long	.LASF445
	.byte	0xe4
	.uleb128 0x2
	.long	.LASF446
	.byte	0xe5
	.uleb128 0x2
	.long	.LASF447
	.byte	0xe6
	.uleb128 0x2
	.long	.LASF448
	.byte	0xe7
	.uleb128 0x2
	.long	.LASF449
	.byte	0xe8
	.uleb128 0x2
	.long	.LASF450
	.byte	0xe9
	.uleb128 0x2
	.long	.LASF451
	.byte	0xea
	.uleb128 0x2
	.long	.LASF452
	.byte	0xeb
	.uleb128 0x2
	.long	.LASF453
	.byte	0xec
	.uleb128 0x2
	.long	.LASF454
	.byte	0xed
	.uleb128 0x2
	.long	.LASF455
	.byte	0xee
	.uleb128 0x2
	.long	.LASF456
	.byte	0xef
	.uleb128 0x2
	.long	.LASF457
	.byte	0xf0
	.uleb128 0x2
	.long	.LASF458
	.byte	0xf1
	.uleb128 0x2
	.long	.LASF459
	.byte	0xf2
	.uleb128 0x2
	.long	.LASF460
	.byte	0xf3
	.uleb128 0x2
	.long	.LASF461
	.byte	0xf4
	.uleb128 0x2
	.long	.LASF462
	.byte	0xf5
	.uleb128 0x2
	.long	.LASF463
	.byte	0xf6
	.uleb128 0x2
	.long	.LASF464
	.byte	0xf7
	.uleb128 0x2
	.long	.LASF465
	.byte	0xf8
	.uleb128 0x2
	.long	.LASF466
	.byte	0xf9
	.uleb128 0x2
	.long	.LASF467
	.byte	0xfa
	.uleb128 0x2
	.long	.LASF468
	.byte	0xfb
	.uleb128 0x2
	.long	.LASF469
	.byte	0xfc
	.uleb128 0x2
	.long	.LASF470
	.byte	0xfd
	.uleb128 0x2
	.long	.LASF471
	.byte	0xfe
	.uleb128 0x2
	.long	.LASF472
	.byte	0xff
	.uleb128 0x1
	.long	.LASF473
	.value	0x100
	.uleb128 0x1
	.long	.LASF474
	.value	0x101
	.uleb128 0x1
	.long	.LASF475
	.value	0x102
	.uleb128 0x1
	.long	.LASF476
	.value	0x103
	.uleb128 0x1
	.long	.LASF477
	.value	0x104
	.uleb128 0x1
	.long	.LASF478
	.value	0x105
	.uleb128 0x1
	.long	.LASF479
	.value	0x106
	.uleb128 0x1
	.long	.LASF480
	.value	0x107
	.uleb128 0x1
	.long	.LASF481
	.value	0x108
	.uleb128 0x1
	.long	.LASF482
	.value	0x109
	.uleb128 0x1
	.long	.LASF483
	.value	0x10a
	.uleb128 0x1
	.long	.LASF484
	.value	0x10b
	.uleb128 0x1
	.long	.LASF485
	.value	0x10c
	.uleb128 0x1
	.long	.LASF486
	.value	0x10d
	.uleb128 0x1
	.long	.LASF487
	.value	0x10e
	.uleb128 0x1
	.long	.LASF488
	.value	0x10f
	.uleb128 0x1
	.long	.LASF489
	.value	0x110
	.uleb128 0x1
	.long	.LASF490
	.value	0x111
	.uleb128 0x1
	.long	.LASF491
	.value	0x112
	.uleb128 0x1
	.long	.LASF492
	.value	0x113
	.uleb128 0x1
	.long	.LASF493
	.value	0x114
	.uleb128 0x1
	.long	.LASF494
	.value	0x115
	.uleb128 0x1
	.long	.LASF495
	.value	0x116
	.uleb128 0x1
	.long	.LASF496
	.value	0x117
	.uleb128 0x1
	.long	.LASF497
	.value	0x118
	.uleb128 0x1
	.long	.LASF498
	.value	0x119
	.uleb128 0x1
	.long	.LASF499
	.value	0x11a
	.uleb128 0x1
	.long	.LASF500
	.value	0x11b
	.uleb128 0x1
	.long	.LASF501
	.value	0x11c
	.uleb128 0x1
	.long	.LASF502
	.value	0x11d
	.uleb128 0x1
	.long	.LASF503
	.value	0x11e
	.uleb128 0x1
	.long	.LASF504
	.value	0x11f
	.uleb128 0x1
	.long	.LASF505
	.value	0x120
	.uleb128 0x1
	.long	.LASF506
	.value	0x121
	.uleb128 0x1
	.long	.LASF507
	.value	0x122
	.uleb128 0x1
	.long	.LASF508
	.value	0x123
	.uleb128 0x1
	.long	.LASF509
	.value	0x124
	.uleb128 0x1
	.long	.LASF510
	.value	0x125
	.uleb128 0x1
	.long	.LASF511
	.value	0x126
	.uleb128 0x1
	.long	.LASF512
	.value	0x127
	.uleb128 0x1
	.long	.LASF513
	.value	0x128
	.uleb128 0x1
	.long	.LASF514
	.value	0x129
	.uleb128 0x1
	.long	.LASF515
	.value	0x12a
	.uleb128 0x1
	.long	.LASF516
	.value	0x12b
	.uleb128 0x1
	.long	.LASF517
	.value	0x12c
	.uleb128 0x1
	.long	.LASF518
	.value	0x12d
	.uleb128 0x1
	.long	.LASF519
	.value	0x12e
	.uleb128 0x1
	.long	.LASF520
	.value	0x12f
	.uleb128 0x1
	.long	.LASF521
	.value	0x130
	.uleb128 0x1
	.long	.LASF522
	.value	0x131
	.uleb128 0x1
	.long	.LASF523
	.value	0x132
	.uleb128 0x1
	.long	.LASF524
	.value	0x133
	.uleb128 0x1
	.long	.LASF525
	.value	0x134
	.uleb128 0x1
	.long	.LASF526
	.value	0x135
	.uleb128 0x1
	.long	.LASF527
	.value	0x136
	.uleb128 0x1
	.long	.LASF528
	.value	0x137
	.uleb128 0x1
	.long	.LASF529
	.value	0x138
	.uleb128 0x1
	.long	.LASF530
	.value	0x139
	.uleb128 0x1
	.long	.LASF531
	.value	0x13a
	.uleb128 0x1
	.long	.LASF532
	.value	0x13b
	.uleb128 0x1
	.long	.LASF533
	.value	0x13c
	.uleb128 0x1
	.long	.LASF534
	.value	0x13d
	.uleb128 0x1
	.long	.LASF535
	.value	0x13e
	.uleb128 0x1
	.long	.LASF536
	.value	0x13f
	.uleb128 0x1
	.long	.LASF537
	.value	0x140
	.uleb128 0x1
	.long	.LASF538
	.value	0x141
	.uleb128 0x1
	.long	.LASF539
	.value	0x142
	.uleb128 0x1
	.long	.LASF540
	.value	0x143
	.uleb128 0x1
	.long	.LASF541
	.value	0x144
	.uleb128 0x1
	.long	.LASF542
	.value	0x145
	.uleb128 0x1
	.long	.LASF543
	.value	0x146
	.uleb128 0x1
	.long	.LASF544
	.value	0x147
	.uleb128 0x1
	.long	.LASF545
	.value	0x148
	.uleb128 0x1
	.long	.LASF546
	.value	0x149
	.uleb128 0x1
	.long	.LASF547
	.value	0x14a
	.uleb128 0x1
	.long	.LASF548
	.value	0x14b
	.uleb128 0x1
	.long	.LASF549
	.value	0x14c
	.uleb128 0x1
	.long	.LASF550
	.value	0x14d
	.uleb128 0x1
	.long	.LASF551
	.value	0x14e
	.uleb128 0x1
	.long	.LASF552
	.value	0x14f
	.uleb128 0x1
	.long	.LASF553
	.value	0x150
	.uleb128 0x1
	.long	.LASF554
	.value	0x151
	.uleb128 0x1
	.long	.LASF555
	.value	0x152
	.uleb128 0x1
	.long	.LASF556
	.value	0x153
	.uleb128 0x1
	.long	.LASF557
	.value	0x154
	.uleb128 0x1
	.long	.LASF558
	.value	0x155
	.uleb128 0x1
	.long	.LASF559
	.value	0x156
	.uleb128 0x1
	.long	.LASF560
	.value	0x157
	.uleb128 0x1
	.long	.LASF561
	.value	0x158
	.uleb128 0x1
	.long	.LASF562
	.value	0x159
	.uleb128 0x1
	.long	.LASF563
	.value	0x15a
	.uleb128 0x1
	.long	.LASF564
	.value	0x15b
	.uleb128 0x1
	.long	.LASF565
	.value	0x15c
	.uleb128 0x1
	.long	.LASF566
	.value	0x15d
	.uleb128 0x1
	.long	.LASF567
	.value	0x15e
	.uleb128 0x1
	.long	.LASF568
	.value	0x15f
	.uleb128 0x1
	.long	.LASF569
	.value	0x160
	.uleb128 0x1
	.long	.LASF570
	.value	0x161
	.uleb128 0x1
	.long	.LASF571
	.value	0x162
	.uleb128 0x1
	.long	.LASF572
	.value	0x163
	.uleb128 0x1
	.long	.LASF573
	.value	0x164
	.uleb128 0x1
	.long	.LASF574
	.value	0x165
	.uleb128 0x1
	.long	.LASF575
	.value	0x166
	.uleb128 0x1
	.long	.LASF576
	.value	0x167
	.uleb128 0x1
	.long	.LASF577
	.value	0x168
	.uleb128 0x1
	.long	.LASF578
	.value	0x169
	.uleb128 0x1
	.long	.LASF579
	.value	0x16a
	.uleb128 0x1
	.long	.LASF580
	.value	0x16b
	.uleb128 0x1
	.long	.LASF581
	.value	0x16c
	.uleb128 0x1
	.long	.LASF582
	.value	0x16d
	.uleb128 0x1
	.long	.LASF583
	.value	0x16e
	.uleb128 0x1
	.long	.LASF584
	.value	0x16f
	.uleb128 0x1
	.long	.LASF585
	.value	0x170
	.uleb128 0x1
	.long	.LASF586
	.value	0x171
	.uleb128 0x1
	.long	.LASF587
	.value	0x172
	.uleb128 0x1
	.long	.LASF588
	.value	0x173
	.uleb128 0x1
	.long	.LASF589
	.value	0x174
	.uleb128 0x1
	.long	.LASF590
	.value	0x175
	.uleb128 0x1
	.long	.LASF591
	.value	0x176
	.uleb128 0x1
	.long	.LASF592
	.value	0x177
	.uleb128 0x1
	.long	.LASF593
	.value	0x178
	.uleb128 0x1
	.long	.LASF594
	.value	0x179
	.uleb128 0x1
	.long	.LASF595
	.value	0x17a
	.uleb128 0x1
	.long	.LASF596
	.value	0x17b
	.uleb128 0x1
	.long	.LASF597
	.value	0x17c
	.uleb128 0x1
	.long	.LASF598
	.value	0x17d
	.uleb128 0x1
	.long	.LASF599
	.value	0x17e
	.uleb128 0x1
	.long	.LASF600
	.value	0x17f
	.uleb128 0x1
	.long	.LASF601
	.value	0x180
	.uleb128 0x1
	.long	.LASF602
	.value	0x181
	.uleb128 0x1
	.long	.LASF603
	.value	0x182
	.uleb128 0x1
	.long	.LASF604
	.value	0x183
	.uleb128 0x1
	.long	.LASF605
	.value	0x184
	.uleb128 0x1
	.long	.LASF606
	.value	0x185
	.uleb128 0x1
	.long	.LASF607
	.value	0x186
	.uleb128 0x1
	.long	.LASF608
	.value	0x187
	.uleb128 0x1
	.long	.LASF609
	.value	0x188
	.uleb128 0x1
	.long	.LASF610
	.value	0x189
	.uleb128 0x1
	.long	.LASF611
	.value	0x18a
	.uleb128 0x1
	.long	.LASF612
	.value	0x18b
	.uleb128 0x1
	.long	.LASF613
	.value	0x18c
	.uleb128 0x1
	.long	.LASF614
	.value	0x18d
	.uleb128 0x1
	.long	.LASF615
	.value	0x18e
	.uleb128 0x1
	.long	.LASF616
	.value	0x18f
	.uleb128 0x1
	.long	.LASF617
	.value	0x190
	.uleb128 0x1
	.long	.LASF618
	.value	0x191
	.uleb128 0x1
	.long	.LASF619
	.value	0x192
	.uleb128 0x1
	.long	.LASF620
	.value	0x193
	.uleb128 0x1
	.long	.LASF621
	.value	0x194
	.uleb128 0x1
	.long	.LASF622
	.value	0x195
	.uleb128 0x1
	.long	.LASF623
	.value	0x196
	.uleb128 0x1
	.long	.LASF624
	.value	0x197
	.uleb128 0x1
	.long	.LASF625
	.value	0x198
	.uleb128 0x1
	.long	.LASF626
	.value	0x199
	.uleb128 0x1
	.long	.LASF627
	.value	0x19a
	.uleb128 0x1
	.long	.LASF628
	.value	0x19b
	.uleb128 0x1
	.long	.LASF629
	.value	0x19c
	.uleb128 0x1
	.long	.LASF630
	.value	0x19d
	.uleb128 0x1
	.long	.LASF631
	.value	0x19e
	.uleb128 0x1
	.long	.LASF632
	.value	0x19f
	.uleb128 0x1
	.long	.LASF633
	.value	0x1a0
	.uleb128 0x1
	.long	.LASF634
	.value	0x1a1
	.uleb128 0x1
	.long	.LASF635
	.value	0x1a2
	.uleb128 0x1
	.long	.LASF636
	.value	0x1a3
	.uleb128 0x1
	.long	.LASF637
	.value	0x1a4
	.uleb128 0x1
	.long	.LASF638
	.value	0x1a5
	.uleb128 0x1
	.long	.LASF639
	.value	0x1a6
	.uleb128 0x1
	.long	.LASF640
	.value	0x1a7
	.uleb128 0x1
	.long	.LASF641
	.value	0x1a8
	.uleb128 0x1
	.long	.LASF642
	.value	0x1a9
	.uleb128 0x1
	.long	.LASF643
	.value	0x1aa
	.uleb128 0x1
	.long	.LASF644
	.value	0x1ab
	.uleb128 0x1
	.long	.LASF645
	.value	0x1ac
	.uleb128 0x1
	.long	.LASF646
	.value	0x1ad
	.uleb128 0x1
	.long	.LASF647
	.value	0x1ae
	.uleb128 0x1
	.long	.LASF648
	.value	0x1af
	.uleb128 0x1
	.long	.LASF649
	.value	0x1b0
	.uleb128 0x1
	.long	.LASF650
	.value	0x1b1
	.uleb128 0x1
	.long	.LASF651
	.value	0x1b2
	.uleb128 0x1
	.long	.LASF652
	.value	0x1b3
	.uleb128 0x1
	.long	.LASF653
	.value	0x1b4
	.uleb128 0x1
	.long	.LASF654
	.value	0x1b5
	.uleb128 0x1
	.long	.LASF655
	.value	0x1b6
	.uleb128 0x1
	.long	.LASF656
	.value	0x1b7
	.uleb128 0x1
	.long	.LASF657
	.value	0x1b8
	.uleb128 0x1
	.long	.LASF658
	.value	0x1b9
	.uleb128 0x1
	.long	.LASF659
	.value	0x1ba
	.uleb128 0x1
	.long	.LASF660
	.value	0x1bb
	.uleb128 0x1
	.long	.LASF661
	.value	0x1bc
	.uleb128 0x1
	.long	.LASF662
	.value	0x1bd
	.uleb128 0x1
	.long	.LASF663
	.value	0x1be
	.uleb128 0x1
	.long	.LASF664
	.value	0x1bf
	.uleb128 0x1
	.long	.LASF665
	.value	0x1c0
	.uleb128 0x1
	.long	.LASF666
	.value	0x1c1
	.uleb128 0x1
	.long	.LASF667
	.value	0x1c2
	.uleb128 0x1
	.long	.LASF668
	.value	0x1c3
	.uleb128 0x1
	.long	.LASF669
	.value	0x1c4
	.uleb128 0x1
	.long	.LASF670
	.value	0x1c5
	.uleb128 0x1
	.long	.LASF671
	.value	0x1c6
	.uleb128 0x1
	.long	.LASF672
	.value	0x1c7
	.uleb128 0x1
	.long	.LASF673
	.value	0x1c8
	.uleb128 0x1
	.long	.LASF674
	.value	0x1c9
	.uleb128 0x1
	.long	.LASF675
	.value	0x1ca
	.uleb128 0x1
	.long	.LASF676
	.value	0x1cb
	.uleb128 0x1
	.long	.LASF677
	.value	0x1cc
	.uleb128 0x1
	.long	.LASF678
	.value	0x1cd
	.uleb128 0x1
	.long	.LASF679
	.value	0x1ce
	.uleb128 0x1
	.long	.LASF680
	.value	0x1cf
	.uleb128 0x1
	.long	.LASF681
	.value	0x1d0
	.uleb128 0x1
	.long	.LASF682
	.value	0x1d1
	.uleb128 0x1
	.long	.LASF683
	.value	0x1d2
	.uleb128 0x1
	.long	.LASF684
	.value	0x1d3
	.uleb128 0x1
	.long	.LASF685
	.value	0x1d4
	.uleb128 0x1
	.long	.LASF686
	.value	0x1d5
	.uleb128 0x1
	.long	.LASF687
	.value	0x1d6
	.uleb128 0x1
	.long	.LASF688
	.value	0x1d7
	.uleb128 0x1
	.long	.LASF689
	.value	0x1d8
	.uleb128 0x1
	.long	.LASF690
	.value	0x1d9
	.uleb128 0x1
	.long	.LASF691
	.value	0x1da
	.uleb128 0x1
	.long	.LASF692
	.value	0x1db
	.uleb128 0x1
	.long	.LASF693
	.value	0x1dc
	.uleb128 0x1
	.long	.LASF694
	.value	0x1dd
	.uleb128 0x1
	.long	.LASF695
	.value	0x1de
	.uleb128 0x1
	.long	.LASF696
	.value	0x1df
	.uleb128 0x1
	.long	.LASF697
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF698
	.value	0x1e1
	.uleb128 0x1
	.long	.LASF699
	.value	0x1e2
	.uleb128 0x1
	.long	.LASF700
	.value	0x1e3
	.uleb128 0x1
	.long	.LASF701
	.value	0x1e4
	.uleb128 0x1
	.long	.LASF702
	.value	0x1e5
	.uleb128 0x1
	.long	.LASF703
	.value	0x1e6
	.uleb128 0x1
	.long	.LASF704
	.value	0x1e7
	.uleb128 0x1
	.long	.LASF705
	.value	0x1e8
	.uleb128 0x1
	.long	.LASF706
	.value	0x1e9
	.uleb128 0x1
	.long	.LASF707
	.value	0x1ea
	.uleb128 0x1
	.long	.LASF708
	.value	0x1eb
	.uleb128 0x1
	.long	.LASF709
	.value	0x1ec
	.uleb128 0x1
	.long	.LASF710
	.value	0x1ed
	.uleb128 0x1
	.long	.LASF711
	.value	0x1ee
	.uleb128 0x1
	.long	.LASF712
	.value	0x1ef
	.uleb128 0x1
	.long	.LASF713
	.value	0x1f0
	.uleb128 0x1
	.long	.LASF714
	.value	0x1f1
	.uleb128 0x1
	.long	.LASF715
	.value	0x1f2
	.uleb128 0x1
	.long	.LASF716
	.value	0x1f3
	.uleb128 0x1
	.long	.LASF717
	.value	0x1f4
	.uleb128 0x1
	.long	.LASF718
	.value	0x1f5
	.uleb128 0x1
	.long	.LASF719
	.value	0x1f6
	.uleb128 0x1
	.long	.LASF720
	.value	0x1f7
	.uleb128 0x1
	.long	.LASF721
	.value	0x1f8
	.uleb128 0x1
	.long	.LASF722
	.value	0x1f9
	.uleb128 0x1
	.long	.LASF723
	.value	0x1fa
	.uleb128 0x1
	.long	.LASF724
	.value	0x1fb
	.uleb128 0x1
	.long	.LASF725
	.value	0x1fc
	.uleb128 0x1
	.long	.LASF726
	.value	0x1fd
	.uleb128 0x1
	.long	.LASF727
	.value	0x1fe
	.uleb128 0x1
	.long	.LASF728
	.value	0x1ff
	.uleb128 0x1
	.long	.LASF729
	.value	0x200
	.uleb128 0x1
	.long	.LASF730
	.value	0x201
	.uleb128 0x1
	.long	.LASF731
	.value	0x202
	.uleb128 0x1
	.long	.LASF732
	.value	0x203
	.uleb128 0x1
	.long	.LASF733
	.value	0x204
	.uleb128 0x1
	.long	.LASF734
	.value	0x205
	.uleb128 0x1
	.long	.LASF735
	.value	0x206
	.uleb128 0x1
	.long	.LASF736
	.value	0x207
	.uleb128 0x1
	.long	.LASF737
	.value	0x208
	.uleb128 0x1
	.long	.LASF738
	.value	0x209
	.uleb128 0x1
	.long	.LASF739
	.value	0x20a
	.uleb128 0x1
	.long	.LASF740
	.value	0x20b
	.uleb128 0x1
	.long	.LASF741
	.value	0x20c
	.uleb128 0x1
	.long	.LASF742
	.value	0x20d
	.uleb128 0x1
	.long	.LASF743
	.value	0x20e
	.uleb128 0x1
	.long	.LASF744
	.value	0x20f
	.uleb128 0x1
	.long	.LASF745
	.value	0x210
	.uleb128 0x1
	.long	.LASF746
	.value	0x211
	.uleb128 0x1
	.long	.LASF747
	.value	0x212
	.uleb128 0x1
	.long	.LASF748
	.value	0x213
	.uleb128 0x1
	.long	.LASF749
	.value	0x214
	.uleb128 0x1
	.long	.LASF750
	.value	0x215
	.uleb128 0x1
	.long	.LASF751
	.value	0x216
	.uleb128 0x1
	.long	.LASF752
	.value	0x217
	.uleb128 0x1
	.long	.LASF753
	.value	0x218
	.uleb128 0x1
	.long	.LASF754
	.value	0x219
	.uleb128 0x1
	.long	.LASF755
	.value	0x21a
	.uleb128 0x1
	.long	.LASF756
	.value	0x21b
	.uleb128 0x1
	.long	.LASF757
	.value	0x21c
	.uleb128 0x1
	.long	.LASF758
	.value	0x21d
	.uleb128 0x1
	.long	.LASF759
	.value	0x21e
	.uleb128 0x1
	.long	.LASF760
	.value	0x21f
	.uleb128 0x1
	.long	.LASF761
	.value	0x220
	.uleb128 0x1
	.long	.LASF762
	.value	0x221
	.uleb128 0x1
	.long	.LASF763
	.value	0x222
	.uleb128 0x1
	.long	.LASF764
	.value	0x223
	.uleb128 0x1
	.long	.LASF765
	.value	0x224
	.uleb128 0x1
	.long	.LASF766
	.value	0x225
	.uleb128 0x1
	.long	.LASF767
	.value	0x226
	.uleb128 0x1
	.long	.LASF768
	.value	0x227
	.uleb128 0x1
	.long	.LASF769
	.value	0x228
	.uleb128 0x1
	.long	.LASF770
	.value	0x229
	.uleb128 0x1
	.long	.LASF771
	.value	0x22a
	.uleb128 0x1
	.long	.LASF772
	.value	0x22b
	.uleb128 0x1
	.long	.LASF773
	.value	0x22c
	.uleb128 0x1
	.long	.LASF774
	.value	0x22d
	.uleb128 0x1
	.long	.LASF775
	.value	0x22e
	.uleb128 0x1
	.long	.LASF776
	.value	0x22f
	.uleb128 0x1
	.long	.LASF777
	.value	0x230
	.uleb128 0x1
	.long	.LASF778
	.value	0x231
	.uleb128 0x1
	.long	.LASF779
	.value	0x232
	.uleb128 0x1
	.long	.LASF780
	.value	0x233
	.uleb128 0x1
	.long	.LASF781
	.value	0x234
	.uleb128 0x1
	.long	.LASF782
	.value	0x235
	.uleb128 0x1
	.long	.LASF783
	.value	0x236
	.uleb128 0x1
	.long	.LASF784
	.value	0x237
	.uleb128 0x1
	.long	.LASF785
	.value	0x238
	.uleb128 0x1
	.long	.LASF786
	.value	0x239
	.uleb128 0x1
	.long	.LASF787
	.value	0x23a
	.uleb128 0x1
	.long	.LASF788
	.value	0x23b
	.uleb128 0x1
	.long	.LASF789
	.value	0x23c
	.uleb128 0x1
	.long	.LASF790
	.value	0x23d
	.uleb128 0x1
	.long	.LASF791
	.value	0x23e
	.uleb128 0x1
	.long	.LASF792
	.value	0x23f
	.uleb128 0x1
	.long	.LASF793
	.value	0x240
	.uleb128 0x1
	.long	.LASF794
	.value	0x241
	.uleb128 0x1
	.long	.LASF795
	.value	0x242
	.uleb128 0x1
	.long	.LASF796
	.value	0x243
	.uleb128 0x1
	.long	.LASF797
	.value	0x244
	.uleb128 0x1
	.long	.LASF798
	.value	0x245
	.uleb128 0x1
	.long	.LASF799
	.value	0x246
	.uleb128 0x1
	.long	.LASF800
	.value	0x247
	.uleb128 0x1
	.long	.LASF801
	.value	0x248
	.uleb128 0x1
	.long	.LASF802
	.value	0x249
	.uleb128 0x1
	.long	.LASF803
	.value	0x24a
	.uleb128 0x1
	.long	.LASF804
	.value	0x24b
	.uleb128 0x1
	.long	.LASF805
	.value	0x24c
	.uleb128 0x1
	.long	.LASF806
	.value	0x24d
	.uleb128 0x1
	.long	.LASF807
	.value	0x24e
	.uleb128 0x1
	.long	.LASF808
	.value	0x24f
	.uleb128 0x1
	.long	.LASF809
	.value	0x250
	.uleb128 0x1
	.long	.LASF810
	.value	0x251
	.uleb128 0x1
	.long	.LASF811
	.value	0x252
	.uleb128 0x1
	.long	.LASF812
	.value	0x253
	.uleb128 0x1
	.long	.LASF813
	.value	0x254
	.uleb128 0x1
	.long	.LASF814
	.value	0x255
	.uleb128 0x1
	.long	.LASF815
	.value	0x256
	.uleb128 0x1
	.long	.LASF816
	.value	0x257
	.uleb128 0x1
	.long	.LASF817
	.value	0x258
	.uleb128 0x1
	.long	.LASF818
	.value	0x259
	.uleb128 0x1
	.long	.LASF819
	.value	0x25a
	.uleb128 0x1
	.long	.LASF820
	.value	0x25b
	.uleb128 0x1
	.long	.LASF821
	.value	0x25c
	.uleb128 0x1
	.long	.LASF822
	.value	0x25d
	.uleb128 0x1
	.long	.LASF823
	.value	0x25e
	.uleb128 0x1
	.long	.LASF824
	.value	0x25f
	.uleb128 0x1
	.long	.LASF825
	.value	0x260
	.uleb128 0x1
	.long	.LASF826
	.value	0x261
	.uleb128 0x1
	.long	.LASF827
	.value	0x262
	.uleb128 0x1
	.long	.LASF828
	.value	0x263
	.uleb128 0x1
	.long	.LASF829
	.value	0x264
	.uleb128 0x1
	.long	.LASF830
	.value	0x265
	.uleb128 0x1
	.long	.LASF831
	.value	0x266
	.uleb128 0x1
	.long	.LASF832
	.value	0x267
	.uleb128 0x1
	.long	.LASF833
	.value	0x268
	.uleb128 0x1
	.long	.LASF834
	.value	0x269
	.uleb128 0x1
	.long	.LASF835
	.value	0x26a
	.uleb128 0x1
	.long	.LASF836
	.value	0x26b
	.uleb128 0x1
	.long	.LASF837
	.value	0x26c
	.uleb128 0x1
	.long	.LASF838
	.value	0x26d
	.uleb128 0x1
	.long	.LASF839
	.value	0x26e
	.uleb128 0x1
	.long	.LASF840
	.value	0x26f
	.uleb128 0x1
	.long	.LASF841
	.value	0x270
	.uleb128 0x1
	.long	.LASF842
	.value	0x271
	.uleb128 0x1
	.long	.LASF843
	.value	0x272
	.uleb128 0x1
	.long	.LASF844
	.value	0x273
	.uleb128 0x1
	.long	.LASF845
	.value	0x274
	.uleb128 0x1
	.long	.LASF846
	.value	0x275
	.uleb128 0x1
	.long	.LASF847
	.value	0x276
	.uleb128 0x1
	.long	.LASF848
	.value	0x277
	.uleb128 0x1
	.long	.LASF849
	.value	0x278
	.uleb128 0x1
	.long	.LASF850
	.value	0x279
	.uleb128 0x1
	.long	.LASF851
	.value	0x27a
	.uleb128 0x1
	.long	.LASF852
	.value	0x27b
	.uleb128 0x1
	.long	.LASF853
	.value	0x27c
	.uleb128 0x1
	.long	.LASF854
	.value	0x27d
	.uleb128 0x1
	.long	.LASF855
	.value	0x27e
	.uleb128 0x1
	.long	.LASF856
	.value	0x27f
	.uleb128 0x1
	.long	.LASF857
	.value	0x280
	.uleb128 0x1
	.long	.LASF858
	.value	0x281
	.uleb128 0x1
	.long	.LASF859
	.value	0x282
	.uleb128 0x1
	.long	.LASF860
	.value	0x283
	.uleb128 0x1
	.long	.LASF861
	.value	0x284
	.uleb128 0x1
	.long	.LASF862
	.value	0x285
	.uleb128 0x1
	.long	.LASF863
	.value	0x286
	.uleb128 0x1
	.long	.LASF864
	.value	0x287
	.uleb128 0x1
	.long	.LASF865
	.value	0x288
	.uleb128 0x1
	.long	.LASF866
	.value	0x289
	.uleb128 0x1
	.long	.LASF867
	.value	0x28a
	.uleb128 0x1
	.long	.LASF868
	.value	0x28b
	.uleb128 0x1
	.long	.LASF869
	.value	0x28c
	.uleb128 0x1
	.long	.LASF870
	.value	0x28d
	.uleb128 0x1
	.long	.LASF871
	.value	0x28e
	.uleb128 0x1
	.long	.LASF872
	.value	0x28f
	.uleb128 0x1
	.long	.LASF873
	.value	0x290
	.uleb128 0x1
	.long	.LASF874
	.value	0x291
	.uleb128 0x1
	.long	.LASF875
	.value	0x292
	.uleb128 0x1
	.long	.LASF876
	.value	0x293
	.uleb128 0x1
	.long	.LASF877
	.value	0x294
	.uleb128 0x1
	.long	.LASF878
	.value	0x295
	.uleb128 0x1
	.long	.LASF879
	.value	0x296
	.uleb128 0x1
	.long	.LASF880
	.value	0x297
	.uleb128 0x1
	.long	.LASF881
	.value	0x298
	.uleb128 0x1
	.long	.LASF882
	.value	0x299
	.uleb128 0x1
	.long	.LASF883
	.value	0x29a
	.uleb128 0x1
	.long	.LASF884
	.value	0x29b
	.uleb128 0x1
	.long	.LASF885
	.value	0x29c
	.uleb128 0x1
	.long	.LASF886
	.value	0x29d
	.uleb128 0x1
	.long	.LASF887
	.value	0x29e
	.uleb128 0x1
	.long	.LASF888
	.value	0x29f
	.uleb128 0x1
	.long	.LASF889
	.value	0x2a0
	.uleb128 0x1
	.long	.LASF890
	.value	0x2a1
	.uleb128 0x1
	.long	.LASF891
	.value	0x2a2
	.uleb128 0x1
	.long	.LASF892
	.value	0x2a3
	.uleb128 0x1
	.long	.LASF893
	.value	0x2a4
	.uleb128 0x1
	.long	.LASF894
	.value	0x2a5
	.uleb128 0x1
	.long	.LASF895
	.value	0x2a6
	.uleb128 0x1
	.long	.LASF896
	.value	0x2a7
	.uleb128 0x1
	.long	.LASF897
	.value	0x2a8
	.uleb128 0x1
	.long	.LASF898
	.value	0x2a9
	.uleb128 0x1
	.long	.LASF899
	.value	0x2aa
	.uleb128 0x1
	.long	.LASF900
	.value	0x2ab
	.uleb128 0x1
	.long	.LASF901
	.value	0x2ac
	.uleb128 0x1
	.long	.LASF902
	.value	0x2ad
	.uleb128 0x1
	.long	.LASF903
	.value	0x2ae
	.uleb128 0x1
	.long	.LASF904
	.value	0x2af
	.uleb128 0x1
	.long	.LASF905
	.value	0x2b0
	.uleb128 0x1
	.long	.LASF906
	.value	0x2b1
	.uleb128 0x1
	.long	.LASF907
	.value	0x2b2
	.uleb128 0x1
	.long	.LASF908
	.value	0x2b3
	.uleb128 0x1
	.long	.LASF909
	.value	0x2b4
	.uleb128 0x1
	.long	.LASF910
	.value	0x2b5
	.uleb128 0x1
	.long	.LASF911
	.value	0x2b6
	.uleb128 0x1
	.long	.LASF912
	.value	0x2b7
	.uleb128 0x1
	.long	.LASF913
	.value	0x2b8
	.uleb128 0x1
	.long	.LASF914
	.value	0x2b9
	.uleb128 0x1
	.long	.LASF915
	.value	0x2ba
	.uleb128 0x1
	.long	.LASF916
	.value	0x2bb
	.uleb128 0x1
	.long	.LASF917
	.value	0x2bc
	.uleb128 0x1
	.long	.LASF918
	.value	0x2bd
	.uleb128 0x1
	.long	.LASF919
	.value	0x2be
	.uleb128 0x1
	.long	.LASF920
	.value	0x2bf
	.uleb128 0x1
	.long	.LASF921
	.value	0x2c0
	.uleb128 0x1
	.long	.LASF922
	.value	0x2c1
	.uleb128 0x1
	.long	.LASF923
	.value	0x2c2
	.uleb128 0x1
	.long	.LASF924
	.value	0x2c3
	.uleb128 0x1
	.long	.LASF925
	.value	0x2c4
	.uleb128 0x1
	.long	.LASF926
	.value	0x2c5
	.uleb128 0x1
	.long	.LASF927
	.value	0x2c6
	.uleb128 0x1
	.long	.LASF928
	.value	0x2c7
	.uleb128 0x1
	.long	.LASF929
	.value	0x2c8
	.uleb128 0x1
	.long	.LASF930
	.value	0x2c9
	.uleb128 0x1
	.long	.LASF931
	.value	0x2ca
	.uleb128 0x1
	.long	.LASF932
	.value	0x2cb
	.uleb128 0x1
	.long	.LASF933
	.value	0x2cc
	.uleb128 0x1
	.long	.LASF934
	.value	0x2cd
	.uleb128 0x1
	.long	.LASF935
	.value	0x2ce
	.uleb128 0x1
	.long	.LASF936
	.value	0x2cf
	.uleb128 0x1
	.long	.LASF937
	.value	0x2d0
	.uleb128 0x1
	.long	.LASF938
	.value	0x2d1
	.uleb128 0x1
	.long	.LASF939
	.value	0x2d2
	.uleb128 0x1
	.long	.LASF940
	.value	0x2d3
	.uleb128 0x1
	.long	.LASF941
	.value	0x2d4
	.uleb128 0x1
	.long	.LASF942
	.value	0x2d5
	.uleb128 0x1
	.long	.LASF943
	.value	0x2d6
	.uleb128 0x1
	.long	.LASF944
	.value	0x2d7
	.uleb128 0x1
	.long	.LASF945
	.value	0x2d8
	.uleb128 0x1
	.long	.LASF946
	.value	0x2d9
	.uleb128 0x1
	.long	.LASF947
	.value	0x2da
	.uleb128 0x1
	.long	.LASF948
	.value	0x2db
	.uleb128 0x1
	.long	.LASF949
	.value	0x2dc
	.uleb128 0x1
	.long	.LASF950
	.value	0x2dd
	.uleb128 0x1
	.long	.LASF951
	.value	0x2de
	.uleb128 0x1
	.long	.LASF952
	.value	0x2df
	.uleb128 0x1
	.long	.LASF953
	.value	0x2e0
	.uleb128 0x1
	.long	.LASF954
	.value	0x2e1
	.uleb128 0x1
	.long	.LASF955
	.value	0x2e2
	.uleb128 0x1
	.long	.LASF956
	.value	0x2e3
	.uleb128 0x1
	.long	.LASF957
	.value	0x2e4
	.uleb128 0x1
	.long	.LASF958
	.value	0x2e5
	.uleb128 0x1
	.long	.LASF959
	.value	0x2e6
	.uleb128 0x1
	.long	.LASF960
	.value	0x2e7
	.uleb128 0x1
	.long	.LASF961
	.value	0x2e8
	.uleb128 0x1
	.long	.LASF962
	.value	0x2e9
	.uleb128 0x1
	.long	.LASF963
	.value	0x2ea
	.uleb128 0x1
	.long	.LASF964
	.value	0x2eb
	.uleb128 0x1
	.long	.LASF965
	.value	0x2ec
	.uleb128 0x1
	.long	.LASF966
	.value	0x2ed
	.uleb128 0x1
	.long	.LASF967
	.value	0x2ee
	.uleb128 0x1
	.long	.LASF968
	.value	0x2ef
	.uleb128 0x1
	.long	.LASF969
	.value	0x2f0
	.uleb128 0x1
	.long	.LASF970
	.value	0x2f1
	.uleb128 0x1
	.long	.LASF971
	.value	0x2f2
	.uleb128 0x1
	.long	.LASF972
	.value	0x2f3
	.uleb128 0x1
	.long	.LASF973
	.value	0x2f4
	.uleb128 0x1
	.long	.LASF974
	.value	0x2f5
	.uleb128 0x1
	.long	.LASF975
	.value	0x2f6
	.uleb128 0x1
	.long	.LASF976
	.value	0x2f7
	.uleb128 0x1
	.long	.LASF977
	.value	0x2f8
	.uleb128 0x1
	.long	.LASF978
	.value	0x2f9
	.uleb128 0x1
	.long	.LASF979
	.value	0x2fa
	.uleb128 0x1
	.long	.LASF980
	.value	0x2fb
	.uleb128 0x1
	.long	.LASF981
	.value	0x2fc
	.uleb128 0x1
	.long	.LASF982
	.value	0x2fd
	.uleb128 0x1
	.long	.LASF983
	.value	0x2fe
	.uleb128 0x1
	.long	.LASF984
	.value	0x2ff
	.uleb128 0x1
	.long	.LASF985
	.value	0x300
	.uleb128 0x1
	.long	.LASF986
	.value	0x301
	.uleb128 0x1
	.long	.LASF987
	.value	0x302
	.uleb128 0x1
	.long	.LASF988
	.value	0x303
	.uleb128 0x1
	.long	.LASF989
	.value	0x304
	.uleb128 0x1
	.long	.LASF990
	.value	0x305
	.uleb128 0x1
	.long	.LASF991
	.value	0x306
	.uleb128 0x1
	.long	.LASF992
	.value	0x307
	.uleb128 0x1
	.long	.LASF993
	.value	0x308
	.uleb128 0x1
	.long	.LASF994
	.value	0x309
	.uleb128 0x1
	.long	.LASF995
	.value	0x30a
	.uleb128 0x1
	.long	.LASF996
	.value	0x30b
	.uleb128 0x1
	.long	.LASF997
	.value	0x30c
	.uleb128 0x1
	.long	.LASF998
	.value	0x30d
	.uleb128 0x1
	.long	.LASF999
	.value	0x30e
	.uleb128 0x1
	.long	.LASF1000
	.value	0x30f
	.uleb128 0x1
	.long	.LASF1001
	.value	0x310
	.uleb128 0x1
	.long	.LASF1002
	.value	0x311
	.uleb128 0x1
	.long	.LASF1003
	.value	0x312
	.uleb128 0x1
	.long	.LASF1004
	.value	0x313
	.uleb128 0x1
	.long	.LASF1005
	.value	0x314
	.uleb128 0x1
	.long	.LASF1006
	.value	0x315
	.uleb128 0x1
	.long	.LASF1007
	.value	0x316
	.uleb128 0x1
	.long	.LASF1008
	.value	0x317
	.uleb128 0x1
	.long	.LASF1009
	.value	0x318
	.uleb128 0x1
	.long	.LASF1010
	.value	0x319
	.uleb128 0x1
	.long	.LASF1011
	.value	0x31a
	.uleb128 0x1
	.long	.LASF1012
	.value	0x31b
	.uleb128 0x1
	.long	.LASF1013
	.value	0x31c
	.uleb128 0x1
	.long	.LASF1014
	.value	0x31d
	.uleb128 0x1
	.long	.LASF1015
	.value	0x31e
	.uleb128 0x1
	.long	.LASF1016
	.value	0x31f
	.uleb128 0x1
	.long	.LASF1017
	.value	0x320
	.uleb128 0x1
	.long	.LASF1018
	.value	0x321
	.uleb128 0x1
	.long	.LASF1019
	.value	0x322
	.uleb128 0x1
	.long	.LASF1020
	.value	0x323
	.uleb128 0x1
	.long	.LASF1021
	.value	0x324
	.uleb128 0x1
	.long	.LASF1022
	.value	0x325
	.uleb128 0x1
	.long	.LASF1023
	.value	0x326
	.uleb128 0x1
	.long	.LASF1024
	.value	0x327
	.uleb128 0x1
	.long	.LASF1025
	.value	0x328
	.uleb128 0x1
	.long	.LASF1026
	.value	0x329
	.uleb128 0x1
	.long	.LASF1027
	.value	0x32a
	.uleb128 0x1
	.long	.LASF1028
	.value	0x32b
	.uleb128 0x1
	.long	.LASF1029
	.value	0x32c
	.uleb128 0x1
	.long	.LASF1030
	.value	0x32d
	.uleb128 0x1
	.long	.LASF1031
	.value	0x32e
	.uleb128 0x1
	.long	.LASF1032
	.value	0x32f
	.uleb128 0x1
	.long	.LASF1033
	.value	0x330
	.uleb128 0x1
	.long	.LASF1034
	.value	0x331
	.uleb128 0x1
	.long	.LASF1035
	.value	0x332
	.uleb128 0x1
	.long	.LASF1036
	.value	0x333
	.uleb128 0x1
	.long	.LASF1037
	.value	0x334
	.uleb128 0x1
	.long	.LASF1038
	.value	0x335
	.uleb128 0x1
	.long	.LASF1039
	.value	0x336
	.uleb128 0x1
	.long	.LASF1040
	.value	0x337
	.uleb128 0x1
	.long	.LASF1041
	.value	0x338
	.uleb128 0x1
	.long	.LASF1042
	.value	0x339
	.uleb128 0x1
	.long	.LASF1043
	.value	0x33a
	.uleb128 0x1
	.long	.LASF1044
	.value	0x33b
	.uleb128 0x1
	.long	.LASF1045
	.value	0x33c
	.uleb128 0x1
	.long	.LASF1046
	.value	0x33d
	.uleb128 0x1
	.long	.LASF1047
	.value	0x33e
	.uleb128 0x1
	.long	.LASF1048
	.value	0x33f
	.uleb128 0x1
	.long	.LASF1049
	.value	0x340
	.uleb128 0x1
	.long	.LASF1050
	.value	0x341
	.uleb128 0x1
	.long	.LASF1051
	.value	0x342
	.uleb128 0x1
	.long	.LASF1052
	.value	0x343
	.uleb128 0x1
	.long	.LASF1053
	.value	0x344
	.uleb128 0x1
	.long	.LASF1054
	.value	0x345
	.uleb128 0x1
	.long	.LASF1055
	.value	0x346
	.uleb128 0x1
	.long	.LASF1056
	.value	0x347
	.uleb128 0x1
	.long	.LASF1057
	.value	0x348
	.uleb128 0x1
	.long	.LASF1058
	.value	0x349
	.uleb128 0x1
	.long	.LASF1059
	.value	0x34a
	.uleb128 0x1
	.long	.LASF1060
	.value	0x34b
	.uleb128 0x1
	.long	.LASF1061
	.value	0x34c
	.uleb128 0x1
	.long	.LASF1062
	.value	0x34d
	.uleb128 0x1
	.long	.LASF1063
	.value	0x34e
	.uleb128 0x1
	.long	.LASF1064
	.value	0x34f
	.uleb128 0x1
	.long	.LASF1065
	.value	0x350
	.uleb128 0x1
	.long	.LASF1066
	.value	0x351
	.uleb128 0x1
	.long	.LASF1067
	.value	0x352
	.uleb128 0x1
	.long	.LASF1068
	.value	0x353
	.uleb128 0x1
	.long	.LASF1069
	.value	0x354
	.uleb128 0x1
	.long	.LASF1070
	.value	0x355
	.uleb128 0x1
	.long	.LASF1071
	.value	0x356
	.uleb128 0x1
	.long	.LASF1072
	.value	0x357
	.uleb128 0x1
	.long	.LASF1073
	.value	0x358
	.uleb128 0x1
	.long	.LASF1074
	.value	0x359
	.uleb128 0x1
	.long	.LASF1075
	.value	0x35a
	.uleb128 0x1
	.long	.LASF1076
	.value	0x35b
	.uleb128 0x1
	.long	.LASF1077
	.value	0x35c
	.uleb128 0x1
	.long	.LASF1078
	.value	0x35d
	.uleb128 0x1
	.long	.LASF1079
	.value	0x35e
	.uleb128 0x1
	.long	.LASF1080
	.value	0x35f
	.uleb128 0x1
	.long	.LASF1081
	.value	0x360
	.uleb128 0x1
	.long	.LASF1082
	.value	0x361
	.uleb128 0x1
	.long	.LASF1083
	.value	0x362
	.uleb128 0x1
	.long	.LASF1084
	.value	0x363
	.uleb128 0x1
	.long	.LASF1085
	.value	0x364
	.uleb128 0x1
	.long	.LASF1086
	.value	0x365
	.uleb128 0x1
	.long	.LASF1087
	.value	0x366
	.uleb128 0x1
	.long	.LASF1088
	.value	0x367
	.uleb128 0x1
	.long	.LASF1089
	.value	0x368
	.uleb128 0x1
	.long	.LASF1090
	.value	0x369
	.uleb128 0x1
	.long	.LASF1091
	.value	0x36a
	.uleb128 0x1
	.long	.LASF1092
	.value	0x36b
	.uleb128 0x1
	.long	.LASF1093
	.value	0x36c
	.uleb128 0x1
	.long	.LASF1094
	.value	0x36d
	.uleb128 0x1
	.long	.LASF1095
	.value	0x36e
	.uleb128 0x1
	.long	.LASF1096
	.value	0x36f
	.uleb128 0x1
	.long	.LASF1097
	.value	0x370
	.uleb128 0x1
	.long	.LASF1098
	.value	0x371
	.uleb128 0x1
	.long	.LASF1099
	.value	0x372
	.uleb128 0x1
	.long	.LASF1100
	.value	0x373
	.uleb128 0x1
	.long	.LASF1101
	.value	0x374
	.uleb128 0x1
	.long	.LASF1102
	.value	0x375
	.uleb128 0x1
	.long	.LASF1103
	.value	0x376
	.uleb128 0x1
	.long	.LASF1104
	.value	0x377
	.uleb128 0x1
	.long	.LASF1105
	.value	0x378
	.uleb128 0x1
	.long	.LASF1106
	.value	0x379
	.uleb128 0x1
	.long	.LASF1107
	.value	0x37a
	.uleb128 0x1
	.long	.LASF1108
	.value	0x37b
	.uleb128 0x1
	.long	.LASF1109
	.value	0x37c
	.uleb128 0x1
	.long	.LASF1110
	.value	0x37d
	.uleb128 0x1
	.long	.LASF1111
	.value	0x37e
	.uleb128 0x1
	.long	.LASF1112
	.value	0x37f
	.uleb128 0x1
	.long	.LASF1113
	.value	0x380
	.uleb128 0x1
	.long	.LASF1114
	.value	0x381
	.uleb128 0x1
	.long	.LASF1115
	.value	0x382
	.uleb128 0x1
	.long	.LASF1116
	.value	0x383
	.uleb128 0x1
	.long	.LASF1117
	.value	0x384
	.uleb128 0x1
	.long	.LASF1118
	.value	0x385
	.uleb128 0x1
	.long	.LASF1119
	.value	0x386
	.uleb128 0x1
	.long	.LASF1120
	.value	0x387
	.uleb128 0x1
	.long	.LASF1121
	.value	0x388
	.uleb128 0x1
	.long	.LASF1122
	.value	0x389
	.uleb128 0x1
	.long	.LASF1123
	.value	0x38a
	.uleb128 0x1
	.long	.LASF1124
	.value	0x38b
	.uleb128 0x1
	.long	.LASF1125
	.value	0x38c
	.uleb128 0x1
	.long	.LASF1126
	.value	0x38d
	.uleb128 0x1
	.long	.LASF1127
	.value	0x38e
	.uleb128 0x1
	.long	.LASF1128
	.value	0x38f
	.uleb128 0x1
	.long	.LASF1129
	.value	0x390
	.uleb128 0x1
	.long	.LASF1130
	.value	0x391
	.uleb128 0x1
	.long	.LASF1131
	.value	0x392
	.uleb128 0x1
	.long	.LASF1132
	.value	0x393
	.uleb128 0x1
	.long	.LASF1133
	.value	0x394
	.uleb128 0x1
	.long	.LASF1134
	.value	0x395
	.uleb128 0x1
	.long	.LASF1135
	.value	0x396
	.uleb128 0x1
	.long	.LASF1136
	.value	0x397
	.uleb128 0x1
	.long	.LASF1137
	.value	0x398
	.uleb128 0x1
	.long	.LASF1138
	.value	0x399
	.uleb128 0x1
	.long	.LASF1139
	.value	0x39a
	.uleb128 0x1
	.long	.LASF1140
	.value	0x39b
	.uleb128 0x1
	.long	.LASF1141
	.value	0x39c
	.uleb128 0x1
	.long	.LASF1142
	.value	0x39d
	.uleb128 0x1
	.long	.LASF1143
	.value	0x39e
	.uleb128 0x1
	.long	.LASF1144
	.value	0x39f
	.uleb128 0x1
	.long	.LASF1145
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF1146
	.value	0x3a1
	.uleb128 0x1
	.long	.LASF1147
	.value	0x3a2
	.uleb128 0x1
	.long	.LASF1148
	.value	0x3a3
	.uleb128 0x1
	.long	.LASF1149
	.value	0x3a4
	.uleb128 0x1
	.long	.LASF1150
	.value	0x3a5
	.uleb128 0x1
	.long	.LASF1151
	.value	0x3a6
	.uleb128 0x1
	.long	.LASF1152
	.value	0x3a7
	.uleb128 0x1
	.long	.LASF1153
	.value	0x3a8
	.uleb128 0x1
	.long	.LASF1154
	.value	0x3a9
	.uleb128 0x1
	.long	.LASF1155
	.value	0x3aa
	.uleb128 0x1
	.long	.LASF1156
	.value	0x3ab
	.uleb128 0x1
	.long	.LASF1157
	.value	0x3ac
	.uleb128 0x1
	.long	.LASF1158
	.value	0x3ad
	.uleb128 0x1
	.long	.LASF1159
	.value	0x3ae
	.uleb128 0x1
	.long	.LASF1160
	.value	0x3af
	.uleb128 0x1
	.long	.LASF1161
	.value	0x3b0
	.uleb128 0x1
	.long	.LASF1162
	.value	0x3b1
	.uleb128 0x1
	.long	.LASF1163
	.value	0x3b2
	.uleb128 0x1
	.long	.LASF1164
	.value	0x3b3
	.uleb128 0x1
	.long	.LASF1165
	.value	0x3b4
	.uleb128 0x1
	.long	.LASF1166
	.value	0x3b5
	.uleb128 0x1
	.long	.LASF1167
	.value	0x3b6
	.uleb128 0x1
	.long	.LASF1168
	.value	0x3b7
	.uleb128 0x1
	.long	.LASF1169
	.value	0x3b8
	.uleb128 0x1
	.long	.LASF1170
	.value	0x3b9
	.uleb128 0x1
	.long	.LASF1171
	.value	0x3ba
	.uleb128 0x1
	.long	.LASF1172
	.value	0x3bb
	.uleb128 0x1
	.long	.LASF1173
	.value	0x3bc
	.uleb128 0x1
	.long	.LASF1174
	.value	0x3bd
	.uleb128 0x1
	.long	.LASF1175
	.value	0x3be
	.uleb128 0x1
	.long	.LASF1176
	.value	0x3bf
	.uleb128 0x1
	.long	.LASF1177
	.value	0x3c0
	.uleb128 0x1
	.long	.LASF1178
	.value	0x3c1
	.uleb128 0x1
	.long	.LASF1179
	.value	0x3c2
	.uleb128 0x1
	.long	.LASF1180
	.value	0x3c3
	.uleb128 0x1
	.long	.LASF1181
	.value	0x3c4
	.uleb128 0x1
	.long	.LASF1182
	.value	0x3c5
	.uleb128 0x1
	.long	.LASF1183
	.value	0x3c6
	.uleb128 0x1
	.long	.LASF1184
	.value	0x3c7
	.byte	0
	.uleb128 0xe
	.long	.LASF1185
	.byte	0xa
	.value	0x478
	.byte	0x3
	.long	0x74f
	.uleb128 0x19
	.byte	0x38
	.byte	0xa
	.value	0x47b
	.long	0x214d
	.uleb128 0x4
	.long	.LASF1186
	.byte	0xa
	.value	0x47d
	.byte	0xf
	.long	0x743
	.byte	0
	.uleb128 0x4
	.long	.LASF1187
	.byte	0xa
	.value	0x47e
	.byte	0xa
	.long	0x7e
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1188
	.byte	0xa
	.value	0x47f
	.byte	0xa
	.long	0x7e
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1189
	.byte	0xa
	.value	0x481
	.byte	0xf
	.long	0x397
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1190
	.byte	0xa
	.value	0x482
	.byte	0x10
	.long	0x20d4
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1191
	.byte	0xa
	.value	0x483
	.byte	0xa
	.long	0x7e
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1192
	.byte	0xa
	.value	0x483
	.byte	0x11
	.long	0x7e
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.long	.LASF1193
	.byte	0xa
	.value	0x484
	.byte	0x3
	.long	0x20e1
	.uleb128 0x2a
	.byte	0x7
	.byte	0x4
	.long	0x9a
	.byte	0xa
	.value	0x48b
	.byte	0xe
	.long	0x24a6
	.uleb128 0x2
	.long	.LASF1194
	.byte	0
	.uleb128 0x2
	.long	.LASF1195
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1196
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1197
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1198
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1199
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1200
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1201
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1202
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1203
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1204
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1205
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1206
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1207
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1208
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1209
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1210
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1211
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1212
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1213
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1214
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1215
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1216
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1217
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1218
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1219
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1220
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1221
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1222
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1223
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1224
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1225
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1226
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1227
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1228
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1229
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1230
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1231
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1232
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1233
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1234
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1235
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1236
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1237
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1238
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1239
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1240
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1241
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1242
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1243
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1244
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1245
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1246
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1247
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1248
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1249
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1250
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1251
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1252
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1253
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1254
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1255
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1256
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1257
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1258
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1259
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1260
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1261
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1262
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1263
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1264
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1265
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1266
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1267
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1268
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1269
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1270
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1271
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1272
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1273
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1274
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1275
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1276
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1277
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1278
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1279
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1280
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1281
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1282
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1283
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1284
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1285
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1286
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1287
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1288
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1289
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1290
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1291
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1292
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1293
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1294
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1295
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1296
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1297
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1298
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1299
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1300
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1301
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1302
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1303
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF1304
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF1305
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF1306
	.byte	0x70
	.uleb128 0x2
	.long	.LASF1307
	.byte	0x71
	.uleb128 0x2
	.long	.LASF1308
	.byte	0x72
	.uleb128 0x2
	.long	.LASF1309
	.byte	0x73
	.uleb128 0x2
	.long	.LASF1310
	.byte	0x74
	.uleb128 0x2
	.long	.LASF1311
	.byte	0x75
	.uleb128 0x2
	.long	.LASF1312
	.byte	0x76
	.uleb128 0x2
	.long	.LASF1313
	.byte	0x77
	.uleb128 0x2
	.long	.LASF1314
	.byte	0x78
	.uleb128 0x2
	.long	.LASF1315
	.byte	0x79
	.uleb128 0x2
	.long	.LASF1316
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF1317
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF1318
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF1319
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF1320
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF1321
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF1322
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1323
	.byte	0x81
	.uleb128 0x2
	.long	.LASF1324
	.byte	0x82
	.uleb128 0x2
	.long	.LASF1325
	.byte	0x83
	.uleb128 0x2
	.long	.LASF1326
	.byte	0x84
	.uleb128 0x2
	.long	.LASF1327
	.byte	0x85
	.uleb128 0x2
	.long	.LASF1328
	.byte	0x86
	.uleb128 0x2
	.long	.LASF1329
	.byte	0x87
	.uleb128 0x2
	.long	.LASF1330
	.byte	0x88
	.uleb128 0x2
	.long	.LASF1331
	.byte	0x89
	.byte	0
	.uleb128 0xe
	.long	.LASF1332
	.byte	0xa
	.value	0x517
	.byte	0x3
	.long	0x215a
	.uleb128 0x19
	.byte	0x5c
	.byte	0xa
	.value	0x519
	.long	0x25ff
	.uleb128 0x4
	.long	.LASF1333
	.byte	0xa
	.value	0x51b
	.byte	0x9
	.long	0x77
	.byte	0
	.uleb128 0x4
	.long	.LASF1334
	.byte	0xa
	.value	0x51c
	.byte	0x9
	.long	0x77
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1335
	.byte	0xa
	.value	0x51d
	.byte	0x9
	.long	0x77
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1336
	.byte	0xa
	.value	0x51e
	.byte	0x9
	.long	0x77
	.byte	0xc
	.uleb128 0x4
	.long	.LASF1337
	.byte	0xa
	.value	0x51f
	.byte	0x9
	.long	0x77
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1338
	.byte	0xa
	.value	0x520
	.byte	0x9
	.long	0x77
	.byte	0x14
	.uleb128 0x4
	.long	.LASF1339
	.byte	0xa
	.value	0x521
	.byte	0x9
	.long	0x77
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1340
	.byte	0xa
	.value	0x522
	.byte	0x9
	.long	0x77
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF1341
	.byte	0xa
	.value	0x523
	.byte	0x9
	.long	0x77
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1342
	.byte	0xa
	.value	0x524
	.byte	0x9
	.long	0x77
	.byte	0x24
	.uleb128 0x4
	.long	.LASF1343
	.byte	0xa
	.value	0x525
	.byte	0x9
	.long	0x77
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1344
	.byte	0xa
	.value	0x526
	.byte	0x9
	.long	0x77
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1345
	.byte	0xa
	.value	0x527
	.byte	0x9
	.long	0x77
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1346
	.byte	0xa
	.value	0x528
	.byte	0x9
	.long	0x77
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1347
	.byte	0xa
	.value	0x529
	.byte	0x9
	.long	0x77
	.byte	0x38
	.uleb128 0x4
	.long	.LASF1348
	.byte	0xa
	.value	0x52a
	.byte	0x9
	.long	0x77
	.byte	0x3c
	.uleb128 0x4
	.long	.LASF1349
	.byte	0xa
	.value	0x52b
	.byte	0x9
	.long	0x77
	.byte	0x40
	.uleb128 0x4
	.long	.LASF1350
	.byte	0xa
	.value	0x52c
	.byte	0x9
	.long	0x77
	.byte	0x44
	.uleb128 0x4
	.long	.LASF1351
	.byte	0xa
	.value	0x52d
	.byte	0x9
	.long	0x77
	.byte	0x48
	.uleb128 0x4
	.long	.LASF1352
	.byte	0xa
	.value	0x52e
	.byte	0x9
	.long	0x77
	.byte	0x4c
	.uleb128 0x4
	.long	.LASF1353
	.byte	0xa
	.value	0x52f
	.byte	0x9
	.long	0x77
	.byte	0x50
	.uleb128 0x4
	.long	.LASF1354
	.byte	0xa
	.value	0x530
	.byte	0x9
	.long	0x77
	.byte	0x54
	.uleb128 0x4
	.long	.LASF1355
	.byte	0xa
	.value	0x531
	.byte	0x9
	.long	0x77
	.byte	0x58
	.byte	0
	.uleb128 0xe
	.long	.LASF1356
	.byte	0xa
	.value	0x533
	.byte	0x3
	.long	0x24b3
	.uleb128 0xf
	.long	0x9a
	.byte	0xb
	.byte	0x3d
	.byte	0x1
	.long	0x262b
	.uleb128 0x2
	.long	.LASF1357
	.byte	0
	.uleb128 0x2
	.long	.LASF1358
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1359
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.byte	0x18
	.byte	0xb
	.byte	0x44
	.long	0x2666
	.uleb128 0x3
	.long	.LASF1360
	.byte	0xb
	.byte	0x46
	.byte	0xe
	.long	0x2666
	.byte	0
	.uleb128 0x3
	.long	.LASF1188
	.byte	0xb
	.byte	0x47
	.byte	0xa
	.long	0x77
	.byte	0x8
	.uleb128 0x9
	.string	"sx"
	.byte	0xb
	.byte	0x48
	.byte	0xd
	.long	0x2b3
	.byte	0xc
	.uleb128 0x9
	.string	"sy"
	.byte	0xb
	.byte	0x49
	.byte	0xd
	.long	0x2b3
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	0x214d
	.uleb128 0x8
	.long	.LASF1361
	.byte	0xb
	.byte	0x4b
	.byte	0x3
	.long	0x262b
	.uleb128 0x17
	.long	.LASF1363
	.byte	0xe0
	.byte	0xc
	.byte	0xcf
	.long	0x284e
	.uleb128 0x3
	.long	.LASF1364
	.byte	0xc
	.byte	0xd2
	.byte	0x10
	.long	0x3e8
	.byte	0
	.uleb128 0x9
	.string	"x"
	.byte	0xc
	.byte	0xd5
	.byte	0xe
	.long	0x2b3
	.byte	0x18
	.uleb128 0x9
	.string	"y"
	.byte	0xc
	.byte	0xd6
	.byte	0xe
	.long	0x2b3
	.byte	0x1c
	.uleb128 0x9
	.string	"z"
	.byte	0xc
	.byte	0xd7
	.byte	0xe
	.long	0x2b3
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1365
	.byte	0xc
	.byte	0xda
	.byte	0x14
	.long	0x284e
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1366
	.byte	0xc
	.byte	0xdb
	.byte	0x14
	.long	0x284e
	.byte	0x30
	.uleb128 0x3
	.long	.LASF56
	.byte	0xc
	.byte	0xde
	.byte	0xe
	.long	0x30c
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1186
	.byte	0xc
	.byte	0xdf
	.byte	0x12
	.long	0x743
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1187
	.byte	0xc
	.byte	0xe0
	.byte	0xb
	.long	0x77
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1367
	.byte	0xc
	.byte	0xe4
	.byte	0x14
	.long	0x284e
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1368
	.byte	0xc
	.byte	0xe5
	.byte	0x14
	.long	0x284e
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1369
	.byte	0xc
	.byte	0xe7
	.byte	0x19
	.long	0x2887
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1370
	.byte	0xc
	.byte	0xea
	.byte	0xe
	.long	0x2b3
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1371
	.byte	0xc
	.byte	0xeb
	.byte	0xe
	.long	0x2b3
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1349
	.byte	0xc
	.byte	0xee
	.byte	0xe
	.long	0x2b3
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1350
	.byte	0xc
	.byte	0xef
	.byte	0xe
	.long	0x2b3
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1372
	.byte	0xc
	.byte	0xf2
	.byte	0xe
	.long	0x2b3
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1373
	.byte	0xc
	.byte	0xf3
	.byte	0xe
	.long	0x2b3
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1374
	.byte	0xc
	.byte	0xf4
	.byte	0xe
	.long	0x2b3
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1375
	.byte	0xc
	.byte	0xf7
	.byte	0xb
	.long	0x77
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF57
	.byte	0xc
	.byte	0xf9
	.byte	0x11
	.long	0x24a6
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1376
	.byte	0xc
	.byte	0xfa
	.byte	0x12
	.long	0x288c
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1188
	.byte	0xc
	.byte	0xfc
	.byte	0xb
	.long	0x77
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1360
	.byte	0xc
	.byte	0xfd
	.byte	0xf
	.long	0x2666
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1354
	.byte	0xc
	.byte	0xfe
	.byte	0xb
	.long	0x77
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1377
	.byte	0xc
	.byte	0xff
	.byte	0xb
	.long	0x77
	.byte	0xa4
	.uleb128 0x4
	.long	.LASF1378
	.byte	0xc
	.value	0x102
	.byte	0xb
	.long	0x77
	.byte	0xa8
	.uleb128 0x4
	.long	.LASF1379
	.byte	0xc
	.value	0x103
	.byte	0xb
	.long	0x77
	.byte	0xac
	.uleb128 0x4
	.long	.LASF1380
	.byte	0xc
	.value	0x107
	.byte	0x14
	.long	0x284e
	.byte	0xb0
	.uleb128 0x4
	.long	.LASF1338
	.byte	0xc
	.value	0x10b
	.byte	0xb
	.long	0x77
	.byte	0xb8
	.uleb128 0x4
	.long	.LASF1381
	.byte	0xc
	.value	0x10f
	.byte	0xb
	.long	0x77
	.byte	0xbc
	.uleb128 0x4
	.long	.LASF1382
	.byte	0xc
	.value	0x113
	.byte	0x16
	.long	0x2a66
	.byte	0xc0
	.uleb128 0x4
	.long	.LASF1383
	.byte	0xc
	.value	0x116
	.byte	0xb
	.long	0x77
	.byte	0xc8
	.uleb128 0x4
	.long	.LASF1384
	.byte	0xc
	.value	0x119
	.byte	0x11
	.long	0x2a7
	.byte	0xcc
	.uleb128 0x4
	.long	.LASF1385
	.byte	0xc
	.value	0x11c
	.byte	0x14
	.long	0x284e
	.byte	0xd8
	.byte	0
	.uleb128 0x6
	.long	0x2677
	.uleb128 0x17
	.long	.LASF1386
	.byte	0x10
	.byte	0xd
	.byte	0xe3
	.long	0x2887
	.uleb128 0x3
	.long	.LASF1387
	.byte	0xd
	.byte	0xe5
	.byte	0xf
	.long	0x2d90
	.byte	0
	.uleb128 0x3
	.long	.LASF1388
	.byte	0xd
	.byte	0xe6
	.byte	0xb
	.long	0xa8
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1389
	.byte	0xd
	.byte	0xe7
	.byte	0xb
	.long	0xa8
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.long	0x2853
	.uleb128 0x6
	.long	0x25ff
	.uleb128 0x2b
	.long	.LASF1390
	.value	0x140
	.byte	0xe
	.byte	0x53
	.byte	0x10
	.long	0x2a66
	.uleb128 0x9
	.string	"mo"
	.byte	0xe
	.byte	0x55
	.byte	0xe
	.long	0x2aa3
	.byte	0
	.uleb128 0x3
	.long	.LASF1391
	.byte	0xe
	.byte	0x56
	.byte	0x13
	.long	0x2a97
	.byte	0x8
	.uleb128 0x9
	.string	"cmd"
	.byte	0xe
	.byte	0x57
	.byte	0xf
	.long	0x14b
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1392
	.byte	0xe
	.byte	0x5c
	.byte	0xe
	.long	0x2b3
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1393
	.byte	0xe
	.byte	0x5e
	.byte	0xe
	.long	0x2b3
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1394
	.byte	0xe
	.byte	0x60
	.byte	0x16
	.long	0x2b3
	.byte	0x1c
	.uleb128 0x9
	.string	"bob"
	.byte	0xe
	.byte	0x62
	.byte	0x16
	.long	0x2b3
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1377
	.byte	0xe
	.byte	0x66
	.byte	0xb
	.long	0x77
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1395
	.byte	0xe
	.byte	0x67
	.byte	0xb
	.long	0x77
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1396
	.byte	0xe
	.byte	0x69
	.byte	0xb
	.long	0x77
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1397
	.byte	0xe
	.byte	0x6c
	.byte	0xb
	.long	0x2aa8
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1398
	.byte	0xe
	.byte	0x6d
	.byte	0xe
	.long	0x2ab8
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1399
	.byte	0xe
	.byte	0x6e
	.byte	0xe
	.long	0xdc
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1400
	.byte	0xe
	.byte	0x71
	.byte	0xb
	.long	0x2ac8
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1401
	.byte	0xe
	.byte	0x72
	.byte	0x12
	.long	0x1dd
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1402
	.byte	0xe
	.byte	0x75
	.byte	0x12
	.long	0x1dd
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1403
	.byte	0xe
	.byte	0x77
	.byte	0xe
	.long	0x2ad8
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1404
	.byte	0xe
	.byte	0x78
	.byte	0xb
	.long	0x2ac8
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1405
	.byte	0xe
	.byte	0x79
	.byte	0xb
	.long	0x2ac8
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1406
	.byte	0xe
	.byte	0x7c
	.byte	0xb
	.long	0x77
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1407
	.byte	0xe
	.byte	0x7d
	.byte	0xb
	.long	0x77
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1408
	.byte	0xe
	.byte	0x81
	.byte	0xb
	.long	0x77
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1409
	.byte	0xe
	.byte	0x84
	.byte	0xb
	.long	0x77
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1410
	.byte	0xe
	.byte	0x87
	.byte	0xb
	.long	0x77
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1411
	.byte	0xe
	.byte	0x88
	.byte	0xb
	.long	0x77
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1412
	.byte	0xe
	.byte	0x89
	.byte	0xb
	.long	0x77
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1413
	.byte	0xe
	.byte	0x8c
	.byte	0xc
	.long	0xb1
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1414
	.byte	0xe
	.byte	0x8f
	.byte	0xb
	.long	0x77
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1415
	.byte	0xe
	.byte	0x90
	.byte	0xb
	.long	0x77
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1416
	.byte	0xe
	.byte	0x93
	.byte	0xe
	.long	0x2aa3
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1417
	.byte	0xe
	.byte	0x96
	.byte	0xb
	.long	0x77
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1418
	.byte	0xe
	.byte	0x9a
	.byte	0xb
	.long	0x77
	.byte	0xfc
	.uleb128 0x1a
	.long	.LASF1419
	.byte	0x9e
	.byte	0xb
	.long	0x77
	.value	0x100
	.uleb128 0x1a
	.long	.LASF1420
	.byte	0xa1
	.byte	0xf
	.long	0x2ae8
	.value	0x108
	.uleb128 0x1a
	.long	.LASF1421
	.byte	0xa4
	.byte	0xe
	.long	0xdc
	.value	0x138
	.byte	0
	.uleb128 0x6
	.long	0x2891
	.uleb128 0xe
	.long	.LASF1422
	.byte	0xc
	.value	0x11e
	.byte	0x3
	.long	0x2677
	.uleb128 0xf
	.long	0x9a
	.byte	0xe
	.byte	0x36
	.byte	0x1
	.long	0x2a97
	.uleb128 0x2
	.long	.LASF1423
	.byte	0
	.uleb128 0x2
	.long	.LASF1424
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1425
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	.LASF1426
	.byte	0xe
	.byte	0x3e
	.byte	0x3
	.long	0x2a78
	.uleb128 0x6
	.long	0x2a6b
	.uleb128 0xb
	.long	0x77
	.long	0x2ab8
	.uleb128 0xd
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0xdc
	.long	0x2ac8
	.uleb128 0xd
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x77
	.long	0x2ad8
	.uleb128 0xd
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0xdc
	.long	0x2ae8
	.uleb128 0xd
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0x266b
	.long	0x2af8
	.uleb128 0xd
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF1393
	.byte	0xf
	.byte	0x90
	.byte	0xd
	.long	0x77
	.uleb128 0x5
	.long	.LASF1427
	.byte	0xf
	.byte	0x91
	.byte	0xd
	.long	0x77
	.uleb128 0x2c
	.long	.LASF1428
	.byte	0xf
	.value	0x10b
	.byte	0xd
	.long	0x77
	.uleb128 0x11
	.byte	0x8
	.byte	0xd
	.byte	0x47
	.long	0x2b3c
	.uleb128 0x9
	.string	"x"
	.byte	0xd
	.byte	0x49
	.byte	0xd
	.long	0x2b3
	.byte	0
	.uleb128 0x9
	.string	"y"
	.byte	0xd
	.byte	0x4a
	.byte	0xd
	.long	0x2b3
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	.LASF1429
	.byte	0xd
	.byte	0x4c
	.byte	0x3
	.long	0x2b1d
	.uleb128 0x11
	.byte	0x28
	.byte	0xd
	.byte	0x58
	.long	0x2b7f
	.uleb128 0x3
	.long	.LASF1364
	.byte	0xd
	.byte	0x5a
	.byte	0x10
	.long	0x3e8
	.byte	0
	.uleb128 0x9
	.string	"x"
	.byte	0xd
	.byte	0x5b
	.byte	0xe
	.long	0x2b3
	.byte	0x18
	.uleb128 0x9
	.string	"y"
	.byte	0xd
	.byte	0x5c
	.byte	0xe
	.long	0x2b3
	.byte	0x1c
	.uleb128 0x9
	.string	"z"
	.byte	0xd
	.byte	0x5d
	.byte	0xe
	.long	0x2b3
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.long	.LASF1430
	.byte	0xd
	.byte	0x5f
	.byte	0x3
	.long	0x2b48
	.uleb128 0x11
	.byte	0x80
	.byte	0xd
	.byte	0x65
	.long	0x2c64
	.uleb128 0x3
	.long	.LASF1431
	.byte	0xd
	.byte	0x67
	.byte	0xd
	.long	0x2b3
	.byte	0
	.uleb128 0x3
	.long	.LASF1432
	.byte	0xd
	.byte	0x68
	.byte	0xd
	.long	0x2b3
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1433
	.byte	0xd
	.byte	0x69
	.byte	0xb
	.long	0xa8
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1434
	.byte	0xd
	.byte	0x6a
	.byte	0xb
	.long	0xa8
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1435
	.byte	0xd
	.byte	0x6b
	.byte	0xb
	.long	0xa8
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1436
	.byte	0xd
	.byte	0x6c
	.byte	0xb
	.long	0xa8
	.byte	0xe
	.uleb128 0x9
	.string	"tag"
	.byte	0xd
	.byte	0x6d
	.byte	0xb
	.long	0xa8
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1437
	.byte	0xd
	.byte	0x70
	.byte	0xa
	.long	0x77
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1438
	.byte	0xd
	.byte	0x73
	.byte	0xd
	.long	0x2aa3
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1439
	.byte	0xd
	.byte	0x76
	.byte	0xa
	.long	0x2ac8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1440
	.byte	0xd
	.byte	0x79
	.byte	0x11
	.long	0x2b7f
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1375
	.byte	0xd
	.byte	0x7c
	.byte	0xa
	.long	0x77
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1441
	.byte	0xd
	.byte	0x7f
	.byte	0xd
	.long	0x2aa3
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1442
	.byte	0xd
	.byte	0x82
	.byte	0xb
	.long	0xaf
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1443
	.byte	0xd
	.byte	0x84
	.byte	0xb
	.long	0x77
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1444
	.byte	0xd
	.byte	0x85
	.byte	0x15
	.long	0x2d23
	.byte	0x78
	.byte	0
	.uleb128 0x17
	.long	.LASF1445
	.byte	0x58
	.byte	0xd
	.byte	0xb3
	.long	0x2d23
	.uleb128 0x9
	.string	"v1"
	.byte	0xd
	.byte	0xb6
	.byte	0xf
	.long	0x2dd2
	.byte	0
	.uleb128 0x9
	.string	"v2"
	.byte	0xd
	.byte	0xb7
	.byte	0xf
	.long	0x2dd2
	.byte	0x8
	.uleb128 0x9
	.string	"dx"
	.byte	0xd
	.byte	0xba
	.byte	0xd
	.long	0x2b3
	.byte	0x10
	.uleb128 0x9
	.string	"dy"
	.byte	0xd
	.byte	0xbb
	.byte	0xd
	.long	0x2b3
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1354
	.byte	0xd
	.byte	0xbe
	.byte	0xb
	.long	0xa8
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1436
	.byte	0xd
	.byte	0xbf
	.byte	0xb
	.long	0xa8
	.byte	0x1a
	.uleb128 0x9
	.string	"tag"
	.byte	0xd
	.byte	0xc0
	.byte	0xb
	.long	0xa8
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1446
	.byte	0xd
	.byte	0xc4
	.byte	0xb
	.long	0x251
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1447
	.byte	0xd
	.byte	0xc8
	.byte	0xd
	.long	0x2dd7
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1448
	.byte	0xd
	.byte	0xcb
	.byte	0x11
	.long	0x2dc6
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1449
	.byte	0xd
	.byte	0xcf
	.byte	0xf
	.long	0x2d90
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1450
	.byte	0xd
	.byte	0xd0
	.byte	0xf
	.long	0x2d90
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1375
	.byte	0xd
	.byte	0xd3
	.byte	0xa
	.long	0x77
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1442
	.byte	0xd
	.byte	0xd6
	.byte	0xb
	.long	0xaf
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.long	0x2d28
	.uleb128 0x6
	.long	0x2c64
	.uleb128 0x8
	.long	.LASF1451
	.byte	0xd
	.byte	0x87
	.byte	0x3
	.long	0x2b8b
	.uleb128 0x11
	.byte	0x18
	.byte	0xd
	.byte	0x90
	.long	0x2d90
	.uleb128 0x3
	.long	.LASF1452
	.byte	0xd
	.byte	0x93
	.byte	0xd
	.long	0x2b3
	.byte	0
	.uleb128 0x3
	.long	.LASF1453
	.byte	0xd
	.byte	0x96
	.byte	0xd
	.long	0x2b3
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1454
	.byte	0xd
	.byte	0x9a
	.byte	0xb
	.long	0xa8
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1455
	.byte	0xd
	.byte	0x9b
	.byte	0xb
	.long	0xa8
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1456
	.byte	0xd
	.byte	0x9c
	.byte	0xb
	.long	0xa8
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1387
	.byte	0xd
	.byte	0x9f
	.byte	0xf
	.long	0x2d90
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	0x2d2d
	.uleb128 0x8
	.long	.LASF1457
	.byte	0xd
	.byte	0xa1
	.byte	0x3
	.long	0x2d39
	.uleb128 0xf
	.long	0x9a
	.byte	0xd
	.byte	0xa9
	.byte	0x1
	.long	0x2dc6
	.uleb128 0x2
	.long	.LASF1458
	.byte	0
	.uleb128 0x2
	.long	.LASF1459
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1460
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1461
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	.LASF1462
	.byte	0xd
	.byte	0xaf
	.byte	0x3
	.long	0x2da1
	.uleb128 0x6
	.long	0x2b3c
	.uleb128 0xb
	.long	0x2b3
	.long	0x2de7
	.uleb128 0xd
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	.LASF1463
	.byte	0xd
	.byte	0xd7
	.byte	0x3
	.long	0x2c64
	.uleb128 0x11
	.byte	0x38
	.byte	0xd
	.byte	0xf0
	.long	0x2e63
	.uleb128 0x9
	.string	"v1"
	.byte	0xd
	.byte	0xf2
	.byte	0xf
	.long	0x2dd2
	.byte	0
	.uleb128 0x9
	.string	"v2"
	.byte	0xd
	.byte	0xf3
	.byte	0xf
	.long	0x2dd2
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1464
	.byte	0xd
	.byte	0xf5
	.byte	0xd
	.long	0x2b3
	.byte	0x10
	.uleb128 0x3
	.long	.LASF56
	.byte	0xd
	.byte	0xf7
	.byte	0xd
	.long	0x30c
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1465
	.byte	0xd
	.byte	0xf9
	.byte	0xd
	.long	0x2e63
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1466
	.byte	0xd
	.byte	0xfa
	.byte	0xd
	.long	0x2e68
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1449
	.byte	0xd
	.byte	0xff
	.byte	0xf
	.long	0x2d90
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1450
	.byte	0xd
	.value	0x100
	.byte	0xf
	.long	0x2d90
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.long	0x2d95
	.uleb128 0x6
	.long	0x2de7
	.uleb128 0xe
	.long	.LASF1467
	.byte	0xd
	.value	0x102
	.byte	0x3
	.long	0x2df3
	.uleb128 0x19
	.byte	0x2
	.byte	0xd
	.value	0x11d
	.long	0x2ea0
	.uleb128 0x4
	.long	.LASF1468
	.byte	0xd
	.value	0x11f
	.byte	0xb
	.long	0xe8
	.byte	0
	.uleb128 0x4
	.long	.LASF1469
	.byte	0xd
	.value	0x120
	.byte	0xb
	.long	0xe8
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.long	.LASF1470
	.byte	0xd
	.value	0x121
	.byte	0x3
	.long	0x2e7a
	.uleb128 0xe
	.long	.LASF1471
	.byte	0xd
	.value	0x124
	.byte	0x10
	.long	0x2ea0
	.uleb128 0xe
	.long	.LASF1472
	.byte	0xd
	.value	0x13a
	.byte	0xe
	.long	0xe8
	.uleb128 0x2d
	.long	.LASF1473
	.byte	0x40
	.byte	0xd
	.value	0x142
	.byte	0x10
	.long	0x2f7a
	.uleb128 0x4
	.long	.LASF1474
	.byte	0xd
	.value	0x144
	.byte	0xd
	.long	0x2f7a
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
	.byte	0xd
	.value	0x148
	.byte	0xe
	.long	0x2b3
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1476
	.byte	0xd
	.value	0x149
	.byte	0xe
	.long	0x2b3
	.byte	0x14
	.uleb128 0x4
	.long	.LASF1477
	.byte	0xd
	.value	0x14a
	.byte	0xe
	.long	0x2b3
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1478
	.byte	0xd
	.value	0x14d
	.byte	0xb
	.long	0x77
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF1479
	.byte	0xd
	.value	0x150
	.byte	0xe
	.long	0x2b3
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1480
	.byte	0xd
	.value	0x153
	.byte	0xe
	.long	0x2b3
	.byte	0x24
	.uleb128 0x4
	.long	.LASF1481
	.byte	0xd
	.value	0x157
	.byte	0xd
	.long	0x2f7f
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1482
	.byte	0xd
	.value	0x158
	.byte	0xd
	.long	0x2f7f
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1483
	.byte	0xd
	.value	0x159
	.byte	0xd
	.long	0x2f7f
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.long	0x2e6d
	.uleb128 0x6
	.long	0xa8
	.uleb128 0xe
	.long	.LASF1484
	.byte	0xd
	.value	0x15b
	.byte	0x3
	.long	0x2ec7
	.uleb128 0x6
	.long	0x2eba
	.uleb128 0x2e
	.value	0x298
	.byte	0xd
	.value	0x1cc
	.byte	0x9
	.long	0x3037
	.uleb128 0x4
	.long	.LASF1350
	.byte	0xd
	.value	0x1ce
	.byte	0xc
	.long	0x2b3
	.byte	0
	.uleb128 0x4
	.long	.LASF1485
	.byte	0xd
	.value	0x1cf
	.byte	0x9
	.long	0x77
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1435
	.byte	0xd
	.value	0x1d0
	.byte	0x9
	.long	0x77
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1486
	.byte	0xd
	.value	0x1d1
	.byte	0x9
	.long	0x77
	.byte	0xc
	.uleb128 0x4
	.long	.LASF1487
	.byte	0xd
	.value	0x1d2
	.byte	0x9
	.long	0x77
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1488
	.byte	0xd
	.value	0x1d6
	.byte	0x9
	.long	0xe8
	.byte	0x14
	.uleb128 0x1b
	.string	"top"
	.value	0x1d9
	.byte	0x9
	.long	0x3037
	.byte	0x15
	.uleb128 0x18
	.long	.LASF1489
	.value	0x1da
	.long	0xe8
	.value	0x155
	.uleb128 0x18
	.long	.LASF1490
	.value	0x1db
	.long	0xe8
	.value	0x156
	.uleb128 0x18
	.long	.LASF1491
	.value	0x1dd
	.long	0x3037
	.value	0x157
	.uleb128 0x18
	.long	.LASF1492
	.value	0x1de
	.long	0xe8
	.value	0x297
	.byte	0
	.uleb128 0xb
	.long	0xe8
	.long	0x3048
	.uleb128 0x14
	.long	0x43
	.value	0x13f
	.byte	0
	.uleb128 0xe
	.long	.LASF1493
	.byte	0xd
	.value	0x1e0
	.byte	0x3
	.long	0x2f96
	.uleb128 0x5
	.long	.LASF1494
	.byte	0x10
	.byte	0x2c
	.byte	0x12
	.long	0x2ea
	.uleb128 0x6
	.long	0x77
	.uleb128 0x5
	.long	.LASF1495
	.byte	0x10
	.byte	0x3e
	.byte	0xe
	.long	0x3061
	.uleb128 0x5
	.long	.LASF1392
	.byte	0x10
	.byte	0x69
	.byte	0x11
	.long	0x2b3
	.uleb128 0x5
	.long	.LASF1496
	.byte	0x10
	.byte	0x6b
	.byte	0x11
	.long	0x30c
	.uleb128 0xb
	.long	0x30c
	.long	0x309b
	.uleb128 0x14
	.long	0x43
	.value	0x140
	.byte	0
	.uleb128 0x5
	.long	.LASF1497
	.byte	0x10
	.byte	0x73
	.byte	0x11
	.long	0x308a
	.uleb128 0x5
	.long	.LASF1498
	.byte	0x10
	.byte	0x76
	.byte	0x11
	.long	0x2b3
	.uleb128 0x5
	.long	.LASF1499
	.byte	0x10
	.byte	0x77
	.byte	0x11
	.long	0x30c
	.uleb128 0x5
	.long	.LASF1500
	.byte	0x10
	.byte	0x7c
	.byte	0xd
	.long	0x77
	.uleb128 0x5
	.long	.LASF1501
	.byte	0x10
	.byte	0x81
	.byte	0x14
	.long	0x30d7
	.uleb128 0x6
	.long	0x3048
	.uleb128 0x5
	.long	.LASF1502
	.byte	0x10
	.byte	0x82
	.byte	0x14
	.long	0x30d7
	.uleb128 0x5
	.long	.LASF1503
	.byte	0x11
	.byte	0x34
	.byte	0x11
	.long	0x2b3
	.uleb128 0xb
	.long	0x2f91
	.long	0x310a
	.uleb128 0xd
	.long	0x43
	.byte	0xf
	.uleb128 0xd
	.long	0x43
	.byte	0x2f
	.byte	0
	.uleb128 0x5
	.long	.LASF1504
	.byte	0x11
	.byte	0x4d
	.byte	0x16
	.long	0x30f4
	.uleb128 0x5
	.long	.LASF1417
	.byte	0x11
	.byte	0x51
	.byte	0xd
	.long	0x77
	.uleb128 0x5
	.long	.LASF1418
	.byte	0x11
	.byte	0x52
	.byte	0x16
	.long	0x2f91
	.uleb128 0x2f
	.uleb128 0x5
	.long	.LASF1505
	.byte	0x11
	.byte	0x64
	.byte	0x10
	.long	0x313b
	.uleb128 0x6
	.long	0x312e
	.uleb128 0x5
	.long	.LASF1474
	.byte	0x12
	.byte	0x1f
	.byte	0x10
	.long	0x2f7a
	.uleb128 0x5
	.long	.LASF1465
	.byte	0x12
	.byte	0x20
	.byte	0x11
	.long	0x2e63
	.uleb128 0x5
	.long	.LASF1466
	.byte	0x12
	.byte	0x21
	.byte	0x11
	.long	0x2e68
	.uleb128 0x5
	.long	.LASF1449
	.byte	0x12
	.byte	0x22
	.byte	0x12
	.long	0x2d90
	.uleb128 0x5
	.long	.LASF1450
	.byte	0x12
	.byte	0x23
	.byte	0x12
	.long	0x2d90
	.uleb128 0x5
	.long	.LASF1506
	.byte	0x12
	.byte	0x25
	.byte	0xd
	.long	0x77
	.uleb128 0x5
	.long	.LASF1507
	.byte	0x12
	.byte	0x26
	.byte	0xd
	.long	0x77
	.uleb128 0x5
	.long	.LASF1508
	.byte	0x12
	.byte	0x28
	.byte	0x11
	.long	0xdc
	.uleb128 0x5
	.long	.LASF1509
	.byte	0x12
	.byte	0x2b
	.byte	0x11
	.long	0xdc
	.uleb128 0x5
	.long	.LASF1510
	.byte	0x12
	.byte	0x2c
	.byte	0x11
	.long	0xdc
	.uleb128 0xb
	.long	0x2f84
	.long	0x31c8
	.uleb128 0xd
	.long	0x43
	.byte	0xff
	.byte	0
	.uleb128 0x5
	.long	.LASF1511
	.byte	0x12
	.byte	0x30
	.byte	0x12
	.long	0x31b8
	.uleb128 0x5
	.long	.LASF1512
	.byte	0x12
	.byte	0x31
	.byte	0x13
	.long	0x31e0
	.uleb128 0x6
	.long	0x2f84
	.uleb128 0x6
	.long	0x2f91
	.uleb128 0x5
	.long	.LASF1513
	.byte	0x13
	.byte	0x23
	.byte	0x11
	.long	0x2f7f
	.uleb128 0xb
	.long	0xa8
	.long	0x3207
	.uleb128 0x14
	.long	0x43
	.value	0x13f
	.byte	0
	.uleb128 0x5
	.long	.LASF1514
	.byte	0x13
	.byte	0x2b
	.byte	0xf
	.long	0x31f6
	.uleb128 0x5
	.long	.LASF1515
	.byte	0x13
	.byte	0x2c
	.byte	0xf
	.long	0x31f6
	.uleb128 0x5
	.long	.LASF1516
	.byte	0x14
	.byte	0x27
	.byte	0xf
	.long	0x31f6
	.uleb128 0x5
	.long	.LASF1517
	.byte	0x14
	.byte	0x28
	.byte	0xf
	.long	0x31f6
	.uleb128 0x5
	.long	.LASF1518
	.byte	0x14
	.byte	0x2b
	.byte	0x10
	.long	0x2f7f
	.uleb128 0x5
	.long	.LASF1519
	.byte	0x14
	.byte	0x2c
	.byte	0x10
	.long	0x2f7f
	.uleb128 0x5
	.long	.LASF1520
	.byte	0x14
	.byte	0x2d
	.byte	0x11
	.long	0x2b3
	.uleb128 0x5
	.long	.LASF1521
	.byte	0x14
	.byte	0x2e
	.byte	0x11
	.long	0x2b3
	.uleb128 0x5
	.long	.LASF1522
	.byte	0x15
	.byte	0x20
	.byte	0x16
	.long	0x2f91
	.uleb128 0x5
	.long	.LASF1523
	.byte	0x15
	.byte	0x21
	.byte	0xd
	.long	0x77
	.uleb128 0x5
	.long	.LASF1524
	.byte	0x15
	.byte	0x22
	.byte	0xd
	.long	0x77
	.uleb128 0x5
	.long	.LASF1525
	.byte	0x15
	.byte	0x23
	.byte	0xd
	.long	0x77
	.uleb128 0x5
	.long	.LASF1526
	.byte	0x15
	.byte	0x24
	.byte	0x11
	.long	0x2b3
	.uleb128 0x5
	.long	.LASF1527
	.byte	0x15
	.byte	0x25
	.byte	0x11
	.long	0x2b3
	.uleb128 0x5
	.long	.LASF1528
	.byte	0x15
	.byte	0x28
	.byte	0xf
	.long	0x32bb
	.uleb128 0x6
	.long	0xe8
	.uleb128 0x12
	.long	0x3194
	.byte	0x2e
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	segtextured
	.uleb128 0x12
	.long	0x31a0
	.byte	0x31
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	markfloor
	.uleb128 0x12
	.long	0x31ac
	.byte	0x32
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	markceiling
	.uleb128 0x7
	.long	.LASF1529
	.byte	0x34
	.byte	0xa
	.long	0xdc
	.uleb128 0x9
	.byte	0x3
	.quad	maskedtexture
	.uleb128 0x7
	.long	.LASF1454
	.byte	0x35
	.byte	0x6
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	toptexture
	.uleb128 0x7
	.long	.LASF1455
	.byte	0x36
	.byte	0x6
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	bottomtexture
	.uleb128 0x7
	.long	.LASF1456
	.byte	0x37
	.byte	0x6
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	midtexture
	.uleb128 0x12
	.long	0x30b3
	.byte	0x3a
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	rw_normalangle
	.uleb128 0x12
	.long	0x30bf
	.byte	0x3c
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	rw_angle1
	.uleb128 0x12
	.long	0x317c
	.byte	0x41
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	rw_x
	.uleb128 0x12
	.long	0x3188
	.byte	0x42
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	rw_stopx
	.uleb128 0x7
	.long	.LASF1530
	.byte	0x43
	.byte	0xa
	.long	0x30c
	.uleb128 0x9
	.byte	0x3
	.quad	rw_centerangle
	.uleb128 0x7
	.long	.LASF1531
	.byte	0x44
	.byte	0xa
	.long	0x2b3
	.uleb128 0x9
	.byte	0x3
	.quad	rw_offset
	.uleb128 0x12
	.long	0x30a7
	.byte	0x45
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	rw_distance
	.uleb128 0x7
	.long	.LASF1532
	.byte	0x46
	.byte	0xa
	.long	0x2b3
	.uleb128 0x9
	.byte	0x3
	.quad	rw_scale
	.uleb128 0x7
	.long	.LASF1533
	.byte	0x47
	.byte	0xa
	.long	0x2b3
	.uleb128 0x9
	.byte	0x3
	.quad	rw_scalestep
	.uleb128 0x7
	.long	.LASF1534
	.byte	0x48
	.byte	0xa
	.long	0x2b3
	.uleb128 0x9
	.byte	0x3
	.quad	rw_midtexturemid
	.uleb128 0x7
	.long	.LASF1535
	.byte	0x49
	.byte	0xa
	.long	0x2b3
	.uleb128 0x9
	.byte	0x3
	.quad	rw_toptexturemid
	.uleb128 0x7
	.long	.LASF1536
	.byte	0x4a
	.byte	0xa
	.long	0x2b3
	.uleb128 0x9
	.byte	0x3
	.quad	rw_bottomtexturemid
	.uleb128 0x7
	.long	.LASF1537
	.byte	0x4c
	.byte	0x6
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	worldtop
	.uleb128 0x7
	.long	.LASF1538
	.byte	0x4d
	.byte	0x6
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	worldbottom
	.uleb128 0x7
	.long	.LASF1539
	.byte	0x4e
	.byte	0x6
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	worldhigh
	.uleb128 0x7
	.long	.LASF1540
	.byte	0x4f
	.byte	0x6
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	worldlow
	.uleb128 0x7
	.long	.LASF1541
	.byte	0x51
	.byte	0xa
	.long	0x2b3
	.uleb128 0x9
	.byte	0x3
	.quad	pixhigh
	.uleb128 0x7
	.long	.LASF1542
	.byte	0x52
	.byte	0xa
	.long	0x2b3
	.uleb128 0x9
	.byte	0x3
	.quad	pixlow
	.uleb128 0x7
	.long	.LASF1543
	.byte	0x53
	.byte	0xa
	.long	0x2b3
	.uleb128 0x9
	.byte	0x3
	.quad	pixhighstep
	.uleb128 0x7
	.long	.LASF1544
	.byte	0x54
	.byte	0xa
	.long	0x2b3
	.uleb128 0x9
	.byte	0x3
	.quad	pixlowstep
	.uleb128 0x7
	.long	.LASF1545
	.byte	0x56
	.byte	0xa
	.long	0x2b3
	.uleb128 0x9
	.byte	0x3
	.quad	topfrac
	.uleb128 0x7
	.long	.LASF1546
	.byte	0x57
	.byte	0xa
	.long	0x2b3
	.uleb128 0x9
	.byte	0x3
	.quad	topstep
	.uleb128 0x7
	.long	.LASF1547
	.byte	0x59
	.byte	0xa
	.long	0x2b3
	.uleb128 0x9
	.byte	0x3
	.quad	bottomfrac
	.uleb128 0x7
	.long	.LASF1548
	.byte	0x5a
	.byte	0xa
	.long	0x2b3
	.uleb128 0x9
	.byte	0x3
	.quad	bottomstep
	.uleb128 0x7
	.long	.LASF1549
	.byte	0x5d
	.byte	0x10
	.long	0x31e5
	.uleb128 0x9
	.byte	0x3
	.quad	walllights
	.uleb128 0x7
	.long	.LASF1483
	.byte	0x5f
	.byte	0x9
	.long	0x2f7f
	.uleb128 0x9
	.byte	0x3
	.quad	maskedtexturecol
	.uleb128 0x13
	.long	.LASF1550
	.byte	0x16
	.byte	0x2b
	.byte	0xe
	.long	0xaf
	.long	0x3575
	.uleb128 0xa
	.long	0xaf
	.uleb128 0xa
	.long	0xbd
	.uleb128 0xa
	.long	0x6b
	.byte	0
	.uleb128 0x13
	.long	.LASF1551
	.byte	0x13
	.byte	0x4b
	.byte	0x1
	.long	0x30d7
	.long	0x3595
	.uleb128 0xa
	.long	0x30d7
	.uleb128 0xa
	.long	0x77
	.uleb128 0xa
	.long	0x77
	.byte	0
	.uleb128 0x13
	.long	.LASF1552
	.byte	0x11
	.byte	0x8b
	.byte	0x9
	.long	0x2b3
	.long	0x35ab
	.uleb128 0xa
	.long	0x30c
	.byte	0
	.uleb128 0x13
	.long	.LASF1553
	.byte	0x11
	.byte	0x86
	.byte	0x1
	.long	0x2b3
	.long	0x35c6
	.uleb128 0xa
	.long	0x2b3
	.uleb128 0xa
	.long	0x2b3
	.byte	0
	.uleb128 0x21
	.long	.LASF1554
	.byte	0x17
	.byte	0x59
	.long	0x35d8
	.uleb128 0xa
	.long	0xb1
	.uleb128 0x1e
	.byte	0
	.uleb128 0x21
	.long	.LASF1555
	.byte	0x14
	.byte	0x34
	.long	0x35e9
	.uleb128 0xa
	.long	0x35e9
	.byte	0
	.uleb128 0x6
	.long	0x2ead
	.uleb128 0x13
	.long	.LASF1556
	.byte	0x18
	.byte	0x24
	.byte	0x1
	.long	0x32bb
	.long	0x3609
	.uleb128 0xa
	.long	0x77
	.uleb128 0xa
	.long	0x77
	.byte	0
	.uleb128 0x13
	.long	.LASF1557
	.byte	0x7
	.byte	0x28
	.byte	0x9
	.long	0x2b3
	.long	0x3624
	.uleb128 0xa
	.long	0x2b3
	.uleb128 0xa
	.long	0x2b3
	.byte	0
	.uleb128 0x30
	.long	.LASF1566
	.byte	0x1
	.value	0x177
	.byte	0x1
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x36bd
	.uleb128 0x22
	.long	.LASF1558
	.value	0x178
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x22
	.long	.LASF1559
	.value	0x179
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.string	"hyp"
	.byte	0x1
	.value	0x17b
	.byte	0xe
	.long	0x2b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x15
	.long	.LASF1561
	.value	0x17c
	.byte	0xe
	.long	0x2b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.long	.LASF1562
	.value	0x17d
	.byte	0xe
	.long	0x30c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.long	.LASF1563
	.value	0x17d
	.byte	0x19
	.long	0x30c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.long	.LASF1564
	.value	0x17e
	.byte	0xe
	.long	0x2b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.long	.LASF1565
	.value	0x17f
	.byte	0xb
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x32
	.long	.LASF1567
	.byte	0x1
	.byte	0xce
	.byte	0x6
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x374a
	.uleb128 0x10
	.long	.LASF56
	.byte	0xd0
	.byte	0xe
	.long	0x30c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.long	.LASF1568
	.byte	0xd1
	.byte	0xf
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.string	"yl"
	.byte	0xd2
	.byte	0xb
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x16
	.string	"yh"
	.byte	0xd3
	.byte	0xb
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.string	"mid"
	.byte	0xd4
	.byte	0xb
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.long	.LASF1569
	.byte	0xd5
	.byte	0xe
	.long	0x2b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.string	"top"
	.byte	0xd6
	.byte	0xb
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.long	.LASF1491
	.byte	0xd7
	.byte	0xb
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x33
	.long	.LASF1572
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.string	"ds"
	.byte	0x68
	.byte	0xe
	.long	0x31e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.string	"x1"
	.byte	0x69
	.byte	0x8
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1c
	.string	"x2"
	.byte	0x6a
	.byte	0x8
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.long	.LASF1568
	.byte	0x6c
	.byte	0xe
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x16
	.string	"col"
	.byte	0x6d
	.byte	0xf
	.long	0x35e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF1565
	.byte	0x6e
	.byte	0xa
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.long	.LASF1570
	.byte	0x6f
	.byte	0xa
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x19
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.sleb128 9
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
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x25
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x34
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
.LASF1427:
	.string	"viewwidth"
.LASF854:
	.string	"S_BSPI_RUN3"
.LASF855:
	.string	"S_BSPI_RUN4"
.LASF856:
	.string	"S_BSPI_RUN5"
.LASF857:
	.string	"S_BSPI_RUN6"
.LASF858:
	.string	"S_BSPI_RUN7"
.LASF859:
	.string	"S_BSPI_RUN8"
.LASF860:
	.string	"S_BSPI_RUN9"
.LASF144:
	.string	"SPR_YSKU"
.LASF1416:
	.string	"attacker"
.LASF507:
	.string	"S_FIRE10"
.LASF508:
	.string	"S_FIRE11"
.LASF509:
	.string	"S_FIRE12"
.LASF510:
	.string	"S_FIRE13"
.LASF511:
	.string	"S_FIRE14"
.LASF512:
	.string	"S_FIRE15"
.LASF513:
	.string	"S_FIRE16"
.LASF514:
	.string	"S_FIRE17"
.LASF515:
	.string	"S_FIRE18"
.LASF516:
	.string	"S_FIRE19"
.LASF1328:
	.string	"MT_MISC84"
.LASF1261:
	.string	"MT_MISC20"
.LASF1075:
	.string	"S_MEGA2"
.LASF1076:
	.string	"S_MEGA3"
.LASF1077:
	.string	"S_MEGA4"
.LASF1265:
	.string	"MT_MISC24"
.LASF1266:
	.string	"MT_MISC25"
.LASF1268:
	.string	"MT_MISC26"
.LASF1269:
	.string	"MT_MISC27"
.LASF1270:
	.string	"MT_MISC28"
.LASF1273:
	.string	"MT_MISC29"
.LASF706:
	.string	"S_SARG_PAIN2"
.LASF1381:
	.string	"threshold"
.LASF32:
	.string	"wp_pistol"
.LASF185:
	.string	"SPR_COL1"
.LASF186:
	.string	"SPR_COL2"
.LASF187:
	.string	"SPR_COL3"
.LASF188:
	.string	"SPR_COL4"
.LASF197:
	.string	"SPR_COL5"
.LASF191:
	.string	"SPR_COL6"
.LASF517:
	.string	"S_FIRE20"
.LASF518:
	.string	"S_FIRE21"
.LASF519:
	.string	"S_FIRE22"
.LASF520:
	.string	"S_FIRE23"
.LASF521:
	.string	"S_FIRE24"
.LASF171:
	.string	"SPR_COLU"
.LASF523:
	.string	"S_FIRE26"
.LASF524:
	.string	"S_FIRE27"
.LASF525:
	.string	"S_FIRE28"
.LASF526:
	.string	"S_FIRE29"
.LASF1274:
	.string	"MT_MISC30"
.LASF1189:
	.string	"action"
.LASF1276:
	.string	"MT_MISC32"
.LASF1277:
	.string	"MT_MISC33"
.LASF868:
	.string	"S_BSPI_PAIN"
.LASF1279:
	.string	"MT_MISC35"
.LASF340:
	.string	"S_BFGEXP"
.LASF46:
	.string	"am_misl"
.LASF1282:
	.string	"MT_MISC38"
.LASF1283:
	.string	"MT_MISC39"
.LASF1433:
	.string	"floorpic"
.LASF870:
	.string	"S_BSPI_DIE1"
.LASF1359:
	.string	"NUMPSPRITES"
.LASF1557:
	.string	"FixedMul"
.LASF875:
	.string	"S_BSPI_DIE6"
.LASF1549:
	.string	"walllights"
.LASF1483:
	.string	"maskedtexturecol"
.LASF1460:
	.string	"ST_POSITIVE"
.LASF1392:
	.string	"viewz"
.LASF1474:
	.string	"curline"
.LASF1454:
	.string	"toptexture"
.LASF766:
	.string	"S_BOSS_RAISE1"
.LASF767:
	.string	"S_BOSS_RAISE2"
.LASF1208:
	.string	"MT_HEAD"
.LASF768:
	.string	"S_BOSS_RAISE3"
.LASF527:
	.string	"S_FIRE30"
.LASF672:
	.string	"S_TROO_PAIN"
.LASF961:
	.string	"S_SSWV_DIE1"
.LASF771:
	.string	"S_BOSS_RAISE6"
.LASF963:
	.string	"S_SSWV_DIE3"
.LASF964:
	.string	"S_SSWV_DIE4"
.LASF965:
	.string	"S_SSWV_DIE5"
.LASF139:
	.string	"SPR_BKEY"
.LASF1563:
	.string	"offsetangle"
.LASF783:
	.string	"S_BOS2_ATK1"
.LASF784:
	.string	"S_BOS2_ATK2"
.LASF785:
	.string	"S_BOS2_ATK3"
.LASF173:
	.string	"SPR_GOR1"
.LASF180:
	.string	"SPR_GOR2"
.LASF181:
	.string	"SPR_GOR3"
.LASF182:
	.string	"SPR_GOR4"
.LASF183:
	.string	"SPR_GOR5"
.LASF1286:
	.string	"MT_MISC42"
.LASF1287:
	.string	"MT_MISC43"
.LASF540:
	.string	"S_SKEL_RUN1"
.LASF541:
	.string	"S_SKEL_RUN2"
.LASF542:
	.string	"S_SKEL_RUN3"
.LASF543:
	.string	"S_SKEL_RUN4"
.LASF544:
	.string	"S_SKEL_RUN5"
.LASF545:
	.string	"S_SKEL_RUN6"
.LASF546:
	.string	"S_SKEL_RUN7"
.LASF547:
	.string	"S_SKEL_RUN8"
.LASF548:
	.string	"S_SKEL_RUN9"
.LASF35:
	.string	"wp_missile"
.LASF1026:
	.string	"S_BEXP2"
.LASF1336:
	.string	"seestate"
.LASF721:
	.string	"S_HEAD_ATK1"
.LASF722:
	.string	"S_HEAD_ATK2"
.LASF723:
	.string	"S_HEAD_ATK3"
.LASF1448:
	.string	"slopetype"
.LASF975:
	.string	"S_SSWV_RAISE1"
.LASF976:
	.string	"S_SSWV_RAISE2"
.LASF977:
	.string	"S_SSWV_RAISE3"
.LASF978:
	.string	"S_SSWV_RAISE4"
.LASF979:
	.string	"S_SSWV_RAISE5"
.LASF56:
	.string	"angle"
.LASF1203:
	.string	"MT_FATSHOT"
.LASF159:
	.string	"SPR_CELL"
.LASF160:
	.string	"SPR_CELP"
.LASF1141:
	.string	"S_HEARTCOL"
.LASF1388:
	.string	"numlines"
.LASF1058:
	.string	"S_MEDI"
.LASF1065:
	.string	"S_PINV"
.LASF1252:
	.string	"MT_INS"
.LASF1295:
	.string	"MT_MISC51"
.LASF1296:
	.string	"MT_MISC52"
.LASF1250:
	.string	"MT_INV"
.LASF1298:
	.string	"MT_MISC54"
.LASF1155:
	.string	"S_BTORCHSHRT"
.LASF276:
	.string	"S_MISSILEUP"
.LASF1301:
	.string	"MT_MISC57"
.LASF1302:
	.string	"MT_MISC58"
.LASF1303:
	.string	"MT_MISC59"
.LASF453:
	.string	"S_SPOS_RAISE1"
.LASF247:
	.string	"S_SGUNFLASH1"
.LASF248:
	.string	"S_SGUNFLASH2"
.LASF795:
	.string	"S_BOS2_RAISE1"
.LASF796:
	.string	"S_BOS2_RAISE2"
.LASF797:
	.string	"S_BOS2_RAISE3"
.LASF798:
	.string	"S_BOS2_RAISE4"
.LASF799:
	.string	"S_BOS2_RAISE5"
.LASF800:
	.string	"S_BOS2_RAISE6"
.LASF801:
	.string	"S_BOS2_RAISE7"
.LASF560:
	.string	"S_SKEL_PAIN"
.LASF1047:
	.string	"S_RKEY"
.LASF74:
	.string	"next"
.LASF1469:
	.string	"length"
.LASF229:
	.string	"S_PISTOLUP"
.LASF915:
	.string	"S_CYBER_DIE8"
.LASF1453:
	.string	"rowoffset"
.LASF1304:
	.string	"MT_MISC60"
.LASF1305:
	.string	"MT_MISC61"
.LASF1306:
	.string	"MT_MISC62"
.LASF1307:
	.string	"MT_MISC63"
.LASF1308:
	.string	"MT_MISC64"
.LASF1309:
	.string	"MT_MISC65"
.LASF1310:
	.string	"MT_MISC66"
.LASF1311:
	.string	"MT_MISC67"
.LASF344:
	.string	"S_EXPLODE1"
.LASF345:
	.string	"S_EXPLODE2"
.LASF346:
	.string	"S_EXPLODE3"
.LASF1552:
	.string	"R_ScaleFromGlobalAngle"
.LASF535:
	.string	"S_TRACEEXP1"
.LASF536:
	.string	"S_TRACEEXP2"
.LASF537:
	.string	"S_TRACEEXP3"
.LASF1566:
	.string	"R_StoreWallRange"
.LASF923:
	.string	"S_PAIN_RUN5"
.LASF1025:
	.string	"S_BEXP"
.LASF924:
	.string	"S_PAIN_RUN6"
.LASF1417:
	.string	"extralight"
.LASF1142:
	.string	"S_HEARTCOL2"
.LASF321:
	.string	"S_RBALLX1"
.LASF1350:
	.string	"height"
.LASF1235:
	.string	"MT_TELEPORTMAN"
.LASF1314:
	.string	"MT_MISC70"
.LASF104:
	.string	"SPR_IFOG"
.LASF1316:
	.string	"MT_MISC72"
.LASF1317:
	.string	"MT_MISC73"
.LASF1318:
	.string	"MT_MISC74"
.LASF1319:
	.string	"MT_MISC75"
.LASF1320:
	.string	"MT_MISC76"
.LASF1148:
	.string	"S_GREENTORCH2"
.LASF1149:
	.string	"S_GREENTORCH3"
.LASF1150:
	.string	"S_GREENTORCH4"
.LASF989:
	.string	"S_COMMKEEN9"
.LASF638:
	.string	"S_CPOS_PAIN2"
.LASF1516:
	.string	"negonearray"
.LASF861:
	.string	"S_BSPI_RUN10"
.LASF862:
	.string	"S_BSPI_RUN11"
.LASF863:
	.string	"S_BSPI_RUN12"
.LASF945:
	.string	"S_SSWV_RUN1"
.LASF946:
	.string	"S_SSWV_RUN2"
.LASF947:
	.string	"S_SSWV_RUN3"
.LASF948:
	.string	"S_SSWV_RUN4"
.LASF949:
	.string	"S_SSWV_RUN5"
.LASF950:
	.string	"S_SSWV_RUN6"
.LASF951:
	.string	"S_SSWV_RUN7"
.LASF952:
	.string	"S_SSWV_RUN8"
.LASF1130:
	.string	"S_SKULLCOL"
.LASF1513:
	.string	"lastopening"
.LASF1202:
	.string	"MT_FATSO"
.LASF674:
	.string	"S_TROO_DIE1"
.LASF675:
	.string	"S_TROO_DIE2"
.LASF676:
	.string	"S_TROO_DIE3"
.LASF677:
	.string	"S_TROO_DIE4"
.LASF678:
	.string	"S_TROO_DIE5"
.LASF1524:
	.string	"dc_yl"
.LASF1055:
	.string	"S_YSKULL"
.LASF1056:
	.string	"S_YSKULL2"
.LASF157:
	.string	"SPR_ROCK"
.LASF1227:
	.string	"MT_ROCKET"
.LASF1325:
	.string	"MT_MISC81"
.LASF1326:
	.string	"MT_MISC82"
.LASF1327:
	.string	"MT_MISC83"
.LASF633:
	.string	"S_CPOS_ATK1"
.LASF634:
	.string	"S_CPOS_ATK2"
.LASF635:
	.string	"S_CPOS_ATK3"
.LASF636:
	.string	"S_CPOS_ATK4"
.LASF1194:
	.string	"MT_PLAYER"
.LASF169:
	.string	"SPR_SHOT"
.LASF362:
	.string	"S_IFOG2"
.LASF363:
	.string	"S_IFOG3"
.LASF364:
	.string	"S_IFOG4"
.LASF365:
	.string	"S_IFOG5"
.LASF98:
	.string	"SPR_PLSE"
.LASF90:
	.string	"SPR_PLSF"
.LASF89:
	.string	"SPR_PLSG"
.LASF758:
	.string	"S_BOSS_PAIN2"
.LASF458:
	.string	"S_VILE_STND"
.LASF986:
	.string	"S_COMMKEEN6"
.LASF987:
	.string	"S_COMMKEEN7"
.LASF988:
	.string	"S_COMMKEEN8"
.LASF97:
	.string	"SPR_PLSS"
.LASF837:
	.string	"S_SPID_PAIN2"
.LASF1351:
	.string	"mass"
.LASF210:
	.string	"SPR_POB1"
.LASF211:
	.string	"SPR_POB2"
.LASF1059:
	.string	"S_SOUL"
.LASF1069:
	.string	"S_PSTR"
.LASF901:
	.string	"S_CYBER_ATK1"
.LASF902:
	.string	"S_CYBER_ATK2"
.LASF903:
	.string	"S_CYBER_ATK3"
.LASF904:
	.string	"S_CYBER_ATK4"
.LASF905:
	.string	"S_CYBER_ATK5"
.LASF906:
	.string	"S_CYBER_ATK6"
.LASF1550:
	.string	"memcpy"
.LASF1096:
	.string	"S_BFUG"
.LASF136:
	.string	"SPR_FCAN"
.LASF1463:
	.string	"line_t"
.LASF579:
	.string	"S_FATT_STND"
.LASF1016:
	.string	"S_BRAINEXPLODE1"
.LASF1017:
	.string	"S_BRAINEXPLODE2"
.LASF1018:
	.string	"S_BRAINEXPLODE3"
.LASF300:
	.string	"S_BFGUP"
.LASF141:
	.string	"SPR_YKEY"
.LASF687:
	.string	"S_TROO_RAISE1"
.LASF688:
	.string	"S_TROO_RAISE2"
.LASF689:
	.string	"S_TROO_RAISE3"
.LASF690:
	.string	"S_TROO_RAISE4"
.LASF691:
	.string	"S_TROO_RAISE5"
.LASF1100:
	.string	"S_PLAS"
.LASF982:
	.string	"S_COMMKEEN2"
.LASF983:
	.string	"S_COMMKEEN3"
.LASF984:
	.string	"S_COMMKEEN4"
.LASF985:
	.string	"S_COMMKEEN5"
.LASF366:
	.string	"S_PLAY"
.LASF932:
	.string	"S_PAIN_DIE2"
.LASF933:
	.string	"S_PAIN_DIE3"
.LASF934:
	.string	"S_PAIN_DIE4"
.LASF935:
	.string	"S_PAIN_DIE5"
.LASF936:
	.string	"S_PAIN_DIE6"
.LASF1205:
	.string	"MT_TROOP"
.LASF487:
	.string	"S_VILE_PAIN2"
.LASF615:
	.string	"S_FATT_RAISE1"
.LASF36:
	.string	"wp_plasma"
.LASF617:
	.string	"S_FATT_RAISE3"
.LASF618:
	.string	"S_FATT_RAISE4"
.LASF619:
	.string	"S_FATT_RAISE5"
.LASF620:
	.string	"S_FATT_RAISE6"
.LASF621:
	.string	"S_FATT_RAISE7"
.LASF622:
	.string	"S_FATT_RAISE8"
.LASF331:
	.string	"S_ROCKET"
.LASF1226:
	.string	"MT_HEADSHOT"
.LASF1443:
	.string	"linecount"
.LASF1446:
	.string	"sidenum"
.LASF884:
	.string	"S_ARACH_PLAZ"
.LASF1123:
	.string	"S_STALAGTITE"
.LASF725:
	.string	"S_HEAD_PAIN2"
.LASF726:
	.string	"S_HEAD_PAIN3"
.LASF16:
	.string	"byte"
.LASF29:
	.string	"it_redskull"
.LASF1233:
	.string	"MT_TFOG"
.LASF434:
	.string	"S_SPOS_ATK1"
.LASF435:
	.string	"S_SPOS_ATK2"
.LASF436:
	.string	"S_SPOS_ATK3"
.LASF371:
	.string	"S_PLAY_ATK1"
.LASF372:
	.string	"S_PLAY_ATK2"
.LASF124:
	.string	"SPR_APLS"
.LASF1568:
	.string	"index"
.LASF63:
	.string	"finesine"
.LASF1555:
	.string	"R_DrawMaskedColumn"
.LASF1409:
	.string	"refire"
.LASF1152:
	.string	"S_REDTORCH2"
.LASF1153:
	.string	"S_REDTORCH3"
.LASF1154:
	.string	"S_REDTORCH4"
.LASF661:
	.string	"S_TROO_RUN1"
.LASF662:
	.string	"S_TROO_RUN2"
.LASF663:
	.string	"S_TROO_RUN3"
.LASF664:
	.string	"S_TROO_RUN4"
.LASF665:
	.string	"S_TROO_RUN5"
.LASF666:
	.string	"S_TROO_RUN6"
.LASF667:
	.string	"S_TROO_RUN7"
.LASF668:
	.string	"S_TROO_RUN8"
.LASF1485:
	.string	"picnum"
.LASF115:
	.string	"SPR_CPOS"
.LASF576:
	.string	"S_FATSHOTX1"
.LASF577:
	.string	"S_FATSHOTX2"
.LASF578:
	.string	"S_FATSHOTX3"
.LASF656:
	.string	"S_CPOS_RAISE5"
.LASF657:
	.string	"S_CPOS_RAISE6"
.LASF658:
	.string	"S_CPOS_RAISE7"
.LASF31:
	.string	"wp_fist"
.LASF1344:
	.string	"missilestate"
.LASF145:
	.string	"SPR_STIM"
.LASF1475:
	.string	"scale1"
.LASF1476:
	.string	"scale2"
.LASF692:
	.string	"S_SARG_STND"
.LASF917:
	.string	"S_CYBER_DIE10"
.LASF95:
	.string	"SPR_BAL1"
.LASF96:
	.string	"SPR_BAL2"
.LASF118:
	.string	"SPR_BAL7"
.LASF1376:
	.string	"info"
.LASF1111:
	.string	"S_HEADSONSTICK"
.LASF1371:
	.string	"ceilingz"
.LASF1508:
	.string	"segtextured"
.LASF568:
	.string	"S_SKEL_RAISE1"
.LASF83:
	.string	"SPR_SHT2"
.LASF222:
	.string	"S_PUNCH1"
.LASF223:
	.string	"S_PUNCH2"
.LASF224:
	.string	"S_PUNCH3"
.LASF225:
	.string	"S_PUNCH4"
.LASF226:
	.string	"S_PUNCH5"
.LASF585:
	.string	"S_FATT_RUN5"
.LASF221:
	.string	"S_PUNCHUP"
.LASF838:
	.string	"S_SPID_DIE1"
.LASF589:
	.string	"S_FATT_RUN9"
.LASF840:
	.string	"S_SPID_DIE3"
.LASF841:
	.string	"S_SPID_DIE4"
.LASF82:
	.string	"SPR_SHTF"
.LASF78:
	.string	"SPR_SHTG"
.LASF360:
	.string	"S_IFOG01"
.LASF361:
	.string	"S_IFOG02"
.LASF846:
	.string	"S_SPID_DIE9"
.LASF1512:
	.string	"ds_p"
.LASF1088:
	.string	"S_AMMO"
.LASF47:
	.string	"NUMAMMO"
.LASF1520:
	.string	"spryscale"
.LASF919:
	.string	"S_PAIN_RUN1"
.LASF920:
	.string	"S_PAIN_RUN2"
.LASF921:
	.string	"S_PAIN_RUN3"
.LASF922:
	.string	"S_PAIN_RUN4"
.LASF204:
	.string	"SPR_HDB1"
.LASF205:
	.string	"SPR_HDB2"
.LASF206:
	.string	"SPR_HDB3"
.LASF207:
	.string	"SPR_HDB4"
.LASF208:
	.string	"SPR_HDB5"
.LASF209:
	.string	"SPR_HDB6"
.LASF1195:
	.string	"MT_POSSESSED"
.LASF254:
	.string	"S_DSGUN3"
.LASF255:
	.string	"S_DSGUN4"
.LASF1452:
	.string	"textureoffset"
.LASF57:
	.string	"type"
.LASF1487:
	.string	"maxx"
.LASF274:
	.string	"S_MISSILE"
.LASF1102:
	.string	"S_SHOT2"
.LASF1169:
	.string	"S_HANGTLOOKDN"
.LASF1509:
	.string	"markfloor"
.LASF1378:
	.string	"movedir"
.LASF1511:
	.string	"drawsegs"
.LASF646:
	.string	"S_CPOS_XDIE1"
.LASF1551:
	.string	"R_CheckPlane"
.LASF1502:
	.string	"ceilingplane"
.LASF1504:
	.string	"scalelight"
.LASF71:
	.string	"actionf_t"
.LASF66:
	.string	"actionf_v"
.LASF165:
	.string	"SPR_MGUN"
.LASF1207:
	.string	"MT_SHADOWS"
.LASF549:
	.string	"S_SKEL_RUN10"
.LASF550:
	.string	"S_SKEL_RUN11"
.LASF551:
	.string	"S_SKEL_RUN12"
.LASF217:
	.string	"S_NULL"
.LASF759:
	.string	"S_BOSS_DIE1"
.LASF760:
	.string	"S_BOSS_DIE2"
.LASF761:
	.string	"S_BOSS_DIE3"
.LASF762:
	.string	"S_BOSS_DIE4"
.LASF763:
	.string	"S_BOSS_DIE5"
.LASF764:
	.string	"S_BOSS_DIE6"
.LASF765:
	.string	"S_BOSS_DIE7"
.LASF929:
	.string	"S_PAIN_PAIN"
.LASF298:
	.string	"S_BFG"
.LASF1342:
	.string	"painsound"
.LASF1455:
	.string	"bottomtexture"
.LASF1436:
	.string	"special"
.LASF944:
	.string	"S_SSWV_STND2"
.LASF166:
	.string	"SPR_CSAW"
.LASF1079:
	.string	"S_PMAP"
.LASF1085:
	.string	"S_PVIS"
.LASF299:
	.string	"S_BFGDOWN"
.LASF1219:
	.string	"MT_BOSSBRAIN"
.LASF112:
	.string	"SPR_SKEL"
.LASF294:
	.string	"S_PLASMA1"
.LASF295:
	.string	"S_PLASMA2"
.LASF1159:
	.string	"S_GTORCHSHRT"
.LASF1389:
	.string	"firstline"
.LASF1093:
	.string	"S_SHEL"
.LASF850:
	.string	"S_BSPI_STND2"
.LASF6:
	.string	"unsigned char"
.LASF110:
	.string	"SPR_FATB"
.LASF215:
	.string	"NUMSPRITES"
.LASF333:
	.string	"S_BFGSHOT2"
.LASF114:
	.string	"SPR_FATT"
.LASF1060:
	.string	"S_SOUL2"
.LASF1061:
	.string	"S_SOUL3"
.LASF1062:
	.string	"S_SOUL4"
.LASF1063:
	.string	"S_SOUL5"
.LASF1064:
	.string	"S_SOUL6"
.LASF820:
	.string	"S_SPID_RUN1"
.LASF821:
	.string	"S_SPID_RUN2"
.LASF822:
	.string	"S_SPID_RUN3"
.LASF823:
	.string	"S_SPID_RUN4"
.LASF824:
	.string	"S_SPID_RUN5"
.LASF825:
	.string	"S_SPID_RUN6"
.LASF826:
	.string	"S_SPID_RUN7"
.LASF827:
	.string	"S_SPID_RUN8"
.LASF61:
	.string	"float"
.LASF1027:
	.string	"S_BEXP3"
.LASF1028:
	.string	"S_BEXP4"
.LASF1116:
	.string	"S_DEADSTICK"
.LASF1418:
	.string	"fixedcolormap"
.LASF1403:
	.string	"weaponowned"
.LASF1236:
	.string	"MT_EXTRABFG"
.LASF406:
	.string	"S_POSS_DIE1"
.LASF407:
	.string	"S_POSS_DIE2"
.LASF408:
	.string	"S_POSS_DIE3"
.LASF409:
	.string	"S_POSS_DIE4"
.LASF410:
	.string	"S_POSS_DIE5"
.LASF236:
	.string	"S_SGUNDOWN"
.LASF1479:
	.string	"bsilheight"
.LASF85:
	.string	"SPR_CHGF"
.LASF84:
	.string	"SPR_CHGG"
.LASF629:
	.string	"S_CPOS_RUN5"
.LASF888:
	.string	"S_ARACH_PLEX3"
.LASF630:
	.string	"S_CPOS_RUN6"
.LASF890:
	.string	"S_ARACH_PLEX5"
.LASF631:
	.string	"S_CPOS_RUN7"
.LASF1380:
	.string	"target"
.LASF195:
	.string	"SPR_CEYE"
.LASF1478:
	.string	"silhouette"
.LASF1458:
	.string	"ST_HORIZONTAL"
.LASF937:
	.string	"S_PAIN_RAISE1"
.LASF938:
	.string	"S_PAIN_RAISE2"
.LASF939:
	.string	"S_PAIN_RAISE3"
.LASF940:
	.string	"S_PAIN_RAISE4"
.LASF941:
	.string	"S_PAIN_RAISE5"
.LASF574:
	.string	"S_FATSHOT1"
.LASF575:
	.string	"S_FATSHOT2"
.LASF1459:
	.string	"ST_VERTICAL"
.LASF152:
	.string	"SPR_SUIT"
.LASF802:
	.string	"S_SKULL_STND"
.LASF1498:
	.string	"rw_distance"
.LASF836:
	.string	"S_SPID_PAIN"
.LASF1331:
	.string	"NUMMOBJTYPES"
.LASF134:
	.string	"SPR_BAR1"
.LASF1457:
	.string	"side_t"
.LASF249:
	.string	"S_DSGUN"
.LASF1128:
	.string	"S_CANDLESTIK"
.LASF53:
	.string	"pw_allmap"
.LASF1184:
	.string	"NUMSTATES"
.LASF828:
	.string	"S_SPID_RUN9"
.LASF314:
	.string	"S_TBALL1"
.LASF315:
	.string	"S_TBALL2"
.LASF528:
	.string	"S_SMOKE1"
.LASF529:
	.string	"S_SMOKE2"
.LASF530:
	.string	"S_SMOKE3"
.LASF531:
	.string	"S_SMOKE4"
.LASF532:
	.string	"S_SMOKE5"
.LASF751:
	.string	"S_BOSS_RUN6"
.LASF752:
	.string	"S_BOSS_RUN7"
.LASF753:
	.string	"S_BOSS_RUN8"
.LASF117:
	.string	"SPR_HEAD"
.LASF1368:
	.string	"bprev"
.LASF178:
	.string	"SPR_POL1"
.LASF174:
	.string	"SPR_POL2"
.LASF177:
	.string	"SPR_POL3"
.LASF176:
	.string	"SPR_POL4"
.LASF175:
	.string	"SPR_POL5"
.LASF179:
	.string	"SPR_POL6"
.LASF1023:
	.string	"S_BAR1"
.LASF1237:
	.string	"MT_MISC0"
.LASF1109:
	.string	"S_DEADTORSO"
.LASF251:
	.string	"S_DSGUNUP"
.LASF1334:
	.string	"spawnstate"
.LASF660:
	.string	"S_TROO_STND2"
.LASF1180:
	.string	"S_TECH2LAMP"
.LASF1223:
	.string	"MT_SPAWNFIRE"
.LASF1198:
	.string	"MT_FIRE"
.LASF1488:
	.string	"pad1"
.LASF1489:
	.string	"pad2"
.LASF1190:
	.string	"nextstate"
.LASF1492:
	.string	"pad4"
.LASF757:
	.string	"S_BOSS_PAIN"
.LASF128:
	.string	"SPR_SSWV"
.LASF1534:
	.string	"rw_midtexturemid"
.LASF319:
	.string	"S_RBALL1"
.LASF320:
	.string	"S_RBALL2"
.LASF1124:
	.string	"S_TALLGRNCOL"
.LASF1521:
	.string	"sprtopscreen"
.LASF1383:
	.string	"lastlook"
.LASF1426:
	.string	"playerstate_t"
.LASF1113:
	.string	"S_HEADONASTICK"
.LASF393:
	.string	"S_POSS_RUN1"
.LASF335:
	.string	"S_BFGLAND2"
.LASF336:
	.string	"S_BFGLAND3"
.LASF337:
	.string	"S_BFGLAND4"
.LASF338:
	.string	"S_BFGLAND5"
.LASF339:
	.string	"S_BFGLAND6"
.LASF399:
	.string	"S_POSS_RUN7"
.LASF400:
	.string	"S_POSS_RUN8"
.LASF1471:
	.string	"column_t"
.LASF382:
	.string	"S_PLAY_XDIE1"
.LASF383:
	.string	"S_PLAY_XDIE2"
.LASF384:
	.string	"S_PLAY_XDIE3"
.LASF385:
	.string	"S_PLAY_XDIE4"
.LASF386:
	.string	"S_PLAY_XDIE5"
.LASF387:
	.string	"S_PLAY_XDIE6"
.LASF388:
	.string	"S_PLAY_XDIE7"
.LASF389:
	.string	"S_PLAY_XDIE8"
.LASF390:
	.string	"S_PLAY_XDIE9"
.LASF788:
	.string	"S_BOS2_DIE1"
.LASF789:
	.string	"S_BOS2_DIE2"
.LASF790:
	.string	"S_BOS2_DIE3"
.LASF791:
	.string	"S_BOS2_DIE4"
.LASF792:
	.string	"S_BOS2_DIE5"
.LASF793:
	.string	"S_BOS2_DIE6"
.LASF794:
	.string	"S_BOS2_DIE7"
.LASF1354:
	.string	"flags"
.LASF714:
	.string	"S_SARG_RAISE2"
.LASF715:
	.string	"S_SARG_RAISE3"
.LASF358:
	.string	"S_TFOG10"
.LASF716:
	.string	"S_SARG_RAISE4"
.LASF1522:
	.string	"dc_colormap"
.LASF411:
	.string	"S_POSS_XDIE1"
.LASF412:
	.string	"S_POSS_XDIE2"
.LASF413:
	.string	"S_POSS_XDIE3"
.LASF414:
	.string	"S_POSS_XDIE4"
.LASF415:
	.string	"S_POSS_XDIE5"
.LASF416:
	.string	"S_POSS_XDIE6"
.LASF417:
	.string	"S_POSS_XDIE7"
.LASF43:
	.string	"am_clip"
.LASF419:
	.string	"S_POSS_XDIE9"
.LASF1112:
	.string	"S_GIBS"
.LASF727:
	.string	"S_HEAD_DIE1"
.LASF728:
	.string	"S_HEAD_DIE2"
.LASF729:
	.string	"S_HEAD_DIE3"
.LASF730:
	.string	"S_HEAD_DIE4"
.LASF731:
	.string	"S_HEAD_DIE5"
.LASF732:
	.string	"S_HEAD_DIE6"
.LASF580:
	.string	"S_FATT_STND2"
.LASF1103:
	.string	"S_COLU"
.LASF230:
	.string	"S_PISTOL1"
.LASF231:
	.string	"S_PISTOL2"
.LASF232:
	.string	"S_PISTOL3"
.LASF233:
	.string	"S_PISTOL4"
.LASF569:
	.string	"S_SKEL_RAISE2"
.LASF570:
	.string	"S_SKEL_RAISE3"
.LASF571:
	.string	"S_SKEL_RAISE4"
.LASF572:
	.string	"S_SKEL_RAISE5"
.LASF573:
	.string	"S_SKEL_RAISE6"
.LASF1132:
	.string	"S_BIGTREE"
.LASF1461:
	.string	"ST_NEGATIVE"
.LASF1042:
	.string	"S_BON2C"
.LASF1043:
	.string	"S_BON2D"
.LASF348:
	.string	"S_TFOG01"
.LASF349:
	.string	"S_TFOG02"
.LASF167:
	.string	"SPR_LAUN"
.LASF404:
	.string	"S_POSS_PAIN"
.LASF739:
	.string	"S_BRBALL1"
.LASF740:
	.string	"S_BRBALL2"
.LASF1201:
	.string	"MT_SMOKE"
.LASF1215:
	.string	"MT_CYBORG"
.LASF1352:
	.string	"damage"
.LASF444:
	.string	"S_SPOS_XDIE1"
.LASF445:
	.string	"S_SPOS_XDIE2"
.LASF446:
	.string	"S_SPOS_XDIE3"
.LASF447:
	.string	"S_SPOS_XDIE4"
.LASF448:
	.string	"S_SPOS_XDIE5"
.LASF449:
	.string	"S_SPOS_XDIE6"
.LASF450:
	.string	"S_SPOS_XDIE7"
.LASF451:
	.string	"S_SPOS_XDIE8"
.LASF452:
	.string	"S_SPOS_XDIE9"
.LASF1547:
	.string	"bottomfrac"
.LASF14:
	.string	"size_t"
.LASF1363:
	.string	"mobj_s"
.LASF1422:
	.string	"mobj_t"
.LASF1045:
	.string	"S_BKEY"
.LASF51:
	.string	"pw_invisibility"
.LASF132:
	.string	"SPR_ARM1"
.LASF133:
	.string	"SPR_ARM2"
.LASF1197:
	.string	"MT_VILE"
.LASF27:
	.string	"it_blueskull"
.LASF1440:
	.string	"soundorg"
.LASF1495:
	.string	"texturetranslation"
.LASF292:
	.string	"S_PLASMADOWN"
.LASF604:
	.string	"S_FATT_PAIN2"
.LASF1002:
	.string	"S_BRAINEYESEE"
.LASF1462:
	.string	"slopetype_t"
.LASF539:
	.string	"S_SKEL_STND2"
.LASF892:
	.string	"S_CYBER_STND2"
.LASF1193:
	.string	"state_t"
.LASF736:
	.string	"S_HEAD_RAISE4"
.LASF962:
	.string	"S_SSWV_DIE2"
.LASF418:
	.string	"S_POSS_XDIE8"
.LASF1092:
	.string	"S_CELP"
.LASF1134:
	.string	"S_EVILEYE"
.LASF1160:
	.string	"S_GTORCHSHRT2"
.LASF1161:
	.string	"S_GTORCHSHRT3"
.LASF1162:
	.string	"S_GTORCHSHRT4"
.LASF1393:
	.string	"viewheight"
.LASF1367:
	.string	"bnext"
.LASF593:
	.string	"S_FATT_ATK1"
.LASF126:
	.string	"SPR_CYBR"
.LASF594:
	.string	"S_FATT_ATK2"
.LASF497:
	.string	"S_VILE_DIE10"
.LASF87:
	.string	"SPR_MISF"
.LASF86:
	.string	"SPR_MISG"
.LASF1537:
	.string	"worldtop"
.LASF1536:
	.string	"rw_bottomtexturemid"
.LASF99:
	.string	"SPR_MISL"
.LASF1051:
	.string	"S_BSKULL"
.LASF130:
	.string	"SPR_BBRN"
.LASF472:
	.string	"S_VILE_ATK1"
.LASF473:
	.string	"S_VILE_ATK2"
.LASF474:
	.string	"S_VILE_ATK3"
.LASF475:
	.string	"S_VILE_ATK4"
.LASF476:
	.string	"S_VILE_ATK5"
.LASF477:
	.string	"S_VILE_ATK6"
.LASF478:
	.string	"S_VILE_ATK7"
.LASF219:
	.string	"S_PUNCH"
.LASF480:
	.string	"S_VILE_ATK9"
.LASF201:
	.string	"SPR_SMBT"
.LASF775:
	.string	"S_BOS2_RUN1"
.LASF776:
	.string	"S_BOS2_RUN2"
.LASF777:
	.string	"S_BOS2_RUN3"
.LASF778:
	.string	"S_BOS2_RUN4"
.LASF779:
	.string	"S_BOS2_RUN5"
.LASF780:
	.string	"S_BOS2_RUN6"
.LASF781:
	.string	"S_BOS2_RUN7"
.LASF782:
	.string	"S_BOS2_RUN8"
.LASF1435:
	.string	"lightlevel"
.LASF192:
	.string	"SPR_TRE1"
.LASF193:
	.string	"SPR_TRE2"
.LASF849:
	.string	"S_BSPI_STND"
.LASF1343:
	.string	"meleestate"
.LASF1404:
	.string	"ammo"
.LASF639:
	.string	"S_CPOS_DIE1"
.LASF200:
	.string	"SPR_TRED"
.LASF93:
	.string	"SPR_BLUD"
.LASF595:
	.string	"S_FATT_ATK3"
.LASF596:
	.string	"S_FATT_ATK4"
.LASF597:
	.string	"S_FATT_ATK5"
.LASF598:
	.string	"S_FATT_ATK6"
.LASF599:
	.string	"S_FATT_ATK7"
.LASF600:
	.string	"S_FATT_ATK8"
.LASF601:
	.string	"S_FATT_ATK9"
.LASF103:
	.string	"SPR_TFOG"
.LASF307:
	.string	"S_BLOOD1"
.LASF308:
	.string	"S_BLOOD2"
.LASF309:
	.string	"S_BLOOD3"
.LASF1191:
	.string	"misc1"
.LASF1192:
	.string	"misc2"
.LASF1527:
	.string	"dc_texturemid"
.LASF19:
	.string	"angleturn"
.LASF1099:
	.string	"S_LAUN"
.LASF359:
	.string	"S_IFOG"
.LASF106:
	.string	"SPR_POSS"
.LASF111:
	.string	"SPR_FBXP"
.LASF908:
	.string	"S_CYBER_DIE1"
.LASF909:
	.string	"S_CYBER_DIE2"
.LASF910:
	.string	"S_CYBER_DIE3"
.LASF911:
	.string	"S_CYBER_DIE4"
.LASF912:
	.string	"S_CYBER_DIE5"
.LASF913:
	.string	"S_CYBER_DIE6"
.LASF914:
	.string	"S_CYBER_DIE7"
.LASF786:
	.string	"S_BOS2_PAIN"
.LASF916:
	.string	"S_CYBER_DIE9"
.LASF1384:
	.string	"spawnpoint"
.LASF1186:
	.string	"sprite"
.LASF1264:
	.string	"MT_MISC23"
.LASF1129:
	.string	"S_CANDELABRA"
.LASF469:
	.string	"S_VILE_RUN10"
.LASF470:
	.string	"S_VILE_RUN11"
.LASF471:
	.string	"S_VILE_RUN12"
.LASF1089:
	.string	"S_ROCK"
.LASF238:
	.string	"S_SGUN1"
.LASF239:
	.string	"S_SGUN2"
.LASF240:
	.string	"S_SGUN3"
.LASF241:
	.string	"S_SGUN4"
.LASF242:
	.string	"S_SGUN5"
.LASF243:
	.string	"S_SGUN6"
.LASF244:
	.string	"S_SGUN7"
.LASF245:
	.string	"S_SGUN8"
.LASF246:
	.string	"S_SGUN9"
.LASF1333:
	.string	"doomednum"
.LASF235:
	.string	"S_SGUN"
.LASF1125:
	.string	"S_SHRTGRNCOL"
.LASF1503:
	.string	"centeryfrac"
.LASF810:
	.string	"S_SKULL_PAIN"
.LASF1543:
	.string	"pixhighstep"
.LASF1222:
	.string	"MT_SPAWNSHOT"
.LASF534:
	.string	"S_TRACER2"
.LASF1133:
	.string	"S_TECHPILLAR"
.LASF538:
	.string	"S_SKEL_STND"
.LASF693:
	.string	"S_SARG_STND2"
.LASF439:
	.string	"S_SPOS_DIE1"
.LASF440:
	.string	"S_SPOS_DIE2"
.LASF441:
	.string	"S_SPOS_DIE3"
.LASF442:
	.string	"S_SPOS_DIE4"
.LASF443:
	.string	"S_SPOS_DIE5"
.LASF1425:
	.string	"PST_REBORN"
.LASF1532:
	.string	"rw_scale"
.LASF1168:
	.string	"S_HANGBNOBRAIN"
.LASF702:
	.string	"S_SARG_ATK1"
.LASF703:
	.string	"S_SARG_ATK2"
.LASF704:
	.string	"S_SARG_ATK3"
.LASF293:
	.string	"S_PLASMAUP"
.LASF1545:
	.string	"topfrac"
.LASF1188:
	.string	"tics"
.LASF1049:
	.string	"S_YKEY"
.LASF1477:
	.string	"scalestep"
.LASF1348:
	.string	"speed"
.LASF262:
	.string	"S_DSNR1"
.LASF931:
	.string	"S_PAIN_DIE1"
.LASF1525:
	.string	"dc_yh"
.LASF461:
	.string	"S_VILE_RUN2"
.LASF1500:
	.string	"rw_angle1"
.LASF1179:
	.string	"S_TECHLAMP4"
.LASF625:
	.string	"S_CPOS_RUN1"
.LASF626:
	.string	"S_CPOS_RUN2"
.LASF627:
	.string	"S_CPOS_RUN3"
.LASF628:
	.string	"S_CPOS_RUN4"
.LASF67:
	.string	"actionf_p1"
.LASF68:
	.string	"actionf_p2"
.LASF163:
	.string	"SPR_BPAK"
.LASF632:
	.string	"S_CPOS_RUN8"
.LASF1029:
	.string	"S_BEXP5"
.LASF59:
	.string	"mapthing_t"
.LASF394:
	.string	"S_POSS_RUN2"
.LASF395:
	.string	"S_POSS_RUN3"
.LASF396:
	.string	"S_POSS_RUN4"
.LASF713:
	.string	"S_SARG_RAISE1"
.LASF397:
	.string	"S_POSS_RUN5"
.LASF69:
	.string	"acp1"
.LASF70:
	.string	"acp2"
.LASF717:
	.string	"S_SARG_RAISE5"
.LASF718:
	.string	"S_SARG_RAISE6"
.LASF1562:
	.string	"distangle"
.LASF1297:
	.string	"MT_MISC53"
.LASF202:
	.string	"SPR_SMGT"
.LASF993:
	.string	"S_KEENPAIN"
.LASF341:
	.string	"S_BFGEXP2"
.LASF342:
	.string	"S_BFGEXP3"
.LASF343:
	.string	"S_BFGEXP4"
.LASF272:
	.string	"S_CHAINFLASH1"
.LASF273:
	.string	"S_CHAINFLASH2"
.LASF228:
	.string	"S_PISTOLDOWN"
.LASF893:
	.string	"S_CYBER_RUN1"
.LASF894:
	.string	"S_CYBER_RUN2"
.LASF895:
	.string	"S_CYBER_RUN3"
.LASF896:
	.string	"S_CYBER_RUN4"
.LASF897:
	.string	"S_CYBER_RUN5"
.LASF898:
	.string	"S_CYBER_RUN6"
.LASF899:
	.string	"S_CYBER_RUN7"
.LASF900:
	.string	"S_CYBER_RUN8"
.LASF1337:
	.string	"seesound"
.LASF1080:
	.string	"S_PMAP2"
.LASF1081:
	.string	"S_PMAP3"
.LASF1082:
	.string	"S_PMAP4"
.LASF1083:
	.string	"S_PMAP5"
.LASF1084:
	.string	"S_PMAP6"
.LASF1569:
	.string	"texturecolumn"
.LASF1415:
	.string	"bonuscount"
.LASF811:
	.string	"S_SKULL_PAIN2"
.LASF1341:
	.string	"painchance"
.LASF637:
	.string	"S_CPOS_PAIN"
.LASF1432:
	.string	"ceilingheight"
.LASF116:
	.string	"SPR_SARG"
.LASF1531:
	.string	"rw_offset"
.LASF942:
	.string	"S_PAIN_RAISE6"
.LASF1442:
	.string	"specialdata"
.LASF1280:
	.string	"MT_MISC36"
.LASF746:
	.string	"S_BOSS_RUN1"
.LASF747:
	.string	"S_BOSS_RUN2"
.LASF748:
	.string	"S_BOSS_RUN3"
.LASF749:
	.string	"S_BOSS_RUN4"
.LASF750:
	.string	"S_BOSS_RUN5"
.LASF1556:
	.string	"R_GetColumn"
.LASF268:
	.string	"S_CHAINUP"
.LASF1571:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1410:
	.string	"killcount"
.LASF887:
	.string	"S_ARACH_PLEX2"
.LASF1131:
	.string	"S_TORCHTREE"
.LASF943:
	.string	"S_SSWV_STND"
.LASF889:
	.string	"S_ARACH_PLEX4"
.LASF990:
	.string	"S_COMMKEEN10"
.LASF991:
	.string	"S_COMMKEEN11"
.LASF992:
	.string	"S_COMMKEEN12"
.LASF907:
	.string	"S_CYBER_PAIN"
.LASF426:
	.string	"S_SPOS_RUN1"
.LASF184:
	.string	"SPR_SMIT"
.LASF15:
	.string	"boolean"
.LASF429:
	.string	"S_SPOS_RUN4"
.LASF430:
	.string	"S_SPOS_RUN5"
.LASF121:
	.string	"SPR_SKUL"
.LASF432:
	.string	"S_SPOS_RUN7"
.LASF433:
	.string	"S_SPOS_RUN8"
.LASF1473:
	.string	"drawseg_s"
.LASF1090:
	.string	"S_BROK"
.LASF1335:
	.string	"spawnhealth"
.LASF220:
	.string	"S_PUNCHDOWN"
.LASF886:
	.string	"S_ARACH_PLEX"
.LASF1147:
	.string	"S_GREENTORCH"
.LASF39:
	.string	"wp_supershotgun"
.LASF286:
	.string	"S_SAWDOWN"
.LASF1185:
	.string	"statenum_t"
.LASF1484:
	.string	"drawseg_t"
.LASF1225:
	.string	"MT_TROOPSHOT"
.LASF1468:
	.string	"topdelta"
.LASF1210:
	.string	"MT_BRUISERSHOT"
.LASF23:
	.string	"ticcmd_t"
.LASF1480:
	.string	"tsilheight"
.LASF1330:
	.string	"MT_MISC86"
.LASF1357:
	.string	"ps_weapon"
.LASF1559:
	.string	"stop"
.LASF374:
	.string	"S_PLAY_PAIN2"
.LASF1472:
	.string	"lighttable_t"
.LASF769:
	.string	"S_BOSS_RAISE4"
.LASF770:
	.string	"S_BOSS_RAISE5"
.LASF1187:
	.string	"frame"
.LASF113:
	.string	"SPR_MANF"
.LASF624:
	.string	"S_CPOS_STND2"
.LASF437:
	.string	"S_SPOS_PAIN"
.LASF33:
	.string	"wp_shotgun"
.LASF1517:
	.string	"screenheightarray"
.LASF1538:
	.string	"worldbottom"
.LASF405:
	.string	"S_POSS_PAIN2"
.LASF1231:
	.string	"MT_PUFF"
.LASF1482:
	.string	"sprbottomclip"
.LASF277:
	.string	"S_MISSILE1"
.LASF278:
	.string	"S_MISSILE2"
.LASF279:
	.string	"S_MISSILE3"
.LASF653:
	.string	"S_CPOS_RAISE2"
.LASF654:
	.string	"S_CPOS_RAISE3"
.LASF655:
	.string	"S_CPOS_RAISE4"
.LASF1420:
	.string	"psprites"
.LASF1097:
	.string	"S_MGUN"
.LASF1209:
	.string	"MT_BRUISER"
.LASF162:
	.string	"SPR_SBOX"
.LASF1514:
	.string	"floorclip"
.LASF1412:
	.string	"secretcount"
.LASF1332:
	.string	"mobjtype_t"
.LASF1346:
	.string	"xdeathstate"
.LASF1397:
	.string	"powers"
.LASF806:
	.string	"S_SKULL_ATK1"
.LASF807:
	.string	"S_SKULL_ATK2"
.LASF808:
	.string	"S_SKULL_ATK3"
.LASF809:
	.string	"S_SKULL_ATK4"
.LASF787:
	.string	"S_BOS2_PAIN2"
.LASF7:
	.string	"short unsigned int"
.LASF1211:
	.string	"MT_KNIGHT"
.LASF9:
	.string	"signed char"
.LASF18:
	.string	"sidemove"
.LASF1353:
	.string	"activesound"
.LASF1539:
	.string	"worldhigh"
.LASF438:
	.string	"S_SPOS_PAIN2"
.LASF1558:
	.string	"start"
.LASF602:
	.string	"S_FATT_ATK10"
.LASF1565:
	.string	"lightnum"
.LASF199:
	.string	"SPR_TGRN"
.LASF1496:
	.string	"viewangle"
.LASF1256:
	.string	"MT_MEGA"
.LASF101:
	.string	"SPR_BFE1"
.LASF102:
	.string	"SPR_BFE2"
.LASF1441:
	.string	"thinglist"
.LASF1526:
	.string	"dc_iscale"
.LASF1290:
	.string	"MT_MISC46"
.LASF1218:
	.string	"MT_KEEN"
.LASF1439:
	.string	"blockbox"
.LASF1003:
	.string	"S_BRAINEYE1"
.LASF1466:
	.string	"linedef"
.LASF659:
	.string	"S_TROO_STND"
.LASF606:
	.string	"S_FATT_DIE2"
.LASF297:
	.string	"S_PLASMAFLASH2"
.LASF42:
	.string	"weapontype_t"
.LASF21:
	.string	"chatchar"
.LASF350:
	.string	"S_TFOG2"
.LASF351:
	.string	"S_TFOG3"
.LASF352:
	.string	"S_TFOG4"
.LASF353:
	.string	"S_TFOG5"
.LASF354:
	.string	"S_TFOG6"
.LASF355:
	.string	"S_TFOG7"
.LASF356:
	.string	"S_TFOG8"
.LASF357:
	.string	"S_TFOG9"
.LASF772:
	.string	"S_BOSS_RAISE7"
.LASF1406:
	.string	"attackdown"
.LASF77:
	.string	"SPR_TROO"
.LASF88:
	.string	"SPR_SAWG"
.LASF137:
	.string	"SPR_BON1"
.LASF138:
	.string	"SPR_BON2"
.LASF1490:
	.string	"pad3"
.LASF26:
	.string	"it_redcard"
.LASF1126:
	.string	"S_TALLREDCOL"
.LASF1554:
	.string	"I_Error"
.LASF1360:
	.string	"state"
.LASF1101:
	.string	"S_SHOT"
.LASF957:
	.string	"S_SSWV_ATK5"
.LASF1106:
	.string	"S_BLOODYTWITCH2"
.LASF1107:
	.string	"S_BLOODYTWITCH3"
.LASF1108:
	.string	"S_BLOODYTWITCH4"
.LASF847:
	.string	"S_SPID_DIE10"
.LASF848:
	.string	"S_SPID_DIE11"
.LASF1398:
	.string	"cards"
.LASF1548:
	.string	"bottomstep"
.LASF1467:
	.string	"seg_t"
.LASF194:
	.string	"SPR_ELEC"
.LASF995:
	.string	"S_BRAIN"
.LASF1213:
	.string	"MT_SPIDER"
.LASF1078:
	.string	"S_SUIT"
.LASF1491:
	.string	"bottom"
.LASF92:
	.string	"SPR_BFGF"
.LASF91:
	.string	"SPR_BFGG"
.LASF918:
	.string	"S_PAIN_STND"
.LASF1428:
	.string	"skyflatnum"
.LASF1530:
	.string	"rw_centerangle"
.LASF334:
	.string	"S_BFGLAND"
.LASF1024:
	.string	"S_BAR2"
.LASF1402:
	.string	"pendingweapon"
.LASF75:
	.string	"function"
.LASF44:
	.string	"am_shell"
.LASF1375:
	.string	"validcount"
.LASF1413:
	.string	"message"
.LASF614:
	.string	"S_FATT_DIE10"
.LASF30:
	.string	"NUMCARDS"
.LASF1151:
	.string	"S_REDTORCH"
.LASF1229:
	.string	"MT_BFG"
.LASF398:
	.string	"S_POSS_RUN6"
.LASF108:
	.string	"SPR_VILE"
.LASF1232:
	.string	"MT_BLOOD"
.LASF227:
	.string	"S_PISTOL"
.LASF13:
	.string	"true"
.LASF459:
	.string	"S_VILE_STND2"
.LASF877:
	.string	"S_BSPI_RAISE1"
.LASF878:
	.string	"S_BSPI_RAISE2"
.LASF879:
	.string	"S_BSPI_RAISE3"
.LASF880:
	.string	"S_BSPI_RAISE4"
.LASF881:
	.string	"S_BSPI_RAISE5"
.LASF882:
	.string	"S_BSPI_RAISE6"
.LASF883:
	.string	"S_BSPI_RAISE7"
.LASF1372:
	.string	"momx"
.LASF1373:
	.string	"momy"
.LASF4:
	.string	"long int"
.LASF966:
	.string	"S_SSWV_XDIE1"
.LASF967:
	.string	"S_SSWV_XDIE2"
.LASF968:
	.string	"S_SSWV_XDIE3"
.LASF969:
	.string	"S_SSWV_XDIE4"
.LASF970:
	.string	"S_SSWV_XDIE5"
.LASF971:
	.string	"S_SSWV_XDIE6"
.LASF972:
	.string	"S_SSWV_XDIE7"
.LASF973:
	.string	"S_SSWV_XDIE8"
.LASF974:
	.string	"S_SSWV_XDIE9"
.LASF264:
	.string	"S_DSGUNFLASH1"
.LASF265:
	.string	"S_DSGUNFLASH2"
.LASF1263:
	.string	"MT_MISC22"
.LASF1421:
	.string	"didsecret"
.LASF522:
	.string	"S_FIRE25"
.LASF616:
	.string	"S_FATT_RAISE2"
.LASF1299:
	.string	"MT_MISC55"
.LASF1394:
	.string	"deltaviewheight"
.LASF28:
	.string	"it_yellowskull"
.LASF1054:
	.string	"S_RSKULL2"
.LASF1385:
	.string	"tracer"
.LASF829:
	.string	"S_SPID_RUN10"
.LASF830:
	.string	"S_SPID_RUN11"
.LASF831:
	.string	"S_SPID_RUN12"
.LASF1560:
	.string	"rcsid"
.LASF1355:
	.string	"raisestate"
.LASF280:
	.string	"S_MISSILEFLASH1"
.LASF281:
	.string	"S_MISSILEFLASH2"
.LASF282:
	.string	"S_MISSILEFLASH3"
.LASF283:
	.string	"S_MISSILEFLASH4"
.LASF143:
	.string	"SPR_RSKU"
.LASF72:
	.string	"think_t"
.LASF1497:
	.string	"xtoviewangle"
.LASF17:
	.string	"forwardmove"
.LASF641:
	.string	"S_CPOS_DIE3"
.LASF642:
	.string	"S_CPOS_DIE4"
.LASF1456:
	.string	"midtexture"
.LASF643:
	.string	"S_CPOS_DIE5"
.LASF644:
	.string	"S_CPOS_DIE6"
.LASF645:
	.string	"S_CPOS_DIE7"
.LASF1505:
	.string	"colfunc"
.LASF1086:
	.string	"S_PVIS2"
.LASF1224:
	.string	"MT_BARREL"
.LASF818:
	.string	"S_SPID_STND"
.LASF590:
	.string	"S_FATT_RUN10"
.LASF591:
	.string	"S_FATT_RUN11"
.LASF592:
	.string	"S_FATT_RUN12"
.LASF1216:
	.string	"MT_PAIN"
.LASF1528:
	.string	"dc_source"
.LASF1144:
	.string	"S_BLUETORCH2"
.LASF1356:
	.string	"mobjinfo_t"
.LASF1145:
	.string	"S_BLUETORCH3"
.LASF1146:
	.string	"S_BLUETORCH4"
.LASF203:
	.string	"SPR_SMRT"
.LASF305:
	.string	"S_BFGFLASH1"
.LASF306:
	.string	"S_BFGFLASH2"
.LASF1523:
	.string	"dc_x"
.LASF839:
	.string	"S_SPID_DIE2"
.LASF120:
	.string	"SPR_BOS2"
.LASF842:
	.string	"S_SPID_DIE5"
.LASF843:
	.string	"S_SPID_DIE6"
.LASF844:
	.string	"S_SPID_DIE7"
.LASF845:
	.string	"S_SPID_DIE8"
.LASF1135:
	.string	"S_EVILEYE2"
.LASF1136:
	.string	"S_EVILEYE3"
.LASF1137:
	.string	"S_EVILEYE4"
.LASF310:
	.string	"S_PUFF1"
.LASF311:
	.string	"S_PUFF2"
.LASF312:
	.string	"S_PUFF3"
.LASF131:
	.string	"SPR_BOSF"
.LASF1444:
	.string	"lines"
.LASF119:
	.string	"SPR_BOSS"
.LASF1228:
	.string	"MT_PLASMA"
.LASF864:
	.string	"S_BSPI_ATK1"
.LASF865:
	.string	"S_BSPI_ATK2"
.LASF866:
	.string	"S_BSPI_ATK3"
.LASF867:
	.string	"S_BSPI_ATK4"
.LASF1046:
	.string	"S_BKEY2"
.LASF40:
	.string	"NUMWEAPONS"
.LASF851:
	.string	"S_BSPI_SIGHT"
.LASF2:
	.string	"long unsigned int"
.LASF853:
	.string	"S_BSPI_RUN2"
.LASF997:
	.string	"S_BRAIN_DIE1"
.LASF998:
	.string	"S_BRAIN_DIE2"
.LASF999:
	.string	"S_BRAIN_DIE3"
.LASF1000:
	.string	"S_BRAIN_DIE4"
.LASF332:
	.string	"S_BFGSHOT"
.LASF1138:
	.string	"S_FLOATSKULL"
.LASF488:
	.string	"S_VILE_DIE1"
.LASF489:
	.string	"S_VILE_DIE2"
.LASF490:
	.string	"S_VILE_DIE3"
.LASF491:
	.string	"S_VILE_DIE4"
.LASF492:
	.string	"S_VILE_DIE5"
.LASF493:
	.string	"S_VILE_DIE6"
.LASF494:
	.string	"S_VILE_DIE7"
.LASF495:
	.string	"S_VILE_DIE8"
.LASF496:
	.string	"S_VILE_DIE9"
.LASF1414:
	.string	"damagecount"
.LASF1564:
	.string	"vtop"
.LASF172:
	.string	"SPR_SMT2"
.LASF1048:
	.string	"S_RKEY2"
.LASF1019:
	.string	"S_ARM1"
.LASF1021:
	.string	"S_ARM2"
.LASF1114:
	.string	"S_HEADCANDLES"
.LASF150:
	.string	"SPR_PINS"
.LASF744:
	.string	"S_BOSS_STND"
.LASF724:
	.string	"S_HEAD_PAIN"
.LASF25:
	.string	"it_yellowcard"
.LASF1200:
	.string	"MT_TRACER"
.LASF605:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF607:
	.string	"S_FATT_DIE3"
.LASF608:
	.string	"S_FATT_DIE4"
.LASF609:
	.string	"S_FATT_DIE5"
.LASF610:
	.string	"S_FATT_DIE6"
.LASF611:
	.string	"S_FATT_DIE7"
.LASF612:
	.string	"S_FATT_DIE8"
.LASF613:
	.string	"S_FATT_DIE9"
.LASF680:
	.string	"S_TROO_XDIE2"
.LASF681:
	.string	"S_TROO_XDIE3"
.LASF682:
	.string	"S_TROO_XDIE4"
.LASF683:
	.string	"S_TROO_XDIE5"
.LASF684:
	.string	"S_TROO_XDIE6"
.LASF685:
	.string	"S_TROO_XDIE7"
.LASF686:
	.string	"S_TROO_XDIE8"
.LASF155:
	.string	"SPR_CLIP"
.LASF1127:
	.string	"S_SHRTREDCOL"
.LASF1170:
	.string	"S_HANGTSKULL"
.LASF1501:
	.string	"floorplane"
.LASF55:
	.string	"NUMPOWERS"
.LASF955:
	.string	"S_SSWV_ATK3"
.LASF956:
	.string	"S_SSWV_ATK4"
.LASF261:
	.string	"S_DSGUN10"
.LASF50:
	.string	"pw_strength"
.LASF189:
	.string	"SPR_CAND"
.LASF1206:
	.string	"MT_SERGEANT"
.LASF1117:
	.string	"S_LIVESTICK"
.LASF1057:
	.string	"S_STIM"
.LASF45:
	.string	"am_cell"
.LASF24:
	.string	"it_bluecard"
.LASF1370:
	.string	"floorz"
.LASF720:
	.string	"S_HEAD_RUN1"
.LASF375:
	.string	"S_PLAY_DIE1"
.LASF376:
	.string	"S_PLAY_DIE2"
.LASF377:
	.string	"S_PLAY_DIE3"
.LASF378:
	.string	"S_PLAY_DIE4"
.LASF379:
	.string	"S_PLAY_DIE5"
.LASF380:
	.string	"S_PLAY_DIE6"
.LASF381:
	.string	"S_PLAY_DIE7"
.LASF391:
	.string	"S_POSS_STND"
.LASF347:
	.string	"S_TFOG"
.LASF1284:
	.string	"MT_MISC40"
.LASF1285:
	.string	"MT_MISC41"
.LASF1386:
	.string	"subsector_s"
.LASF707:
	.string	"S_SARG_DIE1"
.LASF708:
	.string	"S_SARG_DIE2"
.LASF709:
	.string	"S_SARG_DIE3"
.LASF710:
	.string	"S_SARG_DIE4"
.LASF1008:
	.string	"S_SPAWNFIRE1"
.LASF1009:
	.string	"S_SPAWNFIRE2"
.LASF1010:
	.string	"S_SPAWNFIRE3"
.LASF1011:
	.string	"S_SPAWNFIRE4"
.LASF1012:
	.string	"S_SPAWNFIRE5"
.LASF1013:
	.string	"S_SPAWNFIRE6"
.LASF1014:
	.string	"S_SPAWNFIRE7"
.LASF1015:
	.string	"S_SPAWNFIRE8"
.LASF679:
	.string	"S_TROO_XDIE1"
.LASF20:
	.string	"consistancy"
.LASF1387:
	.string	"sector"
.LASF1172:
	.string	"S_HANGTNOBRAIN"
.LASF327:
	.string	"S_PLASEXP2"
.LASF328:
	.string	"S_PLASEXP3"
.LASF329:
	.string	"S_PLASEXP4"
.LASF330:
	.string	"S_PLASEXP5"
.LASF37:
	.string	"wp_bfg"
.LASF1156:
	.string	"S_BTORCHSHRT2"
.LASF1157:
	.string	"S_BTORCHSHRT3"
.LASF1158:
	.string	"S_BTORCHSHRT4"
.LASF1561:
	.string	"sineval"
.LASF460:
	.string	"S_VILE_RUN1"
.LASF250:
	.string	"S_DSGUNDOWN"
.LASF462:
	.string	"S_VILE_RUN3"
.LASF463:
	.string	"S_VILE_RUN4"
.LASF464:
	.string	"S_VILE_RUN5"
.LASF465:
	.string	"S_VILE_RUN6"
.LASF466:
	.string	"S_VILE_RUN7"
.LASF467:
	.string	"S_VILE_RUN8"
.LASF468:
	.string	"S_VILE_RUN9"
.LASF711:
	.string	"S_SARG_DIE5"
.LASF712:
	.string	"S_SARG_DIE6"
.LASF1364:
	.string	"thinker"
.LASF552:
	.string	"S_SKEL_FIST1"
.LASF553:
	.string	"S_SKEL_FIST2"
.LASF554:
	.string	"S_SKEL_FIST3"
.LASF555:
	.string	"S_SKEL_FIST4"
.LASF291:
	.string	"S_PLASMA"
.LASF1070:
	.string	"S_PINS"
.LASF1470:
	.string	"post_t"
.LASF1143:
	.string	"S_BLUETORCH"
.LASF1515:
	.string	"ceilingclip"
.LASF581:
	.string	"S_FATT_RUN1"
.LASF582:
	.string	"S_FATT_RUN2"
.LASF583:
	.string	"S_FATT_RUN3"
.LASF584:
	.string	"S_FATT_RUN4"
.LASF52:
	.string	"pw_ironfeet"
.LASF586:
	.string	"S_FATT_RUN6"
.LASF587:
	.string	"S_FATT_RUN7"
.LASF588:
	.string	"S_FATT_RUN8"
.LASF1119:
	.string	"S_MEAT2"
.LASF1120:
	.string	"S_MEAT3"
.LASF1121:
	.string	"S_MEAT4"
.LASF1122:
	.string	"S_MEAT5"
.LASF234:
	.string	"S_PISTOLFLASH"
.LASF1431:
	.string	"floorheight"
.LASF454:
	.string	"S_SPOS_RAISE2"
.LASF455:
	.string	"S_SPOS_RAISE3"
.LASF456:
	.string	"S_SPOS_RAISE4"
.LASF457:
	.string	"S_SPOS_RAISE5"
.LASF146:
	.string	"SPR_MEDI"
.LASF148:
	.string	"SPR_PINV"
.LASF996:
	.string	"S_BRAIN_PAIN"
.LASF267:
	.string	"S_CHAINDOWN"
.LASF1499:
	.string	"rw_normalangle"
.LASF486:
	.string	"S_VILE_PAIN"
.LASF533:
	.string	"S_TRACER"
.LASF953:
	.string	"S_SSWV_ATK1"
.LASF954:
	.string	"S_SSWV_ATK2"
.LASF483:
	.string	"S_VILE_HEAL1"
.LASF484:
	.string	"S_VILE_HEAL2"
.LASF485:
	.string	"S_VILE_HEAL3"
.LASF958:
	.string	"S_SSWV_ATK6"
.LASF1379:
	.string	"movecount"
.LASF140:
	.string	"SPR_RKEY"
.LASF1104:
	.string	"S_STALAG"
.LASF819:
	.string	"S_SPID_STND2"
.LASF65:
	.string	"angle_t"
.LASF1434:
	.string	"ceilingpic"
.LASF1105:
	.string	"S_BLOODYTWITCH"
.LASF1174:
	.string	"S_SMALLPOOL"
.LASF1361:
	.string	"pspdef_t"
.LASF1300:
	.string	"MT_MISC56"
.LASF603:
	.string	"S_FATT_PAIN"
.LASF1572:
	.string	"R_RenderMaskedSegRange"
.LASF1529:
	.string	"maskedtexture"
.LASF367:
	.string	"S_PLAY_RUN1"
.LASF368:
	.string	"S_PLAY_RUN2"
.LASF369:
	.string	"S_PLAY_RUN3"
.LASF370:
	.string	"S_PLAY_RUN4"
.LASF1095:
	.string	"S_BPAK"
.LASF62:
	.string	"double"
.LASF135:
	.string	"SPR_BEXP"
.LASF1506:
	.string	"rw_x"
.LASF1390:
	.string	"player_s"
.LASF1052:
	.string	"S_BSKULL2"
.LASF94:
	.string	"SPR_PUFF"
.LASF981:
	.string	"S_COMMKEEN"
.LASF1407:
	.string	"usedown"
.LASF773:
	.string	"S_BOS2_STND"
.LASF100:
	.string	"SPR_BFS1"
.LASF1004:
	.string	"S_SPAWN1"
.LASF1005:
	.string	"S_SPAWN2"
.LASF1006:
	.string	"S_SPAWN3"
.LASF1007:
	.string	"S_SPAWN4"
.LASF1177:
	.string	"S_TECHLAMP2"
.LASF1178:
	.string	"S_TECHLAMP3"
.LASF38:
	.string	"wp_chainsaw"
.LASF1214:
	.string	"MT_BABY"
.LASF1405:
	.string	"maxammo"
.LASF1493:
	.string	"visplane_t"
.LASF1118:
	.string	"S_LIVESTICK2"
.LASF1553:
	.string	"R_PointToDist"
.LASF1163:
	.string	"S_RTORCHSHRT"
.LASF1260:
	.string	"MT_MISC19"
.LASF122:
	.string	"SPR_SPID"
.LASF719:
	.string	"S_HEAD_STND"
.LASF694:
	.string	"S_SARG_RUN1"
.LASF695:
	.string	"S_SARG_RUN2"
.LASF697:
	.string	"S_SARG_RUN4"
.LASF698:
	.string	"S_SARG_RUN5"
.LASF699:
	.string	"S_SARG_RUN6"
.LASF700:
	.string	"S_SARG_RUN7"
.LASF701:
	.string	"S_SARG_RUN8"
.LASF1238:
	.string	"MT_MISC1"
.LASF1239:
	.string	"MT_MISC2"
.LASF1240:
	.string	"MT_MISC3"
.LASF1241:
	.string	"MT_MISC4"
.LASF1242:
	.string	"MT_MISC5"
.LASF1243:
	.string	"MT_MISC6"
.LASF1244:
	.string	"MT_MISC7"
.LASF1245:
	.string	"MT_MISC8"
.LASF1246:
	.string	"MT_MISC9"
.LASF284:
	.string	"S_SAW"
.LASF151:
	.string	"SPR_MEGA"
.LASF373:
	.string	"S_PLAY_PAIN"
.LASF325:
	.string	"S_PLASBALL2"
.LASF1358:
	.string	"ps_flash"
.LASF1391:
	.string	"playerstate"
.LASF129:
	.string	"SPR_KEEN"
.LASF959:
	.string	"S_SSWV_PAIN"
.LASF1340:
	.string	"painstate"
.LASF994:
	.string	"S_KEENPAIN2"
.LASF54:
	.string	"pw_infrared"
.LASF481:
	.string	"S_VILE_ATK10"
.LASF482:
	.string	"S_VILE_ATK11"
.LASF1507:
	.string	"rw_stopx"
.LASF960:
	.string	"S_SSWV_PAIN2"
.LASF1324:
	.string	"MT_MISC80"
.LASF1347:
	.string	"deathsound"
.LASF1034:
	.string	"S_BON1A"
.LASF1035:
	.string	"S_BON1B"
.LASF1036:
	.string	"S_BON1C"
.LASF1037:
	.string	"S_BON1D"
.LASF1038:
	.string	"S_BON1E"
.LASF1451:
	.string	"sector_t"
.LASF149:
	.string	"SPR_PSTR"
.LASF1262:
	.string	"MT_MISC21"
.LASF705:
	.string	"S_SARG_PAIN"
.LASF1486:
	.string	"minx"
.LASF1257:
	.string	"MT_CLIP"
.LASF164:
	.string	"SPR_BFUG"
.LASF1312:
	.string	"MT_MISC68"
.LASF1030:
	.string	"S_BBAR1"
.LASF1031:
	.string	"S_BBAR2"
.LASF1032:
	.string	"S_BBAR3"
.LASF218:
	.string	"S_LIGHTDONE"
.LASF869:
	.string	"S_BSPI_PAIN2"
.LASF1399:
	.string	"backpack"
.LASF669:
	.string	"S_TROO_ATK1"
.LASF670:
	.string	"S_TROO_ATK2"
.LASF671:
	.string	"S_TROO_ATK3"
.LASF813:
	.string	"S_SKULL_DIE2"
.LASF814:
	.string	"S_SKULL_DIE3"
.LASF815:
	.string	"S_SKULL_DIE4"
.LASF816:
	.string	"S_SKULL_DIE5"
.LASF817:
	.string	"S_SKULL_DIE6"
.LASF168:
	.string	"SPR_PLAS"
.LASF1040:
	.string	"S_BON2A"
.LASF1041:
	.string	"S_BON2B"
.LASF81:
	.string	"SPR_PISF"
.LASF80:
	.string	"SPR_PISG"
.LASF1044:
	.string	"S_BON2E"
.LASF1267:
	.string	"MT_CHAINGUN"
.LASF316:
	.string	"S_TBALLX1"
.LASF317:
	.string	"S_TBALLX2"
.LASF318:
	.string	"S_TBALLX3"
.LASF41:
	.string	"wp_nochange"
.LASF1204:
	.string	"MT_CHAINGUY"
.LASF1430:
	.string	"degenmobj_t"
.LASF1540:
	.string	"worldlow"
.LASF812:
	.string	"S_SKULL_DIE1"
.LASF1424:
	.string	"PST_DEAD"
.LASF1175:
	.string	"S_BRAINSTEM"
.LASF980:
	.string	"S_KEENSTND"
.LASF105:
	.string	"SPR_PLAY"
.LASF1401:
	.string	"readyweapon"
.LASF11:
	.string	"long long unsigned int"
.LASF1464:
	.string	"offset"
.LASF1115:
	.string	"S_HEADCANDLES2"
.LASF1234:
	.string	"MT_IFOG"
.LASF196:
	.string	"SPR_FSKU"
.LASF431:
	.string	"S_SPOS_RUN6"
.LASF287:
	.string	"S_SAWUP"
.LASF1020:
	.string	"S_ARM1A"
.LASF623:
	.string	"S_CPOS_STND"
.LASF1275:
	.string	"MT_MISC31"
.LASF1374:
	.string	"momz"
.LASF1094:
	.string	"S_SBOX"
.LASF1437:
	.string	"soundtraversed"
.LASF1278:
	.string	"MT_MISC34"
.LASF1447:
	.string	"bbox"
.LASF326:
	.string	"S_PLASEXP"
.LASF1281:
	.string	"MT_MISC37"
.LASF1110:
	.string	"S_DEADBOTTOM"
.LASF1167:
	.string	"S_HANGNOGUTS"
.LASF1339:
	.string	"attacksound"
.LASF1570:
	.string	"texnum"
.LASF1071:
	.string	"S_PINS2"
.LASF1072:
	.string	"S_PINS3"
.LASF1073:
	.string	"S_PINS4"
.LASF925:
	.string	"S_PAIN_ATK1"
.LASF926:
	.string	"S_PAIN_ATK2"
.LASF927:
	.string	"S_PAIN_ATK3"
.LASF928:
	.string	"S_PAIN_ATK4"
.LASF237:
	.string	"S_SGUNUP"
.LASF1544:
	.string	"pixlowstep"
.LASF1449:
	.string	"frontsector"
.LASF190:
	.string	"SPR_CBRA"
.LASF1345:
	.string	"deathstate"
.LASF1022:
	.string	"S_ARM2A"
.LASF891:
	.string	"S_CYBER_STND"
.LASF1050:
	.string	"S_YKEY2"
.LASF500:
	.string	"S_FIRE3"
.LASF1338:
	.string	"reactiontime"
.LASF505:
	.string	"S_FIRE8"
.LASF745:
	.string	"S_BOSS_STND2"
.LASF1519:
	.string	"mceilingclip"
.LASF640:
	.string	"S_CPOS_DIE2"
.LASF1366:
	.string	"sprev"
.LASF288:
	.string	"S_SAW1"
.LASF289:
	.string	"S_SAW2"
.LASF290:
	.string	"S_SAW3"
.LASF1567:
	.string	"R_RenderSegLoop"
.LASF1033:
	.string	"S_BON1"
.LASF1039:
	.string	"S_BON2"
.LASF1382:
	.string	"player"
.LASF285:
	.string	"S_SAWB"
.LASF673:
	.string	"S_TROO_PAIN2"
.LASF1220:
	.string	"MT_BOSSSPIT"
.LASF498:
	.string	"S_FIRE1"
.LASF499:
	.string	"S_FIRE2"
.LASF60:
	.string	"fixed_t"
.LASF501:
	.string	"S_FIRE4"
.LASF502:
	.string	"S_FIRE5"
.LASF503:
	.string	"S_FIRE6"
.LASF504:
	.string	"S_FIRE7"
.LASF158:
	.string	"SPR_BROK"
.LASF506:
	.string	"S_FIRE9"
.LASF1288:
	.string	"MT_MISC44"
.LASF1289:
	.string	"MT_MISC45"
.LASF1091:
	.string	"S_CELL"
.LASF1291:
	.string	"MT_MISC47"
.LASF156:
	.string	"SPR_AMMO"
.LASF1292:
	.string	"MT_MISC48"
.LASF1293:
	.string	"MT_MISC49"
.LASF804:
	.string	"S_SKULL_RUN1"
.LASF805:
	.string	"S_SKULL_RUN2"
.LASF1171:
	.string	"S_HANGTLOOKUP"
.LASF266:
	.string	"S_CHAIN"
.LASF296:
	.string	"S_PLASMAFLASH1"
.LASF252:
	.string	"S_DSGUN1"
.LASF253:
	.string	"S_DSGUN2"
.LASF147:
	.string	"SPR_SOUL"
.LASF107:
	.string	"SPR_SPOS"
.LASF256:
	.string	"S_DSGUN5"
.LASF257:
	.string	"S_DSGUN6"
.LASF258:
	.string	"S_DSGUN7"
.LASF259:
	.string	"S_DSGUN8"
.LASF260:
	.string	"S_DSGUN9"
.LASF424:
	.string	"S_SPOS_STND"
.LASF127:
	.string	"SPR_PAIN"
.LASF652:
	.string	"S_CPOS_RAISE1"
.LASF1400:
	.string	"frags"
.LASF1395:
	.string	"armorpoints"
.LASF22:
	.string	"buttons"
.LASF1541:
	.string	"pixhigh"
.LASF301:
	.string	"S_BFG1"
.LASF302:
	.string	"S_BFG2"
.LASF303:
	.string	"S_BFG3"
.LASF304:
	.string	"S_BFG4"
.LASF1494:
	.string	"textureheight"
.LASF216:
	.string	"spritenum_t"
.LASF263:
	.string	"S_DSNR2"
.LASF803:
	.string	"S_SKULL_STND2"
.LASF1066:
	.string	"S_PINV2"
.LASF1067:
	.string	"S_PINV3"
.LASF696:
	.string	"S_SARG_RUN3"
.LASF1181:
	.string	"S_TECH2LAMP2"
.LASF1182:
	.string	"S_TECH2LAMP3"
.LASF1183:
	.string	"S_TECH2LAMP4"
.LASF1445:
	.string	"line_s"
.LASF5:
	.string	"long long int"
.LASF79:
	.string	"SPR_PUNG"
.LASF647:
	.string	"S_CPOS_XDIE2"
.LASF648:
	.string	"S_CPOS_XDIE3"
.LASF649:
	.string	"S_CPOS_XDIE4"
.LASF650:
	.string	"S_CPOS_XDIE5"
.LASF651:
	.string	"S_CPOS_XDIE6"
.LASF832:
	.string	"S_SPID_ATK1"
.LASF833:
	.string	"S_SPID_ATK2"
.LASF834:
	.string	"S_SPID_ATK3"
.LASF835:
	.string	"S_SPID_ATK4"
.LASF556:
	.string	"S_SKEL_MISS1"
.LASF557:
	.string	"S_SKEL_MISS2"
.LASF558:
	.string	"S_SKEL_MISS3"
.LASF559:
	.string	"S_SKEL_MISS4"
.LASF313:
	.string	"S_PUFF4"
.LASF1053:
	.string	"S_RSKULL"
.LASF885:
	.string	"S_ARACH_PLAZ2"
.LASF1294:
	.string	"MT_MISC50"
.LASF733:
	.string	"S_HEAD_RAISE1"
.LASF1329:
	.string	"MT_MISC85"
.LASF734:
	.string	"S_HEAD_RAISE2"
.LASF735:
	.string	"S_HEAD_RAISE3"
.LASF1408:
	.string	"cheats"
.LASF142:
	.string	"SPR_BSKU"
.LASF737:
	.string	"S_HEAD_RAISE5"
.LASF738:
	.string	"S_HEAD_RAISE6"
.LASF1465:
	.string	"sidedef"
.LASF1510:
	.string	"markceiling"
.LASF1272:
	.string	"MT_SUPERSHOTGUN"
.LASF153:
	.string	"SPR_PMAP"
.LASF1001:
	.string	"S_BRAINEYE"
.LASF154:
	.string	"SPR_PVIS"
.LASF1423:
	.string	"PST_LIVE"
.LASF1230:
	.string	"MT_ARACHPLAZ"
.LASF479:
	.string	"S_VILE_ATK8"
.LASF420:
	.string	"S_POSS_RAISE1"
.LASF421:
	.string	"S_POSS_RAISE2"
.LASF422:
	.string	"S_POSS_RAISE3"
.LASF423:
	.string	"S_POSS_RAISE4"
.LASF275:
	.string	"S_MISSILEDOWN"
.LASF1481:
	.string	"sprtopclip"
.LASF1139:
	.string	"S_FLOATSKULL2"
.LASF1140:
	.string	"S_FLOATSKULL3"
.LASF1542:
	.string	"pixlow"
.LASF1074:
	.string	"S_MEGA"
.LASF754:
	.string	"S_BOSS_ATK1"
.LASF755:
	.string	"S_BOSS_ATK2"
.LASF756:
	.string	"S_BOSS_ATK3"
.LASF1369:
	.string	"subsector"
.LASF212:
	.string	"SPR_BRS1"
.LASF1429:
	.string	"vertex_t"
.LASF561:
	.string	"S_SKEL_PAIN2"
.LASF1098:
	.string	"S_CSAW"
.LASF49:
	.string	"pw_invulnerability"
.LASF741:
	.string	"S_BRBALLX1"
.LASF742:
	.string	"S_BRBALLX2"
.LASF743:
	.string	"S_BRBALLX3"
.LASF871:
	.string	"S_BSPI_DIE2"
.LASF872:
	.string	"S_BSPI_DIE3"
.LASF873:
	.string	"S_BSPI_DIE4"
.LASF874:
	.string	"S_BSPI_DIE5"
.LASF34:
	.string	"wp_chaingun"
.LASF876:
	.string	"S_BSPI_DIE7"
.LASF427:
	.string	"S_SPOS_RUN2"
.LASF1450:
	.string	"backsector"
.LASF428:
	.string	"S_SPOS_RUN3"
.LASF930:
	.string	"S_PAIN_PAIN2"
.LASF565:
	.string	"S_SKEL_DIE4"
.LASF161:
	.string	"SPR_SHEL"
.LASF1313:
	.string	"MT_MISC69"
.LASF1396:
	.string	"armortype"
.LASF12:
	.string	"false"
.LASF213:
	.string	"SPR_TLMP"
.LASF392:
	.string	"S_POSS_STND2"
.LASF1271:
	.string	"MT_SHOTGUN"
.LASF64:
	.string	"finetangent"
.LASF1196:
	.string	"MT_SHOTGUY"
.LASF1411:
	.string	"itemcount"
.LASF1176:
	.string	"S_TECHLAMP"
.LASF1217:
	.string	"MT_WOLFSS"
.LASF1535:
	.string	"rw_toptexturemid"
.LASF774:
	.string	"S_BOS2_STND2"
.LASF1438:
	.string	"soundtarget"
.LASF269:
	.string	"S_CHAIN1"
.LASF270:
	.string	"S_CHAIN2"
.LASF271:
	.string	"S_CHAIN3"
.LASF322:
	.string	"S_RBALLX2"
.LASF323:
	.string	"S_RBALLX3"
.LASF1533:
	.string	"rw_scalestep"
.LASF198:
	.string	"SPR_TBLU"
.LASF425:
	.string	"S_SPOS_STND2"
.LASF8:
	.string	"unsigned int"
.LASF1365:
	.string	"snext"
.LASF48:
	.string	"am_noammo"
.LASF1362:
	.string	"thinker_s"
.LASF76:
	.string	"thinker_t"
.LASF401:
	.string	"S_POSS_ATK1"
.LASF402:
	.string	"S_POSS_ATK2"
.LASF403:
	.string	"S_POSS_ATK3"
.LASF1315:
	.string	"MT_MISC71"
.LASF1546:
	.string	"topstep"
.LASF1164:
	.string	"S_RTORCHSHRT2"
.LASF1165:
	.string	"S_RTORCHSHRT3"
.LASF1166:
	.string	"S_RTORCHSHRT4"
.LASF1068:
	.string	"S_PINV4"
.LASF10:
	.string	"short int"
.LASF852:
	.string	"S_BSPI_RUN1"
.LASF1321:
	.string	"MT_MISC77"
.LASF1322:
	.string	"MT_MISC78"
.LASF1323:
	.string	"MT_MISC79"
.LASF1212:
	.string	"MT_SKULL"
.LASF1199:
	.string	"MT_UNDEAD"
.LASF1518:
	.string	"mfloorclip"
.LASF73:
	.string	"prev"
.LASF562:
	.string	"S_SKEL_DIE1"
.LASF563:
	.string	"S_SKEL_DIE2"
.LASF564:
	.string	"S_SKEL_DIE3"
.LASF109:
	.string	"SPR_FIRE"
.LASF566:
	.string	"S_SKEL_DIE5"
.LASF567:
	.string	"S_SKEL_DIE6"
.LASF1173:
	.string	"S_COLONGIBS"
.LASF214:
	.string	"SPR_TLP2"
.LASF324:
	.string	"S_PLASBALL"
.LASF170:
	.string	"SPR_SGN2"
.LASF58:
	.string	"options"
.LASF123:
	.string	"SPR_BSPI"
.LASF125:
	.string	"SPR_APBX"
.LASF1419:
	.string	"colormap"
.LASF1247:
	.string	"MT_MISC10"
.LASF1248:
	.string	"MT_MISC11"
.LASF1249:
	.string	"MT_MISC12"
.LASF1251:
	.string	"MT_MISC13"
.LASF1253:
	.string	"MT_MISC14"
.LASF1254:
	.string	"MT_MISC15"
.LASF1255:
	.string	"MT_MISC16"
.LASF1258:
	.string	"MT_MISC17"
.LASF1259:
	.string	"MT_MISC18"
.LASF1087:
	.string	"S_CLIP"
.LASF1349:
	.string	"radius"
.LASF1377:
	.string	"health"
.LASF1221:
	.string	"MT_BOSSTARGET"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"r_segs.c"
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
