	.file	"p_setup.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "p_setup.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 50
rcsid:
	.string	"$Id: p_setup.c,v 1.5 1997/02/03 22:45:12 b1 Exp $"
	.globl	numvertexes
	.bss
	.align 4
	.type	numvertexes, @object
	.size	numvertexes, 4
numvertexes:
	.zero	4
	.globl	vertexes
	.align 8
	.type	vertexes, @object
	.size	vertexes, 8
vertexes:
	.zero	8
	.globl	numsegs
	.align 4
	.type	numsegs, @object
	.size	numsegs, 4
numsegs:
	.zero	4
	.globl	segs
	.align 8
	.type	segs, @object
	.size	segs, 8
segs:
	.zero	8
	.globl	numsectors
	.align 4
	.type	numsectors, @object
	.size	numsectors, 4
numsectors:
	.zero	4
	.globl	sectors
	.align 8
	.type	sectors, @object
	.size	sectors, 8
sectors:
	.zero	8
	.globl	numsubsectors
	.align 4
	.type	numsubsectors, @object
	.size	numsubsectors, 4
numsubsectors:
	.zero	4
	.globl	subsectors
	.align 8
	.type	subsectors, @object
	.size	subsectors, 8
subsectors:
	.zero	8
	.globl	numnodes
	.align 4
	.type	numnodes, @object
	.size	numnodes, 4
numnodes:
	.zero	4
	.globl	nodes
	.align 8
	.type	nodes, @object
	.size	nodes, 8
nodes:
	.zero	8
	.globl	numlines
	.align 4
	.type	numlines, @object
	.size	numlines, 4
numlines:
	.zero	4
	.globl	lines
	.align 8
	.type	lines, @object
	.size	lines, 8
lines:
	.zero	8
	.globl	numsides
	.align 4
	.type	numsides, @object
	.size	numsides, 4
numsides:
	.zero	4
	.globl	sides
	.align 8
	.type	sides, @object
	.size	sides, 8
sides:
	.zero	8
	.globl	bmapwidth
	.align 4
	.type	bmapwidth, @object
	.size	bmapwidth, 4
bmapwidth:
	.zero	4
	.globl	bmapheight
	.align 4
	.type	bmapheight, @object
	.size	bmapheight, 4
bmapheight:
	.zero	4
	.globl	blockmap
	.align 8
	.type	blockmap, @object
	.size	blockmap, 8
blockmap:
	.zero	8
	.globl	blockmaplump
	.align 8
	.type	blockmaplump, @object
	.size	blockmaplump, 8
blockmaplump:
	.zero	8
	.globl	bmaporgx
	.align 4
	.type	bmaporgx, @object
	.size	bmaporgx, 4
bmaporgx:
	.zero	4
	.globl	bmaporgy
	.align 4
	.type	bmaporgy, @object
	.size	bmaporgy, 4
bmaporgy:
	.zero	4
	.globl	blocklinks
	.align 8
	.type	blocklinks, @object
	.size	blocklinks, 8
blocklinks:
	.zero	8
	.globl	rejectmatrix
	.align 8
	.type	rejectmatrix, @object
	.size	rejectmatrix, 8
rejectmatrix:
	.zero	8
	.globl	deathmatchstarts
	.align 32
	.type	deathmatchstarts, @object
	.size	deathmatchstarts, 100
deathmatchstarts:
	.zero	100
	.globl	deathmatch_p
	.align 8
	.type	deathmatch_p, @object
	.size	deathmatch_p, 8
deathmatch_p:
	.zero	8
	.globl	playerstarts
	.align 32
	.type	playerstarts, @object
	.size	playerstarts, 40
playerstarts:
	.zero	40
	.text
	.globl	P_LoadVertexes
	.type	P_LoadVertexes, @function
P_LoadVertexes:
.LFB0:
	.file 1 "p_setup.c"
	.loc 1 123 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# lump, lump
# p_setup.c:131:     numvertexes = W_LumpLength (lump) / sizeof(mapvertex_t);
	.loc 1 131 19
	movl	-36(%rbp), %eax	# lump, tmp99
	movl	%eax, %edi	# tmp99,
	call	W_LumpLength@PLT	#
# p_setup.c:131:     numvertexes = W_LumpLength (lump) / sizeof(mapvertex_t);
	.loc 1 131 19 is_stmt 0 discriminator 1
	cltq
# p_setup.c:131:     numvertexes = W_LumpLength (lump) / sizeof(mapvertex_t);
	.loc 1 131 39 is_stmt 1 discriminator 1
	shrq	$2, %rax	#, _3
# p_setup.c:131:     numvertexes = W_LumpLength (lump) / sizeof(mapvertex_t);
	.loc 1 131 17 discriminator 1
	movl	%eax, numvertexes(%rip)	# _4, numvertexes
# p_setup.c:134:     vertexes = Z_Malloc (numvertexes*sizeof(vertex_t),PU_LEVEL,0);	
	.loc 1 134 16
	movl	numvertexes(%rip), %eax	# numvertexes, numvertexes.0_5
	cltq
	sall	$3, %eax	#, _8
	movl	$0, %edx	#,
	movl	$50, %esi	#,
	movl	%eax, %edi	# _9,
	call	Z_Malloc@PLT	#
# p_setup.c:134:     vertexes = Z_Malloc (numvertexes*sizeof(vertex_t),PU_LEVEL,0);	
	.loc 1 134 14 discriminator 1
	movq	%rax, vertexes(%rip)	# _10, vertexes
# p_setup.c:137:     data = W_CacheLumpNum (lump,PU_STATIC);
	.loc 1 137 12
	movl	-36(%rbp), %eax	# lump, tmp100
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp100,
	call	W_CacheLumpNum@PLT	#
	movq	%rax, -8(%rbp)	# tmp101, data
# p_setup.c:139:     ml = (mapvertex_t *)data;
	.loc 1 139 8
	movq	-8(%rbp), %rax	# data, tmp102
	movq	%rax, -24(%rbp)	# tmp102, ml
# p_setup.c:140:     li = vertexes;
	.loc 1 140 8
	movq	vertexes(%rip), %rax	# vertexes, tmp103
	movq	%rax, -16(%rbp)	# tmp103, li
# p_setup.c:144:     for (i=0 ; i<numvertexes ; i++, li++, ml++)
	.loc 1 144 11
	movl	$0, -28(%rbp)	#, i
# p_setup.c:144:     for (i=0 ; i<numvertexes ; i++, li++, ml++)
	.loc 1 144 5
	jmp	.L2	#
.L3:
# p_setup.c:146: 	li->x = SHORT(ml->x)<<FRACBITS;
	.loc 1 146 10
	movq	-24(%rbp), %rax	# ml, tmp104
	movzwl	(%rax), %eax	# ml_19->x, _11
	cwtl
# p_setup.c:146: 	li->x = SHORT(ml->x)<<FRACBITS;
	.loc 1 146 22
	sall	$16, %eax	#, _12
	movl	%eax, %edx	# _12, _13
# p_setup.c:146: 	li->x = SHORT(ml->x)<<FRACBITS;
	.loc 1 146 8
	movq	-16(%rbp), %rax	# li, tmp105
	movl	%edx, (%rax)	# _13, li_20->x
# p_setup.c:147: 	li->y = SHORT(ml->y)<<FRACBITS;
	.loc 1 147 10
	movq	-24(%rbp), %rax	# ml, tmp106
	movzwl	2(%rax), %eax	# ml_19->y, _14
	cwtl
# p_setup.c:147: 	li->y = SHORT(ml->y)<<FRACBITS;
	.loc 1 147 22
	sall	$16, %eax	#, _15
	movl	%eax, %edx	# _15, _16
# p_setup.c:147: 	li->y = SHORT(ml->y)<<FRACBITS;
	.loc 1 147 8
	movq	-16(%rbp), %rax	# li, tmp107
	movl	%edx, 4(%rax)	# _16, li_20->y
# p_setup.c:144:     for (i=0 ; i<numvertexes ; i++, li++, ml++)
	.loc 1 144 33 discriminator 3
	addl	$1, -28(%rbp)	#, i
# p_setup.c:144:     for (i=0 ; i<numvertexes ; i++, li++, ml++)
	.loc 1 144 39 discriminator 3
	addq	$8, -16(%rbp)	#, li
# p_setup.c:144:     for (i=0 ; i<numvertexes ; i++, li++, ml++)
	.loc 1 144 45 discriminator 3
	addq	$4, -24(%rbp)	#, ml
.L2:
# p_setup.c:144:     for (i=0 ; i<numvertexes ; i++, li++, ml++)
	.loc 1 144 17 discriminator 1
	movl	numvertexes(%rip), %eax	# numvertexes, numvertexes.1_17
	cmpl	%eax, -28(%rbp)	# numvertexes.1_17, i
	jl	.L3	#,
# p_setup.c:151:     Z_Free (data);
	.loc 1 151 5
	movq	-8(%rbp), %rax	# data, tmp108
	movq	%rax, %rdi	# tmp108,
	call	Z_Free@PLT	#
# p_setup.c:152: }
	.loc 1 152 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	P_LoadVertexes, .-P_LoadVertexes
	.globl	P_LoadSegs
	.type	P_LoadSegs, @function
P_LoadSegs:
.LFB1:
	.loc 1 160 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -52(%rbp)	# lump, lump
# p_setup.c:169:     numsegs = W_LumpLength (lump) / sizeof(mapseg_t);
	.loc 1 169 15
	movl	-52(%rbp), %eax	# lump, tmp139
	movl	%eax, %edi	# tmp139,
	call	W_LumpLength@PLT	#
# p_setup.c:169:     numsegs = W_LumpLength (lump) / sizeof(mapseg_t);
	.loc 1 169 15 is_stmt 0 discriminator 1
	cltq
# p_setup.c:169:     numsegs = W_LumpLength (lump) / sizeof(mapseg_t);
	.loc 1 169 35 is_stmt 1 discriminator 1
	movabsq	$-6148914691236517205, %rdx	#, tmp141
	mulq	%rdx	# tmp141
	movq	%rdx, %rax	# tmp140, tmp140
	shrq	$3, %rax	#, tmp140
# p_setup.c:169:     numsegs = W_LumpLength (lump) / sizeof(mapseg_t);
	.loc 1 169 13 discriminator 1
	movl	%eax, numsegs(%rip)	# _4, numsegs
# p_setup.c:170:     segs = Z_Malloc (numsegs*sizeof(seg_t),PU_LEVEL,0);	
	.loc 1 170 12
	movl	numsegs(%rip), %eax	# numsegs, numsegs.2_5
	cltq
	imull	$56, %eax, %eax	#, _7, _8
	movl	$0, %edx	#,
	movl	$50, %esi	#,
	movl	%eax, %edi	# _9,
	call	Z_Malloc@PLT	#
# p_setup.c:170:     segs = Z_Malloc (numsegs*sizeof(seg_t),PU_LEVEL,0);	
	.loc 1 170 10 discriminator 1
	movq	%rax, segs(%rip)	# _10, segs
# p_setup.c:171:     memset (segs, 0, numsegs*sizeof(seg_t));
	.loc 1 171 5
	movl	numsegs(%rip), %eax	# numsegs, numsegs.3_11
	movslq	%eax, %rdx	# numsegs.3_11, _12
	movq	%rdx, %rax	# _12, tmp142
	salq	$3, %rax	#, tmp143
	subq	%rdx, %rax	# _12, tmp142
	salq	$3, %rax	#, tmp144
	movq	%rax, %rdx	# tmp142, _13
	movq	segs(%rip), %rax	# segs, segs.4_14
	movl	$0, %esi	#,
	movq	%rax, %rdi	# segs.4_14,
	call	memset@PLT	#
# p_setup.c:172:     data = W_CacheLumpNum (lump,PU_STATIC);
	.loc 1 172 12
	movl	-52(%rbp), %eax	# lump, tmp145
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp145,
	call	W_CacheLumpNum@PLT	#
	movq	%rax, -16(%rbp)	# tmp146, data
# p_setup.c:174:     ml = (mapseg_t *)data;
	.loc 1 174 8
	movq	-16(%rbp), %rax	# data, tmp147
	movq	%rax, -32(%rbp)	# tmp147, ml
# p_setup.c:175:     li = segs;
	.loc 1 175 8
	movq	segs(%rip), %rax	# segs, tmp148
	movq	%rax, -24(%rbp)	# tmp148, li
# p_setup.c:176:     for (i=0 ; i<numsegs ; i++, li++, ml++)
	.loc 1 176 11
	movl	$0, -44(%rbp)	#, i
# p_setup.c:176:     for (i=0 ; i<numsegs ; i++, li++, ml++)
	.loc 1 176 5
	jmp	.L5	#
.L8:
# p_setup.c:178: 	li->v1 = &vertexes[SHORT(ml->v1)];
	.loc 1 178 11
	movq	vertexes(%rip), %rdx	# vertexes, vertexes.5_15
# p_setup.c:178: 	li->v1 = &vertexes[SHORT(ml->v1)];
	.loc 1 178 21
	movq	-32(%rbp), %rax	# ml, tmp149
	movzwl	(%rax), %eax	# ml_59->v1, _16
	movswq	%ax, %rax	# _16, _17
# p_setup.c:178: 	li->v1 = &vertexes[SHORT(ml->v1)];
	.loc 1 178 20
	salq	$3, %rax	#, _18
# p_setup.c:178: 	li->v1 = &vertexes[SHORT(ml->v1)];
	.loc 1 178 11
	addq	%rax, %rdx	# _18, _19
# p_setup.c:178: 	li->v1 = &vertexes[SHORT(ml->v1)];
	.loc 1 178 9
	movq	-24(%rbp), %rax	# li, tmp150
	movq	%rdx, (%rax)	# _19, li_60->v1
# p_setup.c:179: 	li->v2 = &vertexes[SHORT(ml->v2)];
	.loc 1 179 11
	movq	vertexes(%rip), %rdx	# vertexes, vertexes.6_20
# p_setup.c:179: 	li->v2 = &vertexes[SHORT(ml->v2)];
	.loc 1 179 21
	movq	-32(%rbp), %rax	# ml, tmp151
	movzwl	2(%rax), %eax	# ml_59->v2, _21
	movswq	%ax, %rax	# _21, _22
# p_setup.c:179: 	li->v2 = &vertexes[SHORT(ml->v2)];
	.loc 1 179 20
	salq	$3, %rax	#, _23
# p_setup.c:179: 	li->v2 = &vertexes[SHORT(ml->v2)];
	.loc 1 179 11
	addq	%rax, %rdx	# _23, _24
# p_setup.c:179: 	li->v2 = &vertexes[SHORT(ml->v2)];
	.loc 1 179 9
	movq	-24(%rbp), %rax	# li, tmp152
	movq	%rdx, 8(%rax)	# _24, li_60->v2
# p_setup.c:181: 	li->angle = (SHORT(ml->angle))<<16;
	.loc 1 181 15
	movq	-32(%rbp), %rax	# ml, tmp153
	movzwl	4(%rax), %eax	# ml_59->angle, _25
# p_setup.c:181: 	li->angle = (SHORT(ml->angle))<<16;
	.loc 1 181 32
	cwtl
	sall	$16, %eax	#, _26
	movl	%eax, %edx	# _26, _27
# p_setup.c:181: 	li->angle = (SHORT(ml->angle))<<16;
	.loc 1 181 12
	movq	-24(%rbp), %rax	# li, tmp154
	movl	%edx, 20(%rax)	# _27, li_60->angle
# p_setup.c:182: 	li->offset = (SHORT(ml->offset))<<16;
	.loc 1 182 16
	movq	-32(%rbp), %rax	# ml, tmp155
	movzwl	10(%rax), %eax	# ml_59->offset, _28
	cwtl
# p_setup.c:182: 	li->offset = (SHORT(ml->offset))<<16;
	.loc 1 182 34
	sall	$16, %eax	#, _29
	movl	%eax, %edx	# _29, _30
# p_setup.c:182: 	li->offset = (SHORT(ml->offset))<<16;
	.loc 1 182 13
	movq	-24(%rbp), %rax	# li, tmp156
	movl	%edx, 16(%rax)	# _30, li_60->offset
# p_setup.c:183: 	linedef = SHORT(ml->linedef);
	.loc 1 183 12
	movq	-32(%rbp), %rax	# ml, tmp157
	movzwl	6(%rax), %eax	# ml_59->linedef, _31
# p_setup.c:183: 	linedef = SHORT(ml->linedef);
	.loc 1 183 10
	cwtl
	movl	%eax, -40(%rbp)	# tmp158, linedef
# p_setup.c:184: 	ldef = &lines[linedef];
	.loc 1 184 9
	movq	lines(%rip), %rcx	# lines, lines.7_32
# p_setup.c:184: 	ldef = &lines[linedef];
	.loc 1 184 15
	movl	-40(%rbp), %eax	# linedef, tmp159
	movslq	%eax, %rdx	# tmp159, _33
	movq	%rdx, %rax	# _33, tmp160
	salq	$2, %rax	#, tmp160
	addq	%rdx, %rax	# _33, tmp160
	addq	%rax, %rax	# tmp160
	addq	%rdx, %rax	# _33, tmp160
	salq	$3, %rax	#, tmp161
# p_setup.c:184: 	ldef = &lines[linedef];
	.loc 1 184 7
	addq	%rcx, %rax	# lines.7_32, tmp162
	movq	%rax, -8(%rbp)	# tmp162, ldef
# p_setup.c:185: 	li->linedef = ldef;
	.loc 1 185 14
	movq	-24(%rbp), %rax	# li, tmp163
	movq	-8(%rbp), %rdx	# ldef, tmp164
	movq	%rdx, 32(%rax)	# tmp164, li_60->linedef
# p_setup.c:186: 	side = SHORT(ml->side);
	.loc 1 186 9
	movq	-32(%rbp), %rax	# ml, tmp165
	movzwl	8(%rax), %eax	# ml_59->side, _35
# p_setup.c:186: 	side = SHORT(ml->side);
	.loc 1 186 7
	cwtl
	movl	%eax, -36(%rbp)	# tmp166, side
# p_setup.c:187: 	li->sidedef = &sides[ldef->sidenum[side]];
	.loc 1 187 16
	movq	sides(%rip), %rcx	# sides, sides.8_36
# p_setup.c:187: 	li->sidedef = &sides[ldef->sidenum[side]];
	.loc 1 187 36
	movq	-8(%rbp), %rax	# ldef, tmp167
	movl	-36(%rbp), %edx	# side, tmp169
	movslq	%edx, %rdx	# tmp169, tmp168
	addq	$8, %rdx	#, tmp170
	movzwl	14(%rax,%rdx,2), %eax	# ldef_81->sidenum[side_83], _37
	movswq	%ax, %rdx	# _37, _38
# p_setup.c:187: 	li->sidedef = &sides[ldef->sidenum[side]];
	.loc 1 187 22
	movq	%rdx, %rax	# _38, tmp171
	addq	%rax, %rax	# tmp171
	addq	%rdx, %rax	# _38, tmp171
	salq	$3, %rax	#, tmp172
# p_setup.c:187: 	li->sidedef = &sides[ldef->sidenum[side]];
	.loc 1 187 16
	leaq	(%rcx,%rax), %rdx	#, _40
# p_setup.c:187: 	li->sidedef = &sides[ldef->sidenum[side]];
	.loc 1 187 14
	movq	-24(%rbp), %rax	# li, tmp173
	movq	%rdx, 24(%rax)	# _40, li_60->sidedef
# p_setup.c:188: 	li->frontsector = sides[ldef->sidenum[side]].sector;
	.loc 1 188 25
	movq	sides(%rip), %rcx	# sides, sides.9_41
# p_setup.c:188: 	li->frontsector = sides[ldef->sidenum[side]].sector;
	.loc 1 188 39
	movq	-8(%rbp), %rax	# ldef, tmp174
	movl	-36(%rbp), %edx	# side, tmp176
	movslq	%edx, %rdx	# tmp176, tmp175
	addq	$8, %rdx	#, tmp177
	movzwl	14(%rax,%rdx,2), %eax	# ldef_81->sidenum[side_83], _42
	movswq	%ax, %rdx	# _42, _43
# p_setup.c:188: 	li->frontsector = sides[ldef->sidenum[side]].sector;
	.loc 1 188 25
	movq	%rdx, %rax	# _43, tmp178
	addq	%rax, %rax	# tmp178
	addq	%rdx, %rax	# _43, tmp178
	salq	$3, %rax	#, tmp179
	addq	%rcx, %rax	# sides.9_41, _45
# p_setup.c:188: 	li->frontsector = sides[ldef->sidenum[side]].sector;
	.loc 1 188 46
	movq	16(%rax), %rdx	# _45->sector, _46
# p_setup.c:188: 	li->frontsector = sides[ldef->sidenum[side]].sector;
	.loc 1 188 18
	movq	-24(%rbp), %rax	# li, tmp180
	movq	%rdx, 40(%rax)	# _46, li_60->frontsector
# p_setup.c:189: 	if (ldef-> flags & ML_TWOSIDED)
	.loc 1 189 10
	movq	-8(%rbp), %rax	# ldef, tmp181
	movzwl	24(%rax), %eax	# ldef_81->flags, _47
# p_setup.c:189: 	if (ldef-> flags & ML_TWOSIDED)
	.loc 1 189 19
	cwtl
	andl	$4, %eax	#, _49
# p_setup.c:189: 	if (ldef-> flags & ML_TWOSIDED)
	.loc 1 189 5
	testl	%eax, %eax	# _49
	je	.L6	#,
# p_setup.c:190: 	    li->backsector = sides[ldef->sidenum[side^1]].sector;
	.loc 1 190 28
	movq	sides(%rip), %rcx	# sides, sides.10_50
# p_setup.c:190: 	    li->backsector = sides[ldef->sidenum[side^1]].sector;
	.loc 1 190 47
	movl	-36(%rbp), %eax	# side, tmp182
	xorl	$1, %eax	#, tmp182
	movl	%eax, %edx	# tmp182, _51
# p_setup.c:190: 	    li->backsector = sides[ldef->sidenum[side^1]].sector;
	.loc 1 190 42
	movq	-8(%rbp), %rax	# ldef, tmp183
	movslq	%edx, %rdx	# _51, tmp184
	addq	$8, %rdx	#, tmp185
	movzwl	14(%rax,%rdx,2), %eax	# ldef_81->sidenum[_51], _52
	movswq	%ax, %rdx	# _52, _53
# p_setup.c:190: 	    li->backsector = sides[ldef->sidenum[side^1]].sector;
	.loc 1 190 28
	movq	%rdx, %rax	# _53, tmp186
	addq	%rax, %rax	# tmp186
	addq	%rdx, %rax	# _53, tmp186
	salq	$3, %rax	#, tmp187
	addq	%rcx, %rax	# sides.10_50, _55
# p_setup.c:190: 	    li->backsector = sides[ldef->sidenum[side^1]].sector;
	.loc 1 190 51
	movq	16(%rax), %rdx	# _55->sector, _56
# p_setup.c:190: 	    li->backsector = sides[ldef->sidenum[side^1]].sector;
	.loc 1 190 21
	movq	-24(%rbp), %rax	# li, tmp188
	movq	%rdx, 48(%rax)	# _56, li_60->backsector
	jmp	.L7	#
.L6:
# p_setup.c:192: 	    li->backsector = 0;
	.loc 1 192 21
	movq	-24(%rbp), %rax	# li, tmp189
	movq	$0, 48(%rax)	#, li_60->backsector
.L7:
# p_setup.c:176:     for (i=0 ; i<numsegs ; i++, li++, ml++)
	.loc 1 176 29 discriminator 2
	addl	$1, -44(%rbp)	#, i
# p_setup.c:176:     for (i=0 ; i<numsegs ; i++, li++, ml++)
	.loc 1 176 35 discriminator 2
	addq	$56, -24(%rbp)	#, li
# p_setup.c:176:     for (i=0 ; i<numsegs ; i++, li++, ml++)
	.loc 1 176 41 discriminator 2
	addq	$12, -32(%rbp)	#, ml
.L5:
# p_setup.c:176:     for (i=0 ; i<numsegs ; i++, li++, ml++)
	.loc 1 176 17 discriminator 1
	movl	numsegs(%rip), %eax	# numsegs, numsegs.11_57
	cmpl	%eax, -44(%rbp)	# numsegs.11_57, i
	jl	.L8	#,
# p_setup.c:195:     Z_Free (data);
	.loc 1 195 5
	movq	-16(%rbp), %rax	# data, tmp190
	movq	%rax, %rdi	# tmp190,
	call	Z_Free@PLT	#
# p_setup.c:196: }
	.loc 1 196 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	P_LoadSegs, .-P_LoadSegs
	.globl	P_LoadSubsectors
	.type	P_LoadSubsectors, @function
P_LoadSubsectors:
.LFB2:
	.loc 1 203 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# lump, lump
# p_setup.c:209:     numsubsectors = W_LumpLength (lump) / sizeof(mapsubsector_t);
	.loc 1 209 21
	movl	-36(%rbp), %eax	# lump, tmp99
	movl	%eax, %edi	# tmp99,
	call	W_LumpLength@PLT	#
# p_setup.c:209:     numsubsectors = W_LumpLength (lump) / sizeof(mapsubsector_t);
	.loc 1 209 21 is_stmt 0 discriminator 1
	cltq
# p_setup.c:209:     numsubsectors = W_LumpLength (lump) / sizeof(mapsubsector_t);
	.loc 1 209 41 is_stmt 1 discriminator 1
	shrq	$2, %rax	#, _3
# p_setup.c:209:     numsubsectors = W_LumpLength (lump) / sizeof(mapsubsector_t);
	.loc 1 209 19 discriminator 1
	movl	%eax, numsubsectors(%rip)	# _4, numsubsectors
# p_setup.c:210:     subsectors = Z_Malloc (numsubsectors*sizeof(subsector_t),PU_LEVEL,0);	
	.loc 1 210 18
	movl	numsubsectors(%rip), %eax	# numsubsectors, numsubsectors.12_5
	cltq
	sall	$4, %eax	#, _8
	movl	$0, %edx	#,
	movl	$50, %esi	#,
	movl	%eax, %edi	# _9,
	call	Z_Malloc@PLT	#
# p_setup.c:210:     subsectors = Z_Malloc (numsubsectors*sizeof(subsector_t),PU_LEVEL,0);	
	.loc 1 210 16 discriminator 1
	movq	%rax, subsectors(%rip)	# _10, subsectors
# p_setup.c:211:     data = W_CacheLumpNum (lump,PU_STATIC);
	.loc 1 211 12
	movl	-36(%rbp), %eax	# lump, tmp100
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp100,
	call	W_CacheLumpNum@PLT	#
	movq	%rax, -8(%rbp)	# tmp101, data
# p_setup.c:213:     ms = (mapsubsector_t *)data;
	.loc 1 213 8
	movq	-8(%rbp), %rax	# data, tmp102
	movq	%rax, -24(%rbp)	# tmp102, ms
# p_setup.c:214:     memset (subsectors,0, numsubsectors*sizeof(subsector_t));
	.loc 1 214 5
	movl	numsubsectors(%rip), %eax	# numsubsectors, numsubsectors.13_11
	cltq
	salq	$4, %rax	#, _12
	movq	%rax, %rdx	# _12, _13
	movq	subsectors(%rip), %rax	# subsectors, subsectors.14_14
	movl	$0, %esi	#,
	movq	%rax, %rdi	# subsectors.14_14,
	call	memset@PLT	#
# p_setup.c:215:     ss = subsectors;
	.loc 1 215 8
	movq	subsectors(%rip), %rax	# subsectors, tmp103
	movq	%rax, -16(%rbp)	# tmp103, ss
# p_setup.c:217:     for (i=0 ; i<numsubsectors ; i++, ss++, ms++)
	.loc 1 217 11
	movl	$0, -28(%rbp)	#, i
# p_setup.c:217:     for (i=0 ; i<numsubsectors ; i++, ss++, ms++)
	.loc 1 217 5
	jmp	.L10	#
.L11:
# p_setup.c:219: 	ss->numlines = SHORT(ms->numsegs);
	.loc 1 219 17
	movq	-24(%rbp), %rax	# ms, tmp104
	movzwl	(%rax), %edx	# ms_19->numsegs, _15
# p_setup.c:219: 	ss->numlines = SHORT(ms->numsegs);
	.loc 1 219 15
	movq	-16(%rbp), %rax	# ss, tmp105
	movw	%dx, 8(%rax)	# _15, ss_20->numlines
# p_setup.c:220: 	ss->firstline = SHORT(ms->firstseg);
	.loc 1 220 18
	movq	-24(%rbp), %rax	# ms, tmp106
	movzwl	2(%rax), %edx	# ms_19->firstseg, _16
# p_setup.c:220: 	ss->firstline = SHORT(ms->firstseg);
	.loc 1 220 16
	movq	-16(%rbp), %rax	# ss, tmp107
	movw	%dx, 10(%rax)	# _16, ss_20->firstline
# p_setup.c:217:     for (i=0 ; i<numsubsectors ; i++, ss++, ms++)
	.loc 1 217 35 discriminator 3
	addl	$1, -28(%rbp)	#, i
# p_setup.c:217:     for (i=0 ; i<numsubsectors ; i++, ss++, ms++)
	.loc 1 217 41 discriminator 3
	addq	$16, -16(%rbp)	#, ss
# p_setup.c:217:     for (i=0 ; i<numsubsectors ; i++, ss++, ms++)
	.loc 1 217 47 discriminator 3
	addq	$4, -24(%rbp)	#, ms
.L10:
# p_setup.c:217:     for (i=0 ; i<numsubsectors ; i++, ss++, ms++)
	.loc 1 217 17 discriminator 1
	movl	numsubsectors(%rip), %eax	# numsubsectors, numsubsectors.15_17
	cmpl	%eax, -28(%rbp)	# numsubsectors.15_17, i
	jl	.L11	#,
# p_setup.c:223:     Z_Free (data);
	.loc 1 223 5
	movq	-8(%rbp), %rax	# data, tmp108
	movq	%rax, %rdi	# tmp108,
	call	Z_Free@PLT	#
# p_setup.c:224: }
	.loc 1 224 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	P_LoadSubsectors, .-P_LoadSubsectors
	.globl	P_LoadSectors
	.type	P_LoadSectors, @function
P_LoadSectors:
.LFB3:
	.loc 1 232 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# lump, lump
# p_setup.c:238:     numsectors = W_LumpLength (lump) / sizeof(mapsector_t);
	.loc 1 238 18
	movl	-36(%rbp), %eax	# lump, tmp112
	movl	%eax, %edi	# tmp112,
	call	W_LumpLength@PLT	#
# p_setup.c:238:     numsectors = W_LumpLength (lump) / sizeof(mapsector_t);
	.loc 1 238 18 is_stmt 0 discriminator 1
	cltq
# p_setup.c:238:     numsectors = W_LumpLength (lump) / sizeof(mapsector_t);
	.loc 1 238 38 is_stmt 1 discriminator 1
	movabsq	$5675921253449092805, %rdx	#, tmp114
	mulq	%rdx	# tmp114
	movq	%rdx, %rax	# tmp113, tmp113
	shrq	$3, %rax	#, tmp113
# p_setup.c:238:     numsectors = W_LumpLength (lump) / sizeof(mapsector_t);
	.loc 1 238 16 discriminator 1
	movl	%eax, numsectors(%rip)	# _4, numsectors
# p_setup.c:239:     sectors = Z_Malloc (numsectors*sizeof(sector_t),PU_LEVEL,0);	
	.loc 1 239 15
	movl	numsectors(%rip), %eax	# numsectors, numsectors.16_5
	cltq
	sall	$7, %eax	#, _8
	movl	$0, %edx	#,
	movl	$50, %esi	#,
	movl	%eax, %edi	# _9,
	call	Z_Malloc@PLT	#
# p_setup.c:239:     sectors = Z_Malloc (numsectors*sizeof(sector_t),PU_LEVEL,0);	
	.loc 1 239 13 discriminator 1
	movq	%rax, sectors(%rip)	# _10, sectors
# p_setup.c:240:     memset (sectors, 0, numsectors*sizeof(sector_t));
	.loc 1 240 5
	movl	numsectors(%rip), %eax	# numsectors, numsectors.17_11
	cltq
	salq	$7, %rax	#, _12
	movq	%rax, %rdx	# _12, _13
	movq	sectors(%rip), %rax	# sectors, sectors.18_14
	movl	$0, %esi	#,
	movq	%rax, %rdi	# sectors.18_14,
	call	memset@PLT	#
# p_setup.c:241:     data = W_CacheLumpNum (lump,PU_STATIC);
	.loc 1 241 12
	movl	-36(%rbp), %eax	# lump, tmp115
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp115,
	call	W_CacheLumpNum@PLT	#
	movq	%rax, -8(%rbp)	# tmp116, data
# p_setup.c:243:     ms = (mapsector_t *)data;
	.loc 1 243 8
	movq	-8(%rbp), %rax	# data, tmp117
	movq	%rax, -24(%rbp)	# tmp117, ms
# p_setup.c:244:     ss = sectors;
	.loc 1 244 8
	movq	sectors(%rip), %rax	# sectors, tmp118
	movq	%rax, -16(%rbp)	# tmp118, ss
# p_setup.c:245:     for (i=0 ; i<numsectors ; i++, ss++, ms++)
	.loc 1 245 11
	movl	$0, -28(%rbp)	#, i
# p_setup.c:245:     for (i=0 ; i<numsectors ; i++, ss++, ms++)
	.loc 1 245 5
	jmp	.L13	#
.L14:
# p_setup.c:247: 	ss->floorheight = SHORT(ms->floorheight)<<FRACBITS;
	.loc 1 247 20
	movq	-24(%rbp), %rax	# ms, tmp119
	movzwl	(%rax), %eax	# ms_32->floorheight, _15
	cwtl
# p_setup.c:247: 	ss->floorheight = SHORT(ms->floorheight)<<FRACBITS;
	.loc 1 247 42
	sall	$16, %eax	#, _16
	movl	%eax, %edx	# _16, _17
# p_setup.c:247: 	ss->floorheight = SHORT(ms->floorheight)<<FRACBITS;
	.loc 1 247 18
	movq	-16(%rbp), %rax	# ss, tmp120
	movl	%edx, (%rax)	# _17, ss_33->floorheight
# p_setup.c:248: 	ss->ceilingheight = SHORT(ms->ceilingheight)<<FRACBITS;
	.loc 1 248 22
	movq	-24(%rbp), %rax	# ms, tmp121
	movzwl	2(%rax), %eax	# ms_32->ceilingheight, _18
	cwtl
# p_setup.c:248: 	ss->ceilingheight = SHORT(ms->ceilingheight)<<FRACBITS;
	.loc 1 248 46
	sall	$16, %eax	#, _19
	movl	%eax, %edx	# _19, _20
# p_setup.c:248: 	ss->ceilingheight = SHORT(ms->ceilingheight)<<FRACBITS;
	.loc 1 248 20
	movq	-16(%rbp), %rax	# ss, tmp122
	movl	%edx, 4(%rax)	# _20, ss_33->ceilingheight
# p_setup.c:249: 	ss->floorpic = R_FlatNumForName(ms->floorpic);
	.loc 1 249 36
	movq	-24(%rbp), %rax	# ms, tmp123
	addq	$4, %rax	#, _21
# p_setup.c:249: 	ss->floorpic = R_FlatNumForName(ms->floorpic);
	.loc 1 249 17
	movq	%rax, %rdi	# _21,
	call	R_FlatNumForName@PLT	#
# p_setup.c:249: 	ss->floorpic = R_FlatNumForName(ms->floorpic);
	.loc 1 249 15 discriminator 1
	movl	%eax, %edx	# _22, _23
	movq	-16(%rbp), %rax	# ss, tmp124
	movw	%dx, 8(%rax)	# _23, ss_33->floorpic
# p_setup.c:250: 	ss->ceilingpic = R_FlatNumForName(ms->ceilingpic);
	.loc 1 250 38
	movq	-24(%rbp), %rax	# ms, tmp125
	addq	$12, %rax	#, _24
# p_setup.c:250: 	ss->ceilingpic = R_FlatNumForName(ms->ceilingpic);
	.loc 1 250 19
	movq	%rax, %rdi	# _24,
	call	R_FlatNumForName@PLT	#
# p_setup.c:250: 	ss->ceilingpic = R_FlatNumForName(ms->ceilingpic);
	.loc 1 250 17 discriminator 1
	movl	%eax, %edx	# _25, _26
	movq	-16(%rbp), %rax	# ss, tmp126
	movw	%dx, 10(%rax)	# _26, ss_33->ceilingpic
# p_setup.c:251: 	ss->lightlevel = SHORT(ms->lightlevel);
	.loc 1 251 19
	movq	-24(%rbp), %rax	# ms, tmp127
	movzwl	20(%rax), %edx	# ms_32->lightlevel, _27
# p_setup.c:251: 	ss->lightlevel = SHORT(ms->lightlevel);
	.loc 1 251 17
	movq	-16(%rbp), %rax	# ss, tmp128
	movw	%dx, 12(%rax)	# _27, ss_33->lightlevel
# p_setup.c:252: 	ss->special = SHORT(ms->special);
	.loc 1 252 16
	movq	-24(%rbp), %rax	# ms, tmp129
	movzwl	22(%rax), %edx	# ms_32->special, _28
# p_setup.c:252: 	ss->special = SHORT(ms->special);
	.loc 1 252 14
	movq	-16(%rbp), %rax	# ss, tmp130
	movw	%dx, 14(%rax)	# _28, ss_33->special
# p_setup.c:253: 	ss->tag = SHORT(ms->tag);
	.loc 1 253 12
	movq	-24(%rbp), %rax	# ms, tmp131
	movzwl	24(%rax), %edx	# ms_32->tag, _29
# p_setup.c:253: 	ss->tag = SHORT(ms->tag);
	.loc 1 253 10
	movq	-16(%rbp), %rax	# ss, tmp132
	movw	%dx, 16(%rax)	# _29, ss_33->tag
# p_setup.c:254: 	ss->thinglist = NULL;
	.loc 1 254 16
	movq	-16(%rbp), %rax	# ss, tmp133
	movq	$0, 96(%rax)	#, ss_33->thinglist
# p_setup.c:245:     for (i=0 ; i<numsectors ; i++, ss++, ms++)
	.loc 1 245 32 discriminator 3
	addl	$1, -28(%rbp)	#, i
# p_setup.c:245:     for (i=0 ; i<numsectors ; i++, ss++, ms++)
	.loc 1 245 38 discriminator 3
	subq	$-128, -16(%rbp)	#, ss
# p_setup.c:245:     for (i=0 ; i<numsectors ; i++, ss++, ms++)
	.loc 1 245 44 discriminator 3
	addq	$26, -24(%rbp)	#, ms
.L13:
# p_setup.c:245:     for (i=0 ; i<numsectors ; i++, ss++, ms++)
	.loc 1 245 17 discriminator 1
	movl	numsectors(%rip), %eax	# numsectors, numsectors.19_30
	cmpl	%eax, -28(%rbp)	# numsectors.19_30, i
	jl	.L14	#,
# p_setup.c:257:     Z_Free (data);
	.loc 1 257 5
	movq	-8(%rbp), %rax	# data, tmp134
	movq	%rax, %rdi	# tmp134,
	call	Z_Free@PLT	#
# p_setup.c:258: }
	.loc 1 258 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3:
	.size	P_LoadSectors, .-P_LoadSectors
	.globl	P_LoadNodes
	.type	P_LoadNodes, @function
P_LoadNodes:
.LFB4:
	.loc 1 265 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -52(%rbp)	# lump, lump
# p_setup.c:273:     numnodes = W_LumpLength (lump) / sizeof(mapnode_t);
	.loc 1 273 16
	movl	-52(%rbp), %eax	# lump, tmp109
	movl	%eax, %edi	# tmp109,
	call	W_LumpLength@PLT	#
# p_setup.c:273:     numnodes = W_LumpLength (lump) / sizeof(mapnode_t);
	.loc 1 273 16 is_stmt 0 discriminator 1
	cltq
# p_setup.c:273:     numnodes = W_LumpLength (lump) / sizeof(mapnode_t);
	.loc 1 273 36 is_stmt 1 discriminator 1
	shrq	$2, %rax	#, tmp110
	movabsq	$5270498306774157605, %rdx	#, tmp112
	mulq	%rdx	# tmp112
	movq	%rdx, %rax	# tmp111, tmp111
	shrq	%rax	# tmp111
# p_setup.c:273:     numnodes = W_LumpLength (lump) / sizeof(mapnode_t);
	.loc 1 273 14 discriminator 1
	movl	%eax, numnodes(%rip)	# _4, numnodes
# p_setup.c:274:     nodes = Z_Malloc (numnodes*sizeof(node_t),PU_LEVEL,0);	
	.loc 1 274 13
	movl	numnodes(%rip), %eax	# numnodes, numnodes.20_5
	cltq
	imull	$52, %eax, %eax	#, _7, _8
	movl	$0, %edx	#,
	movl	$50, %esi	#,
	movl	%eax, %edi	# _9,
	call	Z_Malloc@PLT	#
# p_setup.c:274:     nodes = Z_Malloc (numnodes*sizeof(node_t),PU_LEVEL,0);	
	.loc 1 274 11 discriminator 1
	movq	%rax, nodes(%rip)	# _10, nodes
# p_setup.c:275:     data = W_CacheLumpNum (lump,PU_STATIC);
	.loc 1 275 12
	movl	-52(%rbp), %eax	# lump, tmp113
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp113,
	call	W_CacheLumpNum@PLT	#
	movq	%rax, -8(%rbp)	# tmp114, data
# p_setup.c:277:     mn = (mapnode_t *)data;
	.loc 1 277 8
	movq	-8(%rbp), %rax	# data, tmp115
	movq	%rax, -24(%rbp)	# tmp115, mn
# p_setup.c:278:     no = nodes;
	.loc 1 278 8
	movq	nodes(%rip), %rax	# nodes, tmp116
	movq	%rax, -16(%rbp)	# tmp116, no
# p_setup.c:280:     for (i=0 ; i<numnodes ; i++, no++, mn++)
	.loc 1 280 11
	movl	$0, -36(%rbp)	#, i
# p_setup.c:280:     for (i=0 ; i<numnodes ; i++, no++, mn++)
	.loc 1 280 5
	jmp	.L16	#
.L21:
# p_setup.c:282: 	no->x = SHORT(mn->x)<<FRACBITS;
	.loc 1 282 10
	movq	-24(%rbp), %rax	# mn, tmp117
	movzwl	(%rax), %eax	# mn_31->x, _11
	cwtl
# p_setup.c:282: 	no->x = SHORT(mn->x)<<FRACBITS;
	.loc 1 282 22
	sall	$16, %eax	#, _12
	movl	%eax, %edx	# _12, _13
# p_setup.c:282: 	no->x = SHORT(mn->x)<<FRACBITS;
	.loc 1 282 8
	movq	-16(%rbp), %rax	# no, tmp118
	movl	%edx, (%rax)	# _13, no_32->x
# p_setup.c:283: 	no->y = SHORT(mn->y)<<FRACBITS;
	.loc 1 283 10
	movq	-24(%rbp), %rax	# mn, tmp119
	movzwl	2(%rax), %eax	# mn_31->y, _14
	cwtl
# p_setup.c:283: 	no->y = SHORT(mn->y)<<FRACBITS;
	.loc 1 283 22
	sall	$16, %eax	#, _15
	movl	%eax, %edx	# _15, _16
# p_setup.c:283: 	no->y = SHORT(mn->y)<<FRACBITS;
	.loc 1 283 8
	movq	-16(%rbp), %rax	# no, tmp120
	movl	%edx, 4(%rax)	# _16, no_32->y
# p_setup.c:284: 	no->dx = SHORT(mn->dx)<<FRACBITS;
	.loc 1 284 11
	movq	-24(%rbp), %rax	# mn, tmp121
	movzwl	4(%rax), %eax	# mn_31->dx, _17
	cwtl
# p_setup.c:284: 	no->dx = SHORT(mn->dx)<<FRACBITS;
	.loc 1 284 24
	sall	$16, %eax	#, _18
	movl	%eax, %edx	# _18, _19
# p_setup.c:284: 	no->dx = SHORT(mn->dx)<<FRACBITS;
	.loc 1 284 9
	movq	-16(%rbp), %rax	# no, tmp122
	movl	%edx, 8(%rax)	# _19, no_32->dx
# p_setup.c:285: 	no->dy = SHORT(mn->dy)<<FRACBITS;
	.loc 1 285 11
	movq	-24(%rbp), %rax	# mn, tmp123
	movzwl	6(%rax), %eax	# mn_31->dy, _20
	cwtl
# p_setup.c:285: 	no->dy = SHORT(mn->dy)<<FRACBITS;
	.loc 1 285 24
	sall	$16, %eax	#, _21
	movl	%eax, %edx	# _21, _22
# p_setup.c:285: 	no->dy = SHORT(mn->dy)<<FRACBITS;
	.loc 1 285 9
	movq	-16(%rbp), %rax	# no, tmp124
	movl	%edx, 12(%rax)	# _22, no_32->dy
# p_setup.c:286: 	for (j=0 ; j<2 ; j++)
	.loc 1 286 8
	movl	$0, -32(%rbp)	#, j
# p_setup.c:286: 	for (j=0 ; j<2 ; j++)
	.loc 1 286 2
	jmp	.L17	#
.L20:
# p_setup.c:288: 	    no->children[j] = SHORT(mn->children[j]);
	.loc 1 288 24
	movq	-24(%rbp), %rax	# mn, tmp125
	movl	-32(%rbp), %edx	# j, tmp127
	movslq	%edx, %rdx	# tmp127, tmp126
	addq	$8, %rdx	#, tmp128
	movzwl	8(%rax,%rdx,2), %edx	# mn_31->children[j_29], _23
# p_setup.c:288: 	    no->children[j] = SHORT(mn->children[j]);
	.loc 1 288 22
	movq	-16(%rbp), %rax	# no, tmp129
	movl	-32(%rbp), %ecx	# j, tmp131
	movslq	%ecx, %rcx	# tmp131, tmp130
	addq	$24, %rcx	#, tmp132
	movw	%dx, (%rax,%rcx,2)	# _23, no_32->children[j_29]
# p_setup.c:289: 	    for (k=0 ; k<4 ; k++)
	.loc 1 289 12
	movl	$0, -28(%rbp)	#, k
# p_setup.c:289: 	    for (k=0 ; k<4 ; k++)
	.loc 1 289 6
	jmp	.L18	#
.L19:
# p_setup.c:290: 		no->bbox[j][k] = SHORT(mn->bbox[j][k])<<FRACBITS;
	.loc 1 290 20
	movq	-24(%rbp), %rax	# mn, tmp133
	movl	-28(%rbp), %edx	# k, tmp135
	movslq	%edx, %rdx	# tmp135, tmp134
	movl	-32(%rbp), %ecx	# j, tmp137
	movslq	%ecx, %rcx	# tmp137, tmp136
	salq	$2, %rcx	#, tmp138
	addq	%rcx, %rdx	# tmp138, tmp139
	movzwl	8(%rax,%rdx,2), %eax	# mn_31->bbox[j_29][k_30], _24
	cwtl
# p_setup.c:290: 		no->bbox[j][k] = SHORT(mn->bbox[j][k])<<FRACBITS;
	.loc 1 290 41
	sall	$16, %eax	#, _25
	movl	%eax, %ecx	# _25, _26
# p_setup.c:290: 		no->bbox[j][k] = SHORT(mn->bbox[j][k])<<FRACBITS;
	.loc 1 290 18
	movq	-16(%rbp), %rax	# no, tmp140
	movl	-28(%rbp), %edx	# k, tmp142
	movslq	%edx, %rdx	# tmp142, tmp141
	movl	-32(%rbp), %esi	# j, tmp144
	movslq	%esi, %rsi	# tmp144, tmp143
	salq	$2, %rsi	#, tmp145
	addq	%rsi, %rdx	# tmp145, tmp146
	addq	$4, %rdx	#, tmp147
	movl	%ecx, (%rax,%rdx,4)	# _26, no_32->bbox[j_29][k_30]
# p_setup.c:289: 	    for (k=0 ; k<4 ; k++)
	.loc 1 289 24 discriminator 3
	addl	$1, -28(%rbp)	#, k
.L18:
# p_setup.c:289: 	    for (k=0 ; k<4 ; k++)
	.loc 1 289 18 discriminator 1
	cmpl	$3, -28(%rbp)	#, k
	jle	.L19	#,
# p_setup.c:286: 	for (j=0 ; j<2 ; j++)
	.loc 1 286 20 discriminator 2
	addl	$1, -32(%rbp)	#, j
.L17:
# p_setup.c:286: 	for (j=0 ; j<2 ; j++)
	.loc 1 286 14 discriminator 1
	cmpl	$1, -32(%rbp)	#, j
	jle	.L20	#,
# p_setup.c:280:     for (i=0 ; i<numnodes ; i++, no++, mn++)
	.loc 1 280 30 discriminator 2
	addl	$1, -36(%rbp)	#, i
# p_setup.c:280:     for (i=0 ; i<numnodes ; i++, no++, mn++)
	.loc 1 280 36 discriminator 2
	addq	$52, -16(%rbp)	#, no
# p_setup.c:280:     for (i=0 ; i<numnodes ; i++, no++, mn++)
	.loc 1 280 42 discriminator 2
	addq	$28, -24(%rbp)	#, mn
.L16:
# p_setup.c:280:     for (i=0 ; i<numnodes ; i++, no++, mn++)
	.loc 1 280 17 discriminator 1
	movl	numnodes(%rip), %eax	# numnodes, numnodes.21_27
	cmpl	%eax, -36(%rbp)	# numnodes.21_27, i
	jl	.L21	#,
# p_setup.c:294:     Z_Free (data);
	.loc 1 294 5
	movq	-8(%rbp), %rax	# data, tmp148
	movq	%rax, %rdi	# tmp148,
	call	Z_Free@PLT	#
# p_setup.c:295: }
	.loc 1 295 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4:
	.size	P_LoadNodes, .-P_LoadNodes
	.globl	P_LoadThings
	.type	P_LoadThings, @function
P_LoadThings:
.LFB5:
	.loc 1 302 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# lump, lump
# p_setup.c:309:     data = W_CacheLumpNum (lump,PU_STATIC);
	.loc 1 309 12
	movl	-36(%rbp), %eax	# lump, tmp99
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp99,
	call	W_CacheLumpNum@PLT	#
	movq	%rax, -8(%rbp)	# tmp100, data
# p_setup.c:310:     numthings = W_LumpLength (lump) / sizeof(mapthing_t);
	.loc 1 310 17
	movl	-36(%rbp), %eax	# lump, tmp101
	movl	%eax, %edi	# tmp101,
	call	W_LumpLength@PLT	#
# p_setup.c:310:     numthings = W_LumpLength (lump) / sizeof(mapthing_t);
	.loc 1 310 17 is_stmt 0 discriminator 1
	cltq
# p_setup.c:310:     numthings = W_LumpLength (lump) / sizeof(mapthing_t);
	.loc 1 310 37 is_stmt 1 discriminator 1
	movabsq	$-3689348814741910323, %rdx	#, tmp103
	mulq	%rdx	# tmp103
	movq	%rdx, %rax	# tmp102, tmp102
	shrq	$3, %rax	#, tmp102
# p_setup.c:310:     numthings = W_LumpLength (lump) / sizeof(mapthing_t);
	.loc 1 310 15 discriminator 1
	movl	%eax, -20(%rbp)	# _3, numthings
# p_setup.c:312:     mt = (mapthing_t *)data;
	.loc 1 312 8
	movq	-8(%rbp), %rax	# data, tmp104
	movq	%rax, -16(%rbp)	# tmp104, mt
# p_setup.c:313:     for (i=0 ; i<numthings ; i++, mt++)
	.loc 1 313 11
	movl	$0, -28(%rbp)	#, i
# p_setup.c:313:     for (i=0 ; i<numthings ; i++, mt++)
	.loc 1 313 5
	jmp	.L23	#
.L27:
# p_setup.c:315: 	spawn = true;
	.loc 1 315 8
	movl	$1, -24(%rbp)	#, spawn
# p_setup.c:318: 	if ( gamemode != commercial)
	.loc 1 318 16
	movl	gamemode(%rip), %eax	# gamemode, gamemode.22_4
# p_setup.c:318: 	if ( gamemode != commercial)
	.loc 1 318 5
	cmpl	$2, %eax	#, gamemode.22_4
	je	.L24	#,
# p_setup.c:320: 	    switch(mt->type)
	.loc 1 320 15
	movq	-16(%rbp), %rax	# mt, tmp105
	movzwl	6(%rax), %eax	# mt_13->type, _5
	cwtl
# p_setup.c:320: 	    switch(mt->type)
	.loc 1 320 6
	subl	$64, %eax	#, _36
	cmpl	$25, %eax	#, _36
	seta	%dl	#, _37
	testb	%dl, %dl	# _37
	jne	.L24	#,
	movl	$51380415, %edx	#, tmp106
	movl	%eax, %ecx	# _36, tmp124
	shrq	%cl, %rdx	# tmp124, tmp106
	movq	%rdx, %rax	# tmp106, _38
	andl	$1, %eax	#, _39
	testq	%rax, %rax	# _39
	setne	%al	#, _40
	testb	%al, %al	# _40
	je	.L24	#,
# p_setup.c:332: 		spawn = false;
	.loc 1 332 9
	movl	$0, -24(%rbp)	#, spawn
# p_setup.c:333: 		break;
	.loc 1 333 3
	nop	
.L24:
# p_setup.c:336: 	if (spawn == false)
	.loc 1 336 5
	cmpl	$0, -24(%rbp)	#, spawn
	je	.L28	#,
# p_setup.c:340: 	mt->x = SHORT(mt->x);
	.loc 1 340 10
	movq	-16(%rbp), %rax	# mt, tmp107
	movzwl	(%rax), %edx	# mt_13->x, _7
# p_setup.c:340: 	mt->x = SHORT(mt->x);
	.loc 1 340 8
	movq	-16(%rbp), %rax	# mt, tmp108
	movw	%dx, (%rax)	# _7, mt_13->x
# p_setup.c:341: 	mt->y = SHORT(mt->y);
	.loc 1 341 10
	movq	-16(%rbp), %rax	# mt, tmp109
	movzwl	2(%rax), %edx	# mt_13->y, _8
# p_setup.c:341: 	mt->y = SHORT(mt->y);
	.loc 1 341 8
	movq	-16(%rbp), %rax	# mt, tmp110
	movw	%dx, 2(%rax)	# _8, mt_13->y
# p_setup.c:342: 	mt->angle = SHORT(mt->angle);
	.loc 1 342 14
	movq	-16(%rbp), %rax	# mt, tmp111
	movzwl	4(%rax), %edx	# mt_13->angle, _9
# p_setup.c:342: 	mt->angle = SHORT(mt->angle);
	.loc 1 342 12
	movq	-16(%rbp), %rax	# mt, tmp112
	movw	%dx, 4(%rax)	# _9, mt_13->angle
# p_setup.c:343: 	mt->type = SHORT(mt->type);
	.loc 1 343 13
	movq	-16(%rbp), %rax	# mt, tmp113
	movzwl	6(%rax), %edx	# mt_13->type, _10
# p_setup.c:343: 	mt->type = SHORT(mt->type);
	.loc 1 343 11
	movq	-16(%rbp), %rax	# mt, tmp114
	movw	%dx, 6(%rax)	# _10, mt_13->type
# p_setup.c:344: 	mt->options = SHORT(mt->options);
	.loc 1 344 16
	movq	-16(%rbp), %rax	# mt, tmp115
	movzwl	8(%rax), %edx	# mt_13->options, _11
# p_setup.c:344: 	mt->options = SHORT(mt->options);
	.loc 1 344 14
	movq	-16(%rbp), %rax	# mt, tmp116
	movw	%dx, 8(%rax)	# _11, mt_13->options
# p_setup.c:346: 	P_SpawnMapThing (mt);
	.loc 1 346 2
	movq	-16(%rbp), %rax	# mt, tmp117
	movq	%rax, %rdi	# tmp117,
	call	P_SpawnMapThing@PLT	#
# p_setup.c:313:     for (i=0 ; i<numthings ; i++, mt++)
	.loc 1 313 31 discriminator 2
	addl	$1, -28(%rbp)	#, i
# p_setup.c:313:     for (i=0 ; i<numthings ; i++, mt++)
	.loc 1 313 37 discriminator 2
	addq	$10, -16(%rbp)	#, mt
.L23:
# p_setup.c:313:     for (i=0 ; i<numthings ; i++, mt++)
	.loc 1 313 17 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp118
	cmpl	-20(%rbp), %eax	# numthings, tmp118
	jl	.L27	#,
	jmp	.L26	#
.L28:
# p_setup.c:337: 	    break;
	.loc 1 337 6
	nop	
.L26:
# p_setup.c:349:     Z_Free (data);
	.loc 1 349 5
	movq	-8(%rbp), %rax	# data, tmp119
	movq	%rax, %rdi	# tmp119,
	call	Z_Free@PLT	#
# p_setup.c:350: }
	.loc 1 350 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5:
	.size	P_LoadThings, .-P_LoadThings
	.globl	P_LoadLineDefs
	.type	P_LoadLineDefs, @function
P_LoadLineDefs:
.LFB6:
	.loc 1 358 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -52(%rbp)	# lump, lump
# p_setup.c:366:     numlines = W_LumpLength (lump) / sizeof(maplinedef_t);
	.loc 1 366 16
	movl	-52(%rbp), %eax	# lump, tmp149
	movl	%eax, %edi	# tmp149,
	call	W_LumpLength@PLT	#
# p_setup.c:366:     numlines = W_LumpLength (lump) / sizeof(maplinedef_t);
	.loc 1 366 16 is_stmt 0 discriminator 1
	cltq
# p_setup.c:366:     numlines = W_LumpLength (lump) / sizeof(maplinedef_t);
	.loc 1 366 36 is_stmt 1 discriminator 1
	shrq	%rax	# tmp150
	movabsq	$5270498306774157605, %rdx	#, tmp152
	mulq	%rdx	# tmp152
	movq	%rdx, %rax	# tmp151, tmp151
	shrq	%rax	# tmp151
# p_setup.c:366:     numlines = W_LumpLength (lump) / sizeof(maplinedef_t);
	.loc 1 366 14 discriminator 1
	movl	%eax, numlines(%rip)	# _4, numlines
# p_setup.c:367:     lines = Z_Malloc (numlines*sizeof(line_t),PU_LEVEL,0);	
	.loc 1 367 13
	movl	numlines(%rip), %eax	# numlines, numlines.23_5
	cltq
	imull	$88, %eax, %eax	#, _7, _8
	movl	$0, %edx	#,
	movl	$50, %esi	#,
	movl	%eax, %edi	# _9,
	call	Z_Malloc@PLT	#
# p_setup.c:367:     lines = Z_Malloc (numlines*sizeof(line_t),PU_LEVEL,0);	
	.loc 1 367 11 discriminator 1
	movq	%rax, lines(%rip)	# _10, lines
# p_setup.c:368:     memset (lines, 0, numlines*sizeof(line_t));
	.loc 1 368 5
	movl	numlines(%rip), %eax	# numlines, numlines.24_11
	movslq	%eax, %rdx	# numlines.24_11, _12
	movq	%rdx, %rax	# _12, tmp153
	salq	$2, %rax	#, tmp153
	addq	%rdx, %rax	# _12, tmp153
	addq	%rax, %rax	# tmp153
	addq	%rdx, %rax	# _12, tmp153
	salq	$3, %rax	#, tmp154
	movq	%rax, %rdx	# tmp153, _13
	movq	lines(%rip), %rax	# lines, lines.25_14
	movl	$0, %esi	#,
	movq	%rax, %rdi	# lines.25_14,
	call	memset@PLT	#
# p_setup.c:369:     data = W_CacheLumpNum (lump,PU_STATIC);
	.loc 1 369 12
	movl	-52(%rbp), %eax	# lump, tmp155
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp155,
	call	W_CacheLumpNum@PLT	#
	movq	%rax, -24(%rbp)	# tmp156, data
# p_setup.c:371:     mld = (maplinedef_t *)data;
	.loc 1 371 9
	movq	-24(%rbp), %rax	# data, tmp157
	movq	%rax, -40(%rbp)	# tmp157, mld
# p_setup.c:372:     ld = lines;
	.loc 1 372 8
	movq	lines(%rip), %rax	# lines, tmp158
	movq	%rax, -32(%rbp)	# tmp158, ld
# p_setup.c:373:     for (i=0 ; i<numlines ; i++, mld++, ld++)
	.loc 1 373 11
	movl	$0, -44(%rbp)	#, i
# p_setup.c:373:     for (i=0 ; i<numlines ; i++, mld++, ld++)
	.loc 1 373 5
	jmp	.L30	#
.L43:
# p_setup.c:375: 	ld->flags = SHORT(mld->flags);
	.loc 1 375 14
	movq	-40(%rbp), %rax	# mld, tmp159
	movzwl	4(%rax), %edx	# mld_69->flags, _15
# p_setup.c:375: 	ld->flags = SHORT(mld->flags);
	.loc 1 375 12
	movq	-32(%rbp), %rax	# ld, tmp160
	movw	%dx, 24(%rax)	# _15, ld_70->flags
# p_setup.c:376: 	ld->special = SHORT(mld->special);
	.loc 1 376 16
	movq	-40(%rbp), %rax	# mld, tmp161
	movzwl	6(%rax), %edx	# mld_69->special, _16
# p_setup.c:376: 	ld->special = SHORT(mld->special);
	.loc 1 376 14
	movq	-32(%rbp), %rax	# ld, tmp162
	movw	%dx, 26(%rax)	# _16, ld_70->special
# p_setup.c:377: 	ld->tag = SHORT(mld->tag);
	.loc 1 377 12
	movq	-40(%rbp), %rax	# mld, tmp163
	movzwl	8(%rax), %edx	# mld_69->tag, _17
# p_setup.c:377: 	ld->tag = SHORT(mld->tag);
	.loc 1 377 10
	movq	-32(%rbp), %rax	# ld, tmp164
	movw	%dx, 28(%rax)	# _17, ld_70->tag
# p_setup.c:378: 	v1 = ld->v1 = &vertexes[SHORT(mld->v1)];
	.loc 1 378 16
	movq	vertexes(%rip), %rdx	# vertexes, vertexes.26_18
# p_setup.c:378: 	v1 = ld->v1 = &vertexes[SHORT(mld->v1)];
	.loc 1 378 26
	movq	-40(%rbp), %rax	# mld, tmp165
	movzwl	(%rax), %eax	# mld_69->v1, _19
	movswq	%ax, %rax	# _19, _20
# p_setup.c:378: 	v1 = ld->v1 = &vertexes[SHORT(mld->v1)];
	.loc 1 378 25
	salq	$3, %rax	#, _21
# p_setup.c:378: 	v1 = ld->v1 = &vertexes[SHORT(mld->v1)];
	.loc 1 378 16
	addq	%rax, %rdx	# _21, _22
# p_setup.c:378: 	v1 = ld->v1 = &vertexes[SHORT(mld->v1)];
	.loc 1 378 14
	movq	-32(%rbp), %rax	# ld, tmp166
	movq	%rdx, (%rax)	# _22, ld_70->v1
# p_setup.c:378: 	v1 = ld->v1 = &vertexes[SHORT(mld->v1)];
	.loc 1 378 5
	movq	-32(%rbp), %rax	# ld, tmp167
	movq	(%rax), %rax	# ld_70->v1, tmp168
	movq	%rax, -16(%rbp)	# tmp168, v1
# p_setup.c:379: 	v2 = ld->v2 = &vertexes[SHORT(mld->v2)];
	.loc 1 379 16
	movq	vertexes(%rip), %rdx	# vertexes, vertexes.27_23
# p_setup.c:379: 	v2 = ld->v2 = &vertexes[SHORT(mld->v2)];
	.loc 1 379 26
	movq	-40(%rbp), %rax	# mld, tmp169
	movzwl	2(%rax), %eax	# mld_69->v2, _24
	movswq	%ax, %rax	# _24, _25
# p_setup.c:379: 	v2 = ld->v2 = &vertexes[SHORT(mld->v2)];
	.loc 1 379 25
	salq	$3, %rax	#, _26
# p_setup.c:379: 	v2 = ld->v2 = &vertexes[SHORT(mld->v2)];
	.loc 1 379 16
	addq	%rax, %rdx	# _26, _27
# p_setup.c:379: 	v2 = ld->v2 = &vertexes[SHORT(mld->v2)];
	.loc 1 379 14
	movq	-32(%rbp), %rax	# ld, tmp170
	movq	%rdx, 8(%rax)	# _27, ld_70->v2
# p_setup.c:379: 	v2 = ld->v2 = &vertexes[SHORT(mld->v2)];
	.loc 1 379 5
	movq	-32(%rbp), %rax	# ld, tmp171
	movq	8(%rax), %rax	# ld_70->v2, tmp172
	movq	%rax, -8(%rbp)	# tmp172, v2
# p_setup.c:380: 	ld->dx = v2->x - v1->x;
	.loc 1 380 13
	movq	-8(%rbp), %rax	# v2, tmp173
	movl	(%rax), %edx	# v2_96->x, _28
# p_setup.c:380: 	ld->dx = v2->x - v1->x;
	.loc 1 380 21
	movq	-16(%rbp), %rax	# v1, tmp174
	movl	(%rax), %eax	# v1_94->x, _29
# p_setup.c:380: 	ld->dx = v2->x - v1->x;
	.loc 1 380 17
	subl	%eax, %edx	# _29, _30
# p_setup.c:380: 	ld->dx = v2->x - v1->x;
	.loc 1 380 9
	movq	-32(%rbp), %rax	# ld, tmp175
	movl	%edx, 16(%rax)	# _30, ld_70->dx
# p_setup.c:381: 	ld->dy = v2->y - v1->y;
	.loc 1 381 13
	movq	-8(%rbp), %rax	# v2, tmp176
	movl	4(%rax), %edx	# v2_96->y, _31
# p_setup.c:381: 	ld->dy = v2->y - v1->y;
	.loc 1 381 21
	movq	-16(%rbp), %rax	# v1, tmp177
	movl	4(%rax), %eax	# v1_94->y, _32
# p_setup.c:381: 	ld->dy = v2->y - v1->y;
	.loc 1 381 17
	subl	%eax, %edx	# _32, _33
# p_setup.c:381: 	ld->dy = v2->y - v1->y;
	.loc 1 381 9
	movq	-32(%rbp), %rax	# ld, tmp178
	movl	%edx, 20(%rax)	# _33, ld_70->dy
# p_setup.c:383: 	if (!ld->dx)
	.loc 1 383 9
	movq	-32(%rbp), %rax	# ld, tmp179
	movl	16(%rax), %eax	# ld_70->dx, _34
# p_setup.c:383: 	if (!ld->dx)
	.loc 1 383 5
	testl	%eax, %eax	# _34
	jne	.L31	#,
# p_setup.c:384: 	    ld->slopetype = ST_VERTICAL;
	.loc 1 384 20
	movq	-32(%rbp), %rax	# ld, tmp180
	movl	$1, 52(%rax)	#, ld_70->slopetype
	jmp	.L32	#
.L31:
# p_setup.c:385: 	else if (!ld->dy)
	.loc 1 385 14
	movq	-32(%rbp), %rax	# ld, tmp181
	movl	20(%rax), %eax	# ld_70->dy, _35
# p_setup.c:385: 	else if (!ld->dy)
	.loc 1 385 10
	testl	%eax, %eax	# _35
	jne	.L33	#,
# p_setup.c:386: 	    ld->slopetype = ST_HORIZONTAL;
	.loc 1 386 20
	movq	-32(%rbp), %rax	# ld, tmp182
	movl	$0, 52(%rax)	#, ld_70->slopetype
	jmp	.L32	#
.L33:
# p_setup.c:389: 	    if (FixedDiv (ld->dy , ld->dx) > 0)
	.loc 1 389 10
	movq	-32(%rbp), %rax	# ld, tmp183
	movl	16(%rax), %edx	# ld_70->dx, _36
	movq	-32(%rbp), %rax	# ld, tmp184
	movl	20(%rax), %eax	# ld_70->dy, _37
	movl	%edx, %esi	# _36,
	movl	%eax, %edi	# _37,
	call	FixedDiv@PLT	#
# p_setup.c:389: 	    if (FixedDiv (ld->dy , ld->dx) > 0)
	.loc 1 389 9 discriminator 1
	testl	%eax, %eax	# _38
	jle	.L34	#,
# p_setup.c:390: 		ld->slopetype = ST_POSITIVE;
	.loc 1 390 17
	movq	-32(%rbp), %rax	# ld, tmp185
	movl	$2, 52(%rax)	#, ld_70->slopetype
	jmp	.L32	#
.L34:
# p_setup.c:392: 		ld->slopetype = ST_NEGATIVE;
	.loc 1 392 17
	movq	-32(%rbp), %rax	# ld, tmp186
	movl	$3, 52(%rax)	#, ld_70->slopetype
.L32:
# p_setup.c:395: 	if (v1->x < v2->x)
	.loc 1 395 8
	movq	-16(%rbp), %rax	# v1, tmp187
	movl	(%rax), %edx	# v1_94->x, _39
# p_setup.c:395: 	if (v1->x < v2->x)
	.loc 1 395 16
	movq	-8(%rbp), %rax	# v2, tmp188
	movl	(%rax), %eax	# v2_96->x, _40
# p_setup.c:395: 	if (v1->x < v2->x)
	.loc 1 395 5
	cmpl	%eax, %edx	# _40, _39
	jge	.L35	#,
# p_setup.c:397: 	    ld->bbox[BOXLEFT] = v1->x;
	.loc 1 397 28
	movq	-16(%rbp), %rax	# v1, tmp189
	movl	(%rax), %edx	# v1_94->x, _41
# p_setup.c:397: 	    ld->bbox[BOXLEFT] = v1->x;
	.loc 1 397 24
	movq	-32(%rbp), %rax	# ld, tmp190
	movl	%edx, 44(%rax)	# _41, ld_70->bbox[2]
# p_setup.c:398: 	    ld->bbox[BOXRIGHT] = v2->x;
	.loc 1 398 29
	movq	-8(%rbp), %rax	# v2, tmp191
	movl	(%rax), %edx	# v2_96->x, _42
# p_setup.c:398: 	    ld->bbox[BOXRIGHT] = v2->x;
	.loc 1 398 25
	movq	-32(%rbp), %rax	# ld, tmp192
	movl	%edx, 48(%rax)	# _42, ld_70->bbox[3]
	jmp	.L36	#
.L35:
# p_setup.c:402: 	    ld->bbox[BOXLEFT] = v2->x;
	.loc 1 402 28
	movq	-8(%rbp), %rax	# v2, tmp193
	movl	(%rax), %edx	# v2_96->x, _43
# p_setup.c:402: 	    ld->bbox[BOXLEFT] = v2->x;
	.loc 1 402 24
	movq	-32(%rbp), %rax	# ld, tmp194
	movl	%edx, 44(%rax)	# _43, ld_70->bbox[2]
# p_setup.c:403: 	    ld->bbox[BOXRIGHT] = v1->x;
	.loc 1 403 29
	movq	-16(%rbp), %rax	# v1, tmp195
	movl	(%rax), %edx	# v1_94->x, _44
# p_setup.c:403: 	    ld->bbox[BOXRIGHT] = v1->x;
	.loc 1 403 25
	movq	-32(%rbp), %rax	# ld, tmp196
	movl	%edx, 48(%rax)	# _44, ld_70->bbox[3]
.L36:
# p_setup.c:406: 	if (v1->y < v2->y)
	.loc 1 406 8
	movq	-16(%rbp), %rax	# v1, tmp197
	movl	4(%rax), %edx	# v1_94->y, _45
# p_setup.c:406: 	if (v1->y < v2->y)
	.loc 1 406 16
	movq	-8(%rbp), %rax	# v2, tmp198
	movl	4(%rax), %eax	# v2_96->y, _46
# p_setup.c:406: 	if (v1->y < v2->y)
	.loc 1 406 5
	cmpl	%eax, %edx	# _46, _45
	jge	.L37	#,
# p_setup.c:408: 	    ld->bbox[BOXBOTTOM] = v1->y;
	.loc 1 408 30
	movq	-16(%rbp), %rax	# v1, tmp199
	movl	4(%rax), %edx	# v1_94->y, _47
# p_setup.c:408: 	    ld->bbox[BOXBOTTOM] = v1->y;
	.loc 1 408 26
	movq	-32(%rbp), %rax	# ld, tmp200
	movl	%edx, 40(%rax)	# _47, ld_70->bbox[1]
# p_setup.c:409: 	    ld->bbox[BOXTOP] = v2->y;
	.loc 1 409 27
	movq	-8(%rbp), %rax	# v2, tmp201
	movl	4(%rax), %edx	# v2_96->y, _48
# p_setup.c:409: 	    ld->bbox[BOXTOP] = v2->y;
	.loc 1 409 23
	movq	-32(%rbp), %rax	# ld, tmp202
	movl	%edx, 36(%rax)	# _48, ld_70->bbox[0]
	jmp	.L38	#
.L37:
# p_setup.c:413: 	    ld->bbox[BOXBOTTOM] = v2->y;
	.loc 1 413 30
	movq	-8(%rbp), %rax	# v2, tmp203
	movl	4(%rax), %edx	# v2_96->y, _49
# p_setup.c:413: 	    ld->bbox[BOXBOTTOM] = v2->y;
	.loc 1 413 26
	movq	-32(%rbp), %rax	# ld, tmp204
	movl	%edx, 40(%rax)	# _49, ld_70->bbox[1]
# p_setup.c:414: 	    ld->bbox[BOXTOP] = v1->y;
	.loc 1 414 27
	movq	-16(%rbp), %rax	# v1, tmp205
	movl	4(%rax), %edx	# v1_94->y, _50
# p_setup.c:414: 	    ld->bbox[BOXTOP] = v1->y;
	.loc 1 414 23
	movq	-32(%rbp), %rax	# ld, tmp206
	movl	%edx, 36(%rax)	# _50, ld_70->bbox[0]
.L38:
# p_setup.c:417: 	ld->sidenum[0] = SHORT(mld->sidenum[0]);
	.loc 1 417 19
	movq	-40(%rbp), %rax	# mld, tmp207
	movzwl	10(%rax), %edx	# mld_69->sidenum[0], _51
# p_setup.c:417: 	ld->sidenum[0] = SHORT(mld->sidenum[0]);
	.loc 1 417 17
	movq	-32(%rbp), %rax	# ld, tmp208
	movw	%dx, 30(%rax)	# _51, ld_70->sidenum[0]
# p_setup.c:418: 	ld->sidenum[1] = SHORT(mld->sidenum[1]);
	.loc 1 418 19
	movq	-40(%rbp), %rax	# mld, tmp209
	movzwl	12(%rax), %edx	# mld_69->sidenum[1], _52
# p_setup.c:418: 	ld->sidenum[1] = SHORT(mld->sidenum[1]);
	.loc 1 418 17
	movq	-32(%rbp), %rax	# ld, tmp210
	movw	%dx, 32(%rax)	# _52, ld_70->sidenum[1]
# p_setup.c:420: 	if (ld->sidenum[0] != -1)
	.loc 1 420 17
	movq	-32(%rbp), %rax	# ld, tmp211
	movzwl	30(%rax), %eax	# ld_70->sidenum[0], _53
# p_setup.c:420: 	if (ld->sidenum[0] != -1)
	.loc 1 420 5
	cmpw	$-1, %ax	#, _53
	je	.L39	#,
# p_setup.c:421: 	    ld->frontsector = sides[ld->sidenum[0]].sector;
	.loc 1 421 29
	movq	sides(%rip), %rcx	# sides, sides.28_54
# p_setup.c:421: 	    ld->frontsector = sides[ld->sidenum[0]].sector;
	.loc 1 421 41
	movq	-32(%rbp), %rax	# ld, tmp212
	movzwl	30(%rax), %eax	# ld_70->sidenum[0], _55
	movswq	%ax, %rdx	# _55, _56
# p_setup.c:421: 	    ld->frontsector = sides[ld->sidenum[0]].sector;
	.loc 1 421 29
	movq	%rdx, %rax	# _56, tmp213
	addq	%rax, %rax	# tmp213
	addq	%rdx, %rax	# _56, tmp213
	salq	$3, %rax	#, tmp214
	addq	%rcx, %rax	# sides.28_54, _58
# p_setup.c:421: 	    ld->frontsector = sides[ld->sidenum[0]].sector;
	.loc 1 421 45
	movq	16(%rax), %rdx	# _58->sector, _59
# p_setup.c:421: 	    ld->frontsector = sides[ld->sidenum[0]].sector;
	.loc 1 421 22
	movq	-32(%rbp), %rax	# ld, tmp215
	movq	%rdx, 56(%rax)	# _59, ld_70->frontsector
	jmp	.L40	#
.L39:
# p_setup.c:423: 	    ld->frontsector = 0;
	.loc 1 423 22
	movq	-32(%rbp), %rax	# ld, tmp216
	movq	$0, 56(%rax)	#, ld_70->frontsector
.L40:
# p_setup.c:425: 	if (ld->sidenum[1] != -1)
	.loc 1 425 17
	movq	-32(%rbp), %rax	# ld, tmp217
	movzwl	32(%rax), %eax	# ld_70->sidenum[1], _60
# p_setup.c:425: 	if (ld->sidenum[1] != -1)
	.loc 1 425 5
	cmpw	$-1, %ax	#, _60
	je	.L41	#,
# p_setup.c:426: 	    ld->backsector = sides[ld->sidenum[1]].sector;
	.loc 1 426 28
	movq	sides(%rip), %rcx	# sides, sides.29_61
# p_setup.c:426: 	    ld->backsector = sides[ld->sidenum[1]].sector;
	.loc 1 426 40
	movq	-32(%rbp), %rax	# ld, tmp218
	movzwl	32(%rax), %eax	# ld_70->sidenum[1], _62
	movswq	%ax, %rdx	# _62, _63
# p_setup.c:426: 	    ld->backsector = sides[ld->sidenum[1]].sector;
	.loc 1 426 28
	movq	%rdx, %rax	# _63, tmp219
	addq	%rax, %rax	# tmp219
	addq	%rdx, %rax	# _63, tmp219
	salq	$3, %rax	#, tmp220
	addq	%rcx, %rax	# sides.29_61, _65
# p_setup.c:426: 	    ld->backsector = sides[ld->sidenum[1]].sector;
	.loc 1 426 44
	movq	16(%rax), %rdx	# _65->sector, _66
# p_setup.c:426: 	    ld->backsector = sides[ld->sidenum[1]].sector;
	.loc 1 426 21
	movq	-32(%rbp), %rax	# ld, tmp221
	movq	%rdx, 64(%rax)	# _66, ld_70->backsector
	jmp	.L42	#
.L41:
# p_setup.c:428: 	    ld->backsector = 0;
	.loc 1 428 21
	movq	-32(%rbp), %rax	# ld, tmp222
	movq	$0, 64(%rax)	#, ld_70->backsector
.L42:
# p_setup.c:373:     for (i=0 ; i<numlines ; i++, mld++, ld++)
	.loc 1 373 30 discriminator 2
	addl	$1, -44(%rbp)	#, i
# p_setup.c:373:     for (i=0 ; i<numlines ; i++, mld++, ld++)
	.loc 1 373 37 discriminator 2
	addq	$14, -40(%rbp)	#, mld
# p_setup.c:373:     for (i=0 ; i<numlines ; i++, mld++, ld++)
	.loc 1 373 43 discriminator 2
	addq	$88, -32(%rbp)	#, ld
.L30:
# p_setup.c:373:     for (i=0 ; i<numlines ; i++, mld++, ld++)
	.loc 1 373 17 discriminator 1
	movl	numlines(%rip), %eax	# numlines, numlines.30_67
	cmpl	%eax, -44(%rbp)	# numlines.30_67, i
	jl	.L43	#,
# p_setup.c:431:     Z_Free (data);
	.loc 1 431 5
	movq	-24(%rbp), %rax	# data, tmp223
	movq	%rax, %rdi	# tmp223,
	call	Z_Free@PLT	#
# p_setup.c:432: }
	.loc 1 432 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	P_LoadLineDefs, .-P_LoadLineDefs
	.globl	P_LoadSideDefs
	.type	P_LoadSideDefs, @function
P_LoadSideDefs:
.LFB7:
	.loc 1 439 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# lump, lump
# p_setup.c:445:     numsides = W_LumpLength (lump) / sizeof(mapsidedef_t);
	.loc 1 445 16
	movl	-36(%rbp), %eax	# lump, tmp117
	movl	%eax, %edi	# tmp117,
	call	W_LumpLength@PLT	#
# p_setup.c:445:     numsides = W_LumpLength (lump) / sizeof(mapsidedef_t);
	.loc 1 445 16 is_stmt 0 discriminator 1
	cltq
# p_setup.c:445:     numsides = W_LumpLength (lump) / sizeof(mapsidedef_t);
	.loc 1 445 36 is_stmt 1 discriminator 1
	movabsq	$-8608480567731124087, %rdx	#, tmp119
	mulq	%rdx	# tmp119
	movq	%rdx, %rax	# tmp118, tmp118
	shrq	$4, %rax	#, tmp118
# p_setup.c:445:     numsides = W_LumpLength (lump) / sizeof(mapsidedef_t);
	.loc 1 445 14 discriminator 1
	movl	%eax, numsides(%rip)	# _4, numsides
# p_setup.c:446:     sides = Z_Malloc (numsides*sizeof(side_t),PU_LEVEL,0);	
	.loc 1 446 13
	movl	numsides(%rip), %eax	# numsides, numsides.31_5
	cltq
	movl	%eax, %edx	# _6, _7
	movl	%edx, %eax	# _7, tmp120
	addl	%eax, %eax	# tmp120
	addl	%edx, %eax	# _7, tmp120
	sall	$3, %eax	#, tmp121
	movl	$0, %edx	#,
	movl	$50, %esi	#,
	movl	%eax, %edi	# _9,
	call	Z_Malloc@PLT	#
# p_setup.c:446:     sides = Z_Malloc (numsides*sizeof(side_t),PU_LEVEL,0);	
	.loc 1 446 11 discriminator 1
	movq	%rax, sides(%rip)	# _10, sides
# p_setup.c:447:     memset (sides, 0, numsides*sizeof(side_t));
	.loc 1 447 5
	movl	numsides(%rip), %eax	# numsides, numsides.32_11
	movslq	%eax, %rdx	# numsides.32_11, _12
	movq	%rdx, %rax	# _12, tmp122
	addq	%rax, %rax	# tmp122
	addq	%rdx, %rax	# _12, tmp122
	salq	$3, %rax	#, tmp123
	movq	%rax, %rdx	# tmp122, _13
	movq	sides(%rip), %rax	# sides, sides.33_14
	movl	$0, %esi	#,
	movq	%rax, %rdi	# sides.33_14,
	call	memset@PLT	#
# p_setup.c:448:     data = W_CacheLumpNum (lump,PU_STATIC);
	.loc 1 448 12
	movl	-36(%rbp), %eax	# lump, tmp124
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp124,
	call	W_CacheLumpNum@PLT	#
	movq	%rax, -8(%rbp)	# tmp125, data
# p_setup.c:450:     msd = (mapsidedef_t *)data;
	.loc 1 450 9
	movq	-8(%rbp), %rax	# data, tmp126
	movq	%rax, -24(%rbp)	# tmp126, msd
# p_setup.c:451:     sd = sides;
	.loc 1 451 8
	movq	sides(%rip), %rax	# sides, tmp127
	movq	%rax, -16(%rbp)	# tmp127, sd
# p_setup.c:452:     for (i=0 ; i<numsides ; i++, msd++, sd++)
	.loc 1 452 11
	movl	$0, -28(%rbp)	#, i
# p_setup.c:452:     for (i=0 ; i<numsides ; i++, msd++, sd++)
	.loc 1 452 5
	jmp	.L45	#
.L46:
# p_setup.c:454: 	sd->textureoffset = SHORT(msd->textureoffset)<<FRACBITS;
	.loc 1 454 22
	movq	-24(%rbp), %rax	# msd, tmp128
	movzwl	(%rax), %eax	# msd_37->textureoffset, _15
	cwtl
# p_setup.c:454: 	sd->textureoffset = SHORT(msd->textureoffset)<<FRACBITS;
	.loc 1 454 47
	sall	$16, %eax	#, _16
	movl	%eax, %edx	# _16, _17
# p_setup.c:454: 	sd->textureoffset = SHORT(msd->textureoffset)<<FRACBITS;
	.loc 1 454 20
	movq	-16(%rbp), %rax	# sd, tmp129
	movl	%edx, (%rax)	# _17, sd_38->textureoffset
# p_setup.c:455: 	sd->rowoffset = SHORT(msd->rowoffset)<<FRACBITS;
	.loc 1 455 18
	movq	-24(%rbp), %rax	# msd, tmp130
	movzwl	2(%rax), %eax	# msd_37->rowoffset, _18
	cwtl
# p_setup.c:455: 	sd->rowoffset = SHORT(msd->rowoffset)<<FRACBITS;
	.loc 1 455 39
	sall	$16, %eax	#, _19
	movl	%eax, %edx	# _19, _20
# p_setup.c:455: 	sd->rowoffset = SHORT(msd->rowoffset)<<FRACBITS;
	.loc 1 455 16
	movq	-16(%rbp), %rax	# sd, tmp131
	movl	%edx, 4(%rax)	# _20, sd_38->rowoffset
# p_setup.c:456: 	sd->toptexture = R_TextureNumForName(msd->toptexture);
	.loc 1 456 42
	movq	-24(%rbp), %rax	# msd, tmp132
	addq	$4, %rax	#, _21
# p_setup.c:456: 	sd->toptexture = R_TextureNumForName(msd->toptexture);
	.loc 1 456 19
	movq	%rax, %rdi	# _21,
	call	R_TextureNumForName@PLT	#
# p_setup.c:456: 	sd->toptexture = R_TextureNumForName(msd->toptexture);
	.loc 1 456 17 discriminator 1
	movl	%eax, %edx	# _22, _23
	movq	-16(%rbp), %rax	# sd, tmp133
	movw	%dx, 8(%rax)	# _23, sd_38->toptexture
# p_setup.c:457: 	sd->bottomtexture = R_TextureNumForName(msd->bottomtexture);
	.loc 1 457 45
	movq	-24(%rbp), %rax	# msd, tmp134
	addq	$12, %rax	#, _24
# p_setup.c:457: 	sd->bottomtexture = R_TextureNumForName(msd->bottomtexture);
	.loc 1 457 22
	movq	%rax, %rdi	# _24,
	call	R_TextureNumForName@PLT	#
# p_setup.c:457: 	sd->bottomtexture = R_TextureNumForName(msd->bottomtexture);
	.loc 1 457 20 discriminator 1
	movl	%eax, %edx	# _25, _26
	movq	-16(%rbp), %rax	# sd, tmp135
	movw	%dx, 10(%rax)	# _26, sd_38->bottomtexture
# p_setup.c:458: 	sd->midtexture = R_TextureNumForName(msd->midtexture);
	.loc 1 458 42
	movq	-24(%rbp), %rax	# msd, tmp136
	addq	$20, %rax	#, _27
# p_setup.c:458: 	sd->midtexture = R_TextureNumForName(msd->midtexture);
	.loc 1 458 19
	movq	%rax, %rdi	# _27,
	call	R_TextureNumForName@PLT	#
# p_setup.c:458: 	sd->midtexture = R_TextureNumForName(msd->midtexture);
	.loc 1 458 17 discriminator 1
	movl	%eax, %edx	# _28, _29
	movq	-16(%rbp), %rax	# sd, tmp137
	movw	%dx, 12(%rax)	# _29, sd_38->midtexture
# p_setup.c:459: 	sd->sector = &sectors[SHORT(msd->sector)];
	.loc 1 459 15
	movq	sectors(%rip), %rdx	# sectors, sectors.34_30
# p_setup.c:459: 	sd->sector = &sectors[SHORT(msd->sector)];
	.loc 1 459 24
	movq	-24(%rbp), %rax	# msd, tmp138
	movzwl	28(%rax), %eax	# msd_37->sector, _31
	movswq	%ax, %rax	# _31, _32
# p_setup.c:459: 	sd->sector = &sectors[SHORT(msd->sector)];
	.loc 1 459 23
	salq	$7, %rax	#, _33
# p_setup.c:459: 	sd->sector = &sectors[SHORT(msd->sector)];
	.loc 1 459 15
	addq	%rax, %rdx	# _33, _34
# p_setup.c:459: 	sd->sector = &sectors[SHORT(msd->sector)];
	.loc 1 459 13
	movq	-16(%rbp), %rax	# sd, tmp139
	movq	%rdx, 16(%rax)	# _34, sd_38->sector
# p_setup.c:452:     for (i=0 ; i<numsides ; i++, msd++, sd++)
	.loc 1 452 30 discriminator 3
	addl	$1, -28(%rbp)	#, i
# p_setup.c:452:     for (i=0 ; i<numsides ; i++, msd++, sd++)
	.loc 1 452 37 discriminator 3
	addq	$30, -24(%rbp)	#, msd
# p_setup.c:452:     for (i=0 ; i<numsides ; i++, msd++, sd++)
	.loc 1 452 43 discriminator 3
	addq	$24, -16(%rbp)	#, sd
.L45:
# p_setup.c:452:     for (i=0 ; i<numsides ; i++, msd++, sd++)
	.loc 1 452 17 discriminator 1
	movl	numsides(%rip), %eax	# numsides, numsides.35_35
	cmpl	%eax, -28(%rbp)	# numsides.35_35, i
	jl	.L46	#,
# p_setup.c:462:     Z_Free (data);
	.loc 1 462 5
	movq	-8(%rbp), %rax	# data, tmp140
	movq	%rax, %rdi	# tmp140,
	call	Z_Free@PLT	#
# p_setup.c:463: }
	.loc 1 463 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	P_LoadSideDefs, .-P_LoadSideDefs
	.globl	P_LoadBlockMap
	.type	P_LoadBlockMap, @function
P_LoadBlockMap:
.LFB8:
	.loc 1 470 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# lump, lump
# p_setup.c:474:     blockmaplump = W_CacheLumpNum (lump,PU_LEVEL);
	.loc 1 474 20
	movl	-20(%rbp), %eax	# lump, tmp123
	movl	$50, %esi	#,
	movl	%eax, %edi	# tmp123,
	call	W_CacheLumpNum@PLT	#
# p_setup.c:474:     blockmaplump = W_CacheLumpNum (lump,PU_LEVEL);
	.loc 1 474 18 discriminator 1
	movq	%rax, blockmaplump(%rip)	# _1, blockmaplump
# p_setup.c:475:     blockmap = blockmaplump+4;
	.loc 1 475 28
	movq	blockmaplump(%rip), %rax	# blockmaplump, blockmaplump.36_2
	addq	$8, %rax	#, _3
# p_setup.c:475:     blockmap = blockmaplump+4;
	.loc 1 475 14
	movq	%rax, blockmap(%rip)	# _3, blockmap
# p_setup.c:476:     count = W_LumpLength (lump)/2;
	.loc 1 476 13
	movl	-20(%rbp), %eax	# lump, tmp124
	movl	%eax, %edi	# tmp124,
	call	W_LumpLength@PLT	#
# p_setup.c:476:     count = W_LumpLength (lump)/2;
	.loc 1 476 11 discriminator 1
	movl	%eax, %edx	# _4, tmp125
	shrl	$31, %edx	#, tmp125
	addl	%edx, %eax	# tmp125, tmp126
	sarl	%eax	# tmp127
	movl	%eax, -4(%rbp)	# tmp127, count
# p_setup.c:478:     for (i=0 ; i<count ; i++)
	.loc 1 478 11
	movl	$0, -8(%rbp)	#, i
# p_setup.c:478:     for (i=0 ; i<count ; i++)
	.loc 1 478 5
	jmp	.L48	#
.L49:
# p_setup.c:479: 	blockmaplump[i] = SHORT(blockmaplump[i]);
	.loc 1 479 20
	movq	blockmaplump(%rip), %rax	# blockmaplump, blockmaplump.37_5
	movl	-8(%rbp), %edx	# i, tmp128
	movslq	%edx, %rdx	# tmp128, _6
	addq	%rdx, %rdx	# _7
	addq	%rdx, %rax	# _7, _8
# p_setup.c:479: 	blockmaplump[i] = SHORT(blockmaplump[i]);
	.loc 1 479 14
	movq	blockmaplump(%rip), %rdx	# blockmaplump, blockmaplump.38_9
	movl	-8(%rbp), %ecx	# i, tmp129
	movslq	%ecx, %rcx	# tmp129, _10
	addq	%rcx, %rcx	# _11
	addq	%rcx, %rdx	# _11, _12
# p_setup.c:479: 	blockmaplump[i] = SHORT(blockmaplump[i]);
	.loc 1 479 20
	movzwl	(%rax), %eax	# *_8, _13
# p_setup.c:479: 	blockmaplump[i] = SHORT(blockmaplump[i]);
	.loc 1 479 18
	movw	%ax, (%rdx)	# _13, *_12
# p_setup.c:478:     for (i=0 ; i<count ; i++)
	.loc 1 478 27 discriminator 3
	addl	$1, -8(%rbp)	#, i
.L48:
# p_setup.c:478:     for (i=0 ; i<count ; i++)
	.loc 1 478 17 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp130
	cmpl	-4(%rbp), %eax	# count, tmp130
	jl	.L49	#,
# p_setup.c:481:     bmaporgx = blockmaplump[0]<<FRACBITS;
	.loc 1 481 28
	movq	blockmaplump(%rip), %rax	# blockmaplump, blockmaplump.39_14
	movzwl	(%rax), %eax	# *blockmaplump.39_14, _15
	cwtl
# p_setup.c:481:     bmaporgx = blockmaplump[0]<<FRACBITS;
	.loc 1 481 31
	sall	$16, %eax	#, _17
# p_setup.c:481:     bmaporgx = blockmaplump[0]<<FRACBITS;
	.loc 1 481 14
	movl	%eax, bmaporgx(%rip)	# _17, bmaporgx
# p_setup.c:482:     bmaporgy = blockmaplump[1]<<FRACBITS;
	.loc 1 482 28
	movq	blockmaplump(%rip), %rax	# blockmaplump, blockmaplump.40_18
	addq	$2, %rax	#, _19
	movzwl	(%rax), %eax	# *_19, _20
	cwtl
# p_setup.c:482:     bmaporgy = blockmaplump[1]<<FRACBITS;
	.loc 1 482 31
	sall	$16, %eax	#, _22
# p_setup.c:482:     bmaporgy = blockmaplump[1]<<FRACBITS;
	.loc 1 482 14
	movl	%eax, bmaporgy(%rip)	# _22, bmaporgy
# p_setup.c:483:     bmapwidth = blockmaplump[2];
	.loc 1 483 29
	movq	blockmaplump(%rip), %rax	# blockmaplump, blockmaplump.41_23
	addq	$4, %rax	#, _24
	movzwl	(%rax), %eax	# *_24, _25
	cwtl
# p_setup.c:483:     bmapwidth = blockmaplump[2];
	.loc 1 483 15
	movl	%eax, bmapwidth(%rip)	# _26, bmapwidth
# p_setup.c:484:     bmapheight = blockmaplump[3];
	.loc 1 484 30
	movq	blockmaplump(%rip), %rax	# blockmaplump, blockmaplump.42_27
	addq	$6, %rax	#, _28
	movzwl	(%rax), %eax	# *_28, _29
	cwtl
# p_setup.c:484:     bmapheight = blockmaplump[3];
	.loc 1 484 16
	movl	%eax, bmapheight(%rip)	# _30, bmapheight
# p_setup.c:487:     count = sizeof(*blocklinks)* bmapwidth*bmapheight;
	.loc 1 487 11
	movl	bmapwidth(%rip), %eax	# bmapwidth, bmapwidth.43_31
	cltq
	movl	%eax, %edx	# _32, _33
	movl	bmapheight(%rip), %eax	# bmapheight, bmapheight.44_34
	cltq
	imull	%edx, %eax	# _33, _37
	sall	$3, %eax	#, _38
	movl	%eax, -4(%rbp)	# _38, count
# p_setup.c:488:     blocklinks = Z_Malloc (count,PU_LEVEL, 0);
	.loc 1 488 18
	movl	-4(%rbp), %eax	# count, tmp131
	movl	$0, %edx	#,
	movl	$50, %esi	#,
	movl	%eax, %edi	# tmp131,
	call	Z_Malloc@PLT	#
# p_setup.c:488:     blocklinks = Z_Malloc (count,PU_LEVEL, 0);
	.loc 1 488 16 discriminator 1
	movq	%rax, blocklinks(%rip)	# _39, blocklinks
# p_setup.c:489:     memset (blocklinks, 0, count);
	.loc 1 489 5
	movl	-4(%rbp), %eax	# count, tmp132
	movslq	%eax, %rdx	# tmp132, _40
	movq	blocklinks(%rip), %rax	# blocklinks, blocklinks.45_41
	movl	$0, %esi	#,
	movq	%rax, %rdi	# blocklinks.45_41,
	call	memset@PLT	#
# p_setup.c:490: }
	.loc 1 490 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	P_LoadBlockMap, .-P_LoadBlockMap
	.section	.rodata
.LC0:
	.string	"P_GroupLines: miscounted"
	.text
	.globl	P_GroupLines
	.type	P_GroupLines, @function
P_GroupLines:
.LFB9:
	.loc 1 500 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
# p_setup.c:500: {
	.loc 1 500 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp213
	movq	%rax, -8(%rbp)	# tmp213, D.7572
	xorl	%eax, %eax	# tmp213
# p_setup.c:513:     ss = subsectors;
	.loc 1 513 8
	movq	subsectors(%rip), %rax	# subsectors, tmp151
	movq	%rax, -48(%rbp)	# tmp151, ss
# p_setup.c:514:     for (i=0 ; i<numsubsectors ; i++, ss++)
	.loc 1 514 11
	movl	$0, -88(%rbp)	#, i
# p_setup.c:514:     for (i=0 ; i<numsubsectors ; i++, ss++)
	.loc 1 514 5
	jmp	.L51	#
.L52:
# p_setup.c:516: 	seg = &segs[ss->firstline];
	.loc 1 516 8
	movq	segs(%rip), %rcx	# segs, segs.46_1
# p_setup.c:516: 	seg = &segs[ss->firstline];
	.loc 1 516 16
	movq	-48(%rbp), %rax	# ss, tmp152
	movzwl	10(%rax), %eax	# ss_80->firstline, _2
	movswq	%ax, %rdx	# _2, _3
# p_setup.c:516: 	seg = &segs[ss->firstline];
	.loc 1 516 13
	movq	%rdx, %rax	# _3, tmp153
	salq	$3, %rax	#, tmp154
	subq	%rdx, %rax	# _3, tmp153
	salq	$3, %rax	#, tmp155
# p_setup.c:516: 	seg = &segs[ss->firstline];
	.loc 1 516 6
	addq	%rcx, %rax	# segs.46_1, tmp156
	movq	%rax, -40(%rbp)	# tmp156, seg
# p_setup.c:517: 	ss->sector = seg->sidedef->sector;
	.loc 1 517 18
	movq	-40(%rbp), %rax	# seg, tmp157
	movq	24(%rax), %rax	# seg_138->sidedef, _5
# p_setup.c:517: 	ss->sector = seg->sidedef->sector;
	.loc 1 517 27
	movq	16(%rax), %rdx	# _5->sector, _6
# p_setup.c:517: 	ss->sector = seg->sidedef->sector;
	.loc 1 517 13
	movq	-48(%rbp), %rax	# ss, tmp158
	movq	%rdx, (%rax)	# _6, ss_80->sector
# p_setup.c:514:     for (i=0 ; i<numsubsectors ; i++, ss++)
	.loc 1 514 35 discriminator 3
	addl	$1, -88(%rbp)	#, i
# p_setup.c:514:     for (i=0 ; i<numsubsectors ; i++, ss++)
	.loc 1 514 41 discriminator 3
	addq	$16, -48(%rbp)	#, ss
.L51:
# p_setup.c:514:     for (i=0 ; i<numsubsectors ; i++, ss++)
	.loc 1 514 17 discriminator 1
	movl	numsubsectors(%rip), %eax	# numsubsectors, numsubsectors.47_7
	cmpl	%eax, -88(%rbp)	# numsubsectors.47_7, i
	jl	.L52	#,
# p_setup.c:521:     li = lines;
	.loc 1 521 8
	movq	lines(%rip), %rax	# lines, tmp159
	movq	%rax, -64(%rbp)	# tmp159, li
# p_setup.c:522:     total = 0;
	.loc 1 522 11
	movl	$0, -80(%rbp)	#, total
# p_setup.c:523:     for (i=0 ; i<numlines ; i++, li++)
	.loc 1 523 11
	movl	$0, -88(%rbp)	#, i
# p_setup.c:523:     for (i=0 ; i<numlines ; i++, li++)
	.loc 1 523 5
	jmp	.L53	#
.L55:
# p_setup.c:525: 	total++;
	.loc 1 525 7
	addl	$1, -80(%rbp)	#, total
# p_setup.c:526: 	li->frontsector->linecount++;
	.loc 1 526 4
	movq	-64(%rbp), %rax	# li, tmp160
	movq	56(%rax), %rax	# li_77->frontsector, _8
# p_setup.c:526: 	li->frontsector->linecount++;
	.loc 1 526 17
	movl	112(%rax), %edx	# _8->linecount, _9
# p_setup.c:526: 	li->frontsector->linecount++;
	.loc 1 526 28
	addl	$1, %edx	#, _10
	movl	%edx, 112(%rax)	# _10, _8->linecount
# p_setup.c:528: 	if (li->backsector && li->backsector != li->frontsector)
	.loc 1 528 8
	movq	-64(%rbp), %rax	# li, tmp161
	movq	64(%rax), %rax	# li_77->backsector, _11
# p_setup.c:528: 	if (li->backsector && li->backsector != li->frontsector)
	.loc 1 528 5
	testq	%rax, %rax	# _11
	je	.L54	#,
# p_setup.c:528: 	if (li->backsector && li->backsector != li->frontsector)
	.loc 1 528 26 discriminator 1
	movq	-64(%rbp), %rax	# li, tmp162
	movq	64(%rax), %rdx	# li_77->backsector, _12
# p_setup.c:528: 	if (li->backsector && li->backsector != li->frontsector)
	.loc 1 528 44 discriminator 1
	movq	-64(%rbp), %rax	# li, tmp163
	movq	56(%rax), %rax	# li_77->frontsector, _13
# p_setup.c:528: 	if (li->backsector && li->backsector != li->frontsector)
	.loc 1 528 21 discriminator 1
	cmpq	%rax, %rdx	# _13, _12
	je	.L54	#,
# p_setup.c:530: 	    li->backsector->linecount++;
	.loc 1 530 8
	movq	-64(%rbp), %rax	# li, tmp164
	movq	64(%rax), %rax	# li_77->backsector, _14
# p_setup.c:530: 	    li->backsector->linecount++;
	.loc 1 530 20
	movl	112(%rax), %edx	# _14->linecount, _15
# p_setup.c:530: 	    li->backsector->linecount++;
	.loc 1 530 31
	addl	$1, %edx	#, _16
	movl	%edx, 112(%rax)	# _16, _14->linecount
# p_setup.c:531: 	    total++;
	.loc 1 531 11
	addl	$1, -80(%rbp)	#, total
.L54:
# p_setup.c:523:     for (i=0 ; i<numlines ; i++, li++)
	.loc 1 523 30 discriminator 2
	addl	$1, -88(%rbp)	#, i
# p_setup.c:523:     for (i=0 ; i<numlines ; i++, li++)
	.loc 1 523 36 discriminator 2
	addq	$88, -64(%rbp)	#, li
.L53:
# p_setup.c:523:     for (i=0 ; i<numlines ; i++, li++)
	.loc 1 523 17 discriminator 1
	movl	numlines(%rip), %eax	# numlines, numlines.48_17
	cmpl	%eax, -88(%rbp)	# numlines.48_17, i
	jl	.L55	#,
# p_setup.c:536:     linebuffer = Z_Malloc (total*sizeof(*linebuffer), PU_LEVEL, 0);
	.loc 1 536 18
	movl	-80(%rbp), %eax	# total, tmp165
	cltq
	sall	$3, %eax	#, _20
	movl	$0, %edx	#,
	movl	$50, %esi	#,
	movl	%eax, %edi	# _21,
	call	Z_Malloc@PLT	#
	movq	%rax, -72(%rbp)	# tmp166, linebuffer
# p_setup.c:537:     sector = sectors;
	.loc 1 537 12
	movq	sectors(%rip), %rax	# sectors, tmp167
	movq	%rax, -56(%rbp)	# tmp167, sector
# p_setup.c:538:     for (i=0 ; i<numsectors ; i++, sector++)
	.loc 1 538 11
	movl	$0, -88(%rbp)	#, i
# p_setup.c:538:     for (i=0 ; i<numsectors ; i++, sector++)
	.loc 1 538 5
	jmp	.L56	#
.L66:
# p_setup.c:540: 	M_ClearBox (bbox);
	.loc 1 540 2
	leaq	-32(%rbp), %rax	#, tmp168
	movq	%rax, %rdi	# tmp168,
	call	M_ClearBox@PLT	#
# p_setup.c:541: 	sector->lines = linebuffer;
	.loc 1 541 16
	movq	-56(%rbp), %rax	# sector, tmp169
	movq	-72(%rbp), %rdx	# linebuffer, tmp170
	movq	%rdx, 120(%rax)	# tmp170, sector_79->lines
# p_setup.c:542: 	li = lines;
	.loc 1 542 5
	movq	lines(%rip), %rax	# lines, tmp171
	movq	%rax, -64(%rbp)	# tmp171, li
# p_setup.c:543: 	for (j=0 ; j<numlines ; j++, li++)
	.loc 1 543 8
	movl	$0, -84(%rbp)	#, j
# p_setup.c:543: 	for (j=0 ; j<numlines ; j++, li++)
	.loc 1 543 2
	jmp	.L57	#
.L60:
# p_setup.c:545: 	    if (li->frontsector == sector || li->backsector == sector)
	.loc 1 545 12
	movq	-64(%rbp), %rax	# li, tmp172
	movq	56(%rax), %rax	# li_78->frontsector, _22
# p_setup.c:545: 	    if (li->frontsector == sector || li->backsector == sector)
	.loc 1 545 9
	cmpq	%rax, -56(%rbp)	# _22, sector
	je	.L58	#,
# p_setup.c:545: 	    if (li->frontsector == sector || li->backsector == sector)
	.loc 1 545 41 discriminator 1
	movq	-64(%rbp), %rax	# li, tmp173
	movq	64(%rax), %rax	# li_78->backsector, _23
# p_setup.c:545: 	    if (li->frontsector == sector || li->backsector == sector)
	.loc 1 545 36 discriminator 1
	cmpq	%rax, -56(%rbp)	# _23, sector
	jne	.L59	#,
.L58:
# p_setup.c:547: 		*linebuffer++ = li;
	.loc 1 547 14
	movq	-72(%rbp), %rax	# linebuffer, linebuffer.49_24
	leaq	8(%rax), %rdx	#, tmp174
	movq	%rdx, -72(%rbp)	# tmp174, linebuffer
# p_setup.c:547: 		*linebuffer++ = li;
	.loc 1 547 17
	movq	-64(%rbp), %rdx	# li, tmp175
	movq	%rdx, (%rax)	# tmp175, *linebuffer.49_24
# p_setup.c:548: 		M_AddToBox (bbox, li->v1->x, li->v1->y);
	.loc 1 548 34
	movq	-64(%rbp), %rax	# li, tmp176
	movq	(%rax), %rax	# li_78->v1, _25
# p_setup.c:548: 		M_AddToBox (bbox, li->v1->x, li->v1->y);
	.loc 1 548 3
	movl	4(%rax), %edx	# _25->y, _26
# p_setup.c:548: 		M_AddToBox (bbox, li->v1->x, li->v1->y);
	.loc 1 548 23
	movq	-64(%rbp), %rax	# li, tmp177
	movq	(%rax), %rax	# li_78->v1, _27
# p_setup.c:548: 		M_AddToBox (bbox, li->v1->x, li->v1->y);
	.loc 1 548 3
	movl	(%rax), %ecx	# _27->x, _28
	leaq	-32(%rbp), %rax	#, tmp178
	movl	%ecx, %esi	# _28,
	movq	%rax, %rdi	# tmp178,
	call	M_AddToBox@PLT	#
# p_setup.c:549: 		M_AddToBox (bbox, li->v2->x, li->v2->y);
	.loc 1 549 34
	movq	-64(%rbp), %rax	# li, tmp179
	movq	8(%rax), %rax	# li_78->v2, _29
# p_setup.c:549: 		M_AddToBox (bbox, li->v2->x, li->v2->y);
	.loc 1 549 3
	movl	4(%rax), %edx	# _29->y, _30
# p_setup.c:549: 		M_AddToBox (bbox, li->v2->x, li->v2->y);
	.loc 1 549 23
	movq	-64(%rbp), %rax	# li, tmp180
	movq	8(%rax), %rax	# li_78->v2, _31
# p_setup.c:549: 		M_AddToBox (bbox, li->v2->x, li->v2->y);
	.loc 1 549 3
	movl	(%rax), %ecx	# _31->x, _32
	leaq	-32(%rbp), %rax	#, tmp181
	movl	%ecx, %esi	# _32,
	movq	%rax, %rdi	# tmp181,
	call	M_AddToBox@PLT	#
.L59:
# p_setup.c:543: 	for (j=0 ; j<numlines ; j++, li++)
	.loc 1 543 27 discriminator 2
	addl	$1, -84(%rbp)	#, j
# p_setup.c:543: 	for (j=0 ; j<numlines ; j++, li++)
	.loc 1 543 33 discriminator 2
	addq	$88, -64(%rbp)	#, li
.L57:
# p_setup.c:543: 	for (j=0 ; j<numlines ; j++, li++)
	.loc 1 543 14 discriminator 1
	movl	numlines(%rip), %eax	# numlines, numlines.50_33
	cmpl	%eax, -84(%rbp)	# numlines.50_33, j
	jl	.L60	#,
# p_setup.c:552: 	if (linebuffer - sector->lines != sector->linecount)
	.loc 1 552 25
	movq	-56(%rbp), %rax	# sector, tmp182
	movq	120(%rax), %rax	# sector_79->lines, _34
# p_setup.c:552: 	if (linebuffer - sector->lines != sector->linecount)
	.loc 1 552 17
	movq	-72(%rbp), %rdx	# linebuffer, tmp183
	subq	%rax, %rdx	# _34, _35
	movq	%rdx, %rax	# _35, _35
	sarq	$3, %rax	#, _35
	movq	%rax, %rdx	# tmp184, _36
# p_setup.c:552: 	if (linebuffer - sector->lines != sector->linecount)
	.loc 1 552 42
	movq	-56(%rbp), %rax	# sector, tmp185
	movl	112(%rax), %eax	# sector_79->linecount, _37
	cltq
# p_setup.c:552: 	if (linebuffer - sector->lines != sector->linecount)
	.loc 1 552 5
	cmpq	%rax, %rdx	# _38, _36
	je	.L61	#,
# p_setup.c:553: 	    I_Error ("P_GroupLines: miscounted");
	.loc 1 553 6
	leaq	.LC0(%rip), %rax	#, tmp186
	movq	%rax, %rdi	# tmp186,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L61:
# p_setup.c:556: 	sector->soundorg.x = (bbox[BOXRIGHT]+bbox[BOXLEFT])/2;
	.loc 1 556 28
	movl	-20(%rbp), %edx	# bbox[3], _39
# p_setup.c:556: 	sector->soundorg.x = (bbox[BOXRIGHT]+bbox[BOXLEFT])/2;
	.loc 1 556 43
	movl	-24(%rbp), %eax	# bbox[2], _40
# p_setup.c:556: 	sector->soundorg.x = (bbox[BOXRIGHT]+bbox[BOXLEFT])/2;
	.loc 1 556 38
	addl	%edx, %eax	# _39, _41
# p_setup.c:556: 	sector->soundorg.x = (bbox[BOXRIGHT]+bbox[BOXLEFT])/2;
	.loc 1 556 53
	movl	%eax, %edx	# _41, tmp187
	shrl	$31, %edx	#, tmp187
	addl	%edx, %eax	# tmp187, tmp188
	sarl	%eax	# tmp189
	movl	%eax, %edx	# tmp189, _42
# p_setup.c:556: 	sector->soundorg.x = (bbox[BOXRIGHT]+bbox[BOXLEFT])/2;
	.loc 1 556 21
	movq	-56(%rbp), %rax	# sector, tmp190
	movl	%edx, 72(%rax)	# _42, sector_79->soundorg.x
# p_setup.c:557: 	sector->soundorg.y = (bbox[BOXTOP]+bbox[BOXBOTTOM])/2;
	.loc 1 557 28
	movl	-32(%rbp), %edx	# bbox[0], _43
# p_setup.c:557: 	sector->soundorg.y = (bbox[BOXTOP]+bbox[BOXBOTTOM])/2;
	.loc 1 557 41
	movl	-28(%rbp), %eax	# bbox[1], _44
# p_setup.c:557: 	sector->soundorg.y = (bbox[BOXTOP]+bbox[BOXBOTTOM])/2;
	.loc 1 557 36
	addl	%edx, %eax	# _43, _45
# p_setup.c:557: 	sector->soundorg.y = (bbox[BOXTOP]+bbox[BOXBOTTOM])/2;
	.loc 1 557 53
	movl	%eax, %edx	# _45, tmp191
	shrl	$31, %edx	#, tmp191
	addl	%edx, %eax	# tmp191, tmp192
	sarl	%eax	# tmp193
	movl	%eax, %edx	# tmp193, _46
# p_setup.c:557: 	sector->soundorg.y = (bbox[BOXTOP]+bbox[BOXBOTTOM])/2;
	.loc 1 557 21
	movq	-56(%rbp), %rax	# sector, tmp194
	movl	%edx, 76(%rax)	# _46, sector_79->soundorg.y
# p_setup.c:560: 	block = (bbox[BOXTOP]-bmaporgy+MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 560 15
	movl	-32(%rbp), %edx	# bbox[0], _47
# p_setup.c:560: 	block = (bbox[BOXTOP]-bmaporgy+MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 560 23
	movl	bmaporgy(%rip), %eax	# bmaporgy, bmaporgy.51_48
	subl	%eax, %edx	# bmaporgy.51_48, _49
# p_setup.c:560: 	block = (bbox[BOXTOP]-bmaporgy+MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 560 32
	leal	2097152(%rdx), %eax	#, _50
# p_setup.c:560: 	block = (bbox[BOXTOP]-bmaporgy+MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 560 8
	sarl	$23, %eax	#, tmp195
	movl	%eax, -76(%rbp)	# tmp195, block
# p_setup.c:561: 	block = block >= bmapheight ? bmapheight-1 : block;
	.loc 1 561 16
	movl	bmapheight(%rip), %eax	# bmapheight, bmapheight.53_51
# p_setup.c:561: 	block = block >= bmapheight ? bmapheight-1 : block;
	.loc 1 561 45
	cmpl	%eax, -76(%rbp)	# bmapheight.53_51, block
	jl	.L62	#,
# p_setup.c:561: 	block = block >= bmapheight ? bmapheight-1 : block;
	.loc 1 561 42 discriminator 1
	movl	bmapheight(%rip), %eax	# bmapheight, bmapheight.54_52
# p_setup.c:561: 	block = block >= bmapheight ? bmapheight-1 : block;
	.loc 1 561 45 discriminator 1
	subl	$1, %eax	#, iftmp.52_81
	jmp	.L63	#
.L62:
# p_setup.c:561: 	block = block >= bmapheight ? bmapheight-1 : block;
	.loc 1 561 45 is_stmt 0 discriminator 2
	movl	-76(%rbp), %eax	# block, iftmp.52_81
.L63:
# p_setup.c:561: 	block = block >= bmapheight ? bmapheight-1 : block;
	.loc 1 561 8 is_stmt 1 discriminator 4
	movl	%eax, -76(%rbp)	# iftmp.52_81, block
# p_setup.c:562: 	sector->blockbox[BOXTOP]=block;
	.loc 1 562 26
	movq	-56(%rbp), %rax	# sector, tmp196
	movl	-76(%rbp), %edx	# block, tmp197
	movl	%edx, 32(%rax)	# tmp197, sector_79->blockbox[0]
# p_setup.c:564: 	block = (bbox[BOXBOTTOM]-bmaporgy-MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 564 15
	movl	-28(%rbp), %edx	# bbox[1], _53
# p_setup.c:564: 	block = (bbox[BOXBOTTOM]-bmaporgy-MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 564 26
	movl	bmaporgy(%rip), %eax	# bmaporgy, bmaporgy.55_54
	subl	%eax, %edx	# bmaporgy.55_54, _55
# p_setup.c:564: 	block = (bbox[BOXBOTTOM]-bmaporgy-MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 564 35
	leal	-2097152(%rdx), %eax	#, _56
# p_setup.c:564: 	block = (bbox[BOXBOTTOM]-bmaporgy-MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 564 8
	sarl	$23, %eax	#, tmp198
	movl	%eax, -76(%rbp)	# tmp198, block
# p_setup.c:565: 	block = block < 0 ? 0 : block;
	.loc 1 565 8
	movl	-76(%rbp), %eax	# block, tmp200
	movl	$0, %edx	#, tmp212
	testl	%eax, %eax	# tmp200
	cmovs	%edx, %eax	# tmp200,, tmp212, tmp199
	movl	%eax, -76(%rbp)	# tmp199, block
# p_setup.c:566: 	sector->blockbox[BOXBOTTOM]=block;
	.loc 1 566 29
	movq	-56(%rbp), %rax	# sector, tmp201
	movl	-76(%rbp), %edx	# block, tmp202
	movl	%edx, 36(%rax)	# tmp202, sector_79->blockbox[1]
# p_setup.c:568: 	block = (bbox[BOXRIGHT]-bmaporgx+MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 568 15
	movl	-20(%rbp), %edx	# bbox[3], _57
# p_setup.c:568: 	block = (bbox[BOXRIGHT]-bmaporgx+MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 568 25
	movl	bmaporgx(%rip), %eax	# bmaporgx, bmaporgx.56_58
	subl	%eax, %edx	# bmaporgx.56_58, _59
# p_setup.c:568: 	block = (bbox[BOXRIGHT]-bmaporgx+MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 568 34
	leal	2097152(%rdx), %eax	#, _60
# p_setup.c:568: 	block = (bbox[BOXRIGHT]-bmaporgx+MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 568 8
	sarl	$23, %eax	#, tmp203
	movl	%eax, -76(%rbp)	# tmp203, block
# p_setup.c:569: 	block = block >= bmapwidth ? bmapwidth-1 : block;
	.loc 1 569 16
	movl	bmapwidth(%rip), %eax	# bmapwidth, bmapwidth.58_61
# p_setup.c:569: 	block = block >= bmapwidth ? bmapwidth-1 : block;
	.loc 1 569 43
	cmpl	%eax, -76(%rbp)	# bmapwidth.58_61, block
	jl	.L64	#,
# p_setup.c:569: 	block = block >= bmapwidth ? bmapwidth-1 : block;
	.loc 1 569 40 discriminator 1
	movl	bmapwidth(%rip), %eax	# bmapwidth, bmapwidth.59_62
# p_setup.c:569: 	block = block >= bmapwidth ? bmapwidth-1 : block;
	.loc 1 569 43 discriminator 1
	subl	$1, %eax	#, iftmp.57_82
	jmp	.L65	#
.L64:
# p_setup.c:569: 	block = block >= bmapwidth ? bmapwidth-1 : block;
	.loc 1 569 43 is_stmt 0 discriminator 2
	movl	-76(%rbp), %eax	# block, iftmp.57_82
.L65:
# p_setup.c:569: 	block = block >= bmapwidth ? bmapwidth-1 : block;
	.loc 1 569 8 is_stmt 1 discriminator 4
	movl	%eax, -76(%rbp)	# iftmp.57_82, block
# p_setup.c:570: 	sector->blockbox[BOXRIGHT]=block;
	.loc 1 570 28
	movq	-56(%rbp), %rax	# sector, tmp204
	movl	-76(%rbp), %edx	# block, tmp205
	movl	%edx, 44(%rax)	# tmp205, sector_79->blockbox[3]
# p_setup.c:572: 	block = (bbox[BOXLEFT]-bmaporgx-MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 572 15
	movl	-24(%rbp), %edx	# bbox[2], _63
# p_setup.c:572: 	block = (bbox[BOXLEFT]-bmaporgx-MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 572 24
	movl	bmaporgx(%rip), %eax	# bmaporgx, bmaporgx.60_64
	subl	%eax, %edx	# bmaporgx.60_64, _65
# p_setup.c:572: 	block = (bbox[BOXLEFT]-bmaporgx-MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 572 33
	leal	-2097152(%rdx), %eax	#, _66
# p_setup.c:572: 	block = (bbox[BOXLEFT]-bmaporgx-MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 572 8
	sarl	$23, %eax	#, tmp206
	movl	%eax, -76(%rbp)	# tmp206, block
# p_setup.c:573: 	block = block < 0 ? 0 : block;
	.loc 1 573 8
	movl	-76(%rbp), %eax	# block, tmp208
	movl	$0, %edx	#, tmp211
	testl	%eax, %eax	# tmp208
	cmovs	%edx, %eax	# tmp208,, tmp211, tmp207
	movl	%eax, -76(%rbp)	# tmp207, block
# p_setup.c:574: 	sector->blockbox[BOXLEFT]=block;
	.loc 1 574 27
	movq	-56(%rbp), %rax	# sector, tmp209
	movl	-76(%rbp), %edx	# block, tmp210
	movl	%edx, 40(%rax)	# tmp210, sector_79->blockbox[2]
# p_setup.c:538:     for (i=0 ; i<numsectors ; i++, sector++)
	.loc 1 538 32 discriminator 2
	addl	$1, -88(%rbp)	#, i
# p_setup.c:538:     for (i=0 ; i<numsectors ; i++, sector++)
	.loc 1 538 42 discriminator 2
	subq	$-128, -56(%rbp)	#, sector
.L56:
# p_setup.c:538:     for (i=0 ; i<numsectors ; i++, sector++)
	.loc 1 538 17 discriminator 1
	movl	numsectors(%rip), %eax	# numsectors, numsectors.61_67
	cmpl	%eax, -88(%rbp)	# numsectors.61_67, i
	jl	.L66	#,
# p_setup.c:577: }
	.loc 1 577 1
	nop	
	movq	-8(%rbp), %rax	# D.7572, tmp214
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp214
	je	.L67	#,
	call	__stack_chk_fail@PLT	#
.L67:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	P_GroupLines, .-P_GroupLines
	.section	.rodata
.LC1:
	.string	"map0%i"
.LC2:
	.string	"map%i"
	.text
	.globl	P_SetupLevel
	.type	P_SetupLevel, @function
P_SetupLevel:
.LFB10:
	.loc 1 589 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# episode, episode
	movl	%esi, -40(%rbp)	# map, map
	movl	%edx, -44(%rbp)	# playermask, playermask
	movl	%ecx, -48(%rbp)	# skill, skill
# p_setup.c:589: {
	.loc 1 589 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp177
	movq	%rax, -8(%rbp)	# tmp177, D.7575
	xorl	%eax, %eax	# tmp177
# p_setup.c:594:     totalkills = totalitems = totalsecret = wminfo.maxfrags = 0;
	.loc 1 594 61
	movl	$0, 28+wminfo(%rip)	#, wminfo.maxfrags
# p_setup.c:594:     totalkills = totalitems = totalsecret = wminfo.maxfrags = 0;
	.loc 1 594 51
	movl	28+wminfo(%rip), %eax	# wminfo.maxfrags, _1
# p_setup.c:594:     totalkills = totalitems = totalsecret = wminfo.maxfrags = 0;
	.loc 1 594 43
	movl	%eax, totalsecret(%rip)	# _1, totalsecret
# p_setup.c:594:     totalkills = totalitems = totalsecret = wminfo.maxfrags = 0;
	.loc 1 594 29
	movl	totalsecret(%rip), %eax	# totalsecret, totalsecret.62_2
	movl	%eax, totalitems(%rip)	# totalsecret.62_2, totalitems
# p_setup.c:594:     totalkills = totalitems = totalsecret = wminfo.maxfrags = 0;
	.loc 1 594 16
	movl	totalitems(%rip), %eax	# totalitems, totalitems.63_3
	movl	%eax, totalkills(%rip)	# totalitems.63_3, totalkills
# p_setup.c:595:     wminfo.partime = 180;
	.loc 1 595 20
	movl	$180, 32+wminfo(%rip)	#, wminfo.partime
# p_setup.c:596:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 596 11
	movl	$0, -28(%rbp)	#, i
# p_setup.c:596:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 596 5
	jmp	.L69	#
.L70:
# p_setup.c:599: 	    = players[i].itemcount = 0;
	.loc 1 599 29
	movl	-28(%rbp), %eax	# i, tmp111
	movslq	%eax, %rdx	# tmp111, tmp110
	movq	%rdx, %rax	# tmp110, tmp113
	salq	$2, %rax	#, tmp113
	addq	%rdx, %rax	# tmp110, tmp113
	salq	$6, %rax	#, tmp114
	movq	%rax, %rdx	# tmp113, tmp112
	leaq	212+players(%rip), %rax	#, tmp115
	movl	$0, (%rdx,%rax)	#, players[i_29].itemcount
# p_setup.c:599: 	    = players[i].itemcount = 0;
	.loc 1 599 18
	movl	-28(%rbp), %eax	# i, tmp117
	movslq	%eax, %rdx	# tmp117, tmp116
	movq	%rdx, %rax	# tmp116, tmp119
	salq	$2, %rax	#, tmp119
	addq	%rdx, %rax	# tmp116, tmp119
	salq	$6, %rax	#, tmp120
	movq	%rax, %rdx	# tmp119, tmp118
	leaq	212+players(%rip), %rax	#, tmp121
	movl	(%rdx,%rax), %ecx	# players[i_29].itemcount, _4
# p_setup.c:599: 	    = players[i].itemcount = 0;
	.loc 1 599 6
	movl	-28(%rbp), %eax	# i, tmp123
	movslq	%eax, %rdx	# tmp123, tmp122
	movq	%rdx, %rax	# tmp122, tmp125
	salq	$2, %rax	#, tmp125
	addq	%rdx, %rax	# tmp122, tmp125
	salq	$6, %rax	#, tmp126
	movq	%rax, %rdx	# tmp125, tmp124
	leaq	216+players(%rip), %rax	#, tmp127
	movl	%ecx, (%rdx,%rax)	# _4, players[i_29].secretcount
# p_setup.c:598: 	players[i].killcount = players[i].secretcount 
	.loc 1 598 35
	movl	-28(%rbp), %eax	# i, tmp129
	movslq	%eax, %rdx	# tmp129, tmp128
	movq	%rdx, %rax	# tmp128, tmp131
	salq	$2, %rax	#, tmp131
	addq	%rdx, %rax	# tmp128, tmp131
	salq	$6, %rax	#, tmp132
	movq	%rax, %rdx	# tmp131, tmp130
	leaq	216+players(%rip), %rax	#, tmp133
	movl	(%rdx,%rax), %ecx	# players[i_29].secretcount, _5
# p_setup.c:598: 	players[i].killcount = players[i].secretcount 
	.loc 1 598 23
	movl	-28(%rbp), %eax	# i, tmp135
	movslq	%eax, %rdx	# tmp135, tmp134
	movq	%rdx, %rax	# tmp134, tmp137
	salq	$2, %rax	#, tmp137
	addq	%rdx, %rax	# tmp134, tmp137
	salq	$6, %rax	#, tmp138
	movq	%rax, %rdx	# tmp137, tmp136
	leaq	208+players(%rip), %rax	#, tmp139
	movl	%ecx, (%rdx,%rax)	# _5, players[i_29].killcount
# p_setup.c:596:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 596 32 discriminator 3
	addl	$1, -28(%rbp)	#, i
.L69:
# p_setup.c:596:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 596 17 discriminator 1
	cmpl	$3, -28(%rbp)	#, i
	jle	.L70	#,
# p_setup.c:604:     players[consoleplayer].viewz = 1; 
	.loc 1 604 27
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.64_6
# p_setup.c:604:     players[consoleplayer].viewz = 1; 
	.loc 1 604 34
	movslq	%eax, %rdx	# consoleplayer.64_6, tmp140
	movq	%rdx, %rax	# tmp140, tmp142
	salq	$2, %rax	#, tmp142
	addq	%rdx, %rax	# tmp140, tmp142
	salq	$6, %rax	#, tmp143
	movq	%rax, %rdx	# tmp142, tmp141
	leaq	20+players(%rip), %rax	#, tmp144
	movl	$1, (%rdx,%rax)	#, players[consoleplayer.64_6].viewz
# p_setup.c:607:     S_Start ();			
	.loc 1 607 5
	call	S_Start@PLT	#
# p_setup.c:618: 	Z_FreeTags (PU_LEVEL, PU_PURGELEVEL-1);
	.loc 1 618 2
	movl	$99, %esi	#,
	movl	$50, %edi	#,
	call	Z_FreeTags@PLT	#
# p_setup.c:622:     P_InitThinkers ();
	.loc 1 622 5
	call	P_InitThinkers@PLT	#
# p_setup.c:625:     W_Reload ();			
	.loc 1 625 5
	call	W_Reload@PLT	#
# p_setup.c:628:     if ( gamemode == commercial)
	.loc 1 628 19
	movl	gamemode(%rip), %eax	# gamemode, gamemode.65_7
# p_setup.c:628:     if ( gamemode == commercial)
	.loc 1 628 8
	cmpl	$2, %eax	#, gamemode.65_7
	jne	.L71	#,
# p_setup.c:630: 	if (map<10)
	.loc 1 630 5
	cmpl	$9, -40(%rbp)	#, map
	jg	.L72	#,
# p_setup.c:631: 	    sprintf (lumpname,"map0%i", map);
	.loc 1 631 6
	movl	-40(%rbp), %edx	# map, tmp145
	leaq	-17(%rbp), %rax	#, tmp146
	leaq	.LC1(%rip), %rcx	#, tmp147
	movq	%rcx, %rsi	# tmp147,
	movq	%rax, %rdi	# tmp146,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
	jmp	.L73	#
.L72:
# p_setup.c:633: 	    sprintf (lumpname,"map%i", map);
	.loc 1 633 6
	movl	-40(%rbp), %edx	# map, tmp148
	leaq	-17(%rbp), %rax	#, tmp149
	leaq	.LC2(%rip), %rcx	#, tmp150
	movq	%rcx, %rsi	# tmp150,
	movq	%rax, %rdi	# tmp149,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
	jmp	.L73	#
.L71:
# p_setup.c:637: 	lumpname[0] = 'E';
	.loc 1 637 14
	movb	$69, -17(%rbp)	#, lumpname[0]
# p_setup.c:638: 	lumpname[1] = '0' + episode;
	.loc 1 638 20
	movl	-36(%rbp), %eax	# episode, tmp151
	addl	$48, %eax	#, _9
# p_setup.c:638: 	lumpname[1] = '0' + episode;
	.loc 1 638 14
	movb	%al, -16(%rbp)	# _10, lumpname[1]
# p_setup.c:639: 	lumpname[2] = 'M';
	.loc 1 639 14
	movb	$77, -15(%rbp)	#, lumpname[2]
# p_setup.c:640: 	lumpname[3] = '0' + map;
	.loc 1 640 20
	movl	-40(%rbp), %eax	# map, tmp152
	addl	$48, %eax	#, _12
# p_setup.c:640: 	lumpname[3] = '0' + map;
	.loc 1 640 14
	movb	%al, -14(%rbp)	# _13, lumpname[3]
# p_setup.c:641: 	lumpname[4] = 0;
	.loc 1 641 14
	movb	$0, -13(%rbp)	#, lumpname[4]
.L73:
# p_setup.c:644:     lumpnum = W_GetNumForName (lumpname);
	.loc 1 644 15
	leaq	-17(%rbp), %rax	#, tmp153
	movq	%rax, %rdi	# tmp153,
	call	W_GetNumForName@PLT	#
	movl	%eax, -24(%rbp)	# tmp154, lumpnum
# p_setup.c:646:     leveltime = 0;
	.loc 1 646 15
	movl	$0, leveltime(%rip)	#, leveltime
# p_setup.c:649:     P_LoadBlockMap (lumpnum+ML_BLOCKMAP);
	.loc 1 649 5
	movl	-24(%rbp), %eax	# lumpnum, tmp155
	addl	$10, %eax	#, _14
	movl	%eax, %edi	# _14,
	call	P_LoadBlockMap	#
# p_setup.c:650:     P_LoadVertexes (lumpnum+ML_VERTEXES);
	.loc 1 650 5
	movl	-24(%rbp), %eax	# lumpnum, tmp156
	addl	$4, %eax	#, _15
	movl	%eax, %edi	# _15,
	call	P_LoadVertexes	#
# p_setup.c:651:     P_LoadSectors (lumpnum+ML_SECTORS);
	.loc 1 651 5
	movl	-24(%rbp), %eax	# lumpnum, tmp157
	addl	$8, %eax	#, _16
	movl	%eax, %edi	# _16,
	call	P_LoadSectors	#
# p_setup.c:652:     P_LoadSideDefs (lumpnum+ML_SIDEDEFS);
	.loc 1 652 5
	movl	-24(%rbp), %eax	# lumpnum, tmp158
	addl	$3, %eax	#, _17
	movl	%eax, %edi	# _17,
	call	P_LoadSideDefs	#
# p_setup.c:654:     P_LoadLineDefs (lumpnum+ML_LINEDEFS);
	.loc 1 654 5
	movl	-24(%rbp), %eax	# lumpnum, tmp159
	addl	$2, %eax	#, _18
	movl	%eax, %edi	# _18,
	call	P_LoadLineDefs	#
# p_setup.c:655:     P_LoadSubsectors (lumpnum+ML_SSECTORS);
	.loc 1 655 5
	movl	-24(%rbp), %eax	# lumpnum, tmp160
	addl	$6, %eax	#, _19
	movl	%eax, %edi	# _19,
	call	P_LoadSubsectors	#
# p_setup.c:656:     P_LoadNodes (lumpnum+ML_NODES);
	.loc 1 656 5
	movl	-24(%rbp), %eax	# lumpnum, tmp161
	addl	$7, %eax	#, _20
	movl	%eax, %edi	# _20,
	call	P_LoadNodes	#
# p_setup.c:657:     P_LoadSegs (lumpnum+ML_SEGS);
	.loc 1 657 5
	movl	-24(%rbp), %eax	# lumpnum, tmp162
	addl	$5, %eax	#, _21
	movl	%eax, %edi	# _21,
	call	P_LoadSegs	#
# p_setup.c:659:     rejectmatrix = W_CacheLumpNum (lumpnum+ML_REJECT,PU_LEVEL);
	.loc 1 659 20
	movl	-24(%rbp), %eax	# lumpnum, tmp163
	addl	$9, %eax	#, _22
	movl	$50, %esi	#,
	movl	%eax, %edi	# _22,
	call	W_CacheLumpNum@PLT	#
# p_setup.c:659:     rejectmatrix = W_CacheLumpNum (lumpnum+ML_REJECT,PU_LEVEL);
	.loc 1 659 18 discriminator 1
	movq	%rax, rejectmatrix(%rip)	# _23, rejectmatrix
# p_setup.c:660:     P_GroupLines ();
	.loc 1 660 5
	call	P_GroupLines	#
# p_setup.c:662:     bodyqueslot = 0;
	.loc 1 662 17
	movl	$0, bodyqueslot(%rip)	#, bodyqueslot
# p_setup.c:663:     deathmatch_p = deathmatchstarts;
	.loc 1 663 18
	leaq	deathmatchstarts(%rip), %rax	#, tmp164
	movq	%rax, deathmatch_p(%rip)	# tmp164, deathmatch_p
# p_setup.c:664:     P_LoadThings (lumpnum+ML_THINGS);
	.loc 1 664 5
	movl	-24(%rbp), %eax	# lumpnum, tmp165
	addl	$1, %eax	#, _24
	movl	%eax, %edi	# _24,
	call	P_LoadThings	#
# p_setup.c:667:     if (deathmatch)
	.loc 1 667 9
	movl	deathmatch(%rip), %eax	# deathmatch, deathmatch.66_25
# p_setup.c:667:     if (deathmatch)
	.loc 1 667 8
	testl	%eax, %eax	# deathmatch.66_25
	je	.L74	#,
# p_setup.c:669: 	for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 669 8
	movl	$0, -28(%rbp)	#, i
# p_setup.c:669: 	for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 669 2
	jmp	.L75	#
.L77:
# p_setup.c:670: 	    if (playeringame[i])
	.loc 1 670 22
	movl	-28(%rbp), %eax	# i, tmp167
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp168
	leaq	playeringame(%rip), %rax	#, tmp169
	movl	(%rdx,%rax), %eax	# playeringame[i_30], _26
# p_setup.c:670: 	    if (playeringame[i])
	.loc 1 670 9
	testl	%eax, %eax	# _26
	je	.L76	#,
# p_setup.c:672: 		players[i].mo = NULL;
	.loc 1 672 17
	movl	-28(%rbp), %eax	# i, tmp171
	movslq	%eax, %rdx	# tmp171, tmp170
	movq	%rdx, %rax	# tmp170, tmp173
	salq	$2, %rax	#, tmp173
	addq	%rdx, %rax	# tmp170, tmp173
	salq	$6, %rax	#, tmp174
	movq	%rax, %rdx	# tmp173, tmp172
	leaq	players(%rip), %rax	#, tmp175
	movq	$0, (%rdx,%rax)	#, players[i_30].mo
# p_setup.c:673: 		G_DeathMatchSpawnPlayer (i);
	.loc 1 673 3
	movl	-28(%rbp), %eax	# i, tmp176
	movl	%eax, %edi	# tmp176,
	call	G_DeathMatchSpawnPlayer@PLT	#
.L76:
# p_setup.c:669: 	for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 669 29 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L75:
# p_setup.c:669: 	for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 669 14 discriminator 1
	cmpl	$3, -28(%rbp)	#, i
	jle	.L77	#,
.L74:
# p_setup.c:679:     iquehead = iquetail = 0;		
	.loc 1 679 25
	movl	$0, iquetail(%rip)	#, iquetail
# p_setup.c:679:     iquehead = iquetail = 0;		
	.loc 1 679 14
	movl	iquetail(%rip), %eax	# iquetail, iquetail.67_27
	movl	%eax, iquehead(%rip)	# iquetail.67_27, iquehead
# p_setup.c:682:     P_SpawnSpecials ();
	.loc 1 682 5
	call	P_SpawnSpecials@PLT	#
# p_setup.c:688:     if (precache)
	.loc 1 688 9
	movl	precache(%rip), %eax	# precache, precache.68_28
# p_setup.c:688:     if (precache)
	.loc 1 688 8
	testl	%eax, %eax	# precache.68_28
	je	.L80	#,
# p_setup.c:689: 	R_PrecacheLevel ();
	.loc 1 689 2
	call	R_PrecacheLevel@PLT	#
.L80:
# p_setup.c:693: }
	.loc 1 693 1
	nop	
	movq	-8(%rbp), %rax	# D.7575, tmp178
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp178
	je	.L79	#,
	call	__stack_chk_fail@PLT	#
.L79:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	P_SetupLevel, .-P_SetupLevel
	.globl	P_Init
	.type	P_Init, @function
P_Init:
.LFB11:
	.loc 1 701 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# p_setup.c:702:     P_InitSwitchList ();
	.loc 1 702 5
	call	P_InitSwitchList@PLT	#
# p_setup.c:703:     P_InitPicAnims ();
	.loc 1 703 5
	call	P_InitPicAnims@PLT	#
# p_setup.c:704:     R_InitSprites (sprnames);
	.loc 1 704 5
	leaq	sprnames(%rip), %rax	#, tmp82
	movq	%rax, %rdi	# tmp82,
	call	R_InitSprites@PLT	#
# p_setup.c:705: }
	.loc 1 705 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	P_Init, .-P_Init
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 3 "m_fixed.h"
	.file 4 "m_bbox.h"
	.file 5 "doomdef.h"
	.file 6 "doomtype.h"
	.file 7 "d_ticcmd.h"
	.file 8 "tables.h"
	.file 9 "d_think.h"
	.file 10 "doomdata.h"
	.file 11 "info.h"
	.file 12 "p_mobj.h"
	.file 13 "r_defs.h"
	.file 14 "d_player.h"
	.file 15 "p_pspr.h"
	.file 16 "r_state.h"
	.file 17 "p_local.h"
	.file 18 "doomstat.h"
	.file 19 "p_spec.h"
	.file 20 "r_data.h"
	.file 21 "r_things.h"
	.file 22 "g_game.h"
	.file 23 "w_wad.h"
	.file 24 "/usr/include/stdio.h"
	.file 25 "z_zone.h"
	.file 26 "s_sound.h"
	.file 27 "i_system.h"
	.file 28 "/usr/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3e3e
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x25
	.long	.LASF1606
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xd
	.long	0x51
	.long	0x3e
	.uleb128 0xc
	.long	0x43
	.byte	0x31
	.byte	0
	.uleb128 0x21
	.long	0x2e
	.uleb128 0x12
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x12
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x21
	.long	0x4a
	.uleb128 0x13
	.long	.LASF1583
	.byte	0x1a
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x12
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x12
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x12
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x12
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x26
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x12
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x27
	.byte	0x8
	.uleb128 0x8
	.long	0x4a
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.long	.LASF10
	.uleb128 0x12
	.byte	0x8
	.byte	0x4
	.long	.LASF11
	.uleb128 0x6
	.long	.LASF12
	.byte	0x2
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x8
	.long	0x51
	.uleb128 0x6
	.long	.LASF13
	.byte	0x3
	.byte	0x26
	.byte	0xd
	.long	0x8e
	.uleb128 0xf
	.long	0x79
	.byte	0x4
	.byte	0x21
	.byte	0x1
	.long	0xf3
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
	.byte	0
	.uleb128 0xf
	.long	0x79
	.byte	0x5
	.byte	0x27
	.byte	0x1
	.long	0x11e
	.uleb128 0x2
	.long	.LASF18
	.byte	0
	.uleb128 0x2
	.long	.LASF19
	.byte	0x1
	.uleb128 0x2
	.long	.LASF20
	.byte	0x2
	.uleb128 0x2
	.long	.LASF21
	.byte	0x3
	.uleb128 0x2
	.long	.LASF22
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	.LASF23
	.byte	0x5
	.byte	0x2f
	.byte	0x3
	.long	0xf3
	.uleb128 0xf
	.long	0x79
	.byte	0x5
	.byte	0x94
	.byte	0x1
	.long	0x155
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
	.byte	0
	.uleb128 0x6
	.long	.LASF29
	.byte	0x5
	.byte	0x9a
	.byte	0x3
	.long	0x12a
	.uleb128 0xf
	.long	0x79
	.byte	0x5
	.byte	0xa3
	.byte	0x1
	.long	0x198
	.uleb128 0x2
	.long	.LASF30
	.byte	0
	.uleb128 0x2
	.long	.LASF31
	.byte	0x1
	.uleb128 0x2
	.long	.LASF32
	.byte	0x2
	.uleb128 0x2
	.long	.LASF33
	.byte	0x3
	.uleb128 0x2
	.long	.LASF34
	.byte	0x4
	.uleb128 0x2
	.long	.LASF35
	.byte	0x5
	.uleb128 0x2
	.long	.LASF36
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.long	0x79
	.byte	0x5
	.byte	0xb5
	.byte	0x1
	.long	0x1e7
	.uleb128 0x2
	.long	.LASF37
	.byte	0
	.uleb128 0x2
	.long	.LASF38
	.byte	0x1
	.uleb128 0x2
	.long	.LASF39
	.byte	0x2
	.uleb128 0x2
	.long	.LASF40
	.byte	0x3
	.uleb128 0x2
	.long	.LASF41
	.byte	0x4
	.uleb128 0x2
	.long	.LASF42
	.byte	0x5
	.uleb128 0x2
	.long	.LASF43
	.byte	0x6
	.uleb128 0x2
	.long	.LASF44
	.byte	0x7
	.uleb128 0x2
	.long	.LASF45
	.byte	0x8
	.uleb128 0x2
	.long	.LASF46
	.byte	0x9
	.uleb128 0x2
	.long	.LASF47
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.long	.LASF48
	.byte	0x5
	.byte	0xc5
	.byte	0x3
	.long	0x198
	.uleb128 0xf
	.long	0x79
	.byte	0x5
	.byte	0xca
	.byte	0x1
	.long	0x224
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
	.byte	0
	.uleb128 0xf
	.long	0x79
	.byte	0x5
	.byte	0xd7
	.byte	0x1
	.long	0x25b
	.uleb128 0x2
	.long	.LASF55
	.byte	0
	.uleb128 0x2
	.long	.LASF56
	.byte	0x1
	.uleb128 0x2
	.long	.LASF57
	.byte	0x2
	.uleb128 0x2
	.long	.LASF58
	.byte	0x3
	.uleb128 0x2
	.long	.LASF59
	.byte	0x4
	.uleb128 0x2
	.long	.LASF60
	.byte	0x5
	.uleb128 0x2
	.long	.LASF61
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.long	0x79
	.byte	0x6
	.byte	0x22
	.byte	0xe
	.long	0x274
	.uleb128 0x2
	.long	.LASF62
	.byte	0
	.uleb128 0x2
	.long	.LASF63
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.long	.LASF64
	.byte	0x6
	.byte	0x22
	.byte	0x1c
	.long	0x25b
	.uleb128 0x6
	.long	.LASF65
	.byte	0x6
	.byte	0x24
	.byte	0x17
	.long	0x6b
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.byte	0x24
	.long	0x2e3
	.uleb128 0x3
	.long	.LASF66
	.byte	0x7
	.byte	0x26
	.byte	0xa
	.long	0x4a
	.byte	0
	.uleb128 0x3
	.long	.LASF67
	.byte	0x7
	.byte	0x27
	.byte	0xa
	.long	0x4a
	.byte	0x1
	.uleb128 0x3
	.long	.LASF68
	.byte	0x7
	.byte	0x28
	.byte	0xb
	.long	0x87
	.byte	0x2
	.uleb128 0x3
	.long	.LASF69
	.byte	0x7
	.byte	0x29
	.byte	0xb
	.long	0x87
	.byte	0x4
	.uleb128 0x3
	.long	.LASF70
	.byte	0x7
	.byte	0x2a
	.byte	0xa
	.long	0x280
	.byte	0x6
	.uleb128 0x3
	.long	.LASF71
	.byte	0x7
	.byte	0x2b
	.byte	0xa
	.long	0x280
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.long	.LASF72
	.byte	0x7
	.byte	0x2c
	.byte	0x3
	.long	0x28c
	.uleb128 0xd
	.long	0x4a
	.long	0x2ff
	.uleb128 0xc
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.long	0xc2
	.uleb128 0x6
	.long	.LASF73
	.byte	0x8
	.byte	0x4e
	.byte	0x12
	.long	0x79
	.uleb128 0x6
	.long	.LASF74
	.byte	0x9
	.byte	0x29
	.byte	0x11
	.long	0x31c
	.uleb128 0x8
	.long	0x321
	.uleb128 0x28
	.long	0x328
	.uleb128 0x1e
	.byte	0
	.uleb128 0x6
	.long	.LASF75
	.byte	0x9
	.byte	0x2a
	.byte	0x11
	.long	0x334
	.uleb128 0x8
	.long	0x339
	.uleb128 0x22
	.long	0x344
	.uleb128 0x9
	.long	0x9c
	.byte	0
	.uleb128 0x6
	.long	.LASF76
	.byte	0x9
	.byte	0x2b
	.byte	0x11
	.long	0x350
	.uleb128 0x8
	.long	0x355
	.uleb128 0x22
	.long	0x365
	.uleb128 0x9
	.long	0x9c
	.uleb128 0x9
	.long	0x9c
	.byte	0
	.uleb128 0x29
	.byte	0x8
	.byte	0x9
	.byte	0x2d
	.byte	0x9
	.long	0x38f
	.uleb128 0x23
	.long	.LASF77
	.byte	0x2f
	.long	0x328
	.uleb128 0x2a
	.string	"acv"
	.byte	0x9
	.byte	0x30
	.byte	0xd
	.long	0x310
	.uleb128 0x23
	.long	.LASF78
	.byte	0x31
	.long	0x344
	.byte	0
	.uleb128 0x6
	.long	.LASF79
	.byte	0x9
	.byte	0x33
	.byte	0x3
	.long	0x365
	.uleb128 0x6
	.long	.LASF80
	.byte	0x9
	.byte	0x3c
	.byte	0x14
	.long	0x38f
	.uleb128 0x1a
	.long	.LASF1407
	.byte	0x18
	.byte	0x9
	.byte	0x40
	.long	0x3db
	.uleb128 0x3
	.long	.LASF81
	.byte	0x9
	.byte	0x42
	.byte	0x17
	.long	0x3db
	.byte	0
	.uleb128 0x3
	.long	.LASF82
	.byte	0x9
	.byte	0x43
	.byte	0x17
	.long	0x3db
	.byte	0x8
	.uleb128 0x3
	.long	.LASF83
	.byte	0x9
	.byte	0x44
	.byte	0xe
	.long	0x39b
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	0x3a7
	.uleb128 0x6
	.long	.LASF84
	.byte	0x9
	.byte	0x46
	.byte	0x3
	.long	0x3a7
	.uleb128 0xf
	.long	0x79
	.byte	0xa
	.byte	0x2c
	.byte	0x1
	.long	0x43b
	.uleb128 0x2
	.long	.LASF85
	.byte	0
	.uleb128 0x2
	.long	.LASF86
	.byte	0x1
	.uleb128 0x2
	.long	.LASF87
	.byte	0x2
	.uleb128 0x2
	.long	.LASF88
	.byte	0x3
	.uleb128 0x2
	.long	.LASF89
	.byte	0x4
	.uleb128 0x2
	.long	.LASF90
	.byte	0x5
	.uleb128 0x2
	.long	.LASF91
	.byte	0x6
	.uleb128 0x2
	.long	.LASF92
	.byte	0x7
	.uleb128 0x2
	.long	.LASF93
	.byte	0x8
	.uleb128 0x2
	.long	.LASF94
	.byte	0x9
	.uleb128 0x2
	.long	.LASF95
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0xa
	.byte	0x3c
	.long	0x45a
	.uleb128 0x7
	.string	"x"
	.byte	0xa
	.byte	0x3e
	.byte	0xa
	.long	0x87
	.byte	0
	.uleb128 0x7
	.string	"y"
	.byte	0xa
	.byte	0x3f
	.byte	0xa
	.long	0x87
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.long	.LASF96
	.byte	0xa
	.byte	0x40
	.byte	0x3
	.long	0x43b
	.uleb128 0xe
	.byte	0x1e
	.byte	0xa
	.byte	0x45
	.long	0x4bd
	.uleb128 0x3
	.long	.LASF97
	.byte	0xa
	.byte	0x47
	.byte	0xa
	.long	0x87
	.byte	0
	.uleb128 0x3
	.long	.LASF98
	.byte	0xa
	.byte	0x48
	.byte	0xa
	.long	0x87
	.byte	0x2
	.uleb128 0x3
	.long	.LASF99
	.byte	0xa
	.byte	0x49
	.byte	0x9
	.long	0x2ef
	.byte	0x4
	.uleb128 0x3
	.long	.LASF100
	.byte	0xa
	.byte	0x4a
	.byte	0x9
	.long	0x2ef
	.byte	0xc
	.uleb128 0x3
	.long	.LASF101
	.byte	0xa
	.byte	0x4b
	.byte	0x9
	.long	0x2ef
	.byte	0x14
	.uleb128 0x3
	.long	.LASF102
	.byte	0xa
	.byte	0x4d
	.byte	0xa
	.long	0x87
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.long	.LASF103
	.byte	0xa
	.byte	0x4e
	.byte	0x3
	.long	0x466
	.uleb128 0xe
	.byte	0xe
	.byte	0xa
	.byte	0x54
	.long	0x51e
	.uleb128 0x7
	.string	"v1"
	.byte	0xa
	.byte	0x56
	.byte	0xa
	.long	0x87
	.byte	0
	.uleb128 0x7
	.string	"v2"
	.byte	0xa
	.byte	0x57
	.byte	0xa
	.long	0x87
	.byte	0x2
	.uleb128 0x3
	.long	.LASF104
	.byte	0xa
	.byte	0x58
	.byte	0xa
	.long	0x87
	.byte	0x4
	.uleb128 0x3
	.long	.LASF105
	.byte	0xa
	.byte	0x59
	.byte	0xa
	.long	0x87
	.byte	0x6
	.uleb128 0x7
	.string	"tag"
	.byte	0xa
	.byte	0x5a
	.byte	0xa
	.long	0x87
	.byte	0x8
	.uleb128 0x3
	.long	.LASF106
	.byte	0xa
	.byte	0x5c
	.byte	0xa
	.long	0x51e
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.long	0x87
	.long	0x52e
	.uleb128 0xc
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.long	.LASF107
	.byte	0xa
	.byte	0x5d
	.byte	0x3
	.long	0x4c9
	.uleb128 0xe
	.byte	0x1a
	.byte	0xa
	.byte	0x8d
	.long	0x59e
	.uleb128 0x3
	.long	.LASF108
	.byte	0xa
	.byte	0x8f
	.byte	0xa
	.long	0x87
	.byte	0
	.uleb128 0x3
	.long	.LASF109
	.byte	0xa
	.byte	0x90
	.byte	0xa
	.long	0x87
	.byte	0x2
	.uleb128 0x3
	.long	.LASF110
	.byte	0xa
	.byte	0x91
	.byte	0x9
	.long	0x2ef
	.byte	0x4
	.uleb128 0x3
	.long	.LASF111
	.byte	0xa
	.byte	0x92
	.byte	0x9
	.long	0x2ef
	.byte	0xc
	.uleb128 0x3
	.long	.LASF112
	.byte	0xa
	.byte	0x93
	.byte	0xa
	.long	0x87
	.byte	0x14
	.uleb128 0x3
	.long	.LASF105
	.byte	0xa
	.byte	0x94
	.byte	0xa
	.long	0x87
	.byte	0x16
	.uleb128 0x7
	.string	"tag"
	.byte	0xa
	.byte	0x95
	.byte	0xa
	.long	0x87
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.long	.LASF113
	.byte	0xa
	.byte	0x96
	.byte	0x3
	.long	0x53a
	.uleb128 0xe
	.byte	0x4
	.byte	0xa
	.byte	0x99
	.long	0x5cd
	.uleb128 0x3
	.long	.LASF114
	.byte	0xa
	.byte	0x9b
	.byte	0xa
	.long	0x87
	.byte	0
	.uleb128 0x3
	.long	.LASF115
	.byte	0xa
	.byte	0x9d
	.byte	0xa
	.long	0x87
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.long	.LASF116
	.byte	0xa
	.byte	0x9e
	.byte	0x3
	.long	0x5aa
	.uleb128 0xe
	.byte	0xc
	.byte	0xa
	.byte	0xa3
	.long	0x62e
	.uleb128 0x7
	.string	"v1"
	.byte	0xa
	.byte	0xa5
	.byte	0xa
	.long	0x87
	.byte	0
	.uleb128 0x7
	.string	"v2"
	.byte	0xa
	.byte	0xa6
	.byte	0xa
	.long	0x87
	.byte	0x2
	.uleb128 0x3
	.long	.LASF117
	.byte	0xa
	.byte	0xa7
	.byte	0xa
	.long	0x87
	.byte	0x4
	.uleb128 0x3
	.long	.LASF118
	.byte	0xa
	.byte	0xa8
	.byte	0xa
	.long	0x87
	.byte	0x6
	.uleb128 0x3
	.long	.LASF119
	.byte	0xa
	.byte	0xa9
	.byte	0xa
	.long	0x87
	.byte	0x8
	.uleb128 0x3
	.long	.LASF120
	.byte	0xa
	.byte	0xaa
	.byte	0xa
	.long	0x87
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.long	.LASF121
	.byte	0xa
	.byte	0xab
	.byte	0x3
	.long	0x5d9
	.uleb128 0xe
	.byte	0x1c
	.byte	0xa
	.byte	0xb4
	.long	0x68b
	.uleb128 0x7
	.string	"x"
	.byte	0xa
	.byte	0xb7
	.byte	0xa
	.long	0x87
	.byte	0
	.uleb128 0x7
	.string	"y"
	.byte	0xa
	.byte	0xb8
	.byte	0xa
	.long	0x87
	.byte	0x2
	.uleb128 0x7
	.string	"dx"
	.byte	0xa
	.byte	0xb9
	.byte	0xa
	.long	0x87
	.byte	0x4
	.uleb128 0x7
	.string	"dy"
	.byte	0xa
	.byte	0xba
	.byte	0xa
	.long	0x87
	.byte	0x6
	.uleb128 0x3
	.long	.LASF122
	.byte	0xa
	.byte	0xbe
	.byte	0xa
	.long	0x68b
	.byte	0x8
	.uleb128 0x3
	.long	.LASF123
	.byte	0xa
	.byte	0xc2
	.byte	0x12
	.long	0x6a1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.long	0x87
	.long	0x6a1
	.uleb128 0xc
	.long	0x43
	.byte	0x1
	.uleb128 0xc
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.long	0x72
	.long	0x6b1
	.uleb128 0xc
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.long	.LASF124
	.byte	0xa
	.byte	0xc4
	.byte	0x3
	.long	0x63a
	.uleb128 0xe
	.byte	0xa
	.byte	0xa
	.byte	0xcb
	.long	0x703
	.uleb128 0x7
	.string	"x"
	.byte	0xa
	.byte	0xcd
	.byte	0xc
	.long	0x87
	.byte	0
	.uleb128 0x7
	.string	"y"
	.byte	0xa
	.byte	0xce
	.byte	0xc
	.long	0x87
	.byte	0x2
	.uleb128 0x3
	.long	.LASF117
	.byte	0xa
	.byte	0xcf
	.byte	0xc
	.long	0x87
	.byte	0x4
	.uleb128 0x3
	.long	.LASF125
	.byte	0xa
	.byte	0xd0
	.byte	0xc
	.long	0x87
	.byte	0x6
	.uleb128 0x3
	.long	.LASF126
	.byte	0xa
	.byte	0xd1
	.byte	0xc
	.long	0x87
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	.LASF127
	.byte	0xa
	.byte	0xd2
	.byte	0x3
	.long	0x6bd
	.uleb128 0xf
	.long	0x79
	.byte	0xb
	.byte	0x1f
	.byte	0x1
	.long	0xa5e
	.uleb128 0x2
	.long	.LASF128
	.byte	0
	.uleb128 0x2
	.long	.LASF129
	.byte	0x1
	.uleb128 0x2
	.long	.LASF130
	.byte	0x2
	.uleb128 0x2
	.long	.LASF131
	.byte	0x3
	.uleb128 0x2
	.long	.LASF132
	.byte	0x4
	.uleb128 0x2
	.long	.LASF133
	.byte	0x5
	.uleb128 0x2
	.long	.LASF134
	.byte	0x6
	.uleb128 0x2
	.long	.LASF135
	.byte	0x7
	.uleb128 0x2
	.long	.LASF136
	.byte	0x8
	.uleb128 0x2
	.long	.LASF137
	.byte	0x9
	.uleb128 0x2
	.long	.LASF138
	.byte	0xa
	.uleb128 0x2
	.long	.LASF139
	.byte	0xb
	.uleb128 0x2
	.long	.LASF140
	.byte	0xc
	.uleb128 0x2
	.long	.LASF141
	.byte	0xd
	.uleb128 0x2
	.long	.LASF142
	.byte	0xe
	.uleb128 0x2
	.long	.LASF143
	.byte	0xf
	.uleb128 0x2
	.long	.LASF144
	.byte	0x10
	.uleb128 0x2
	.long	.LASF145
	.byte	0x11
	.uleb128 0x2
	.long	.LASF146
	.byte	0x12
	.uleb128 0x2
	.long	.LASF147
	.byte	0x13
	.uleb128 0x2
	.long	.LASF148
	.byte	0x14
	.uleb128 0x2
	.long	.LASF149
	.byte	0x15
	.uleb128 0x2
	.long	.LASF150
	.byte	0x16
	.uleb128 0x2
	.long	.LASF151
	.byte	0x17
	.uleb128 0x2
	.long	.LASF152
	.byte	0x18
	.uleb128 0x2
	.long	.LASF153
	.byte	0x19
	.uleb128 0x2
	.long	.LASF154
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF155
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF156
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF157
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF158
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF159
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF160
	.byte	0x20
	.uleb128 0x2
	.long	.LASF161
	.byte	0x21
	.uleb128 0x2
	.long	.LASF162
	.byte	0x22
	.uleb128 0x2
	.long	.LASF163
	.byte	0x23
	.uleb128 0x2
	.long	.LASF164
	.byte	0x24
	.uleb128 0x2
	.long	.LASF165
	.byte	0x25
	.uleb128 0x2
	.long	.LASF166
	.byte	0x26
	.uleb128 0x2
	.long	.LASF167
	.byte	0x27
	.uleb128 0x2
	.long	.LASF168
	.byte	0x28
	.uleb128 0x2
	.long	.LASF169
	.byte	0x29
	.uleb128 0x2
	.long	.LASF170
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF171
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF172
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF173
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF174
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF175
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF176
	.byte	0x30
	.uleb128 0x2
	.long	.LASF177
	.byte	0x31
	.uleb128 0x2
	.long	.LASF178
	.byte	0x32
	.uleb128 0x2
	.long	.LASF179
	.byte	0x33
	.uleb128 0x2
	.long	.LASF180
	.byte	0x34
	.uleb128 0x2
	.long	.LASF181
	.byte	0x35
	.uleb128 0x2
	.long	.LASF182
	.byte	0x36
	.uleb128 0x2
	.long	.LASF183
	.byte	0x37
	.uleb128 0x2
	.long	.LASF184
	.byte	0x38
	.uleb128 0x2
	.long	.LASF185
	.byte	0x39
	.uleb128 0x2
	.long	.LASF186
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF187
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF188
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF189
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF190
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF191
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF192
	.byte	0x40
	.uleb128 0x2
	.long	.LASF193
	.byte	0x41
	.uleb128 0x2
	.long	.LASF194
	.byte	0x42
	.uleb128 0x2
	.long	.LASF195
	.byte	0x43
	.uleb128 0x2
	.long	.LASF196
	.byte	0x44
	.uleb128 0x2
	.long	.LASF197
	.byte	0x45
	.uleb128 0x2
	.long	.LASF198
	.byte	0x46
	.uleb128 0x2
	.long	.LASF199
	.byte	0x47
	.uleb128 0x2
	.long	.LASF200
	.byte	0x48
	.uleb128 0x2
	.long	.LASF201
	.byte	0x49
	.uleb128 0x2
	.long	.LASF202
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF203
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF204
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF205
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF206
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF207
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF208
	.byte	0x50
	.uleb128 0x2
	.long	.LASF209
	.byte	0x51
	.uleb128 0x2
	.long	.LASF210
	.byte	0x52
	.uleb128 0x2
	.long	.LASF211
	.byte	0x53
	.uleb128 0x2
	.long	.LASF212
	.byte	0x54
	.uleb128 0x2
	.long	.LASF213
	.byte	0x55
	.uleb128 0x2
	.long	.LASF214
	.byte	0x56
	.uleb128 0x2
	.long	.LASF215
	.byte	0x57
	.uleb128 0x2
	.long	.LASF216
	.byte	0x58
	.uleb128 0x2
	.long	.LASF217
	.byte	0x59
	.uleb128 0x2
	.long	.LASF218
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF219
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF220
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF221
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF222
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF223
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF224
	.byte	0x60
	.uleb128 0x2
	.long	.LASF225
	.byte	0x61
	.uleb128 0x2
	.long	.LASF226
	.byte	0x62
	.uleb128 0x2
	.long	.LASF227
	.byte	0x63
	.uleb128 0x2
	.long	.LASF228
	.byte	0x64
	.uleb128 0x2
	.long	.LASF229
	.byte	0x65
	.uleb128 0x2
	.long	.LASF230
	.byte	0x66
	.uleb128 0x2
	.long	.LASF231
	.byte	0x67
	.uleb128 0x2
	.long	.LASF232
	.byte	0x68
	.uleb128 0x2
	.long	.LASF233
	.byte	0x69
	.uleb128 0x2
	.long	.LASF234
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF235
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF236
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF237
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF238
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF239
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF240
	.byte	0x70
	.uleb128 0x2
	.long	.LASF241
	.byte	0x71
	.uleb128 0x2
	.long	.LASF242
	.byte	0x72
	.uleb128 0x2
	.long	.LASF243
	.byte	0x73
	.uleb128 0x2
	.long	.LASF244
	.byte	0x74
	.uleb128 0x2
	.long	.LASF245
	.byte	0x75
	.uleb128 0x2
	.long	.LASF246
	.byte	0x76
	.uleb128 0x2
	.long	.LASF247
	.byte	0x77
	.uleb128 0x2
	.long	.LASF248
	.byte	0x78
	.uleb128 0x2
	.long	.LASF249
	.byte	0x79
	.uleb128 0x2
	.long	.LASF250
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF251
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF252
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF253
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF254
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF255
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF256
	.byte	0x80
	.uleb128 0x2
	.long	.LASF257
	.byte	0x81
	.uleb128 0x2
	.long	.LASF258
	.byte	0x82
	.uleb128 0x2
	.long	.LASF259
	.byte	0x83
	.uleb128 0x2
	.long	.LASF260
	.byte	0x84
	.uleb128 0x2
	.long	.LASF261
	.byte	0x85
	.uleb128 0x2
	.long	.LASF262
	.byte	0x86
	.uleb128 0x2
	.long	.LASF263
	.byte	0x87
	.uleb128 0x2
	.long	.LASF264
	.byte	0x88
	.uleb128 0x2
	.long	.LASF265
	.byte	0x89
	.uleb128 0x2
	.long	.LASF266
	.byte	0x8a
	.byte	0
	.uleb128 0x6
	.long	.LASF267
	.byte	0xb
	.byte	0xac
	.byte	0x3
	.long	0x70f
	.uleb128 0xf
	.long	0x79
	.byte	0xb
	.byte	0xaf
	.byte	0x1
	.long	0x23ef
	.uleb128 0x2
	.long	.LASF268
	.byte	0
	.uleb128 0x2
	.long	.LASF269
	.byte	0x1
	.uleb128 0x2
	.long	.LASF270
	.byte	0x2
	.uleb128 0x2
	.long	.LASF271
	.byte	0x3
	.uleb128 0x2
	.long	.LASF272
	.byte	0x4
	.uleb128 0x2
	.long	.LASF273
	.byte	0x5
	.uleb128 0x2
	.long	.LASF274
	.byte	0x6
	.uleb128 0x2
	.long	.LASF275
	.byte	0x7
	.uleb128 0x2
	.long	.LASF276
	.byte	0x8
	.uleb128 0x2
	.long	.LASF277
	.byte	0x9
	.uleb128 0x2
	.long	.LASF278
	.byte	0xa
	.uleb128 0x2
	.long	.LASF279
	.byte	0xb
	.uleb128 0x2
	.long	.LASF280
	.byte	0xc
	.uleb128 0x2
	.long	.LASF281
	.byte	0xd
	.uleb128 0x2
	.long	.LASF282
	.byte	0xe
	.uleb128 0x2
	.long	.LASF283
	.byte	0xf
	.uleb128 0x2
	.long	.LASF284
	.byte	0x10
	.uleb128 0x2
	.long	.LASF285
	.byte	0x11
	.uleb128 0x2
	.long	.LASF286
	.byte	0x12
	.uleb128 0x2
	.long	.LASF287
	.byte	0x13
	.uleb128 0x2
	.long	.LASF288
	.byte	0x14
	.uleb128 0x2
	.long	.LASF289
	.byte	0x15
	.uleb128 0x2
	.long	.LASF290
	.byte	0x16
	.uleb128 0x2
	.long	.LASF291
	.byte	0x17
	.uleb128 0x2
	.long	.LASF292
	.byte	0x18
	.uleb128 0x2
	.long	.LASF293
	.byte	0x19
	.uleb128 0x2
	.long	.LASF294
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF295
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF296
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF297
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF298
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF299
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF300
	.byte	0x20
	.uleb128 0x2
	.long	.LASF301
	.byte	0x21
	.uleb128 0x2
	.long	.LASF302
	.byte	0x22
	.uleb128 0x2
	.long	.LASF303
	.byte	0x23
	.uleb128 0x2
	.long	.LASF304
	.byte	0x24
	.uleb128 0x2
	.long	.LASF305
	.byte	0x25
	.uleb128 0x2
	.long	.LASF306
	.byte	0x26
	.uleb128 0x2
	.long	.LASF307
	.byte	0x27
	.uleb128 0x2
	.long	.LASF308
	.byte	0x28
	.uleb128 0x2
	.long	.LASF309
	.byte	0x29
	.uleb128 0x2
	.long	.LASF310
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF311
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF312
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF313
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF314
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF315
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF316
	.byte	0x30
	.uleb128 0x2
	.long	.LASF317
	.byte	0x31
	.uleb128 0x2
	.long	.LASF318
	.byte	0x32
	.uleb128 0x2
	.long	.LASF319
	.byte	0x33
	.uleb128 0x2
	.long	.LASF320
	.byte	0x34
	.uleb128 0x2
	.long	.LASF321
	.byte	0x35
	.uleb128 0x2
	.long	.LASF322
	.byte	0x36
	.uleb128 0x2
	.long	.LASF323
	.byte	0x37
	.uleb128 0x2
	.long	.LASF324
	.byte	0x38
	.uleb128 0x2
	.long	.LASF325
	.byte	0x39
	.uleb128 0x2
	.long	.LASF326
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF327
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF328
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF329
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF330
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF331
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF332
	.byte	0x40
	.uleb128 0x2
	.long	.LASF333
	.byte	0x41
	.uleb128 0x2
	.long	.LASF334
	.byte	0x42
	.uleb128 0x2
	.long	.LASF335
	.byte	0x43
	.uleb128 0x2
	.long	.LASF336
	.byte	0x44
	.uleb128 0x2
	.long	.LASF337
	.byte	0x45
	.uleb128 0x2
	.long	.LASF338
	.byte	0x46
	.uleb128 0x2
	.long	.LASF339
	.byte	0x47
	.uleb128 0x2
	.long	.LASF340
	.byte	0x48
	.uleb128 0x2
	.long	.LASF341
	.byte	0x49
	.uleb128 0x2
	.long	.LASF342
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF343
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF344
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF345
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF346
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF347
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF348
	.byte	0x50
	.uleb128 0x2
	.long	.LASF349
	.byte	0x51
	.uleb128 0x2
	.long	.LASF350
	.byte	0x52
	.uleb128 0x2
	.long	.LASF351
	.byte	0x53
	.uleb128 0x2
	.long	.LASF352
	.byte	0x54
	.uleb128 0x2
	.long	.LASF353
	.byte	0x55
	.uleb128 0x2
	.long	.LASF354
	.byte	0x56
	.uleb128 0x2
	.long	.LASF355
	.byte	0x57
	.uleb128 0x2
	.long	.LASF356
	.byte	0x58
	.uleb128 0x2
	.long	.LASF357
	.byte	0x59
	.uleb128 0x2
	.long	.LASF358
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF359
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF360
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF361
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF362
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF363
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF364
	.byte	0x60
	.uleb128 0x2
	.long	.LASF365
	.byte	0x61
	.uleb128 0x2
	.long	.LASF366
	.byte	0x62
	.uleb128 0x2
	.long	.LASF367
	.byte	0x63
	.uleb128 0x2
	.long	.LASF368
	.byte	0x64
	.uleb128 0x2
	.long	.LASF369
	.byte	0x65
	.uleb128 0x2
	.long	.LASF370
	.byte	0x66
	.uleb128 0x2
	.long	.LASF371
	.byte	0x67
	.uleb128 0x2
	.long	.LASF372
	.byte	0x68
	.uleb128 0x2
	.long	.LASF373
	.byte	0x69
	.uleb128 0x2
	.long	.LASF374
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF375
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF376
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF377
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF378
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF379
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF380
	.byte	0x70
	.uleb128 0x2
	.long	.LASF381
	.byte	0x71
	.uleb128 0x2
	.long	.LASF382
	.byte	0x72
	.uleb128 0x2
	.long	.LASF383
	.byte	0x73
	.uleb128 0x2
	.long	.LASF384
	.byte	0x74
	.uleb128 0x2
	.long	.LASF385
	.byte	0x75
	.uleb128 0x2
	.long	.LASF386
	.byte	0x76
	.uleb128 0x2
	.long	.LASF387
	.byte	0x77
	.uleb128 0x2
	.long	.LASF388
	.byte	0x78
	.uleb128 0x2
	.long	.LASF389
	.byte	0x79
	.uleb128 0x2
	.long	.LASF390
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF391
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF392
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF393
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF394
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF395
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF396
	.byte	0x80
	.uleb128 0x2
	.long	.LASF397
	.byte	0x81
	.uleb128 0x2
	.long	.LASF398
	.byte	0x82
	.uleb128 0x2
	.long	.LASF399
	.byte	0x83
	.uleb128 0x2
	.long	.LASF400
	.byte	0x84
	.uleb128 0x2
	.long	.LASF401
	.byte	0x85
	.uleb128 0x2
	.long	.LASF402
	.byte	0x86
	.uleb128 0x2
	.long	.LASF403
	.byte	0x87
	.uleb128 0x2
	.long	.LASF404
	.byte	0x88
	.uleb128 0x2
	.long	.LASF405
	.byte	0x89
	.uleb128 0x2
	.long	.LASF406
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF407
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF408
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF409
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF410
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF411
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF412
	.byte	0x90
	.uleb128 0x2
	.long	.LASF413
	.byte	0x91
	.uleb128 0x2
	.long	.LASF414
	.byte	0x92
	.uleb128 0x2
	.long	.LASF415
	.byte	0x93
	.uleb128 0x2
	.long	.LASF416
	.byte	0x94
	.uleb128 0x2
	.long	.LASF417
	.byte	0x95
	.uleb128 0x2
	.long	.LASF418
	.byte	0x96
	.uleb128 0x2
	.long	.LASF419
	.byte	0x97
	.uleb128 0x2
	.long	.LASF420
	.byte	0x98
	.uleb128 0x2
	.long	.LASF421
	.byte	0x99
	.uleb128 0x2
	.long	.LASF422
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF423
	.byte	0x9b
	.uleb128 0x2
	.long	.LASF424
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF425
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF426
	.byte	0x9e
	.uleb128 0x2
	.long	.LASF427
	.byte	0x9f
	.uleb128 0x2
	.long	.LASF428
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF429
	.byte	0xa1
	.uleb128 0x2
	.long	.LASF430
	.byte	0xa2
	.uleb128 0x2
	.long	.LASF431
	.byte	0xa3
	.uleb128 0x2
	.long	.LASF432
	.byte	0xa4
	.uleb128 0x2
	.long	.LASF433
	.byte	0xa5
	.uleb128 0x2
	.long	.LASF434
	.byte	0xa6
	.uleb128 0x2
	.long	.LASF435
	.byte	0xa7
	.uleb128 0x2
	.long	.LASF436
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF437
	.byte	0xa9
	.uleb128 0x2
	.long	.LASF438
	.byte	0xaa
	.uleb128 0x2
	.long	.LASF439
	.byte	0xab
	.uleb128 0x2
	.long	.LASF440
	.byte	0xac
	.uleb128 0x2
	.long	.LASF441
	.byte	0xad
	.uleb128 0x2
	.long	.LASF442
	.byte	0xae
	.uleb128 0x2
	.long	.LASF443
	.byte	0xaf
	.uleb128 0x2
	.long	.LASF444
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF445
	.byte	0xb1
	.uleb128 0x2
	.long	.LASF446
	.byte	0xb2
	.uleb128 0x2
	.long	.LASF447
	.byte	0xb3
	.uleb128 0x2
	.long	.LASF448
	.byte	0xb4
	.uleb128 0x2
	.long	.LASF449
	.byte	0xb5
	.uleb128 0x2
	.long	.LASF450
	.byte	0xb6
	.uleb128 0x2
	.long	.LASF451
	.byte	0xb7
	.uleb128 0x2
	.long	.LASF452
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF453
	.byte	0xb9
	.uleb128 0x2
	.long	.LASF454
	.byte	0xba
	.uleb128 0x2
	.long	.LASF455
	.byte	0xbb
	.uleb128 0x2
	.long	.LASF456
	.byte	0xbc
	.uleb128 0x2
	.long	.LASF457
	.byte	0xbd
	.uleb128 0x2
	.long	.LASF458
	.byte	0xbe
	.uleb128 0x2
	.long	.LASF459
	.byte	0xbf
	.uleb128 0x2
	.long	.LASF460
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF461
	.byte	0xc1
	.uleb128 0x2
	.long	.LASF462
	.byte	0xc2
	.uleb128 0x2
	.long	.LASF463
	.byte	0xc3
	.uleb128 0x2
	.long	.LASF464
	.byte	0xc4
	.uleb128 0x2
	.long	.LASF465
	.byte	0xc5
	.uleb128 0x2
	.long	.LASF466
	.byte	0xc6
	.uleb128 0x2
	.long	.LASF467
	.byte	0xc7
	.uleb128 0x2
	.long	.LASF468
	.byte	0xc8
	.uleb128 0x2
	.long	.LASF469
	.byte	0xc9
	.uleb128 0x2
	.long	.LASF470
	.byte	0xca
	.uleb128 0x2
	.long	.LASF471
	.byte	0xcb
	.uleb128 0x2
	.long	.LASF472
	.byte	0xcc
	.uleb128 0x2
	.long	.LASF473
	.byte	0xcd
	.uleb128 0x2
	.long	.LASF474
	.byte	0xce
	.uleb128 0x2
	.long	.LASF475
	.byte	0xcf
	.uleb128 0x2
	.long	.LASF476
	.byte	0xd0
	.uleb128 0x2
	.long	.LASF477
	.byte	0xd1
	.uleb128 0x2
	.long	.LASF478
	.byte	0xd2
	.uleb128 0x2
	.long	.LASF479
	.byte	0xd3
	.uleb128 0x2
	.long	.LASF480
	.byte	0xd4
	.uleb128 0x2
	.long	.LASF481
	.byte	0xd5
	.uleb128 0x2
	.long	.LASF482
	.byte	0xd6
	.uleb128 0x2
	.long	.LASF483
	.byte	0xd7
	.uleb128 0x2
	.long	.LASF484
	.byte	0xd8
	.uleb128 0x2
	.long	.LASF485
	.byte	0xd9
	.uleb128 0x2
	.long	.LASF486
	.byte	0xda
	.uleb128 0x2
	.long	.LASF487
	.byte	0xdb
	.uleb128 0x2
	.long	.LASF488
	.byte	0xdc
	.uleb128 0x2
	.long	.LASF489
	.byte	0xdd
	.uleb128 0x2
	.long	.LASF490
	.byte	0xde
	.uleb128 0x2
	.long	.LASF491
	.byte	0xdf
	.uleb128 0x2
	.long	.LASF492
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF493
	.byte	0xe1
	.uleb128 0x2
	.long	.LASF494
	.byte	0xe2
	.uleb128 0x2
	.long	.LASF495
	.byte	0xe3
	.uleb128 0x2
	.long	.LASF496
	.byte	0xe4
	.uleb128 0x2
	.long	.LASF497
	.byte	0xe5
	.uleb128 0x2
	.long	.LASF498
	.byte	0xe6
	.uleb128 0x2
	.long	.LASF499
	.byte	0xe7
	.uleb128 0x2
	.long	.LASF500
	.byte	0xe8
	.uleb128 0x2
	.long	.LASF501
	.byte	0xe9
	.uleb128 0x2
	.long	.LASF502
	.byte	0xea
	.uleb128 0x2
	.long	.LASF503
	.byte	0xeb
	.uleb128 0x2
	.long	.LASF504
	.byte	0xec
	.uleb128 0x2
	.long	.LASF505
	.byte	0xed
	.uleb128 0x2
	.long	.LASF506
	.byte	0xee
	.uleb128 0x2
	.long	.LASF507
	.byte	0xef
	.uleb128 0x2
	.long	.LASF508
	.byte	0xf0
	.uleb128 0x2
	.long	.LASF509
	.byte	0xf1
	.uleb128 0x2
	.long	.LASF510
	.byte	0xf2
	.uleb128 0x2
	.long	.LASF511
	.byte	0xf3
	.uleb128 0x2
	.long	.LASF512
	.byte	0xf4
	.uleb128 0x2
	.long	.LASF513
	.byte	0xf5
	.uleb128 0x2
	.long	.LASF514
	.byte	0xf6
	.uleb128 0x2
	.long	.LASF515
	.byte	0xf7
	.uleb128 0x2
	.long	.LASF516
	.byte	0xf8
	.uleb128 0x2
	.long	.LASF517
	.byte	0xf9
	.uleb128 0x2
	.long	.LASF518
	.byte	0xfa
	.uleb128 0x2
	.long	.LASF519
	.byte	0xfb
	.uleb128 0x2
	.long	.LASF520
	.byte	0xfc
	.uleb128 0x2
	.long	.LASF521
	.byte	0xfd
	.uleb128 0x2
	.long	.LASF522
	.byte	0xfe
	.uleb128 0x2
	.long	.LASF523
	.byte	0xff
	.uleb128 0x1
	.long	.LASF524
	.value	0x100
	.uleb128 0x1
	.long	.LASF525
	.value	0x101
	.uleb128 0x1
	.long	.LASF526
	.value	0x102
	.uleb128 0x1
	.long	.LASF527
	.value	0x103
	.uleb128 0x1
	.long	.LASF528
	.value	0x104
	.uleb128 0x1
	.long	.LASF529
	.value	0x105
	.uleb128 0x1
	.long	.LASF530
	.value	0x106
	.uleb128 0x1
	.long	.LASF531
	.value	0x107
	.uleb128 0x1
	.long	.LASF532
	.value	0x108
	.uleb128 0x1
	.long	.LASF533
	.value	0x109
	.uleb128 0x1
	.long	.LASF534
	.value	0x10a
	.uleb128 0x1
	.long	.LASF535
	.value	0x10b
	.uleb128 0x1
	.long	.LASF536
	.value	0x10c
	.uleb128 0x1
	.long	.LASF537
	.value	0x10d
	.uleb128 0x1
	.long	.LASF538
	.value	0x10e
	.uleb128 0x1
	.long	.LASF539
	.value	0x10f
	.uleb128 0x1
	.long	.LASF540
	.value	0x110
	.uleb128 0x1
	.long	.LASF541
	.value	0x111
	.uleb128 0x1
	.long	.LASF542
	.value	0x112
	.uleb128 0x1
	.long	.LASF543
	.value	0x113
	.uleb128 0x1
	.long	.LASF544
	.value	0x114
	.uleb128 0x1
	.long	.LASF545
	.value	0x115
	.uleb128 0x1
	.long	.LASF546
	.value	0x116
	.uleb128 0x1
	.long	.LASF547
	.value	0x117
	.uleb128 0x1
	.long	.LASF548
	.value	0x118
	.uleb128 0x1
	.long	.LASF549
	.value	0x119
	.uleb128 0x1
	.long	.LASF550
	.value	0x11a
	.uleb128 0x1
	.long	.LASF551
	.value	0x11b
	.uleb128 0x1
	.long	.LASF552
	.value	0x11c
	.uleb128 0x1
	.long	.LASF553
	.value	0x11d
	.uleb128 0x1
	.long	.LASF554
	.value	0x11e
	.uleb128 0x1
	.long	.LASF555
	.value	0x11f
	.uleb128 0x1
	.long	.LASF556
	.value	0x120
	.uleb128 0x1
	.long	.LASF557
	.value	0x121
	.uleb128 0x1
	.long	.LASF558
	.value	0x122
	.uleb128 0x1
	.long	.LASF559
	.value	0x123
	.uleb128 0x1
	.long	.LASF560
	.value	0x124
	.uleb128 0x1
	.long	.LASF561
	.value	0x125
	.uleb128 0x1
	.long	.LASF562
	.value	0x126
	.uleb128 0x1
	.long	.LASF563
	.value	0x127
	.uleb128 0x1
	.long	.LASF564
	.value	0x128
	.uleb128 0x1
	.long	.LASF565
	.value	0x129
	.uleb128 0x1
	.long	.LASF566
	.value	0x12a
	.uleb128 0x1
	.long	.LASF567
	.value	0x12b
	.uleb128 0x1
	.long	.LASF568
	.value	0x12c
	.uleb128 0x1
	.long	.LASF569
	.value	0x12d
	.uleb128 0x1
	.long	.LASF570
	.value	0x12e
	.uleb128 0x1
	.long	.LASF571
	.value	0x12f
	.uleb128 0x1
	.long	.LASF572
	.value	0x130
	.uleb128 0x1
	.long	.LASF573
	.value	0x131
	.uleb128 0x1
	.long	.LASF574
	.value	0x132
	.uleb128 0x1
	.long	.LASF575
	.value	0x133
	.uleb128 0x1
	.long	.LASF576
	.value	0x134
	.uleb128 0x1
	.long	.LASF577
	.value	0x135
	.uleb128 0x1
	.long	.LASF578
	.value	0x136
	.uleb128 0x1
	.long	.LASF579
	.value	0x137
	.uleb128 0x1
	.long	.LASF580
	.value	0x138
	.uleb128 0x1
	.long	.LASF581
	.value	0x139
	.uleb128 0x1
	.long	.LASF582
	.value	0x13a
	.uleb128 0x1
	.long	.LASF583
	.value	0x13b
	.uleb128 0x1
	.long	.LASF584
	.value	0x13c
	.uleb128 0x1
	.long	.LASF585
	.value	0x13d
	.uleb128 0x1
	.long	.LASF586
	.value	0x13e
	.uleb128 0x1
	.long	.LASF587
	.value	0x13f
	.uleb128 0x1
	.long	.LASF588
	.value	0x140
	.uleb128 0x1
	.long	.LASF589
	.value	0x141
	.uleb128 0x1
	.long	.LASF590
	.value	0x142
	.uleb128 0x1
	.long	.LASF591
	.value	0x143
	.uleb128 0x1
	.long	.LASF592
	.value	0x144
	.uleb128 0x1
	.long	.LASF593
	.value	0x145
	.uleb128 0x1
	.long	.LASF594
	.value	0x146
	.uleb128 0x1
	.long	.LASF595
	.value	0x147
	.uleb128 0x1
	.long	.LASF596
	.value	0x148
	.uleb128 0x1
	.long	.LASF597
	.value	0x149
	.uleb128 0x1
	.long	.LASF598
	.value	0x14a
	.uleb128 0x1
	.long	.LASF599
	.value	0x14b
	.uleb128 0x1
	.long	.LASF600
	.value	0x14c
	.uleb128 0x1
	.long	.LASF601
	.value	0x14d
	.uleb128 0x1
	.long	.LASF602
	.value	0x14e
	.uleb128 0x1
	.long	.LASF603
	.value	0x14f
	.uleb128 0x1
	.long	.LASF604
	.value	0x150
	.uleb128 0x1
	.long	.LASF605
	.value	0x151
	.uleb128 0x1
	.long	.LASF606
	.value	0x152
	.uleb128 0x1
	.long	.LASF607
	.value	0x153
	.uleb128 0x1
	.long	.LASF608
	.value	0x154
	.uleb128 0x1
	.long	.LASF609
	.value	0x155
	.uleb128 0x1
	.long	.LASF610
	.value	0x156
	.uleb128 0x1
	.long	.LASF611
	.value	0x157
	.uleb128 0x1
	.long	.LASF612
	.value	0x158
	.uleb128 0x1
	.long	.LASF613
	.value	0x159
	.uleb128 0x1
	.long	.LASF614
	.value	0x15a
	.uleb128 0x1
	.long	.LASF615
	.value	0x15b
	.uleb128 0x1
	.long	.LASF616
	.value	0x15c
	.uleb128 0x1
	.long	.LASF617
	.value	0x15d
	.uleb128 0x1
	.long	.LASF618
	.value	0x15e
	.uleb128 0x1
	.long	.LASF619
	.value	0x15f
	.uleb128 0x1
	.long	.LASF620
	.value	0x160
	.uleb128 0x1
	.long	.LASF621
	.value	0x161
	.uleb128 0x1
	.long	.LASF622
	.value	0x162
	.uleb128 0x1
	.long	.LASF623
	.value	0x163
	.uleb128 0x1
	.long	.LASF624
	.value	0x164
	.uleb128 0x1
	.long	.LASF625
	.value	0x165
	.uleb128 0x1
	.long	.LASF626
	.value	0x166
	.uleb128 0x1
	.long	.LASF627
	.value	0x167
	.uleb128 0x1
	.long	.LASF628
	.value	0x168
	.uleb128 0x1
	.long	.LASF629
	.value	0x169
	.uleb128 0x1
	.long	.LASF630
	.value	0x16a
	.uleb128 0x1
	.long	.LASF631
	.value	0x16b
	.uleb128 0x1
	.long	.LASF632
	.value	0x16c
	.uleb128 0x1
	.long	.LASF633
	.value	0x16d
	.uleb128 0x1
	.long	.LASF634
	.value	0x16e
	.uleb128 0x1
	.long	.LASF635
	.value	0x16f
	.uleb128 0x1
	.long	.LASF636
	.value	0x170
	.uleb128 0x1
	.long	.LASF637
	.value	0x171
	.uleb128 0x1
	.long	.LASF638
	.value	0x172
	.uleb128 0x1
	.long	.LASF639
	.value	0x173
	.uleb128 0x1
	.long	.LASF640
	.value	0x174
	.uleb128 0x1
	.long	.LASF641
	.value	0x175
	.uleb128 0x1
	.long	.LASF642
	.value	0x176
	.uleb128 0x1
	.long	.LASF643
	.value	0x177
	.uleb128 0x1
	.long	.LASF644
	.value	0x178
	.uleb128 0x1
	.long	.LASF645
	.value	0x179
	.uleb128 0x1
	.long	.LASF646
	.value	0x17a
	.uleb128 0x1
	.long	.LASF647
	.value	0x17b
	.uleb128 0x1
	.long	.LASF648
	.value	0x17c
	.uleb128 0x1
	.long	.LASF649
	.value	0x17d
	.uleb128 0x1
	.long	.LASF650
	.value	0x17e
	.uleb128 0x1
	.long	.LASF651
	.value	0x17f
	.uleb128 0x1
	.long	.LASF652
	.value	0x180
	.uleb128 0x1
	.long	.LASF653
	.value	0x181
	.uleb128 0x1
	.long	.LASF654
	.value	0x182
	.uleb128 0x1
	.long	.LASF655
	.value	0x183
	.uleb128 0x1
	.long	.LASF656
	.value	0x184
	.uleb128 0x1
	.long	.LASF657
	.value	0x185
	.uleb128 0x1
	.long	.LASF658
	.value	0x186
	.uleb128 0x1
	.long	.LASF659
	.value	0x187
	.uleb128 0x1
	.long	.LASF660
	.value	0x188
	.uleb128 0x1
	.long	.LASF661
	.value	0x189
	.uleb128 0x1
	.long	.LASF662
	.value	0x18a
	.uleb128 0x1
	.long	.LASF663
	.value	0x18b
	.uleb128 0x1
	.long	.LASF664
	.value	0x18c
	.uleb128 0x1
	.long	.LASF665
	.value	0x18d
	.uleb128 0x1
	.long	.LASF666
	.value	0x18e
	.uleb128 0x1
	.long	.LASF667
	.value	0x18f
	.uleb128 0x1
	.long	.LASF668
	.value	0x190
	.uleb128 0x1
	.long	.LASF669
	.value	0x191
	.uleb128 0x1
	.long	.LASF670
	.value	0x192
	.uleb128 0x1
	.long	.LASF671
	.value	0x193
	.uleb128 0x1
	.long	.LASF672
	.value	0x194
	.uleb128 0x1
	.long	.LASF673
	.value	0x195
	.uleb128 0x1
	.long	.LASF674
	.value	0x196
	.uleb128 0x1
	.long	.LASF675
	.value	0x197
	.uleb128 0x1
	.long	.LASF676
	.value	0x198
	.uleb128 0x1
	.long	.LASF677
	.value	0x199
	.uleb128 0x1
	.long	.LASF678
	.value	0x19a
	.uleb128 0x1
	.long	.LASF679
	.value	0x19b
	.uleb128 0x1
	.long	.LASF680
	.value	0x19c
	.uleb128 0x1
	.long	.LASF681
	.value	0x19d
	.uleb128 0x1
	.long	.LASF682
	.value	0x19e
	.uleb128 0x1
	.long	.LASF683
	.value	0x19f
	.uleb128 0x1
	.long	.LASF684
	.value	0x1a0
	.uleb128 0x1
	.long	.LASF685
	.value	0x1a1
	.uleb128 0x1
	.long	.LASF686
	.value	0x1a2
	.uleb128 0x1
	.long	.LASF687
	.value	0x1a3
	.uleb128 0x1
	.long	.LASF688
	.value	0x1a4
	.uleb128 0x1
	.long	.LASF689
	.value	0x1a5
	.uleb128 0x1
	.long	.LASF690
	.value	0x1a6
	.uleb128 0x1
	.long	.LASF691
	.value	0x1a7
	.uleb128 0x1
	.long	.LASF692
	.value	0x1a8
	.uleb128 0x1
	.long	.LASF693
	.value	0x1a9
	.uleb128 0x1
	.long	.LASF694
	.value	0x1aa
	.uleb128 0x1
	.long	.LASF695
	.value	0x1ab
	.uleb128 0x1
	.long	.LASF696
	.value	0x1ac
	.uleb128 0x1
	.long	.LASF697
	.value	0x1ad
	.uleb128 0x1
	.long	.LASF698
	.value	0x1ae
	.uleb128 0x1
	.long	.LASF699
	.value	0x1af
	.uleb128 0x1
	.long	.LASF700
	.value	0x1b0
	.uleb128 0x1
	.long	.LASF701
	.value	0x1b1
	.uleb128 0x1
	.long	.LASF702
	.value	0x1b2
	.uleb128 0x1
	.long	.LASF703
	.value	0x1b3
	.uleb128 0x1
	.long	.LASF704
	.value	0x1b4
	.uleb128 0x1
	.long	.LASF705
	.value	0x1b5
	.uleb128 0x1
	.long	.LASF706
	.value	0x1b6
	.uleb128 0x1
	.long	.LASF707
	.value	0x1b7
	.uleb128 0x1
	.long	.LASF708
	.value	0x1b8
	.uleb128 0x1
	.long	.LASF709
	.value	0x1b9
	.uleb128 0x1
	.long	.LASF710
	.value	0x1ba
	.uleb128 0x1
	.long	.LASF711
	.value	0x1bb
	.uleb128 0x1
	.long	.LASF712
	.value	0x1bc
	.uleb128 0x1
	.long	.LASF713
	.value	0x1bd
	.uleb128 0x1
	.long	.LASF714
	.value	0x1be
	.uleb128 0x1
	.long	.LASF715
	.value	0x1bf
	.uleb128 0x1
	.long	.LASF716
	.value	0x1c0
	.uleb128 0x1
	.long	.LASF717
	.value	0x1c1
	.uleb128 0x1
	.long	.LASF718
	.value	0x1c2
	.uleb128 0x1
	.long	.LASF719
	.value	0x1c3
	.uleb128 0x1
	.long	.LASF720
	.value	0x1c4
	.uleb128 0x1
	.long	.LASF721
	.value	0x1c5
	.uleb128 0x1
	.long	.LASF722
	.value	0x1c6
	.uleb128 0x1
	.long	.LASF723
	.value	0x1c7
	.uleb128 0x1
	.long	.LASF724
	.value	0x1c8
	.uleb128 0x1
	.long	.LASF725
	.value	0x1c9
	.uleb128 0x1
	.long	.LASF726
	.value	0x1ca
	.uleb128 0x1
	.long	.LASF727
	.value	0x1cb
	.uleb128 0x1
	.long	.LASF728
	.value	0x1cc
	.uleb128 0x1
	.long	.LASF729
	.value	0x1cd
	.uleb128 0x1
	.long	.LASF730
	.value	0x1ce
	.uleb128 0x1
	.long	.LASF731
	.value	0x1cf
	.uleb128 0x1
	.long	.LASF732
	.value	0x1d0
	.uleb128 0x1
	.long	.LASF733
	.value	0x1d1
	.uleb128 0x1
	.long	.LASF734
	.value	0x1d2
	.uleb128 0x1
	.long	.LASF735
	.value	0x1d3
	.uleb128 0x1
	.long	.LASF736
	.value	0x1d4
	.uleb128 0x1
	.long	.LASF737
	.value	0x1d5
	.uleb128 0x1
	.long	.LASF738
	.value	0x1d6
	.uleb128 0x1
	.long	.LASF739
	.value	0x1d7
	.uleb128 0x1
	.long	.LASF740
	.value	0x1d8
	.uleb128 0x1
	.long	.LASF741
	.value	0x1d9
	.uleb128 0x1
	.long	.LASF742
	.value	0x1da
	.uleb128 0x1
	.long	.LASF743
	.value	0x1db
	.uleb128 0x1
	.long	.LASF744
	.value	0x1dc
	.uleb128 0x1
	.long	.LASF745
	.value	0x1dd
	.uleb128 0x1
	.long	.LASF746
	.value	0x1de
	.uleb128 0x1
	.long	.LASF747
	.value	0x1df
	.uleb128 0x1
	.long	.LASF748
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF749
	.value	0x1e1
	.uleb128 0x1
	.long	.LASF750
	.value	0x1e2
	.uleb128 0x1
	.long	.LASF751
	.value	0x1e3
	.uleb128 0x1
	.long	.LASF752
	.value	0x1e4
	.uleb128 0x1
	.long	.LASF753
	.value	0x1e5
	.uleb128 0x1
	.long	.LASF754
	.value	0x1e6
	.uleb128 0x1
	.long	.LASF755
	.value	0x1e7
	.uleb128 0x1
	.long	.LASF756
	.value	0x1e8
	.uleb128 0x1
	.long	.LASF757
	.value	0x1e9
	.uleb128 0x1
	.long	.LASF758
	.value	0x1ea
	.uleb128 0x1
	.long	.LASF759
	.value	0x1eb
	.uleb128 0x1
	.long	.LASF760
	.value	0x1ec
	.uleb128 0x1
	.long	.LASF761
	.value	0x1ed
	.uleb128 0x1
	.long	.LASF762
	.value	0x1ee
	.uleb128 0x1
	.long	.LASF763
	.value	0x1ef
	.uleb128 0x1
	.long	.LASF764
	.value	0x1f0
	.uleb128 0x1
	.long	.LASF765
	.value	0x1f1
	.uleb128 0x1
	.long	.LASF766
	.value	0x1f2
	.uleb128 0x1
	.long	.LASF767
	.value	0x1f3
	.uleb128 0x1
	.long	.LASF768
	.value	0x1f4
	.uleb128 0x1
	.long	.LASF769
	.value	0x1f5
	.uleb128 0x1
	.long	.LASF770
	.value	0x1f6
	.uleb128 0x1
	.long	.LASF771
	.value	0x1f7
	.uleb128 0x1
	.long	.LASF772
	.value	0x1f8
	.uleb128 0x1
	.long	.LASF773
	.value	0x1f9
	.uleb128 0x1
	.long	.LASF774
	.value	0x1fa
	.uleb128 0x1
	.long	.LASF775
	.value	0x1fb
	.uleb128 0x1
	.long	.LASF776
	.value	0x1fc
	.uleb128 0x1
	.long	.LASF777
	.value	0x1fd
	.uleb128 0x1
	.long	.LASF778
	.value	0x1fe
	.uleb128 0x1
	.long	.LASF779
	.value	0x1ff
	.uleb128 0x1
	.long	.LASF780
	.value	0x200
	.uleb128 0x1
	.long	.LASF781
	.value	0x201
	.uleb128 0x1
	.long	.LASF782
	.value	0x202
	.uleb128 0x1
	.long	.LASF783
	.value	0x203
	.uleb128 0x1
	.long	.LASF784
	.value	0x204
	.uleb128 0x1
	.long	.LASF785
	.value	0x205
	.uleb128 0x1
	.long	.LASF786
	.value	0x206
	.uleb128 0x1
	.long	.LASF787
	.value	0x207
	.uleb128 0x1
	.long	.LASF788
	.value	0x208
	.uleb128 0x1
	.long	.LASF789
	.value	0x209
	.uleb128 0x1
	.long	.LASF790
	.value	0x20a
	.uleb128 0x1
	.long	.LASF791
	.value	0x20b
	.uleb128 0x1
	.long	.LASF792
	.value	0x20c
	.uleb128 0x1
	.long	.LASF793
	.value	0x20d
	.uleb128 0x1
	.long	.LASF794
	.value	0x20e
	.uleb128 0x1
	.long	.LASF795
	.value	0x20f
	.uleb128 0x1
	.long	.LASF796
	.value	0x210
	.uleb128 0x1
	.long	.LASF797
	.value	0x211
	.uleb128 0x1
	.long	.LASF798
	.value	0x212
	.uleb128 0x1
	.long	.LASF799
	.value	0x213
	.uleb128 0x1
	.long	.LASF800
	.value	0x214
	.uleb128 0x1
	.long	.LASF801
	.value	0x215
	.uleb128 0x1
	.long	.LASF802
	.value	0x216
	.uleb128 0x1
	.long	.LASF803
	.value	0x217
	.uleb128 0x1
	.long	.LASF804
	.value	0x218
	.uleb128 0x1
	.long	.LASF805
	.value	0x219
	.uleb128 0x1
	.long	.LASF806
	.value	0x21a
	.uleb128 0x1
	.long	.LASF807
	.value	0x21b
	.uleb128 0x1
	.long	.LASF808
	.value	0x21c
	.uleb128 0x1
	.long	.LASF809
	.value	0x21d
	.uleb128 0x1
	.long	.LASF810
	.value	0x21e
	.uleb128 0x1
	.long	.LASF811
	.value	0x21f
	.uleb128 0x1
	.long	.LASF812
	.value	0x220
	.uleb128 0x1
	.long	.LASF813
	.value	0x221
	.uleb128 0x1
	.long	.LASF814
	.value	0x222
	.uleb128 0x1
	.long	.LASF815
	.value	0x223
	.uleb128 0x1
	.long	.LASF816
	.value	0x224
	.uleb128 0x1
	.long	.LASF817
	.value	0x225
	.uleb128 0x1
	.long	.LASF818
	.value	0x226
	.uleb128 0x1
	.long	.LASF819
	.value	0x227
	.uleb128 0x1
	.long	.LASF820
	.value	0x228
	.uleb128 0x1
	.long	.LASF821
	.value	0x229
	.uleb128 0x1
	.long	.LASF822
	.value	0x22a
	.uleb128 0x1
	.long	.LASF823
	.value	0x22b
	.uleb128 0x1
	.long	.LASF824
	.value	0x22c
	.uleb128 0x1
	.long	.LASF825
	.value	0x22d
	.uleb128 0x1
	.long	.LASF826
	.value	0x22e
	.uleb128 0x1
	.long	.LASF827
	.value	0x22f
	.uleb128 0x1
	.long	.LASF828
	.value	0x230
	.uleb128 0x1
	.long	.LASF829
	.value	0x231
	.uleb128 0x1
	.long	.LASF830
	.value	0x232
	.uleb128 0x1
	.long	.LASF831
	.value	0x233
	.uleb128 0x1
	.long	.LASF832
	.value	0x234
	.uleb128 0x1
	.long	.LASF833
	.value	0x235
	.uleb128 0x1
	.long	.LASF834
	.value	0x236
	.uleb128 0x1
	.long	.LASF835
	.value	0x237
	.uleb128 0x1
	.long	.LASF836
	.value	0x238
	.uleb128 0x1
	.long	.LASF837
	.value	0x239
	.uleb128 0x1
	.long	.LASF838
	.value	0x23a
	.uleb128 0x1
	.long	.LASF839
	.value	0x23b
	.uleb128 0x1
	.long	.LASF840
	.value	0x23c
	.uleb128 0x1
	.long	.LASF841
	.value	0x23d
	.uleb128 0x1
	.long	.LASF842
	.value	0x23e
	.uleb128 0x1
	.long	.LASF843
	.value	0x23f
	.uleb128 0x1
	.long	.LASF844
	.value	0x240
	.uleb128 0x1
	.long	.LASF845
	.value	0x241
	.uleb128 0x1
	.long	.LASF846
	.value	0x242
	.uleb128 0x1
	.long	.LASF847
	.value	0x243
	.uleb128 0x1
	.long	.LASF848
	.value	0x244
	.uleb128 0x1
	.long	.LASF849
	.value	0x245
	.uleb128 0x1
	.long	.LASF850
	.value	0x246
	.uleb128 0x1
	.long	.LASF851
	.value	0x247
	.uleb128 0x1
	.long	.LASF852
	.value	0x248
	.uleb128 0x1
	.long	.LASF853
	.value	0x249
	.uleb128 0x1
	.long	.LASF854
	.value	0x24a
	.uleb128 0x1
	.long	.LASF855
	.value	0x24b
	.uleb128 0x1
	.long	.LASF856
	.value	0x24c
	.uleb128 0x1
	.long	.LASF857
	.value	0x24d
	.uleb128 0x1
	.long	.LASF858
	.value	0x24e
	.uleb128 0x1
	.long	.LASF859
	.value	0x24f
	.uleb128 0x1
	.long	.LASF860
	.value	0x250
	.uleb128 0x1
	.long	.LASF861
	.value	0x251
	.uleb128 0x1
	.long	.LASF862
	.value	0x252
	.uleb128 0x1
	.long	.LASF863
	.value	0x253
	.uleb128 0x1
	.long	.LASF864
	.value	0x254
	.uleb128 0x1
	.long	.LASF865
	.value	0x255
	.uleb128 0x1
	.long	.LASF866
	.value	0x256
	.uleb128 0x1
	.long	.LASF867
	.value	0x257
	.uleb128 0x1
	.long	.LASF868
	.value	0x258
	.uleb128 0x1
	.long	.LASF869
	.value	0x259
	.uleb128 0x1
	.long	.LASF870
	.value	0x25a
	.uleb128 0x1
	.long	.LASF871
	.value	0x25b
	.uleb128 0x1
	.long	.LASF872
	.value	0x25c
	.uleb128 0x1
	.long	.LASF873
	.value	0x25d
	.uleb128 0x1
	.long	.LASF874
	.value	0x25e
	.uleb128 0x1
	.long	.LASF875
	.value	0x25f
	.uleb128 0x1
	.long	.LASF876
	.value	0x260
	.uleb128 0x1
	.long	.LASF877
	.value	0x261
	.uleb128 0x1
	.long	.LASF878
	.value	0x262
	.uleb128 0x1
	.long	.LASF879
	.value	0x263
	.uleb128 0x1
	.long	.LASF880
	.value	0x264
	.uleb128 0x1
	.long	.LASF881
	.value	0x265
	.uleb128 0x1
	.long	.LASF882
	.value	0x266
	.uleb128 0x1
	.long	.LASF883
	.value	0x267
	.uleb128 0x1
	.long	.LASF884
	.value	0x268
	.uleb128 0x1
	.long	.LASF885
	.value	0x269
	.uleb128 0x1
	.long	.LASF886
	.value	0x26a
	.uleb128 0x1
	.long	.LASF887
	.value	0x26b
	.uleb128 0x1
	.long	.LASF888
	.value	0x26c
	.uleb128 0x1
	.long	.LASF889
	.value	0x26d
	.uleb128 0x1
	.long	.LASF890
	.value	0x26e
	.uleb128 0x1
	.long	.LASF891
	.value	0x26f
	.uleb128 0x1
	.long	.LASF892
	.value	0x270
	.uleb128 0x1
	.long	.LASF893
	.value	0x271
	.uleb128 0x1
	.long	.LASF894
	.value	0x272
	.uleb128 0x1
	.long	.LASF895
	.value	0x273
	.uleb128 0x1
	.long	.LASF896
	.value	0x274
	.uleb128 0x1
	.long	.LASF897
	.value	0x275
	.uleb128 0x1
	.long	.LASF898
	.value	0x276
	.uleb128 0x1
	.long	.LASF899
	.value	0x277
	.uleb128 0x1
	.long	.LASF900
	.value	0x278
	.uleb128 0x1
	.long	.LASF901
	.value	0x279
	.uleb128 0x1
	.long	.LASF902
	.value	0x27a
	.uleb128 0x1
	.long	.LASF903
	.value	0x27b
	.uleb128 0x1
	.long	.LASF904
	.value	0x27c
	.uleb128 0x1
	.long	.LASF905
	.value	0x27d
	.uleb128 0x1
	.long	.LASF906
	.value	0x27e
	.uleb128 0x1
	.long	.LASF907
	.value	0x27f
	.uleb128 0x1
	.long	.LASF908
	.value	0x280
	.uleb128 0x1
	.long	.LASF909
	.value	0x281
	.uleb128 0x1
	.long	.LASF910
	.value	0x282
	.uleb128 0x1
	.long	.LASF911
	.value	0x283
	.uleb128 0x1
	.long	.LASF912
	.value	0x284
	.uleb128 0x1
	.long	.LASF913
	.value	0x285
	.uleb128 0x1
	.long	.LASF914
	.value	0x286
	.uleb128 0x1
	.long	.LASF915
	.value	0x287
	.uleb128 0x1
	.long	.LASF916
	.value	0x288
	.uleb128 0x1
	.long	.LASF917
	.value	0x289
	.uleb128 0x1
	.long	.LASF918
	.value	0x28a
	.uleb128 0x1
	.long	.LASF919
	.value	0x28b
	.uleb128 0x1
	.long	.LASF920
	.value	0x28c
	.uleb128 0x1
	.long	.LASF921
	.value	0x28d
	.uleb128 0x1
	.long	.LASF922
	.value	0x28e
	.uleb128 0x1
	.long	.LASF923
	.value	0x28f
	.uleb128 0x1
	.long	.LASF924
	.value	0x290
	.uleb128 0x1
	.long	.LASF925
	.value	0x291
	.uleb128 0x1
	.long	.LASF926
	.value	0x292
	.uleb128 0x1
	.long	.LASF927
	.value	0x293
	.uleb128 0x1
	.long	.LASF928
	.value	0x294
	.uleb128 0x1
	.long	.LASF929
	.value	0x295
	.uleb128 0x1
	.long	.LASF930
	.value	0x296
	.uleb128 0x1
	.long	.LASF931
	.value	0x297
	.uleb128 0x1
	.long	.LASF932
	.value	0x298
	.uleb128 0x1
	.long	.LASF933
	.value	0x299
	.uleb128 0x1
	.long	.LASF934
	.value	0x29a
	.uleb128 0x1
	.long	.LASF935
	.value	0x29b
	.uleb128 0x1
	.long	.LASF936
	.value	0x29c
	.uleb128 0x1
	.long	.LASF937
	.value	0x29d
	.uleb128 0x1
	.long	.LASF938
	.value	0x29e
	.uleb128 0x1
	.long	.LASF939
	.value	0x29f
	.uleb128 0x1
	.long	.LASF940
	.value	0x2a0
	.uleb128 0x1
	.long	.LASF941
	.value	0x2a1
	.uleb128 0x1
	.long	.LASF942
	.value	0x2a2
	.uleb128 0x1
	.long	.LASF943
	.value	0x2a3
	.uleb128 0x1
	.long	.LASF944
	.value	0x2a4
	.uleb128 0x1
	.long	.LASF945
	.value	0x2a5
	.uleb128 0x1
	.long	.LASF946
	.value	0x2a6
	.uleb128 0x1
	.long	.LASF947
	.value	0x2a7
	.uleb128 0x1
	.long	.LASF948
	.value	0x2a8
	.uleb128 0x1
	.long	.LASF949
	.value	0x2a9
	.uleb128 0x1
	.long	.LASF950
	.value	0x2aa
	.uleb128 0x1
	.long	.LASF951
	.value	0x2ab
	.uleb128 0x1
	.long	.LASF952
	.value	0x2ac
	.uleb128 0x1
	.long	.LASF953
	.value	0x2ad
	.uleb128 0x1
	.long	.LASF954
	.value	0x2ae
	.uleb128 0x1
	.long	.LASF955
	.value	0x2af
	.uleb128 0x1
	.long	.LASF956
	.value	0x2b0
	.uleb128 0x1
	.long	.LASF957
	.value	0x2b1
	.uleb128 0x1
	.long	.LASF958
	.value	0x2b2
	.uleb128 0x1
	.long	.LASF959
	.value	0x2b3
	.uleb128 0x1
	.long	.LASF960
	.value	0x2b4
	.uleb128 0x1
	.long	.LASF961
	.value	0x2b5
	.uleb128 0x1
	.long	.LASF962
	.value	0x2b6
	.uleb128 0x1
	.long	.LASF963
	.value	0x2b7
	.uleb128 0x1
	.long	.LASF964
	.value	0x2b8
	.uleb128 0x1
	.long	.LASF965
	.value	0x2b9
	.uleb128 0x1
	.long	.LASF966
	.value	0x2ba
	.uleb128 0x1
	.long	.LASF967
	.value	0x2bb
	.uleb128 0x1
	.long	.LASF968
	.value	0x2bc
	.uleb128 0x1
	.long	.LASF969
	.value	0x2bd
	.uleb128 0x1
	.long	.LASF970
	.value	0x2be
	.uleb128 0x1
	.long	.LASF971
	.value	0x2bf
	.uleb128 0x1
	.long	.LASF972
	.value	0x2c0
	.uleb128 0x1
	.long	.LASF973
	.value	0x2c1
	.uleb128 0x1
	.long	.LASF974
	.value	0x2c2
	.uleb128 0x1
	.long	.LASF975
	.value	0x2c3
	.uleb128 0x1
	.long	.LASF976
	.value	0x2c4
	.uleb128 0x1
	.long	.LASF977
	.value	0x2c5
	.uleb128 0x1
	.long	.LASF978
	.value	0x2c6
	.uleb128 0x1
	.long	.LASF979
	.value	0x2c7
	.uleb128 0x1
	.long	.LASF980
	.value	0x2c8
	.uleb128 0x1
	.long	.LASF981
	.value	0x2c9
	.uleb128 0x1
	.long	.LASF982
	.value	0x2ca
	.uleb128 0x1
	.long	.LASF983
	.value	0x2cb
	.uleb128 0x1
	.long	.LASF984
	.value	0x2cc
	.uleb128 0x1
	.long	.LASF985
	.value	0x2cd
	.uleb128 0x1
	.long	.LASF986
	.value	0x2ce
	.uleb128 0x1
	.long	.LASF987
	.value	0x2cf
	.uleb128 0x1
	.long	.LASF988
	.value	0x2d0
	.uleb128 0x1
	.long	.LASF989
	.value	0x2d1
	.uleb128 0x1
	.long	.LASF990
	.value	0x2d2
	.uleb128 0x1
	.long	.LASF991
	.value	0x2d3
	.uleb128 0x1
	.long	.LASF992
	.value	0x2d4
	.uleb128 0x1
	.long	.LASF993
	.value	0x2d5
	.uleb128 0x1
	.long	.LASF994
	.value	0x2d6
	.uleb128 0x1
	.long	.LASF995
	.value	0x2d7
	.uleb128 0x1
	.long	.LASF996
	.value	0x2d8
	.uleb128 0x1
	.long	.LASF997
	.value	0x2d9
	.uleb128 0x1
	.long	.LASF998
	.value	0x2da
	.uleb128 0x1
	.long	.LASF999
	.value	0x2db
	.uleb128 0x1
	.long	.LASF1000
	.value	0x2dc
	.uleb128 0x1
	.long	.LASF1001
	.value	0x2dd
	.uleb128 0x1
	.long	.LASF1002
	.value	0x2de
	.uleb128 0x1
	.long	.LASF1003
	.value	0x2df
	.uleb128 0x1
	.long	.LASF1004
	.value	0x2e0
	.uleb128 0x1
	.long	.LASF1005
	.value	0x2e1
	.uleb128 0x1
	.long	.LASF1006
	.value	0x2e2
	.uleb128 0x1
	.long	.LASF1007
	.value	0x2e3
	.uleb128 0x1
	.long	.LASF1008
	.value	0x2e4
	.uleb128 0x1
	.long	.LASF1009
	.value	0x2e5
	.uleb128 0x1
	.long	.LASF1010
	.value	0x2e6
	.uleb128 0x1
	.long	.LASF1011
	.value	0x2e7
	.uleb128 0x1
	.long	.LASF1012
	.value	0x2e8
	.uleb128 0x1
	.long	.LASF1013
	.value	0x2e9
	.uleb128 0x1
	.long	.LASF1014
	.value	0x2ea
	.uleb128 0x1
	.long	.LASF1015
	.value	0x2eb
	.uleb128 0x1
	.long	.LASF1016
	.value	0x2ec
	.uleb128 0x1
	.long	.LASF1017
	.value	0x2ed
	.uleb128 0x1
	.long	.LASF1018
	.value	0x2ee
	.uleb128 0x1
	.long	.LASF1019
	.value	0x2ef
	.uleb128 0x1
	.long	.LASF1020
	.value	0x2f0
	.uleb128 0x1
	.long	.LASF1021
	.value	0x2f1
	.uleb128 0x1
	.long	.LASF1022
	.value	0x2f2
	.uleb128 0x1
	.long	.LASF1023
	.value	0x2f3
	.uleb128 0x1
	.long	.LASF1024
	.value	0x2f4
	.uleb128 0x1
	.long	.LASF1025
	.value	0x2f5
	.uleb128 0x1
	.long	.LASF1026
	.value	0x2f6
	.uleb128 0x1
	.long	.LASF1027
	.value	0x2f7
	.uleb128 0x1
	.long	.LASF1028
	.value	0x2f8
	.uleb128 0x1
	.long	.LASF1029
	.value	0x2f9
	.uleb128 0x1
	.long	.LASF1030
	.value	0x2fa
	.uleb128 0x1
	.long	.LASF1031
	.value	0x2fb
	.uleb128 0x1
	.long	.LASF1032
	.value	0x2fc
	.uleb128 0x1
	.long	.LASF1033
	.value	0x2fd
	.uleb128 0x1
	.long	.LASF1034
	.value	0x2fe
	.uleb128 0x1
	.long	.LASF1035
	.value	0x2ff
	.uleb128 0x1
	.long	.LASF1036
	.value	0x300
	.uleb128 0x1
	.long	.LASF1037
	.value	0x301
	.uleb128 0x1
	.long	.LASF1038
	.value	0x302
	.uleb128 0x1
	.long	.LASF1039
	.value	0x303
	.uleb128 0x1
	.long	.LASF1040
	.value	0x304
	.uleb128 0x1
	.long	.LASF1041
	.value	0x305
	.uleb128 0x1
	.long	.LASF1042
	.value	0x306
	.uleb128 0x1
	.long	.LASF1043
	.value	0x307
	.uleb128 0x1
	.long	.LASF1044
	.value	0x308
	.uleb128 0x1
	.long	.LASF1045
	.value	0x309
	.uleb128 0x1
	.long	.LASF1046
	.value	0x30a
	.uleb128 0x1
	.long	.LASF1047
	.value	0x30b
	.uleb128 0x1
	.long	.LASF1048
	.value	0x30c
	.uleb128 0x1
	.long	.LASF1049
	.value	0x30d
	.uleb128 0x1
	.long	.LASF1050
	.value	0x30e
	.uleb128 0x1
	.long	.LASF1051
	.value	0x30f
	.uleb128 0x1
	.long	.LASF1052
	.value	0x310
	.uleb128 0x1
	.long	.LASF1053
	.value	0x311
	.uleb128 0x1
	.long	.LASF1054
	.value	0x312
	.uleb128 0x1
	.long	.LASF1055
	.value	0x313
	.uleb128 0x1
	.long	.LASF1056
	.value	0x314
	.uleb128 0x1
	.long	.LASF1057
	.value	0x315
	.uleb128 0x1
	.long	.LASF1058
	.value	0x316
	.uleb128 0x1
	.long	.LASF1059
	.value	0x317
	.uleb128 0x1
	.long	.LASF1060
	.value	0x318
	.uleb128 0x1
	.long	.LASF1061
	.value	0x319
	.uleb128 0x1
	.long	.LASF1062
	.value	0x31a
	.uleb128 0x1
	.long	.LASF1063
	.value	0x31b
	.uleb128 0x1
	.long	.LASF1064
	.value	0x31c
	.uleb128 0x1
	.long	.LASF1065
	.value	0x31d
	.uleb128 0x1
	.long	.LASF1066
	.value	0x31e
	.uleb128 0x1
	.long	.LASF1067
	.value	0x31f
	.uleb128 0x1
	.long	.LASF1068
	.value	0x320
	.uleb128 0x1
	.long	.LASF1069
	.value	0x321
	.uleb128 0x1
	.long	.LASF1070
	.value	0x322
	.uleb128 0x1
	.long	.LASF1071
	.value	0x323
	.uleb128 0x1
	.long	.LASF1072
	.value	0x324
	.uleb128 0x1
	.long	.LASF1073
	.value	0x325
	.uleb128 0x1
	.long	.LASF1074
	.value	0x326
	.uleb128 0x1
	.long	.LASF1075
	.value	0x327
	.uleb128 0x1
	.long	.LASF1076
	.value	0x328
	.uleb128 0x1
	.long	.LASF1077
	.value	0x329
	.uleb128 0x1
	.long	.LASF1078
	.value	0x32a
	.uleb128 0x1
	.long	.LASF1079
	.value	0x32b
	.uleb128 0x1
	.long	.LASF1080
	.value	0x32c
	.uleb128 0x1
	.long	.LASF1081
	.value	0x32d
	.uleb128 0x1
	.long	.LASF1082
	.value	0x32e
	.uleb128 0x1
	.long	.LASF1083
	.value	0x32f
	.uleb128 0x1
	.long	.LASF1084
	.value	0x330
	.uleb128 0x1
	.long	.LASF1085
	.value	0x331
	.uleb128 0x1
	.long	.LASF1086
	.value	0x332
	.uleb128 0x1
	.long	.LASF1087
	.value	0x333
	.uleb128 0x1
	.long	.LASF1088
	.value	0x334
	.uleb128 0x1
	.long	.LASF1089
	.value	0x335
	.uleb128 0x1
	.long	.LASF1090
	.value	0x336
	.uleb128 0x1
	.long	.LASF1091
	.value	0x337
	.uleb128 0x1
	.long	.LASF1092
	.value	0x338
	.uleb128 0x1
	.long	.LASF1093
	.value	0x339
	.uleb128 0x1
	.long	.LASF1094
	.value	0x33a
	.uleb128 0x1
	.long	.LASF1095
	.value	0x33b
	.uleb128 0x1
	.long	.LASF1096
	.value	0x33c
	.uleb128 0x1
	.long	.LASF1097
	.value	0x33d
	.uleb128 0x1
	.long	.LASF1098
	.value	0x33e
	.uleb128 0x1
	.long	.LASF1099
	.value	0x33f
	.uleb128 0x1
	.long	.LASF1100
	.value	0x340
	.uleb128 0x1
	.long	.LASF1101
	.value	0x341
	.uleb128 0x1
	.long	.LASF1102
	.value	0x342
	.uleb128 0x1
	.long	.LASF1103
	.value	0x343
	.uleb128 0x1
	.long	.LASF1104
	.value	0x344
	.uleb128 0x1
	.long	.LASF1105
	.value	0x345
	.uleb128 0x1
	.long	.LASF1106
	.value	0x346
	.uleb128 0x1
	.long	.LASF1107
	.value	0x347
	.uleb128 0x1
	.long	.LASF1108
	.value	0x348
	.uleb128 0x1
	.long	.LASF1109
	.value	0x349
	.uleb128 0x1
	.long	.LASF1110
	.value	0x34a
	.uleb128 0x1
	.long	.LASF1111
	.value	0x34b
	.uleb128 0x1
	.long	.LASF1112
	.value	0x34c
	.uleb128 0x1
	.long	.LASF1113
	.value	0x34d
	.uleb128 0x1
	.long	.LASF1114
	.value	0x34e
	.uleb128 0x1
	.long	.LASF1115
	.value	0x34f
	.uleb128 0x1
	.long	.LASF1116
	.value	0x350
	.uleb128 0x1
	.long	.LASF1117
	.value	0x351
	.uleb128 0x1
	.long	.LASF1118
	.value	0x352
	.uleb128 0x1
	.long	.LASF1119
	.value	0x353
	.uleb128 0x1
	.long	.LASF1120
	.value	0x354
	.uleb128 0x1
	.long	.LASF1121
	.value	0x355
	.uleb128 0x1
	.long	.LASF1122
	.value	0x356
	.uleb128 0x1
	.long	.LASF1123
	.value	0x357
	.uleb128 0x1
	.long	.LASF1124
	.value	0x358
	.uleb128 0x1
	.long	.LASF1125
	.value	0x359
	.uleb128 0x1
	.long	.LASF1126
	.value	0x35a
	.uleb128 0x1
	.long	.LASF1127
	.value	0x35b
	.uleb128 0x1
	.long	.LASF1128
	.value	0x35c
	.uleb128 0x1
	.long	.LASF1129
	.value	0x35d
	.uleb128 0x1
	.long	.LASF1130
	.value	0x35e
	.uleb128 0x1
	.long	.LASF1131
	.value	0x35f
	.uleb128 0x1
	.long	.LASF1132
	.value	0x360
	.uleb128 0x1
	.long	.LASF1133
	.value	0x361
	.uleb128 0x1
	.long	.LASF1134
	.value	0x362
	.uleb128 0x1
	.long	.LASF1135
	.value	0x363
	.uleb128 0x1
	.long	.LASF1136
	.value	0x364
	.uleb128 0x1
	.long	.LASF1137
	.value	0x365
	.uleb128 0x1
	.long	.LASF1138
	.value	0x366
	.uleb128 0x1
	.long	.LASF1139
	.value	0x367
	.uleb128 0x1
	.long	.LASF1140
	.value	0x368
	.uleb128 0x1
	.long	.LASF1141
	.value	0x369
	.uleb128 0x1
	.long	.LASF1142
	.value	0x36a
	.uleb128 0x1
	.long	.LASF1143
	.value	0x36b
	.uleb128 0x1
	.long	.LASF1144
	.value	0x36c
	.uleb128 0x1
	.long	.LASF1145
	.value	0x36d
	.uleb128 0x1
	.long	.LASF1146
	.value	0x36e
	.uleb128 0x1
	.long	.LASF1147
	.value	0x36f
	.uleb128 0x1
	.long	.LASF1148
	.value	0x370
	.uleb128 0x1
	.long	.LASF1149
	.value	0x371
	.uleb128 0x1
	.long	.LASF1150
	.value	0x372
	.uleb128 0x1
	.long	.LASF1151
	.value	0x373
	.uleb128 0x1
	.long	.LASF1152
	.value	0x374
	.uleb128 0x1
	.long	.LASF1153
	.value	0x375
	.uleb128 0x1
	.long	.LASF1154
	.value	0x376
	.uleb128 0x1
	.long	.LASF1155
	.value	0x377
	.uleb128 0x1
	.long	.LASF1156
	.value	0x378
	.uleb128 0x1
	.long	.LASF1157
	.value	0x379
	.uleb128 0x1
	.long	.LASF1158
	.value	0x37a
	.uleb128 0x1
	.long	.LASF1159
	.value	0x37b
	.uleb128 0x1
	.long	.LASF1160
	.value	0x37c
	.uleb128 0x1
	.long	.LASF1161
	.value	0x37d
	.uleb128 0x1
	.long	.LASF1162
	.value	0x37e
	.uleb128 0x1
	.long	.LASF1163
	.value	0x37f
	.uleb128 0x1
	.long	.LASF1164
	.value	0x380
	.uleb128 0x1
	.long	.LASF1165
	.value	0x381
	.uleb128 0x1
	.long	.LASF1166
	.value	0x382
	.uleb128 0x1
	.long	.LASF1167
	.value	0x383
	.uleb128 0x1
	.long	.LASF1168
	.value	0x384
	.uleb128 0x1
	.long	.LASF1169
	.value	0x385
	.uleb128 0x1
	.long	.LASF1170
	.value	0x386
	.uleb128 0x1
	.long	.LASF1171
	.value	0x387
	.uleb128 0x1
	.long	.LASF1172
	.value	0x388
	.uleb128 0x1
	.long	.LASF1173
	.value	0x389
	.uleb128 0x1
	.long	.LASF1174
	.value	0x38a
	.uleb128 0x1
	.long	.LASF1175
	.value	0x38b
	.uleb128 0x1
	.long	.LASF1176
	.value	0x38c
	.uleb128 0x1
	.long	.LASF1177
	.value	0x38d
	.uleb128 0x1
	.long	.LASF1178
	.value	0x38e
	.uleb128 0x1
	.long	.LASF1179
	.value	0x38f
	.uleb128 0x1
	.long	.LASF1180
	.value	0x390
	.uleb128 0x1
	.long	.LASF1181
	.value	0x391
	.uleb128 0x1
	.long	.LASF1182
	.value	0x392
	.uleb128 0x1
	.long	.LASF1183
	.value	0x393
	.uleb128 0x1
	.long	.LASF1184
	.value	0x394
	.uleb128 0x1
	.long	.LASF1185
	.value	0x395
	.uleb128 0x1
	.long	.LASF1186
	.value	0x396
	.uleb128 0x1
	.long	.LASF1187
	.value	0x397
	.uleb128 0x1
	.long	.LASF1188
	.value	0x398
	.uleb128 0x1
	.long	.LASF1189
	.value	0x399
	.uleb128 0x1
	.long	.LASF1190
	.value	0x39a
	.uleb128 0x1
	.long	.LASF1191
	.value	0x39b
	.uleb128 0x1
	.long	.LASF1192
	.value	0x39c
	.uleb128 0x1
	.long	.LASF1193
	.value	0x39d
	.uleb128 0x1
	.long	.LASF1194
	.value	0x39e
	.uleb128 0x1
	.long	.LASF1195
	.value	0x39f
	.uleb128 0x1
	.long	.LASF1196
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF1197
	.value	0x3a1
	.uleb128 0x1
	.long	.LASF1198
	.value	0x3a2
	.uleb128 0x1
	.long	.LASF1199
	.value	0x3a3
	.uleb128 0x1
	.long	.LASF1200
	.value	0x3a4
	.uleb128 0x1
	.long	.LASF1201
	.value	0x3a5
	.uleb128 0x1
	.long	.LASF1202
	.value	0x3a6
	.uleb128 0x1
	.long	.LASF1203
	.value	0x3a7
	.uleb128 0x1
	.long	.LASF1204
	.value	0x3a8
	.uleb128 0x1
	.long	.LASF1205
	.value	0x3a9
	.uleb128 0x1
	.long	.LASF1206
	.value	0x3aa
	.uleb128 0x1
	.long	.LASF1207
	.value	0x3ab
	.uleb128 0x1
	.long	.LASF1208
	.value	0x3ac
	.uleb128 0x1
	.long	.LASF1209
	.value	0x3ad
	.uleb128 0x1
	.long	.LASF1210
	.value	0x3ae
	.uleb128 0x1
	.long	.LASF1211
	.value	0x3af
	.uleb128 0x1
	.long	.LASF1212
	.value	0x3b0
	.uleb128 0x1
	.long	.LASF1213
	.value	0x3b1
	.uleb128 0x1
	.long	.LASF1214
	.value	0x3b2
	.uleb128 0x1
	.long	.LASF1215
	.value	0x3b3
	.uleb128 0x1
	.long	.LASF1216
	.value	0x3b4
	.uleb128 0x1
	.long	.LASF1217
	.value	0x3b5
	.uleb128 0x1
	.long	.LASF1218
	.value	0x3b6
	.uleb128 0x1
	.long	.LASF1219
	.value	0x3b7
	.uleb128 0x1
	.long	.LASF1220
	.value	0x3b8
	.uleb128 0x1
	.long	.LASF1221
	.value	0x3b9
	.uleb128 0x1
	.long	.LASF1222
	.value	0x3ba
	.uleb128 0x1
	.long	.LASF1223
	.value	0x3bb
	.uleb128 0x1
	.long	.LASF1224
	.value	0x3bc
	.uleb128 0x1
	.long	.LASF1225
	.value	0x3bd
	.uleb128 0x1
	.long	.LASF1226
	.value	0x3be
	.uleb128 0x1
	.long	.LASF1227
	.value	0x3bf
	.uleb128 0x1
	.long	.LASF1228
	.value	0x3c0
	.uleb128 0x1
	.long	.LASF1229
	.value	0x3c1
	.uleb128 0x1
	.long	.LASF1230
	.value	0x3c2
	.uleb128 0x1
	.long	.LASF1231
	.value	0x3c3
	.uleb128 0x1
	.long	.LASF1232
	.value	0x3c4
	.uleb128 0x1
	.long	.LASF1233
	.value	0x3c5
	.uleb128 0x1
	.long	.LASF1234
	.value	0x3c6
	.uleb128 0x1
	.long	.LASF1235
	.value	0x3c7
	.byte	0
	.uleb128 0x17
	.long	.LASF1236
	.byte	0xb
	.value	0x478
	.long	0xa6a
	.uleb128 0x1f
	.byte	0x38
	.byte	0xb
	.value	0x47b
	.long	0x2467
	.uleb128 0x4
	.long	.LASF1237
	.byte	0xb
	.value	0x47d
	.byte	0xf
	.long	0xa5e
	.byte	0
	.uleb128 0x4
	.long	.LASF1238
	.byte	0xb
	.value	0x47e
	.byte	0xa
	.long	0x95
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1239
	.byte	0xb
	.value	0x47f
	.byte	0xa
	.long	0x95
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1240
	.byte	0xb
	.value	0x481
	.byte	0xf
	.long	0x38f
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1241
	.byte	0xb
	.value	0x482
	.byte	0x10
	.long	0x23ef
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1242
	.byte	0xb
	.value	0x483
	.byte	0xa
	.long	0x95
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1243
	.byte	0xb
	.value	0x483
	.byte	0x11
	.long	0x95
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.long	.LASF1244
	.byte	0xb
	.value	0x484
	.long	0x23fb
	.uleb128 0xd
	.long	0x9e
	.long	0x2483
	.uleb128 0xc
	.long	0x43
	.byte	0x89
	.byte	0
	.uleb128 0x24
	.long	.LASF1519
	.byte	0xb
	.value	0x487
	.byte	0xe
	.long	0x2473
	.uleb128 0x2b
	.byte	0x7
	.byte	0x4
	.long	0x79
	.byte	0xb
	.value	0x48b
	.byte	0xe
	.long	0x27dc
	.uleb128 0x2
	.long	.LASF1245
	.byte	0
	.uleb128 0x2
	.long	.LASF1246
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1247
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1248
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1249
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1250
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1251
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1252
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1253
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1254
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1255
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1256
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1257
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1258
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1259
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1260
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1261
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1262
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1263
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1264
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1265
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1266
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1267
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1268
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1269
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1270
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1271
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1272
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1273
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1274
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1275
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1276
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1277
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1278
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1279
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1280
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1281
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1282
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1283
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1284
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1285
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1286
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1287
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1288
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1289
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1290
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1291
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1292
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1293
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1294
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1295
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1296
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1297
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1298
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1299
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1300
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1301
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1302
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1303
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1304
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1305
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1306
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1307
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1308
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1309
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1310
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1311
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1312
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1313
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1314
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1315
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1316
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1317
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1318
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1319
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1320
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1321
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1322
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1323
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1324
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1325
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1326
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1327
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1328
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1329
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1330
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1331
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1332
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1333
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1334
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1335
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1336
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1337
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1338
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1339
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1340
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1341
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1342
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1343
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1344
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1345
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1346
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1347
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1348
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1349
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1350
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1351
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1352
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1353
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1354
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF1355
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF1356
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF1357
	.byte	0x70
	.uleb128 0x2
	.long	.LASF1358
	.byte	0x71
	.uleb128 0x2
	.long	.LASF1359
	.byte	0x72
	.uleb128 0x2
	.long	.LASF1360
	.byte	0x73
	.uleb128 0x2
	.long	.LASF1361
	.byte	0x74
	.uleb128 0x2
	.long	.LASF1362
	.byte	0x75
	.uleb128 0x2
	.long	.LASF1363
	.byte	0x76
	.uleb128 0x2
	.long	.LASF1364
	.byte	0x77
	.uleb128 0x2
	.long	.LASF1365
	.byte	0x78
	.uleb128 0x2
	.long	.LASF1366
	.byte	0x79
	.uleb128 0x2
	.long	.LASF1367
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF1368
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF1369
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF1370
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF1371
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF1372
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF1373
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1374
	.byte	0x81
	.uleb128 0x2
	.long	.LASF1375
	.byte	0x82
	.uleb128 0x2
	.long	.LASF1376
	.byte	0x83
	.uleb128 0x2
	.long	.LASF1377
	.byte	0x84
	.uleb128 0x2
	.long	.LASF1378
	.byte	0x85
	.uleb128 0x2
	.long	.LASF1379
	.byte	0x86
	.uleb128 0x2
	.long	.LASF1380
	.byte	0x87
	.uleb128 0x2
	.long	.LASF1381
	.byte	0x88
	.uleb128 0x2
	.long	.LASF1382
	.byte	0x89
	.byte	0
	.uleb128 0x17
	.long	.LASF1383
	.byte	0xb
	.value	0x517
	.long	0x2490
	.uleb128 0x1f
	.byte	0x5c
	.byte	0xb
	.value	0x519
	.long	0x2934
	.uleb128 0x4
	.long	.LASF1384
	.byte	0xb
	.value	0x51b
	.byte	0x9
	.long	0x8e
	.byte	0
	.uleb128 0x4
	.long	.LASF1385
	.byte	0xb
	.value	0x51c
	.byte	0x9
	.long	0x8e
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1386
	.byte	0xb
	.value	0x51d
	.byte	0x9
	.long	0x8e
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1387
	.byte	0xb
	.value	0x51e
	.byte	0x9
	.long	0x8e
	.byte	0xc
	.uleb128 0x4
	.long	.LASF1388
	.byte	0xb
	.value	0x51f
	.byte	0x9
	.long	0x8e
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1389
	.byte	0xb
	.value	0x520
	.byte	0x9
	.long	0x8e
	.byte	0x14
	.uleb128 0x4
	.long	.LASF1390
	.byte	0xb
	.value	0x521
	.byte	0x9
	.long	0x8e
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1391
	.byte	0xb
	.value	0x522
	.byte	0x9
	.long	0x8e
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF1392
	.byte	0xb
	.value	0x523
	.byte	0x9
	.long	0x8e
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1393
	.byte	0xb
	.value	0x524
	.byte	0x9
	.long	0x8e
	.byte	0x24
	.uleb128 0x4
	.long	.LASF1394
	.byte	0xb
	.value	0x525
	.byte	0x9
	.long	0x8e
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1395
	.byte	0xb
	.value	0x526
	.byte	0x9
	.long	0x8e
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1396
	.byte	0xb
	.value	0x527
	.byte	0x9
	.long	0x8e
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1397
	.byte	0xb
	.value	0x528
	.byte	0x9
	.long	0x8e
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1398
	.byte	0xb
	.value	0x529
	.byte	0x9
	.long	0x8e
	.byte	0x38
	.uleb128 0x4
	.long	.LASF1399
	.byte	0xb
	.value	0x52a
	.byte	0x9
	.long	0x8e
	.byte	0x3c
	.uleb128 0x4
	.long	.LASF1400
	.byte	0xb
	.value	0x52b
	.byte	0x9
	.long	0x8e
	.byte	0x40
	.uleb128 0x4
	.long	.LASF1401
	.byte	0xb
	.value	0x52c
	.byte	0x9
	.long	0x8e
	.byte	0x44
	.uleb128 0x4
	.long	.LASF1402
	.byte	0xb
	.value	0x52d
	.byte	0x9
	.long	0x8e
	.byte	0x48
	.uleb128 0x4
	.long	.LASF1403
	.byte	0xb
	.value	0x52e
	.byte	0x9
	.long	0x8e
	.byte	0x4c
	.uleb128 0x4
	.long	.LASF1404
	.byte	0xb
	.value	0x52f
	.byte	0x9
	.long	0x8e
	.byte	0x50
	.uleb128 0x4
	.long	.LASF104
	.byte	0xb
	.value	0x530
	.byte	0x9
	.long	0x8e
	.byte	0x54
	.uleb128 0x4
	.long	.LASF1405
	.byte	0xb
	.value	0x531
	.byte	0x9
	.long	0x8e
	.byte	0x58
	.byte	0
	.uleb128 0x17
	.long	.LASF1406
	.byte	0xb
	.value	0x533
	.long	0x27e8
	.uleb128 0x1a
	.long	.LASF1408
	.byte	0xe0
	.byte	0xc
	.byte	0xcf
	.long	0x2b17
	.uleb128 0x3
	.long	.LASF1409
	.byte	0xc
	.byte	0xd2
	.byte	0x10
	.long	0x3e0
	.byte	0
	.uleb128 0x7
	.string	"x"
	.byte	0xc
	.byte	0xd5
	.byte	0xe
	.long	0xc2
	.byte	0x18
	.uleb128 0x7
	.string	"y"
	.byte	0xc
	.byte	0xd6
	.byte	0xe
	.long	0xc2
	.byte	0x1c
	.uleb128 0x7
	.string	"z"
	.byte	0xc
	.byte	0xd7
	.byte	0xe
	.long	0xc2
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1410
	.byte	0xc
	.byte	0xda
	.byte	0x14
	.long	0x2b17
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1411
	.byte	0xc
	.byte	0xdb
	.byte	0x14
	.long	0x2b17
	.byte	0x30
	.uleb128 0x3
	.long	.LASF117
	.byte	0xc
	.byte	0xde
	.byte	0xe
	.long	0x304
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1237
	.byte	0xc
	.byte	0xdf
	.byte	0x12
	.long	0xa5e
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1238
	.byte	0xc
	.byte	0xe0
	.byte	0xb
	.long	0x8e
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1412
	.byte	0xc
	.byte	0xe4
	.byte	0x14
	.long	0x2b17
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1413
	.byte	0xc
	.byte	0xe5
	.byte	0x14
	.long	0x2b17
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1414
	.byte	0xc
	.byte	0xe7
	.byte	0x19
	.long	0x2b50
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1415
	.byte	0xc
	.byte	0xea
	.byte	0xe
	.long	0xc2
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1416
	.byte	0xc
	.byte	0xeb
	.byte	0xe
	.long	0xc2
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1400
	.byte	0xc
	.byte	0xee
	.byte	0xe
	.long	0xc2
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1401
	.byte	0xc
	.byte	0xef
	.byte	0xe
	.long	0xc2
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1417
	.byte	0xc
	.byte	0xf2
	.byte	0xe
	.long	0xc2
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1418
	.byte	0xc
	.byte	0xf3
	.byte	0xe
	.long	0xc2
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1419
	.byte	0xc
	.byte	0xf4
	.byte	0xe
	.long	0xc2
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1420
	.byte	0xc
	.byte	0xf7
	.byte	0xb
	.long	0x8e
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF125
	.byte	0xc
	.byte	0xf9
	.byte	0x11
	.long	0x27dc
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1421
	.byte	0xc
	.byte	0xfa
	.byte	0x12
	.long	0x2b55
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1239
	.byte	0xc
	.byte	0xfc
	.byte	0xb
	.long	0x8e
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1422
	.byte	0xc
	.byte	0xfd
	.byte	0xf
	.long	0x2b5a
	.byte	0x98
	.uleb128 0x3
	.long	.LASF104
	.byte	0xc
	.byte	0xfe
	.byte	0xb
	.long	0x8e
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1423
	.byte	0xc
	.byte	0xff
	.byte	0xb
	.long	0x8e
	.byte	0xa4
	.uleb128 0x4
	.long	.LASF1424
	.byte	0xc
	.value	0x102
	.byte	0xb
	.long	0x8e
	.byte	0xa8
	.uleb128 0x4
	.long	.LASF1425
	.byte	0xc
	.value	0x103
	.byte	0xb
	.long	0x8e
	.byte	0xac
	.uleb128 0x4
	.long	.LASF1426
	.byte	0xc
	.value	0x107
	.byte	0x14
	.long	0x2b17
	.byte	0xb0
	.uleb128 0x4
	.long	.LASF1389
	.byte	0xc
	.value	0x10b
	.byte	0xb
	.long	0x8e
	.byte	0xb8
	.uleb128 0x4
	.long	.LASF1427
	.byte	0xc
	.value	0x10f
	.byte	0xb
	.long	0x8e
	.byte	0xbc
	.uleb128 0x4
	.long	.LASF1428
	.byte	0xc
	.value	0x113
	.byte	0x16
	.long	0x2d34
	.byte	0xc0
	.uleb128 0x4
	.long	.LASF1429
	.byte	0xc
	.value	0x116
	.byte	0xb
	.long	0x8e
	.byte	0xc8
	.uleb128 0x4
	.long	.LASF1430
	.byte	0xc
	.value	0x119
	.byte	0x11
	.long	0x703
	.byte	0xcc
	.uleb128 0x4
	.long	.LASF1431
	.byte	0xc
	.value	0x11c
	.byte	0x14
	.long	0x2b17
	.byte	0xd8
	.byte	0
	.uleb128 0x8
	.long	0x2940
	.uleb128 0x1a
	.long	.LASF1432
	.byte	0x10
	.byte	0xd
	.byte	0xe3
	.long	0x2b50
	.uleb128 0x3
	.long	.LASF102
	.byte	0xd
	.byte	0xe5
	.byte	0xf
	.long	0x2fcd
	.byte	0
	.uleb128 0x3
	.long	.LASF1433
	.byte	0xd
	.byte	0xe6
	.byte	0xb
	.long	0x87
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1434
	.byte	0xd
	.byte	0xe7
	.byte	0xb
	.long	0x87
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x2b1c
	.uleb128 0x8
	.long	0x2934
	.uleb128 0x8
	.long	0x2467
	.uleb128 0x2c
	.long	.LASF1435
	.value	0x140
	.byte	0xe
	.byte	0x53
	.byte	0x10
	.long	0x2d34
	.uleb128 0x7
	.string	"mo"
	.byte	0xe
	.byte	0x55
	.byte	0xe
	.long	0x2e8c
	.byte	0
	.uleb128 0x3
	.long	.LASF1436
	.byte	0xe
	.byte	0x56
	.byte	0x13
	.long	0x31c3
	.byte	0x8
	.uleb128 0x7
	.string	"cmd"
	.byte	0xe
	.byte	0x57
	.byte	0xf
	.long	0x2e3
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1437
	.byte	0xe
	.byte	0x5c
	.byte	0xe
	.long	0xc2
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1438
	.byte	0xe
	.byte	0x5e
	.byte	0xe
	.long	0xc2
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1439
	.byte	0xe
	.byte	0x60
	.byte	0x16
	.long	0xc2
	.byte	0x1c
	.uleb128 0x7
	.string	"bob"
	.byte	0xe
	.byte	0x62
	.byte	0x16
	.long	0xc2
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1423
	.byte	0xe
	.byte	0x66
	.byte	0xb
	.long	0x8e
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1440
	.byte	0xe
	.byte	0x67
	.byte	0xb
	.long	0x8e
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1441
	.byte	0xe
	.byte	0x69
	.byte	0xb
	.long	0x8e
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1442
	.byte	0xe
	.byte	0x6c
	.byte	0xb
	.long	0x31cf
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1443
	.byte	0xe
	.byte	0x6d
	.byte	0xe
	.long	0x31df
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1444
	.byte	0xe
	.byte	0x6e
	.byte	0xe
	.long	0x274
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1445
	.byte	0xe
	.byte	0x71
	.byte	0xb
	.long	0x2e91
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1446
	.byte	0xe
	.byte	0x72
	.byte	0x12
	.long	0x1e7
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1447
	.byte	0xe
	.byte	0x75
	.byte	0x12
	.long	0x1e7
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1448
	.byte	0xe
	.byte	0x77
	.byte	0xe
	.long	0x31ef
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1449
	.byte	0xe
	.byte	0x78
	.byte	0xb
	.long	0x2e91
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1450
	.byte	0xe
	.byte	0x79
	.byte	0xb
	.long	0x2e91
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1451
	.byte	0xe
	.byte	0x7c
	.byte	0xb
	.long	0x8e
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1452
	.byte	0xe
	.byte	0x7d
	.byte	0xb
	.long	0x8e
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1453
	.byte	0xe
	.byte	0x81
	.byte	0xb
	.long	0x8e
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1454
	.byte	0xe
	.byte	0x84
	.byte	0xb
	.long	0x8e
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1455
	.byte	0xe
	.byte	0x87
	.byte	0xb
	.long	0x8e
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1456
	.byte	0xe
	.byte	0x88
	.byte	0xb
	.long	0x8e
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1457
	.byte	0xe
	.byte	0x89
	.byte	0xb
	.long	0x8e
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1458
	.byte	0xe
	.byte	0x8c
	.byte	0xc
	.long	0x9e
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1459
	.byte	0xe
	.byte	0x8f
	.byte	0xb
	.long	0x8e
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1460
	.byte	0xe
	.byte	0x90
	.byte	0xb
	.long	0x8e
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1461
	.byte	0xe
	.byte	0x93
	.byte	0xe
	.long	0x2e8c
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1462
	.byte	0xe
	.byte	0x96
	.byte	0xb
	.long	0x8e
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1463
	.byte	0xe
	.byte	0x9a
	.byte	0xb
	.long	0x8e
	.byte	0xfc
	.uleb128 0x20
	.long	.LASF1464
	.byte	0x9e
	.byte	0xb
	.long	0x8e
	.value	0x100
	.uleb128 0x20
	.long	.LASF1465
	.byte	0xa1
	.byte	0xf
	.long	0x31ff
	.value	0x108
	.uleb128 0x20
	.long	.LASF1466
	.byte	0xa4
	.byte	0xe
	.long	0x274
	.value	0x138
	.byte	0
	.uleb128 0x8
	.long	0x2b5f
	.uleb128 0x17
	.long	.LASF1467
	.byte	0xc
	.value	0x11e
	.long	0x2940
	.uleb128 0xe
	.byte	0x8
	.byte	0xd
	.byte	0x47
	.long	0x2d64
	.uleb128 0x7
	.string	"x"
	.byte	0xd
	.byte	0x49
	.byte	0xd
	.long	0xc2
	.byte	0
	.uleb128 0x7
	.string	"y"
	.byte	0xd
	.byte	0x4a
	.byte	0xd
	.long	0xc2
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	.LASF1468
	.byte	0xd
	.byte	0x4c
	.byte	0x3
	.long	0x2d45
	.uleb128 0xe
	.byte	0x28
	.byte	0xd
	.byte	0x58
	.long	0x2da7
	.uleb128 0x3
	.long	.LASF1409
	.byte	0xd
	.byte	0x5a
	.byte	0x10
	.long	0x3e0
	.byte	0
	.uleb128 0x7
	.string	"x"
	.byte	0xd
	.byte	0x5b
	.byte	0xe
	.long	0xc2
	.byte	0x18
	.uleb128 0x7
	.string	"y"
	.byte	0xd
	.byte	0x5c
	.byte	0xe
	.long	0xc2
	.byte	0x1c
	.uleb128 0x7
	.string	"z"
	.byte	0xd
	.byte	0x5d
	.byte	0xe
	.long	0xc2
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.long	.LASF1469
	.byte	0xd
	.byte	0x5f
	.byte	0x3
	.long	0x2d70
	.uleb128 0xe
	.byte	0x80
	.byte	0xd
	.byte	0x65
	.long	0x2e8c
	.uleb128 0x3
	.long	.LASF108
	.byte	0xd
	.byte	0x67
	.byte	0xd
	.long	0xc2
	.byte	0
	.uleb128 0x3
	.long	.LASF109
	.byte	0xd
	.byte	0x68
	.byte	0xd
	.long	0xc2
	.byte	0x4
	.uleb128 0x3
	.long	.LASF110
	.byte	0xd
	.byte	0x69
	.byte	0xb
	.long	0x87
	.byte	0x8
	.uleb128 0x3
	.long	.LASF111
	.byte	0xd
	.byte	0x6a
	.byte	0xb
	.long	0x87
	.byte	0xa
	.uleb128 0x3
	.long	.LASF112
	.byte	0xd
	.byte	0x6b
	.byte	0xb
	.long	0x87
	.byte	0xc
	.uleb128 0x3
	.long	.LASF105
	.byte	0xd
	.byte	0x6c
	.byte	0xb
	.long	0x87
	.byte	0xe
	.uleb128 0x7
	.string	"tag"
	.byte	0xd
	.byte	0x6d
	.byte	0xb
	.long	0x87
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1470
	.byte	0xd
	.byte	0x70
	.byte	0xa
	.long	0x8e
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1471
	.byte	0xd
	.byte	0x73
	.byte	0xd
	.long	0x2e8c
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1472
	.byte	0xd
	.byte	0x76
	.byte	0xa
	.long	0x2e91
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1473
	.byte	0xd
	.byte	0x79
	.byte	0x11
	.long	0x2da7
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1420
	.byte	0xd
	.byte	0x7c
	.byte	0xa
	.long	0x8e
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1474
	.byte	0xd
	.byte	0x7f
	.byte	0xd
	.long	0x2e8c
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1475
	.byte	0xd
	.byte	0x82
	.byte	0xb
	.long	0x9c
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1476
	.byte	0xd
	.byte	0x84
	.byte	0xb
	.long	0x8e
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1477
	.byte	0xd
	.byte	0x85
	.byte	0x15
	.long	0x2f60
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.long	0x2d39
	.uleb128 0xd
	.long	0x8e
	.long	0x2ea1
	.uleb128 0xc
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.long	.LASF1478
	.byte	0x58
	.byte	0xd
	.byte	0xb3
	.long	0x2f60
	.uleb128 0x7
	.string	"v1"
	.byte	0xd
	.byte	0xb6
	.byte	0xf
	.long	0x300f
	.byte	0
	.uleb128 0x7
	.string	"v2"
	.byte	0xd
	.byte	0xb7
	.byte	0xf
	.long	0x300f
	.byte	0x8
	.uleb128 0x7
	.string	"dx"
	.byte	0xd
	.byte	0xba
	.byte	0xd
	.long	0xc2
	.byte	0x10
	.uleb128 0x7
	.string	"dy"
	.byte	0xd
	.byte	0xbb
	.byte	0xd
	.long	0xc2
	.byte	0x14
	.uleb128 0x3
	.long	.LASF104
	.byte	0xd
	.byte	0xbe
	.byte	0xb
	.long	0x87
	.byte	0x18
	.uleb128 0x3
	.long	.LASF105
	.byte	0xd
	.byte	0xbf
	.byte	0xb
	.long	0x87
	.byte	0x1a
	.uleb128 0x7
	.string	"tag"
	.byte	0xd
	.byte	0xc0
	.byte	0xb
	.long	0x87
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF106
	.byte	0xd
	.byte	0xc4
	.byte	0xb
	.long	0x51e
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF122
	.byte	0xd
	.byte	0xc8
	.byte	0xd
	.long	0x3014
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1479
	.byte	0xd
	.byte	0xcb
	.byte	0x11
	.long	0x3003
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1480
	.byte	0xd
	.byte	0xcf
	.byte	0xf
	.long	0x2fcd
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1481
	.byte	0xd
	.byte	0xd0
	.byte	0xf
	.long	0x2fcd
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1420
	.byte	0xd
	.byte	0xd3
	.byte	0xa
	.long	0x8e
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1475
	.byte	0xd
	.byte	0xd6
	.byte	0xb
	.long	0x9c
	.byte	0x50
	.byte	0
	.uleb128 0x8
	.long	0x2f65
	.uleb128 0x8
	.long	0x2ea1
	.uleb128 0x6
	.long	.LASF1482
	.byte	0xd
	.byte	0x87
	.byte	0x3
	.long	0x2db3
	.uleb128 0xe
	.byte	0x18
	.byte	0xd
	.byte	0x90
	.long	0x2fcd
	.uleb128 0x3
	.long	.LASF97
	.byte	0xd
	.byte	0x93
	.byte	0xd
	.long	0xc2
	.byte	0
	.uleb128 0x3
	.long	.LASF98
	.byte	0xd
	.byte	0x96
	.byte	0xd
	.long	0xc2
	.byte	0x4
	.uleb128 0x3
	.long	.LASF99
	.byte	0xd
	.byte	0x9a
	.byte	0xb
	.long	0x87
	.byte	0x8
	.uleb128 0x3
	.long	.LASF100
	.byte	0xd
	.byte	0x9b
	.byte	0xb
	.long	0x87
	.byte	0xa
	.uleb128 0x3
	.long	.LASF101
	.byte	0xd
	.byte	0x9c
	.byte	0xb
	.long	0x87
	.byte	0xc
	.uleb128 0x3
	.long	.LASF102
	.byte	0xd
	.byte	0x9f
	.byte	0xf
	.long	0x2fcd
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	0x2f6a
	.uleb128 0x6
	.long	.LASF1483
	.byte	0xd
	.byte	0xa1
	.byte	0x3
	.long	0x2f76
	.uleb128 0xf
	.long	0x79
	.byte	0xd
	.byte	0xa9
	.byte	0x1
	.long	0x3003
	.uleb128 0x2
	.long	.LASF1484
	.byte	0
	.uleb128 0x2
	.long	.LASF1485
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1486
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1487
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF1488
	.byte	0xd
	.byte	0xaf
	.byte	0x3
	.long	0x2fde
	.uleb128 0x8
	.long	0x2d64
	.uleb128 0xd
	.long	0xc2
	.long	0x3024
	.uleb128 0xc
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF1489
	.byte	0xd
	.byte	0xd7
	.byte	0x3
	.long	0x2ea1
	.uleb128 0x6
	.long	.LASF1490
	.byte	0xd
	.byte	0xe9
	.byte	0x3
	.long	0x2b1c
	.uleb128 0xe
	.byte	0x38
	.byte	0xd
	.byte	0xf0
	.long	0x30ac
	.uleb128 0x7
	.string	"v1"
	.byte	0xd
	.byte	0xf2
	.byte	0xf
	.long	0x300f
	.byte	0
	.uleb128 0x7
	.string	"v2"
	.byte	0xd
	.byte	0xf3
	.byte	0xf
	.long	0x300f
	.byte	0x8
	.uleb128 0x3
	.long	.LASF120
	.byte	0xd
	.byte	0xf5
	.byte	0xd
	.long	0xc2
	.byte	0x10
	.uleb128 0x3
	.long	.LASF117
	.byte	0xd
	.byte	0xf7
	.byte	0xd
	.long	0x304
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1491
	.byte	0xd
	.byte	0xf9
	.byte	0xd
	.long	0x30ac
	.byte	0x18
	.uleb128 0x3
	.long	.LASF118
	.byte	0xd
	.byte	0xfa
	.byte	0xd
	.long	0x30b1
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1480
	.byte	0xd
	.byte	0xff
	.byte	0xf
	.long	0x2fcd
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1481
	.byte	0xd
	.value	0x100
	.byte	0xf
	.long	0x2fcd
	.byte	0x30
	.byte	0
	.uleb128 0x8
	.long	0x2fd2
	.uleb128 0x8
	.long	0x3024
	.uleb128 0x17
	.long	.LASF1492
	.byte	0xd
	.value	0x102
	.long	0x303c
	.uleb128 0x1f
	.byte	0x34
	.byte	0xd
	.value	0x109
	.long	0x3112
	.uleb128 0x1b
	.string	"x"
	.value	0x10c
	.long	0xc2
	.byte	0
	.uleb128 0x1b
	.string	"y"
	.value	0x10d
	.long	0xc2
	.byte	0x4
	.uleb128 0x1b
	.string	"dx"
	.value	0x10e
	.long	0xc2
	.byte	0x8
	.uleb128 0x1b
	.string	"dy"
	.value	0x10f
	.long	0xc2
	.byte	0xc
	.uleb128 0x4
	.long	.LASF122
	.byte	0xd
	.value	0x112
	.byte	0xd
	.long	0x3112
	.byte	0x10
	.uleb128 0x4
	.long	.LASF123
	.byte	0xd
	.value	0x115
	.byte	0x14
	.long	0x6a1
	.byte	0x30
	.byte	0
	.uleb128 0xd
	.long	0xc2
	.long	0x3128
	.uleb128 0xc
	.long	0x43
	.byte	0x1
	.uleb128 0xc
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.long	.LASF1493
	.byte	0xd
	.value	0x117
	.long	0x30c2
	.uleb128 0x8
	.long	0x30b6
	.uleb128 0x8
	.long	0x87
	.uleb128 0xf
	.long	0x79
	.byte	0xf
	.byte	0x3d
	.byte	0x1
	.long	0x315d
	.uleb128 0x2
	.long	.LASF1494
	.byte	0
	.uleb128 0x2
	.long	.LASF1495
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1496
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.byte	0x18
	.byte	0xf
	.byte	0x44
	.long	0x3198
	.uleb128 0x3
	.long	.LASF1422
	.byte	0xf
	.byte	0x46
	.byte	0xe
	.long	0x2b5a
	.byte	0
	.uleb128 0x3
	.long	.LASF1239
	.byte	0xf
	.byte	0x47
	.byte	0xa
	.long	0x8e
	.byte	0x8
	.uleb128 0x7
	.string	"sx"
	.byte	0xf
	.byte	0x48
	.byte	0xd
	.long	0xc2
	.byte	0xc
	.uleb128 0x7
	.string	"sy"
	.byte	0xf
	.byte	0x49
	.byte	0xd
	.long	0xc2
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	.LASF1497
	.byte	0xf
	.byte	0x4b
	.byte	0x3
	.long	0x315d
	.uleb128 0xf
	.long	0x79
	.byte	0xe
	.byte	0x36
	.byte	0x1
	.long	0x31c3
	.uleb128 0x2
	.long	.LASF1498
	.byte	0
	.uleb128 0x2
	.long	.LASF1499
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1500
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.long	.LASF1501
	.byte	0xe
	.byte	0x3e
	.byte	0x3
	.long	0x31a4
	.uleb128 0xd
	.long	0x8e
	.long	0x31df
	.uleb128 0xc
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.long	0x274
	.long	0x31ef
	.uleb128 0xc
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.long	0x274
	.long	0x31ff
	.uleb128 0xc
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	0x3198
	.long	0x320f
	.uleb128 0xc
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.long	.LASF1502
	.byte	0xe
	.byte	0xa6
	.byte	0x3
	.long	0x2b5f
	.uleb128 0xe
	.byte	0x28
	.byte	0xe
	.byte	0xad
	.long	0x327e
	.uleb128 0x7
	.string	"in"
	.byte	0xe
	.byte	0xaf
	.byte	0xd
	.long	0x274
	.byte	0
	.uleb128 0x3
	.long	.LASF1503
	.byte	0xe
	.byte	0xb2
	.byte	0xa
	.long	0x8e
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1504
	.byte	0xe
	.byte	0xb3
	.byte	0xa
	.long	0x8e
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1505
	.byte	0xe
	.byte	0xb4
	.byte	0xa
	.long	0x8e
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1506
	.byte	0xe
	.byte	0xb5
	.byte	0xa
	.long	0x8e
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1445
	.byte	0xe
	.byte	0xb6
	.byte	0xa
	.long	0x2e91
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1507
	.byte	0xe
	.byte	0xb7
	.byte	0xa
	.long	0x8e
	.byte	0x24
	.byte	0
	.uleb128 0x6
	.long	.LASF1508
	.byte	0xe
	.byte	0xb9
	.byte	0x3
	.long	0x321b
	.uleb128 0xe
	.byte	0xc8
	.byte	0xe
	.byte	0xbb
	.long	0x3322
	.uleb128 0x3
	.long	.LASF1509
	.byte	0xe
	.byte	0xbd
	.byte	0xa
	.long	0x8e
	.byte	0
	.uleb128 0x3
	.long	.LASF1466
	.byte	0xe
	.byte	0xc0
	.byte	0xd
	.long	0x274
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1510
	.byte	0xe
	.byte	0xc3
	.byte	0xa
	.long	0x8e
	.byte	0x8
	.uleb128 0x3
	.long	.LASF82
	.byte	0xe
	.byte	0xc4
	.byte	0xa
	.long	0x8e
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1511
	.byte	0xe
	.byte	0xc6
	.byte	0xa
	.long	0x8e
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1512
	.byte	0xe
	.byte	0xc7
	.byte	0xa
	.long	0x8e
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1513
	.byte	0xe
	.byte	0xc8
	.byte	0xa
	.long	0x8e
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1514
	.byte	0xe
	.byte	0xc9
	.byte	0xa
	.long	0x8e
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1515
	.byte	0xe
	.byte	0xcc
	.byte	0xa
	.long	0x8e
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1516
	.byte	0xe
	.byte	0xcf
	.byte	0xa
	.long	0x8e
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1517
	.byte	0xe
	.byte	0xd1
	.byte	0x16
	.long	0x3322
	.byte	0x28
	.byte	0
	.uleb128 0xd
	.long	0x327e
	.long	0x3332
	.uleb128 0xc
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF1518
	.byte	0xe
	.byte	0xd3
	.byte	0x3
	.long	0x328a
	.uleb128 0x5
	.long	.LASF1520
	.byte	0x10
	.byte	0x4e
	.byte	0xd
	.long	0x8e
	.uleb128 0x5
	.long	.LASF1521
	.byte	0x10
	.byte	0x4f
	.byte	0x12
	.long	0x300f
	.uleb128 0x5
	.long	.LASF114
	.byte	0x10
	.byte	0x51
	.byte	0xd
	.long	0x8e
	.uleb128 0x5
	.long	.LASF1522
	.byte	0x10
	.byte	0x52
	.byte	0x10
	.long	0x3134
	.uleb128 0x5
	.long	.LASF1523
	.byte	0x10
	.byte	0x54
	.byte	0xd
	.long	0x8e
	.uleb128 0x5
	.long	.LASF1524
	.byte	0x10
	.byte	0x55
	.byte	0x12
	.long	0x2fcd
	.uleb128 0x5
	.long	.LASF1525
	.byte	0x10
	.byte	0x57
	.byte	0xd
	.long	0x8e
	.uleb128 0x5
	.long	.LASF1526
	.byte	0x10
	.byte	0x58
	.byte	0x15
	.long	0x339e
	.uleb128 0x8
	.long	0x3030
	.uleb128 0x5
	.long	.LASF1527
	.byte	0x10
	.byte	0x5a
	.byte	0xd
	.long	0x8e
	.uleb128 0x5
	.long	.LASF1528
	.byte	0x10
	.byte	0x5b
	.byte	0x11
	.long	0x33bb
	.uleb128 0x8
	.long	0x3128
	.uleb128 0x5
	.long	.LASF1433
	.byte	0x10
	.byte	0x5d
	.byte	0xd
	.long	0x8e
	.uleb128 0x5
	.long	.LASF1477
	.byte	0x10
	.byte	0x5e
	.byte	0x11
	.long	0x30b1
	.uleb128 0x5
	.long	.LASF1529
	.byte	0x10
	.byte	0x60
	.byte	0xd
	.long	0x8e
	.uleb128 0x5
	.long	.LASF1530
	.byte	0x10
	.byte	0x61
	.byte	0x11
	.long	0x30ac
	.uleb128 0x8
	.long	0x280
	.uleb128 0x5
	.long	.LASF1531
	.byte	0x11
	.byte	0x67
	.byte	0xd
	.long	0x8e
	.uleb128 0x5
	.long	.LASF1532
	.byte	0x11
	.byte	0x68
	.byte	0xd
	.long	0x8e
	.uleb128 0x5
	.long	.LASF1533
	.byte	0x11
	.byte	0xf6
	.byte	0xf
	.long	0x33f0
	.uleb128 0x5
	.long	.LASF1534
	.byte	0x11
	.byte	0xf7
	.byte	0x10
	.long	0x3139
	.uleb128 0x5
	.long	.LASF1535
	.byte	0x11
	.byte	0xf8
	.byte	0x10
	.long	0x3139
	.uleb128 0x5
	.long	.LASF1536
	.byte	0x11
	.byte	0xf9
	.byte	0xd
	.long	0x8e
	.uleb128 0x5
	.long	.LASF1537
	.byte	0x11
	.byte	0xfa
	.byte	0xd
	.long	0x8e
	.uleb128 0x5
	.long	.LASF1538
	.byte	0x11
	.byte	0xfb
	.byte	0x11
	.long	0xc2
	.uleb128 0x5
	.long	.LASF1539
	.byte	0x11
	.byte	0xfc
	.byte	0x11
	.long	0xc2
	.uleb128 0x5
	.long	.LASF1540
	.byte	0x11
	.byte	0xfd
	.byte	0x12
	.long	0x346d
	.uleb128 0x8
	.long	0x2e8c
	.uleb128 0xd
	.long	0x4a
	.long	0x3482
	.uleb128 0xc
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF1541
	.byte	0x12
	.byte	0x3c
	.byte	0x13
	.long	0x11e
	.uleb128 0x5
	.long	.LASF1542
	.byte	0x12
	.byte	0x60
	.byte	0x11
	.long	0x274
	.uleb128 0x5
	.long	.LASF1543
	.byte	0x12
	.byte	0x9e
	.byte	0xd
	.long	0x8e
	.uleb128 0x5
	.long	.LASF1544
	.byte	0x12
	.byte	0xa6
	.byte	0xd
	.long	0x8e
	.uleb128 0x5
	.long	.LASF1545
	.byte	0x12
	.byte	0xa7
	.byte	0xc
	.long	0x8e
	.uleb128 0x5
	.long	.LASF1546
	.byte	0x12
	.byte	0xa8
	.byte	0xc
	.long	0x8e
	.uleb128 0x5
	.long	.LASF1547
	.byte	0x12
	.byte	0xac
	.byte	0xd
	.long	0x8e
	.uleb128 0xd
	.long	0x320f
	.long	0x34e6
	.uleb128 0xc
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF1548
	.byte	0x12
	.byte	0xd4
	.byte	0x11
	.long	0x34d6
	.uleb128 0xd
	.long	0x274
	.long	0x3502
	.uleb128 0xc
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF1549
	.byte	0x12
	.byte	0xd7
	.byte	0x12
	.long	0x34f2
	.uleb128 0xd
	.long	0x703
	.long	0x351e
	.uleb128 0xc
	.long	0x43
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.long	.LASF1550
	.byte	0x12
	.byte	0xdc
	.byte	0x19
	.long	0x350e
	.uleb128 0x5
	.long	.LASF1551
	.byte	0x12
	.byte	0xdd
	.byte	0x15
	.long	0x3536
	.uleb128 0x8
	.long	0x703
	.uleb128 0xd
	.long	0x703
	.long	0x354b
	.uleb128 0xc
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF1552
	.byte	0x12
	.byte	0xe0
	.byte	0x19
	.long	0x353b
	.uleb128 0x5
	.long	.LASF1553
	.byte	0x12
	.byte	0xe4
	.byte	0x1a
	.long	0x3332
	.uleb128 0x5
	.long	.LASF1554
	.byte	0x12
	.byte	0xf8
	.byte	0x19
	.long	0x274
	.uleb128 0x24
	.long	.LASF1555
	.byte	0x12
	.value	0x104
	.byte	0x19
	.long	0x8e
	.uleb128 0xa
	.long	0x333e
	.byte	0x38
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	numvertexes
	.uleb128 0xa
	.long	0x334a
	.byte	0x39
	.byte	0xb
	.uleb128 0x9
	.byte	0x3
	.quad	vertexes
	.uleb128 0xa
	.long	0x3356
	.byte	0x3b
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	numsegs
	.uleb128 0xa
	.long	0x3362
	.byte	0x3c
	.byte	0x9
	.uleb128 0x9
	.byte	0x3
	.quad	segs
	.uleb128 0xa
	.long	0x336e
	.byte	0x3e
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	numsectors
	.uleb128 0xa
	.long	0x337a
	.byte	0x3f
	.byte	0xb
	.uleb128 0x9
	.byte	0x3
	.quad	sectors
	.uleb128 0xa
	.long	0x3386
	.byte	0x41
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	numsubsectors
	.uleb128 0xa
	.long	0x3392
	.byte	0x42
	.byte	0xe
	.uleb128 0x9
	.byte	0x3
	.quad	subsectors
	.uleb128 0xa
	.long	0x33a3
	.byte	0x44
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	numnodes
	.uleb128 0xa
	.long	0x33af
	.byte	0x45
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	nodes
	.uleb128 0xa
	.long	0x33c0
	.byte	0x47
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	numlines
	.uleb128 0xa
	.long	0x33cc
	.byte	0x48
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	lines
	.uleb128 0xa
	.long	0x33d8
	.byte	0x4a
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	numsides
	.uleb128 0xa
	.long	0x33e4
	.byte	0x4b
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	sides
	.uleb128 0xa
	.long	0x3431
	.byte	0x56
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	bmapwidth
	.uleb128 0xa
	.long	0x343d
	.byte	0x57
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	bmapheight
	.uleb128 0xa
	.long	0x3425
	.byte	0x58
	.byte	0x9
	.uleb128 0x9
	.byte	0x3
	.quad	blockmap
	.uleb128 0xa
	.long	0x3419
	.byte	0x5a
	.byte	0x9
	.uleb128 0x9
	.byte	0x3
	.quad	blockmaplump
	.uleb128 0xa
	.long	0x3449
	.byte	0x5c
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	bmaporgx
	.uleb128 0xa
	.long	0x3455
	.byte	0x5d
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	bmaporgy
	.uleb128 0xa
	.long	0x3461
	.byte	0x5f
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	blocklinks
	.uleb128 0xa
	.long	0x340d
	.byte	0x69
	.byte	0x8
	.uleb128 0x9
	.byte	0x3
	.quad	rejectmatrix
	.uleb128 0xa
	.long	0x351e
	.byte	0x6f
	.byte	0xc
	.uleb128 0x9
	.byte	0x3
	.quad	deathmatchstarts
	.uleb128 0xa
	.long	0x352a
	.byte	0x70
	.byte	0xd
	.uleb128 0x9
	.byte	0x3
	.quad	deathmatch_p
	.uleb128 0xa
	.long	0x354b
	.byte	0x71
	.byte	0xc
	.uleb128 0x9
	.byte	0x3
	.quad	playerstarts
	.uleb128 0x14
	.long	.LASF1560
	.byte	0x15
	.byte	0x3c
	.byte	0x6
	.long	0x3737
	.uleb128 0x9
	.long	0x3737
	.byte	0
	.uleb128 0x8
	.long	0x9e
	.uleb128 0x19
	.long	.LASF1556
	.byte	0x13
	.byte	0x2a
	.byte	0x9
	.uleb128 0x2d
	.long	.LASF1557
	.byte	0x13
	.value	0x100
	.byte	0x6
	.uleb128 0x19
	.long	.LASF1558
	.byte	0x14
	.byte	0x2b
	.byte	0x6
	.uleb128 0x19
	.long	.LASF1559
	.byte	0x13
	.byte	0x2d
	.byte	0x9
	.uleb128 0x14
	.long	.LASF1561
	.byte	0x16
	.byte	0x22
	.byte	0x6
	.long	0x376f
	.uleb128 0x9
	.long	0x8e
	.byte	0
	.uleb128 0x15
	.long	.LASF1562
	.byte	0x17
	.byte	0x49
	.byte	0x5
	.long	0x8e
	.long	0x3785
	.uleb128 0x9
	.long	0x9e
	.byte	0
	.uleb128 0x2e
	.long	.LASF1563
	.byte	0x18
	.value	0x16d
	.byte	0xc
	.long	0x8e
	.long	0x37a2
	.uleb128 0x9
	.long	0x9e
	.uleb128 0x9
	.long	0xbd
	.uleb128 0x1e
	.byte	0
	.uleb128 0x19
	.long	.LASF1564
	.byte	0x17
	.byte	0x46
	.byte	0x9
	.uleb128 0x19
	.long	.LASF1565
	.byte	0x11
	.byte	0x49
	.byte	0x6
	.uleb128 0x14
	.long	.LASF1566
	.byte	0x19
	.byte	0x32
	.byte	0x9
	.long	0x37c9
	.uleb128 0x9
	.long	0x8e
	.uleb128 0x9
	.long	0x8e
	.byte	0
	.uleb128 0x19
	.long	.LASF1567
	.byte	0x1a
	.byte	0x33
	.byte	0x6
	.uleb128 0x14
	.long	.LASF1568
	.byte	0x1b
	.byte	0x59
	.byte	0x6
	.long	0x37e4
	.uleb128 0x9
	.long	0x9e
	.uleb128 0x1e
	.byte	0
	.uleb128 0x14
	.long	.LASF1569
	.byte	0x4
	.byte	0x2c
	.byte	0x1
	.long	0x3800
	.uleb128 0x9
	.long	0x2ff
	.uleb128 0x9
	.long	0xc2
	.uleb128 0x9
	.long	0xc2
	.byte	0
	.uleb128 0x14
	.long	.LASF1570
	.byte	0x4
	.byte	0x29
	.byte	0x6
	.long	0x3812
	.uleb128 0x9
	.long	0x2ff
	.byte	0
	.uleb128 0x15
	.long	.LASF1571
	.byte	0x14
	.byte	0x36
	.byte	0x5
	.long	0x8e
	.long	0x3828
	.uleb128 0x9
	.long	0x9e
	.byte	0
	.uleb128 0x15
	.long	.LASF1572
	.byte	0x3
	.byte	0x29
	.byte	0x9
	.long	0xc2
	.long	0x3843
	.uleb128 0x9
	.long	0xc2
	.uleb128 0x9
	.long	0xc2
	.byte	0
	.uleb128 0x14
	.long	.LASF1573
	.byte	0x1
	.byte	0x31
	.byte	0x6
	.long	0x3855
	.uleb128 0x9
	.long	0x3536
	.byte	0
	.uleb128 0x15
	.long	.LASF1574
	.byte	0x14
	.byte	0x31
	.byte	0x5
	.long	0x8e
	.long	0x386b
	.uleb128 0x9
	.long	0x9e
	.byte	0
	.uleb128 0x15
	.long	.LASF1575
	.byte	0x1c
	.byte	0x3d
	.byte	0xe
	.long	0x9c
	.long	0x388b
	.uleb128 0x9
	.long	0x9c
	.uleb128 0x9
	.long	0x8e
	.uleb128 0x9
	.long	0xb1
	.byte	0
	.uleb128 0x14
	.long	.LASF1576
	.byte	0x19
	.byte	0x31
	.byte	0x9
	.long	0x389d
	.uleb128 0x9
	.long	0x9c
	.byte	0
	.uleb128 0x15
	.long	.LASF1577
	.byte	0x17
	.byte	0x4e
	.byte	0x7
	.long	0x9c
	.long	0x38b8
	.uleb128 0x9
	.long	0x8e
	.uleb128 0x9
	.long	0x8e
	.byte	0
	.uleb128 0x15
	.long	.LASF1578
	.byte	0x19
	.byte	0x30
	.byte	0x7
	.long	0x9c
	.long	0x38d8
	.uleb128 0x9
	.long	0x8e
	.uleb128 0x9
	.long	0x8e
	.uleb128 0x9
	.long	0x9c
	.byte	0
	.uleb128 0x15
	.long	.LASF1579
	.byte	0x17
	.byte	0x4b
	.byte	0x5
	.long	0x8e
	.long	0x38ee
	.uleb128 0x9
	.long	0x8e
	.byte	0
	.uleb128 0x2f
	.long	.LASF1607
	.byte	0x1
	.value	0x2bc
	.byte	0x6
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.long	.LASF1586
	.value	0x248
	.byte	0x1
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x3990
	.uleb128 0x16
	.long	.LASF1580
	.value	0x249
	.byte	0x8
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x30
	.string	"map"
	.byte	0x1
	.value	0x24a
	.byte	0x8
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.long	.LASF1581
	.value	0x24b
	.byte	0x8
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x16
	.long	.LASF1582
	.value	0x24c
	.byte	0xb
	.long	0x155
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xb
	.string	"i"
	.value	0x24e
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.long	.LASF1584
	.value	0x24f
	.byte	0xa
	.long	0x3472
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x10
	.long	.LASF1585
	.value	0x250
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x18
	.long	.LASF1587
	.value	0x1f3
	.byte	0x6
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a46
	.uleb128 0x10
	.long	.LASF1588
	.value	0x1f5
	.byte	0xf
	.long	0x3a46
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xb
	.string	"i"
	.value	0x1f6
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xb
	.string	"j"
	.value	0x1f7
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x10
	.long	.LASF1589
	.value	0x1f8
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xb
	.string	"li"
	.value	0x1f9
	.byte	0xe
	.long	0x30b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.long	.LASF102
	.value	0x1fa
	.byte	0x10
	.long	0x2fcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xb
	.string	"ss"
	.value	0x1fb
	.byte	0x12
	.long	0x339e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xb
	.string	"seg"
	.value	0x1fc
	.byte	0xd
	.long	0x3134
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.long	.LASF122
	.value	0x1fd
	.byte	0xe
	.long	0x3014
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.long	.LASF1590
	.value	0x1fe
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0x8
	.long	0x30b1
	.uleb128 0x18
	.long	.LASF1591
	.value	0x1d5
	.byte	0x6
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a95
	.uleb128 0x16
	.long	.LASF1592
	.value	0x1d5
	.byte	0x1a
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.string	"i"
	.value	0x1d7
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.long	.LASF1593
	.value	0x1d8
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.long	.LASF1594
	.value	0x1b6
	.byte	0x6
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3afc
	.uleb128 0x16
	.long	.LASF1592
	.value	0x1b6
	.byte	0x1a
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.long	.LASF1595
	.value	0x1b8
	.byte	0xc
	.long	0x33f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"i"
	.value	0x1b9
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.string	"msd"
	.value	0x1ba
	.byte	0x13
	.long	0x3afc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"sd"
	.value	0x1bb
	.byte	0xe
	.long	0x30ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.long	0x4bd
	.uleb128 0x18
	.long	.LASF1596
	.value	0x165
	.byte	0x6
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b85
	.uleb128 0x16
	.long	.LASF1592
	.value	0x165
	.byte	0x1a
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x10
	.long	.LASF1595
	.value	0x167
	.byte	0xc
	.long	0x33f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"i"
	.value	0x168
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xb
	.string	"mld"
	.value	0x169
	.byte	0x13
	.long	0x3b85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.string	"ld"
	.value	0x16a
	.byte	0xe
	.long	0x30b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"v1"
	.value	0x16b
	.byte	0x10
	.long	0x300f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.string	"v2"
	.value	0x16c
	.byte	0x10
	.long	0x300f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.long	0x52e
	.uleb128 0x18
	.long	.LASF1597
	.value	0x12d
	.byte	0x6
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c00
	.uleb128 0x16
	.long	.LASF1592
	.value	0x12d
	.byte	0x18
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.long	.LASF1595
	.value	0x12f
	.byte	0xc
	.long	0x33f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"i"
	.value	0x130
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.string	"mt"
	.value	0x131
	.byte	0x12
	.long	0x3536
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.long	.LASF1598
	.value	0x132
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.long	.LASF1599
	.value	0x133
	.byte	0xe
	.long	0x274
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x18
	.long	.LASF1600
	.value	0x108
	.byte	0x6
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c81
	.uleb128 0x16
	.long	.LASF1592
	.value	0x108
	.byte	0x17
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x10
	.long	.LASF1595
	.value	0x10a
	.byte	0xb
	.long	0x33f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"i"
	.value	0x10b
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xb
	.string	"j"
	.value	0x10c
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"k"
	.value	0x10d
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.string	"mn"
	.value	0x10e
	.byte	0x10
	.long	0x3c81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"no"
	.value	0x10f
	.byte	0xd
	.long	0x33bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.long	0x6b1
	.uleb128 0x1c
	.long	.LASF1601
	.byte	0xe7
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ce5
	.uleb128 0x1d
	.long	.LASF1592
	.byte	0xe7
	.byte	0x19
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x13
	.long	.LASF1595
	.byte	0xe9
	.byte	0xc
	.long	0x33f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.string	"i"
	.byte	0xea
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.string	"ms"
	.byte	0xeb
	.byte	0x12
	.long	0x3ce5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"ss"
	.byte	0xec
	.byte	0x10
	.long	0x2fcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.long	0x59e
	.uleb128 0x1c
	.long	.LASF1602
	.byte	0xca
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d49
	.uleb128 0x1d
	.long	.LASF1592
	.byte	0xca
	.byte	0x1c
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x13
	.long	.LASF1595
	.byte	0xcc
	.byte	0xc
	.long	0x33f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.string	"i"
	.byte	0xcd
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.string	"ms"
	.byte	0xce
	.byte	0x15
	.long	0x3d49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"ss"
	.byte	0xcf
	.byte	0x12
	.long	0x339e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.long	0x5cd
	.uleb128 0x1c
	.long	.LASF1603
	.byte	0x9f
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x3dd8
	.uleb128 0x1d
	.long	.LASF1592
	.byte	0x9f
	.byte	0x16
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x13
	.long	.LASF1595
	.byte	0xa1
	.byte	0xc
	.long	0x33f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.string	"i"
	.byte	0xa2
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x11
	.string	"ml"
	.byte	0xa3
	.byte	0x10
	.long	0x3dd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.string	"li"
	.byte	0xa4
	.byte	0xd
	.long	0x3134
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.long	.LASF1604
	.byte	0xa5
	.byte	0xe
	.long	0x30b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.long	.LASF118
	.byte	0xa6
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.long	.LASF119
	.byte	0xa7
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x8
	.long	0x62e
	.uleb128 0x1c
	.long	.LASF1605
	.byte	0x7a
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e3c
	.uleb128 0x1d
	.long	.LASF1592
	.byte	0x7a
	.byte	0x1a
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x13
	.long	.LASF1595
	.byte	0x7c
	.byte	0xc
	.long	0x33f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.string	"i"
	.byte	0x7d
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.string	"ml"
	.byte	0x7e
	.byte	0x12
	.long	0x3e3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"li"
	.byte	0x7f
	.byte	0x10
	.long	0x300f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.long	0x45a
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x1a
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
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
.LASF905:
	.string	"S_BSPI_RUN3"
.LASF906:
	.string	"S_BSPI_RUN4"
.LASF907:
	.string	"S_BSPI_RUN5"
.LASF908:
	.string	"S_BSPI_RUN6"
.LASF909:
	.string	"S_BSPI_RUN7"
.LASF910:
	.string	"S_BSPI_RUN8"
.LASF911:
	.string	"S_BSPI_RUN9"
.LASF1552:
	.string	"playerstarts"
.LASF195:
	.string	"SPR_YSKU"
.LASF1461:
	.string	"attacker"
.LASF558:
	.string	"S_FIRE10"
.LASF559:
	.string	"S_FIRE11"
.LASF560:
	.string	"S_FIRE12"
.LASF561:
	.string	"S_FIRE13"
.LASF562:
	.string	"S_FIRE14"
.LASF563:
	.string	"S_FIRE15"
.LASF564:
	.string	"S_FIRE16"
.LASF565:
	.string	"S_FIRE17"
.LASF566:
	.string	"S_FIRE18"
.LASF567:
	.string	"S_FIRE19"
.LASF1554:
	.string	"precache"
.LASF1379:
	.string	"MT_MISC84"
.LASF1312:
	.string	"MT_MISC20"
.LASF1126:
	.string	"S_MEGA2"
.LASF1127:
	.string	"S_MEGA3"
.LASF1128:
	.string	"S_MEGA4"
.LASF1316:
	.string	"MT_MISC24"
.LASF1317:
	.string	"MT_MISC25"
.LASF1319:
	.string	"MT_MISC26"
.LASF1320:
	.string	"MT_MISC27"
.LASF1321:
	.string	"MT_MISC28"
.LASF111:
	.string	"ceilingpic"
.LASF757:
	.string	"S_SARG_PAIN2"
.LASF1427:
	.string	"threshold"
.LASF38:
	.string	"wp_pistol"
.LASF236:
	.string	"SPR_COL1"
.LASF237:
	.string	"SPR_COL2"
.LASF238:
	.string	"SPR_COL3"
.LASF239:
	.string	"SPR_COL4"
.LASF248:
	.string	"SPR_COL5"
.LASF242:
	.string	"SPR_COL6"
.LASF601:
	.string	"S_SKEL_RUN11"
.LASF568:
	.string	"S_FIRE20"
.LASF569:
	.string	"S_FIRE21"
.LASF570:
	.string	"S_FIRE22"
.LASF571:
	.string	"S_FIRE23"
.LASF572:
	.string	"S_FIRE24"
.LASF222:
	.string	"SPR_COLU"
.LASF574:
	.string	"S_FIRE26"
.LASF575:
	.string	"S_FIRE27"
.LASF576:
	.string	"S_FIRE28"
.LASF577:
	.string	"S_FIRE29"
.LASF1325:
	.string	"MT_MISC30"
.LASF1240:
	.string	"action"
.LASF1327:
	.string	"MT_MISC32"
.LASF1328:
	.string	"MT_MISC33"
.LASF919:
	.string	"S_BSPI_PAIN"
.LASF1330:
	.string	"MT_MISC35"
.LASF391:
	.string	"S_BFGEXP"
.LASF52:
	.string	"am_misl"
.LASF1333:
	.string	"MT_MISC38"
.LASF1334:
	.string	"MT_MISC39"
.LASF1590:
	.string	"block"
.LASF110:
	.string	"floorpic"
.LASF921:
	.string	"S_BSPI_DIE1"
.LASF1496:
	.string	"NUMPSPRITES"
.LASF926:
	.string	"S_BSPI_DIE6"
.LASF1486:
	.string	"ST_POSITIVE"
.LASF1437:
	.string	"viewz"
.LASF99:
	.string	"toptexture"
.LASF817:
	.string	"S_BOSS_RAISE1"
.LASF818:
	.string	"S_BOSS_RAISE2"
.LASF1259:
	.string	"MT_HEAD"
.LASF819:
	.string	"S_BOSS_RAISE3"
.LASF578:
	.string	"S_FIRE30"
.LASF723:
	.string	"S_TROO_PAIN"
.LASF1012:
	.string	"S_SSWV_DIE1"
.LASF822:
	.string	"S_BOSS_RAISE6"
.LASF1014:
	.string	"S_SSWV_DIE3"
.LASF1015:
	.string	"S_SSWV_DIE4"
.LASF1016:
	.string	"S_SSWV_DIE5"
.LASF190:
	.string	"SPR_BKEY"
.LASF834:
	.string	"S_BOS2_ATK1"
.LASF835:
	.string	"S_BOS2_ATK2"
.LASF836:
	.string	"S_BOS2_ATK3"
.LASF224:
	.string	"SPR_GOR1"
.LASF231:
	.string	"SPR_GOR2"
.LASF232:
	.string	"SPR_GOR3"
.LASF233:
	.string	"SPR_GOR4"
.LASF234:
	.string	"SPR_GOR5"
.LASF1337:
	.string	"MT_MISC42"
.LASF1338:
	.string	"MT_MISC43"
.LASF591:
	.string	"S_SKEL_RUN1"
.LASF592:
	.string	"S_SKEL_RUN2"
.LASF14:
	.string	"BOXTOP"
.LASF594:
	.string	"S_SKEL_RUN4"
.LASF595:
	.string	"S_SKEL_RUN5"
.LASF596:
	.string	"S_SKEL_RUN6"
.LASF597:
	.string	"S_SKEL_RUN7"
.LASF598:
	.string	"S_SKEL_RUN8"
.LASF599:
	.string	"S_SKEL_RUN9"
.LASF41:
	.string	"wp_missile"
.LASF1513:
	.string	"maxsecret"
.LASF1077:
	.string	"S_BEXP2"
.LASF1387:
	.string	"seestate"
.LASF772:
	.string	"S_HEAD_ATK1"
.LASF773:
	.string	"S_HEAD_ATK2"
.LASF774:
	.string	"S_HEAD_ATK3"
.LASF1479:
	.string	"slopetype"
.LASF1026:
	.string	"S_SSWV_RAISE1"
.LASF1027:
	.string	"S_SSWV_RAISE2"
.LASF1028:
	.string	"S_SSWV_RAISE3"
.LASF1029:
	.string	"S_SSWV_RAISE4"
.LASF1030:
	.string	"S_SSWV_RAISE5"
.LASF117:
	.string	"angle"
.LASF1254:
	.string	"MT_FATSHOT"
.LASF210:
	.string	"SPR_CELL"
.LASF211:
	.string	"SPR_CELP"
.LASF1192:
	.string	"S_HEARTCOL"
.LASF1433:
	.string	"numlines"
.LASF1109:
	.string	"S_MEDI"
.LASF1603:
	.string	"P_LoadSegs"
.LASF1116:
	.string	"S_PINV"
.LASF1303:
	.string	"MT_INS"
.LASF1346:
	.string	"MT_MISC51"
.LASF1347:
	.string	"MT_MISC52"
.LASF1301:
	.string	"MT_INV"
.LASF1349:
	.string	"MT_MISC54"
.LASF1206:
	.string	"S_BTORCHSHRT"
.LASF327:
	.string	"S_MISSILEUP"
.LASF1352:
	.string	"MT_MISC57"
.LASF1353:
	.string	"MT_MISC58"
.LASF1354:
	.string	"MT_MISC59"
.LASF504:
	.string	"S_SPOS_RAISE1"
.LASF1533:
	.string	"rejectmatrix"
.LASF298:
	.string	"S_SGUNFLASH1"
.LASF299:
	.string	"S_SGUNFLASH2"
.LASF846:
	.string	"S_BOS2_RAISE1"
.LASF847:
	.string	"S_BOS2_RAISE2"
.LASF848:
	.string	"S_BOS2_RAISE3"
.LASF849:
	.string	"S_BOS2_RAISE4"
.LASF850:
	.string	"S_BOS2_RAISE5"
.LASF851:
	.string	"S_BOS2_RAISE6"
.LASF852:
	.string	"S_BOS2_RAISE7"
.LASF611:
	.string	"S_SKEL_PAIN"
.LASF1566:
	.string	"Z_FreeTags"
.LASF1098:
	.string	"S_RKEY"
.LASF82:
	.string	"next"
.LASF280:
	.string	"S_PISTOLUP"
.LASF966:
	.string	"S_CYBER_DIE8"
.LASF98:
	.string	"rowoffset"
.LASF1355:
	.string	"MT_MISC60"
.LASF1356:
	.string	"MT_MISC61"
.LASF1357:
	.string	"MT_MISC62"
.LASF1358:
	.string	"MT_MISC63"
.LASF1359:
	.string	"MT_MISC64"
.LASF1360:
	.string	"MT_MISC65"
.LASF1361:
	.string	"MT_MISC66"
.LASF1362:
	.string	"MT_MISC67"
.LASF395:
	.string	"S_EXPLODE1"
.LASF396:
	.string	"S_EXPLODE2"
.LASF397:
	.string	"S_EXPLODE3"
.LASF586:
	.string	"S_TRACEEXP1"
.LASF587:
	.string	"S_TRACEEXP2"
.LASF588:
	.string	"S_TRACEEXP3"
.LASF974:
	.string	"S_PAIN_RUN5"
.LASF1076:
	.string	"S_BEXP"
.LASF975:
	.string	"S_PAIN_RUN6"
.LASF94:
	.string	"ML_REJECT"
.LASF116:
	.string	"mapsubsector_t"
.LASF1501:
	.string	"playerstate_t"
.LASF1193:
	.string	"S_HEARTCOL2"
.LASF372:
	.string	"S_RBALLX1"
.LASF1510:
	.string	"last"
.LASF1401:
	.string	"height"
.LASF1286:
	.string	"MT_TELEPORTMAN"
.LASF1549:
	.string	"playeringame"
.LASF1365:
	.string	"MT_MISC70"
.LASF155:
	.string	"SPR_IFOG"
.LASF1367:
	.string	"MT_MISC72"
.LASF1368:
	.string	"MT_MISC73"
.LASF1369:
	.string	"MT_MISC74"
.LASF1370:
	.string	"MT_MISC75"
.LASF1371:
	.string	"MT_MISC76"
.LASF1199:
	.string	"S_GREENTORCH2"
.LASF1200:
	.string	"S_GREENTORCH3"
.LASF1201:
	.string	"S_GREENTORCH4"
.LASF1040:
	.string	"S_COMMKEEN9"
.LASF1511:
	.string	"maxkills"
.LASF689:
	.string	"S_CPOS_PAIN2"
.LASF912:
	.string	"S_BSPI_RUN10"
.LASF913:
	.string	"S_BSPI_RUN11"
.LASF914:
	.string	"S_BSPI_RUN12"
.LASF996:
	.string	"S_SSWV_RUN1"
.LASF997:
	.string	"S_SSWV_RUN2"
.LASF998:
	.string	"S_SSWV_RUN3"
.LASF999:
	.string	"S_SSWV_RUN4"
.LASF1000:
	.string	"S_SSWV_RUN5"
.LASF1001:
	.string	"S_SSWV_RUN6"
.LASF1002:
	.string	"S_SSWV_RUN7"
.LASF1003:
	.string	"S_SSWV_RUN8"
.LASF1181:
	.string	"S_SKULLCOL"
.LASF1253:
	.string	"MT_FATSO"
.LASF725:
	.string	"S_TROO_DIE1"
.LASF726:
	.string	"S_TROO_DIE2"
.LASF727:
	.string	"S_TROO_DIE3"
.LASF728:
	.string	"S_TROO_DIE4"
.LASF729:
	.string	"S_TROO_DIE5"
.LASF18:
	.string	"shareware"
.LASF1595:
	.string	"data"
.LASF1106:
	.string	"S_YSKULL"
.LASF1107:
	.string	"S_YSKULL2"
.LASF208:
	.string	"SPR_ROCK"
.LASF1278:
	.string	"MT_ROCKET"
.LASF1376:
	.string	"MT_MISC81"
.LASF1377:
	.string	"MT_MISC82"
.LASF1378:
	.string	"MT_MISC83"
.LASF684:
	.string	"S_CPOS_ATK1"
.LASF685:
	.string	"S_CPOS_ATK2"
.LASF686:
	.string	"S_CPOS_ATK3"
.LASF687:
	.string	"S_CPOS_ATK4"
.LASF1245:
	.string	"MT_PLAYER"
.LASF220:
	.string	"SPR_SHOT"
.LASF413:
	.string	"S_IFOG2"
.LASF414:
	.string	"S_IFOG3"
.LASF415:
	.string	"S_IFOG4"
.LASF416:
	.string	"S_IFOG5"
.LASF149:
	.string	"SPR_PLSE"
.LASF141:
	.string	"SPR_PLSF"
.LASF140:
	.string	"SPR_PLSG"
.LASF809:
	.string	"S_BOSS_PAIN2"
.LASF1543:
	.string	"consoleplayer"
.LASF509:
	.string	"S_VILE_STND"
.LASF1512:
	.string	"maxitems"
.LASF1037:
	.string	"S_COMMKEEN6"
.LASF1038:
	.string	"S_COMMKEEN7"
.LASF1523:
	.string	"numsectors"
.LASF1039:
	.string	"S_COMMKEEN8"
.LASF148:
	.string	"SPR_PLSS"
.LASF888:
	.string	"S_SPID_PAIN2"
.LASF1402:
	.string	"mass"
.LASF261:
	.string	"SPR_POB1"
.LASF262:
	.string	"SPR_POB2"
.LASF1110:
	.string	"S_SOUL"
.LASF1120:
	.string	"S_PSTR"
.LASF95:
	.string	"ML_BLOCKMAP"
.LASF27:
	.string	"sk_hard"
.LASF952:
	.string	"S_CYBER_ATK1"
.LASF953:
	.string	"S_CYBER_ATK2"
.LASF954:
	.string	"S_CYBER_ATK3"
.LASF955:
	.string	"S_CYBER_ATK4"
.LASF956:
	.string	"S_CYBER_ATK5"
.LASF957:
	.string	"S_CYBER_ATK6"
.LASF1147:
	.string	"S_BFUG"
.LASF187:
	.string	"SPR_FCAN"
.LASF114:
	.string	"numsegs"
.LASF1489:
	.string	"line_t"
.LASF630:
	.string	"S_FATT_STND"
.LASF1067:
	.string	"S_BRAINEXPLODE1"
.LASF1068:
	.string	"S_BRAINEXPLODE2"
.LASF1069:
	.string	"S_BRAINEXPLODE3"
.LASF351:
	.string	"S_BFGUP"
.LASF192:
	.string	"SPR_YKEY"
.LASF738:
	.string	"S_TROO_RAISE1"
.LASF739:
	.string	"S_TROO_RAISE2"
.LASF740:
	.string	"S_TROO_RAISE3"
.LASF741:
	.string	"S_TROO_RAISE4"
.LASF742:
	.string	"S_TROO_RAISE5"
.LASF1151:
	.string	"S_PLAS"
.LASF1033:
	.string	"S_COMMKEEN2"
.LASF1034:
	.string	"S_COMMKEEN3"
.LASF1035:
	.string	"S_COMMKEEN4"
.LASF1036:
	.string	"S_COMMKEEN5"
.LASF417:
	.string	"S_PLAY"
.LASF983:
	.string	"S_PAIN_DIE2"
.LASF984:
	.string	"S_PAIN_DIE3"
.LASF985:
	.string	"S_PAIN_DIE4"
.LASF986:
	.string	"S_PAIN_DIE5"
.LASF987:
	.string	"S_PAIN_DIE6"
.LASF1256:
	.string	"MT_TROOP"
.LASF538:
	.string	"S_VILE_PAIN2"
.LASF666:
	.string	"S_FATT_RAISE1"
.LASF42:
	.string	"wp_plasma"
.LASF668:
	.string	"S_FATT_RAISE3"
.LASF669:
	.string	"S_FATT_RAISE4"
.LASF670:
	.string	"S_FATT_RAISE5"
.LASF671:
	.string	"S_FATT_RAISE6"
.LASF672:
	.string	"S_FATT_RAISE7"
.LASF673:
	.string	"S_FATT_RAISE8"
.LASF382:
	.string	"S_ROCKET"
.LASF1277:
	.string	"MT_HEADSHOT"
.LASF1476:
	.string	"linecount"
.LASF1557:
	.string	"P_InitSwitchList"
.LASF106:
	.string	"sidenum"
.LASF935:
	.string	"S_ARACH_PLAZ"
.LASF1174:
	.string	"S_STALAGTITE"
.LASF776:
	.string	"S_HEAD_PAIN2"
.LASF777:
	.string	"S_HEAD_PAIN3"
.LASF65:
	.string	"byte"
.LASF434:
	.string	"S_PLAY_XDIE2"
.LASF35:
	.string	"it_redskull"
.LASF1284:
	.string	"MT_TFOG"
.LASF485:
	.string	"S_SPOS_ATK1"
.LASF486:
	.string	"S_SPOS_ATK2"
.LASF487:
	.string	"S_SPOS_ATK3"
.LASF439:
	.string	"S_PLAY_XDIE7"
.LASF422:
	.string	"S_PLAY_ATK1"
.LASF423:
	.string	"S_PLAY_ATK2"
.LASF1589:
	.string	"total"
.LASF175:
	.string	"SPR_APLS"
.LASF1454:
	.string	"refire"
.LASF1203:
	.string	"S_REDTORCH2"
.LASF1204:
	.string	"S_REDTORCH3"
.LASF1205:
	.string	"S_REDTORCH4"
.LASF712:
	.string	"S_TROO_RUN1"
.LASF713:
	.string	"S_TROO_RUN2"
.LASF714:
	.string	"S_TROO_RUN3"
.LASF715:
	.string	"S_TROO_RUN4"
.LASF716:
	.string	"S_TROO_RUN5"
.LASF717:
	.string	"S_TROO_RUN6"
.LASF718:
	.string	"S_TROO_RUN7"
.LASF719:
	.string	"S_TROO_RUN8"
.LASF1518:
	.string	"wbstartstruct_t"
.LASF166:
	.string	"SPR_CPOS"
.LASF627:
	.string	"S_FATSHOTX1"
.LASF628:
	.string	"S_FATSHOTX2"
.LASF629:
	.string	"S_FATSHOTX3"
.LASF707:
	.string	"S_CPOS_RAISE5"
.LASF708:
	.string	"S_CPOS_RAISE6"
.LASF709:
	.string	"S_CPOS_RAISE7"
.LASF1594:
	.string	"P_LoadSideDefs"
.LASF37:
	.string	"wp_fist"
.LASF1395:
	.string	"missilestate"
.LASF196:
	.string	"SPR_STIM"
.LASF1521:
	.string	"vertexes"
.LASF743:
	.string	"S_SARG_STND"
.LASF968:
	.string	"S_CYBER_DIE10"
.LASF146:
	.string	"SPR_BAL1"
.LASF147:
	.string	"SPR_BAL2"
.LASF169:
	.string	"SPR_BAL7"
.LASF1421:
	.string	"info"
.LASF1162:
	.string	"S_HEADSONSTICK"
.LASF1416:
	.string	"ceilingz"
.LASF619:
	.string	"S_SKEL_RAISE1"
.LASF134:
	.string	"SPR_SHT2"
.LASF273:
	.string	"S_PUNCH1"
.LASF274:
	.string	"S_PUNCH2"
.LASF275:
	.string	"S_PUNCH3"
.LASF276:
	.string	"S_PUNCH4"
.LASF277:
	.string	"S_PUNCH5"
.LASF636:
	.string	"S_FATT_RUN5"
.LASF272:
	.string	"S_PUNCHUP"
.LASF1462:
	.string	"extralight"
.LASF889:
	.string	"S_SPID_DIE1"
.LASF640:
	.string	"S_FATT_RUN9"
.LASF891:
	.string	"S_SPID_DIE3"
.LASF892:
	.string	"S_SPID_DIE4"
.LASF133:
	.string	"SPR_SHTF"
.LASF129:
	.string	"SPR_SHTG"
.LASF411:
	.string	"S_IFOG01"
.LASF412:
	.string	"S_IFOG02"
.LASF897:
	.string	"S_SPID_DIE9"
.LASF1553:
	.string	"wminfo"
.LASF1139:
	.string	"S_AMMO"
.LASF53:
	.string	"NUMAMMO"
.LASF1560:
	.string	"R_InitSprites"
.LASF970:
	.string	"S_PAIN_RUN1"
.LASF971:
	.string	"S_PAIN_RUN2"
.LASF972:
	.string	"S_PAIN_RUN3"
.LASF973:
	.string	"S_PAIN_RUN4"
.LASF255:
	.string	"SPR_HDB1"
.LASF256:
	.string	"SPR_HDB2"
.LASF257:
	.string	"SPR_HDB3"
.LASF258:
	.string	"SPR_HDB4"
.LASF259:
	.string	"SPR_HDB5"
.LASF260:
	.string	"SPR_HDB6"
.LASF1246:
	.string	"MT_POSSESSED"
.LASF305:
	.string	"S_DSGUN3"
.LASF306:
	.string	"S_DSGUN4"
.LASF97:
	.string	"textureoffset"
.LASF125:
	.string	"type"
.LASF1539:
	.string	"bmaporgy"
.LASF325:
	.string	"S_MISSILE"
.LASF1561:
	.string	"G_DeathMatchSpawnPlayer"
.LASF1586:
	.string	"P_SetupLevel"
.LASF1153:
	.string	"S_SHOT2"
.LASF1528:
	.string	"nodes"
.LASF1220:
	.string	"S_HANGTLOOKDN"
.LASF1514:
	.string	"maxfrags"
.LASF1424:
	.string	"movedir"
.LASF697:
	.string	"S_CPOS_XDIE1"
.LASF1563:
	.string	"sprintf"
.LASF79:
	.string	"actionf_t"
.LASF74:
	.string	"actionf_v"
.LASF216:
	.string	"SPR_MGUN"
.LASF1258:
	.string	"MT_SHADOWS"
.LASF600:
	.string	"S_SKEL_RUN10"
.LASF121:
	.string	"mapseg_t"
.LASF602:
	.string	"S_SKEL_RUN12"
.LASF268:
	.string	"S_NULL"
.LASF810:
	.string	"S_BOSS_DIE1"
.LASF811:
	.string	"S_BOSS_DIE2"
.LASF812:
	.string	"S_BOSS_DIE3"
.LASF813:
	.string	"S_BOSS_DIE4"
.LASF814:
	.string	"S_BOSS_DIE5"
.LASF815:
	.string	"S_BOSS_DIE6"
.LASF816:
	.string	"S_BOSS_DIE7"
.LASF980:
	.string	"S_PAIN_PAIN"
.LASF349:
	.string	"S_BFG"
.LASF1393:
	.string	"painsound"
.LASF1602:
	.string	"P_LoadSubsectors"
.LASF1573:
	.string	"P_SpawnMapThing"
.LASF1596:
	.string	"P_LoadLineDefs"
.LASF115:
	.string	"firstseg"
.LASF1502:
	.string	"player_t"
.LASF995:
	.string	"S_SSWV_STND2"
.LASF217:
	.string	"SPR_CSAW"
.LASF1130:
	.string	"S_PMAP"
.LASF1136:
	.string	"S_PVIS"
.LASF350:
	.string	"S_BFGDOWN"
.LASF1270:
	.string	"MT_BOSSBRAIN"
.LASF163:
	.string	"SPR_SKEL"
.LASF345:
	.string	"S_PLASMA1"
.LASF346:
	.string	"S_PLASMA2"
.LASF1531:
	.string	"iquehead"
.LASF1210:
	.string	"S_GTORCHSHRT"
.LASF1550:
	.string	"deathmatchstarts"
.LASF1434:
	.string	"firstline"
.LASF1144:
	.string	"S_SHEL"
.LASF901:
	.string	"S_BSPI_STND2"
.LASF4:
	.string	"unsigned char"
.LASF161:
	.string	"SPR_FATB"
.LASF1565:
	.string	"P_InitThinkers"
.LASF266:
	.string	"NUMSPRITES"
.LASF887:
	.string	"S_SPID_PAIN"
.LASF167:
	.string	"SPR_SARG"
.LASF384:
	.string	"S_BFGSHOT2"
.LASF165:
	.string	"SPR_FATT"
.LASF1111:
	.string	"S_SOUL2"
.LASF1112:
	.string	"S_SOUL3"
.LASF1113:
	.string	"S_SOUL4"
.LASF1114:
	.string	"S_SOUL5"
.LASF1115:
	.string	"S_SOUL6"
.LASF1536:
	.string	"bmapwidth"
.LASF871:
	.string	"S_SPID_RUN1"
.LASF872:
	.string	"S_SPID_RUN2"
.LASF873:
	.string	"S_SPID_RUN3"
.LASF874:
	.string	"S_SPID_RUN4"
.LASF875:
	.string	"S_SPID_RUN5"
.LASF876:
	.string	"S_SPID_RUN6"
.LASF877:
	.string	"S_SPID_RUN7"
.LASF878:
	.string	"S_SPID_RUN8"
.LASF10:
	.string	"float"
.LASF1078:
	.string	"S_BEXP3"
.LASF1079:
	.string	"S_BEXP4"
.LASF1167:
	.string	"S_DEADSTICK"
.LASF1493:
	.string	"node_t"
.LASF1463:
	.string	"fixedcolormap"
.LASF1448:
	.string	"weaponowned"
.LASF1287:
	.string	"MT_EXTRABFG"
.LASF457:
	.string	"S_POSS_DIE1"
.LASF458:
	.string	"S_POSS_DIE2"
.LASF459:
	.string	"S_POSS_DIE3"
.LASF460:
	.string	"S_POSS_DIE4"
.LASF461:
	.string	"S_POSS_DIE5"
.LASF287:
	.string	"S_SGUNDOWN"
.LASF136:
	.string	"SPR_CHGF"
.LASF135:
	.string	"SPR_CHGG"
.LASF680:
	.string	"S_CPOS_RUN5"
.LASF939:
	.string	"S_ARACH_PLEX3"
.LASF681:
	.string	"S_CPOS_RUN6"
.LASF941:
	.string	"S_ARACH_PLEX5"
.LASF682:
	.string	"S_CPOS_RUN7"
.LASF683:
	.string	"S_CPOS_RUN8"
.LASF1426:
	.string	"target"
.LASF246:
	.string	"SPR_CEYE"
.LASF1484:
	.string	"ST_HORIZONTAL"
.LASF988:
	.string	"S_PAIN_RAISE1"
.LASF989:
	.string	"S_PAIN_RAISE2"
.LASF990:
	.string	"S_PAIN_RAISE3"
.LASF991:
	.string	"S_PAIN_RAISE4"
.LASF992:
	.string	"S_PAIN_RAISE5"
.LASF625:
	.string	"S_FATSHOT1"
.LASF626:
	.string	"S_FATSHOT2"
.LASF1485:
	.string	"ST_VERTICAL"
.LASF203:
	.string	"SPR_SUIT"
.LASF853:
	.string	"S_SKULL_STND"
.LASF15:
	.string	"BOXBOTTOM"
.LASF1382:
	.string	"NUMMOBJTYPES"
.LASF185:
	.string	"SPR_BAR1"
.LASF1483:
	.string	"side_t"
.LASF300:
	.string	"S_DSGUN"
.LASF1179:
	.string	"S_CANDLESTIK"
.LASF59:
	.string	"pw_allmap"
.LASF1235:
	.string	"NUMSTATES"
.LASF879:
	.string	"S_SPID_RUN9"
.LASF365:
	.string	"S_TBALL1"
.LASF366:
	.string	"S_TBALL2"
.LASF579:
	.string	"S_SMOKE1"
.LASF580:
	.string	"S_SMOKE2"
.LASF581:
	.string	"S_SMOKE3"
.LASF582:
	.string	"S_SMOKE4"
.LASF583:
	.string	"S_SMOKE5"
.LASF802:
	.string	"S_BOSS_RUN6"
.LASF803:
	.string	"S_BOSS_RUN7"
.LASF804:
	.string	"S_BOSS_RUN8"
.LASF168:
	.string	"SPR_HEAD"
.LASF87:
	.string	"ML_LINEDEFS"
.LASF229:
	.string	"SPR_POL1"
.LASF225:
	.string	"SPR_POL2"
.LASF228:
	.string	"SPR_POL3"
.LASF227:
	.string	"SPR_POL4"
.LASF226:
	.string	"SPR_POL5"
.LASF230:
	.string	"SPR_POL6"
.LASF1074:
	.string	"S_BAR1"
.LASF1288:
	.string	"MT_MISC0"
.LASF1160:
	.string	"S_DEADTORSO"
.LASF302:
	.string	"S_DSGUNUP"
.LASF103:
	.string	"mapsidedef_t"
.LASF1385:
	.string	"spawnstate"
.LASF1540:
	.string	"blocklinks"
.LASF711:
	.string	"S_TROO_STND2"
.LASF1231:
	.string	"S_TECH2LAMP"
.LASF1274:
	.string	"MT_SPAWNFIRE"
.LASF1249:
	.string	"MT_FIRE"
.LASF1241:
	.string	"nextstate"
.LASF1527:
	.string	"numnodes"
.LASF808:
	.string	"S_BOSS_PAIN"
.LASF179:
	.string	"SPR_SSWV"
.LASF1584:
	.string	"lumpname"
.LASF370:
	.string	"S_RBALL1"
.LASF371:
	.string	"S_RBALL2"
.LASF1175:
	.string	"S_TALLGRNCOL"
.LASF1515:
	.string	"partime"
.LASF1429:
	.string	"lastlook"
.LASF1530:
	.string	"sides"
.LASF100:
	.string	"bottomtexture"
.LASF1164:
	.string	"S_HEADONASTICK"
.LASF1607:
	.string	"P_Init"
.LASF444:
	.string	"S_POSS_RUN1"
.LASF386:
	.string	"S_BFGLAND2"
.LASF387:
	.string	"S_BFGLAND3"
.LASF388:
	.string	"S_BFGLAND4"
.LASF389:
	.string	"S_BFGLAND5"
.LASF390:
	.string	"S_BFGLAND6"
.LASF450:
	.string	"S_POSS_RUN7"
.LASF451:
	.string	"S_POSS_RUN8"
.LASF433:
	.string	"S_PLAY_XDIE1"
.LASF28:
	.string	"sk_nightmare"
.LASF435:
	.string	"S_PLAY_XDIE3"
.LASF436:
	.string	"S_PLAY_XDIE4"
.LASF437:
	.string	"S_PLAY_XDIE5"
.LASF438:
	.string	"S_PLAY_XDIE6"
.LASF17:
	.string	"BOXRIGHT"
.LASF440:
	.string	"S_PLAY_XDIE8"
.LASF441:
	.string	"S_PLAY_XDIE9"
.LASF839:
	.string	"S_BOS2_DIE1"
.LASF840:
	.string	"S_BOS2_DIE2"
.LASF841:
	.string	"S_BOS2_DIE3"
.LASF842:
	.string	"S_BOS2_DIE4"
.LASF843:
	.string	"S_BOS2_DIE5"
.LASF844:
	.string	"S_BOS2_DIE6"
.LASF845:
	.string	"S_BOS2_DIE7"
.LASF765:
	.string	"S_SARG_RAISE2"
.LASF766:
	.string	"S_SARG_RAISE3"
.LASF409:
	.string	"S_TFOG10"
.LASF767:
	.string	"S_SARG_RAISE4"
.LASF1580:
	.string	"episode"
.LASF462:
	.string	"S_POSS_XDIE1"
.LASF463:
	.string	"S_POSS_XDIE2"
.LASF464:
	.string	"S_POSS_XDIE3"
.LASF465:
	.string	"S_POSS_XDIE4"
.LASF466:
	.string	"S_POSS_XDIE5"
.LASF467:
	.string	"S_POSS_XDIE6"
.LASF468:
	.string	"S_POSS_XDIE7"
.LASF49:
	.string	"am_clip"
.LASF470:
	.string	"S_POSS_XDIE9"
.LASF1163:
	.string	"S_GIBS"
.LASF778:
	.string	"S_HEAD_DIE1"
.LASF779:
	.string	"S_HEAD_DIE2"
.LASF780:
	.string	"S_HEAD_DIE3"
.LASF781:
	.string	"S_HEAD_DIE4"
.LASF782:
	.string	"S_HEAD_DIE5"
.LASF783:
	.string	"S_HEAD_DIE6"
.LASF631:
	.string	"S_FATT_STND2"
.LASF1154:
	.string	"S_COLU"
.LASF281:
	.string	"S_PISTOL1"
.LASF282:
	.string	"S_PISTOL2"
.LASF283:
	.string	"S_PISTOL3"
.LASF284:
	.string	"S_PISTOL4"
.LASF620:
	.string	"S_SKEL_RAISE2"
.LASF621:
	.string	"S_SKEL_RAISE3"
.LASF622:
	.string	"S_SKEL_RAISE4"
.LASF623:
	.string	"S_SKEL_RAISE5"
.LASF624:
	.string	"S_SKEL_RAISE6"
.LASF1183:
	.string	"S_BIGTREE"
.LASF1487:
	.string	"ST_NEGATIVE"
.LASF1093:
	.string	"S_BON2C"
.LASF1094:
	.string	"S_BON2D"
.LASF399:
	.string	"S_TFOG01"
.LASF400:
	.string	"S_TFOG02"
.LASF218:
	.string	"SPR_LAUN"
.LASF455:
	.string	"S_POSS_PAIN"
.LASF790:
	.string	"S_BRBALL1"
.LASF791:
	.string	"S_BRBALL2"
.LASF1252:
	.string	"MT_SMOKE"
.LASF1266:
	.string	"MT_CYBORG"
.LASF1403:
	.string	"damage"
.LASF495:
	.string	"S_SPOS_XDIE1"
.LASF496:
	.string	"S_SPOS_XDIE2"
.LASF497:
	.string	"S_SPOS_XDIE3"
.LASF498:
	.string	"S_SPOS_XDIE4"
.LASF499:
	.string	"S_SPOS_XDIE5"
.LASF500:
	.string	"S_SPOS_XDIE6"
.LASF501:
	.string	"S_SPOS_XDIE7"
.LASF502:
	.string	"S_SPOS_XDIE8"
.LASF503:
	.string	"S_SPOS_XDIE9"
.LASF12:
	.string	"size_t"
.LASF1408:
	.string	"mobj_s"
.LASF1467:
	.string	"mobj_t"
.LASF1096:
	.string	"S_BKEY"
.LASF57:
	.string	"pw_invisibility"
.LASF1576:
	.string	"Z_Free"
.LASF183:
	.string	"SPR_ARM1"
.LASF184:
	.string	"SPR_ARM2"
.LASF1248:
	.string	"MT_VILE"
.LASF33:
	.string	"it_blueskull"
.LASF1473:
	.string	"soundorg"
.LASF343:
	.string	"S_PLASMADOWN"
.LASF655:
	.string	"S_FATT_PAIN2"
.LASF1053:
	.string	"S_BRAINEYESEE"
.LASF1488:
	.string	"slopetype_t"
.LASF590:
	.string	"S_SKEL_STND2"
.LASF943:
	.string	"S_CYBER_STND2"
.LASF1244:
	.string	"state_t"
.LASF787:
	.string	"S_HEAD_RAISE4"
.LASF1013:
	.string	"S_SSWV_DIE2"
.LASF19:
	.string	"registered"
.LASF1537:
	.string	"bmapheight"
.LASF469:
	.string	"S_POSS_XDIE8"
.LASF1143:
	.string	"S_CELP"
.LASF1185:
	.string	"S_EVILEYE"
.LASF1211:
	.string	"S_GTORCHSHRT2"
.LASF1212:
	.string	"S_GTORCHSHRT3"
.LASF1213:
	.string	"S_GTORCHSHRT4"
.LASF1438:
	.string	"viewheight"
.LASF1412:
	.string	"bnext"
.LASF644:
	.string	"S_FATT_ATK1"
.LASF177:
	.string	"SPR_CYBR"
.LASF1570:
	.string	"M_ClearBox"
.LASF645:
	.string	"S_FATT_ATK2"
.LASF548:
	.string	"S_VILE_DIE10"
.LASF138:
	.string	"SPR_MISF"
.LASF137:
	.string	"SPR_MISG"
.LASF1542:
	.string	"deathmatch"
.LASF150:
	.string	"SPR_MISL"
.LASF1506:
	.string	"stime"
.LASF1102:
	.string	"S_BSKULL"
.LASF181:
	.string	"SPR_BBRN"
.LASF523:
	.string	"S_VILE_ATK1"
.LASF524:
	.string	"S_VILE_ATK2"
.LASF525:
	.string	"S_VILE_ATK3"
.LASF526:
	.string	"S_VILE_ATK4"
.LASF527:
	.string	"S_VILE_ATK5"
.LASF528:
	.string	"S_VILE_ATK6"
.LASF529:
	.string	"S_VILE_ATK7"
.LASF270:
	.string	"S_PUNCH"
.LASF531:
	.string	"S_VILE_ATK9"
.LASF252:
	.string	"SPR_SMBT"
.LASF826:
	.string	"S_BOS2_RUN1"
.LASF827:
	.string	"S_BOS2_RUN2"
.LASF828:
	.string	"S_BOS2_RUN3"
.LASF829:
	.string	"S_BOS2_RUN4"
.LASF830:
	.string	"S_BOS2_RUN5"
.LASF831:
	.string	"S_BOS2_RUN6"
.LASF832:
	.string	"S_BOS2_RUN7"
.LASF833:
	.string	"S_BOS2_RUN8"
.LASF112:
	.string	"lightlevel"
.LASF243:
	.string	"SPR_TRE1"
.LASF244:
	.string	"SPR_TRE2"
.LASF1558:
	.string	"R_PrecacheLevel"
.LASF900:
	.string	"S_BSPI_STND"
.LASF1394:
	.string	"meleestate"
.LASF1449:
	.string	"ammo"
.LASF690:
	.string	"S_CPOS_DIE1"
.LASF251:
	.string	"SPR_TRED"
.LASF144:
	.string	"SPR_BLUD"
.LASF646:
	.string	"S_FATT_ATK3"
.LASF647:
	.string	"S_FATT_ATK4"
.LASF648:
	.string	"S_FATT_ATK5"
.LASF649:
	.string	"S_FATT_ATK6"
.LASF650:
	.string	"S_FATT_ATK7"
.LASF651:
	.string	"S_FATT_ATK8"
.LASF652:
	.string	"S_FATT_ATK9"
.LASF154:
	.string	"SPR_TFOG"
.LASF358:
	.string	"S_BLOOD1"
.LASF359:
	.string	"S_BLOOD2"
.LASF360:
	.string	"S_BLOOD3"
.LASF1242:
	.string	"misc1"
.LASF1243:
	.string	"misc2"
.LASF68:
	.string	"angleturn"
.LASF1150:
	.string	"S_LAUN"
.LASF410:
	.string	"S_IFOG"
.LASF107:
	.string	"maplinedef_t"
.LASF157:
	.string	"SPR_POSS"
.LASF162:
	.string	"SPR_FBXP"
.LASF1551:
	.string	"deathmatch_p"
.LASF959:
	.string	"S_CYBER_DIE1"
.LASF960:
	.string	"S_CYBER_DIE2"
.LASF961:
	.string	"S_CYBER_DIE3"
.LASF962:
	.string	"S_CYBER_DIE4"
.LASF963:
	.string	"S_CYBER_DIE5"
.LASF964:
	.string	"S_CYBER_DIE6"
.LASF965:
	.string	"S_CYBER_DIE7"
.LASF837:
	.string	"S_BOS2_PAIN"
.LASF967:
	.string	"S_CYBER_DIE9"
.LASF1430:
	.string	"spawnpoint"
.LASF1237:
	.string	"sprite"
.LASF1562:
	.string	"W_GetNumForName"
.LASF1315:
	.string	"MT_MISC23"
.LASF1517:
	.string	"plyr"
.LASF1180:
	.string	"S_CANDELABRA"
.LASF520:
	.string	"S_VILE_RUN10"
.LASF521:
	.string	"S_VILE_RUN11"
.LASF522:
	.string	"S_VILE_RUN12"
.LASF1140:
	.string	"S_ROCK"
.LASF289:
	.string	"S_SGUN1"
.LASF290:
	.string	"S_SGUN2"
.LASF291:
	.string	"S_SGUN3"
.LASF292:
	.string	"S_SGUN4"
.LASF293:
	.string	"S_SGUN5"
.LASF294:
	.string	"S_SGUN6"
.LASF295:
	.string	"S_SGUN7"
.LASF296:
	.string	"S_SGUN8"
.LASF297:
	.string	"S_SGUN9"
.LASF1384:
	.string	"doomednum"
.LASF286:
	.string	"S_SGUN"
.LASF1176:
	.string	"S_SHRTGRNCOL"
.LASF1577:
	.string	"W_CacheLumpNum"
.LASF96:
	.string	"mapvertex_t"
.LASF1534:
	.string	"blockmaplump"
.LASF861:
	.string	"S_SKULL_PAIN"
.LASF1273:
	.string	"MT_SPAWNSHOT"
.LASF1413:
	.string	"bprev"
.LASF585:
	.string	"S_TRACER2"
.LASF1184:
	.string	"S_TECHPILLAR"
.LASF589:
	.string	"S_SKEL_STND"
.LASF744:
	.string	"S_SARG_STND2"
.LASF22:
	.string	"indetermined"
.LASF490:
	.string	"S_SPOS_DIE1"
.LASF491:
	.string	"S_SPOS_DIE2"
.LASF492:
	.string	"S_SPOS_DIE3"
.LASF493:
	.string	"S_SPOS_DIE4"
.LASF494:
	.string	"S_SPOS_DIE5"
.LASF1500:
	.string	"PST_REBORN"
.LASF1219:
	.string	"S_HANGBNOBRAIN"
.LASF753:
	.string	"S_SARG_ATK1"
.LASF754:
	.string	"S_SARG_ATK2"
.LASF755:
	.string	"S_SARG_ATK3"
.LASF344:
	.string	"S_PLASMAUP"
.LASF92:
	.string	"ML_NODES"
.LASF1239:
	.string	"tics"
.LASF1100:
	.string	"S_YKEY"
.LASF1399:
	.string	"speed"
.LASF313:
	.string	"S_DSNR1"
.LASF982:
	.string	"S_PAIN_DIE1"
.LASF512:
	.string	"S_VILE_RUN2"
.LASF1230:
	.string	"S_TECHLAMP4"
.LASF676:
	.string	"S_CPOS_RUN1"
.LASF677:
	.string	"S_CPOS_RUN2"
.LASF678:
	.string	"S_CPOS_RUN3"
.LASF679:
	.string	"S_CPOS_RUN4"
.LASF75:
	.string	"actionf_p1"
.LASF76:
	.string	"actionf_p2"
.LASF214:
	.string	"SPR_BPAK"
.LASF105:
	.string	"special"
.LASF1080:
	.string	"S_BEXP5"
.LASF127:
	.string	"mapthing_t"
.LASF445:
	.string	"S_POSS_RUN2"
.LASF446:
	.string	"S_POSS_RUN3"
.LASF340:
	.string	"S_SAW2"
.LASF447:
	.string	"S_POSS_RUN4"
.LASF764:
	.string	"S_SARG_RAISE1"
.LASF448:
	.string	"S_POSS_RUN5"
.LASF77:
	.string	"acp1"
.LASF78:
	.string	"acp2"
.LASF768:
	.string	"S_SARG_RAISE5"
.LASF769:
	.string	"S_SARG_RAISE6"
.LASF1348:
	.string	"MT_MISC53"
.LASF253:
	.string	"SPR_SMGT"
.LASF1044:
	.string	"S_KEENPAIN"
.LASF392:
	.string	"S_BFGEXP2"
.LASF393:
	.string	"S_BFGEXP3"
.LASF394:
	.string	"S_BFGEXP4"
.LASF323:
	.string	"S_CHAINFLASH1"
.LASF324:
	.string	"S_CHAINFLASH2"
.LASF279:
	.string	"S_PISTOLDOWN"
.LASF944:
	.string	"S_CYBER_RUN1"
.LASF945:
	.string	"S_CYBER_RUN2"
.LASF946:
	.string	"S_CYBER_RUN3"
.LASF947:
	.string	"S_CYBER_RUN4"
.LASF948:
	.string	"S_CYBER_RUN5"
.LASF949:
	.string	"S_CYBER_RUN6"
.LASF950:
	.string	"S_CYBER_RUN7"
.LASF951:
	.string	"S_CYBER_RUN8"
.LASF1388:
	.string	"seesound"
.LASF1546:
	.string	"totalsecret"
.LASF1131:
	.string	"S_PMAP2"
.LASF1132:
	.string	"S_PMAP3"
.LASF1133:
	.string	"S_PMAP4"
.LASF1134:
	.string	"S_PMAP5"
.LASF1135:
	.string	"S_PMAP6"
.LASF1460:
	.string	"bonuscount"
.LASF1597:
	.string	"P_LoadThings"
.LASF862:
	.string	"S_SKULL_PAIN2"
.LASF1392:
	.string	"painchance"
.LASF688:
	.string	"S_CPOS_PAIN"
.LASF109:
	.string	"ceilingheight"
.LASF20:
	.string	"commercial"
.LASF993:
	.string	"S_PAIN_RAISE6"
.LASF1475:
	.string	"specialdata"
.LASF1331:
	.string	"MT_MISC36"
.LASF797:
	.string	"S_BOSS_RUN1"
.LASF798:
	.string	"S_BOSS_RUN2"
.LASF799:
	.string	"S_BOSS_RUN3"
.LASF800:
	.string	"S_BOSS_RUN4"
.LASF801:
	.string	"S_BOSS_RUN5"
.LASF319:
	.string	"S_CHAINUP"
.LASF1606:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1455:
	.string	"killcount"
.LASF938:
	.string	"S_ARACH_PLEX2"
.LASF1182:
	.string	"S_TORCHTREE"
.LASF994:
	.string	"S_SSWV_STND"
.LASF940:
	.string	"S_ARACH_PLEX4"
.LASF1598:
	.string	"numthings"
.LASF1041:
	.string	"S_COMMKEEN10"
.LASF1042:
	.string	"S_COMMKEEN11"
.LASF1043:
	.string	"S_COMMKEEN12"
.LASF958:
	.string	"S_CYBER_PAIN"
.LASF1168:
	.string	"S_LIVESTICK"
.LASF477:
	.string	"S_SPOS_RUN1"
.LASF235:
	.string	"SPR_SMIT"
.LASF64:
	.string	"boolean"
.LASF480:
	.string	"S_SPOS_RUN4"
.LASF481:
	.string	"S_SPOS_RUN5"
.LASF172:
	.string	"SPR_SKUL"
.LASF483:
	.string	"S_SPOS_RUN7"
.LASF484:
	.string	"S_SPOS_RUN8"
.LASF1141:
	.string	"S_BROK"
.LASF1386:
	.string	"spawnhealth"
.LASF93:
	.string	"ML_SECTORS"
.LASF271:
	.string	"S_PUNCHDOWN"
.LASF937:
	.string	"S_ARACH_PLEX"
.LASF1198:
	.string	"S_GREENTORCH"
.LASF45:
	.string	"wp_supershotgun"
.LASF337:
	.string	"S_SAWDOWN"
.LASF1236:
	.string	"statenum_t"
.LASF1276:
	.string	"MT_TROOPSHOT"
.LASF1261:
	.string	"MT_BRUISERSHOT"
.LASF72:
	.string	"ticcmd_t"
.LASF1381:
	.string	"MT_MISC86"
.LASF1494:
	.string	"ps_weapon"
.LASF425:
	.string	"S_PLAY_PAIN2"
.LASF91:
	.string	"ML_SSECTORS"
.LASF820:
	.string	"S_BOSS_RAISE4"
.LASF821:
	.string	"S_BOSS_RAISE5"
.LASF1238:
	.string	"frame"
.LASF164:
	.string	"SPR_MANF"
.LASF675:
	.string	"S_CPOS_STND2"
.LASF488:
	.string	"S_SPOS_PAIN"
.LASF39:
	.string	"wp_shotgun"
.LASF456:
	.string	"S_POSS_PAIN2"
.LASF1282:
	.string	"MT_PUFF"
.LASF328:
	.string	"S_MISSILE1"
.LASF329:
	.string	"S_MISSILE2"
.LASF330:
	.string	"S_MISSILE3"
.LASF704:
	.string	"S_CPOS_RAISE2"
.LASF705:
	.string	"S_CPOS_RAISE3"
.LASF706:
	.string	"S_CPOS_RAISE4"
.LASF1465:
	.string	"psprites"
.LASF1148:
	.string	"S_MGUN"
.LASF1260:
	.string	"MT_BRUISER"
.LASF213:
	.string	"SPR_SBOX"
.LASF1457:
	.string	"secretcount"
.LASF1383:
	.string	"mobjtype_t"
.LASF1397:
	.string	"xdeathstate"
.LASF1442:
	.string	"powers"
.LASF857:
	.string	"S_SKULL_ATK1"
.LASF858:
	.string	"S_SKULL_ATK2"
.LASF859:
	.string	"S_SKULL_ATK3"
.LASF860:
	.string	"S_SKULL_ATK4"
.LASF838:
	.string	"S_BOS2_PAIN2"
.LASF5:
	.string	"short unsigned int"
.LASF1262:
	.string	"MT_KNIGHT"
.LASF7:
	.string	"signed char"
.LASF67:
	.string	"sidemove"
.LASF1404:
	.string	"activesound"
.LASF489:
	.string	"S_SPOS_PAIN2"
.LASF653:
	.string	"S_FATT_ATK10"
.LASF250:
	.string	"SPR_TGRN"
.LASF1336:
	.string	"MT_MISC41"
.LASF1307:
	.string	"MT_MEGA"
.LASF152:
	.string	"SPR_BFE1"
.LASF153:
	.string	"SPR_BFE2"
.LASF1474:
	.string	"thinglist"
.LASF1341:
	.string	"MT_MISC46"
.LASF1525:
	.string	"numsubsectors"
.LASF1593:
	.string	"count"
.LASF1269:
	.string	"MT_KEEN"
.LASF1472:
	.string	"blockbox"
.LASF1054:
	.string	"S_BRAINEYE1"
.LASF118:
	.string	"linedef"
.LASF710:
	.string	"S_TROO_STND"
.LASF657:
	.string	"S_FATT_DIE2"
.LASF348:
	.string	"S_PLASMAFLASH2"
.LASF48:
	.string	"weapontype_t"
.LASF70:
	.string	"chatchar"
.LASF401:
	.string	"S_TFOG2"
.LASF402:
	.string	"S_TFOG3"
.LASF403:
	.string	"S_TFOG4"
.LASF404:
	.string	"S_TFOG5"
.LASF405:
	.string	"S_TFOG6"
.LASF406:
	.string	"S_TFOG7"
.LASF407:
	.string	"S_TFOG8"
.LASF408:
	.string	"S_TFOG9"
.LASF823:
	.string	"S_BOSS_RAISE7"
.LASF1451:
	.string	"attackdown"
.LASF128:
	.string	"SPR_TROO"
.LASF139:
	.string	"SPR_SAWG"
.LASF1545:
	.string	"totalitems"
.LASF1298:
	.string	"MT_MISC10"
.LASF188:
	.string	"SPR_BON1"
.LASF189:
	.string	"SPR_BON2"
.LASF32:
	.string	"it_redcard"
.LASF1177:
	.string	"S_TALLREDCOL"
.LASF1568:
	.string	"I_Error"
.LASF1581:
	.string	"playermask"
.LASF1422:
	.string	"state"
.LASF1152:
	.string	"S_SHOT"
.LASF1008:
	.string	"S_SSWV_ATK5"
.LASF1157:
	.string	"S_BLOODYTWITCH2"
.LASF1158:
	.string	"S_BLOODYTWITCH3"
.LASF1159:
	.string	"S_BLOODYTWITCH4"
.LASF898:
	.string	"S_SPID_DIE10"
.LASF899:
	.string	"S_SPID_DIE11"
.LASF593:
	.string	"S_SKEL_RUN3"
.LASF1492:
	.string	"seg_t"
.LASF1519:
	.string	"sprnames"
.LASF245:
	.string	"SPR_ELEC"
.LASF1046:
	.string	"S_BRAIN"
.LASF1264:
	.string	"MT_SPIDER"
.LASF1129:
	.string	"S_SUIT"
.LASF143:
	.string	"SPR_BFGF"
.LASF142:
	.string	"SPR_BFGG"
.LASF969:
	.string	"S_PAIN_STND"
.LASF385:
	.string	"S_BFGLAND"
.LASF1075:
	.string	"S_BAR2"
.LASF1447:
	.string	"pendingweapon"
.LASF83:
	.string	"function"
.LASF50:
	.string	"am_shell"
.LASF1420:
	.string	"validcount"
.LASF1458:
	.string	"message"
.LASF665:
	.string	"S_FATT_DIE10"
.LASF36:
	.string	"NUMCARDS"
.LASF1202:
	.string	"S_REDTORCH"
.LASF1280:
	.string	"MT_BFG"
.LASF449:
	.string	"S_POSS_RUN6"
.LASF159:
	.string	"SPR_VILE"
.LASF1283:
	.string	"MT_BLOOD"
.LASF278:
	.string	"S_PISTOL"
.LASF63:
	.string	"true"
.LASF26:
	.string	"sk_medium"
.LASF928:
	.string	"S_BSPI_RAISE1"
.LASF929:
	.string	"S_BSPI_RAISE2"
.LASF930:
	.string	"S_BSPI_RAISE3"
.LASF931:
	.string	"S_BSPI_RAISE4"
.LASF932:
	.string	"S_BSPI_RAISE5"
.LASF933:
	.string	"S_BSPI_RAISE6"
.LASF934:
	.string	"S_BSPI_RAISE7"
.LASF1417:
	.string	"momx"
.LASF1418:
	.string	"momy"
.LASF9:
	.string	"long int"
.LASF1017:
	.string	"S_SSWV_XDIE1"
.LASF1018:
	.string	"S_SSWV_XDIE2"
.LASF1019:
	.string	"S_SSWV_XDIE3"
.LASF1020:
	.string	"S_SSWV_XDIE4"
.LASF1021:
	.string	"S_SSWV_XDIE5"
.LASF1022:
	.string	"S_SSWV_XDIE6"
.LASF1023:
	.string	"S_SSWV_XDIE7"
.LASF1024:
	.string	"S_SSWV_XDIE8"
.LASF1025:
	.string	"S_SSWV_XDIE9"
.LASF315:
	.string	"S_DSGUNFLASH1"
.LASF316:
	.string	"S_DSGUNFLASH2"
.LASF1314:
	.string	"MT_MISC22"
.LASF1466:
	.string	"didsecret"
.LASF573:
	.string	"S_FIRE25"
.LASF667:
	.string	"S_FATT_RAISE2"
.LASF1350:
	.string	"MT_MISC55"
.LASF1439:
	.string	"deltaviewheight"
.LASF34:
	.string	"it_yellowskull"
.LASF1105:
	.string	"S_RSKULL2"
.LASF1431:
	.string	"tracer"
.LASF880:
	.string	"S_SPID_RUN10"
.LASF881:
	.string	"S_SPID_RUN11"
.LASF882:
	.string	"S_SPID_RUN12"
.LASF1324:
	.string	"MT_MISC29"
.LASF1583:
	.string	"rcsid"
.LASF1405:
	.string	"raisestate"
.LASF331:
	.string	"S_MISSILEFLASH1"
.LASF332:
	.string	"S_MISSILEFLASH2"
.LASF333:
	.string	"S_MISSILEFLASH3"
.LASF334:
	.string	"S_MISSILEFLASH4"
.LASF194:
	.string	"SPR_RSKU"
.LASF80:
	.string	"think_t"
.LASF66:
	.string	"forwardmove"
.LASF692:
	.string	"S_CPOS_DIE3"
.LASF113:
	.string	"mapsector_t"
.LASF693:
	.string	"S_CPOS_DIE4"
.LASF101:
	.string	"midtexture"
.LASF694:
	.string	"S_CPOS_DIE5"
.LASF695:
	.string	"S_CPOS_DIE6"
.LASF696:
	.string	"S_CPOS_DIE7"
.LASF1137:
	.string	"S_PVIS2"
.LASF1275:
	.string	"MT_BARREL"
.LASF869:
	.string	"S_SPID_STND"
.LASF1522:
	.string	"segs"
.LASF641:
	.string	"S_FATT_RUN10"
.LASF642:
	.string	"S_FATT_RUN11"
.LASF643:
	.string	"S_FATT_RUN12"
.LASF1267:
	.string	"MT_PAIN"
.LASF1195:
	.string	"S_BLUETORCH2"
.LASF1406:
	.string	"mobjinfo_t"
.LASF1196:
	.string	"S_BLUETORCH3"
.LASF1197:
	.string	"S_BLUETORCH4"
.LASF254:
	.string	"SPR_SMRT"
.LASF356:
	.string	"S_BFGFLASH1"
.LASF357:
	.string	"S_BFGFLASH2"
.LASF890:
	.string	"S_SPID_DIE2"
.LASF171:
	.string	"SPR_BOS2"
.LASF893:
	.string	"S_SPID_DIE5"
.LASF894:
	.string	"S_SPID_DIE6"
.LASF895:
	.string	"S_SPID_DIE7"
.LASF896:
	.string	"S_SPID_DIE8"
.LASF1186:
	.string	"S_EVILEYE2"
.LASF1187:
	.string	"S_EVILEYE3"
.LASF1188:
	.string	"S_EVILEYE4"
.LASF361:
	.string	"S_PUFF1"
.LASF362:
	.string	"S_PUFF2"
.LASF363:
	.string	"S_PUFF3"
.LASF182:
	.string	"SPR_BOSF"
.LASF1477:
	.string	"lines"
.LASF170:
	.string	"SPR_BOSS"
.LASF1279:
	.string	"MT_PLASMA"
.LASF915:
	.string	"S_BSPI_ATK1"
.LASF916:
	.string	"S_BSPI_ATK2"
.LASF917:
	.string	"S_BSPI_ATK3"
.LASF918:
	.string	"S_BSPI_ATK4"
.LASF1097:
	.string	"S_BKEY2"
.LASF46:
	.string	"NUMWEAPONS"
.LASF902:
	.string	"S_BSPI_SIGHT"
.LASF2:
	.string	"long unsigned int"
.LASF904:
	.string	"S_BSPI_RUN2"
.LASF1048:
	.string	"S_BRAIN_DIE1"
.LASF1049:
	.string	"S_BRAIN_DIE2"
.LASF1050:
	.string	"S_BRAIN_DIE3"
.LASF1051:
	.string	"S_BRAIN_DIE4"
.LASF383:
	.string	"S_BFGSHOT"
.LASF1189:
	.string	"S_FLOATSKULL"
.LASF539:
	.string	"S_VILE_DIE1"
.LASF540:
	.string	"S_VILE_DIE2"
.LASF541:
	.string	"S_VILE_DIE3"
.LASF542:
	.string	"S_VILE_DIE4"
.LASF543:
	.string	"S_VILE_DIE5"
.LASF544:
	.string	"S_VILE_DIE6"
.LASF545:
	.string	"S_VILE_DIE7"
.LASF546:
	.string	"S_VILE_DIE8"
.LASF547:
	.string	"S_VILE_DIE9"
.LASF1459:
	.string	"damagecount"
.LASF1503:
	.string	"skills"
.LASF223:
	.string	"SPR_SMT2"
.LASF1099:
	.string	"S_RKEY2"
.LASF1070:
	.string	"S_ARM1"
.LASF1072:
	.string	"S_ARM2"
.LASF1165:
	.string	"S_HEADCANDLES"
.LASF201:
	.string	"SPR_PINS"
.LASF795:
	.string	"S_BOSS_STND"
.LASF775:
	.string	"S_HEAD_PAIN"
.LASF31:
	.string	"it_yellowcard"
.LASF1251:
	.string	"MT_TRACER"
.LASF656:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF658:
	.string	"S_FATT_DIE3"
.LASF659:
	.string	"S_FATT_DIE4"
.LASF660:
	.string	"S_FATT_DIE5"
.LASF661:
	.string	"S_FATT_DIE6"
.LASF662:
	.string	"S_FATT_DIE7"
.LASF663:
	.string	"S_FATT_DIE8"
.LASF664:
	.string	"S_FATT_DIE9"
.LASF731:
	.string	"S_TROO_XDIE2"
.LASF732:
	.string	"S_TROO_XDIE3"
.LASF733:
	.string	"S_TROO_XDIE4"
.LASF734:
	.string	"S_TROO_XDIE5"
.LASF735:
	.string	"S_TROO_XDIE6"
.LASF736:
	.string	"S_TROO_XDIE7"
.LASF737:
	.string	"S_TROO_XDIE8"
.LASF206:
	.string	"SPR_CLIP"
.LASF1178:
	.string	"S_SHRTREDCOL"
.LASF1520:
	.string	"numvertexes"
.LASF1569:
	.string	"M_AddToBox"
.LASF90:
	.string	"ML_SEGS"
.LASF1221:
	.string	"S_HANGTSKULL"
.LASF1548:
	.string	"players"
.LASF61:
	.string	"NUMPOWERS"
.LASF1599:
	.string	"spawn"
.LASF1006:
	.string	"S_SSWV_ATK3"
.LASF1007:
	.string	"S_SSWV_ATK4"
.LASF1604:
	.string	"ldef"
.LASF312:
	.string	"S_DSGUN10"
.LASF56:
	.string	"pw_strength"
.LASF510:
	.string	"S_VILE_STND2"
.LASF240:
	.string	"SPR_CAND"
.LASF1507:
	.string	"score"
.LASF1257:
	.string	"MT_SERGEANT"
.LASF25:
	.string	"sk_easy"
.LASF1108:
	.string	"S_STIM"
.LASF1587:
	.string	"P_GroupLines"
.LASF51:
	.string	"am_cell"
.LASF30:
	.string	"it_bluecard"
.LASF1415:
	.string	"floorz"
.LASF771:
	.string	"S_HEAD_RUN1"
.LASF426:
	.string	"S_PLAY_DIE1"
.LASF427:
	.string	"S_PLAY_DIE2"
.LASF428:
	.string	"S_PLAY_DIE3"
.LASF429:
	.string	"S_PLAY_DIE4"
.LASF430:
	.string	"S_PLAY_DIE5"
.LASF431:
	.string	"S_PLAY_DIE6"
.LASF432:
	.string	"S_PLAY_DIE7"
.LASF1509:
	.string	"epsd"
.LASF442:
	.string	"S_POSS_STND"
.LASF398:
	.string	"S_TFOG"
.LASF1335:
	.string	"MT_MISC40"
.LASF88:
	.string	"ML_SIDEDEFS"
.LASF1432:
	.string	"subsector_s"
.LASF758:
	.string	"S_SARG_DIE1"
.LASF759:
	.string	"S_SARG_DIE2"
.LASF760:
	.string	"S_SARG_DIE3"
.LASF761:
	.string	"S_SARG_DIE4"
.LASF1059:
	.string	"S_SPAWNFIRE1"
.LASF1060:
	.string	"S_SPAWNFIRE2"
.LASF16:
	.string	"BOXLEFT"
.LASF1062:
	.string	"S_SPAWNFIRE4"
.LASF1063:
	.string	"S_SPAWNFIRE5"
.LASF1064:
	.string	"S_SPAWNFIRE6"
.LASF1065:
	.string	"S_SPAWNFIRE7"
.LASF1066:
	.string	"S_SPAWNFIRE8"
.LASF730:
	.string	"S_TROO_XDIE1"
.LASF69:
	.string	"consistancy"
.LASF102:
	.string	"sector"
.LASF1223:
	.string	"S_HANGTNOBRAIN"
.LASF378:
	.string	"S_PLASEXP2"
.LASF379:
	.string	"S_PLASEXP3"
.LASF380:
	.string	"S_PLASEXP4"
.LASF381:
	.string	"S_PLASEXP5"
.LASF43:
	.string	"wp_bfg"
.LASF1207:
	.string	"S_BTORCHSHRT2"
.LASF1208:
	.string	"S_BTORCHSHRT3"
.LASF1209:
	.string	"S_BTORCHSHRT4"
.LASF1605:
	.string	"P_LoadVertexes"
.LASF511:
	.string	"S_VILE_RUN1"
.LASF301:
	.string	"S_DSGUNDOWN"
.LASF513:
	.string	"S_VILE_RUN3"
.LASF514:
	.string	"S_VILE_RUN4"
.LASF515:
	.string	"S_VILE_RUN5"
.LASF516:
	.string	"S_VILE_RUN6"
.LASF517:
	.string	"S_VILE_RUN7"
.LASF518:
	.string	"S_VILE_RUN8"
.LASF519:
	.string	"S_VILE_RUN9"
.LASF762:
	.string	"S_SARG_DIE5"
.LASF763:
	.string	"S_SARG_DIE6"
.LASF1443:
	.string	"cards"
.LASF1409:
	.string	"thinker"
.LASF603:
	.string	"S_SKEL_FIST1"
.LASF604:
	.string	"S_SKEL_FIST2"
.LASF605:
	.string	"S_SKEL_FIST3"
.LASF606:
	.string	"S_SKEL_FIST4"
.LASF342:
	.string	"S_PLASMA"
.LASF1121:
	.string	"S_PINS"
.LASF1567:
	.string	"S_Start"
.LASF1588:
	.string	"linebuffer"
.LASF1524:
	.string	"sectors"
.LASF1194:
	.string	"S_BLUETORCH"
.LASF1556:
	.string	"P_InitPicAnims"
.LASF632:
	.string	"S_FATT_RUN1"
.LASF633:
	.string	"S_FATT_RUN2"
.LASF634:
	.string	"S_FATT_RUN3"
.LASF635:
	.string	"S_FATT_RUN4"
.LASF58:
	.string	"pw_ironfeet"
.LASF637:
	.string	"S_FATT_RUN6"
.LASF638:
	.string	"S_FATT_RUN7"
.LASF639:
	.string	"S_FATT_RUN8"
.LASF1170:
	.string	"S_MEAT2"
.LASF1171:
	.string	"S_MEAT3"
.LASF1172:
	.string	"S_MEAT4"
.LASF1173:
	.string	"S_MEAT5"
.LASF285:
	.string	"S_PISTOLFLASH"
.LASF108:
	.string	"floorheight"
.LASF505:
	.string	"S_SPOS_RAISE2"
.LASF506:
	.string	"S_SPOS_RAISE3"
.LASF1504:
	.string	"sitems"
.LASF507:
	.string	"S_SPOS_RAISE4"
.LASF508:
	.string	"S_SPOS_RAISE5"
.LASF197:
	.string	"SPR_MEDI"
.LASF199:
	.string	"SPR_PINV"
.LASF1047:
	.string	"S_BRAIN_PAIN"
.LASF318:
	.string	"S_CHAINDOWN"
.LASF537:
	.string	"S_VILE_PAIN"
.LASF584:
	.string	"S_TRACER"
.LASF1004:
	.string	"S_SSWV_ATK1"
.LASF1005:
	.string	"S_SSWV_ATK2"
.LASF534:
	.string	"S_VILE_HEAL1"
.LASF535:
	.string	"S_VILE_HEAL2"
.LASF536:
	.string	"S_VILE_HEAL3"
.LASF1009:
	.string	"S_SSWV_ATK6"
.LASF1425:
	.string	"movecount"
.LASF191:
	.string	"SPR_RKEY"
.LASF1155:
	.string	"S_STALAG"
.LASF1578:
	.string	"Z_Malloc"
.LASF870:
	.string	"S_SPID_STND2"
.LASF123:
	.string	"children"
.LASF73:
	.string	"angle_t"
.LASF1156:
	.string	"S_BLOODYTWITCH"
.LASF1225:
	.string	"S_SMALLPOOL"
.LASF1497:
	.string	"pspdef_t"
.LASF1351:
	.string	"MT_MISC56"
.LASF654:
	.string	"S_FATT_PAIN"
.LASF418:
	.string	"S_PLAY_RUN1"
.LASF419:
	.string	"S_PLAY_RUN2"
.LASF420:
	.string	"S_PLAY_RUN3"
.LASF421:
	.string	"S_PLAY_RUN4"
.LASF1508:
	.string	"wbplayerstruct_t"
.LASF1146:
	.string	"S_BPAK"
.LASF11:
	.string	"double"
.LASF186:
	.string	"SPR_BEXP"
.LASF1592:
	.string	"lump"
.LASF1435:
	.string	"player_s"
.LASF1103:
	.string	"S_BSKULL2"
.LASF145:
	.string	"SPR_PUFF"
.LASF1032:
	.string	"S_COMMKEEN"
.LASF1452:
	.string	"usedown"
.LASF824:
	.string	"S_BOS2_STND"
.LASF151:
	.string	"SPR_BFS1"
.LASF1055:
	.string	"S_SPAWN1"
.LASF1056:
	.string	"S_SPAWN2"
.LASF1057:
	.string	"S_SPAWN3"
.LASF1058:
	.string	"S_SPAWN4"
.LASF1228:
	.string	"S_TECHLAMP2"
.LASF1229:
	.string	"S_TECHLAMP3"
.LASF44:
	.string	"wp_chainsaw"
.LASF1265:
	.string	"MT_BABY"
.LASF1450:
	.string	"maxammo"
.LASF1169:
	.string	"S_LIVESTICK2"
.LASF1305:
	.string	"MT_MISC15"
.LASF1214:
	.string	"S_RTORCHSHRT"
.LASF1311:
	.string	"MT_MISC19"
.LASF173:
	.string	"SPR_SPID"
.LASF770:
	.string	"S_HEAD_STND"
.LASF745:
	.string	"S_SARG_RUN1"
.LASF746:
	.string	"S_SARG_RUN2"
.LASF748:
	.string	"S_SARG_RUN4"
.LASF749:
	.string	"S_SARG_RUN5"
.LASF750:
	.string	"S_SARG_RUN6"
.LASF751:
	.string	"S_SARG_RUN7"
.LASF752:
	.string	"S_SARG_RUN8"
.LASF1289:
	.string	"MT_MISC1"
.LASF1290:
	.string	"MT_MISC2"
.LASF1291:
	.string	"MT_MISC3"
.LASF1292:
	.string	"MT_MISC4"
.LASF1293:
	.string	"MT_MISC5"
.LASF1294:
	.string	"MT_MISC6"
.LASF1295:
	.string	"MT_MISC7"
.LASF1296:
	.string	"MT_MISC8"
.LASF1297:
	.string	"MT_MISC9"
.LASF335:
	.string	"S_SAW"
.LASF202:
	.string	"SPR_MEGA"
.LASF424:
	.string	"S_PLAY_PAIN"
.LASF1555:
	.string	"bodyqueslot"
.LASF376:
	.string	"S_PLASBALL2"
.LASF1495:
	.string	"ps_flash"
.LASF1436:
	.string	"playerstate"
.LASF1505:
	.string	"ssecret"
.LASF124:
	.string	"mapnode_t"
.LASF180:
	.string	"SPR_KEEN"
.LASF1010:
	.string	"S_SSWV_PAIN"
.LASF1391:
	.string	"painstate"
.LASF1045:
	.string	"S_KEENPAIN2"
.LASF60:
	.string	"pw_infrared"
.LASF532:
	.string	"S_VILE_ATK10"
.LASF533:
	.string	"S_VILE_ATK11"
.LASF1011:
	.string	"S_SSWV_PAIN2"
.LASF1375:
	.string	"MT_MISC80"
.LASF1398:
	.string	"deathsound"
.LASF1085:
	.string	"S_BON1A"
.LASF1086:
	.string	"S_BON1B"
.LASF1087:
	.string	"S_BON1C"
.LASF1088:
	.string	"S_BON1D"
.LASF1089:
	.string	"S_BON1E"
.LASF1547:
	.string	"leveltime"
.LASF1482:
	.string	"sector_t"
.LASF200:
	.string	"SPR_PSTR"
.LASF1313:
	.string	"MT_MISC21"
.LASF756:
	.string	"S_SARG_PAIN"
.LASF1308:
	.string	"MT_CLIP"
.LASF215:
	.string	"SPR_BFUG"
.LASF1363:
	.string	"MT_MISC68"
.LASF1081:
	.string	"S_BBAR1"
.LASF1082:
	.string	"S_BBAR2"
.LASF1083:
	.string	"S_BBAR3"
.LASF269:
	.string	"S_LIGHTDONE"
.LASF920:
	.string	"S_BSPI_PAIN2"
.LASF1444:
	.string	"backpack"
.LASF720:
	.string	"S_TROO_ATK1"
.LASF721:
	.string	"S_TROO_ATK2"
.LASF722:
	.string	"S_TROO_ATK3"
.LASF864:
	.string	"S_SKULL_DIE2"
.LASF865:
	.string	"S_SKULL_DIE3"
.LASF866:
	.string	"S_SKULL_DIE4"
.LASF867:
	.string	"S_SKULL_DIE5"
.LASF868:
	.string	"S_SKULL_DIE6"
.LASF219:
	.string	"SPR_PLAS"
.LASF1091:
	.string	"S_BON2A"
.LASF1092:
	.string	"S_BON2B"
.LASF132:
	.string	"SPR_PISF"
.LASF131:
	.string	"SPR_PISG"
.LASF1095:
	.string	"S_BON2E"
.LASF1318:
	.string	"MT_CHAINGUN"
.LASF367:
	.string	"S_TBALLX1"
.LASF368:
	.string	"S_TBALLX2"
.LASF369:
	.string	"S_TBALLX3"
.LASF47:
	.string	"wp_nochange"
.LASF1255:
	.string	"MT_CHAINGUY"
.LASF1469:
	.string	"degenmobj_t"
.LASF863:
	.string	"S_SKULL_DIE1"
.LASF1499:
	.string	"PST_DEAD"
.LASF1226:
	.string	"S_BRAINSTEM"
.LASF1031:
	.string	"S_KEENSTND"
.LASF156:
	.string	"SPR_PLAY"
.LASF1446:
	.string	"readyweapon"
.LASF120:
	.string	"offset"
.LASF1166:
	.string	"S_HEADCANDLES2"
.LASF1285:
	.string	"MT_IFOG"
.LASF1591:
	.string	"P_LoadBlockMap"
.LASF247:
	.string	"SPR_FSKU"
.LASF482:
	.string	"S_SPOS_RUN6"
.LASF1564:
	.string	"W_Reload"
.LASF338:
	.string	"S_SAWUP"
.LASF1071:
	.string	"S_ARM1A"
.LASF674:
	.string	"S_CPOS_STND"
.LASF1326:
	.string	"MT_MISC31"
.LASF1419:
	.string	"momz"
.LASF1145:
	.string	"S_SBOX"
.LASF1470:
	.string	"soundtraversed"
.LASF1529:
	.string	"numsides"
.LASF1329:
	.string	"MT_MISC34"
.LASF1490:
	.string	"subsector_t"
.LASF122:
	.string	"bbox"
.LASF377:
	.string	"S_PLASEXP"
.LASF1332:
	.string	"MT_MISC37"
.LASF1161:
	.string	"S_DEADBOTTOM"
.LASF1218:
	.string	"S_HANGNOGUTS"
.LASF1390:
	.string	"attacksound"
.LASF1122:
	.string	"S_PINS2"
.LASF1123:
	.string	"S_PINS3"
.LASF1124:
	.string	"S_PINS4"
.LASF976:
	.string	"S_PAIN_ATK1"
.LASF977:
	.string	"S_PAIN_ATK2"
.LASF978:
	.string	"S_PAIN_ATK3"
.LASF979:
	.string	"S_PAIN_ATK4"
.LASF1516:
	.string	"pnum"
.LASF288:
	.string	"S_SGUNUP"
.LASF1480:
	.string	"frontsector"
.LASF241:
	.string	"SPR_CBRA"
.LASF1396:
	.string	"deathstate"
.LASF1073:
	.string	"S_ARM2A"
.LASF942:
	.string	"S_CYBER_STND"
.LASF1101:
	.string	"S_YKEY2"
.LASF551:
	.string	"S_FIRE3"
.LASF1389:
	.string	"reactiontime"
.LASF556:
	.string	"S_FIRE8"
.LASF796:
	.string	"S_BOSS_STND2"
.LASF691:
	.string	"S_CPOS_DIE2"
.LASF1411:
	.string	"sprev"
.LASF339:
	.string	"S_SAW1"
.LASF85:
	.string	"ML_LABEL"
.LASF341:
	.string	"S_SAW3"
.LASF1601:
	.string	"P_LoadSectors"
.LASF1084:
	.string	"S_BON1"
.LASF1090:
	.string	"S_BON2"
.LASF1428:
	.string	"player"
.LASF336:
	.string	"S_SAWB"
.LASF724:
	.string	"S_TROO_PAIN2"
.LASF1582:
	.string	"skill"
.LASF1271:
	.string	"MT_BOSSSPIT"
.LASF549:
	.string	"S_FIRE1"
.LASF550:
	.string	"S_FIRE2"
.LASF13:
	.string	"fixed_t"
.LASF552:
	.string	"S_FIRE4"
.LASF553:
	.string	"S_FIRE5"
.LASF554:
	.string	"S_FIRE6"
.LASF555:
	.string	"S_FIRE7"
.LASF209:
	.string	"SPR_BROK"
.LASF557:
	.string	"S_FIRE9"
.LASF1339:
	.string	"MT_MISC44"
.LASF1600:
	.string	"P_LoadNodes"
.LASF1340:
	.string	"MT_MISC45"
.LASF1142:
	.string	"S_CELL"
.LASF1342:
	.string	"MT_MISC47"
.LASF207:
	.string	"SPR_AMMO"
.LASF1343:
	.string	"MT_MISC48"
.LASF1344:
	.string	"MT_MISC49"
.LASF855:
	.string	"S_SKULL_RUN1"
.LASF856:
	.string	"S_SKULL_RUN2"
.LASF1222:
	.string	"S_HANGTLOOKUP"
.LASF317:
	.string	"S_CHAIN"
.LASF86:
	.string	"ML_THINGS"
.LASF347:
	.string	"S_PLASMAFLASH1"
.LASF303:
	.string	"S_DSGUN1"
.LASF304:
	.string	"S_DSGUN2"
.LASF198:
	.string	"SPR_SOUL"
.LASF158:
	.string	"SPR_SPOS"
.LASF307:
	.string	"S_DSGUN5"
.LASF308:
	.string	"S_DSGUN6"
.LASF309:
	.string	"S_DSGUN7"
.LASF310:
	.string	"S_DSGUN8"
.LASF311:
	.string	"S_DSGUN9"
.LASF475:
	.string	"S_SPOS_STND"
.LASF178:
	.string	"SPR_PAIN"
.LASF703:
	.string	"S_CPOS_RAISE1"
.LASF1445:
	.string	"frags"
.LASF1440:
	.string	"armorpoints"
.LASF71:
	.string	"buttons"
.LASF352:
	.string	"S_BFG1"
.LASF353:
	.string	"S_BFG2"
.LASF354:
	.string	"S_BFG3"
.LASF355:
	.string	"S_BFG4"
.LASF1526:
	.string	"subsectors"
.LASF1574:
	.string	"R_FlatNumForName"
.LASF267:
	.string	"spritenum_t"
.LASF314:
	.string	"S_DSNR2"
.LASF854:
	.string	"S_SKULL_STND2"
.LASF1117:
	.string	"S_PINV2"
.LASF1118:
	.string	"S_PINV3"
.LASF747:
	.string	"S_SARG_RUN3"
.LASF1232:
	.string	"S_TECH2LAMP2"
.LASF1233:
	.string	"S_TECH2LAMP3"
.LASF1234:
	.string	"S_TECH2LAMP4"
.LASF1478:
	.string	"line_s"
.LASF130:
	.string	"SPR_PUNG"
.LASF698:
	.string	"S_CPOS_XDIE2"
.LASF699:
	.string	"S_CPOS_XDIE3"
.LASF700:
	.string	"S_CPOS_XDIE4"
.LASF701:
	.string	"S_CPOS_XDIE5"
.LASF702:
	.string	"S_CPOS_XDIE6"
.LASF883:
	.string	"S_SPID_ATK1"
.LASF884:
	.string	"S_SPID_ATK2"
.LASF885:
	.string	"S_SPID_ATK3"
.LASF886:
	.string	"S_SPID_ATK4"
.LASF607:
	.string	"S_SKEL_MISS1"
.LASF608:
	.string	"S_SKEL_MISS2"
.LASF609:
	.string	"S_SKEL_MISS3"
.LASF610:
	.string	"S_SKEL_MISS4"
.LASF364:
	.string	"S_PUFF4"
.LASF1104:
	.string	"S_RSKULL"
.LASF936:
	.string	"S_ARACH_PLAZ2"
.LASF1345:
	.string	"MT_MISC50"
.LASF784:
	.string	"S_HEAD_RAISE1"
.LASF1380:
	.string	"MT_MISC85"
.LASF785:
	.string	"S_HEAD_RAISE2"
.LASF786:
	.string	"S_HEAD_RAISE3"
.LASF1453:
	.string	"cheats"
.LASF193:
	.string	"SPR_BSKU"
.LASF788:
	.string	"S_HEAD_RAISE5"
.LASF89:
	.string	"ML_VERTEXES"
.LASF789:
	.string	"S_HEAD_RAISE6"
.LASF1538:
	.string	"bmaporgx"
.LASF1491:
	.string	"sidedef"
.LASF1575:
	.string	"memset"
.LASF1585:
	.string	"lumpnum"
.LASF1323:
	.string	"MT_SUPERSHOTGUN"
.LASF204:
	.string	"SPR_PMAP"
.LASF1052:
	.string	"S_BRAINEYE"
.LASF205:
	.string	"SPR_PVIS"
.LASF1498:
	.string	"PST_LIVE"
.LASF1281:
	.string	"MT_ARACHPLAZ"
.LASF530:
	.string	"S_VILE_ATK8"
.LASF471:
	.string	"S_POSS_RAISE1"
.LASF472:
	.string	"S_POSS_RAISE2"
.LASF473:
	.string	"S_POSS_RAISE3"
.LASF474:
	.string	"S_POSS_RAISE4"
.LASF326:
	.string	"S_MISSILEDOWN"
.LASF1190:
	.string	"S_FLOATSKULL2"
.LASF1191:
	.string	"S_FLOATSKULL3"
.LASF1532:
	.string	"iquetail"
.LASF1125:
	.string	"S_MEGA"
.LASF805:
	.string	"S_BOSS_ATK1"
.LASF806:
	.string	"S_BOSS_ATK2"
.LASF807:
	.string	"S_BOSS_ATK3"
.LASF1414:
	.string	"subsector"
.LASF263:
	.string	"SPR_BRS1"
.LASF1559:
	.string	"P_SpawnSpecials"
.LASF1468:
	.string	"vertex_t"
.LASF612:
	.string	"S_SKEL_PAIN2"
.LASF1149:
	.string	"S_CSAW"
.LASF55:
	.string	"pw_invulnerability"
.LASF792:
	.string	"S_BRBALLX1"
.LASF793:
	.string	"S_BRBALLX2"
.LASF794:
	.string	"S_BRBALLX3"
.LASF922:
	.string	"S_BSPI_DIE2"
.LASF923:
	.string	"S_BSPI_DIE3"
.LASF924:
	.string	"S_BSPI_DIE4"
.LASF925:
	.string	"S_BSPI_DIE5"
.LASF40:
	.string	"wp_chaingun"
.LASF927:
	.string	"S_BSPI_DIE7"
.LASF29:
	.string	"skill_t"
.LASF478:
	.string	"S_SPOS_RUN2"
.LASF1481:
	.string	"backsector"
.LASF479:
	.string	"S_SPOS_RUN3"
.LASF981:
	.string	"S_PAIN_PAIN2"
.LASF616:
	.string	"S_SKEL_DIE4"
.LASF212:
	.string	"SPR_SHEL"
.LASF1364:
	.string	"MT_MISC69"
.LASF1441:
	.string	"armortype"
.LASF62:
	.string	"false"
.LASF264:
	.string	"SPR_TLMP"
.LASF443:
	.string	"S_POSS_STND2"
.LASF1322:
	.string	"MT_SHOTGUN"
.LASF1544:
	.string	"totalkills"
.LASF1247:
	.string	"MT_SHOTGUY"
.LASF1456:
	.string	"itemcount"
.LASF1227:
	.string	"S_TECHLAMP"
.LASF1268:
	.string	"MT_WOLFSS"
.LASF1571:
	.string	"R_TextureNumForName"
.LASF825:
	.string	"S_BOS2_STND2"
.LASF1471:
	.string	"soundtarget"
.LASF320:
	.string	"S_CHAIN1"
.LASF321:
	.string	"S_CHAIN2"
.LASF322:
	.string	"S_CHAIN3"
.LASF373:
	.string	"S_RBALLX2"
.LASF374:
	.string	"S_RBALLX3"
.LASF249:
	.string	"SPR_TBLU"
.LASF476:
	.string	"S_SPOS_STND2"
.LASF6:
	.string	"unsigned int"
.LASF1410:
	.string	"snext"
.LASF1572:
	.string	"FixedDiv"
.LASF54:
	.string	"am_noammo"
.LASF1407:
	.string	"thinker_s"
.LASF84:
	.string	"thinker_t"
.LASF1061:
	.string	"S_SPAWNFIRE3"
.LASF1535:
	.string	"blockmap"
.LASF452:
	.string	"S_POSS_ATK1"
.LASF453:
	.string	"S_POSS_ATK2"
.LASF454:
	.string	"S_POSS_ATK3"
.LASF24:
	.string	"sk_baby"
.LASF119:
	.string	"side"
.LASF1366:
	.string	"MT_MISC71"
.LASF1215:
	.string	"S_RTORCHSHRT2"
.LASF1216:
	.string	"S_RTORCHSHRT3"
.LASF1217:
	.string	"S_RTORCHSHRT4"
.LASF1119:
	.string	"S_PINV4"
.LASF8:
	.string	"short int"
.LASF903:
	.string	"S_BSPI_RUN1"
.LASF1372:
	.string	"MT_MISC77"
.LASF1373:
	.string	"MT_MISC78"
.LASF1374:
	.string	"MT_MISC79"
.LASF1263:
	.string	"MT_SKULL"
.LASF1250:
	.string	"MT_UNDEAD"
.LASF23:
	.string	"GameMode_t"
.LASF81:
	.string	"prev"
.LASF613:
	.string	"S_SKEL_DIE1"
.LASF614:
	.string	"S_SKEL_DIE2"
.LASF615:
	.string	"S_SKEL_DIE3"
.LASF160:
	.string	"SPR_FIRE"
.LASF617:
	.string	"S_SKEL_DIE5"
.LASF618:
	.string	"S_SKEL_DIE6"
.LASF1224:
	.string	"S_COLONGIBS"
.LASF1579:
	.string	"W_LumpLength"
.LASF1541:
	.string	"gamemode"
.LASF265:
	.string	"SPR_TLP2"
.LASF375:
	.string	"S_PLASBALL"
.LASF221:
	.string	"SPR_SGN2"
.LASF126:
	.string	"options"
.LASF174:
	.string	"SPR_BSPI"
.LASF176:
	.string	"SPR_APBX"
.LASF1464:
	.string	"colormap"
.LASF21:
	.string	"retail"
.LASF1299:
	.string	"MT_MISC11"
.LASF1300:
	.string	"MT_MISC12"
.LASF1302:
	.string	"MT_MISC13"
.LASF1304:
	.string	"MT_MISC14"
.LASF104:
	.string	"flags"
.LASF1306:
	.string	"MT_MISC16"
.LASF1309:
	.string	"MT_MISC17"
.LASF1310:
	.string	"MT_MISC18"
.LASF1138:
	.string	"S_CLIP"
.LASF1400:
	.string	"radius"
.LASF1423:
	.string	"health"
.LASF1272:
	.string	"MT_BOSSTARGET"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"p_setup.c"
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
