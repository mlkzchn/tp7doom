	.file	"r_data.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "r_data.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 49
rcsid:
	.string	"$Id: r_data.c,v 1.4 1997/02/03 16:47:55 b1 Exp $"
	.globl	firstflat
	.bss
	.align 4
	.type	firstflat, @object
	.size	firstflat, 4
firstflat:
	.zero	4
	.globl	lastflat
	.align 4
	.type	lastflat, @object
	.size	lastflat, 4
lastflat:
	.zero	4
	.globl	numflats
	.align 4
	.type	numflats, @object
	.size	numflats, 4
numflats:
	.zero	4
	.globl	firstpatch
	.align 4
	.type	firstpatch, @object
	.size	firstpatch, 4
firstpatch:
	.zero	4
	.globl	lastpatch
	.align 4
	.type	lastpatch, @object
	.size	lastpatch, 4
lastpatch:
	.zero	4
	.globl	numpatches
	.align 4
	.type	numpatches, @object
	.size	numpatches, 4
numpatches:
	.zero	4
	.globl	firstspritelump
	.align 4
	.type	firstspritelump, @object
	.size	firstspritelump, 4
firstspritelump:
	.zero	4
	.globl	lastspritelump
	.align 4
	.type	lastspritelump, @object
	.size	lastspritelump, 4
lastspritelump:
	.zero	4
	.globl	numspritelumps
	.align 4
	.type	numspritelumps, @object
	.size	numspritelumps, 4
numspritelumps:
	.zero	4
	.globl	numtextures
	.align 4
	.type	numtextures, @object
	.size	numtextures, 4
numtextures:
	.zero	4
	.globl	textures
	.align 8
	.type	textures, @object
	.size	textures, 8
textures:
	.zero	8
	.globl	texturewidthmask
	.align 8
	.type	texturewidthmask, @object
	.size	texturewidthmask, 8
texturewidthmask:
	.zero	8
	.globl	textureheight
	.align 8
	.type	textureheight, @object
	.size	textureheight, 8
textureheight:
	.zero	8
	.globl	texturecompositesize
	.align 8
	.type	texturecompositesize, @object
	.size	texturecompositesize, 8
texturecompositesize:
	.zero	8
	.globl	texturecolumnlump
	.align 8
	.type	texturecolumnlump, @object
	.size	texturecolumnlump, 8
texturecolumnlump:
	.zero	8
	.globl	texturecolumnofs
	.align 8
	.type	texturecolumnofs, @object
	.size	texturecolumnofs, 8
texturecolumnofs:
	.zero	8
	.globl	texturecomposite
	.align 8
	.type	texturecomposite, @object
	.size	texturecomposite, 8
texturecomposite:
	.zero	8
	.globl	flattranslation
	.align 8
	.type	flattranslation, @object
	.size	flattranslation, 8
flattranslation:
	.zero	8
	.globl	texturetranslation
	.align 8
	.type	texturetranslation, @object
	.size	texturetranslation, 8
texturetranslation:
	.zero	8
	.globl	spritewidth
	.align 8
	.type	spritewidth, @object
	.size	spritewidth, 8
spritewidth:
	.zero	8
	.globl	spriteoffset
	.align 8
	.type	spriteoffset, @object
	.size	spriteoffset, 8
spriteoffset:
	.zero	8
	.globl	spritetopoffset
	.align 8
	.type	spritetopoffset, @object
	.size	spritetopoffset, 8
spritetopoffset:
	.zero	8
	.globl	colormaps
	.align 8
	.type	colormaps, @object
	.size	colormaps, 8
colormaps:
	.zero	8
	.text
	.globl	R_DrawColumnInCache
	.type	R_DrawColumnInCache, @function
R_DrawColumnInCache:
.LFB0:
	.file 1 "r_data.c"
	.loc 1 192 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# patch, patch
	movq	%rsi, -48(%rbp)	# cache, cache
	movl	%edx, -52(%rbp)	# originy, originy
	movl	%ecx, -56(%rbp)	# cacheheight, cacheheight
# r_data.c:198:     dest = (byte *)cache + 3;
	.loc 1 198 10
	movq	-48(%rbp), %rax	# cache, tmp96
	addq	$3, %rax	#, tmp95
	movq	%rax, -16(%rbp)	# tmp95, dest
# r_data.c:200:     while (patch->topdelta != 0xff)
	.loc 1 200 11
	jmp	.L2	#
.L6:
# r_data.c:202: 	source = (byte *)patch + 3;
	.loc 1 202 9
	movq	-40(%rbp), %rax	# patch, tmp100
	addq	$3, %rax	#, tmp99
	movq	%rax, -8(%rbp)	# tmp99, source
# r_data.c:203: 	count = patch->length;
	.loc 1 203 15
	movq	-40(%rbp), %rax	# patch, tmp101
	movzbl	1(%rax), %eax	# patch_12->length, _1
# r_data.c:203: 	count = patch->length;
	.loc 1 203 8
	movzbl	%al, %eax	# _1, tmp102
	movl	%eax, -24(%rbp)	# tmp102, count
# r_data.c:204: 	position = originy + patch->topdelta;
	.loc 1 204 28
	movq	-40(%rbp), %rax	# patch, tmp103
	movzbl	(%rax), %eax	# patch_12->topdelta, _2
	movzbl	%al, %edx	# _2, _3
# r_data.c:204: 	position = originy + patch->topdelta;
	.loc 1 204 11
	movl	-52(%rbp), %eax	# originy, tmp107
	addl	%edx, %eax	# _3, tmp106
	movl	%eax, -20(%rbp)	# tmp106, position
# r_data.c:206: 	if (position < 0)
	.loc 1 206 5
	cmpl	$0, -20(%rbp)	#, position
	jns	.L3	#,
# r_data.c:208: 	    count += position;
	.loc 1 208 12
	movl	-20(%rbp), %eax	# position, tmp108
	addl	%eax, -24(%rbp)	# tmp108, count
# r_data.c:209: 	    position = 0;
	.loc 1 209 15
	movl	$0, -20(%rbp)	#, position
.L3:
# r_data.c:212: 	if (position + count > cacheheight)
	.loc 1 212 15
	movl	-20(%rbp), %edx	# position, tmp109
	movl	-24(%rbp), %eax	# count, tmp110
	addl	%edx, %eax	# tmp109, _4
# r_data.c:212: 	if (position + count > cacheheight)
	.loc 1 212 5
	cmpl	%eax, -56(%rbp)	# _4, cacheheight
	jge	.L4	#,
# r_data.c:213: 	    count = cacheheight - position;
	.loc 1 213 12
	movl	-56(%rbp), %eax	# cacheheight, tmp114
	subl	-20(%rbp), %eax	# position, tmp113
	movl	%eax, -24(%rbp)	# tmp113, count
.L4:
# r_data.c:215: 	if (count > 0)
	.loc 1 215 5
	cmpl	$0, -24(%rbp)	#, count
	jle	.L5	#,
# r_data.c:216: 	    memcpy (cache + position, source, count);
	.loc 1 216 6
	movl	-24(%rbp), %eax	# count, tmp115
	movslq	%eax, %rdx	# tmp115, _5
	movl	-20(%rbp), %eax	# position, tmp116
	movslq	%eax, %rcx	# tmp116, _6
# r_data.c:216: 	    memcpy (cache + position, source, count);
	.loc 1 216 20
	movq	-48(%rbp), %rax	# cache, tmp117
	addq	%rax, %rcx	# tmp117, _7
# r_data.c:216: 	    memcpy (cache + position, source, count);
	.loc 1 216 6
	movq	-8(%rbp), %rax	# source, tmp118
	movq	%rax, %rsi	# tmp118,
	movq	%rcx, %rdi	# _7,
	call	memcpy@PLT	#
.L5:
# r_data.c:218: 	patch = (column_t *)(  (byte *)patch + patch->length + 4); 
	.loc 1 218 46
	movq	-40(%rbp), %rax	# patch, tmp119
	movzbl	1(%rax), %eax	# patch_12->length, _8
	movzbl	%al, %eax	# _8, _9
# r_data.c:218: 	patch = (column_t *)(  (byte *)patch + patch->length + 4); 
	.loc 1 218 55
	addq	$4, %rax	#, _10
# r_data.c:218: 	patch = (column_t *)(  (byte *)patch + patch->length + 4); 
	.loc 1 218 8
	addq	%rax, -40(%rbp)	# _10, patch
.L2:
# r_data.c:200:     while (patch->topdelta != 0xff)
	.loc 1 200 17
	movq	-40(%rbp), %rax	# patch, tmp120
	movzbl	(%rax), %eax	# patch_12->topdelta, _11
# r_data.c:200:     while (patch->topdelta != 0xff)
	.loc 1 200 28
	cmpb	$-1, %al	#, _11
	jne	.L6	#,
# r_data.c:220: }
	.loc 1 220 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	R_DrawColumnInCache, .-R_DrawColumnInCache
	.section	.rodata
.LC0:
	.string	"Z_CT at r_data.c:%i"
	.text
	.globl	R_GenerateComposite
	.type	R_GenerateComposite, @function
R_GenerateComposite:
.LFB1:
	.loc 1 231 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movl	%edi, -84(%rbp)	# texnum, texnum
# r_data.c:244:     texture = textures[texnum];
	.loc 1 244 23
	movq	textures(%rip), %rax	# textures, textures.0_1
	movl	-84(%rbp), %edx	# texnum, tmp129
	movslq	%edx, %rdx	# tmp129, _2
	salq	$3, %rdx	#, _3
	addq	%rdx, %rax	# _3, _4
# r_data.c:244:     texture = textures[texnum];
	.loc 1 244 13
	movq	(%rax), %rax	# *_4, tmp130
	movq	%rax, -48(%rbp)	# tmp130, texture
# r_data.c:246:     block = Z_Malloc (texturecompositesize[texnum],
	.loc 1 246 13
	movq	texturecomposite(%rip), %rax	# texturecomposite, texturecomposite.1_5
# r_data.c:248: 		      &texturecomposite[texnum]);	
	.loc 1 248 26
	movl	-84(%rbp), %edx	# texnum, tmp131
	movslq	%edx, %rdx	# tmp131, _6
	salq	$3, %rdx	#, _7
# r_data.c:248: 		      &texturecomposite[texnum]);	
	.loc 1 248 9
	addq	%rax, %rdx	# texturecomposite.1_5, _8
# r_data.c:246:     block = Z_Malloc (texturecompositesize[texnum],
	.loc 1 246 43
	movq	texturecompositesize(%rip), %rax	# texturecompositesize, texturecompositesize.2_9
	movl	-84(%rbp), %ecx	# texnum, tmp132
	movslq	%ecx, %rcx	# tmp132, _10
	salq	$2, %rcx	#, _11
	addq	%rcx, %rax	# _11, _12
# r_data.c:246:     block = Z_Malloc (texturecompositesize[texnum],
	.loc 1 246 13
	movl	(%rax), %eax	# *_12, _13
	movl	$1, %esi	#,
	movl	%eax, %edi	# _13,
	call	Z_Malloc@PLT	#
	movq	%rax, -40(%rbp)	# tmp133, block
# r_data.c:250:     collump = texturecolumnlump[texnum];
	.loc 1 250 32
	movq	texturecolumnlump(%rip), %rax	# texturecolumnlump, texturecolumnlump.3_14
	movl	-84(%rbp), %edx	# texnum, tmp134
	movslq	%edx, %rdx	# tmp134, _15
	salq	$3, %rdx	#, _16
	addq	%rdx, %rax	# _16, _17
# r_data.c:250:     collump = texturecolumnlump[texnum];
	.loc 1 250 13
	movq	(%rax), %rax	# *_17, tmp135
	movq	%rax, -32(%rbp)	# tmp135, collump
# r_data.c:251:     colofs = texturecolumnofs[texnum];
	.loc 1 251 30
	movq	texturecolumnofs(%rip), %rax	# texturecolumnofs, texturecolumnofs.4_18
	movl	-84(%rbp), %edx	# texnum, tmp136
	movslq	%edx, %rdx	# tmp136, _19
	salq	$3, %rdx	#, _20
	addq	%rdx, %rax	# _20, _21
# r_data.c:251:     colofs = texturecolumnofs[texnum];
	.loc 1 251 12
	movq	(%rax), %rax	# *_21, tmp137
	movq	%rax, -24(%rbp)	# tmp137, colofs
# r_data.c:254:     patch = texture->patches;
	.loc 1 254 11
	movq	-48(%rbp), %rax	# texture, tmp141
	addq	$16, %rax	#, tmp140
	movq	%rax, -56(%rbp)	# tmp140, patch
# r_data.c:256:     for (i=0 , patch = texture->patches;
	.loc 1 256 11
	movl	$0, -64(%rbp)	#, i
# r_data.c:256:     for (i=0 , patch = texture->patches;
	.loc 1 256 22
	movq	-48(%rbp), %rax	# texture, tmp145
	addq	$16, %rax	#, tmp144
	movq	%rax, -56(%rbp)	# tmp144, patch
# r_data.c:256:     for (i=0 , patch = texture->patches;
	.loc 1 256 5
	jmp	.L8	#
.L16:
# r_data.c:260: 	realpatch = W_CacheLumpNum (patch->patch, PU_CACHE);
	.loc 1 260 14
	movq	-56(%rbp), %rax	# patch, tmp146
	movl	8(%rax), %eax	# patch_48->patch, _22
	movl	$101, %esi	#,
	movl	%eax, %edi	# _22,
	call	W_CacheLumpNum@PLT	#
	movq	%rax, -16(%rbp)	# tmp147, realpatch
# r_data.c:261: 	x1 = patch->originx;
	.loc 1 261 5
	movq	-56(%rbp), %rax	# patch, tmp148
	movl	(%rax), %eax	# patch_48->originx, tmp149
	movl	%eax, -60(%rbp)	# tmp149, x1
# r_data.c:262: 	x2 = x1 + SHORT(realpatch->width);
	.loc 1 262 12
	movq	-16(%rbp), %rax	# realpatch, tmp150
	movzwl	(%rax), %eax	# realpatch_70->width, _23
	movswl	%ax, %edx	# _23, _24
# r_data.c:262: 	x2 = x1 + SHORT(realpatch->width);
	.loc 1 262 5
	movl	-60(%rbp), %eax	# x1, tmp154
	addl	%edx, %eax	# _24, tmp153
	movl	%eax, -68(%rbp)	# tmp153, x2
# r_data.c:264: 	if (x1<0)
	.loc 1 264 5
	cmpl	$0, -60(%rbp)	#, x1
	jns	.L9	#,
# r_data.c:265: 	    x = 0;
	.loc 1 265 8
	movl	$0, -72(%rbp)	#, x
	jmp	.L10	#
.L9:
# r_data.c:267: 	    x = x1;
	.loc 1 267 8
	movl	-60(%rbp), %eax	# x1, tmp155
	movl	%eax, -72(%rbp)	# tmp155, x
.L10:
# r_data.c:269: 	if (x2 > texture->width)
	.loc 1 269 18
	movq	-48(%rbp), %rax	# texture, tmp156
	movzwl	8(%rax), %eax	# texture_59->width, _25
	cwtl
# r_data.c:269: 	if (x2 > texture->width)
	.loc 1 269 5
	cmpl	%eax, -68(%rbp)	# _26, x2
	jle	.L12	#,
# r_data.c:270: 	    x2 = texture->width;
	.loc 1 270 18
	movq	-48(%rbp), %rax	# texture, tmp157
	movzwl	8(%rax), %eax	# texture_59->width, _27
# r_data.c:270: 	    x2 = texture->width;
	.loc 1 270 9
	cwtl
	movl	%eax, -68(%rbp)	# tmp158, x2
# r_data.c:272: 	for ( ; x<x2 ; x++)
	.loc 1 272 2
	jmp	.L12	#
.L15:
# r_data.c:275: 	    if (collump[x] >= 0)
	.loc 1 275 17
	movl	-72(%rbp), %eax	# x, tmp159
	cltq
	leaq	(%rax,%rax), %rdx	#, _29
	movq	-32(%rbp), %rax	# collump, tmp160
	addq	%rdx, %rax	# _29, _30
	movzwl	(%rax), %eax	# *_30, _31
# r_data.c:275: 	    if (collump[x] >= 0)
	.loc 1 275 9
	testw	%ax, %ax	# _31
	jns	.L18	#,
# r_data.c:279: 				    + LONG(realpatch->columnofs[x-x1]));
	.loc 1 279 11
	movl	-72(%rbp), %eax	# x, tmp161
	subl	-60(%rbp), %eax	# x1, tmp161
	movl	%eax, %edx	# tmp161, _32
	movq	-16(%rbp), %rax	# realpatch, tmp162
	movslq	%edx, %rdx	# _32, tmp163
	movl	8(%rax,%rdx,4), %eax	# realpatch_70->columnofs[_32], _33
	movslq	%eax, %rdx	# _33, _34
# r_data.c:278: 	    patchcol = (column_t *)((byte *)realpatch
	.loc 1 278 15
	movq	-16(%rbp), %rax	# realpatch, tmp167
	addq	%rdx, %rax	# _34, tmp166
	movq	%rax, -8(%rbp)	# tmp166, patchcol
# r_data.c:283: 				 texture->height);
	.loc 1 283 13
	movq	-48(%rbp), %rax	# texture, tmp168
	movzwl	10(%rax), %eax	# texture_59->height, _35
# r_data.c:280: 	    R_DrawColumnInCache (patchcol,
	.loc 1 280 6
	movswl	%ax, %ecx	# _35, _36
	movq	-56(%rbp), %rax	# patch, tmp169
	movl	4(%rax), %edx	# patch_48->originy, _37
# r_data.c:281: 				 block + colofs[x],
	.loc 1 281 20
	movl	-72(%rbp), %eax	# x, tmp170
	cltq
	leaq	(%rax,%rax), %rsi	#, _39
	movq	-24(%rbp), %rax	# colofs, tmp171
	addq	%rsi, %rax	# _39, _40
	movzwl	(%rax), %eax	# *_40, _41
	movzwl	%ax, %esi	# _41, _42
# r_data.c:280: 	    R_DrawColumnInCache (patchcol,
	.loc 1 280 6
	movq	-40(%rbp), %rax	# block, tmp172
	addq	%rax, %rsi	# tmp172, _43
	movq	-8(%rbp), %rax	# patchcol, tmp173
	movq	%rax, %rdi	# tmp173,
	call	R_DrawColumnInCache	#
	jmp	.L14	#
.L18:
# r_data.c:276: 		continue;
	.loc 1 276 3
	nop	
.L14:
# r_data.c:272: 	for ( ; x<x2 ; x++)
	.loc 1 272 18
	addl	$1, -72(%rbp)	#, x
.L12:
# r_data.c:272: 	for ( ; x<x2 ; x++)
	.loc 1 272 11 discriminator 1
	movl	-72(%rbp), %eax	# x, tmp174
	cmpl	-68(%rbp), %eax	# x2, tmp174
	jl	.L15	#,
# r_data.c:258: 	 i++, patch++)
	.loc 1 258 4
	addl	$1, -64(%rbp)	#, i
# r_data.c:258: 	 i++, patch++)
	.loc 1 258 13
	addq	$12, -56(%rbp)	#, patch
.L8:
# r_data.c:257: 	 i<texture->patchcount;
	.loc 1 257 12
	movq	-48(%rbp), %rax	# texture, tmp175
	movzwl	12(%rax), %eax	# texture_59->patchcount, _44
	cwtl
# r_data.c:257: 	 i<texture->patchcount;
	.loc 1 257 4
	cmpl	%eax, -64(%rbp)	# _45, i
	jl	.L16	#,
# r_data.c:290:     Z_ChangeTag (block, PU_CACHE);
	.loc 1 290 5
	movq	-40(%rbp), %rax	# block, tmp176
	subq	$40, %rax	#, _46
	movl	20(%rax), %eax	# MEM[(struct memblock_t *)_46].id, _47
	cmpl	$1919505, %eax	#, _47
	je	.L17	#,
# r_data.c:290:     Z_ChangeTag (block, PU_CACHE);
	.loc 1 290 5 is_stmt 0 discriminator 1
	movl	$290, %esi	#,
	leaq	.LC0(%rip), %rax	#, tmp177
	movq	%rax, %rdi	# tmp177,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L17:
# r_data.c:290:     Z_ChangeTag (block, PU_CACHE);
	.loc 1 290 5 discriminator 3
	movq	-40(%rbp), %rax	# block, tmp178
	movl	$101, %esi	#,
	movq	%rax, %rdi	# tmp178,
	call	Z_ChangeTag2@PLT	#
# r_data.c:291: }
	.loc 1 291 1 is_stmt 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	R_GenerateComposite, .-R_GenerateComposite
	.section	.rodata
	.align 8
.LC1:
	.string	"R_GenerateLookup: column without a patch (%s)\n"
	.align 8
.LC2:
	.string	"R_GenerateLookup: texture %i is >64k"
	.text
	.globl	R_GenerateLookup
	.type	R_GenerateLookup, @function
R_GenerateLookup:
.LFB2:
	.loc 1 299 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movl	%edi, -84(%rbp)	# texnum, texnum
# r_data.c:299: {
	.loc 1 299 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp253
	movq	%rax, -8(%rbp)	# tmp253, D.7613
	xorl	%eax, %eax	# tmp253
# r_data.c:311:     texture = textures[texnum];
	.loc 1 311 23
	movq	textures(%rip), %rax	# textures, textures.5_1
	movl	-84(%rbp), %edx	# texnum, tmp171
	movslq	%edx, %rdx	# tmp171, _2
	salq	$3, %rdx	#, _3
	addq	%rdx, %rax	# _3, _4
# r_data.c:311:     texture = textures[texnum];
	.loc 1 311 13
	movq	(%rax), %rax	# *_4, tmp172
	movq	%rax, -48(%rbp)	# tmp172, texture
# r_data.c:314:     texturecomposite[texnum] = 0;
	.loc 1 314 21
	movq	texturecomposite(%rip), %rax	# texturecomposite, texturecomposite.6_5
	movl	-84(%rbp), %edx	# texnum, tmp173
	movslq	%edx, %rdx	# tmp173, _6
	salq	$3, %rdx	#, _7
	addq	%rdx, %rax	# _7, _8
# r_data.c:314:     texturecomposite[texnum] = 0;
	.loc 1 314 30
	movq	$0, (%rax)	#, *_8
# r_data.c:316:     texturecompositesize[texnum] = 0;
	.loc 1 316 25
	movq	texturecompositesize(%rip), %rax	# texturecompositesize, texturecompositesize.7_9
	movl	-84(%rbp), %edx	# texnum, tmp174
	movslq	%edx, %rdx	# tmp174, _10
	salq	$2, %rdx	#, _11
	addq	%rdx, %rax	# _11, _12
# r_data.c:316:     texturecompositesize[texnum] = 0;
	.loc 1 316 34
	movl	$0, (%rax)	#, *_12
# r_data.c:317:     collump = texturecolumnlump[texnum];
	.loc 1 317 32
	movq	texturecolumnlump(%rip), %rax	# texturecolumnlump, texturecolumnlump.8_13
	movl	-84(%rbp), %edx	# texnum, tmp175
	movslq	%edx, %rdx	# tmp175, _14
	salq	$3, %rdx	#, _15
	addq	%rdx, %rax	# _15, _16
# r_data.c:317:     collump = texturecolumnlump[texnum];
	.loc 1 317 13
	movq	(%rax), %rax	# *_16, tmp176
	movq	%rax, -40(%rbp)	# tmp176, collump
# r_data.c:318:     colofs = texturecolumnofs[texnum];
	.loc 1 318 30
	movq	texturecolumnofs(%rip), %rax	# texturecolumnofs, texturecolumnofs.9_17
	movl	-84(%rbp), %edx	# texnum, tmp177
	movslq	%edx, %rdx	# tmp177, _18
	salq	$3, %rdx	#, _19
	addq	%rdx, %rax	# _19, _20
# r_data.c:318:     colofs = texturecolumnofs[texnum];
	.loc 1 318 12
	movq	(%rax), %rax	# *_20, tmp178
	movq	%rax, -32(%rbp)	# tmp178, colofs
# r_data.c:324:     patchcount = (byte *)alloca (texture->width);
	.loc 1 324 26
	movq	-48(%rbp), %rax	# texture, tmp179
	movzwl	8(%rax), %eax	# texture_105->width, _21
	movswq	%ax, %rax	# _21, _22
	leaq	8(%rax), %rdx	#, tmp180
	movl	$16, %eax	#, tmp251
	subq	$1, %rax	#, tmp181
	addq	%rdx, %rax	# tmp180, tmp182
	movl	$16, %edi	#, tmp252
	movl	$0, %edx	#, tmp185
	divq	%rdi	# tmp252
	imulq	$16, %rax, %rax	#, tmp184, tmp186
	movq	%rax, %rcx	# tmp186, tmp188
	andq	$-4096, %rcx	#, tmp188
	movq	%rsp, %rdx	#, tmp189
	subq	%rcx, %rdx	# tmp188, tmp189
.L20:
	cmpq	%rdx, %rsp	# tmp189,
	je	.L21	#,
	subq	$4096, %rsp	#,
	orq	$0, 4088(%rsp)	#,
	jmp	.L20	#
.L21:
	movq	%rax, %rdx	# tmp186, tmp190
	andl	$4095, %edx	#, tmp190
	subq	%rdx, %rsp	# tmp190,
	movq	%rax, %rdx	# tmp186, tmp191
	andl	$4095, %edx	#, tmp191
	testq	%rdx, %rdx	# tmp191
	je	.L22	#,
	andl	$4095, %eax	#, tmp192
	subq	$8, %rax	#, tmp192
	addq	%rsp, %rax	#, tmp193
	orq	$0, (%rax)	#,
.L22:
	movq	%rsp, %rax	#, tmp187
	addq	$15, %rax	#, tmp194
	shrq	$4, %rax	#, tmp195
	salq	$4, %rax	#, tmp196
	movq	%rax, -24(%rbp)	# tmp196, patchcount
# r_data.c:325:     memset (patchcount, 0, texture->width);
	.loc 1 325 35
	movq	-48(%rbp), %rax	# texture, tmp197
	movzwl	8(%rax), %eax	# texture_105->width, _23
# r_data.c:325:     memset (patchcount, 0, texture->width);
	.loc 1 325 5
	movswq	%ax, %rdx	# _23, _24
	movq	-24(%rbp), %rax	# patchcount, tmp198
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp198,
	call	memset@PLT	#
# r_data.c:326:     patch = texture->patches;
	.loc 1 326 11
	movq	-48(%rbp), %rax	# texture, tmp202
	addq	$16, %rax	#, tmp201
	movq	%rax, -56(%rbp)	# tmp201, patch
# r_data.c:328:     for (i=0 , patch = texture->patches;
	.loc 1 328 11
	movl	$0, -64(%rbp)	#, i
# r_data.c:328:     for (i=0 , patch = texture->patches;
	.loc 1 328 22
	movq	-48(%rbp), %rax	# texture, tmp206
	addq	$16, %rax	#, tmp205
	movq	%rax, -56(%rbp)	# tmp205, patch
# r_data.c:328:     for (i=0 , patch = texture->patches;
	.loc 1 328 5
	jmp	.L23	#
.L29:
# r_data.c:332: 	realpatch = W_CacheLumpNum (patch->patch, PU_CACHE);
	.loc 1 332 14
	movq	-56(%rbp), %rax	# patch, tmp207
	movl	8(%rax), %eax	# patch_91->patch, _25
	movl	$101, %esi	#,
	movl	%eax, %edi	# _25,
	call	W_CacheLumpNum@PLT	#
	movq	%rax, -16(%rbp)	# tmp208, realpatch
# r_data.c:333: 	x1 = patch->originx;
	.loc 1 333 5
	movq	-56(%rbp), %rax	# patch, tmp209
	movl	(%rax), %eax	# patch_91->originx, tmp210
	movl	%eax, -60(%rbp)	# tmp210, x1
# r_data.c:334: 	x2 = x1 + SHORT(realpatch->width);
	.loc 1 334 12
	movq	-16(%rbp), %rax	# realpatch, tmp211
	movzwl	(%rax), %eax	# realpatch_124->width, _26
	movswl	%ax, %edx	# _26, _27
# r_data.c:334: 	x2 = x1 + SHORT(realpatch->width);
	.loc 1 334 5
	movl	-60(%rbp), %eax	# x1, tmp215
	addl	%edx, %eax	# _27, tmp214
	movl	%eax, -68(%rbp)	# tmp214, x2
# r_data.c:336: 	if (x1 < 0)
	.loc 1 336 5
	cmpl	$0, -60(%rbp)	#, x1
	jns	.L24	#,
# r_data.c:337: 	    x = 0;
	.loc 1 337 8
	movl	$0, -72(%rbp)	#, x
	jmp	.L25	#
.L24:
# r_data.c:339: 	    x = x1;
	.loc 1 339 8
	movl	-60(%rbp), %eax	# x1, tmp216
	movl	%eax, -72(%rbp)	# tmp216, x
.L25:
# r_data.c:341: 	if (x2 > texture->width)
	.loc 1 341 18
	movq	-48(%rbp), %rax	# texture, tmp217
	movzwl	8(%rax), %eax	# texture_105->width, _28
	cwtl
# r_data.c:341: 	if (x2 > texture->width)
	.loc 1 341 5
	cmpl	%eax, -68(%rbp)	# _29, x2
	jle	.L27	#,
# r_data.c:342: 	    x2 = texture->width;
	.loc 1 342 18
	movq	-48(%rbp), %rax	# texture, tmp218
	movzwl	8(%rax), %eax	# texture_105->width, _30
# r_data.c:342: 	    x2 = texture->width;
	.loc 1 342 9
	cwtl
	movl	%eax, -68(%rbp)	# tmp219, x2
# r_data.c:343: 	for ( ; x<x2 ; x++)
	.loc 1 343 2
	jmp	.L27	#
.L28:
# r_data.c:345: 	    patchcount[x]++;
	.loc 1 345 16
	movl	-72(%rbp), %eax	# x, tmp220
	movslq	%eax, %rdx	# tmp220, _31
	movq	-24(%rbp), %rax	# patchcount, tmp221
	addq	%rdx, %rax	# _31, _32
	movzbl	(%rax), %edx	# *_32, _33
# r_data.c:345: 	    patchcount[x]++;
	.loc 1 345 19
	addl	$1, %edx	#, _35
	movb	%dl, (%rax)	# _35, *_32
# r_data.c:346: 	    collump[x] = patch->patch;
	.loc 1 346 24
	movq	-56(%rbp), %rax	# patch, tmp222
	movl	8(%rax), %ecx	# patch_91->patch, _36
# r_data.c:346: 	    collump[x] = patch->patch;
	.loc 1 346 13
	movl	-72(%rbp), %eax	# x, tmp223
	cltq
	leaq	(%rax,%rax), %rdx	#, _38
	movq	-40(%rbp), %rax	# collump, tmp224
	addq	%rdx, %rax	# _38, _39
# r_data.c:346: 	    collump[x] = patch->patch;
	.loc 1 346 17
	movl	%ecx, %edx	# _36, _40
	movw	%dx, (%rax)	# _40, *_39
# r_data.c:347: 	    colofs[x] = LONG(realpatch->columnofs[x-x1])+3;
	.loc 1 347 18
	movl	-72(%rbp), %eax	# x, tmp225
	subl	-60(%rbp), %eax	# x1, tmp225
	movl	%eax, %edx	# tmp225, _41
	movq	-16(%rbp), %rax	# realpatch, tmp226
	movslq	%edx, %rdx	# _41, tmp227
	movl	8(%rax,%rdx,4), %eax	# realpatch_124->columnofs[_41], _42
# r_data.c:347: 	    colofs[x] = LONG(realpatch->columnofs[x-x1])+3;
	.loc 1 347 50
	movl	%eax, %ecx	# _42, _43
# r_data.c:347: 	    colofs[x] = LONG(realpatch->columnofs[x-x1])+3;
	.loc 1 347 12
	movl	-72(%rbp), %eax	# x, tmp228
	cltq
	leaq	(%rax,%rax), %rdx	#, _45
	movq	-32(%rbp), %rax	# colofs, tmp229
	addq	%rdx, %rax	# _45, _46
# r_data.c:347: 	    colofs[x] = LONG(realpatch->columnofs[x-x1])+3;
	.loc 1 347 50
	leal	3(%rcx), %edx	#, _47
# r_data.c:347: 	    colofs[x] = LONG(realpatch->columnofs[x-x1])+3;
	.loc 1 347 16
	movw	%dx, (%rax)	# _47, *_46
# r_data.c:343: 	for ( ; x<x2 ; x++)
	.loc 1 343 18 discriminator 2
	addl	$1, -72(%rbp)	#, x
.L27:
# r_data.c:343: 	for ( ; x<x2 ; x++)
	.loc 1 343 11 discriminator 1
	movl	-72(%rbp), %eax	# x, tmp230
	cmpl	-68(%rbp), %eax	# x2, tmp230
	jl	.L28	#,
# r_data.c:330: 	 i++, patch++)
	.loc 1 330 4
	addl	$1, -64(%rbp)	#, i
# r_data.c:330: 	 i++, patch++)
	.loc 1 330 13
	addq	$12, -56(%rbp)	#, patch
.L23:
# r_data.c:329: 	 i<texture->patchcount;
	.loc 1 329 12
	movq	-48(%rbp), %rax	# texture, tmp231
	movzwl	12(%rax), %eax	# texture_105->patchcount, _48
	cwtl
# r_data.c:329: 	 i<texture->patchcount;
	.loc 1 329 4
	cmpl	%eax, -64(%rbp)	# _49, i
	jl	.L29	#,
# r_data.c:351:     for (x=0 ; x<texture->width ; x++)
	.loc 1 351 11
	movl	$0, -72(%rbp)	#, x
# r_data.c:351:     for (x=0 ; x<texture->width ; x++)
	.loc 1 351 5
	jmp	.L30	#
.L35:
# r_data.c:353: 	if (!patchcount[x])
	.loc 1 353 17
	movl	-72(%rbp), %eax	# x, tmp232
	movslq	%eax, %rdx	# tmp232, _50
	movq	-24(%rbp), %rax	# patchcount, tmp233
	addq	%rdx, %rax	# _50, _51
	movzbl	(%rax), %eax	# *_51, _52
# r_data.c:353: 	if (!patchcount[x])
	.loc 1 353 5
	testb	%al, %al	# _52
	jne	.L31	#,
# r_data.c:356: 		    texture->name);
	.loc 1 356 14
	movq	-48(%rbp), %rax	# texture, _53
# r_data.c:355: 	    printf ("R_GenerateLookup: column without a patch (%s)\n",
	.loc 1 355 6
	movq	%rax, %rsi	# _53,
	leaq	.LC1(%rip), %rax	#, tmp234
	movq	%rax, %rdi	# tmp234,
	movl	$0, %eax	#,
	call	printf@PLT	#
# r_data.c:357: 	    return;
	.loc 1 357 6
	jmp	.L19	#
.L31:
# r_data.c:361: 	if (patchcount[x] > 1)
	.loc 1 361 16
	movl	-72(%rbp), %eax	# x, tmp235
	movslq	%eax, %rdx	# tmp235, _54
	movq	-24(%rbp), %rax	# patchcount, tmp236
	addq	%rdx, %rax	# _54, _55
	movzbl	(%rax), %eax	# *_55, _56
# r_data.c:361: 	if (patchcount[x] > 1)
	.loc 1 361 5
	cmpb	$1, %al	#, _56
	jbe	.L33	#,
# r_data.c:364: 	    collump[x] = -1;	
	.loc 1 364 13
	movl	-72(%rbp), %eax	# x, tmp237
	cltq
	leaq	(%rax,%rax), %rdx	#, _58
	movq	-40(%rbp), %rax	# collump, tmp238
	addq	%rdx, %rax	# _58, _59
# r_data.c:364: 	    collump[x] = -1;	
	.loc 1 364 17
	movw	$-1, (%rax)	#, *_59
# r_data.c:365: 	    colofs[x] = texturecompositesize[texnum];
	.loc 1 365 38
	movq	texturecompositesize(%rip), %rax	# texturecompositesize, texturecompositesize.10_60
	movl	-84(%rbp), %edx	# texnum, tmp239
	movslq	%edx, %rdx	# tmp239, _61
	salq	$2, %rdx	#, _62
	addq	%rdx, %rax	# _62, _63
	movl	(%rax), %ecx	# *_63, _64
# r_data.c:365: 	    colofs[x] = texturecompositesize[texnum];
	.loc 1 365 12
	movl	-72(%rbp), %eax	# x, tmp240
	cltq
	leaq	(%rax,%rax), %rdx	#, _66
	movq	-32(%rbp), %rax	# colofs, tmp241
	addq	%rdx, %rax	# _66, _67
# r_data.c:365: 	    colofs[x] = texturecompositesize[texnum];
	.loc 1 365 16
	movl	%ecx, %edx	# _64, _68
	movw	%dx, (%rax)	# _68, *_67
# r_data.c:367: 	    if (texturecompositesize[texnum] > 0x10000-texture->height)
	.loc 1 367 30
	movq	texturecompositesize(%rip), %rax	# texturecompositesize, texturecompositesize.11_69
	movl	-84(%rbp), %edx	# texnum, tmp242
	movslq	%edx, %rdx	# tmp242, _70
	salq	$2, %rdx	#, _71
	addq	%rdx, %rax	# _71, _72
	movl	(%rax), %ecx	# *_72, _73
# r_data.c:367: 	    if (texturecompositesize[texnum] > 0x10000-texture->height)
	.loc 1 367 56
	movq	-48(%rbp), %rax	# texture, tmp243
	movzwl	10(%rax), %eax	# texture_105->height, _74
	cwtl
# r_data.c:367: 	    if (texturecompositesize[texnum] > 0x10000-texture->height)
	.loc 1 367 48
	movl	$65536, %edx	#, tmp244
	subl	%eax, %edx	# _75, _76
# r_data.c:367: 	    if (texturecompositesize[texnum] > 0x10000-texture->height)
	.loc 1 367 9
	cmpl	%edx, %ecx	# _76, _73
	jle	.L34	#,
# r_data.c:369: 		I_Error ("R_GenerateLookup: texture %i is >64k",
	.loc 1 369 3
	movl	-84(%rbp), %eax	# texnum, tmp245
	movl	%eax, %esi	# tmp245,
	leaq	.LC2(%rip), %rax	#, tmp246
	movq	%rax, %rdi	# tmp246,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L34:
# r_data.c:373: 	    texturecompositesize[texnum] += texture->height;
	.loc 1 373 26
	movq	texturecompositesize(%rip), %rax	# texturecompositesize, texturecompositesize.12_77
	movl	-84(%rbp), %edx	# texnum, tmp247
	movslq	%edx, %rdx	# tmp247, _78
	salq	$2, %rdx	#, _79
	addq	%rdx, %rax	# _79, _80
	movl	(%rax), %ecx	# *_80, _81
# r_data.c:373: 	    texturecompositesize[texnum] += texture->height;
	.loc 1 373 45
	movq	-48(%rbp), %rax	# texture, tmp248
	movzwl	10(%rax), %eax	# texture_105->height, _82
	movswl	%ax, %edx	# _82, _83
# r_data.c:373: 	    texturecompositesize[texnum] += texture->height;
	.loc 1 373 26
	movq	texturecompositesize(%rip), %rax	# texturecompositesize, texturecompositesize.13_84
	movl	-84(%rbp), %esi	# texnum, tmp249
	movslq	%esi, %rsi	# tmp249, _85
	salq	$2, %rsi	#, _86
	addq	%rsi, %rax	# _86, _87
# r_data.c:373: 	    texturecompositesize[texnum] += texture->height;
	.loc 1 373 35
	addl	%ecx, %edx	# _81, _88
	movl	%edx, (%rax)	# _88, *_87
.L33:
# r_data.c:351:     for (x=0 ; x<texture->width ; x++)
	.loc 1 351 36 discriminator 2
	addl	$1, -72(%rbp)	#, x
.L30:
# r_data.c:351:     for (x=0 ; x<texture->width ; x++)
	.loc 1 351 25 discriminator 1
	movq	-48(%rbp), %rax	# texture, tmp250
	movzwl	8(%rax), %eax	# texture_105->width, _89
	cwtl
# r_data.c:351:     for (x=0 ; x<texture->width ; x++)
	.loc 1 351 17 discriminator 1
	cmpl	%eax, -72(%rbp)	# _90, x
	jl	.L35	#,
.L19:
# r_data.c:376: }
	.loc 1 376 1
	movq	-8(%rbp), %rax	# D.7613, tmp254
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp254
	je	.L36	#,
	call	__stack_chk_fail@PLT	#
.L36:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	R_GenerateLookup, .-R_GenerateLookup
	.globl	R_GetColumn
	.type	R_GetColumn, @function
R_GetColumn:
.LFB3:
	.loc 1 388 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# tex, tex
	movl	%esi, -24(%rbp)	# col, col
# r_data.c:392:     col &= texturewidthmask[tex];
	.loc 1 392 28
	movq	texturewidthmask(%rip), %rax	# texturewidthmask, texturewidthmask.14_1
	movl	-20(%rbp), %edx	# tex, tmp120
	movslq	%edx, %rdx	# tmp120, _2
	salq	$2, %rdx	#, _3
	addq	%rdx, %rax	# _3, _4
	movl	(%rax), %eax	# *_4, _5
# r_data.c:392:     col &= texturewidthmask[tex];
	.loc 1 392 9
	andl	%eax, -24(%rbp)	# _5, col
# r_data.c:393:     lump = texturecolumnlump[tex][col];
	.loc 1 393 29
	movq	texturecolumnlump(%rip), %rax	# texturecolumnlump, texturecolumnlump.15_6
	movl	-20(%rbp), %edx	# tex, tmp121
	movslq	%edx, %rdx	# tmp121, _7
	salq	$3, %rdx	#, _8
	addq	%rdx, %rax	# _8, _9
	movq	(%rax), %rax	# *_9, _10
# r_data.c:393:     lump = texturecolumnlump[tex][col];
	.loc 1 393 34
	movl	-24(%rbp), %edx	# col, tmp122
	movslq	%edx, %rdx	# tmp122, _11
	addq	%rdx, %rdx	# _12
	addq	%rdx, %rax	# _12, _13
	movzwl	(%rax), %eax	# *_13, _14
# r_data.c:393:     lump = texturecolumnlump[tex][col];
	.loc 1 393 10
	cwtl
	movl	%eax, -8(%rbp)	# tmp123, lump
# r_data.c:394:     ofs = texturecolumnofs[tex][col];
	.loc 1 394 27
	movq	texturecolumnofs(%rip), %rax	# texturecolumnofs, texturecolumnofs.16_15
	movl	-20(%rbp), %edx	# tex, tmp124
	movslq	%edx, %rdx	# tmp124, _16
	salq	$3, %rdx	#, _17
	addq	%rdx, %rax	# _17, _18
	movq	(%rax), %rax	# *_18, _19
# r_data.c:394:     ofs = texturecolumnofs[tex][col];
	.loc 1 394 32
	movl	-24(%rbp), %edx	# col, tmp125
	movslq	%edx, %rdx	# tmp125, _20
	addq	%rdx, %rdx	# _21
	addq	%rdx, %rax	# _21, _22
	movzwl	(%rax), %eax	# *_22, _23
# r_data.c:394:     ofs = texturecolumnofs[tex][col];
	.loc 1 394 9
	movzwl	%ax, %eax	# _23, tmp126
	movl	%eax, -4(%rbp)	# tmp126, ofs
# r_data.c:396:     if (lump > 0)
	.loc 1 396 8
	cmpl	$0, -8(%rbp)	#, lump
	jle	.L38	#,
# r_data.c:397: 	return (byte *)W_CacheLumpNum(lump,PU_CACHE)+ofs;
	.loc 1 397 17
	movl	-8(%rbp), %eax	# lump, tmp127
	movl	$101, %esi	#,
	movl	%eax, %edi	# tmp127,
	call	W_CacheLumpNum@PLT	#
# r_data.c:397: 	return (byte *)W_CacheLumpNum(lump,PU_CACHE)+ofs;
	.loc 1 397 46 discriminator 1
	movl	-4(%rbp), %edx	# ofs, tmp128
	movslq	%edx, %rdx	# tmp128, _25
	addq	%rdx, %rax	# _25, _37
# r_data.c:397: 	return (byte *)W_CacheLumpNum(lump,PU_CACHE)+ofs;
	.loc 1 397 46 is_stmt 0
	jmp	.L39	#
.L38:
# r_data.c:399:     if (!texturecomposite[tex])
	.loc 1 399 26 is_stmt 1
	movq	texturecomposite(%rip), %rax	# texturecomposite, texturecomposite.17_26
	movl	-20(%rbp), %edx	# tex, tmp129
	movslq	%edx, %rdx	# tmp129, _27
	salq	$3, %rdx	#, _28
	addq	%rdx, %rax	# _28, _29
	movq	(%rax), %rax	# *_29, _30
# r_data.c:399:     if (!texturecomposite[tex])
	.loc 1 399 8
	testq	%rax, %rax	# _30
	jne	.L40	#,
# r_data.c:400: 	R_GenerateComposite (tex);
	.loc 1 400 2
	movl	-20(%rbp), %eax	# tex, tmp130
	movl	%eax, %edi	# tmp130,
	call	R_GenerateComposite	#
.L40:
# r_data.c:402:     return texturecomposite[tex] + ofs;
	.loc 1 402 28
	movq	texturecomposite(%rip), %rax	# texturecomposite, texturecomposite.18_31
	movl	-20(%rbp), %edx	# tex, tmp131
	movslq	%edx, %rdx	# tmp131, _32
	salq	$3, %rdx	#, _33
	addq	%rdx, %rax	# _33, _34
	movq	(%rax), %rdx	# *_34, _35
# r_data.c:402:     return texturecomposite[tex] + ofs;
	.loc 1 402 34
	movl	-4(%rbp), %eax	# ofs, tmp132
	cltq
	addq	%rdx, %rax	# _35, _37
.L39:
# r_data.c:403: }
	.loc 1 403 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3:
	.size	R_GetColumn, .-R_GetColumn
	.section	.rodata
.LC3:
	.string	"PNAMES"
.LC4:
	.string	"TEXTURE1"
.LC5:
	.string	"TEXTURE2"
.LC6:
	.string	"S_START"
.LC7:
	.string	"S_END"
.LC8:
	.string	"         ]"
.LC9:
	.string	"\b\b\b\b\b\b\b\b\b\b"
	.align 8
.LC10:
	.string	"R_InitTextures: bad texture directory"
	.align 8
.LC11:
	.string	"R_InitTextures: Missing patch in texture %s"
	.text
	.globl	R_InitTextures
	.type	R_InitTextures, @function
R_InitTextures:
.LFB4:
	.loc 1 414 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$168, %rsp	#,
	.cfi_offset 3, -24
# r_data.c:414: {
	.loc 1 414 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp347
	movq	%rax, -24(%rbp)	# tmp347, D.7618
	xorl	%eax, %eax	# tmp347
# r_data.c:449:     name[8] = 0;	
	.loc 1 449 13
	movb	$0, -25(%rbp)	#, name[8]
# r_data.c:450:     names = W_CacheLumpName ("PNAMES", PU_STATIC);
	.loc 1 450 13
	movl	$1, %esi	#,
	leaq	.LC3(%rip), %rax	#, tmp213
	movq	%rax, %rdi	# tmp213,
	call	W_CacheLumpName@PLT	#
	movq	%rax, -88(%rbp)	# tmp214, names
# r_data.c:451:     nummappatches = LONG ( *((int *)names) );
	.loc 1 451 19
	movq	-88(%rbp), %rax	# names, tmp215
	movl	(%rax), %eax	# MEM[(int *)names_166], tmp216
	movl	%eax, -152(%rbp)	# tmp216, nummappatches
# r_data.c:452:     name_p = names+4;
	.loc 1 452 12
	movq	-88(%rbp), %rax	# names, tmp220
	addq	$4, %rax	#, tmp219
	movq	%rax, -80(%rbp)	# tmp219, name_p
# r_data.c:453:     patchlookup = alloca (nummappatches*sizeof(*patchlookup));
	.loc 1 453 19
	movl	-152(%rbp), %eax	# nummappatches, tmp221
	cltq
	salq	$2, %rax	#, _2
	leaq	8(%rax), %rdx	#, tmp222
	movl	$16, %eax	#, tmp345
	subq	$1, %rax	#, tmp223
	addq	%rdx, %rax	# tmp222, tmp224
	movl	$16, %ebx	#, tmp346
	movl	$0, %edx	#, tmp227
	divq	%rbx	# tmp346
	imulq	$16, %rax, %rax	#, tmp226, tmp228
	movq	%rax, %rcx	# tmp228, tmp230
	andq	$-4096, %rcx	#, tmp230
	movq	%rsp, %rdx	#, tmp231
	subq	%rcx, %rdx	# tmp230, tmp231
.L42:
	cmpq	%rdx, %rsp	# tmp231,
	je	.L43	#,
	subq	$4096, %rsp	#,
	orq	$0, 4088(%rsp)	#,
	jmp	.L42	#
.L43:
	movq	%rax, %rdx	# tmp228, tmp232
	andl	$4095, %edx	#, tmp232
	subq	%rdx, %rsp	# tmp232,
	movq	%rax, %rdx	# tmp228, tmp233
	andl	$4095, %edx	#, tmp233
	testq	%rdx, %rdx	# tmp233
	je	.L44	#,
	andl	$4095, %eax	#, tmp234
	subq	$8, %rax	#, tmp234
	addq	%rsp, %rax	#, tmp235
	orq	$0, (%rax)	#,
.L44:
	movq	%rsp, %rax	#, tmp229
	addq	$15, %rax	#, tmp236
	shrq	$4, %rax	#, tmp237
	salq	$4, %rax	#, tmp238
	movq	%rax, -72(%rbp)	# tmp238, patchlookup
# r_data.c:455:     for (i=0 ; i<nummappatches ; i++)
	.loc 1 455 11
	movl	$0, -176(%rbp)	#, i
# r_data.c:455:     for (i=0 ; i<nummappatches ; i++)
	.loc 1 455 5
	jmp	.L45	#
.L46:
# r_data.c:457: 	strncpy (name,name_p+i*8, 8);
	.loc 1 457 24
	movl	-176(%rbp), %eax	# i, tmp239
	sall	$3, %eax	#, _3
	movslq	%eax, %rdx	# _3, _4
# r_data.c:457: 	strncpy (name,name_p+i*8, 8);
	.loc 1 457 22
	movq	-80(%rbp), %rax	# name_p, tmp240
	leaq	(%rdx,%rax), %rcx	#, _5
# r_data.c:457: 	strncpy (name,name_p+i*8, 8);
	.loc 1 457 2
	leaq	-33(%rbp), %rax	#, tmp241
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# _5,
	movq	%rax, %rdi	# tmp241,
	call	strncpy@PLT	#
# r_data.c:458: 	patchlookup[i] = W_CheckNumForName (name);
	.loc 1 458 13
	movl	-176(%rbp), %eax	# i, tmp242
	cltq
	leaq	0(,%rax,4), %rdx	#, _7
	movq	-72(%rbp), %rax	# patchlookup, tmp243
	leaq	(%rdx,%rax), %rbx	#, _8
# r_data.c:458: 	patchlookup[i] = W_CheckNumForName (name);
	.loc 1 458 19
	leaq	-33(%rbp), %rax	#, tmp244
	movq	%rax, %rdi	# tmp244,
	call	W_CheckNumForName@PLT	#
# r_data.c:458: 	patchlookup[i] = W_CheckNumForName (name);
	.loc 1 458 17 discriminator 1
	movl	%eax, (%rbx)	# _9, *_8
# r_data.c:455:     for (i=0 ; i<nummappatches ; i++)
	.loc 1 455 35 discriminator 3
	addl	$1, -176(%rbp)	#, i
.L45:
# r_data.c:455:     for (i=0 ; i<nummappatches ; i++)
	.loc 1 455 17 discriminator 1
	movl	-176(%rbp), %eax	# i, tmp245
	cmpl	-152(%rbp), %eax	# nummappatches, tmp245
	jl	.L46	#,
# r_data.c:460:     Z_Free (names);
	.loc 1 460 5
	movq	-88(%rbp), %rax	# names, tmp246
	movq	%rax, %rdi	# tmp246,
	call	Z_Free@PLT	#
# r_data.c:465:     maptex = maptex1 = W_CacheLumpName ("TEXTURE1", PU_STATIC);
	.loc 1 465 24
	movl	$1, %esi	#,
	leaq	.LC4(%rip), %rax	#, tmp247
	movq	%rax, %rdi	# tmp247,
	call	W_CacheLumpName@PLT	#
	movq	%rax, -64(%rbp)	# tmp248, maptex1
# r_data.c:465:     maptex = maptex1 = W_CacheLumpName ("TEXTURE1", PU_STATIC);
	.loc 1 465 12 discriminator 1
	movq	-64(%rbp), %rax	# maptex1, tmp249
	movq	%rax, -112(%rbp)	# tmp249, maptex
# r_data.c:466:     numtextures1 = LONG(*maptex);
	.loc 1 466 18
	movq	-112(%rbp), %rax	# maptex, tmp250
	movl	(%rax), %eax	# *maptex_175, tmp251
	movl	%eax, -148(%rbp)	# tmp251, numtextures1
# r_data.c:467:     maxoff = W_LumpLength (W_GetNumForName ("TEXTURE1"));
	.loc 1 467 14
	leaq	.LC4(%rip), %rax	#, tmp252
	movq	%rax, %rdi	# tmp252,
	call	W_GetNumForName@PLT	#
# r_data.c:467:     maxoff = W_LumpLength (W_GetNumForName ("TEXTURE1"));
	.loc 1 467 14 is_stmt 0 discriminator 1
	movl	%eax, %edi	# _10,
	call	W_LumpLength@PLT	#
	movl	%eax, -164(%rbp)	# tmp253, maxoff
# r_data.c:468:     directory = maptex+1;
	.loc 1 468 15 is_stmt 1
	movq	-112(%rbp), %rax	# maptex, tmp257
	addq	$4, %rax	#, tmp256
	movq	%rax, -96(%rbp)	# tmp256, directory
# r_data.c:470:     if (W_CheckNumForName ("TEXTURE2") != -1)
	.loc 1 470 9
	leaq	.LC5(%rip), %rax	#, tmp258
	movq	%rax, %rdi	# tmp258,
	call	W_CheckNumForName@PLT	#
# r_data.c:470:     if (W_CheckNumForName ("TEXTURE2") != -1)
	.loc 1 470 8 discriminator 1
	cmpl	$-1, %eax	#, _11
	je	.L47	#,
# r_data.c:472: 	maptex2 = W_CacheLumpName ("TEXTURE2", PU_STATIC);
	.loc 1 472 12
	movl	$1, %esi	#,
	leaq	.LC5(%rip), %rax	#, tmp259
	movq	%rax, %rdi	# tmp259,
	call	W_CacheLumpName@PLT	#
	movq	%rax, -104(%rbp)	# tmp260, maptex2
# r_data.c:473: 	numtextures2 = LONG(*maptex2);
	.loc 1 473 15
	movq	-104(%rbp), %rax	# maptex2, tmp261
	movl	(%rax), %eax	# *maptex2_186, tmp262
	movl	%eax, -156(%rbp)	# tmp262, numtextures2
# r_data.c:474: 	maxoff2 = W_LumpLength (W_GetNumForName ("TEXTURE2"));
	.loc 1 474 12
	leaq	.LC5(%rip), %rax	#, tmp263
	movq	%rax, %rdi	# tmp263,
	call	W_GetNumForName@PLT	#
# r_data.c:474: 	maxoff2 = W_LumpLength (W_GetNumForName ("TEXTURE2"));
	.loc 1 474 12 is_stmt 0 discriminator 1
	movl	%eax, %edi	# _12,
	call	W_LumpLength@PLT	#
	movl	%eax, -160(%rbp)	# tmp264, maxoff2
	jmp	.L48	#
.L47:
# r_data.c:478: 	maptex2 = NULL;
	.loc 1 478 10 is_stmt 1
	movq	$0, -104(%rbp)	#, maptex2
# r_data.c:479: 	numtextures2 = 0;
	.loc 1 479 15
	movl	$0, -156(%rbp)	#, numtextures2
# r_data.c:480: 	maxoff2 = 0;
	.loc 1 480 10
	movl	$0, -160(%rbp)	#, maxoff2
.L48:
# r_data.c:482:     numtextures = numtextures1 + numtextures2;
	.loc 1 482 32
	movl	-148(%rbp), %edx	# numtextures1, tmp265
	movl	-156(%rbp), %eax	# numtextures2, tmp266
	addl	%edx, %eax	# tmp265, _13
# r_data.c:482:     numtextures = numtextures1 + numtextures2;
	.loc 1 482 17
	movl	%eax, numtextures(%rip)	# _13, numtextures
# r_data.c:484:     textures = Z_Malloc (numtextures*sizeof(*textures), PU_STATIC, 0);
	.loc 1 484 16
	movl	numtextures(%rip), %eax	# numtextures, numtextures.19_14
	cltq
	sall	$3, %eax	#, _17
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# _18,
	call	Z_Malloc@PLT	#
# r_data.c:484:     textures = Z_Malloc (numtextures*sizeof(*textures), PU_STATIC, 0);
	.loc 1 484 14 discriminator 1
	movq	%rax, textures(%rip)	# _19, textures
# r_data.c:485:     texturecolumnlump = Z_Malloc (numtextures*sizeof(*texturecolumnlump), PU_STATIC, 0);
	.loc 1 485 25
	movl	numtextures(%rip), %eax	# numtextures, numtextures.20_20
	cltq
	sall	$3, %eax	#, _23
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# _24,
	call	Z_Malloc@PLT	#
# r_data.c:485:     texturecolumnlump = Z_Malloc (numtextures*sizeof(*texturecolumnlump), PU_STATIC, 0);
	.loc 1 485 23 discriminator 1
	movq	%rax, texturecolumnlump(%rip)	# _25, texturecolumnlump
# r_data.c:486:     texturecolumnofs = Z_Malloc (numtextures*sizeof(*texturecolumnofs), PU_STATIC, 0);
	.loc 1 486 24
	movl	numtextures(%rip), %eax	# numtextures, numtextures.21_26
	cltq
	sall	$3, %eax	#, _29
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# _30,
	call	Z_Malloc@PLT	#
# r_data.c:486:     texturecolumnofs = Z_Malloc (numtextures*sizeof(*texturecolumnofs), PU_STATIC, 0);
	.loc 1 486 22 discriminator 1
	movq	%rax, texturecolumnofs(%rip)	# _31, texturecolumnofs
# r_data.c:487:     texturecomposite = Z_Malloc (numtextures*sizeof(*texturecomposite), PU_STATIC, 0);
	.loc 1 487 24
	movl	numtextures(%rip), %eax	# numtextures, numtextures.22_32
	cltq
	sall	$3, %eax	#, _35
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# _36,
	call	Z_Malloc@PLT	#
# r_data.c:487:     texturecomposite = Z_Malloc (numtextures*sizeof(*texturecomposite), PU_STATIC, 0);
	.loc 1 487 22 discriminator 1
	movq	%rax, texturecomposite(%rip)	# _37, texturecomposite
# r_data.c:488:     texturecompositesize = Z_Malloc (numtextures*4, PU_STATIC, 0);
	.loc 1 488 28
	movl	numtextures(%rip), %eax	# numtextures, numtextures.23_38
	sall	$2, %eax	#, _39
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# _39,
	call	Z_Malloc@PLT	#
# r_data.c:488:     texturecompositesize = Z_Malloc (numtextures*4, PU_STATIC, 0);
	.loc 1 488 26 discriminator 1
	movq	%rax, texturecompositesize(%rip)	# _40, texturecompositesize
# r_data.c:489:     texturewidthmask = Z_Malloc (numtextures*4, PU_STATIC, 0);
	.loc 1 489 24
	movl	numtextures(%rip), %eax	# numtextures, numtextures.24_41
	sall	$2, %eax	#, _42
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# _42,
	call	Z_Malloc@PLT	#
# r_data.c:489:     texturewidthmask = Z_Malloc (numtextures*4, PU_STATIC, 0);
	.loc 1 489 22 discriminator 1
	movq	%rax, texturewidthmask(%rip)	# _43, texturewidthmask
# r_data.c:490:     textureheight = Z_Malloc (numtextures*4, PU_STATIC, 0);
	.loc 1 490 21
	movl	numtextures(%rip), %eax	# numtextures, numtextures.25_44
	sall	$2, %eax	#, _45
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# _45,
	call	Z_Malloc@PLT	#
# r_data.c:490:     textureheight = Z_Malloc (numtextures*4, PU_STATIC, 0);
	.loc 1 490 19 discriminator 1
	movq	%rax, textureheight(%rip)	# _46, textureheight
# r_data.c:492:     totalwidth = 0;
	.loc 1 492 16
	movl	$0, -168(%rbp)	#, totalwidth
# r_data.c:495:     temp1 = W_GetNumForName ("S_START");  // P_???????
	.loc 1 495 13
	leaq	.LC6(%rip), %rax	#, tmp267
	movq	%rax, %rdi	# tmp267,
	call	W_GetNumForName@PLT	#
	movl	%eax, -144(%rbp)	# tmp268, temp1
# r_data.c:496:     temp2 = W_GetNumForName ("S_END") - 1;
	.loc 1 496 13
	leaq	.LC7(%rip), %rax	#, tmp269
	movq	%rax, %rdi	# tmp269,
	call	W_GetNumForName@PLT	#
# r_data.c:496:     temp2 = W_GetNumForName ("S_END") - 1;
	.loc 1 496 11 discriminator 1
	subl	$1, %eax	#, tmp270
	movl	%eax, -140(%rbp)	# tmp270, temp2
# r_data.c:497:     temp3 = ((temp2-temp1+63)/64) + ((numtextures+63)/64);
	.loc 1 497 20
	movl	-140(%rbp), %eax	# temp2, tmp271
	subl	-144(%rbp), %eax	# temp1, _48
# r_data.c:497:     temp3 = ((temp2-temp1+63)/64) + ((numtextures+63)/64);
	.loc 1 497 26
	addl	$63, %eax	#, _49
# r_data.c:497:     temp3 = ((temp2-temp1+63)/64) + ((numtextures+63)/64);
	.loc 1 497 30
	leal	63(%rax), %edx	#, tmp273
	testl	%eax, %eax	# tmp272
	cmovs	%edx, %eax	# tmp273,, tmp272
	sarl	$6, %eax	#, tmp274
	movl	%eax, %ecx	# tmp274, _50
# r_data.c:497:     temp3 = ((temp2-temp1+63)/64) + ((numtextures+63)/64);
	.loc 1 497 50
	movl	numtextures(%rip), %eax	# numtextures, numtextures.26_51
	addl	$63, %eax	#, _52
# r_data.c:497:     temp3 = ((temp2-temp1+63)/64) + ((numtextures+63)/64);
	.loc 1 497 54
	leal	63(%rax), %edx	#, tmp276
	testl	%eax, %eax	# tmp275
	cmovs	%edx, %eax	# tmp276,, tmp275
	sarl	$6, %eax	#, tmp277
# r_data.c:497:     temp3 = ((temp2-temp1+63)/64) + ((numtextures+63)/64);
	.loc 1 497 11
	addl	%ecx, %eax	# _50, tmp278
	movl	%eax, -136(%rbp)	# tmp278, temp3
# r_data.c:498:     printf("[");
	.loc 1 498 5
	movl	$91, %edi	#,
	call	putchar@PLT	#
# r_data.c:499:     for (i = 0; i < temp3; i++)
	.loc 1 499 12
	movl	$0, -176(%rbp)	#, i
# r_data.c:499:     for (i = 0; i < temp3; i++)
	.loc 1 499 5
	jmp	.L49	#
.L50:
# r_data.c:500: 	printf(" ");
	.loc 1 500 2
	movl	$32, %edi	#,
	call	putchar@PLT	#
# r_data.c:499:     for (i = 0; i < temp3; i++)
	.loc 1 499 29 discriminator 3
	addl	$1, -176(%rbp)	#, i
.L49:
# r_data.c:499:     for (i = 0; i < temp3; i++)
	.loc 1 499 19 discriminator 1
	movl	-176(%rbp), %eax	# i, tmp279
	cmpl	-136(%rbp), %eax	# temp3, tmp279
	jl	.L50	#,
# r_data.c:501:     printf("         ]");
	.loc 1 501 5
	leaq	.LC8(%rip), %rax	#, tmp280
	movq	%rax, %rdi	# tmp280,
	movl	$0, %eax	#,
	call	printf@PLT	#
# r_data.c:502:     for (i = 0; i < temp3; i++)
	.loc 1 502 12
	movl	$0, -176(%rbp)	#, i
# r_data.c:502:     for (i = 0; i < temp3; i++)
	.loc 1 502 5
	jmp	.L51	#
.L52:
# r_data.c:503: 	printf("\x8");
	.loc 1 503 2
	movl	$8, %edi	#,
	call	putchar@PLT	#
# r_data.c:502:     for (i = 0; i < temp3; i++)
	.loc 1 502 29 discriminator 3
	addl	$1, -176(%rbp)	#, i
.L51:
# r_data.c:502:     for (i = 0; i < temp3; i++)
	.loc 1 502 19 discriminator 1
	movl	-176(%rbp), %eax	# i, tmp281
	cmpl	-136(%rbp), %eax	# temp3, tmp281
	jl	.L52	#,
# r_data.c:504:     printf("\x8\x8\x8\x8\x8\x8\x8\x8\x8\x8");	
	.loc 1 504 5
	leaq	.LC9(%rip), %rax	#, tmp282
	movq	%rax, %rdi	# tmp282,
	movl	$0, %eax	#,
	call	printf@PLT	#
# r_data.c:506:     for (i=0 ; i<numtextures ; i++, directory++)
	.loc 1 506 11
	movl	$0, -176(%rbp)	#, i
# r_data.c:506:     for (i=0 ; i<numtextures ; i++, directory++)
	.loc 1 506 5
	jmp	.L53	#
.L62:
# r_data.c:508: 	if (!(i&63))
	.loc 1 508 9
	movl	-176(%rbp), %eax	# i, tmp283
	andl	$63, %eax	#, _54
# r_data.c:508: 	if (!(i&63))
	.loc 1 508 5
	testl	%eax, %eax	# _54
	jne	.L54	#,
# r_data.c:509: 	    printf (".");
	.loc 1 509 6
	movl	$46, %edi	#,
	call	putchar@PLT	#
.L54:
# r_data.c:511: 	if (i == numtextures1)
	.loc 1 511 5
	movl	-176(%rbp), %eax	# i, tmp284
	cmpl	-148(%rbp), %eax	# numtextures1, tmp284
	jne	.L55	#,
# r_data.c:514: 	    maptex = maptex2;
	.loc 1 514 13
	movq	-104(%rbp), %rax	# maptex2, tmp285
	movq	%rax, -112(%rbp)	# tmp285, maptex
# r_data.c:515: 	    maxoff = maxoff2;
	.loc 1 515 13
	movl	-160(%rbp), %eax	# maxoff2, tmp286
	movl	%eax, -164(%rbp)	# tmp286, maxoff
# r_data.c:516: 	    directory = maptex+1;
	.loc 1 516 16
	movq	-112(%rbp), %rax	# maptex, tmp290
	addq	$4, %rax	#, tmp289
	movq	%rax, -96(%rbp)	# tmp289, directory
.L55:
# r_data.c:519: 	offset = LONG(*directory);
	.loc 1 519 9
	movq	-96(%rbp), %rax	# directory, tmp291
	movl	(%rax), %eax	# *directory_149, tmp292
	movl	%eax, -132(%rbp)	# tmp292, offset
# r_data.c:521: 	if (offset > maxoff)
	.loc 1 521 5
	movl	-132(%rbp), %eax	# offset, tmp293
	cmpl	-164(%rbp), %eax	# maxoff, tmp293
	jle	.L56	#,
# r_data.c:522: 	    I_Error ("R_InitTextures: bad texture directory");
	.loc 1 522 6
	leaq	.LC10(%rip), %rax	#, tmp294
	movq	%rax, %rdi	# tmp294,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L56:
# r_data.c:524: 	mtexture = (maptexture_t *) ( (byte *)maptex + offset);
	.loc 1 524 13
	movl	-132(%rbp), %eax	# offset, tmp295
	movslq	%eax, %rdx	# tmp295, _55
# r_data.c:524: 	mtexture = (maptexture_t *) ( (byte *)maptex + offset);
	.loc 1 524 11
	movq	-112(%rbp), %rax	# maptex, tmp299
	addq	%rdx, %rax	# _55, tmp298
	movq	%rax, -56(%rbp)	# tmp298, mtexture
# r_data.c:528: 		      + sizeof(texpatch_t)*(SHORT(mtexture->patchcount)-1),
	.loc 1 528 31
	movq	-56(%rbp), %rax	# mtexture, tmp300
	movzwl	20(%rax), %eax	# mtexture_235->patchcount, _56
	cwtl
# r_data.c:528: 		      + sizeof(texpatch_t)*(SHORT(mtexture->patchcount)-1),
	.loc 1 528 58
	subl	$1, %eax	#, _58
	cltq
# r_data.c:528: 		      + sizeof(texpatch_t)*(SHORT(mtexture->patchcount)-1),
	.loc 1 528 9
	movl	%eax, %edx	# _59, _60
	movl	%edx, %eax	# _60, tmp301
	addl	%eax, %eax	# tmp301
	addl	%edx, %eax	# _60, tmp301
	sall	$2, %eax	#, tmp302
	addl	$28, %eax	#, _62
# r_data.c:527: 	    Z_Malloc (sizeof(texture_t)
	.loc 1 527 6
	movl	%eax, %ecx	# _62, _63
# r_data.c:526: 	texture = textures[i] =
	.loc 1 526 20
	movq	textures(%rip), %rax	# textures, textures.27_64
	movl	-176(%rbp), %edx	# i, tmp303
	movslq	%edx, %rdx	# tmp303, _65
	salq	$3, %rdx	#, _66
	leaq	(%rax,%rdx), %rbx	#, _67
# r_data.c:527: 	    Z_Malloc (sizeof(texture_t)
	.loc 1 527 6
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%ecx, %edi	# _63,
	call	Z_Malloc@PLT	#
# r_data.c:526: 	texture = textures[i] =
	.loc 1 526 24
	movq	%rax, (%rbx)	# _68, *_67
# r_data.c:526: 	texture = textures[i] =
	.loc 1 526 10
	movq	(%rbx), %rax	# *_67, tmp304
	movq	%rax, -48(%rbp)	# tmp304, texture
# r_data.c:531: 	texture->width = SHORT(mtexture->width);
	.loc 1 531 19
	movq	-56(%rbp), %rax	# mtexture, tmp305
	movzwl	12(%rax), %edx	# mtexture_235->width, _69
# r_data.c:531: 	texture->width = SHORT(mtexture->width);
	.loc 1 531 17
	movq	-48(%rbp), %rax	# texture, tmp306
	movw	%dx, 8(%rax)	# _69, texture_238->width
# r_data.c:532: 	texture->height = SHORT(mtexture->height);
	.loc 1 532 20
	movq	-56(%rbp), %rax	# mtexture, tmp307
	movzwl	14(%rax), %edx	# mtexture_235->height, _70
# r_data.c:532: 	texture->height = SHORT(mtexture->height);
	.loc 1 532 18
	movq	-48(%rbp), %rax	# texture, tmp308
	movw	%dx, 10(%rax)	# _70, texture_238->height
# r_data.c:533: 	texture->patchcount = SHORT(mtexture->patchcount);
	.loc 1 533 24
	movq	-56(%rbp), %rax	# mtexture, tmp309
	movzwl	20(%rax), %edx	# mtexture_235->patchcount, _71
# r_data.c:533: 	texture->patchcount = SHORT(mtexture->patchcount);
	.loc 1 533 22
	movq	-48(%rbp), %rax	# texture, tmp310
	movw	%dx, 12(%rax)	# _71, texture_238->patchcount
# r_data.c:535: 	memcpy (texture->name, mtexture->name, sizeof(texture->name));
	.loc 1 535 33
	movq	-56(%rbp), %rdx	# mtexture, _72
# r_data.c:535: 	memcpy (texture->name, mtexture->name, sizeof(texture->name));
	.loc 1 535 17
	movq	-48(%rbp), %rax	# texture, _73
# r_data.c:535: 	memcpy (texture->name, mtexture->name, sizeof(texture->name));
	.loc 1 535 2
	movq	(%rdx), %rdx	# MEM <unsigned long> [(char * {ref-all})_72], _242
	movq	%rdx, (%rax)	# _242, MEM <unsigned long> [(char * {ref-all})_73]
# r_data.c:536: 	mpatch = &mtexture->patches[0];
	.loc 1 536 9
	movq	-56(%rbp), %rax	# mtexture, tmp314
	addq	$22, %rax	#, tmp313
	movq	%rax, -128(%rbp)	# tmp313, mpatch
# r_data.c:537: 	patch = &texture->patches[0];
	.loc 1 537 8
	movq	-48(%rbp), %rax	# texture, tmp318
	addq	$16, %rax	#, tmp317
	movq	%rax, -120(%rbp)	# tmp317, patch
# r_data.c:539: 	for (j=0 ; j<texture->patchcount ; j++, mpatch++, patch++)
	.loc 1 539 8
	movl	$0, -172(%rbp)	#, j
# r_data.c:539: 	for (j=0 ; j<texture->patchcount ; j++, mpatch++, patch++)
	.loc 1 539 2
	jmp	.L57	#
.L59:
# r_data.c:541: 	    patch->originx = SHORT(mpatch->originx);
	.loc 1 541 23
	movq	-128(%rbp), %rax	# mpatch, tmp319
	movzwl	(%rax), %eax	# mpatch_131->originx, _74
	movswl	%ax, %edx	# _74, _75
# r_data.c:541: 	    patch->originx = SHORT(mpatch->originx);
	.loc 1 541 21
	movq	-120(%rbp), %rax	# patch, tmp320
	movl	%edx, (%rax)	# _75, patch_132->originx
# r_data.c:542: 	    patch->originy = SHORT(mpatch->originy);
	.loc 1 542 23
	movq	-128(%rbp), %rax	# mpatch, tmp321
	movzwl	2(%rax), %eax	# mpatch_131->originy, _76
	movswl	%ax, %edx	# _76, _77
# r_data.c:542: 	    patch->originy = SHORT(mpatch->originy);
	.loc 1 542 21
	movq	-120(%rbp), %rax	# patch, tmp322
	movl	%edx, 4(%rax)	# _77, patch_132->originy
# r_data.c:543: 	    patch->patch = patchlookup[SHORT(mpatch->patch)];
	.loc 1 543 33
	movq	-128(%rbp), %rax	# mpatch, tmp323
	movzwl	4(%rax), %eax	# mpatch_131->patch, _78
	movswq	%ax, %rax	# _78, _79
# r_data.c:543: 	    patch->patch = patchlookup[SHORT(mpatch->patch)];
	.loc 1 543 32
	leaq	0(,%rax,4), %rdx	#, _80
	movq	-72(%rbp), %rax	# patchlookup, tmp324
	addq	%rdx, %rax	# _80, _81
	movl	(%rax), %edx	# *_81, _82
# r_data.c:543: 	    patch->patch = patchlookup[SHORT(mpatch->patch)];
	.loc 1 543 19
	movq	-120(%rbp), %rax	# patch, tmp325
	movl	%edx, 8(%rax)	# _82, patch_132->patch
# r_data.c:544: 	    if (patch->patch == -1)
	.loc 1 544 15
	movq	-120(%rbp), %rax	# patch, tmp326
	movl	8(%rax), %eax	# patch_132->patch, _83
# r_data.c:544: 	    if (patch->patch == -1)
	.loc 1 544 9
	cmpl	$-1, %eax	#, _83
	jne	.L58	#,
# r_data.c:547: 			 texture->name);
	.loc 1 547 12
	movq	-48(%rbp), %rax	# texture, _84
# r_data.c:546: 		I_Error ("R_InitTextures: Missing patch in texture %s",
	.loc 1 546 3
	movq	%rax, %rsi	# _84,
	leaq	.LC11(%rip), %rax	#, tmp327
	movq	%rax, %rdi	# tmp327,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L58:
# r_data.c:539: 	for (j=0 ; j<texture->patchcount ; j++, mpatch++, patch++)
	.loc 1 539 38 discriminator 2
	addl	$1, -172(%rbp)	#, j
# r_data.c:539: 	for (j=0 ; j<texture->patchcount ; j++, mpatch++, patch++)
	.loc 1 539 48 discriminator 2
	addq	$10, -128(%rbp)	#, mpatch
# r_data.c:539: 	for (j=0 ; j<texture->patchcount ; j++, mpatch++, patch++)
	.loc 1 539 57 discriminator 2
	addq	$12, -120(%rbp)	#, patch
.L57:
# r_data.c:539: 	for (j=0 ; j<texture->patchcount ; j++, mpatch++, patch++)
	.loc 1 539 22 discriminator 1
	movq	-48(%rbp), %rax	# texture, tmp328
	movzwl	12(%rax), %eax	# texture_238->patchcount, _85
	cwtl
# r_data.c:539: 	for (j=0 ; j<texture->patchcount ; j++, mpatch++, patch++)
	.loc 1 539 14 discriminator 1
	cmpl	%eax, -172(%rbp)	# _86, j
	jl	.L59	#,
# r_data.c:550: 	texturecolumnlump[i] = Z_Malloc (texture->width*2, PU_STATIC,0);
	.loc 1 550 42
	movq	-48(%rbp), %rax	# texture, tmp329
	movzwl	8(%rax), %eax	# texture_238->width, _87
	cwtl
# r_data.c:550: 	texturecolumnlump[i] = Z_Malloc (texture->width*2, PU_STATIC,0);
	.loc 1 550 25
	addl	%eax, %eax	# _89
# r_data.c:550: 	texturecolumnlump[i] = Z_Malloc (texture->width*2, PU_STATIC,0);
	.loc 1 550 19
	movq	texturecolumnlump(%rip), %rdx	# texturecolumnlump, texturecolumnlump.28_90
	movl	-176(%rbp), %ecx	# i, tmp330
	movslq	%ecx, %rcx	# tmp330, _91
	salq	$3, %rcx	#, _92
	leaq	(%rdx,%rcx), %rbx	#, _93
# r_data.c:550: 	texturecolumnlump[i] = Z_Malloc (texture->width*2, PU_STATIC,0);
	.loc 1 550 25
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# _89,
	call	Z_Malloc@PLT	#
# r_data.c:550: 	texturecolumnlump[i] = Z_Malloc (texture->width*2, PU_STATIC,0);
	.loc 1 550 23 discriminator 1
	movq	%rax, (%rbx)	# _94, *_93
# r_data.c:551: 	texturecolumnofs[i] = Z_Malloc (texture->width*2, PU_STATIC,0);
	.loc 1 551 41
	movq	-48(%rbp), %rax	# texture, tmp331
	movzwl	8(%rax), %eax	# texture_238->width, _95
	cwtl
# r_data.c:551: 	texturecolumnofs[i] = Z_Malloc (texture->width*2, PU_STATIC,0);
	.loc 1 551 24
	addl	%eax, %eax	# _97
# r_data.c:551: 	texturecolumnofs[i] = Z_Malloc (texture->width*2, PU_STATIC,0);
	.loc 1 551 18
	movq	texturecolumnofs(%rip), %rdx	# texturecolumnofs, texturecolumnofs.29_98
	movl	-176(%rbp), %ecx	# i, tmp332
	movslq	%ecx, %rcx	# tmp332, _99
	salq	$3, %rcx	#, _100
	leaq	(%rdx,%rcx), %rbx	#, _101
# r_data.c:551: 	texturecolumnofs[i] = Z_Malloc (texture->width*2, PU_STATIC,0);
	.loc 1 551 24
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# _97,
	call	Z_Malloc@PLT	#
# r_data.c:551: 	texturecolumnofs[i] = Z_Malloc (texture->width*2, PU_STATIC,0);
	.loc 1 551 22 discriminator 1
	movq	%rax, (%rbx)	# _102, *_101
# r_data.c:553: 	j = 1;
	.loc 1 553 4
	movl	$1, -172(%rbp)	#, j
# r_data.c:554: 	while (j*2 <= texture->width)
	.loc 1 554 8
	jmp	.L60	#
.L61:
# r_data.c:555: 	    j<<=1;
	.loc 1 555 7
	sall	-172(%rbp)	# j
.L60:
# r_data.c:554: 	while (j*2 <= texture->width)
	.loc 1 554 10
	movl	-172(%rbp), %eax	# j, tmp333
	leal	(%rax,%rax), %edx	#, _103
# r_data.c:554: 	while (j*2 <= texture->width)
	.loc 1 554 23
	movq	-48(%rbp), %rax	# texture, tmp334
	movzwl	8(%rax), %eax	# texture_238->width, _104
	cwtl
# r_data.c:554: 	while (j*2 <= texture->width)
	.loc 1 554 13
	cmpl	%eax, %edx	# _105, _103
	jle	.L61	#,
# r_data.c:557: 	texturewidthmask[i] = j-1;
	.loc 1 557 18
	movq	texturewidthmask(%rip), %rax	# texturewidthmask, texturewidthmask.30_106
	movl	-176(%rbp), %edx	# i, tmp335
	movslq	%edx, %rdx	# tmp335, _107
	salq	$2, %rdx	#, _108
	addq	%rdx, %rax	# _108, _109
# r_data.c:557: 	texturewidthmask[i] = j-1;
	.loc 1 557 25
	movl	-172(%rbp), %edx	# j, tmp336
	subl	$1, %edx	#, _110
# r_data.c:557: 	texturewidthmask[i] = j-1;
	.loc 1 557 22
	movl	%edx, (%rax)	# _110, *_109
# r_data.c:558: 	textureheight[i] = texture->height<<FRACBITS;
	.loc 1 558 28
	movq	-48(%rbp), %rax	# texture, tmp337
	movzwl	10(%rax), %eax	# texture_238->height, _111
	movswl	%ax, %edx	# _111, _112
# r_data.c:558: 	textureheight[i] = texture->height<<FRACBITS;
	.loc 1 558 15
	movq	textureheight(%rip), %rax	# textureheight, textureheight.31_113
	movl	-176(%rbp), %ecx	# i, tmp338
	movslq	%ecx, %rcx	# tmp338, _114
	salq	$2, %rcx	#, _115
	addq	%rcx, %rax	# _115, _116
# r_data.c:558: 	textureheight[i] = texture->height<<FRACBITS;
	.loc 1 558 36
	sall	$16, %edx	#, _117
# r_data.c:558: 	textureheight[i] = texture->height<<FRACBITS;
	.loc 1 558 19
	movl	%edx, (%rax)	# _117, *_116
# r_data.c:560: 	totalwidth += texture->width;
	.loc 1 560 23
	movq	-48(%rbp), %rax	# texture, tmp339
	movzwl	8(%rax), %eax	# texture_238->width, _118
	cwtl
# r_data.c:560: 	totalwidth += texture->width;
	.loc 1 560 13
	addl	%eax, -168(%rbp)	# _119, totalwidth
# r_data.c:506:     for (i=0 ; i<numtextures ; i++, directory++)
	.loc 1 506 33 discriminator 2
	addl	$1, -176(%rbp)	#, i
# r_data.c:506:     for (i=0 ; i<numtextures ; i++, directory++)
	.loc 1 506 46 discriminator 2
	addq	$4, -96(%rbp)	#, directory
.L53:
# r_data.c:506:     for (i=0 ; i<numtextures ; i++, directory++)
	.loc 1 506 17 discriminator 1
	movl	numtextures(%rip), %eax	# numtextures, numtextures.32_120
	cmpl	%eax, -176(%rbp)	# numtextures.32_120, i
	jl	.L62	#,
# r_data.c:563:     Z_Free (maptex1);
	.loc 1 563 5
	movq	-64(%rbp), %rax	# maptex1, tmp340
	movq	%rax, %rdi	# tmp340,
	call	Z_Free@PLT	#
# r_data.c:564:     if (maptex2)
	.loc 1 564 8
	cmpq	$0, -104(%rbp)	#, maptex2
	je	.L63	#,
# r_data.c:565: 	Z_Free (maptex2);
	.loc 1 565 2
	movq	-104(%rbp), %rax	# maptex2, tmp341
	movq	%rax, %rdi	# tmp341,
	call	Z_Free@PLT	#
.L63:
# r_data.c:568:     for (i=0 ; i<numtextures ; i++)
	.loc 1 568 11
	movl	$0, -176(%rbp)	#, i
# r_data.c:568:     for (i=0 ; i<numtextures ; i++)
	.loc 1 568 5
	jmp	.L64	#
.L65:
# r_data.c:569: 	R_GenerateLookup (i);
	.loc 1 569 2
	movl	-176(%rbp), %eax	# i, tmp342
	movl	%eax, %edi	# tmp342,
	call	R_GenerateLookup	#
# r_data.c:568:     for (i=0 ; i<numtextures ; i++)
	.loc 1 568 33 discriminator 3
	addl	$1, -176(%rbp)	#, i
.L64:
# r_data.c:568:     for (i=0 ; i<numtextures ; i++)
	.loc 1 568 17 discriminator 1
	movl	numtextures(%rip), %eax	# numtextures, numtextures.33_121
	cmpl	%eax, -176(%rbp)	# numtextures.33_121, i
	jl	.L65	#,
# r_data.c:572:     texturetranslation = Z_Malloc ((numtextures+1)*4, PU_STATIC, 0);
	.loc 1 572 48
	movl	numtextures(%rip), %eax	# numtextures, numtextures.34_122
	addl	$1, %eax	#, _123
# r_data.c:572:     texturetranslation = Z_Malloc ((numtextures+1)*4, PU_STATIC, 0);
	.loc 1 572 26
	sall	$2, %eax	#, _124
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# _124,
	call	Z_Malloc@PLT	#
# r_data.c:572:     texturetranslation = Z_Malloc ((numtextures+1)*4, PU_STATIC, 0);
	.loc 1 572 24 discriminator 1
	movq	%rax, texturetranslation(%rip)	# _125, texturetranslation
# r_data.c:574:     for (i=0 ; i<numtextures ; i++)
	.loc 1 574 11
	movl	$0, -176(%rbp)	#, i
# r_data.c:574:     for (i=0 ; i<numtextures ; i++)
	.loc 1 574 5
	jmp	.L66	#
.L67:
# r_data.c:575: 	texturetranslation[i] = i;
	.loc 1 575 20
	movq	texturetranslation(%rip), %rax	# texturetranslation, texturetranslation.35_126
	movl	-176(%rbp), %edx	# i, tmp343
	movslq	%edx, %rdx	# tmp343, _127
	salq	$2, %rdx	#, _128
	addq	%rax, %rdx	# texturetranslation.35_126, _129
# r_data.c:575: 	texturetranslation[i] = i;
	.loc 1 575 24
	movl	-176(%rbp), %eax	# i, tmp344
	movl	%eax, (%rdx)	# tmp344, *_129
# r_data.c:574:     for (i=0 ; i<numtextures ; i++)
	.loc 1 574 33 discriminator 3
	addl	$1, -176(%rbp)	#, i
.L66:
# r_data.c:574:     for (i=0 ; i<numtextures ; i++)
	.loc 1 574 17 discriminator 1
	movl	numtextures(%rip), %eax	# numtextures, numtextures.36_130
	cmpl	%eax, -176(%rbp)	# numtextures.36_130, i
	jl	.L67	#,
# r_data.c:576: }
	.loc 1 576 1
	nop	
	movq	-24(%rbp), %rax	# D.7618, tmp348
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp348
	je	.L68	#,
	call	__stack_chk_fail@PLT	#
.L68:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4:
	.size	R_InitTextures, .-R_InitTextures
	.section	.rodata
.LC12:
	.string	"F_START"
.LC13:
	.string	"F_END"
	.text
	.globl	R_InitFlats
	.type	R_InitFlats, @function
R_InitFlats:
.LFB5:
	.loc 1 584 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# r_data.c:587:     firstflat = W_GetNumForName ("F_START") + 1;
	.loc 1 587 17
	leaq	.LC12(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	W_GetNumForName@PLT	#
# r_data.c:587:     firstflat = W_GetNumForName ("F_START") + 1;
	.loc 1 587 45 discriminator 1
	addl	$1, %eax	#, _2
# r_data.c:587:     firstflat = W_GetNumForName ("F_START") + 1;
	.loc 1 587 15 discriminator 1
	movl	%eax, firstflat(%rip)	# _2, firstflat
# r_data.c:588:     lastflat = W_GetNumForName ("F_END") - 1;
	.loc 1 588 16
	leaq	.LC13(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	W_GetNumForName@PLT	#
# r_data.c:588:     lastflat = W_GetNumForName ("F_END") - 1;
	.loc 1 588 42 discriminator 1
	subl	$1, %eax	#, _4
# r_data.c:588:     lastflat = W_GetNumForName ("F_END") - 1;
	.loc 1 588 14 discriminator 1
	movl	%eax, lastflat(%rip)	# _4, lastflat
# r_data.c:589:     numflats = lastflat - firstflat + 1;
	.loc 1 589 25
	movl	lastflat(%rip), %edx	# lastflat, lastflat.37_5
	movl	firstflat(%rip), %eax	# firstflat, firstflat.38_6
	subl	%eax, %edx	# firstflat.38_6, _7
# r_data.c:589:     numflats = lastflat - firstflat + 1;
	.loc 1 589 37
	leal	1(%rdx), %eax	#, _8
# r_data.c:589:     numflats = lastflat - firstflat + 1;
	.loc 1 589 14
	movl	%eax, numflats(%rip)	# _8, numflats
# r_data.c:592:     flattranslation = Z_Malloc ((numflats+1)*4, PU_STATIC, 0);
	.loc 1 592 42
	movl	numflats(%rip), %eax	# numflats, numflats.39_9
	addl	$1, %eax	#, _10
# r_data.c:592:     flattranslation = Z_Malloc ((numflats+1)*4, PU_STATIC, 0);
	.loc 1 592 23
	sall	$2, %eax	#, _11
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# _11,
	call	Z_Malloc@PLT	#
# r_data.c:592:     flattranslation = Z_Malloc ((numflats+1)*4, PU_STATIC, 0);
	.loc 1 592 21 discriminator 1
	movq	%rax, flattranslation(%rip)	# _12, flattranslation
# r_data.c:594:     for (i=0 ; i<numflats ; i++)
	.loc 1 594 11
	movl	$0, -4(%rbp)	#, i
# r_data.c:594:     for (i=0 ; i<numflats ; i++)
	.loc 1 594 5
	jmp	.L70	#
.L71:
# r_data.c:595: 	flattranslation[i] = i;
	.loc 1 595 17
	movq	flattranslation(%rip), %rax	# flattranslation, flattranslation.40_13
	movl	-4(%rbp), %edx	# i, tmp101
	movslq	%edx, %rdx	# tmp101, _14
	salq	$2, %rdx	#, _15
	addq	%rax, %rdx	# flattranslation.40_13, _16
# r_data.c:595: 	flattranslation[i] = i;
	.loc 1 595 21
	movl	-4(%rbp), %eax	# i, tmp102
	movl	%eax, (%rdx)	# tmp102, *_16
# r_data.c:594:     for (i=0 ; i<numflats ; i++)
	.loc 1 594 30 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L70:
# r_data.c:594:     for (i=0 ; i<numflats ; i++)
	.loc 1 594 17 discriminator 1
	movl	numflats(%rip), %eax	# numflats, numflats.41_17
	cmpl	%eax, -4(%rbp)	# numflats.41_17, i
	jl	.L71	#,
# r_data.c:596: }
	.loc 1 596 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5:
	.size	R_InitFlats, .-R_InitFlats
	.globl	R_InitSpriteLumps
	.type	R_InitSpriteLumps, @function
R_InitSpriteLumps:
.LFB6:
	.loc 1 606 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# r_data.c:610:     firstspritelump = W_GetNumForName ("S_START") + 1;
	.loc 1 610 23
	leaq	.LC6(%rip), %rax	#, tmp124
	movq	%rax, %rdi	# tmp124,
	call	W_GetNumForName@PLT	#
# r_data.c:610:     firstspritelump = W_GetNumForName ("S_START") + 1;
	.loc 1 610 51 discriminator 1
	addl	$1, %eax	#, _2
# r_data.c:610:     firstspritelump = W_GetNumForName ("S_START") + 1;
	.loc 1 610 21 discriminator 1
	movl	%eax, firstspritelump(%rip)	# _2, firstspritelump
# r_data.c:611:     lastspritelump = W_GetNumForName ("S_END") - 1;
	.loc 1 611 22
	leaq	.LC7(%rip), %rax	#, tmp125
	movq	%rax, %rdi	# tmp125,
	call	W_GetNumForName@PLT	#
# r_data.c:611:     lastspritelump = W_GetNumForName ("S_END") - 1;
	.loc 1 611 48 discriminator 1
	subl	$1, %eax	#, _4
# r_data.c:611:     lastspritelump = W_GetNumForName ("S_END") - 1;
	.loc 1 611 20 discriminator 1
	movl	%eax, lastspritelump(%rip)	# _4, lastspritelump
# r_data.c:613:     numspritelumps = lastspritelump - firstspritelump + 1;
	.loc 1 613 37
	movl	lastspritelump(%rip), %edx	# lastspritelump, lastspritelump.42_5
	movl	firstspritelump(%rip), %eax	# firstspritelump, firstspritelump.43_6
	subl	%eax, %edx	# firstspritelump.43_6, _7
# r_data.c:613:     numspritelumps = lastspritelump - firstspritelump + 1;
	.loc 1 613 55
	leal	1(%rdx), %eax	#, _8
# r_data.c:613:     numspritelumps = lastspritelump - firstspritelump + 1;
	.loc 1 613 20
	movl	%eax, numspritelumps(%rip)	# _8, numspritelumps
# r_data.c:614:     spritewidth = Z_Malloc (numspritelumps*4, PU_STATIC, 0);
	.loc 1 614 19
	movl	numspritelumps(%rip), %eax	# numspritelumps, numspritelumps.44_9
	sall	$2, %eax	#, _10
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# _10,
	call	Z_Malloc@PLT	#
# r_data.c:614:     spritewidth = Z_Malloc (numspritelumps*4, PU_STATIC, 0);
	.loc 1 614 17 discriminator 1
	movq	%rax, spritewidth(%rip)	# _11, spritewidth
# r_data.c:615:     spriteoffset = Z_Malloc (numspritelumps*4, PU_STATIC, 0);
	.loc 1 615 20
	movl	numspritelumps(%rip), %eax	# numspritelumps, numspritelumps.45_12
	sall	$2, %eax	#, _13
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# _13,
	call	Z_Malloc@PLT	#
# r_data.c:615:     spriteoffset = Z_Malloc (numspritelumps*4, PU_STATIC, 0);
	.loc 1 615 18 discriminator 1
	movq	%rax, spriteoffset(%rip)	# _14, spriteoffset
# r_data.c:616:     spritetopoffset = Z_Malloc (numspritelumps*4, PU_STATIC, 0);
	.loc 1 616 23
	movl	numspritelumps(%rip), %eax	# numspritelumps, numspritelumps.46_15
	sall	$2, %eax	#, _16
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# _16,
	call	Z_Malloc@PLT	#
# r_data.c:616:     spritetopoffset = Z_Malloc (numspritelumps*4, PU_STATIC, 0);
	.loc 1 616 21 discriminator 1
	movq	%rax, spritetopoffset(%rip)	# _17, spritetopoffset
# r_data.c:618:     for (i=0 ; i< numspritelumps ; i++)
	.loc 1 618 11
	movl	$0, -12(%rbp)	#, i
# r_data.c:618:     for (i=0 ; i< numspritelumps ; i++)
	.loc 1 618 5
	jmp	.L73	#
.L75:
# r_data.c:620: 	if (!(i&63))
	.loc 1 620 9
	movl	-12(%rbp), %eax	# i, tmp126
	andl	$63, %eax	#, _18
# r_data.c:620: 	if (!(i&63))
	.loc 1 620 5
	testl	%eax, %eax	# _18
	jne	.L74	#,
# r_data.c:621: 	    printf (".");
	.loc 1 621 6
	movl	$46, %edi	#,
	call	putchar@PLT	#
.L74:
# r_data.c:623: 	patch = W_CacheLumpNum (firstspritelump+i, PU_CACHE);
	.loc 1 623 10
	movl	firstspritelump(%rip), %edx	# firstspritelump, firstspritelump.47_19
	movl	-12(%rbp), %eax	# i, tmp127
	addl	%edx, %eax	# firstspritelump.47_19, _20
	movl	$101, %esi	#,
	movl	%eax, %edi	# _20,
	call	W_CacheLumpNum@PLT	#
	movq	%rax, -8(%rbp)	# tmp128, patch
# r_data.c:624: 	spritewidth[i] = SHORT(patch->width)<<FRACBITS;
	.loc 1 624 19
	movq	-8(%rbp), %rax	# patch, tmp129
	movzwl	(%rax), %eax	# patch_61->width, _21
	movswl	%ax, %edx	# _21, _22
# r_data.c:624: 	spritewidth[i] = SHORT(patch->width)<<FRACBITS;
	.loc 1 624 13
	movq	spritewidth(%rip), %rax	# spritewidth, spritewidth.48_23
	movl	-12(%rbp), %ecx	# i, tmp130
	movslq	%ecx, %rcx	# tmp130, _24
	salq	$2, %rcx	#, _25
	addq	%rcx, %rax	# _25, _26
# r_data.c:624: 	spritewidth[i] = SHORT(patch->width)<<FRACBITS;
	.loc 1 624 38
	sall	$16, %edx	#, _27
# r_data.c:624: 	spritewidth[i] = SHORT(patch->width)<<FRACBITS;
	.loc 1 624 17
	movl	%edx, (%rax)	# _27, *_26
# r_data.c:625: 	spriteoffset[i] = SHORT(patch->leftoffset)<<FRACBITS;
	.loc 1 625 20
	movq	-8(%rbp), %rax	# patch, tmp131
	movzwl	4(%rax), %eax	# patch_61->leftoffset, _28
	movswl	%ax, %edx	# _28, _29
# r_data.c:625: 	spriteoffset[i] = SHORT(patch->leftoffset)<<FRACBITS;
	.loc 1 625 14
	movq	spriteoffset(%rip), %rax	# spriteoffset, spriteoffset.49_30
	movl	-12(%rbp), %ecx	# i, tmp132
	movslq	%ecx, %rcx	# tmp132, _31
	salq	$2, %rcx	#, _32
	addq	%rcx, %rax	# _32, _33
# r_data.c:625: 	spriteoffset[i] = SHORT(patch->leftoffset)<<FRACBITS;
	.loc 1 625 44
	sall	$16, %edx	#, _34
# r_data.c:625: 	spriteoffset[i] = SHORT(patch->leftoffset)<<FRACBITS;
	.loc 1 625 18
	movl	%edx, (%rax)	# _34, *_33
# r_data.c:626: 	spritetopoffset[i] = SHORT(patch->topoffset)<<FRACBITS;
	.loc 1 626 23
	movq	-8(%rbp), %rax	# patch, tmp133
	movzwl	6(%rax), %eax	# patch_61->topoffset, _35
	movswl	%ax, %edx	# _35, _36
# r_data.c:626: 	spritetopoffset[i] = SHORT(patch->topoffset)<<FRACBITS;
	.loc 1 626 17
	movq	spritetopoffset(%rip), %rax	# spritetopoffset, spritetopoffset.50_37
	movl	-12(%rbp), %ecx	# i, tmp134
	movslq	%ecx, %rcx	# tmp134, _38
	salq	$2, %rcx	#, _39
	addq	%rcx, %rax	# _39, _40
# r_data.c:626: 	spritetopoffset[i] = SHORT(patch->topoffset)<<FRACBITS;
	.loc 1 626 46
	sall	$16, %edx	#, _41
# r_data.c:626: 	spritetopoffset[i] = SHORT(patch->topoffset)<<FRACBITS;
	.loc 1 626 21
	movl	%edx, (%rax)	# _41, *_40
# r_data.c:618:     for (i=0 ; i< numspritelumps ; i++)
	.loc 1 618 37 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L73:
# r_data.c:618:     for (i=0 ; i< numspritelumps ; i++)
	.loc 1 618 17 discriminator 1
	movl	numspritelumps(%rip), %eax	# numspritelumps, numspritelumps.51_42
	cmpl	%eax, -12(%rbp)	# numspritelumps.51_42, i
	jl	.L75	#,
# r_data.c:628: }
	.loc 1 628 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	R_InitSpriteLumps, .-R_InitSpriteLumps
	.section	.rodata
.LC14:
	.string	"COLORMAP"
	.text
	.globl	R_InitColormaps
	.type	R_InitColormaps, @function
R_InitColormaps:
.LFB7:
	.loc 1 636 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# r_data.c:641:     lump = W_GetNumForName("COLORMAP"); 
	.loc 1 641 12
	leaq	.LC14(%rip), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	call	W_GetNumForName@PLT	#
	movl	%eax, -8(%rbp)	# tmp91, lump
# r_data.c:642:     length = W_LumpLength (lump) + 255; 
	.loc 1 642 14
	movl	-8(%rbp), %eax	# lump, tmp92
	movl	%eax, %edi	# tmp92,
	call	W_LumpLength@PLT	#
# r_data.c:642:     length = W_LumpLength (lump) + 255; 
	.loc 1 642 12 discriminator 1
	addl	$255, %eax	#, tmp93
	movl	%eax, -4(%rbp)	# tmp93, length
# r_data.c:643:     colormaps = Z_Malloc (length, PU_STATIC, 0); 
	.loc 1 643 17
	movl	-4(%rbp), %eax	# length, tmp94
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp94,
	call	Z_Malloc@PLT	#
# r_data.c:643:     colormaps = Z_Malloc (length, PU_STATIC, 0); 
	.loc 1 643 15 discriminator 1
	movq	%rax, colormaps(%rip)	# _2, colormaps
# r_data.c:644:     colormaps = (byte *)( ((intptr_t)colormaps + 255)&~0xff); 
	.loc 1 644 28
	movq	colormaps(%rip), %rax	# colormaps, colormaps.52_3
# r_data.c:644:     colormaps = (byte *)( ((intptr_t)colormaps + 255)&~0xff); 
	.loc 1 644 48
	addq	$255, %rax	#, _5
# r_data.c:644:     colormaps = (byte *)( ((intptr_t)colormaps + 255)&~0xff); 
	.loc 1 644 54
	movb	$0, %al	#, _6
# r_data.c:644:     colormaps = (byte *)( ((intptr_t)colormaps + 255)&~0xff); 
	.loc 1 644 15
	movq	%rax, colormaps(%rip)	# _7, colormaps
# r_data.c:645:     W_ReadLump (lump,colormaps); 
	.loc 1 645 5
	movq	colormaps(%rip), %rdx	# colormaps, colormaps.54_8
	movl	-8(%rbp), %eax	# lump, tmp95
	movq	%rdx, %rsi	# colormaps.54_8,
	movl	%eax, %edi	# tmp95,
	call	W_ReadLump@PLT	#
# r_data.c:646: }
	.loc 1 646 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	R_InitColormaps, .-R_InitColormaps
	.section	.rodata
.LC15:
	.string	"\nInitTextures"
.LC16:
	.string	"\nInitFlats"
.LC17:
	.string	"\nInitSprites"
.LC18:
	.string	"\nInitColormaps"
	.text
	.globl	R_InitData
	.type	R_InitData, @function
R_InitData:
.LFB8:
	.loc 1 657 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# r_data.c:658:     R_InitTextures ();
	.loc 1 658 5
	call	R_InitTextures	#
# r_data.c:659:     printf ("\nInitTextures");
	.loc 1 659 5
	leaq	.LC15(%rip), %rax	#, tmp82
	movq	%rax, %rdi	# tmp82,
	movl	$0, %eax	#,
	call	printf@PLT	#
# r_data.c:660:     R_InitFlats ();
	.loc 1 660 5
	call	R_InitFlats	#
# r_data.c:661:     printf ("\nInitFlats");
	.loc 1 661 5
	leaq	.LC16(%rip), %rax	#, tmp83
	movq	%rax, %rdi	# tmp83,
	movl	$0, %eax	#,
	call	printf@PLT	#
# r_data.c:662:     R_InitSpriteLumps ();
	.loc 1 662 5
	call	R_InitSpriteLumps	#
# r_data.c:663:     printf ("\nInitSprites");
	.loc 1 663 5
	leaq	.LC17(%rip), %rax	#, tmp84
	movq	%rax, %rdi	# tmp84,
	movl	$0, %eax	#,
	call	printf@PLT	#
# r_data.c:664:     R_InitColormaps ();
	.loc 1 664 5
	call	R_InitColormaps	#
# r_data.c:665:     printf ("\nInitColormaps");
	.loc 1 665 5
	leaq	.LC18(%rip), %rax	#, tmp85
	movq	%rax, %rdi	# tmp85,
	movl	$0, %eax	#,
	call	printf@PLT	#
# r_data.c:666: }
	.loc 1 666 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	R_InitData, .-R_InitData
	.section	.rodata
	.align 8
.LC19:
	.string	"R_FlatNumForName: %s not found"
	.text
	.globl	R_FlatNumForName
	.type	R_FlatNumForName, @function
R_FlatNumForName:
.LFB9:
	.loc 1 675 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# name, name
# r_data.c:675: {
	.loc 1 675 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp93
	movq	%rax, -8(%rbp)	# tmp93, D.7635
	xorl	%eax, %eax	# tmp93
# r_data.c:679:     i = W_CheckNumForName (name);
	.loc 1 679 9
	movq	-40(%rbp), %rax	# name, tmp86
	movq	%rax, %rdi	# tmp86,
	call	W_CheckNumForName@PLT	#
	movl	%eax, -24(%rbp)	# tmp87, i
# r_data.c:681:     if (i == -1)
	.loc 1 681 8
	cmpl	$-1, -24(%rbp)	#, i
	jne	.L79	#,
# r_data.c:683: 	namet[8] = 0;
	.loc 1 683 11
	movb	$0, -9(%rbp)	#, namet[8]
# r_data.c:684: 	memcpy (namet, name,8);
	.loc 1 684 2
	movq	-40(%rbp), %rax	# name, tmp88
	movq	(%rax), %rax	# MEM <unsigned long> [(char * {ref-all})name_4(D)], _8
	movq	%rax, -17(%rbp)	# _8, MEM <unsigned long> [(char * {ref-all})&namet]
# r_data.c:685: 	I_Error ("R_FlatNumForName: %s not found",namet);
	.loc 1 685 2
	leaq	-17(%rbp), %rax	#, tmp89
	movq	%rax, %rsi	# tmp89,
	leaq	.LC19(%rip), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L79:
# r_data.c:687:     return i - firstflat;
	.loc 1 687 14
	movl	firstflat(%rip), %eax	# firstflat, firstflat.55_1
	movl	-24(%rbp), %edx	# i, tmp91
	subl	%eax, %edx	# firstflat.55_1, _11
	movl	%edx, %eax	# _11, <retval>
# r_data.c:688: }
	.loc 1 688 1
	movq	-8(%rbp), %rdx	# D.7635, tmp94
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp94
	je	.L81	#,
	call	__stack_chk_fail@PLT	#
.L81:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	R_FlatNumForName, .-R_FlatNumForName
	.globl	R_CheckTextureNumForName
	.type	R_CheckTextureNumForName, @function
R_CheckTextureNumForName:
.LFB10:
	.loc 1 699 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# name, name
# r_data.c:703:     if (name[0] == '-')		
	.loc 1 703 13
	movq	-24(%rbp), %rax	# name, tmp93
	movzbl	(%rax), %eax	# *name_13(D), _1
# r_data.c:703:     if (name[0] == '-')		
	.loc 1 703 8
	cmpb	$45, %al	#, _1
	jne	.L83	#,
# r_data.c:704: 	return 0;
	.loc 1 704 9
	movl	$0, %eax	#, _11
	jmp	.L84	#
.L83:
# r_data.c:706:     for (i=0 ; i<numtextures ; i++)
	.loc 1 706 11
	movl	$0, -4(%rbp)	#, i
# r_data.c:706:     for (i=0 ; i<numtextures ; i++)
	.loc 1 706 5
	jmp	.L85	#
.L87:
# r_data.c:707: 	if (!strncasecmp (textures[i]->name, name, 8) )
	.loc 1 707 28
	movq	textures(%rip), %rax	# textures, textures.56_2
	movl	-4(%rbp), %edx	# i, tmp94
	movslq	%edx, %rdx	# tmp94, _3
	salq	$3, %rdx	#, _4
	addq	%rdx, %rax	# _4, _5
	movq	(%rax), %rax	# *_5, _6
# r_data.c:707: 	if (!strncasecmp (textures[i]->name, name, 8) )
	.loc 1 707 31
	movq	%rax, %rcx	# _6, _7
# r_data.c:707: 	if (!strncasecmp (textures[i]->name, name, 8) )
	.loc 1 707 7
	movq	-24(%rbp), %rax	# name, tmp95
	movl	$8, %edx	#,
	movq	%rax, %rsi	# tmp95,
	movq	%rcx, %rdi	# _7,
	call	strncasecmp@PLT	#
# r_data.c:707: 	if (!strncasecmp (textures[i]->name, name, 8) )
	.loc 1 707 5 discriminator 1
	testl	%eax, %eax	# _8
	jne	.L86	#,
# r_data.c:708: 	    return i;
	.loc 1 708 13
	movl	-4(%rbp), %eax	# i, _11
	jmp	.L84	#
.L86:
# r_data.c:706:     for (i=0 ; i<numtextures ; i++)
	.loc 1 706 33 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L85:
# r_data.c:706:     for (i=0 ; i<numtextures ; i++)
	.loc 1 706 17 discriminator 1
	movl	numtextures(%rip), %eax	# numtextures, numtextures.57_9
	cmpl	%eax, -4(%rbp)	# numtextures.57_9, i
	jl	.L87	#,
# r_data.c:710:     return -1;
	.loc 1 710 12
	movl	$-1, %eax	#, _11
.L84:
# r_data.c:711: }
	.loc 1 711 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	R_CheckTextureNumForName, .-R_CheckTextureNumForName
	.section	.rodata
	.align 8
.LC20:
	.string	"R_TextureNumForName: %s not found"
	.text
	.globl	R_TextureNumForName
	.type	R_TextureNumForName, @function
R_TextureNumForName:
.LFB11:
	.loc 1 721 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# name, name
# r_data.c:724:     i = R_CheckTextureNumForName (name);
	.loc 1 724 9
	movq	-24(%rbp), %rax	# name, tmp84
	movq	%rax, %rdi	# tmp84,
	call	R_CheckTextureNumForName	#
	movl	%eax, -4(%rbp)	# tmp85, i
# r_data.c:726:     if (i==-1)
	.loc 1 726 8
	cmpl	$-1, -4(%rbp)	#, i
	jne	.L89	#,
# r_data.c:728: 	I_Error ("R_TextureNumForName: %s not found",
	.loc 1 728 2
	movq	-24(%rbp), %rax	# name, tmp86
	movq	%rax, %rsi	# tmp86,
	leaq	.LC20(%rip), %rax	#, tmp87
	movq	%rax, %rdi	# tmp87,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L89:
# r_data.c:731:     return i;
	.loc 1 731 12
	movl	-4(%rbp), %eax	# i, _7
# r_data.c:732: }
	.loc 1 732 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	R_TextureNumForName, .-R_TextureNumForName
	.globl	flatmemory
	.bss
	.align 4
	.type	flatmemory, @object
	.size	flatmemory, 4
flatmemory:
	.zero	4
	.globl	texturememory
	.align 4
	.type	texturememory, @object
	.size	texturememory, 4
texturememory:
	.zero	4
	.globl	spritememory
	.align 4
	.type	spritememory, @object
	.size	spritememory, 4
spritememory:
	.zero	4
	.text
	.globl	R_PrecacheLevel
	.type	R_PrecacheLevel, @function
R_PrecacheLevel:
.LFB12:
	.loc 1 746 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
# r_data.c:746: {
	.loc 1 746 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp324
	movq	%rax, -8(%rbp)	# tmp324, D.7638
	xorl	%eax, %eax	# tmp324
# r_data.c:760:     if (demoplayback)
	.loc 1 760 9
	movl	demoplayback(%rip), %eax	# demoplayback, demoplayback.58_1
# r_data.c:760:     if (demoplayback)
	.loc 1 760 8
	testl	%eax, %eax	# demoplayback.58_1
	jne	.L128	#,
# r_data.c:764:     flatpresent = alloca(numflats);
	.loc 1 764 19
	movl	numflats(%rip), %eax	# numflats, numflats.59_2
	cltq
	leaq	8(%rax), %rdx	#, tmp194
	movl	$16, %eax	#, tmp318
	subq	$1, %rax	#, tmp195
	addq	%rdx, %rax	# tmp194, tmp196
	movl	$16, %esi	#, tmp319
	movl	$0, %edx	#, tmp199
	divq	%rsi	# tmp319
	imulq	$16, %rax, %rax	#, tmp198, tmp200
	movq	%rax, %rcx	# tmp200, tmp202
	andq	$-4096, %rcx	#, tmp202
	movq	%rsp, %rdx	#, tmp203
	subq	%rcx, %rdx	# tmp202, tmp203
.L94:
	cmpq	%rdx, %rsp	# tmp203,
	je	.L95	#,
	subq	$4096, %rsp	#,
	orq	$0, 4088(%rsp)	#,
	jmp	.L94	#
.L95:
	movq	%rax, %rdx	# tmp200, tmp204
	andl	$4095, %edx	#, tmp204
	subq	%rdx, %rsp	# tmp204,
	movq	%rax, %rdx	# tmp200, tmp205
	andl	$4095, %edx	#, tmp205
	testq	%rdx, %rdx	# tmp205
	je	.L96	#,
	andl	$4095, %eax	#, tmp206
	subq	$8, %rax	#, tmp206
	addq	%rsp, %rax	#, tmp207
	orq	$0, (%rax)	#,
.L96:
	movq	%rsp, %rax	#, tmp201
	addq	$15, %rax	#, tmp208
	shrq	$4, %rax	#, tmp209
	salq	$4, %rax	#, tmp210
	movq	%rax, -48(%rbp)	# tmp210, flatpresent
# r_data.c:765:     memset (flatpresent,0,numflats);	
	.loc 1 765 5
	movl	numflats(%rip), %eax	# numflats, numflats.60_4
	movslq	%eax, %rdx	# numflats.60_4, _5
	movq	-48(%rbp), %rax	# flatpresent, tmp211
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp211,
	call	memset@PLT	#
# r_data.c:767:     for (i=0 ; i<numsectors ; i++)
	.loc 1 767 11
	movl	$0, -72(%rbp)	#, i
# r_data.c:767:     for (i=0 ; i<numsectors ; i++)
	.loc 1 767 5
	jmp	.L97	#
.L98:
# r_data.c:769: 	flatpresent[sectors[i].floorpic] = 1;
	.loc 1 769 21
	movq	sectors(%rip), %rax	# sectors, sectors.61_6
	movl	-72(%rbp), %edx	# i, tmp212
	movslq	%edx, %rdx	# tmp212, _7
	salq	$7, %rdx	#, _8
	addq	%rdx, %rax	# _8, _9
# r_data.c:769: 	flatpresent[sectors[i].floorpic] = 1;
	.loc 1 769 24
	movzwl	8(%rax), %eax	# _9->floorpic, _10
	movswq	%ax, %rdx	# _10, _11
# r_data.c:769: 	flatpresent[sectors[i].floorpic] = 1;
	.loc 1 769 13
	movq	-48(%rbp), %rax	# flatpresent, tmp213
	addq	%rdx, %rax	# _11, _12
# r_data.c:769: 	flatpresent[sectors[i].floorpic] = 1;
	.loc 1 769 35
	movb	$1, (%rax)	#, *_12
# r_data.c:770: 	flatpresent[sectors[i].ceilingpic] = 1;
	.loc 1 770 21
	movq	sectors(%rip), %rax	# sectors, sectors.62_13
	movl	-72(%rbp), %edx	# i, tmp214
	movslq	%edx, %rdx	# tmp214, _14
	salq	$7, %rdx	#, _15
	addq	%rdx, %rax	# _15, _16
# r_data.c:770: 	flatpresent[sectors[i].ceilingpic] = 1;
	.loc 1 770 24
	movzwl	10(%rax), %eax	# _16->ceilingpic, _17
	movswq	%ax, %rdx	# _17, _18
# r_data.c:770: 	flatpresent[sectors[i].ceilingpic] = 1;
	.loc 1 770 13
	movq	-48(%rbp), %rax	# flatpresent, tmp215
	addq	%rdx, %rax	# _18, _19
# r_data.c:770: 	flatpresent[sectors[i].ceilingpic] = 1;
	.loc 1 770 37
	movb	$1, (%rax)	#, *_19
# r_data.c:767:     for (i=0 ; i<numsectors ; i++)
	.loc 1 767 32 discriminator 3
	addl	$1, -72(%rbp)	#, i
.L97:
# r_data.c:767:     for (i=0 ; i<numsectors ; i++)
	.loc 1 767 17 discriminator 1
	movl	numsectors(%rip), %eax	# numsectors, numsectors.63_20
	cmpl	%eax, -72(%rbp)	# numsectors.63_20, i
	jl	.L98	#,
# r_data.c:773:     flatmemory = 0;
	.loc 1 773 16
	movl	$0, flatmemory(%rip)	#, flatmemory
# r_data.c:775:     for (i=0 ; i<numflats ; i++)
	.loc 1 775 11
	movl	$0, -72(%rbp)	#, i
# r_data.c:775:     for (i=0 ; i<numflats ; i++)
	.loc 1 775 5
	jmp	.L99	#
.L101:
# r_data.c:777: 	if (flatpresent[i])
	.loc 1 777 17
	movl	-72(%rbp), %eax	# i, tmp216
	movslq	%eax, %rdx	# tmp216, _21
	movq	-48(%rbp), %rax	# flatpresent, tmp217
	addq	%rdx, %rax	# _21, _22
	movzbl	(%rax), %eax	# *_22, _23
# r_data.c:777: 	if (flatpresent[i])
	.loc 1 777 5
	testb	%al, %al	# _23
	je	.L100	#,
# r_data.c:779: 	    lump = firstflat + i;
	.loc 1 779 23
	movl	firstflat(%rip), %edx	# firstflat, firstflat.64_24
# r_data.c:779: 	    lump = firstflat + i;
	.loc 1 779 11
	movl	-72(%rbp), %eax	# i, tmp221
	addl	%edx, %eax	# firstflat.64_24, tmp220
	movl	%eax, -60(%rbp)	# tmp220, lump
# r_data.c:780: 	    flatmemory += lumpinfo[lump].size;
	.loc 1 780 28
	movq	lumpinfo(%rip), %rcx	# lumpinfo, lumpinfo.65_25
	movl	-60(%rbp), %eax	# lump, tmp222
	movslq	%eax, %rdx	# tmp222, _26
	movq	%rdx, %rax	# _26, tmp223
	salq	$2, %rax	#, tmp223
	addq	%rdx, %rax	# _26, tmp223
	salq	$2, %rax	#, tmp224
	addq	%rcx, %rax	# lumpinfo.65_25, _28
# r_data.c:780: 	    flatmemory += lumpinfo[lump].size;
	.loc 1 780 34
	movl	16(%rax), %edx	# _28->size, _29
# r_data.c:780: 	    flatmemory += lumpinfo[lump].size;
	.loc 1 780 17
	movl	flatmemory(%rip), %eax	# flatmemory, flatmemory.66_30
	addl	%edx, %eax	# _29, _31
	movl	%eax, flatmemory(%rip)	# _31, flatmemory
# r_data.c:781: 	    W_CacheLumpNum(lump, PU_CACHE);
	.loc 1 781 6
	movl	-60(%rbp), %eax	# lump, tmp225
	movl	$101, %esi	#,
	movl	%eax, %edi	# tmp225,
	call	W_CacheLumpNum@PLT	#
.L100:
# r_data.c:775:     for (i=0 ; i<numflats ; i++)
	.loc 1 775 30 discriminator 2
	addl	$1, -72(%rbp)	#, i
.L99:
# r_data.c:775:     for (i=0 ; i<numflats ; i++)
	.loc 1 775 17 discriminator 1
	movl	numflats(%rip), %eax	# numflats, numflats.67_32
	cmpl	%eax, -72(%rbp)	# numflats.67_32, i
	jl	.L101	#,
# r_data.c:786:     texturepresent = alloca(numtextures);
	.loc 1 786 22
	movl	numtextures(%rip), %eax	# numtextures, numtextures.68_33
	cltq
	leaq	8(%rax), %rdx	#, tmp226
	movl	$16, %eax	#, tmp320
	subq	$1, %rax	#, tmp227
	addq	%rdx, %rax	# tmp226, tmp228
	movl	$16, %edi	#, tmp321
	movl	$0, %edx	#, tmp231
	divq	%rdi	# tmp321
	imulq	$16, %rax, %rax	#, tmp230, tmp232
	movq	%rax, %rcx	# tmp232, tmp234
	andq	$-4096, %rcx	#, tmp234
	movq	%rsp, %rdx	#, tmp235
	subq	%rcx, %rdx	# tmp234, tmp235
.L102:
	cmpq	%rdx, %rsp	# tmp235,
	je	.L103	#,
	subq	$4096, %rsp	#,
	orq	$0, 4088(%rsp)	#,
	jmp	.L102	#
.L103:
	movq	%rax, %rdx	# tmp232, tmp236
	andl	$4095, %edx	#, tmp236
	subq	%rdx, %rsp	# tmp236,
	movq	%rax, %rdx	# tmp232, tmp237
	andl	$4095, %edx	#, tmp237
	testq	%rdx, %rdx	# tmp237
	je	.L104	#,
	andl	$4095, %eax	#, tmp238
	subq	$8, %rax	#, tmp238
	addq	%rsp, %rax	#, tmp239
	orq	$0, (%rax)	#,
.L104:
	movq	%rsp, %rax	#, tmp233
	addq	$15, %rax	#, tmp240
	shrq	$4, %rax	#, tmp241
	salq	$4, %rax	#, tmp242
	movq	%rax, -40(%rbp)	# tmp242, texturepresent
# r_data.c:787:     memset (texturepresent,0, numtextures);
	.loc 1 787 5
	movl	numtextures(%rip), %eax	# numtextures, numtextures.69_35
	movslq	%eax, %rdx	# numtextures.69_35, _36
	movq	-40(%rbp), %rax	# texturepresent, tmp243
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp243,
	call	memset@PLT	#
# r_data.c:789:     for (i=0 ; i<numsides ; i++)
	.loc 1 789 11
	movl	$0, -72(%rbp)	#, i
# r_data.c:789:     for (i=0 ; i<numsides ; i++)
	.loc 1 789 5
	jmp	.L105	#
.L106:
# r_data.c:791: 	texturepresent[sides[i].toptexture] = 1;
	.loc 1 791 22
	movq	sides(%rip), %rcx	# sides, sides.70_37
	movl	-72(%rbp), %eax	# i, tmp244
	movslq	%eax, %rdx	# tmp244, _38
	movq	%rdx, %rax	# _38, tmp245
	addq	%rax, %rax	# tmp245
	addq	%rdx, %rax	# _38, tmp245
	salq	$3, %rax	#, tmp246
	addq	%rcx, %rax	# sides.70_37, _40
# r_data.c:791: 	texturepresent[sides[i].toptexture] = 1;
	.loc 1 791 25
	movzwl	8(%rax), %eax	# _40->toptexture, _41
	movswq	%ax, %rdx	# _41, _42
# r_data.c:791: 	texturepresent[sides[i].toptexture] = 1;
	.loc 1 791 16
	movq	-40(%rbp), %rax	# texturepresent, tmp247
	addq	%rdx, %rax	# _42, _43
# r_data.c:791: 	texturepresent[sides[i].toptexture] = 1;
	.loc 1 791 38
	movb	$1, (%rax)	#, *_43
# r_data.c:792: 	texturepresent[sides[i].midtexture] = 1;
	.loc 1 792 22
	movq	sides(%rip), %rcx	# sides, sides.71_44
	movl	-72(%rbp), %eax	# i, tmp248
	movslq	%eax, %rdx	# tmp248, _45
	movq	%rdx, %rax	# _45, tmp249
	addq	%rax, %rax	# tmp249
	addq	%rdx, %rax	# _45, tmp249
	salq	$3, %rax	#, tmp250
	addq	%rcx, %rax	# sides.71_44, _47
# r_data.c:792: 	texturepresent[sides[i].midtexture] = 1;
	.loc 1 792 25
	movzwl	12(%rax), %eax	# _47->midtexture, _48
	movswq	%ax, %rdx	# _48, _49
# r_data.c:792: 	texturepresent[sides[i].midtexture] = 1;
	.loc 1 792 16
	movq	-40(%rbp), %rax	# texturepresent, tmp251
	addq	%rdx, %rax	# _49, _50
# r_data.c:792: 	texturepresent[sides[i].midtexture] = 1;
	.loc 1 792 38
	movb	$1, (%rax)	#, *_50
# r_data.c:793: 	texturepresent[sides[i].bottomtexture] = 1;
	.loc 1 793 22
	movq	sides(%rip), %rcx	# sides, sides.72_51
	movl	-72(%rbp), %eax	# i, tmp252
	movslq	%eax, %rdx	# tmp252, _52
	movq	%rdx, %rax	# _52, tmp253
	addq	%rax, %rax	# tmp253
	addq	%rdx, %rax	# _52, tmp253
	salq	$3, %rax	#, tmp254
	addq	%rcx, %rax	# sides.72_51, _54
# r_data.c:793: 	texturepresent[sides[i].bottomtexture] = 1;
	.loc 1 793 25
	movzwl	10(%rax), %eax	# _54->bottomtexture, _55
	movswq	%ax, %rdx	# _55, _56
# r_data.c:793: 	texturepresent[sides[i].bottomtexture] = 1;
	.loc 1 793 16
	movq	-40(%rbp), %rax	# texturepresent, tmp255
	addq	%rdx, %rax	# _56, _57
# r_data.c:793: 	texturepresent[sides[i].bottomtexture] = 1;
	.loc 1 793 41
	movb	$1, (%rax)	#, *_57
# r_data.c:789:     for (i=0 ; i<numsides ; i++)
	.loc 1 789 30 discriminator 3
	addl	$1, -72(%rbp)	#, i
.L105:
# r_data.c:789:     for (i=0 ; i<numsides ; i++)
	.loc 1 789 17 discriminator 1
	movl	numsides(%rip), %eax	# numsides, numsides.73_58
	cmpl	%eax, -72(%rbp)	# numsides.73_58, i
	jl	.L106	#,
# r_data.c:802:     texturepresent[skytexture] = 1;
	.loc 1 802 19
	movl	skytexture(%rip), %eax	# skytexture, skytexture.74_59
	movslq	%eax, %rdx	# skytexture.74_59, _60
	movq	-40(%rbp), %rax	# texturepresent, tmp256
	addq	%rdx, %rax	# _60, _61
# r_data.c:802:     texturepresent[skytexture] = 1;
	.loc 1 802 32
	movb	$1, (%rax)	#, *_61
# r_data.c:804:     texturememory = 0;
	.loc 1 804 19
	movl	$0, texturememory(%rip)	#, texturememory
# r_data.c:805:     for (i=0 ; i<numtextures ; i++)
	.loc 1 805 11
	movl	$0, -72(%rbp)	#, i
# r_data.c:805:     for (i=0 ; i<numtextures ; i++)
	.loc 1 805 5
	jmp	.L107	#
.L112:
# r_data.c:807: 	if (!texturepresent[i])
	.loc 1 807 21
	movl	-72(%rbp), %eax	# i, tmp257
	movslq	%eax, %rdx	# tmp257, _62
	movq	-40(%rbp), %rax	# texturepresent, tmp258
	addq	%rdx, %rax	# _62, _63
	movzbl	(%rax), %eax	# *_63, _64
# r_data.c:807: 	if (!texturepresent[i])
	.loc 1 807 5
	testb	%al, %al	# _64
	je	.L129	#,
# r_data.c:810: 	texture = textures[i];
	.loc 1 810 20
	movq	textures(%rip), %rax	# textures, textures.75_65
	movl	-72(%rbp), %edx	# i, tmp259
	movslq	%edx, %rdx	# tmp259, _66
	salq	$3, %rdx	#, _67
	addq	%rdx, %rax	# _67, _68
# r_data.c:810: 	texture = textures[i];
	.loc 1 810 10
	movq	(%rax), %rax	# *_68, tmp260
	movq	%rax, -16(%rbp)	# tmp260, texture
# r_data.c:812: 	for (j=0 ; j<texture->patchcount ; j++)
	.loc 1 812 8
	movl	$0, -68(%rbp)	#, j
# r_data.c:812: 	for (j=0 ; j<texture->patchcount ; j++)
	.loc 1 812 2
	jmp	.L110	#
.L111:
# r_data.c:814: 	    lump = texture->patches[j].patch;
	.loc 1 814 11
	movq	-16(%rbp), %rcx	# texture, tmp261
	movl	-68(%rbp), %eax	# j, tmp263
	movslq	%eax, %rdx	# tmp263, tmp262
	movq	%rdx, %rax	# tmp262, tmp264
	addq	%rax, %rax	# tmp264
	addq	%rdx, %rax	# tmp262, tmp264
	salq	$2, %rax	#, tmp265
	addq	%rcx, %rax	# tmp261, tmp266
	addq	$24, %rax	#, tmp267
	movl	(%rax), %eax	# texture_167->patches[j_118].patch, tmp268
	movl	%eax, -60(%rbp)	# tmp268, lump
# r_data.c:815: 	    texturememory += lumpinfo[lump].size;
	.loc 1 815 31
	movq	lumpinfo(%rip), %rcx	# lumpinfo, lumpinfo.76_69
	movl	-60(%rbp), %eax	# lump, tmp269
	movslq	%eax, %rdx	# tmp269, _70
	movq	%rdx, %rax	# _70, tmp270
	salq	$2, %rax	#, tmp270
	addq	%rdx, %rax	# _70, tmp270
	salq	$2, %rax	#, tmp271
	addq	%rcx, %rax	# lumpinfo.76_69, _72
# r_data.c:815: 	    texturememory += lumpinfo[lump].size;
	.loc 1 815 37
	movl	16(%rax), %edx	# _72->size, _73
# r_data.c:815: 	    texturememory += lumpinfo[lump].size;
	.loc 1 815 20
	movl	texturememory(%rip), %eax	# texturememory, texturememory.77_74
	addl	%edx, %eax	# _73, _75
	movl	%eax, texturememory(%rip)	# _75, texturememory
# r_data.c:816: 	    W_CacheLumpNum(lump , PU_CACHE);
	.loc 1 816 6
	movl	-60(%rbp), %eax	# lump, tmp272
	movl	$101, %esi	#,
	movl	%eax, %edi	# tmp272,
	call	W_CacheLumpNum@PLT	#
# r_data.c:812: 	for (j=0 ; j<texture->patchcount ; j++)
	.loc 1 812 38 discriminator 3
	addl	$1, -68(%rbp)	#, j
.L110:
# r_data.c:812: 	for (j=0 ; j<texture->patchcount ; j++)
	.loc 1 812 22 discriminator 1
	movq	-16(%rbp), %rax	# texture, tmp273
	movzwl	12(%rax), %eax	# texture_167->patchcount, _76
	cwtl
# r_data.c:812: 	for (j=0 ; j<texture->patchcount ; j++)
	.loc 1 812 14 discriminator 1
	cmpl	%eax, -68(%rbp)	# _77, j
	jl	.L111	#,
	jmp	.L109	#
.L129:
# r_data.c:808: 	    continue;
	.loc 1 808 6
	nop	
.L109:
# r_data.c:805:     for (i=0 ; i<numtextures ; i++)
	.loc 1 805 33 discriminator 2
	addl	$1, -72(%rbp)	#, i
.L107:
# r_data.c:805:     for (i=0 ; i<numtextures ; i++)
	.loc 1 805 17 discriminator 1
	movl	numtextures(%rip), %eax	# numtextures, numtextures.78_78
	cmpl	%eax, -72(%rbp)	# numtextures.78_78, i
	jl	.L112	#,
# r_data.c:821:     spritepresent = alloca(numsprites);
	.loc 1 821 21
	movl	numsprites(%rip), %eax	# numsprites, numsprites.79_79
	cltq
	leaq	8(%rax), %rdx	#, tmp274
	movl	$16, %eax	#, tmp322
	subq	$1, %rax	#, tmp275
	addq	%rdx, %rax	# tmp274, tmp276
	movl	$16, %esi	#, tmp323
	movl	$0, %edx	#, tmp279
	divq	%rsi	# tmp323
	imulq	$16, %rax, %rax	#, tmp278, tmp280
	movq	%rax, %rcx	# tmp280, tmp282
	andq	$-4096, %rcx	#, tmp282
	movq	%rsp, %rdx	#, tmp283
	subq	%rcx, %rdx	# tmp282, tmp283
.L113:
	cmpq	%rdx, %rsp	# tmp283,
	je	.L114	#,
	subq	$4096, %rsp	#,
	orq	$0, 4088(%rsp)	#,
	jmp	.L113	#
.L114:
	movq	%rax, %rdx	# tmp280, tmp284
	andl	$4095, %edx	#, tmp284
	subq	%rdx, %rsp	# tmp284,
	movq	%rax, %rdx	# tmp280, tmp285
	andl	$4095, %edx	#, tmp285
	testq	%rdx, %rdx	# tmp285
	je	.L115	#,
	andl	$4095, %eax	#, tmp286
	subq	$8, %rax	#, tmp286
	addq	%rsp, %rax	#, tmp287
	orq	$0, (%rax)	#,
.L115:
	movq	%rsp, %rax	#, tmp281
	addq	$15, %rax	#, tmp288
	shrq	$4, %rax	#, tmp289
	salq	$4, %rax	#, tmp290
	movq	%rax, -32(%rbp)	# tmp290, spritepresent
# r_data.c:822:     memset (spritepresent,0, numsprites);
	.loc 1 822 5
	movl	numsprites(%rip), %eax	# numsprites, numsprites.80_81
	movslq	%eax, %rdx	# numsprites.80_81, _82
	movq	-32(%rbp), %rax	# spritepresent, tmp291
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp291,
	call	memset@PLT	#
# r_data.c:824:     for (th = thinkercap.next ; th != &thinkercap ; th=th->next)
	.loc 1 824 13
	movq	8+thinkercap(%rip), %rax	# thinkercap.next, tmp292
	movq	%rax, -56(%rbp)	# tmp292, th
# r_data.c:824:     for (th = thinkercap.next ; th != &thinkercap ; th=th->next)
	.loc 1 824 5
	jmp	.L116	#
.L118:
# r_data.c:826: 	if (th->function.acp1 == (actionf_p1)P_MobjThinker)
	.loc 1 826 18
	movq	-56(%rbp), %rax	# th, tmp293
	movq	16(%rax), %rax	# th_121->function.acp1, _83
# r_data.c:826: 	if (th->function.acp1 == (actionf_p1)P_MobjThinker)
	.loc 1 826 5
	movq	P_MobjThinker@GOTPCREL(%rip), %rdx	#, tmp295
	cmpq	%rdx, %rax	# tmp294, _83
	jne	.L117	#,
# r_data.c:827: 	    spritepresent[((mobj_t *)th)->sprite] = 1;
	.loc 1 827 34
	movq	-56(%rbp), %rax	# th, tmp296
	movl	60(%rax), %eax	# MEM[(struct mobj_t *)th_121].sprite, _84
	movl	%eax, %edx	# _84, _85
# r_data.c:827: 	    spritepresent[((mobj_t *)th)->sprite] = 1;
	.loc 1 827 19
	movq	-32(%rbp), %rax	# spritepresent, tmp297
	addq	%rdx, %rax	# _85, _86
# r_data.c:827: 	    spritepresent[((mobj_t *)th)->sprite] = 1;
	.loc 1 827 44
	movb	$1, (%rax)	#, *_86
.L117:
# r_data.c:824:     for (th = thinkercap.next ; th != &thinkercap ; th=th->next)
	.loc 1 824 55 discriminator 2
	movq	-56(%rbp), %rax	# th, tmp298
	movq	8(%rax), %rax	# th_121->next, tmp299
	movq	%rax, -56(%rbp)	# tmp299, th
.L116:
# r_data.c:824:     for (th = thinkercap.next ; th != &thinkercap ; th=th->next)
	.loc 1 824 36 discriminator 1
	leaq	thinkercap(%rip), %rax	#, tmp300
	cmpq	%rax, -56(%rbp)	# tmp300, th
	jne	.L118	#,
# r_data.c:830:     spritememory = 0;
	.loc 1 830 18
	movl	$0, spritememory(%rip)	#, spritememory
# r_data.c:831:     for (i=0 ; i<numsprites ; i++)
	.loc 1 831 11
	movl	$0, -72(%rbp)	#, i
# r_data.c:831:     for (i=0 ; i<numsprites ; i++)
	.loc 1 831 5
	jmp	.L119	#
.L126:
# r_data.c:833: 	if (!spritepresent[i])
	.loc 1 833 20
	movl	-72(%rbp), %eax	# i, tmp301
	movslq	%eax, %rdx	# tmp301, _87
	movq	-32(%rbp), %rax	# spritepresent, tmp302
	addq	%rdx, %rax	# _87, _88
	movzbl	(%rax), %eax	# *_88, _89
# r_data.c:833: 	if (!spritepresent[i])
	.loc 1 833 5
	testb	%al, %al	# _89
	je	.L130	#,
# r_data.c:836: 	for (j=0 ; j<sprites[i].numframes ; j++)
	.loc 1 836 8
	movl	$0, -68(%rbp)	#, j
# r_data.c:836: 	for (j=0 ; j<sprites[i].numframes ; j++)
	.loc 1 836 2
	jmp	.L122	#
.L125:
# r_data.c:838: 	    sf = &sprites[i].spriteframes[j];
	.loc 1 838 19
	movq	sprites(%rip), %rax	# sprites, sprites.81_90
	movl	-72(%rbp), %edx	# i, tmp303
	movslq	%edx, %rdx	# tmp303, _91
	salq	$4, %rdx	#, _92
	addq	%rdx, %rax	# _92, _93
# r_data.c:838: 	    sf = &sprites[i].spriteframes[j];
	.loc 1 838 22
	movq	8(%rax), %rcx	# _93->spriteframes, _94
# r_data.c:838: 	    sf = &sprites[i].spriteframes[j];
	.loc 1 838 35
	movl	-68(%rbp), %eax	# j, tmp304
	movslq	%eax, %rdx	# tmp304, _95
	movq	%rdx, %rax	# _95, tmp305
	salq	$3, %rax	#, tmp306
	subq	%rdx, %rax	# _95, tmp305
	salq	$2, %rax	#, tmp307
# r_data.c:838: 	    sf = &sprites[i].spriteframes[j];
	.loc 1 838 9
	addq	%rcx, %rax	# _94, tmp308
	movq	%rax, -24(%rbp)	# tmp308, sf
# r_data.c:839: 	    for (k=0 ; k<8 ; k++)
	.loc 1 839 12
	movl	$0, -64(%rbp)	#, k
# r_data.c:839: 	    for (k=0 ; k<8 ; k++)
	.loc 1 839 6
	jmp	.L123	#
.L124:
# r_data.c:841: 		lump = firstspritelump + sf->lump[k];
	.loc 1 841 36
	movq	-24(%rbp), %rax	# sf, tmp309
	movl	-64(%rbp), %edx	# k, tmp311
	movslq	%edx, %rdx	# tmp311, tmp310
	movzwl	4(%rax,%rdx,2), %eax	# sf_157->lump[k_120], _97
	movswl	%ax, %edx	# _97, _98
# r_data.c:841: 		lump = firstspritelump + sf->lump[k];
	.loc 1 841 26
	movl	firstspritelump(%rip), %eax	# firstspritelump, firstspritelump.82_99
# r_data.c:841: 		lump = firstspritelump + sf->lump[k];
	.loc 1 841 8
	addl	%edx, %eax	# _98, tmp312
	movl	%eax, -60(%rbp)	# tmp312, lump
# r_data.c:842: 		spritememory += lumpinfo[lump].size;
	.loc 1 842 27
	movq	lumpinfo(%rip), %rcx	# lumpinfo, lumpinfo.83_100
	movl	-60(%rbp), %eax	# lump, tmp313
	movslq	%eax, %rdx	# tmp313, _101
	movq	%rdx, %rax	# _101, tmp314
	salq	$2, %rax	#, tmp314
	addq	%rdx, %rax	# _101, tmp314
	salq	$2, %rax	#, tmp315
	addq	%rcx, %rax	# lumpinfo.83_100, _103
# r_data.c:842: 		spritememory += lumpinfo[lump].size;
	.loc 1 842 33
	movl	16(%rax), %edx	# _103->size, _104
# r_data.c:842: 		spritememory += lumpinfo[lump].size;
	.loc 1 842 16
	movl	spritememory(%rip), %eax	# spritememory, spritememory.84_105
	addl	%edx, %eax	# _104, _106
	movl	%eax, spritememory(%rip)	# _106, spritememory
# r_data.c:843: 		W_CacheLumpNum(lump , PU_CACHE);
	.loc 1 843 3
	movl	-60(%rbp), %eax	# lump, tmp316
	movl	$101, %esi	#,
	movl	%eax, %edi	# tmp316,
	call	W_CacheLumpNum@PLT	#
# r_data.c:839: 	    for (k=0 ; k<8 ; k++)
	.loc 1 839 24 discriminator 3
	addl	$1, -64(%rbp)	#, k
.L123:
# r_data.c:839: 	    for (k=0 ; k<8 ; k++)
	.loc 1 839 18 discriminator 1
	cmpl	$7, -64(%rbp)	#, k
	jle	.L124	#,
# r_data.c:836: 	for (j=0 ; j<sprites[i].numframes ; j++)
	.loc 1 836 39 discriminator 2
	addl	$1, -68(%rbp)	#, j
.L122:
# r_data.c:836: 	for (j=0 ; j<sprites[i].numframes ; j++)
	.loc 1 836 22 discriminator 1
	movq	sprites(%rip), %rax	# sprites, sprites.85_107
	movl	-72(%rbp), %edx	# i, tmp317
	movslq	%edx, %rdx	# tmp317, _108
	salq	$4, %rdx	#, _109
	addq	%rdx, %rax	# _109, _110
# r_data.c:836: 	for (j=0 ; j<sprites[i].numframes ; j++)
	.loc 1 836 25 discriminator 1
	movl	(%rax), %eax	# _110->numframes, _111
# r_data.c:836: 	for (j=0 ; j<sprites[i].numframes ; j++)
	.loc 1 836 14 discriminator 1
	cmpl	%eax, -68(%rbp)	# _111, j
	jl	.L125	#,
	jmp	.L121	#
.L130:
# r_data.c:834: 	    continue;
	.loc 1 834 6
	nop	
.L121:
# r_data.c:831:     for (i=0 ; i<numsprites ; i++)
	.loc 1 831 32 discriminator 2
	addl	$1, -72(%rbp)	#, i
.L119:
# r_data.c:831:     for (i=0 ; i<numsprites ; i++)
	.loc 1 831 17 discriminator 1
	movl	numsprites(%rip), %eax	# numsprites, numsprites.86_112
	cmpl	%eax, -72(%rbp)	# numsprites.86_112, i
	jl	.L126	#,
	jmp	.L91	#
.L128:
# r_data.c:761: 	return;
	.loc 1 761 2
	nop	
.L91:
# r_data.c:847: }
	.loc 1 847 1
	movq	-8(%rbp), %rax	# D.7638, tmp325
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp325
	je	.L127	#,
	call	__stack_chk_fail@PLT	#
.L127:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	R_PrecacheLevel, .-R_PrecacheLevel
.Letext0:
	.file 2 "/usr/include/stdint.h"
	.file 3 "doomtype.h"
	.file 4 "d_ticcmd.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 6 "z_zone.h"
	.file 7 "w_wad.h"
	.file 8 "doomdef.h"
	.file 9 "m_fixed.h"
	.file 10 "tables.h"
	.file 11 "d_think.h"
	.file 12 "doomdata.h"
	.file 13 "info.h"
	.file 14 "p_mobj.h"
	.file 15 "r_defs.h"
	.file 16 "d_player.h"
	.file 17 "p_pspr.h"
	.file 18 "r_state.h"
	.file 19 "p_local.h"
	.file 20 "doomstat.h"
	.file 21 "r_sky.h"
	.file 22 "/usr/include/strings.h"
	.file 23 "/usr/include/string.h"
	.file 24 "/usr/include/stdio.h"
	.file 25 "i_system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3c53
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x25
	.long	.LASF1594
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
	.uleb128 0xe
	.long	.LASF1547
	.byte	0x1c
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x13
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x13
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x13
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x13
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x26
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x13
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x27
	.byte	0x8
	.uleb128 0x5
	.long	0x4a
	.uleb128 0x8
	.long	.LASF12
	.byte	0x2
	.byte	0x4c
	.byte	0x13
	.long	0x95
	.uleb128 0x14
	.long	0x79
	.byte	0x3
	.byte	0x22
	.byte	0xe
	.long	0xc8
	.uleb128 0x2
	.long	.LASF10
	.byte	0
	.uleb128 0x2
	.long	.LASF11
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x3
	.byte	0x22
	.byte	0x1c
	.long	0xaf
	.uleb128 0x8
	.long	.LASF14
	.byte	0x3
	.byte	0x24
	.byte	0x17
	.long	0x6b
	.uleb128 0xf
	.byte	0x8
	.byte	0x4
	.byte	0x24
	.long	0x137
	.uleb128 0x3
	.long	.LASF15
	.byte	0x4
	.byte	0x26
	.byte	0xa
	.long	0x4a
	.byte	0
	.uleb128 0x3
	.long	.LASF16
	.byte	0x4
	.byte	0x27
	.byte	0xa
	.long	0x4a
	.byte	0x1
	.uleb128 0x3
	.long	.LASF17
	.byte	0x4
	.byte	0x28
	.byte	0xb
	.long	0x87
	.byte	0x2
	.uleb128 0x3
	.long	.LASF18
	.byte	0x4
	.byte	0x29
	.byte	0xb
	.long	0x87
	.byte	0x4
	.uleb128 0x3
	.long	.LASF19
	.byte	0x4
	.byte	0x2a
	.byte	0xa
	.long	0xd4
	.byte	0x6
	.uleb128 0x3
	.long	.LASF20
	.byte	0x4
	.byte	0x2b
	.byte	0xa
	.long	0xd4
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.long	.LASF21
	.byte	0x4
	.byte	0x2c
	.byte	0x3
	.long	0xe0
	.uleb128 0x8
	.long	.LASF22
	.byte	0x5
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x5
	.long	0x51
	.uleb128 0x18
	.long	.LASF75
	.byte	0x28
	.byte	0x6
	.byte	0x3a
	.long	0x1ae
	.uleb128 0x3
	.long	.LASF23
	.byte	0x6
	.byte	0x3c
	.byte	0xb
	.long	0x8e
	.byte	0
	.uleb128 0x3
	.long	.LASF24
	.byte	0x6
	.byte	0x3d
	.byte	0xd
	.long	0x1ae
	.byte	0x8
	.uleb128 0x9
	.string	"tag"
	.byte	0x6
	.byte	0x3e
	.byte	0xb
	.long	0x8e
	.byte	0x10
	.uleb128 0x9
	.string	"id"
	.byte	0x6
	.byte	0x3f
	.byte	0xb
	.long	0x8e
	.byte	0x14
	.uleb128 0x3
	.long	.LASF25
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.long	0x1b3
	.byte	0x18
	.uleb128 0x3
	.long	.LASF26
	.byte	0x6
	.byte	0x41
	.byte	0x18
	.long	0x1b3
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.long	0x9c
	.uleb128 0x5
	.long	0x154
	.uleb128 0x8
	.long	.LASF27
	.byte	0x6
	.byte	0x42
	.byte	0x3
	.long	0x154
	.uleb128 0xc
	.long	0x4a
	.long	0x1d4
	.uleb128 0xd
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.byte	0x14
	.byte	0x7
	.byte	0x38
	.long	0x211
	.uleb128 0x3
	.long	.LASF28
	.byte	0x7
	.byte	0x3a
	.byte	0xa
	.long	0x1c4
	.byte	0
	.uleb128 0x3
	.long	.LASF29
	.byte	0x7
	.byte	0x3b
	.byte	0xa
	.long	0x8e
	.byte	0x8
	.uleb128 0x3
	.long	.LASF30
	.byte	0x7
	.byte	0x3c
	.byte	0xa
	.long	0x8e
	.byte	0xc
	.uleb128 0x3
	.long	.LASF23
	.byte	0x7
	.byte	0x3d
	.byte	0xa
	.long	0x8e
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	.LASF31
	.byte	0x7
	.byte	0x3e
	.byte	0x3
	.long	0x1d4
	.uleb128 0xa
	.long	.LASF1483
	.byte	0x7
	.byte	0x42
	.byte	0x14
	.long	0x229
	.uleb128 0x5
	.long	0x211
	.uleb128 0x14
	.long	0x79
	.byte	0x8
	.byte	0xa3
	.byte	0x1
	.long	0x265
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
	.uleb128 0x2
	.long	.LASF38
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.long	0x79
	.byte	0x8
	.byte	0xb5
	.byte	0x1
	.long	0x2b4
	.uleb128 0x2
	.long	.LASF39
	.byte	0
	.uleb128 0x2
	.long	.LASF40
	.byte	0x1
	.uleb128 0x2
	.long	.LASF41
	.byte	0x2
	.uleb128 0x2
	.long	.LASF42
	.byte	0x3
	.uleb128 0x2
	.long	.LASF43
	.byte	0x4
	.uleb128 0x2
	.long	.LASF44
	.byte	0x5
	.uleb128 0x2
	.long	.LASF45
	.byte	0x6
	.uleb128 0x2
	.long	.LASF46
	.byte	0x7
	.uleb128 0x2
	.long	.LASF47
	.byte	0x8
	.uleb128 0x2
	.long	.LASF48
	.byte	0x9
	.uleb128 0x2
	.long	.LASF49
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	.LASF50
	.byte	0x8
	.byte	0xc5
	.byte	0x3
	.long	0x265
	.uleb128 0x14
	.long	0x79
	.byte	0x8
	.byte	0xca
	.byte	0x1
	.long	0x2f1
	.uleb128 0x2
	.long	.LASF51
	.byte	0
	.uleb128 0x2
	.long	.LASF52
	.byte	0x1
	.uleb128 0x2
	.long	.LASF53
	.byte	0x2
	.uleb128 0x2
	.long	.LASF54
	.byte	0x3
	.uleb128 0x2
	.long	.LASF55
	.byte	0x4
	.uleb128 0x2
	.long	.LASF56
	.byte	0x5
	.byte	0
	.uleb128 0x14
	.long	0x79
	.byte	0x8
	.byte	0xd7
	.byte	0x1
	.long	0x328
	.uleb128 0x2
	.long	.LASF57
	.byte	0
	.uleb128 0x2
	.long	.LASF58
	.byte	0x1
	.uleb128 0x2
	.long	.LASF59
	.byte	0x2
	.uleb128 0x2
	.long	.LASF60
	.byte	0x3
	.uleb128 0x2
	.long	.LASF61
	.byte	0x4
	.uleb128 0x2
	.long	.LASF62
	.byte	0x5
	.uleb128 0x2
	.long	.LASF63
	.byte	0x6
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x4
	.long	.LASF64
	.uleb128 0x13
	.byte	0x8
	.byte	0x4
	.long	.LASF65
	.uleb128 0x8
	.long	.LASF66
	.byte	0x9
	.byte	0x26
	.byte	0xd
	.long	0x8e
	.uleb128 0x5
	.long	0x336
	.uleb128 0x8
	.long	.LASF67
	.byte	0xa
	.byte	0x4e
	.byte	0x12
	.long	0x79
	.uleb128 0x8
	.long	.LASF68
	.byte	0xb
	.byte	0x29
	.byte	0x11
	.long	0x35f
	.uleb128 0x5
	.long	0x364
	.uleb128 0x28
	.long	0x36b
	.uleb128 0x1e
	.byte	0
	.uleb128 0x8
	.long	.LASF69
	.byte	0xb
	.byte	0x2a
	.byte	0x11
	.long	0x377
	.uleb128 0x5
	.long	0x37c
	.uleb128 0x22
	.long	0x387
	.uleb128 0x7
	.long	0x9c
	.byte	0
	.uleb128 0x8
	.long	.LASF70
	.byte	0xb
	.byte	0x2b
	.byte	0x11
	.long	0x393
	.uleb128 0x5
	.long	0x398
	.uleb128 0x22
	.long	0x3a8
	.uleb128 0x7
	.long	0x9c
	.uleb128 0x7
	.long	0x9c
	.byte	0
	.uleb128 0x29
	.byte	0x8
	.byte	0xb
	.byte	0x2d
	.byte	0x9
	.long	0x3d2
	.uleb128 0x23
	.long	.LASF71
	.byte	0x2f
	.long	0x36b
	.uleb128 0x2a
	.string	"acv"
	.byte	0xb
	.byte	0x30
	.byte	0xd
	.long	0x353
	.uleb128 0x23
	.long	.LASF72
	.byte	0x31
	.long	0x387
	.byte	0
	.uleb128 0x8
	.long	.LASF73
	.byte	0xb
	.byte	0x33
	.byte	0x3
	.long	0x3a8
	.uleb128 0x8
	.long	.LASF74
	.byte	0xb
	.byte	0x3c
	.byte	0x14
	.long	0x3d2
	.uleb128 0x18
	.long	.LASF76
	.byte	0x18
	.byte	0xb
	.byte	0x40
	.long	0x41e
	.uleb128 0x3
	.long	.LASF26
	.byte	0xb
	.byte	0x42
	.byte	0x17
	.long	0x41e
	.byte	0
	.uleb128 0x3
	.long	.LASF25
	.byte	0xb
	.byte	0x43
	.byte	0x17
	.long	0x41e
	.byte	0x8
	.uleb128 0x3
	.long	.LASF77
	.byte	0xb
	.byte	0x44
	.byte	0xe
	.long	0x3de
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	0x3ea
	.uleb128 0x8
	.long	.LASF78
	.byte	0xb
	.byte	0x46
	.byte	0x3
	.long	0x3ea
	.uleb128 0xc
	.long	0x87
	.long	0x43f
	.uleb128 0xd
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.byte	0xa
	.byte	0xc
	.byte	0xcb
	.long	0x485
	.uleb128 0x9
	.string	"x"
	.byte	0xc
	.byte	0xcd
	.byte	0xc
	.long	0x87
	.byte	0
	.uleb128 0x9
	.string	"y"
	.byte	0xc
	.byte	0xce
	.byte	0xc
	.long	0x87
	.byte	0x2
	.uleb128 0x3
	.long	.LASF79
	.byte	0xc
	.byte	0xcf
	.byte	0xc
	.long	0x87
	.byte	0x4
	.uleb128 0x3
	.long	.LASF80
	.byte	0xc
	.byte	0xd0
	.byte	0xc
	.long	0x87
	.byte	0x6
	.uleb128 0x3
	.long	.LASF81
	.byte	0xc
	.byte	0xd1
	.byte	0xc
	.long	0x87
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	.LASF82
	.byte	0xc
	.byte	0xd2
	.byte	0x3
	.long	0x43f
	.uleb128 0x14
	.long	0x79
	.byte	0xd
	.byte	0x1f
	.byte	0x1
	.long	0x7e0
	.uleb128 0x2
	.long	.LASF83
	.byte	0
	.uleb128 0x2
	.long	.LASF84
	.byte	0x1
	.uleb128 0x2
	.long	.LASF85
	.byte	0x2
	.uleb128 0x2
	.long	.LASF86
	.byte	0x3
	.uleb128 0x2
	.long	.LASF87
	.byte	0x4
	.uleb128 0x2
	.long	.LASF88
	.byte	0x5
	.uleb128 0x2
	.long	.LASF89
	.byte	0x6
	.uleb128 0x2
	.long	.LASF90
	.byte	0x7
	.uleb128 0x2
	.long	.LASF91
	.byte	0x8
	.uleb128 0x2
	.long	.LASF92
	.byte	0x9
	.uleb128 0x2
	.long	.LASF93
	.byte	0xa
	.uleb128 0x2
	.long	.LASF94
	.byte	0xb
	.uleb128 0x2
	.long	.LASF95
	.byte	0xc
	.uleb128 0x2
	.long	.LASF96
	.byte	0xd
	.uleb128 0x2
	.long	.LASF97
	.byte	0xe
	.uleb128 0x2
	.long	.LASF98
	.byte	0xf
	.uleb128 0x2
	.long	.LASF99
	.byte	0x10
	.uleb128 0x2
	.long	.LASF100
	.byte	0x11
	.uleb128 0x2
	.long	.LASF101
	.byte	0x12
	.uleb128 0x2
	.long	.LASF102
	.byte	0x13
	.uleb128 0x2
	.long	.LASF103
	.byte	0x14
	.uleb128 0x2
	.long	.LASF104
	.byte	0x15
	.uleb128 0x2
	.long	.LASF105
	.byte	0x16
	.uleb128 0x2
	.long	.LASF106
	.byte	0x17
	.uleb128 0x2
	.long	.LASF107
	.byte	0x18
	.uleb128 0x2
	.long	.LASF108
	.byte	0x19
	.uleb128 0x2
	.long	.LASF109
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF110
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF111
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF112
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF113
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF114
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF115
	.byte	0x20
	.uleb128 0x2
	.long	.LASF116
	.byte	0x21
	.uleb128 0x2
	.long	.LASF117
	.byte	0x22
	.uleb128 0x2
	.long	.LASF118
	.byte	0x23
	.uleb128 0x2
	.long	.LASF119
	.byte	0x24
	.uleb128 0x2
	.long	.LASF120
	.byte	0x25
	.uleb128 0x2
	.long	.LASF121
	.byte	0x26
	.uleb128 0x2
	.long	.LASF122
	.byte	0x27
	.uleb128 0x2
	.long	.LASF123
	.byte	0x28
	.uleb128 0x2
	.long	.LASF124
	.byte	0x29
	.uleb128 0x2
	.long	.LASF125
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF126
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF127
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF128
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF129
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF130
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF131
	.byte	0x30
	.uleb128 0x2
	.long	.LASF132
	.byte	0x31
	.uleb128 0x2
	.long	.LASF133
	.byte	0x32
	.uleb128 0x2
	.long	.LASF134
	.byte	0x33
	.uleb128 0x2
	.long	.LASF135
	.byte	0x34
	.uleb128 0x2
	.long	.LASF136
	.byte	0x35
	.uleb128 0x2
	.long	.LASF137
	.byte	0x36
	.uleb128 0x2
	.long	.LASF138
	.byte	0x37
	.uleb128 0x2
	.long	.LASF139
	.byte	0x38
	.uleb128 0x2
	.long	.LASF140
	.byte	0x39
	.uleb128 0x2
	.long	.LASF141
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF142
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF143
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF144
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF145
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF146
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF147
	.byte	0x40
	.uleb128 0x2
	.long	.LASF148
	.byte	0x41
	.uleb128 0x2
	.long	.LASF149
	.byte	0x42
	.uleb128 0x2
	.long	.LASF150
	.byte	0x43
	.uleb128 0x2
	.long	.LASF151
	.byte	0x44
	.uleb128 0x2
	.long	.LASF152
	.byte	0x45
	.uleb128 0x2
	.long	.LASF153
	.byte	0x46
	.uleb128 0x2
	.long	.LASF154
	.byte	0x47
	.uleb128 0x2
	.long	.LASF155
	.byte	0x48
	.uleb128 0x2
	.long	.LASF156
	.byte	0x49
	.uleb128 0x2
	.long	.LASF157
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF158
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF159
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF160
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF161
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF162
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF163
	.byte	0x50
	.uleb128 0x2
	.long	.LASF164
	.byte	0x51
	.uleb128 0x2
	.long	.LASF165
	.byte	0x52
	.uleb128 0x2
	.long	.LASF166
	.byte	0x53
	.uleb128 0x2
	.long	.LASF167
	.byte	0x54
	.uleb128 0x2
	.long	.LASF168
	.byte	0x55
	.uleb128 0x2
	.long	.LASF169
	.byte	0x56
	.uleb128 0x2
	.long	.LASF170
	.byte	0x57
	.uleb128 0x2
	.long	.LASF171
	.byte	0x58
	.uleb128 0x2
	.long	.LASF172
	.byte	0x59
	.uleb128 0x2
	.long	.LASF173
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF174
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF175
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF176
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF177
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF178
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF179
	.byte	0x60
	.uleb128 0x2
	.long	.LASF180
	.byte	0x61
	.uleb128 0x2
	.long	.LASF181
	.byte	0x62
	.uleb128 0x2
	.long	.LASF182
	.byte	0x63
	.uleb128 0x2
	.long	.LASF183
	.byte	0x64
	.uleb128 0x2
	.long	.LASF184
	.byte	0x65
	.uleb128 0x2
	.long	.LASF185
	.byte	0x66
	.uleb128 0x2
	.long	.LASF186
	.byte	0x67
	.uleb128 0x2
	.long	.LASF187
	.byte	0x68
	.uleb128 0x2
	.long	.LASF188
	.byte	0x69
	.uleb128 0x2
	.long	.LASF189
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF190
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF191
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF192
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF193
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF194
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF195
	.byte	0x70
	.uleb128 0x2
	.long	.LASF196
	.byte	0x71
	.uleb128 0x2
	.long	.LASF197
	.byte	0x72
	.uleb128 0x2
	.long	.LASF198
	.byte	0x73
	.uleb128 0x2
	.long	.LASF199
	.byte	0x74
	.uleb128 0x2
	.long	.LASF200
	.byte	0x75
	.uleb128 0x2
	.long	.LASF201
	.byte	0x76
	.uleb128 0x2
	.long	.LASF202
	.byte	0x77
	.uleb128 0x2
	.long	.LASF203
	.byte	0x78
	.uleb128 0x2
	.long	.LASF204
	.byte	0x79
	.uleb128 0x2
	.long	.LASF205
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF206
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF207
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF208
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF209
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF210
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF211
	.byte	0x80
	.uleb128 0x2
	.long	.LASF212
	.byte	0x81
	.uleb128 0x2
	.long	.LASF213
	.byte	0x82
	.uleb128 0x2
	.long	.LASF214
	.byte	0x83
	.uleb128 0x2
	.long	.LASF215
	.byte	0x84
	.uleb128 0x2
	.long	.LASF216
	.byte	0x85
	.uleb128 0x2
	.long	.LASF217
	.byte	0x86
	.uleb128 0x2
	.long	.LASF218
	.byte	0x87
	.uleb128 0x2
	.long	.LASF219
	.byte	0x88
	.uleb128 0x2
	.long	.LASF220
	.byte	0x89
	.uleb128 0x2
	.long	.LASF221
	.byte	0x8a
	.byte	0
	.uleb128 0x8
	.long	.LASF222
	.byte	0xd
	.byte	0xac
	.byte	0x3
	.long	0x491
	.uleb128 0x14
	.long	0x79
	.byte	0xd
	.byte	0xaf
	.byte	0x1
	.long	0x2171
	.uleb128 0x2
	.long	.LASF223
	.byte	0
	.uleb128 0x2
	.long	.LASF224
	.byte	0x1
	.uleb128 0x2
	.long	.LASF225
	.byte	0x2
	.uleb128 0x2
	.long	.LASF226
	.byte	0x3
	.uleb128 0x2
	.long	.LASF227
	.byte	0x4
	.uleb128 0x2
	.long	.LASF228
	.byte	0x5
	.uleb128 0x2
	.long	.LASF229
	.byte	0x6
	.uleb128 0x2
	.long	.LASF230
	.byte	0x7
	.uleb128 0x2
	.long	.LASF231
	.byte	0x8
	.uleb128 0x2
	.long	.LASF232
	.byte	0x9
	.uleb128 0x2
	.long	.LASF233
	.byte	0xa
	.uleb128 0x2
	.long	.LASF234
	.byte	0xb
	.uleb128 0x2
	.long	.LASF235
	.byte	0xc
	.uleb128 0x2
	.long	.LASF236
	.byte	0xd
	.uleb128 0x2
	.long	.LASF237
	.byte	0xe
	.uleb128 0x2
	.long	.LASF238
	.byte	0xf
	.uleb128 0x2
	.long	.LASF239
	.byte	0x10
	.uleb128 0x2
	.long	.LASF240
	.byte	0x11
	.uleb128 0x2
	.long	.LASF241
	.byte	0x12
	.uleb128 0x2
	.long	.LASF242
	.byte	0x13
	.uleb128 0x2
	.long	.LASF243
	.byte	0x14
	.uleb128 0x2
	.long	.LASF244
	.byte	0x15
	.uleb128 0x2
	.long	.LASF245
	.byte	0x16
	.uleb128 0x2
	.long	.LASF246
	.byte	0x17
	.uleb128 0x2
	.long	.LASF247
	.byte	0x18
	.uleb128 0x2
	.long	.LASF248
	.byte	0x19
	.uleb128 0x2
	.long	.LASF249
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF250
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF251
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF252
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF253
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF254
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF255
	.byte	0x20
	.uleb128 0x2
	.long	.LASF256
	.byte	0x21
	.uleb128 0x2
	.long	.LASF257
	.byte	0x22
	.uleb128 0x2
	.long	.LASF258
	.byte	0x23
	.uleb128 0x2
	.long	.LASF259
	.byte	0x24
	.uleb128 0x2
	.long	.LASF260
	.byte	0x25
	.uleb128 0x2
	.long	.LASF261
	.byte	0x26
	.uleb128 0x2
	.long	.LASF262
	.byte	0x27
	.uleb128 0x2
	.long	.LASF263
	.byte	0x28
	.uleb128 0x2
	.long	.LASF264
	.byte	0x29
	.uleb128 0x2
	.long	.LASF265
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF266
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF267
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF268
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF269
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF270
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF271
	.byte	0x30
	.uleb128 0x2
	.long	.LASF272
	.byte	0x31
	.uleb128 0x2
	.long	.LASF273
	.byte	0x32
	.uleb128 0x2
	.long	.LASF274
	.byte	0x33
	.uleb128 0x2
	.long	.LASF275
	.byte	0x34
	.uleb128 0x2
	.long	.LASF276
	.byte	0x35
	.uleb128 0x2
	.long	.LASF277
	.byte	0x36
	.uleb128 0x2
	.long	.LASF278
	.byte	0x37
	.uleb128 0x2
	.long	.LASF279
	.byte	0x38
	.uleb128 0x2
	.long	.LASF280
	.byte	0x39
	.uleb128 0x2
	.long	.LASF281
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF282
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF283
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF284
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF285
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF286
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF287
	.byte	0x40
	.uleb128 0x2
	.long	.LASF288
	.byte	0x41
	.uleb128 0x2
	.long	.LASF289
	.byte	0x42
	.uleb128 0x2
	.long	.LASF290
	.byte	0x43
	.uleb128 0x2
	.long	.LASF291
	.byte	0x44
	.uleb128 0x2
	.long	.LASF292
	.byte	0x45
	.uleb128 0x2
	.long	.LASF293
	.byte	0x46
	.uleb128 0x2
	.long	.LASF294
	.byte	0x47
	.uleb128 0x2
	.long	.LASF295
	.byte	0x48
	.uleb128 0x2
	.long	.LASF296
	.byte	0x49
	.uleb128 0x2
	.long	.LASF297
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF298
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF299
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF300
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF301
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF302
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF303
	.byte	0x50
	.uleb128 0x2
	.long	.LASF304
	.byte	0x51
	.uleb128 0x2
	.long	.LASF305
	.byte	0x52
	.uleb128 0x2
	.long	.LASF306
	.byte	0x53
	.uleb128 0x2
	.long	.LASF307
	.byte	0x54
	.uleb128 0x2
	.long	.LASF308
	.byte	0x55
	.uleb128 0x2
	.long	.LASF309
	.byte	0x56
	.uleb128 0x2
	.long	.LASF310
	.byte	0x57
	.uleb128 0x2
	.long	.LASF311
	.byte	0x58
	.uleb128 0x2
	.long	.LASF312
	.byte	0x59
	.uleb128 0x2
	.long	.LASF313
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF314
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF315
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF316
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF317
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF318
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF319
	.byte	0x60
	.uleb128 0x2
	.long	.LASF320
	.byte	0x61
	.uleb128 0x2
	.long	.LASF321
	.byte	0x62
	.uleb128 0x2
	.long	.LASF322
	.byte	0x63
	.uleb128 0x2
	.long	.LASF323
	.byte	0x64
	.uleb128 0x2
	.long	.LASF324
	.byte	0x65
	.uleb128 0x2
	.long	.LASF325
	.byte	0x66
	.uleb128 0x2
	.long	.LASF326
	.byte	0x67
	.uleb128 0x2
	.long	.LASF327
	.byte	0x68
	.uleb128 0x2
	.long	.LASF328
	.byte	0x69
	.uleb128 0x2
	.long	.LASF329
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF330
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF331
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF332
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF333
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF334
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF335
	.byte	0x70
	.uleb128 0x2
	.long	.LASF336
	.byte	0x71
	.uleb128 0x2
	.long	.LASF337
	.byte	0x72
	.uleb128 0x2
	.long	.LASF338
	.byte	0x73
	.uleb128 0x2
	.long	.LASF339
	.byte	0x74
	.uleb128 0x2
	.long	.LASF340
	.byte	0x75
	.uleb128 0x2
	.long	.LASF341
	.byte	0x76
	.uleb128 0x2
	.long	.LASF342
	.byte	0x77
	.uleb128 0x2
	.long	.LASF343
	.byte	0x78
	.uleb128 0x2
	.long	.LASF344
	.byte	0x79
	.uleb128 0x2
	.long	.LASF345
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF346
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF347
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF348
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF349
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF350
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF351
	.byte	0x80
	.uleb128 0x2
	.long	.LASF352
	.byte	0x81
	.uleb128 0x2
	.long	.LASF353
	.byte	0x82
	.uleb128 0x2
	.long	.LASF354
	.byte	0x83
	.uleb128 0x2
	.long	.LASF355
	.byte	0x84
	.uleb128 0x2
	.long	.LASF356
	.byte	0x85
	.uleb128 0x2
	.long	.LASF357
	.byte	0x86
	.uleb128 0x2
	.long	.LASF358
	.byte	0x87
	.uleb128 0x2
	.long	.LASF359
	.byte	0x88
	.uleb128 0x2
	.long	.LASF360
	.byte	0x89
	.uleb128 0x2
	.long	.LASF361
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF362
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF363
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF364
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF365
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF366
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF367
	.byte	0x90
	.uleb128 0x2
	.long	.LASF368
	.byte	0x91
	.uleb128 0x2
	.long	.LASF369
	.byte	0x92
	.uleb128 0x2
	.long	.LASF370
	.byte	0x93
	.uleb128 0x2
	.long	.LASF371
	.byte	0x94
	.uleb128 0x2
	.long	.LASF372
	.byte	0x95
	.uleb128 0x2
	.long	.LASF373
	.byte	0x96
	.uleb128 0x2
	.long	.LASF374
	.byte	0x97
	.uleb128 0x2
	.long	.LASF375
	.byte	0x98
	.uleb128 0x2
	.long	.LASF376
	.byte	0x99
	.uleb128 0x2
	.long	.LASF377
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF378
	.byte	0x9b
	.uleb128 0x2
	.long	.LASF379
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF380
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF381
	.byte	0x9e
	.uleb128 0x2
	.long	.LASF382
	.byte	0x9f
	.uleb128 0x2
	.long	.LASF383
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF384
	.byte	0xa1
	.uleb128 0x2
	.long	.LASF385
	.byte	0xa2
	.uleb128 0x2
	.long	.LASF386
	.byte	0xa3
	.uleb128 0x2
	.long	.LASF387
	.byte	0xa4
	.uleb128 0x2
	.long	.LASF388
	.byte	0xa5
	.uleb128 0x2
	.long	.LASF389
	.byte	0xa6
	.uleb128 0x2
	.long	.LASF390
	.byte	0xa7
	.uleb128 0x2
	.long	.LASF391
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF392
	.byte	0xa9
	.uleb128 0x2
	.long	.LASF393
	.byte	0xaa
	.uleb128 0x2
	.long	.LASF394
	.byte	0xab
	.uleb128 0x2
	.long	.LASF395
	.byte	0xac
	.uleb128 0x2
	.long	.LASF396
	.byte	0xad
	.uleb128 0x2
	.long	.LASF397
	.byte	0xae
	.uleb128 0x2
	.long	.LASF398
	.byte	0xaf
	.uleb128 0x2
	.long	.LASF399
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF400
	.byte	0xb1
	.uleb128 0x2
	.long	.LASF401
	.byte	0xb2
	.uleb128 0x2
	.long	.LASF402
	.byte	0xb3
	.uleb128 0x2
	.long	.LASF403
	.byte	0xb4
	.uleb128 0x2
	.long	.LASF404
	.byte	0xb5
	.uleb128 0x2
	.long	.LASF405
	.byte	0xb6
	.uleb128 0x2
	.long	.LASF406
	.byte	0xb7
	.uleb128 0x2
	.long	.LASF407
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF408
	.byte	0xb9
	.uleb128 0x2
	.long	.LASF409
	.byte	0xba
	.uleb128 0x2
	.long	.LASF410
	.byte	0xbb
	.uleb128 0x2
	.long	.LASF411
	.byte	0xbc
	.uleb128 0x2
	.long	.LASF412
	.byte	0xbd
	.uleb128 0x2
	.long	.LASF413
	.byte	0xbe
	.uleb128 0x2
	.long	.LASF414
	.byte	0xbf
	.uleb128 0x2
	.long	.LASF415
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF416
	.byte	0xc1
	.uleb128 0x2
	.long	.LASF417
	.byte	0xc2
	.uleb128 0x2
	.long	.LASF418
	.byte	0xc3
	.uleb128 0x2
	.long	.LASF419
	.byte	0xc4
	.uleb128 0x2
	.long	.LASF420
	.byte	0xc5
	.uleb128 0x2
	.long	.LASF421
	.byte	0xc6
	.uleb128 0x2
	.long	.LASF422
	.byte	0xc7
	.uleb128 0x2
	.long	.LASF423
	.byte	0xc8
	.uleb128 0x2
	.long	.LASF424
	.byte	0xc9
	.uleb128 0x2
	.long	.LASF425
	.byte	0xca
	.uleb128 0x2
	.long	.LASF426
	.byte	0xcb
	.uleb128 0x2
	.long	.LASF427
	.byte	0xcc
	.uleb128 0x2
	.long	.LASF428
	.byte	0xcd
	.uleb128 0x2
	.long	.LASF429
	.byte	0xce
	.uleb128 0x2
	.long	.LASF430
	.byte	0xcf
	.uleb128 0x2
	.long	.LASF431
	.byte	0xd0
	.uleb128 0x2
	.long	.LASF432
	.byte	0xd1
	.uleb128 0x2
	.long	.LASF433
	.byte	0xd2
	.uleb128 0x2
	.long	.LASF434
	.byte	0xd3
	.uleb128 0x2
	.long	.LASF435
	.byte	0xd4
	.uleb128 0x2
	.long	.LASF436
	.byte	0xd5
	.uleb128 0x2
	.long	.LASF437
	.byte	0xd6
	.uleb128 0x2
	.long	.LASF438
	.byte	0xd7
	.uleb128 0x2
	.long	.LASF439
	.byte	0xd8
	.uleb128 0x2
	.long	.LASF440
	.byte	0xd9
	.uleb128 0x2
	.long	.LASF441
	.byte	0xda
	.uleb128 0x2
	.long	.LASF442
	.byte	0xdb
	.uleb128 0x2
	.long	.LASF443
	.byte	0xdc
	.uleb128 0x2
	.long	.LASF444
	.byte	0xdd
	.uleb128 0x2
	.long	.LASF445
	.byte	0xde
	.uleb128 0x2
	.long	.LASF446
	.byte	0xdf
	.uleb128 0x2
	.long	.LASF447
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF448
	.byte	0xe1
	.uleb128 0x2
	.long	.LASF449
	.byte	0xe2
	.uleb128 0x2
	.long	.LASF450
	.byte	0xe3
	.uleb128 0x2
	.long	.LASF451
	.byte	0xe4
	.uleb128 0x2
	.long	.LASF452
	.byte	0xe5
	.uleb128 0x2
	.long	.LASF453
	.byte	0xe6
	.uleb128 0x2
	.long	.LASF454
	.byte	0xe7
	.uleb128 0x2
	.long	.LASF455
	.byte	0xe8
	.uleb128 0x2
	.long	.LASF456
	.byte	0xe9
	.uleb128 0x2
	.long	.LASF457
	.byte	0xea
	.uleb128 0x2
	.long	.LASF458
	.byte	0xeb
	.uleb128 0x2
	.long	.LASF459
	.byte	0xec
	.uleb128 0x2
	.long	.LASF460
	.byte	0xed
	.uleb128 0x2
	.long	.LASF461
	.byte	0xee
	.uleb128 0x2
	.long	.LASF462
	.byte	0xef
	.uleb128 0x2
	.long	.LASF463
	.byte	0xf0
	.uleb128 0x2
	.long	.LASF464
	.byte	0xf1
	.uleb128 0x2
	.long	.LASF465
	.byte	0xf2
	.uleb128 0x2
	.long	.LASF466
	.byte	0xf3
	.uleb128 0x2
	.long	.LASF467
	.byte	0xf4
	.uleb128 0x2
	.long	.LASF468
	.byte	0xf5
	.uleb128 0x2
	.long	.LASF469
	.byte	0xf6
	.uleb128 0x2
	.long	.LASF470
	.byte	0xf7
	.uleb128 0x2
	.long	.LASF471
	.byte	0xf8
	.uleb128 0x2
	.long	.LASF472
	.byte	0xf9
	.uleb128 0x2
	.long	.LASF473
	.byte	0xfa
	.uleb128 0x2
	.long	.LASF474
	.byte	0xfb
	.uleb128 0x2
	.long	.LASF475
	.byte	0xfc
	.uleb128 0x2
	.long	.LASF476
	.byte	0xfd
	.uleb128 0x2
	.long	.LASF477
	.byte	0xfe
	.uleb128 0x2
	.long	.LASF478
	.byte	0xff
	.uleb128 0x1
	.long	.LASF479
	.value	0x100
	.uleb128 0x1
	.long	.LASF480
	.value	0x101
	.uleb128 0x1
	.long	.LASF481
	.value	0x102
	.uleb128 0x1
	.long	.LASF482
	.value	0x103
	.uleb128 0x1
	.long	.LASF483
	.value	0x104
	.uleb128 0x1
	.long	.LASF484
	.value	0x105
	.uleb128 0x1
	.long	.LASF485
	.value	0x106
	.uleb128 0x1
	.long	.LASF486
	.value	0x107
	.uleb128 0x1
	.long	.LASF487
	.value	0x108
	.uleb128 0x1
	.long	.LASF488
	.value	0x109
	.uleb128 0x1
	.long	.LASF489
	.value	0x10a
	.uleb128 0x1
	.long	.LASF490
	.value	0x10b
	.uleb128 0x1
	.long	.LASF491
	.value	0x10c
	.uleb128 0x1
	.long	.LASF492
	.value	0x10d
	.uleb128 0x1
	.long	.LASF493
	.value	0x10e
	.uleb128 0x1
	.long	.LASF494
	.value	0x10f
	.uleb128 0x1
	.long	.LASF495
	.value	0x110
	.uleb128 0x1
	.long	.LASF496
	.value	0x111
	.uleb128 0x1
	.long	.LASF497
	.value	0x112
	.uleb128 0x1
	.long	.LASF498
	.value	0x113
	.uleb128 0x1
	.long	.LASF499
	.value	0x114
	.uleb128 0x1
	.long	.LASF500
	.value	0x115
	.uleb128 0x1
	.long	.LASF501
	.value	0x116
	.uleb128 0x1
	.long	.LASF502
	.value	0x117
	.uleb128 0x1
	.long	.LASF503
	.value	0x118
	.uleb128 0x1
	.long	.LASF504
	.value	0x119
	.uleb128 0x1
	.long	.LASF505
	.value	0x11a
	.uleb128 0x1
	.long	.LASF506
	.value	0x11b
	.uleb128 0x1
	.long	.LASF507
	.value	0x11c
	.uleb128 0x1
	.long	.LASF508
	.value	0x11d
	.uleb128 0x1
	.long	.LASF509
	.value	0x11e
	.uleb128 0x1
	.long	.LASF510
	.value	0x11f
	.uleb128 0x1
	.long	.LASF511
	.value	0x120
	.uleb128 0x1
	.long	.LASF512
	.value	0x121
	.uleb128 0x1
	.long	.LASF513
	.value	0x122
	.uleb128 0x1
	.long	.LASF514
	.value	0x123
	.uleb128 0x1
	.long	.LASF515
	.value	0x124
	.uleb128 0x1
	.long	.LASF516
	.value	0x125
	.uleb128 0x1
	.long	.LASF517
	.value	0x126
	.uleb128 0x1
	.long	.LASF518
	.value	0x127
	.uleb128 0x1
	.long	.LASF519
	.value	0x128
	.uleb128 0x1
	.long	.LASF520
	.value	0x129
	.uleb128 0x1
	.long	.LASF521
	.value	0x12a
	.uleb128 0x1
	.long	.LASF522
	.value	0x12b
	.uleb128 0x1
	.long	.LASF523
	.value	0x12c
	.uleb128 0x1
	.long	.LASF524
	.value	0x12d
	.uleb128 0x1
	.long	.LASF525
	.value	0x12e
	.uleb128 0x1
	.long	.LASF526
	.value	0x12f
	.uleb128 0x1
	.long	.LASF527
	.value	0x130
	.uleb128 0x1
	.long	.LASF528
	.value	0x131
	.uleb128 0x1
	.long	.LASF529
	.value	0x132
	.uleb128 0x1
	.long	.LASF530
	.value	0x133
	.uleb128 0x1
	.long	.LASF531
	.value	0x134
	.uleb128 0x1
	.long	.LASF532
	.value	0x135
	.uleb128 0x1
	.long	.LASF533
	.value	0x136
	.uleb128 0x1
	.long	.LASF534
	.value	0x137
	.uleb128 0x1
	.long	.LASF535
	.value	0x138
	.uleb128 0x1
	.long	.LASF536
	.value	0x139
	.uleb128 0x1
	.long	.LASF537
	.value	0x13a
	.uleb128 0x1
	.long	.LASF538
	.value	0x13b
	.uleb128 0x1
	.long	.LASF539
	.value	0x13c
	.uleb128 0x1
	.long	.LASF540
	.value	0x13d
	.uleb128 0x1
	.long	.LASF541
	.value	0x13e
	.uleb128 0x1
	.long	.LASF542
	.value	0x13f
	.uleb128 0x1
	.long	.LASF543
	.value	0x140
	.uleb128 0x1
	.long	.LASF544
	.value	0x141
	.uleb128 0x1
	.long	.LASF545
	.value	0x142
	.uleb128 0x1
	.long	.LASF546
	.value	0x143
	.uleb128 0x1
	.long	.LASF547
	.value	0x144
	.uleb128 0x1
	.long	.LASF548
	.value	0x145
	.uleb128 0x1
	.long	.LASF549
	.value	0x146
	.uleb128 0x1
	.long	.LASF550
	.value	0x147
	.uleb128 0x1
	.long	.LASF551
	.value	0x148
	.uleb128 0x1
	.long	.LASF552
	.value	0x149
	.uleb128 0x1
	.long	.LASF553
	.value	0x14a
	.uleb128 0x1
	.long	.LASF554
	.value	0x14b
	.uleb128 0x1
	.long	.LASF555
	.value	0x14c
	.uleb128 0x1
	.long	.LASF556
	.value	0x14d
	.uleb128 0x1
	.long	.LASF557
	.value	0x14e
	.uleb128 0x1
	.long	.LASF558
	.value	0x14f
	.uleb128 0x1
	.long	.LASF559
	.value	0x150
	.uleb128 0x1
	.long	.LASF560
	.value	0x151
	.uleb128 0x1
	.long	.LASF561
	.value	0x152
	.uleb128 0x1
	.long	.LASF562
	.value	0x153
	.uleb128 0x1
	.long	.LASF563
	.value	0x154
	.uleb128 0x1
	.long	.LASF564
	.value	0x155
	.uleb128 0x1
	.long	.LASF565
	.value	0x156
	.uleb128 0x1
	.long	.LASF566
	.value	0x157
	.uleb128 0x1
	.long	.LASF567
	.value	0x158
	.uleb128 0x1
	.long	.LASF568
	.value	0x159
	.uleb128 0x1
	.long	.LASF569
	.value	0x15a
	.uleb128 0x1
	.long	.LASF570
	.value	0x15b
	.uleb128 0x1
	.long	.LASF571
	.value	0x15c
	.uleb128 0x1
	.long	.LASF572
	.value	0x15d
	.uleb128 0x1
	.long	.LASF573
	.value	0x15e
	.uleb128 0x1
	.long	.LASF574
	.value	0x15f
	.uleb128 0x1
	.long	.LASF575
	.value	0x160
	.uleb128 0x1
	.long	.LASF576
	.value	0x161
	.uleb128 0x1
	.long	.LASF577
	.value	0x162
	.uleb128 0x1
	.long	.LASF578
	.value	0x163
	.uleb128 0x1
	.long	.LASF579
	.value	0x164
	.uleb128 0x1
	.long	.LASF580
	.value	0x165
	.uleb128 0x1
	.long	.LASF581
	.value	0x166
	.uleb128 0x1
	.long	.LASF582
	.value	0x167
	.uleb128 0x1
	.long	.LASF583
	.value	0x168
	.uleb128 0x1
	.long	.LASF584
	.value	0x169
	.uleb128 0x1
	.long	.LASF585
	.value	0x16a
	.uleb128 0x1
	.long	.LASF586
	.value	0x16b
	.uleb128 0x1
	.long	.LASF587
	.value	0x16c
	.uleb128 0x1
	.long	.LASF588
	.value	0x16d
	.uleb128 0x1
	.long	.LASF589
	.value	0x16e
	.uleb128 0x1
	.long	.LASF590
	.value	0x16f
	.uleb128 0x1
	.long	.LASF591
	.value	0x170
	.uleb128 0x1
	.long	.LASF592
	.value	0x171
	.uleb128 0x1
	.long	.LASF593
	.value	0x172
	.uleb128 0x1
	.long	.LASF594
	.value	0x173
	.uleb128 0x1
	.long	.LASF595
	.value	0x174
	.uleb128 0x1
	.long	.LASF596
	.value	0x175
	.uleb128 0x1
	.long	.LASF597
	.value	0x176
	.uleb128 0x1
	.long	.LASF598
	.value	0x177
	.uleb128 0x1
	.long	.LASF599
	.value	0x178
	.uleb128 0x1
	.long	.LASF600
	.value	0x179
	.uleb128 0x1
	.long	.LASF601
	.value	0x17a
	.uleb128 0x1
	.long	.LASF602
	.value	0x17b
	.uleb128 0x1
	.long	.LASF603
	.value	0x17c
	.uleb128 0x1
	.long	.LASF604
	.value	0x17d
	.uleb128 0x1
	.long	.LASF605
	.value	0x17e
	.uleb128 0x1
	.long	.LASF606
	.value	0x17f
	.uleb128 0x1
	.long	.LASF607
	.value	0x180
	.uleb128 0x1
	.long	.LASF608
	.value	0x181
	.uleb128 0x1
	.long	.LASF609
	.value	0x182
	.uleb128 0x1
	.long	.LASF610
	.value	0x183
	.uleb128 0x1
	.long	.LASF611
	.value	0x184
	.uleb128 0x1
	.long	.LASF612
	.value	0x185
	.uleb128 0x1
	.long	.LASF613
	.value	0x186
	.uleb128 0x1
	.long	.LASF614
	.value	0x187
	.uleb128 0x1
	.long	.LASF615
	.value	0x188
	.uleb128 0x1
	.long	.LASF616
	.value	0x189
	.uleb128 0x1
	.long	.LASF617
	.value	0x18a
	.uleb128 0x1
	.long	.LASF618
	.value	0x18b
	.uleb128 0x1
	.long	.LASF619
	.value	0x18c
	.uleb128 0x1
	.long	.LASF620
	.value	0x18d
	.uleb128 0x1
	.long	.LASF621
	.value	0x18e
	.uleb128 0x1
	.long	.LASF622
	.value	0x18f
	.uleb128 0x1
	.long	.LASF623
	.value	0x190
	.uleb128 0x1
	.long	.LASF624
	.value	0x191
	.uleb128 0x1
	.long	.LASF625
	.value	0x192
	.uleb128 0x1
	.long	.LASF626
	.value	0x193
	.uleb128 0x1
	.long	.LASF627
	.value	0x194
	.uleb128 0x1
	.long	.LASF628
	.value	0x195
	.uleb128 0x1
	.long	.LASF629
	.value	0x196
	.uleb128 0x1
	.long	.LASF630
	.value	0x197
	.uleb128 0x1
	.long	.LASF631
	.value	0x198
	.uleb128 0x1
	.long	.LASF632
	.value	0x199
	.uleb128 0x1
	.long	.LASF633
	.value	0x19a
	.uleb128 0x1
	.long	.LASF634
	.value	0x19b
	.uleb128 0x1
	.long	.LASF635
	.value	0x19c
	.uleb128 0x1
	.long	.LASF636
	.value	0x19d
	.uleb128 0x1
	.long	.LASF637
	.value	0x19e
	.uleb128 0x1
	.long	.LASF638
	.value	0x19f
	.uleb128 0x1
	.long	.LASF639
	.value	0x1a0
	.uleb128 0x1
	.long	.LASF640
	.value	0x1a1
	.uleb128 0x1
	.long	.LASF641
	.value	0x1a2
	.uleb128 0x1
	.long	.LASF642
	.value	0x1a3
	.uleb128 0x1
	.long	.LASF643
	.value	0x1a4
	.uleb128 0x1
	.long	.LASF644
	.value	0x1a5
	.uleb128 0x1
	.long	.LASF645
	.value	0x1a6
	.uleb128 0x1
	.long	.LASF646
	.value	0x1a7
	.uleb128 0x1
	.long	.LASF647
	.value	0x1a8
	.uleb128 0x1
	.long	.LASF648
	.value	0x1a9
	.uleb128 0x1
	.long	.LASF649
	.value	0x1aa
	.uleb128 0x1
	.long	.LASF650
	.value	0x1ab
	.uleb128 0x1
	.long	.LASF651
	.value	0x1ac
	.uleb128 0x1
	.long	.LASF652
	.value	0x1ad
	.uleb128 0x1
	.long	.LASF653
	.value	0x1ae
	.uleb128 0x1
	.long	.LASF654
	.value	0x1af
	.uleb128 0x1
	.long	.LASF655
	.value	0x1b0
	.uleb128 0x1
	.long	.LASF656
	.value	0x1b1
	.uleb128 0x1
	.long	.LASF657
	.value	0x1b2
	.uleb128 0x1
	.long	.LASF658
	.value	0x1b3
	.uleb128 0x1
	.long	.LASF659
	.value	0x1b4
	.uleb128 0x1
	.long	.LASF660
	.value	0x1b5
	.uleb128 0x1
	.long	.LASF661
	.value	0x1b6
	.uleb128 0x1
	.long	.LASF662
	.value	0x1b7
	.uleb128 0x1
	.long	.LASF663
	.value	0x1b8
	.uleb128 0x1
	.long	.LASF664
	.value	0x1b9
	.uleb128 0x1
	.long	.LASF665
	.value	0x1ba
	.uleb128 0x1
	.long	.LASF666
	.value	0x1bb
	.uleb128 0x1
	.long	.LASF667
	.value	0x1bc
	.uleb128 0x1
	.long	.LASF668
	.value	0x1bd
	.uleb128 0x1
	.long	.LASF669
	.value	0x1be
	.uleb128 0x1
	.long	.LASF670
	.value	0x1bf
	.uleb128 0x1
	.long	.LASF671
	.value	0x1c0
	.uleb128 0x1
	.long	.LASF672
	.value	0x1c1
	.uleb128 0x1
	.long	.LASF673
	.value	0x1c2
	.uleb128 0x1
	.long	.LASF674
	.value	0x1c3
	.uleb128 0x1
	.long	.LASF675
	.value	0x1c4
	.uleb128 0x1
	.long	.LASF676
	.value	0x1c5
	.uleb128 0x1
	.long	.LASF677
	.value	0x1c6
	.uleb128 0x1
	.long	.LASF678
	.value	0x1c7
	.uleb128 0x1
	.long	.LASF679
	.value	0x1c8
	.uleb128 0x1
	.long	.LASF680
	.value	0x1c9
	.uleb128 0x1
	.long	.LASF681
	.value	0x1ca
	.uleb128 0x1
	.long	.LASF682
	.value	0x1cb
	.uleb128 0x1
	.long	.LASF683
	.value	0x1cc
	.uleb128 0x1
	.long	.LASF684
	.value	0x1cd
	.uleb128 0x1
	.long	.LASF685
	.value	0x1ce
	.uleb128 0x1
	.long	.LASF686
	.value	0x1cf
	.uleb128 0x1
	.long	.LASF687
	.value	0x1d0
	.uleb128 0x1
	.long	.LASF688
	.value	0x1d1
	.uleb128 0x1
	.long	.LASF689
	.value	0x1d2
	.uleb128 0x1
	.long	.LASF690
	.value	0x1d3
	.uleb128 0x1
	.long	.LASF691
	.value	0x1d4
	.uleb128 0x1
	.long	.LASF692
	.value	0x1d5
	.uleb128 0x1
	.long	.LASF693
	.value	0x1d6
	.uleb128 0x1
	.long	.LASF694
	.value	0x1d7
	.uleb128 0x1
	.long	.LASF695
	.value	0x1d8
	.uleb128 0x1
	.long	.LASF696
	.value	0x1d9
	.uleb128 0x1
	.long	.LASF697
	.value	0x1da
	.uleb128 0x1
	.long	.LASF698
	.value	0x1db
	.uleb128 0x1
	.long	.LASF699
	.value	0x1dc
	.uleb128 0x1
	.long	.LASF700
	.value	0x1dd
	.uleb128 0x1
	.long	.LASF701
	.value	0x1de
	.uleb128 0x1
	.long	.LASF702
	.value	0x1df
	.uleb128 0x1
	.long	.LASF703
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF704
	.value	0x1e1
	.uleb128 0x1
	.long	.LASF705
	.value	0x1e2
	.uleb128 0x1
	.long	.LASF706
	.value	0x1e3
	.uleb128 0x1
	.long	.LASF707
	.value	0x1e4
	.uleb128 0x1
	.long	.LASF708
	.value	0x1e5
	.uleb128 0x1
	.long	.LASF709
	.value	0x1e6
	.uleb128 0x1
	.long	.LASF710
	.value	0x1e7
	.uleb128 0x1
	.long	.LASF711
	.value	0x1e8
	.uleb128 0x1
	.long	.LASF712
	.value	0x1e9
	.uleb128 0x1
	.long	.LASF713
	.value	0x1ea
	.uleb128 0x1
	.long	.LASF714
	.value	0x1eb
	.uleb128 0x1
	.long	.LASF715
	.value	0x1ec
	.uleb128 0x1
	.long	.LASF716
	.value	0x1ed
	.uleb128 0x1
	.long	.LASF717
	.value	0x1ee
	.uleb128 0x1
	.long	.LASF718
	.value	0x1ef
	.uleb128 0x1
	.long	.LASF719
	.value	0x1f0
	.uleb128 0x1
	.long	.LASF720
	.value	0x1f1
	.uleb128 0x1
	.long	.LASF721
	.value	0x1f2
	.uleb128 0x1
	.long	.LASF722
	.value	0x1f3
	.uleb128 0x1
	.long	.LASF723
	.value	0x1f4
	.uleb128 0x1
	.long	.LASF724
	.value	0x1f5
	.uleb128 0x1
	.long	.LASF725
	.value	0x1f6
	.uleb128 0x1
	.long	.LASF726
	.value	0x1f7
	.uleb128 0x1
	.long	.LASF727
	.value	0x1f8
	.uleb128 0x1
	.long	.LASF728
	.value	0x1f9
	.uleb128 0x1
	.long	.LASF729
	.value	0x1fa
	.uleb128 0x1
	.long	.LASF730
	.value	0x1fb
	.uleb128 0x1
	.long	.LASF731
	.value	0x1fc
	.uleb128 0x1
	.long	.LASF732
	.value	0x1fd
	.uleb128 0x1
	.long	.LASF733
	.value	0x1fe
	.uleb128 0x1
	.long	.LASF734
	.value	0x1ff
	.uleb128 0x1
	.long	.LASF735
	.value	0x200
	.uleb128 0x1
	.long	.LASF736
	.value	0x201
	.uleb128 0x1
	.long	.LASF737
	.value	0x202
	.uleb128 0x1
	.long	.LASF738
	.value	0x203
	.uleb128 0x1
	.long	.LASF739
	.value	0x204
	.uleb128 0x1
	.long	.LASF740
	.value	0x205
	.uleb128 0x1
	.long	.LASF741
	.value	0x206
	.uleb128 0x1
	.long	.LASF742
	.value	0x207
	.uleb128 0x1
	.long	.LASF743
	.value	0x208
	.uleb128 0x1
	.long	.LASF744
	.value	0x209
	.uleb128 0x1
	.long	.LASF745
	.value	0x20a
	.uleb128 0x1
	.long	.LASF746
	.value	0x20b
	.uleb128 0x1
	.long	.LASF747
	.value	0x20c
	.uleb128 0x1
	.long	.LASF748
	.value	0x20d
	.uleb128 0x1
	.long	.LASF749
	.value	0x20e
	.uleb128 0x1
	.long	.LASF750
	.value	0x20f
	.uleb128 0x1
	.long	.LASF751
	.value	0x210
	.uleb128 0x1
	.long	.LASF752
	.value	0x211
	.uleb128 0x1
	.long	.LASF753
	.value	0x212
	.uleb128 0x1
	.long	.LASF754
	.value	0x213
	.uleb128 0x1
	.long	.LASF755
	.value	0x214
	.uleb128 0x1
	.long	.LASF756
	.value	0x215
	.uleb128 0x1
	.long	.LASF757
	.value	0x216
	.uleb128 0x1
	.long	.LASF758
	.value	0x217
	.uleb128 0x1
	.long	.LASF759
	.value	0x218
	.uleb128 0x1
	.long	.LASF760
	.value	0x219
	.uleb128 0x1
	.long	.LASF761
	.value	0x21a
	.uleb128 0x1
	.long	.LASF762
	.value	0x21b
	.uleb128 0x1
	.long	.LASF763
	.value	0x21c
	.uleb128 0x1
	.long	.LASF764
	.value	0x21d
	.uleb128 0x1
	.long	.LASF765
	.value	0x21e
	.uleb128 0x1
	.long	.LASF766
	.value	0x21f
	.uleb128 0x1
	.long	.LASF767
	.value	0x220
	.uleb128 0x1
	.long	.LASF768
	.value	0x221
	.uleb128 0x1
	.long	.LASF769
	.value	0x222
	.uleb128 0x1
	.long	.LASF770
	.value	0x223
	.uleb128 0x1
	.long	.LASF771
	.value	0x224
	.uleb128 0x1
	.long	.LASF772
	.value	0x225
	.uleb128 0x1
	.long	.LASF773
	.value	0x226
	.uleb128 0x1
	.long	.LASF774
	.value	0x227
	.uleb128 0x1
	.long	.LASF775
	.value	0x228
	.uleb128 0x1
	.long	.LASF776
	.value	0x229
	.uleb128 0x1
	.long	.LASF777
	.value	0x22a
	.uleb128 0x1
	.long	.LASF778
	.value	0x22b
	.uleb128 0x1
	.long	.LASF779
	.value	0x22c
	.uleb128 0x1
	.long	.LASF780
	.value	0x22d
	.uleb128 0x1
	.long	.LASF781
	.value	0x22e
	.uleb128 0x1
	.long	.LASF782
	.value	0x22f
	.uleb128 0x1
	.long	.LASF783
	.value	0x230
	.uleb128 0x1
	.long	.LASF784
	.value	0x231
	.uleb128 0x1
	.long	.LASF785
	.value	0x232
	.uleb128 0x1
	.long	.LASF786
	.value	0x233
	.uleb128 0x1
	.long	.LASF787
	.value	0x234
	.uleb128 0x1
	.long	.LASF788
	.value	0x235
	.uleb128 0x1
	.long	.LASF789
	.value	0x236
	.uleb128 0x1
	.long	.LASF790
	.value	0x237
	.uleb128 0x1
	.long	.LASF791
	.value	0x238
	.uleb128 0x1
	.long	.LASF792
	.value	0x239
	.uleb128 0x1
	.long	.LASF793
	.value	0x23a
	.uleb128 0x1
	.long	.LASF794
	.value	0x23b
	.uleb128 0x1
	.long	.LASF795
	.value	0x23c
	.uleb128 0x1
	.long	.LASF796
	.value	0x23d
	.uleb128 0x1
	.long	.LASF797
	.value	0x23e
	.uleb128 0x1
	.long	.LASF798
	.value	0x23f
	.uleb128 0x1
	.long	.LASF799
	.value	0x240
	.uleb128 0x1
	.long	.LASF800
	.value	0x241
	.uleb128 0x1
	.long	.LASF801
	.value	0x242
	.uleb128 0x1
	.long	.LASF802
	.value	0x243
	.uleb128 0x1
	.long	.LASF803
	.value	0x244
	.uleb128 0x1
	.long	.LASF804
	.value	0x245
	.uleb128 0x1
	.long	.LASF805
	.value	0x246
	.uleb128 0x1
	.long	.LASF806
	.value	0x247
	.uleb128 0x1
	.long	.LASF807
	.value	0x248
	.uleb128 0x1
	.long	.LASF808
	.value	0x249
	.uleb128 0x1
	.long	.LASF809
	.value	0x24a
	.uleb128 0x1
	.long	.LASF810
	.value	0x24b
	.uleb128 0x1
	.long	.LASF811
	.value	0x24c
	.uleb128 0x1
	.long	.LASF812
	.value	0x24d
	.uleb128 0x1
	.long	.LASF813
	.value	0x24e
	.uleb128 0x1
	.long	.LASF814
	.value	0x24f
	.uleb128 0x1
	.long	.LASF815
	.value	0x250
	.uleb128 0x1
	.long	.LASF816
	.value	0x251
	.uleb128 0x1
	.long	.LASF817
	.value	0x252
	.uleb128 0x1
	.long	.LASF818
	.value	0x253
	.uleb128 0x1
	.long	.LASF819
	.value	0x254
	.uleb128 0x1
	.long	.LASF820
	.value	0x255
	.uleb128 0x1
	.long	.LASF821
	.value	0x256
	.uleb128 0x1
	.long	.LASF822
	.value	0x257
	.uleb128 0x1
	.long	.LASF823
	.value	0x258
	.uleb128 0x1
	.long	.LASF824
	.value	0x259
	.uleb128 0x1
	.long	.LASF825
	.value	0x25a
	.uleb128 0x1
	.long	.LASF826
	.value	0x25b
	.uleb128 0x1
	.long	.LASF827
	.value	0x25c
	.uleb128 0x1
	.long	.LASF828
	.value	0x25d
	.uleb128 0x1
	.long	.LASF829
	.value	0x25e
	.uleb128 0x1
	.long	.LASF830
	.value	0x25f
	.uleb128 0x1
	.long	.LASF831
	.value	0x260
	.uleb128 0x1
	.long	.LASF832
	.value	0x261
	.uleb128 0x1
	.long	.LASF833
	.value	0x262
	.uleb128 0x1
	.long	.LASF834
	.value	0x263
	.uleb128 0x1
	.long	.LASF835
	.value	0x264
	.uleb128 0x1
	.long	.LASF836
	.value	0x265
	.uleb128 0x1
	.long	.LASF837
	.value	0x266
	.uleb128 0x1
	.long	.LASF838
	.value	0x267
	.uleb128 0x1
	.long	.LASF839
	.value	0x268
	.uleb128 0x1
	.long	.LASF840
	.value	0x269
	.uleb128 0x1
	.long	.LASF841
	.value	0x26a
	.uleb128 0x1
	.long	.LASF842
	.value	0x26b
	.uleb128 0x1
	.long	.LASF843
	.value	0x26c
	.uleb128 0x1
	.long	.LASF844
	.value	0x26d
	.uleb128 0x1
	.long	.LASF845
	.value	0x26e
	.uleb128 0x1
	.long	.LASF846
	.value	0x26f
	.uleb128 0x1
	.long	.LASF847
	.value	0x270
	.uleb128 0x1
	.long	.LASF848
	.value	0x271
	.uleb128 0x1
	.long	.LASF849
	.value	0x272
	.uleb128 0x1
	.long	.LASF850
	.value	0x273
	.uleb128 0x1
	.long	.LASF851
	.value	0x274
	.uleb128 0x1
	.long	.LASF852
	.value	0x275
	.uleb128 0x1
	.long	.LASF853
	.value	0x276
	.uleb128 0x1
	.long	.LASF854
	.value	0x277
	.uleb128 0x1
	.long	.LASF855
	.value	0x278
	.uleb128 0x1
	.long	.LASF856
	.value	0x279
	.uleb128 0x1
	.long	.LASF857
	.value	0x27a
	.uleb128 0x1
	.long	.LASF858
	.value	0x27b
	.uleb128 0x1
	.long	.LASF859
	.value	0x27c
	.uleb128 0x1
	.long	.LASF860
	.value	0x27d
	.uleb128 0x1
	.long	.LASF861
	.value	0x27e
	.uleb128 0x1
	.long	.LASF862
	.value	0x27f
	.uleb128 0x1
	.long	.LASF863
	.value	0x280
	.uleb128 0x1
	.long	.LASF864
	.value	0x281
	.uleb128 0x1
	.long	.LASF865
	.value	0x282
	.uleb128 0x1
	.long	.LASF866
	.value	0x283
	.uleb128 0x1
	.long	.LASF867
	.value	0x284
	.uleb128 0x1
	.long	.LASF868
	.value	0x285
	.uleb128 0x1
	.long	.LASF869
	.value	0x286
	.uleb128 0x1
	.long	.LASF870
	.value	0x287
	.uleb128 0x1
	.long	.LASF871
	.value	0x288
	.uleb128 0x1
	.long	.LASF872
	.value	0x289
	.uleb128 0x1
	.long	.LASF873
	.value	0x28a
	.uleb128 0x1
	.long	.LASF874
	.value	0x28b
	.uleb128 0x1
	.long	.LASF875
	.value	0x28c
	.uleb128 0x1
	.long	.LASF876
	.value	0x28d
	.uleb128 0x1
	.long	.LASF877
	.value	0x28e
	.uleb128 0x1
	.long	.LASF878
	.value	0x28f
	.uleb128 0x1
	.long	.LASF879
	.value	0x290
	.uleb128 0x1
	.long	.LASF880
	.value	0x291
	.uleb128 0x1
	.long	.LASF881
	.value	0x292
	.uleb128 0x1
	.long	.LASF882
	.value	0x293
	.uleb128 0x1
	.long	.LASF883
	.value	0x294
	.uleb128 0x1
	.long	.LASF884
	.value	0x295
	.uleb128 0x1
	.long	.LASF885
	.value	0x296
	.uleb128 0x1
	.long	.LASF886
	.value	0x297
	.uleb128 0x1
	.long	.LASF887
	.value	0x298
	.uleb128 0x1
	.long	.LASF888
	.value	0x299
	.uleb128 0x1
	.long	.LASF889
	.value	0x29a
	.uleb128 0x1
	.long	.LASF890
	.value	0x29b
	.uleb128 0x1
	.long	.LASF891
	.value	0x29c
	.uleb128 0x1
	.long	.LASF892
	.value	0x29d
	.uleb128 0x1
	.long	.LASF893
	.value	0x29e
	.uleb128 0x1
	.long	.LASF894
	.value	0x29f
	.uleb128 0x1
	.long	.LASF895
	.value	0x2a0
	.uleb128 0x1
	.long	.LASF896
	.value	0x2a1
	.uleb128 0x1
	.long	.LASF897
	.value	0x2a2
	.uleb128 0x1
	.long	.LASF898
	.value	0x2a3
	.uleb128 0x1
	.long	.LASF899
	.value	0x2a4
	.uleb128 0x1
	.long	.LASF900
	.value	0x2a5
	.uleb128 0x1
	.long	.LASF901
	.value	0x2a6
	.uleb128 0x1
	.long	.LASF902
	.value	0x2a7
	.uleb128 0x1
	.long	.LASF903
	.value	0x2a8
	.uleb128 0x1
	.long	.LASF904
	.value	0x2a9
	.uleb128 0x1
	.long	.LASF905
	.value	0x2aa
	.uleb128 0x1
	.long	.LASF906
	.value	0x2ab
	.uleb128 0x1
	.long	.LASF907
	.value	0x2ac
	.uleb128 0x1
	.long	.LASF908
	.value	0x2ad
	.uleb128 0x1
	.long	.LASF909
	.value	0x2ae
	.uleb128 0x1
	.long	.LASF910
	.value	0x2af
	.uleb128 0x1
	.long	.LASF911
	.value	0x2b0
	.uleb128 0x1
	.long	.LASF912
	.value	0x2b1
	.uleb128 0x1
	.long	.LASF913
	.value	0x2b2
	.uleb128 0x1
	.long	.LASF914
	.value	0x2b3
	.uleb128 0x1
	.long	.LASF915
	.value	0x2b4
	.uleb128 0x1
	.long	.LASF916
	.value	0x2b5
	.uleb128 0x1
	.long	.LASF917
	.value	0x2b6
	.uleb128 0x1
	.long	.LASF918
	.value	0x2b7
	.uleb128 0x1
	.long	.LASF919
	.value	0x2b8
	.uleb128 0x1
	.long	.LASF920
	.value	0x2b9
	.uleb128 0x1
	.long	.LASF921
	.value	0x2ba
	.uleb128 0x1
	.long	.LASF922
	.value	0x2bb
	.uleb128 0x1
	.long	.LASF923
	.value	0x2bc
	.uleb128 0x1
	.long	.LASF924
	.value	0x2bd
	.uleb128 0x1
	.long	.LASF925
	.value	0x2be
	.uleb128 0x1
	.long	.LASF926
	.value	0x2bf
	.uleb128 0x1
	.long	.LASF927
	.value	0x2c0
	.uleb128 0x1
	.long	.LASF928
	.value	0x2c1
	.uleb128 0x1
	.long	.LASF929
	.value	0x2c2
	.uleb128 0x1
	.long	.LASF930
	.value	0x2c3
	.uleb128 0x1
	.long	.LASF931
	.value	0x2c4
	.uleb128 0x1
	.long	.LASF932
	.value	0x2c5
	.uleb128 0x1
	.long	.LASF933
	.value	0x2c6
	.uleb128 0x1
	.long	.LASF934
	.value	0x2c7
	.uleb128 0x1
	.long	.LASF935
	.value	0x2c8
	.uleb128 0x1
	.long	.LASF936
	.value	0x2c9
	.uleb128 0x1
	.long	.LASF937
	.value	0x2ca
	.uleb128 0x1
	.long	.LASF938
	.value	0x2cb
	.uleb128 0x1
	.long	.LASF939
	.value	0x2cc
	.uleb128 0x1
	.long	.LASF940
	.value	0x2cd
	.uleb128 0x1
	.long	.LASF941
	.value	0x2ce
	.uleb128 0x1
	.long	.LASF942
	.value	0x2cf
	.uleb128 0x1
	.long	.LASF943
	.value	0x2d0
	.uleb128 0x1
	.long	.LASF944
	.value	0x2d1
	.uleb128 0x1
	.long	.LASF945
	.value	0x2d2
	.uleb128 0x1
	.long	.LASF946
	.value	0x2d3
	.uleb128 0x1
	.long	.LASF947
	.value	0x2d4
	.uleb128 0x1
	.long	.LASF948
	.value	0x2d5
	.uleb128 0x1
	.long	.LASF949
	.value	0x2d6
	.uleb128 0x1
	.long	.LASF950
	.value	0x2d7
	.uleb128 0x1
	.long	.LASF951
	.value	0x2d8
	.uleb128 0x1
	.long	.LASF952
	.value	0x2d9
	.uleb128 0x1
	.long	.LASF953
	.value	0x2da
	.uleb128 0x1
	.long	.LASF954
	.value	0x2db
	.uleb128 0x1
	.long	.LASF955
	.value	0x2dc
	.uleb128 0x1
	.long	.LASF956
	.value	0x2dd
	.uleb128 0x1
	.long	.LASF957
	.value	0x2de
	.uleb128 0x1
	.long	.LASF958
	.value	0x2df
	.uleb128 0x1
	.long	.LASF959
	.value	0x2e0
	.uleb128 0x1
	.long	.LASF960
	.value	0x2e1
	.uleb128 0x1
	.long	.LASF961
	.value	0x2e2
	.uleb128 0x1
	.long	.LASF962
	.value	0x2e3
	.uleb128 0x1
	.long	.LASF963
	.value	0x2e4
	.uleb128 0x1
	.long	.LASF964
	.value	0x2e5
	.uleb128 0x1
	.long	.LASF965
	.value	0x2e6
	.uleb128 0x1
	.long	.LASF966
	.value	0x2e7
	.uleb128 0x1
	.long	.LASF967
	.value	0x2e8
	.uleb128 0x1
	.long	.LASF968
	.value	0x2e9
	.uleb128 0x1
	.long	.LASF969
	.value	0x2ea
	.uleb128 0x1
	.long	.LASF970
	.value	0x2eb
	.uleb128 0x1
	.long	.LASF971
	.value	0x2ec
	.uleb128 0x1
	.long	.LASF972
	.value	0x2ed
	.uleb128 0x1
	.long	.LASF973
	.value	0x2ee
	.uleb128 0x1
	.long	.LASF974
	.value	0x2ef
	.uleb128 0x1
	.long	.LASF975
	.value	0x2f0
	.uleb128 0x1
	.long	.LASF976
	.value	0x2f1
	.uleb128 0x1
	.long	.LASF977
	.value	0x2f2
	.uleb128 0x1
	.long	.LASF978
	.value	0x2f3
	.uleb128 0x1
	.long	.LASF979
	.value	0x2f4
	.uleb128 0x1
	.long	.LASF980
	.value	0x2f5
	.uleb128 0x1
	.long	.LASF981
	.value	0x2f6
	.uleb128 0x1
	.long	.LASF982
	.value	0x2f7
	.uleb128 0x1
	.long	.LASF983
	.value	0x2f8
	.uleb128 0x1
	.long	.LASF984
	.value	0x2f9
	.uleb128 0x1
	.long	.LASF985
	.value	0x2fa
	.uleb128 0x1
	.long	.LASF986
	.value	0x2fb
	.uleb128 0x1
	.long	.LASF987
	.value	0x2fc
	.uleb128 0x1
	.long	.LASF988
	.value	0x2fd
	.uleb128 0x1
	.long	.LASF989
	.value	0x2fe
	.uleb128 0x1
	.long	.LASF990
	.value	0x2ff
	.uleb128 0x1
	.long	.LASF991
	.value	0x300
	.uleb128 0x1
	.long	.LASF992
	.value	0x301
	.uleb128 0x1
	.long	.LASF993
	.value	0x302
	.uleb128 0x1
	.long	.LASF994
	.value	0x303
	.uleb128 0x1
	.long	.LASF995
	.value	0x304
	.uleb128 0x1
	.long	.LASF996
	.value	0x305
	.uleb128 0x1
	.long	.LASF997
	.value	0x306
	.uleb128 0x1
	.long	.LASF998
	.value	0x307
	.uleb128 0x1
	.long	.LASF999
	.value	0x308
	.uleb128 0x1
	.long	.LASF1000
	.value	0x309
	.uleb128 0x1
	.long	.LASF1001
	.value	0x30a
	.uleb128 0x1
	.long	.LASF1002
	.value	0x30b
	.uleb128 0x1
	.long	.LASF1003
	.value	0x30c
	.uleb128 0x1
	.long	.LASF1004
	.value	0x30d
	.uleb128 0x1
	.long	.LASF1005
	.value	0x30e
	.uleb128 0x1
	.long	.LASF1006
	.value	0x30f
	.uleb128 0x1
	.long	.LASF1007
	.value	0x310
	.uleb128 0x1
	.long	.LASF1008
	.value	0x311
	.uleb128 0x1
	.long	.LASF1009
	.value	0x312
	.uleb128 0x1
	.long	.LASF1010
	.value	0x313
	.uleb128 0x1
	.long	.LASF1011
	.value	0x314
	.uleb128 0x1
	.long	.LASF1012
	.value	0x315
	.uleb128 0x1
	.long	.LASF1013
	.value	0x316
	.uleb128 0x1
	.long	.LASF1014
	.value	0x317
	.uleb128 0x1
	.long	.LASF1015
	.value	0x318
	.uleb128 0x1
	.long	.LASF1016
	.value	0x319
	.uleb128 0x1
	.long	.LASF1017
	.value	0x31a
	.uleb128 0x1
	.long	.LASF1018
	.value	0x31b
	.uleb128 0x1
	.long	.LASF1019
	.value	0x31c
	.uleb128 0x1
	.long	.LASF1020
	.value	0x31d
	.uleb128 0x1
	.long	.LASF1021
	.value	0x31e
	.uleb128 0x1
	.long	.LASF1022
	.value	0x31f
	.uleb128 0x1
	.long	.LASF1023
	.value	0x320
	.uleb128 0x1
	.long	.LASF1024
	.value	0x321
	.uleb128 0x1
	.long	.LASF1025
	.value	0x322
	.uleb128 0x1
	.long	.LASF1026
	.value	0x323
	.uleb128 0x1
	.long	.LASF1027
	.value	0x324
	.uleb128 0x1
	.long	.LASF1028
	.value	0x325
	.uleb128 0x1
	.long	.LASF1029
	.value	0x326
	.uleb128 0x1
	.long	.LASF1030
	.value	0x327
	.uleb128 0x1
	.long	.LASF1031
	.value	0x328
	.uleb128 0x1
	.long	.LASF1032
	.value	0x329
	.uleb128 0x1
	.long	.LASF1033
	.value	0x32a
	.uleb128 0x1
	.long	.LASF1034
	.value	0x32b
	.uleb128 0x1
	.long	.LASF1035
	.value	0x32c
	.uleb128 0x1
	.long	.LASF1036
	.value	0x32d
	.uleb128 0x1
	.long	.LASF1037
	.value	0x32e
	.uleb128 0x1
	.long	.LASF1038
	.value	0x32f
	.uleb128 0x1
	.long	.LASF1039
	.value	0x330
	.uleb128 0x1
	.long	.LASF1040
	.value	0x331
	.uleb128 0x1
	.long	.LASF1041
	.value	0x332
	.uleb128 0x1
	.long	.LASF1042
	.value	0x333
	.uleb128 0x1
	.long	.LASF1043
	.value	0x334
	.uleb128 0x1
	.long	.LASF1044
	.value	0x335
	.uleb128 0x1
	.long	.LASF1045
	.value	0x336
	.uleb128 0x1
	.long	.LASF1046
	.value	0x337
	.uleb128 0x1
	.long	.LASF1047
	.value	0x338
	.uleb128 0x1
	.long	.LASF1048
	.value	0x339
	.uleb128 0x1
	.long	.LASF1049
	.value	0x33a
	.uleb128 0x1
	.long	.LASF1050
	.value	0x33b
	.uleb128 0x1
	.long	.LASF1051
	.value	0x33c
	.uleb128 0x1
	.long	.LASF1052
	.value	0x33d
	.uleb128 0x1
	.long	.LASF1053
	.value	0x33e
	.uleb128 0x1
	.long	.LASF1054
	.value	0x33f
	.uleb128 0x1
	.long	.LASF1055
	.value	0x340
	.uleb128 0x1
	.long	.LASF1056
	.value	0x341
	.uleb128 0x1
	.long	.LASF1057
	.value	0x342
	.uleb128 0x1
	.long	.LASF1058
	.value	0x343
	.uleb128 0x1
	.long	.LASF1059
	.value	0x344
	.uleb128 0x1
	.long	.LASF1060
	.value	0x345
	.uleb128 0x1
	.long	.LASF1061
	.value	0x346
	.uleb128 0x1
	.long	.LASF1062
	.value	0x347
	.uleb128 0x1
	.long	.LASF1063
	.value	0x348
	.uleb128 0x1
	.long	.LASF1064
	.value	0x349
	.uleb128 0x1
	.long	.LASF1065
	.value	0x34a
	.uleb128 0x1
	.long	.LASF1066
	.value	0x34b
	.uleb128 0x1
	.long	.LASF1067
	.value	0x34c
	.uleb128 0x1
	.long	.LASF1068
	.value	0x34d
	.uleb128 0x1
	.long	.LASF1069
	.value	0x34e
	.uleb128 0x1
	.long	.LASF1070
	.value	0x34f
	.uleb128 0x1
	.long	.LASF1071
	.value	0x350
	.uleb128 0x1
	.long	.LASF1072
	.value	0x351
	.uleb128 0x1
	.long	.LASF1073
	.value	0x352
	.uleb128 0x1
	.long	.LASF1074
	.value	0x353
	.uleb128 0x1
	.long	.LASF1075
	.value	0x354
	.uleb128 0x1
	.long	.LASF1076
	.value	0x355
	.uleb128 0x1
	.long	.LASF1077
	.value	0x356
	.uleb128 0x1
	.long	.LASF1078
	.value	0x357
	.uleb128 0x1
	.long	.LASF1079
	.value	0x358
	.uleb128 0x1
	.long	.LASF1080
	.value	0x359
	.uleb128 0x1
	.long	.LASF1081
	.value	0x35a
	.uleb128 0x1
	.long	.LASF1082
	.value	0x35b
	.uleb128 0x1
	.long	.LASF1083
	.value	0x35c
	.uleb128 0x1
	.long	.LASF1084
	.value	0x35d
	.uleb128 0x1
	.long	.LASF1085
	.value	0x35e
	.uleb128 0x1
	.long	.LASF1086
	.value	0x35f
	.uleb128 0x1
	.long	.LASF1087
	.value	0x360
	.uleb128 0x1
	.long	.LASF1088
	.value	0x361
	.uleb128 0x1
	.long	.LASF1089
	.value	0x362
	.uleb128 0x1
	.long	.LASF1090
	.value	0x363
	.uleb128 0x1
	.long	.LASF1091
	.value	0x364
	.uleb128 0x1
	.long	.LASF1092
	.value	0x365
	.uleb128 0x1
	.long	.LASF1093
	.value	0x366
	.uleb128 0x1
	.long	.LASF1094
	.value	0x367
	.uleb128 0x1
	.long	.LASF1095
	.value	0x368
	.uleb128 0x1
	.long	.LASF1096
	.value	0x369
	.uleb128 0x1
	.long	.LASF1097
	.value	0x36a
	.uleb128 0x1
	.long	.LASF1098
	.value	0x36b
	.uleb128 0x1
	.long	.LASF1099
	.value	0x36c
	.uleb128 0x1
	.long	.LASF1100
	.value	0x36d
	.uleb128 0x1
	.long	.LASF1101
	.value	0x36e
	.uleb128 0x1
	.long	.LASF1102
	.value	0x36f
	.uleb128 0x1
	.long	.LASF1103
	.value	0x370
	.uleb128 0x1
	.long	.LASF1104
	.value	0x371
	.uleb128 0x1
	.long	.LASF1105
	.value	0x372
	.uleb128 0x1
	.long	.LASF1106
	.value	0x373
	.uleb128 0x1
	.long	.LASF1107
	.value	0x374
	.uleb128 0x1
	.long	.LASF1108
	.value	0x375
	.uleb128 0x1
	.long	.LASF1109
	.value	0x376
	.uleb128 0x1
	.long	.LASF1110
	.value	0x377
	.uleb128 0x1
	.long	.LASF1111
	.value	0x378
	.uleb128 0x1
	.long	.LASF1112
	.value	0x379
	.uleb128 0x1
	.long	.LASF1113
	.value	0x37a
	.uleb128 0x1
	.long	.LASF1114
	.value	0x37b
	.uleb128 0x1
	.long	.LASF1115
	.value	0x37c
	.uleb128 0x1
	.long	.LASF1116
	.value	0x37d
	.uleb128 0x1
	.long	.LASF1117
	.value	0x37e
	.uleb128 0x1
	.long	.LASF1118
	.value	0x37f
	.uleb128 0x1
	.long	.LASF1119
	.value	0x380
	.uleb128 0x1
	.long	.LASF1120
	.value	0x381
	.uleb128 0x1
	.long	.LASF1121
	.value	0x382
	.uleb128 0x1
	.long	.LASF1122
	.value	0x383
	.uleb128 0x1
	.long	.LASF1123
	.value	0x384
	.uleb128 0x1
	.long	.LASF1124
	.value	0x385
	.uleb128 0x1
	.long	.LASF1125
	.value	0x386
	.uleb128 0x1
	.long	.LASF1126
	.value	0x387
	.uleb128 0x1
	.long	.LASF1127
	.value	0x388
	.uleb128 0x1
	.long	.LASF1128
	.value	0x389
	.uleb128 0x1
	.long	.LASF1129
	.value	0x38a
	.uleb128 0x1
	.long	.LASF1130
	.value	0x38b
	.uleb128 0x1
	.long	.LASF1131
	.value	0x38c
	.uleb128 0x1
	.long	.LASF1132
	.value	0x38d
	.uleb128 0x1
	.long	.LASF1133
	.value	0x38e
	.uleb128 0x1
	.long	.LASF1134
	.value	0x38f
	.uleb128 0x1
	.long	.LASF1135
	.value	0x390
	.uleb128 0x1
	.long	.LASF1136
	.value	0x391
	.uleb128 0x1
	.long	.LASF1137
	.value	0x392
	.uleb128 0x1
	.long	.LASF1138
	.value	0x393
	.uleb128 0x1
	.long	.LASF1139
	.value	0x394
	.uleb128 0x1
	.long	.LASF1140
	.value	0x395
	.uleb128 0x1
	.long	.LASF1141
	.value	0x396
	.uleb128 0x1
	.long	.LASF1142
	.value	0x397
	.uleb128 0x1
	.long	.LASF1143
	.value	0x398
	.uleb128 0x1
	.long	.LASF1144
	.value	0x399
	.uleb128 0x1
	.long	.LASF1145
	.value	0x39a
	.uleb128 0x1
	.long	.LASF1146
	.value	0x39b
	.uleb128 0x1
	.long	.LASF1147
	.value	0x39c
	.uleb128 0x1
	.long	.LASF1148
	.value	0x39d
	.uleb128 0x1
	.long	.LASF1149
	.value	0x39e
	.uleb128 0x1
	.long	.LASF1150
	.value	0x39f
	.uleb128 0x1
	.long	.LASF1151
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF1152
	.value	0x3a1
	.uleb128 0x1
	.long	.LASF1153
	.value	0x3a2
	.uleb128 0x1
	.long	.LASF1154
	.value	0x3a3
	.uleb128 0x1
	.long	.LASF1155
	.value	0x3a4
	.uleb128 0x1
	.long	.LASF1156
	.value	0x3a5
	.uleb128 0x1
	.long	.LASF1157
	.value	0x3a6
	.uleb128 0x1
	.long	.LASF1158
	.value	0x3a7
	.uleb128 0x1
	.long	.LASF1159
	.value	0x3a8
	.uleb128 0x1
	.long	.LASF1160
	.value	0x3a9
	.uleb128 0x1
	.long	.LASF1161
	.value	0x3aa
	.uleb128 0x1
	.long	.LASF1162
	.value	0x3ab
	.uleb128 0x1
	.long	.LASF1163
	.value	0x3ac
	.uleb128 0x1
	.long	.LASF1164
	.value	0x3ad
	.uleb128 0x1
	.long	.LASF1165
	.value	0x3ae
	.uleb128 0x1
	.long	.LASF1166
	.value	0x3af
	.uleb128 0x1
	.long	.LASF1167
	.value	0x3b0
	.uleb128 0x1
	.long	.LASF1168
	.value	0x3b1
	.uleb128 0x1
	.long	.LASF1169
	.value	0x3b2
	.uleb128 0x1
	.long	.LASF1170
	.value	0x3b3
	.uleb128 0x1
	.long	.LASF1171
	.value	0x3b4
	.uleb128 0x1
	.long	.LASF1172
	.value	0x3b5
	.uleb128 0x1
	.long	.LASF1173
	.value	0x3b6
	.uleb128 0x1
	.long	.LASF1174
	.value	0x3b7
	.uleb128 0x1
	.long	.LASF1175
	.value	0x3b8
	.uleb128 0x1
	.long	.LASF1176
	.value	0x3b9
	.uleb128 0x1
	.long	.LASF1177
	.value	0x3ba
	.uleb128 0x1
	.long	.LASF1178
	.value	0x3bb
	.uleb128 0x1
	.long	.LASF1179
	.value	0x3bc
	.uleb128 0x1
	.long	.LASF1180
	.value	0x3bd
	.uleb128 0x1
	.long	.LASF1181
	.value	0x3be
	.uleb128 0x1
	.long	.LASF1182
	.value	0x3bf
	.uleb128 0x1
	.long	.LASF1183
	.value	0x3c0
	.uleb128 0x1
	.long	.LASF1184
	.value	0x3c1
	.uleb128 0x1
	.long	.LASF1185
	.value	0x3c2
	.uleb128 0x1
	.long	.LASF1186
	.value	0x3c3
	.uleb128 0x1
	.long	.LASF1187
	.value	0x3c4
	.uleb128 0x1
	.long	.LASF1188
	.value	0x3c5
	.uleb128 0x1
	.long	.LASF1189
	.value	0x3c6
	.uleb128 0x1
	.long	.LASF1190
	.value	0x3c7
	.byte	0
	.uleb128 0x11
	.long	.LASF1191
	.byte	0xd
	.value	0x478
	.byte	0x3
	.long	0x7ec
	.uleb128 0x16
	.byte	0x38
	.byte	0xd
	.value	0x47b
	.long	0x21ea
	.uleb128 0x4
	.long	.LASF1192
	.byte	0xd
	.value	0x47d
	.byte	0xf
	.long	0x7e0
	.byte	0
	.uleb128 0x4
	.long	.LASF1193
	.byte	0xd
	.value	0x47e
	.byte	0xa
	.long	0x95
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1194
	.byte	0xd
	.value	0x47f
	.byte	0xa
	.long	0x95
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1195
	.byte	0xd
	.value	0x481
	.byte	0xf
	.long	0x3d2
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1196
	.byte	0xd
	.value	0x482
	.byte	0x10
	.long	0x2171
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1197
	.byte	0xd
	.value	0x483
	.byte	0xa
	.long	0x95
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1198
	.byte	0xd
	.value	0x483
	.byte	0x11
	.long	0x95
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.long	.LASF1199
	.byte	0xd
	.value	0x484
	.byte	0x3
	.long	0x217e
	.uleb128 0x2b
	.byte	0x7
	.byte	0x4
	.long	0x79
	.byte	0xd
	.value	0x48b
	.byte	0xe
	.long	0x2543
	.uleb128 0x2
	.long	.LASF1200
	.byte	0
	.uleb128 0x2
	.long	.LASF1201
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1202
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1203
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1204
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1205
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1206
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1207
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1208
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1209
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1210
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1211
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1212
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1213
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1214
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1215
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1216
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1217
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1218
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1219
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1220
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1221
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1222
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1223
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1224
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1225
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1226
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1227
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1228
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1229
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1230
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1231
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1232
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1233
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1234
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1235
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1236
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1237
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1238
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1239
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1240
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1241
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1242
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1243
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1244
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1245
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1246
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1247
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1248
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1249
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1250
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1251
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1252
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1253
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1254
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1255
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1256
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1257
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1258
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1259
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1260
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1261
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1262
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1263
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1264
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1265
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1266
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1267
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1268
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1269
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1270
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1271
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1272
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1273
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1274
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1275
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1276
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1277
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1278
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1279
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1280
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1281
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1282
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1283
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1284
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1285
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1286
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1287
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1288
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1289
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1290
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1291
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1292
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1293
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1294
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1295
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1296
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1297
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1298
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1299
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1300
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1301
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1302
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1303
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1304
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1305
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1306
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1307
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1308
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1309
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF1310
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF1311
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF1312
	.byte	0x70
	.uleb128 0x2
	.long	.LASF1313
	.byte	0x71
	.uleb128 0x2
	.long	.LASF1314
	.byte	0x72
	.uleb128 0x2
	.long	.LASF1315
	.byte	0x73
	.uleb128 0x2
	.long	.LASF1316
	.byte	0x74
	.uleb128 0x2
	.long	.LASF1317
	.byte	0x75
	.uleb128 0x2
	.long	.LASF1318
	.byte	0x76
	.uleb128 0x2
	.long	.LASF1319
	.byte	0x77
	.uleb128 0x2
	.long	.LASF1320
	.byte	0x78
	.uleb128 0x2
	.long	.LASF1321
	.byte	0x79
	.uleb128 0x2
	.long	.LASF1322
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF1323
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF1324
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF1325
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF1326
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF1327
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF1328
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1329
	.byte	0x81
	.uleb128 0x2
	.long	.LASF1330
	.byte	0x82
	.uleb128 0x2
	.long	.LASF1331
	.byte	0x83
	.uleb128 0x2
	.long	.LASF1332
	.byte	0x84
	.uleb128 0x2
	.long	.LASF1333
	.byte	0x85
	.uleb128 0x2
	.long	.LASF1334
	.byte	0x86
	.uleb128 0x2
	.long	.LASF1335
	.byte	0x87
	.uleb128 0x2
	.long	.LASF1336
	.byte	0x88
	.uleb128 0x2
	.long	.LASF1337
	.byte	0x89
	.byte	0
	.uleb128 0x11
	.long	.LASF1338
	.byte	0xd
	.value	0x517
	.byte	0x3
	.long	0x21f7
	.uleb128 0x16
	.byte	0x5c
	.byte	0xd
	.value	0x519
	.long	0x269c
	.uleb128 0x4
	.long	.LASF1339
	.byte	0xd
	.value	0x51b
	.byte	0x9
	.long	0x8e
	.byte	0
	.uleb128 0x4
	.long	.LASF1340
	.byte	0xd
	.value	0x51c
	.byte	0x9
	.long	0x8e
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1341
	.byte	0xd
	.value	0x51d
	.byte	0x9
	.long	0x8e
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1342
	.byte	0xd
	.value	0x51e
	.byte	0x9
	.long	0x8e
	.byte	0xc
	.uleb128 0x4
	.long	.LASF1343
	.byte	0xd
	.value	0x51f
	.byte	0x9
	.long	0x8e
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1344
	.byte	0xd
	.value	0x520
	.byte	0x9
	.long	0x8e
	.byte	0x14
	.uleb128 0x4
	.long	.LASF1345
	.byte	0xd
	.value	0x521
	.byte	0x9
	.long	0x8e
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1346
	.byte	0xd
	.value	0x522
	.byte	0x9
	.long	0x8e
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF1347
	.byte	0xd
	.value	0x523
	.byte	0x9
	.long	0x8e
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1348
	.byte	0xd
	.value	0x524
	.byte	0x9
	.long	0x8e
	.byte	0x24
	.uleb128 0x4
	.long	.LASF1349
	.byte	0xd
	.value	0x525
	.byte	0x9
	.long	0x8e
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1350
	.byte	0xd
	.value	0x526
	.byte	0x9
	.long	0x8e
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1351
	.byte	0xd
	.value	0x527
	.byte	0x9
	.long	0x8e
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1352
	.byte	0xd
	.value	0x528
	.byte	0x9
	.long	0x8e
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1353
	.byte	0xd
	.value	0x529
	.byte	0x9
	.long	0x8e
	.byte	0x38
	.uleb128 0x4
	.long	.LASF1354
	.byte	0xd
	.value	0x52a
	.byte	0x9
	.long	0x8e
	.byte	0x3c
	.uleb128 0x4
	.long	.LASF1355
	.byte	0xd
	.value	0x52b
	.byte	0x9
	.long	0x8e
	.byte	0x40
	.uleb128 0x4
	.long	.LASF1356
	.byte	0xd
	.value	0x52c
	.byte	0x9
	.long	0x8e
	.byte	0x44
	.uleb128 0x4
	.long	.LASF1357
	.byte	0xd
	.value	0x52d
	.byte	0x9
	.long	0x8e
	.byte	0x48
	.uleb128 0x4
	.long	.LASF1358
	.byte	0xd
	.value	0x52e
	.byte	0x9
	.long	0x8e
	.byte	0x4c
	.uleb128 0x4
	.long	.LASF1359
	.byte	0xd
	.value	0x52f
	.byte	0x9
	.long	0x8e
	.byte	0x50
	.uleb128 0x4
	.long	.LASF1360
	.byte	0xd
	.value	0x530
	.byte	0x9
	.long	0x8e
	.byte	0x54
	.uleb128 0x4
	.long	.LASF1361
	.byte	0xd
	.value	0x531
	.byte	0x9
	.long	0x8e
	.byte	0x58
	.byte	0
	.uleb128 0x11
	.long	.LASF1362
	.byte	0xd
	.value	0x533
	.byte	0x3
	.long	0x2550
	.uleb128 0x18
	.long	.LASF1363
	.byte	0xe0
	.byte	0xe
	.byte	0xcf
	.long	0x2880
	.uleb128 0x3
	.long	.LASF1364
	.byte	0xe
	.byte	0xd2
	.byte	0x10
	.long	0x423
	.byte	0
	.uleb128 0x9
	.string	"x"
	.byte	0xe
	.byte	0xd5
	.byte	0xe
	.long	0x336
	.byte	0x18
	.uleb128 0x9
	.string	"y"
	.byte	0xe
	.byte	0xd6
	.byte	0xe
	.long	0x336
	.byte	0x1c
	.uleb128 0x9
	.string	"z"
	.byte	0xe
	.byte	0xd7
	.byte	0xe
	.long	0x336
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1365
	.byte	0xe
	.byte	0xda
	.byte	0x14
	.long	0x2880
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1366
	.byte	0xe
	.byte	0xdb
	.byte	0x14
	.long	0x2880
	.byte	0x30
	.uleb128 0x3
	.long	.LASF79
	.byte	0xe
	.byte	0xde
	.byte	0xe
	.long	0x347
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1192
	.byte	0xe
	.byte	0xdf
	.byte	0x12
	.long	0x7e0
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1193
	.byte	0xe
	.byte	0xe0
	.byte	0xb
	.long	0x8e
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1367
	.byte	0xe
	.byte	0xe4
	.byte	0x14
	.long	0x2880
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1368
	.byte	0xe
	.byte	0xe5
	.byte	0x14
	.long	0x2880
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1369
	.byte	0xe
	.byte	0xe7
	.byte	0x19
	.long	0x28b9
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1370
	.byte	0xe
	.byte	0xea
	.byte	0xe
	.long	0x336
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1371
	.byte	0xe
	.byte	0xeb
	.byte	0xe
	.long	0x336
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1355
	.byte	0xe
	.byte	0xee
	.byte	0xe
	.long	0x336
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1356
	.byte	0xe
	.byte	0xef
	.byte	0xe
	.long	0x336
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1372
	.byte	0xe
	.byte	0xf2
	.byte	0xe
	.long	0x336
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1373
	.byte	0xe
	.byte	0xf3
	.byte	0xe
	.long	0x336
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1374
	.byte	0xe
	.byte	0xf4
	.byte	0xe
	.long	0x336
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1375
	.byte	0xe
	.byte	0xf7
	.byte	0xb
	.long	0x8e
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF80
	.byte	0xe
	.byte	0xf9
	.byte	0x11
	.long	0x2543
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1376
	.byte	0xe
	.byte	0xfa
	.byte	0x12
	.long	0x28be
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1194
	.byte	0xe
	.byte	0xfc
	.byte	0xb
	.long	0x8e
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1377
	.byte	0xe
	.byte	0xfd
	.byte	0xf
	.long	0x28c3
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1360
	.byte	0xe
	.byte	0xfe
	.byte	0xb
	.long	0x8e
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1378
	.byte	0xe
	.byte	0xff
	.byte	0xb
	.long	0x8e
	.byte	0xa4
	.uleb128 0x4
	.long	.LASF1379
	.byte	0xe
	.value	0x102
	.byte	0xb
	.long	0x8e
	.byte	0xa8
	.uleb128 0x4
	.long	.LASF1380
	.byte	0xe
	.value	0x103
	.byte	0xb
	.long	0x8e
	.byte	0xac
	.uleb128 0x4
	.long	.LASF1381
	.byte	0xe
	.value	0x107
	.byte	0x14
	.long	0x2880
	.byte	0xb0
	.uleb128 0x4
	.long	.LASF1344
	.byte	0xe
	.value	0x10b
	.byte	0xb
	.long	0x8e
	.byte	0xb8
	.uleb128 0x4
	.long	.LASF1382
	.byte	0xe
	.value	0x10f
	.byte	0xb
	.long	0x8e
	.byte	0xbc
	.uleb128 0x4
	.long	.LASF1383
	.byte	0xe
	.value	0x113
	.byte	0x16
	.long	0x2a9d
	.byte	0xc0
	.uleb128 0x4
	.long	.LASF1384
	.byte	0xe
	.value	0x116
	.byte	0xb
	.long	0x8e
	.byte	0xc8
	.uleb128 0x4
	.long	.LASF1385
	.byte	0xe
	.value	0x119
	.byte	0x11
	.long	0x485
	.byte	0xcc
	.uleb128 0x4
	.long	.LASF1386
	.byte	0xe
	.value	0x11c
	.byte	0x14
	.long	0x2880
	.byte	0xd8
	.byte	0
	.uleb128 0x5
	.long	0x26a9
	.uleb128 0x18
	.long	.LASF1387
	.byte	0x10
	.byte	0xf
	.byte	0xe3
	.long	0x28b9
	.uleb128 0x3
	.long	.LASF1388
	.byte	0xf
	.byte	0xe5
	.byte	0xf
	.long	0x2d37
	.byte	0
	.uleb128 0x3
	.long	.LASF1389
	.byte	0xf
	.byte	0xe6
	.byte	0xb
	.long	0x87
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1390
	.byte	0xf
	.byte	0xe7
	.byte	0xb
	.long	0x87
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0x2885
	.uleb128 0x5
	.long	0x269c
	.uleb128 0x5
	.long	0x21ea
	.uleb128 0x2c
	.long	.LASF1391
	.value	0x140
	.byte	0x10
	.byte	0x53
	.byte	0x10
	.long	0x2a9d
	.uleb128 0x9
	.string	"mo"
	.byte	0x10
	.byte	0x55
	.byte	0xe
	.long	0x2bf6
	.byte	0
	.uleb128 0x3
	.long	.LASF1392
	.byte	0x10
	.byte	0x56
	.byte	0x13
	.long	0x2f75
	.byte	0x8
	.uleb128 0x9
	.string	"cmd"
	.byte	0x10
	.byte	0x57
	.byte	0xf
	.long	0x137
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1393
	.byte	0x10
	.byte	0x5c
	.byte	0xe
	.long	0x336
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1394
	.byte	0x10
	.byte	0x5e
	.byte	0xe
	.long	0x336
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1395
	.byte	0x10
	.byte	0x60
	.byte	0x16
	.long	0x336
	.byte	0x1c
	.uleb128 0x9
	.string	"bob"
	.byte	0x10
	.byte	0x62
	.byte	0x16
	.long	0x336
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1378
	.byte	0x10
	.byte	0x66
	.byte	0xb
	.long	0x8e
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1396
	.byte	0x10
	.byte	0x67
	.byte	0xb
	.long	0x8e
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1397
	.byte	0x10
	.byte	0x69
	.byte	0xb
	.long	0x8e
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1398
	.byte	0x10
	.byte	0x6c
	.byte	0xb
	.long	0x2f81
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1399
	.byte	0x10
	.byte	0x6d
	.byte	0xe
	.long	0x2f91
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1400
	.byte	0x10
	.byte	0x6e
	.byte	0xe
	.long	0xc8
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1401
	.byte	0x10
	.byte	0x71
	.byte	0xb
	.long	0x2bfb
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1402
	.byte	0x10
	.byte	0x72
	.byte	0x12
	.long	0x2b4
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1403
	.byte	0x10
	.byte	0x75
	.byte	0x12
	.long	0x2b4
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1404
	.byte	0x10
	.byte	0x77
	.byte	0xe
	.long	0x2fa1
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1405
	.byte	0x10
	.byte	0x78
	.byte	0xb
	.long	0x2bfb
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1406
	.byte	0x10
	.byte	0x79
	.byte	0xb
	.long	0x2bfb
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1407
	.byte	0x10
	.byte	0x7c
	.byte	0xb
	.long	0x8e
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1408
	.byte	0x10
	.byte	0x7d
	.byte	0xb
	.long	0x8e
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1409
	.byte	0x10
	.byte	0x81
	.byte	0xb
	.long	0x8e
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1410
	.byte	0x10
	.byte	0x84
	.byte	0xb
	.long	0x8e
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1411
	.byte	0x10
	.byte	0x87
	.byte	0xb
	.long	0x8e
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1412
	.byte	0x10
	.byte	0x88
	.byte	0xb
	.long	0x8e
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1413
	.byte	0x10
	.byte	0x89
	.byte	0xb
	.long	0x8e
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1414
	.byte	0x10
	.byte	0x8c
	.byte	0xc
	.long	0x9e
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1415
	.byte	0x10
	.byte	0x8f
	.byte	0xb
	.long	0x8e
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1416
	.byte	0x10
	.byte	0x90
	.byte	0xb
	.long	0x8e
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1417
	.byte	0x10
	.byte	0x93
	.byte	0xe
	.long	0x2bf6
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1418
	.byte	0x10
	.byte	0x96
	.byte	0xb
	.long	0x8e
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1419
	.byte	0x10
	.byte	0x9a
	.byte	0xb
	.long	0x8e
	.byte	0xfc
	.uleb128 0x1f
	.long	.LASF1420
	.byte	0x9e
	.byte	0xb
	.long	0x8e
	.value	0x100
	.uleb128 0x1f
	.long	.LASF1421
	.byte	0xa1
	.byte	0xf
	.long	0x2fb1
	.value	0x108
	.uleb128 0x1f
	.long	.LASF1422
	.byte	0xa4
	.byte	0xe
	.long	0xc8
	.value	0x138
	.byte	0
	.uleb128 0x5
	.long	0x28c8
	.uleb128 0x11
	.long	.LASF1423
	.byte	0xe
	.value	0x11e
	.byte	0x3
	.long	0x26a9
	.uleb128 0xf
	.byte	0x8
	.byte	0xf
	.byte	0x47
	.long	0x2ace
	.uleb128 0x9
	.string	"x"
	.byte	0xf
	.byte	0x49
	.byte	0xd
	.long	0x336
	.byte	0
	.uleb128 0x9
	.string	"y"
	.byte	0xf
	.byte	0x4a
	.byte	0xd
	.long	0x336
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	.LASF1424
	.byte	0xf
	.byte	0x4c
	.byte	0x3
	.long	0x2aaf
	.uleb128 0xf
	.byte	0x28
	.byte	0xf
	.byte	0x58
	.long	0x2b11
	.uleb128 0x3
	.long	.LASF1364
	.byte	0xf
	.byte	0x5a
	.byte	0x10
	.long	0x423
	.byte	0
	.uleb128 0x9
	.string	"x"
	.byte	0xf
	.byte	0x5b
	.byte	0xe
	.long	0x336
	.byte	0x18
	.uleb128 0x9
	.string	"y"
	.byte	0xf
	.byte	0x5c
	.byte	0xe
	.long	0x336
	.byte	0x1c
	.uleb128 0x9
	.string	"z"
	.byte	0xf
	.byte	0x5d
	.byte	0xe
	.long	0x336
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.long	.LASF1425
	.byte	0xf
	.byte	0x5f
	.byte	0x3
	.long	0x2ada
	.uleb128 0xf
	.byte	0x80
	.byte	0xf
	.byte	0x65
	.long	0x2bf6
	.uleb128 0x3
	.long	.LASF1426
	.byte	0xf
	.byte	0x67
	.byte	0xd
	.long	0x336
	.byte	0
	.uleb128 0x3
	.long	.LASF1427
	.byte	0xf
	.byte	0x68
	.byte	0xd
	.long	0x336
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1428
	.byte	0xf
	.byte	0x69
	.byte	0xb
	.long	0x87
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1429
	.byte	0xf
	.byte	0x6a
	.byte	0xb
	.long	0x87
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1430
	.byte	0xf
	.byte	0x6b
	.byte	0xb
	.long	0x87
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1431
	.byte	0xf
	.byte	0x6c
	.byte	0xb
	.long	0x87
	.byte	0xe
	.uleb128 0x9
	.string	"tag"
	.byte	0xf
	.byte	0x6d
	.byte	0xb
	.long	0x87
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1432
	.byte	0xf
	.byte	0x70
	.byte	0xa
	.long	0x8e
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1433
	.byte	0xf
	.byte	0x73
	.byte	0xd
	.long	0x2bf6
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1434
	.byte	0xf
	.byte	0x76
	.byte	0xa
	.long	0x2bfb
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1435
	.byte	0xf
	.byte	0x79
	.byte	0x11
	.long	0x2b11
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1375
	.byte	0xf
	.byte	0x7c
	.byte	0xa
	.long	0x8e
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1436
	.byte	0xf
	.byte	0x7f
	.byte	0xd
	.long	0x2bf6
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1437
	.byte	0xf
	.byte	0x82
	.byte	0xb
	.long	0x9c
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1438
	.byte	0xf
	.byte	0x84
	.byte	0xb
	.long	0x8e
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1439
	.byte	0xf
	.byte	0x85
	.byte	0x15
	.long	0x2cca
	.byte	0x78
	.byte	0
	.uleb128 0x5
	.long	0x2aa2
	.uleb128 0xc
	.long	0x8e
	.long	0x2c0b
	.uleb128 0xd
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x18
	.long	.LASF1440
	.byte	0x58
	.byte	0xf
	.byte	0xb3
	.long	0x2cca
	.uleb128 0x9
	.string	"v1"
	.byte	0xf
	.byte	0xb6
	.byte	0xf
	.long	0x2d79
	.byte	0
	.uleb128 0x9
	.string	"v2"
	.byte	0xf
	.byte	0xb7
	.byte	0xf
	.long	0x2d79
	.byte	0x8
	.uleb128 0x9
	.string	"dx"
	.byte	0xf
	.byte	0xba
	.byte	0xd
	.long	0x336
	.byte	0x10
	.uleb128 0x9
	.string	"dy"
	.byte	0xf
	.byte	0xbb
	.byte	0xd
	.long	0x336
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1360
	.byte	0xf
	.byte	0xbe
	.byte	0xb
	.long	0x87
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1431
	.byte	0xf
	.byte	0xbf
	.byte	0xb
	.long	0x87
	.byte	0x1a
	.uleb128 0x9
	.string	"tag"
	.byte	0xf
	.byte	0xc0
	.byte	0xb
	.long	0x87
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1441
	.byte	0xf
	.byte	0xc4
	.byte	0xb
	.long	0x42f
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1442
	.byte	0xf
	.byte	0xc8
	.byte	0xd
	.long	0x2d7e
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1443
	.byte	0xf
	.byte	0xcb
	.byte	0x11
	.long	0x2d6d
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1444
	.byte	0xf
	.byte	0xcf
	.byte	0xf
	.long	0x2d37
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1445
	.byte	0xf
	.byte	0xd0
	.byte	0xf
	.long	0x2d37
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1375
	.byte	0xf
	.byte	0xd3
	.byte	0xa
	.long	0x8e
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1437
	.byte	0xf
	.byte	0xd6
	.byte	0xb
	.long	0x9c
	.byte	0x50
	.byte	0
	.uleb128 0x5
	.long	0x2ccf
	.uleb128 0x5
	.long	0x2c0b
	.uleb128 0x8
	.long	.LASF1446
	.byte	0xf
	.byte	0x87
	.byte	0x3
	.long	0x2b1d
	.uleb128 0xf
	.byte	0x18
	.byte	0xf
	.byte	0x90
	.long	0x2d37
	.uleb128 0x3
	.long	.LASF1447
	.byte	0xf
	.byte	0x93
	.byte	0xd
	.long	0x336
	.byte	0
	.uleb128 0x3
	.long	.LASF1448
	.byte	0xf
	.byte	0x96
	.byte	0xd
	.long	0x336
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1449
	.byte	0xf
	.byte	0x9a
	.byte	0xb
	.long	0x87
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1450
	.byte	0xf
	.byte	0x9b
	.byte	0xb
	.long	0x87
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1451
	.byte	0xf
	.byte	0x9c
	.byte	0xb
	.long	0x87
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1388
	.byte	0xf
	.byte	0x9f
	.byte	0xf
	.long	0x2d37
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	0x2cd4
	.uleb128 0x8
	.long	.LASF1452
	.byte	0xf
	.byte	0xa1
	.byte	0x3
	.long	0x2ce0
	.uleb128 0x14
	.long	0x79
	.byte	0xf
	.byte	0xa9
	.byte	0x1
	.long	0x2d6d
	.uleb128 0x2
	.long	.LASF1453
	.byte	0
	.uleb128 0x2
	.long	.LASF1454
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1455
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1456
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	.LASF1457
	.byte	0xf
	.byte	0xaf
	.byte	0x3
	.long	0x2d48
	.uleb128 0x5
	.long	0x2ace
	.uleb128 0xc
	.long	0x336
	.long	0x2d8e
	.uleb128 0xd
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x2d3c
	.uleb128 0x16
	.byte	0x2
	.byte	0xf
	.value	0x11d
	.long	0x2db9
	.uleb128 0x4
	.long	.LASF1458
	.byte	0xf
	.value	0x11f
	.byte	0xb
	.long	0xd4
	.byte	0
	.uleb128 0x4
	.long	.LASF1459
	.byte	0xf
	.value	0x120
	.byte	0xb
	.long	0xd4
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.long	.LASF1460
	.byte	0xf
	.value	0x121
	.byte	0x3
	.long	0x2d93
	.uleb128 0x11
	.long	.LASF1461
	.byte	0xf
	.value	0x124
	.byte	0x10
	.long	0x2db9
	.uleb128 0x11
	.long	.LASF1462
	.byte	0xf
	.value	0x13a
	.byte	0xe
	.long	0xd4
	.uleb128 0x5
	.long	0x87
	.uleb128 0x16
	.byte	0x28
	.byte	0xf
	.value	0x164
	.long	0x2e35
	.uleb128 0x4
	.long	.LASF1463
	.byte	0xf
	.value	0x166
	.byte	0xc
	.long	0x87
	.byte	0
	.uleb128 0x4
	.long	.LASF1356
	.byte	0xf
	.value	0x167
	.byte	0xc
	.long	0x87
	.byte	0x2
	.uleb128 0x4
	.long	.LASF1464
	.byte	0xf
	.value	0x168
	.byte	0xc
	.long	0x87
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1465
	.byte	0xf
	.value	0x169
	.byte	0xc
	.long	0x87
	.byte	0x6
	.uleb128 0x4
	.long	.LASF1466
	.byte	0xf
	.value	0x16a
	.byte	0xb
	.long	0x2e35
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x8e
	.long	0x2e45
	.uleb128 0xd
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x11
	.long	.LASF1467
	.byte	0xf
	.value	0x16c
	.byte	0x3
	.long	0x2de5
	.uleb128 0x5
	.long	0x2dd3
	.uleb128 0x16
	.byte	0x1c
	.byte	0xf
	.value	0x1ab
	.long	0x2e8b
	.uleb128 0x4
	.long	.LASF1468
	.byte	0xf
	.value	0x1b0
	.byte	0xd
	.long	0xc8
	.byte	0
	.uleb128 0x4
	.long	.LASF1469
	.byte	0xf
	.value	0x1b3
	.byte	0xb
	.long	0x2e8b
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1470
	.byte	0xf
	.value	0x1b6
	.byte	0xa
	.long	0x2e9b
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.long	0x87
	.long	0x2e9b
	.uleb128 0xd
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.long	0xd4
	.long	0x2eab
	.uleb128 0xd
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x11
	.long	.LASF1471
	.byte	0xf
	.value	0x1b8
	.byte	0x3
	.long	0x2e57
	.uleb128 0x16
	.byte	0x10
	.byte	0xf
	.value	0x1c0
	.long	0x2ede
	.uleb128 0x4
	.long	.LASF1472
	.byte	0xf
	.value	0x1c2
	.byte	0xb
	.long	0x8e
	.byte	0
	.uleb128 0x4
	.long	.LASF1473
	.byte	0xf
	.value	0x1c3
	.byte	0x14
	.long	0x2ede
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x2eab
	.uleb128 0x11
	.long	.LASF1474
	.byte	0xf
	.value	0x1c5
	.byte	0x3
	.long	0x2eb8
	.uleb128 0x14
	.long	0x79
	.byte	0x11
	.byte	0x3d
	.byte	0x1
	.long	0x2f0f
	.uleb128 0x2
	.long	.LASF1475
	.byte	0
	.uleb128 0x2
	.long	.LASF1476
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1477
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.byte	0x18
	.byte	0x11
	.byte	0x44
	.long	0x2f4a
	.uleb128 0x3
	.long	.LASF1377
	.byte	0x11
	.byte	0x46
	.byte	0xe
	.long	0x28c3
	.byte	0
	.uleb128 0x3
	.long	.LASF1194
	.byte	0x11
	.byte	0x47
	.byte	0xa
	.long	0x8e
	.byte	0x8
	.uleb128 0x9
	.string	"sx"
	.byte	0x11
	.byte	0x48
	.byte	0xd
	.long	0x336
	.byte	0xc
	.uleb128 0x9
	.string	"sy"
	.byte	0x11
	.byte	0x49
	.byte	0xd
	.long	0x336
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	.LASF1478
	.byte	0x11
	.byte	0x4b
	.byte	0x3
	.long	0x2f0f
	.uleb128 0x14
	.long	0x79
	.byte	0x10
	.byte	0x36
	.byte	0x1
	.long	0x2f75
	.uleb128 0x2
	.long	.LASF1479
	.byte	0
	.uleb128 0x2
	.long	.LASF1480
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1481
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	.LASF1482
	.byte	0x10
	.byte	0x3e
	.byte	0x3
	.long	0x2f56
	.uleb128 0xc
	.long	0x8e
	.long	0x2f91
	.uleb128 0xd
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.long	0xc8
	.long	0x2fa1
	.uleb128 0xd
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.long	0xc8
	.long	0x2fb1
	.uleb128 0xd
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x2f4a
	.long	0x2fc1
	.uleb128 0xd
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.long	.LASF1484
	.byte	0x12
	.byte	0x2c
	.byte	0x12
	.long	0x342
	.uleb128 0xa
	.long	.LASF1485
	.byte	0x12
	.byte	0x2f
	.byte	0x12
	.long	0x342
	.uleb128 0xa
	.long	.LASF1486
	.byte	0x12
	.byte	0x31
	.byte	0x12
	.long	0x342
	.uleb128 0xa
	.long	.LASF1487
	.byte	0x12
	.byte	0x32
	.byte	0x12
	.long	0x342
	.uleb128 0xa
	.long	.LASF1488
	.byte	0x12
	.byte	0x34
	.byte	0x16
	.long	0x2e52
	.uleb128 0xa
	.long	.LASF1489
	.byte	0x12
	.byte	0x3a
	.byte	0xd
	.long	0x8e
	.uleb128 0xa
	.long	.LASF1490
	.byte	0x12
	.byte	0x3d
	.byte	0xe
	.long	0x3015
	.uleb128 0x5
	.long	0x8e
	.uleb128 0xa
	.long	.LASF1491
	.byte	0x12
	.byte	0x3e
	.byte	0xe
	.long	0x3015
	.uleb128 0xa
	.long	.LASF1492
	.byte	0x12
	.byte	0x42
	.byte	0xd
	.long	0x8e
	.uleb128 0xa
	.long	.LASF1493
	.byte	0x12
	.byte	0x43
	.byte	0xd
	.long	0x8e
	.uleb128 0xa
	.long	.LASF1494
	.byte	0x12
	.byte	0x44
	.byte	0xd
	.long	0x8e
	.uleb128 0xa
	.long	.LASF1495
	.byte	0x12
	.byte	0x4b
	.byte	0xd
	.long	0x8e
	.uleb128 0xa
	.long	.LASF1496
	.byte	0x12
	.byte	0x4c
	.byte	0x15
	.long	0x3062
	.uleb128 0x5
	.long	0x2ee3
	.uleb128 0xa
	.long	.LASF1497
	.byte	0x12
	.byte	0x54
	.byte	0xd
	.long	0x8e
	.uleb128 0xa
	.long	.LASF1498
	.byte	0x12
	.byte	0x55
	.byte	0x12
	.long	0x2d37
	.uleb128 0xa
	.long	.LASF1499
	.byte	0x12
	.byte	0x60
	.byte	0xd
	.long	0x8e
	.uleb128 0xa
	.long	.LASF1500
	.byte	0x12
	.byte	0x61
	.byte	0x11
	.long	0x2d8e
	.uleb128 0x5
	.long	0xd4
	.uleb128 0xa
	.long	.LASF1501
	.byte	0x13
	.byte	0x46
	.byte	0x12
	.long	0x423
	.uleb128 0xc
	.long	0x4a
	.long	0x30b8
	.uleb128 0xd
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.long	.LASF1502
	.byte	0x14
	.byte	0xb7
	.byte	0x11
	.long	0xc8
	.uleb128 0xa
	.long	.LASF1503
	.byte	0x15
	.byte	0x25
	.byte	0xe
	.long	0x8e
	.uleb128 0xf
	.byte	0xa
	.byte	0x1
	.byte	0x47
	.long	0x311a
	.uleb128 0x3
	.long	.LASF1504
	.byte	0x1
	.byte	0x49
	.byte	0xb
	.long	0x87
	.byte	0
	.uleb128 0x3
	.long	.LASF1505
	.byte	0x1
	.byte	0x4a
	.byte	0xb
	.long	0x87
	.byte	0x2
	.uleb128 0x3
	.long	.LASF1506
	.byte	0x1
	.byte	0x4b
	.byte	0xb
	.long	0x87
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1507
	.byte	0x1
	.byte	0x4c
	.byte	0xb
	.long	0x87
	.byte	0x6
	.uleb128 0x3
	.long	.LASF1420
	.byte	0x1
	.byte	0x4d
	.byte	0xb
	.long	0x87
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	.LASF1508
	.byte	0x1
	.byte	0x4e
	.byte	0x3
	.long	0x30d0
	.uleb128 0xf
	.byte	0x20
	.byte	0x1
	.byte	0x56
	.long	0x318a
	.uleb128 0x3
	.long	.LASF28
	.byte	0x1
	.byte	0x58
	.byte	0xb
	.long	0x1c4
	.byte	0
	.uleb128 0x3
	.long	.LASF1509
	.byte	0x1
	.byte	0x59
	.byte	0xe
	.long	0xc8
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1463
	.byte	0x1
	.byte	0x5a
	.byte	0xc
	.long	0x87
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1356
	.byte	0x1
	.byte	0x5b
	.byte	0xc
	.long	0x87
	.byte	0xe
	.uleb128 0x3
	.long	.LASF1510
	.byte	0x1
	.byte	0x5c
	.byte	0xb
	.long	0x8e
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1511
	.byte	0x1
	.byte	0x5d
	.byte	0xc
	.long	0x87
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1512
	.byte	0x1
	.byte	0x5e
	.byte	0x10
	.long	0x318a
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.long	0x311a
	.long	0x319a
	.uleb128 0xd
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	.LASF1513
	.byte	0x1
	.byte	0x5f
	.byte	0x3
	.long	0x3126
	.uleb128 0xf
	.byte	0xc
	.byte	0x1
	.byte	0x65
	.long	0x31d6
	.uleb128 0x3
	.long	.LASF1504
	.byte	0x1
	.byte	0x6a
	.byte	0xa
	.long	0x8e
	.byte	0
	.uleb128 0x3
	.long	.LASF1505
	.byte	0x1
	.byte	0x6b
	.byte	0xa
	.long	0x8e
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1506
	.byte	0x1
	.byte	0x6c
	.byte	0xa
	.long	0x8e
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	.LASF1514
	.byte	0x1
	.byte	0x6d
	.byte	0x3
	.long	0x31a6
	.uleb128 0xf
	.byte	0x1c
	.byte	0x1
	.byte	0x73
	.long	0x322c
	.uleb128 0x3
	.long	.LASF28
	.byte	0x1
	.byte	0x76
	.byte	0xa
	.long	0x1c4
	.byte	0
	.uleb128 0x3
	.long	.LASF1463
	.byte	0x1
	.byte	0x77
	.byte	0xb
	.long	0x87
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1356
	.byte	0x1
	.byte	0x78
	.byte	0xb
	.long	0x87
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1511
	.byte	0x1
	.byte	0x7c
	.byte	0xb
	.long	0x87
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1512
	.byte	0x1
	.byte	0x7d
	.byte	0x10
	.long	0x322c
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.long	0x31d6
	.long	0x323c
	.uleb128 0xd
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	.LASF1515
	.byte	0x1
	.byte	0x7f
	.byte	0x3
	.long	0x31e2
	.uleb128 0x12
	.long	0x2ffd
	.byte	0x83
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	firstflat
	.uleb128 0x10
	.long	.LASF1516
	.byte	0x84
	.byte	0x6
	.long	0x8e
	.uleb128 0x9
	.byte	0x3
	.quad	lastflat
	.uleb128 0x10
	.long	.LASF1517
	.byte	0x85
	.byte	0x6
	.long	0x8e
	.uleb128 0x9
	.byte	0x3
	.quad	numflats
	.uleb128 0x10
	.long	.LASF1518
	.byte	0x87
	.byte	0x6
	.long	0x8e
	.uleb128 0x9
	.byte	0x3
	.quad	firstpatch
	.uleb128 0x10
	.long	.LASF1519
	.byte	0x88
	.byte	0x6
	.long	0x8e
	.uleb128 0x9
	.byte	0x3
	.quad	lastpatch
	.uleb128 0x10
	.long	.LASF1520
	.byte	0x89
	.byte	0x6
	.long	0x8e
	.uleb128 0x9
	.byte	0x3
	.quad	numpatches
	.uleb128 0x12
	.long	0x3026
	.byte	0x8b
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	firstspritelump
	.uleb128 0x12
	.long	0x3032
	.byte	0x8c
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	lastspritelump
	.uleb128 0x12
	.long	0x303e
	.byte	0x8d
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	numspritelumps
	.uleb128 0x10
	.long	.LASF1521
	.byte	0x8f
	.byte	0x6
	.long	0x8e
	.uleb128 0x9
	.byte	0x3
	.quad	numtextures
	.uleb128 0x10
	.long	.LASF1522
	.byte	0x90
	.byte	0xd
	.long	0x331f
	.uleb128 0x9
	.byte	0x3
	.quad	textures
	.uleb128 0x5
	.long	0x3324
	.uleb128 0x5
	.long	0x323c
	.uleb128 0x10
	.long	.LASF1523
	.byte	0x93
	.byte	0x8
	.long	0x3015
	.uleb128 0x9
	.byte	0x3
	.quad	texturewidthmask
	.uleb128 0x12
	.long	0x2fc1
	.byte	0x95
	.byte	0xb
	.uleb128 0x9
	.byte	0x3
	.quad	textureheight
	.uleb128 0x10
	.long	.LASF1524
	.byte	0x96
	.byte	0x8
	.long	0x3015
	.uleb128 0x9
	.byte	0x3
	.quad	texturecompositesize
	.uleb128 0x10
	.long	.LASF1525
	.byte	0x97
	.byte	0xb
	.long	0x3379
	.uleb128 0x9
	.byte	0x3
	.quad	texturecolumnlump
	.uleb128 0x5
	.long	0x2de0
	.uleb128 0x10
	.long	.LASF1526
	.byte	0x98
	.byte	0x12
	.long	0x3393
	.uleb128 0x9
	.byte	0x3
	.quad	texturecolumnofs
	.uleb128 0x5
	.long	0x3398
	.uleb128 0x5
	.long	0x72
	.uleb128 0x10
	.long	.LASF1527
	.byte	0x99
	.byte	0xa
	.long	0x33b2
	.uleb128 0x9
	.byte	0x3
	.quad	texturecomposite
	.uleb128 0x5
	.long	0x3097
	.uleb128 0x12
	.long	0x3009
	.byte	0x9c
	.byte	0x7
	.uleb128 0x9
	.byte	0x3
	.quad	flattranslation
	.uleb128 0x12
	.long	0x301a
	.byte	0x9d
	.byte	0x7
	.uleb128 0x9
	.byte	0x3
	.quad	texturetranslation
	.uleb128 0x12
	.long	0x2fcd
	.byte	0xa0
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	spritewidth
	.uleb128 0x12
	.long	0x2fd9
	.byte	0xa1
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	spriteoffset
	.uleb128 0x12
	.long	0x2fe5
	.byte	0xa2
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	spritetopoffset
	.uleb128 0x12
	.long	0x2ff1
	.byte	0xa4
	.byte	0xf
	.uleb128 0x9
	.byte	0x3
	.quad	colormaps
	.uleb128 0x20
	.long	.LASF1528
	.value	0x2e5
	.long	0x8e
	.uleb128 0x9
	.byte	0x3
	.quad	flatmemory
	.uleb128 0x20
	.long	.LASF1529
	.value	0x2e6
	.long	0x8e
	.uleb128 0x9
	.byte	0x3
	.quad	texturememory
	.uleb128 0x20
	.long	.LASF1530
	.value	0x2e7
	.long	0x8e
	.uleb128 0x9
	.byte	0x3
	.quad	spritememory
	.uleb128 0x19
	.long	.LASF1531
	.byte	0x13
	.byte	0x76
	.byte	0x7
	.long	0x346e
	.uleb128 0x7
	.long	0x2bf6
	.byte	0
	.uleb128 0x15
	.long	.LASF1533
	.byte	0x16
	.byte	0x78
	.byte	0xc
	.long	0x8e
	.long	0x348e
	.uleb128 0x7
	.long	0x14f
	.uleb128 0x7
	.long	0x14f
	.uleb128 0x7
	.long	0x143
	.byte	0
	.uleb128 0x19
	.long	.LASF1532
	.byte	0x7
	.byte	0x4c
	.byte	0x9
	.long	0x34a5
	.uleb128 0x7
	.long	0x8e
	.uleb128 0x7
	.long	0x9c
	.byte	0
	.uleb128 0x15
	.long	.LASF1534
	.byte	0x7
	.byte	0x4b
	.byte	0x5
	.long	0x8e
	.long	0x34bb
	.uleb128 0x7
	.long	0x8e
	.byte	0
	.uleb128 0x15
	.long	.LASF1535
	.byte	0x7
	.byte	0x49
	.byte	0x5
	.long	0x8e
	.long	0x34d1
	.uleb128 0x7
	.long	0x9e
	.byte	0
	.uleb128 0x19
	.long	.LASF1536
	.byte	0x6
	.byte	0x31
	.byte	0x9
	.long	0x34e3
	.uleb128 0x7
	.long	0x9c
	.byte	0
	.uleb128 0x15
	.long	.LASF1537
	.byte	0x7
	.byte	0x48
	.byte	0x5
	.long	0x8e
	.long	0x34f9
	.uleb128 0x7
	.long	0x9e
	.byte	0
	.uleb128 0x15
	.long	.LASF1538
	.byte	0x17
	.byte	0x90
	.byte	0xe
	.long	0x9e
	.long	0x3519
	.uleb128 0x7
	.long	0x9e
	.uleb128 0x7
	.long	0x14f
	.uleb128 0x7
	.long	0x143
	.byte	0
	.uleb128 0x15
	.long	.LASF1539
	.byte	0x7
	.byte	0x4f
	.byte	0x7
	.long	0x9c
	.long	0x3534
	.uleb128 0x7
	.long	0x9e
	.uleb128 0x7
	.long	0x8e
	.byte	0
	.uleb128 0x2d
	.long	.LASF1540
	.byte	0x18
	.value	0x16b
	.byte	0xc
	.long	0x8e
	.long	0x354c
	.uleb128 0x7
	.long	0x14f
	.uleb128 0x1e
	.byte	0
	.uleb128 0x15
	.long	.LASF1541
	.byte	0x17
	.byte	0x3d
	.byte	0xe
	.long	0x9c
	.long	0x356c
	.uleb128 0x7
	.long	0x9c
	.uleb128 0x7
	.long	0x8e
	.uleb128 0x7
	.long	0x143
	.byte	0
	.uleb128 0x19
	.long	.LASF1542
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.long	0x3583
	.uleb128 0x7
	.long	0x9c
	.uleb128 0x7
	.long	0x8e
	.byte	0
	.uleb128 0x19
	.long	.LASF1543
	.byte	0x19
	.byte	0x59
	.byte	0x6
	.long	0x3596
	.uleb128 0x7
	.long	0x9e
	.uleb128 0x1e
	.byte	0
	.uleb128 0x15
	.long	.LASF1544
	.byte	0x7
	.byte	0x4e
	.byte	0x7
	.long	0x9c
	.long	0x35b1
	.uleb128 0x7
	.long	0x8e
	.uleb128 0x7
	.long	0x8e
	.byte	0
	.uleb128 0x15
	.long	.LASF1545
	.byte	0x6
	.byte	0x30
	.byte	0x7
	.long	0x9c
	.long	0x35d1
	.uleb128 0x7
	.long	0x8e
	.uleb128 0x7
	.long	0x8e
	.uleb128 0x7
	.long	0x9c
	.byte	0
	.uleb128 0x15
	.long	.LASF1546
	.byte	0x17
	.byte	0x2b
	.byte	0xe
	.long	0x9c
	.long	0x35f1
	.uleb128 0x7
	.long	0x9c
	.uleb128 0x7
	.long	0x35f1
	.uleb128 0x7
	.long	0x143
	.byte	0
	.uleb128 0x5
	.long	0x35f6
	.uleb128 0x2e
	.uleb128 0x17
	.long	.LASF1556
	.value	0x2e9
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x36a8
	.uleb128 0x6
	.long	.LASF1548
	.value	0x2eb
	.byte	0xc
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.long	.LASF1549
	.value	0x2ec
	.byte	0xc
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.long	.LASF1550
	.value	0x2ed
	.byte	0xc
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"i"
	.value	0x2ef
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xb
	.string	"j"
	.value	0x2f0
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xb
	.string	"k"
	.value	0x2f1
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x6
	.long	.LASF1469
	.value	0x2f2
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x6
	.long	.LASF1551
	.value	0x2f4
	.byte	0x11
	.long	0x3324
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.string	"th"
	.value	0x2f5
	.byte	0x11
	.long	0x36a8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xb
	.string	"sf"
	.value	0x2f6
	.byte	0x14
	.long	0x2ede
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x5
	.long	0x423
	.uleb128 0x1b
	.long	.LASF1552
	.value	0x2d0
	.byte	0x5
	.long	0x8e
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x36ec
	.uleb128 0x1c
	.long	.LASF28
	.value	0x2d0
	.byte	0x20
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"i"
	.value	0x2d2
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.long	.LASF1553
	.value	0x2ba
	.byte	0x5
	.long	0x8e
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x372b
	.uleb128 0x1c
	.long	.LASF28
	.value	0x2ba
	.byte	0x25
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"i"
	.value	0x2bc
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.long	.LASF1554
	.value	0x2a2
	.byte	0x5
	.long	0x8e
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3779
	.uleb128 0x1c
	.long	.LASF28
	.value	0x2a2
	.byte	0x1d
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.string	"i"
	.value	0x2a4
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.long	.LASF1555
	.value	0x2a5
	.byte	0xa
	.long	0x30a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x2f
	.long	.LASF1595
	.byte	0x1
	.value	0x290
	.byte	0x6
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.long	.LASF1557
	.value	0x27b
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x37d0
	.uleb128 0x6
	.long	.LASF1469
	.value	0x27d
	.byte	0x9
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.long	.LASF1459
	.value	0x27d
	.byte	0xf
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.long	.LASF1558
	.value	0x25d
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x380a
	.uleb128 0xb
	.string	"i"
	.value	0x25f
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.long	.LASF1506
	.value	0x260
	.byte	0xe
	.long	0x380a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.long	0x2e45
	.uleb128 0x17
	.long	.LASF1559
	.value	0x247
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x383a
	.uleb128 0xb
	.string	"i"
	.value	0x249
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.long	.LASF1560
	.value	0x19d
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x39d2
	.uleb128 0x6
	.long	.LASF1561
	.value	0x19f
	.byte	0x13
	.long	0x39d2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x6
	.long	.LASF1551
	.value	0x1a0
	.byte	0x11
	.long	0x3324
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.long	.LASF1562
	.value	0x1a1
	.byte	0x12
	.long	0x39d7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x6
	.long	.LASF1506
	.value	0x1a2
	.byte	0x12
	.long	0x39dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0xb
	.string	"i"
	.value	0x1a4
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0xb
	.string	"j"
	.value	0x1a5
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x6
	.long	.LASF1563
	.value	0x1a7
	.byte	0xb
	.long	0x3015
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x6
	.long	.LASF1564
	.value	0x1a8
	.byte	0xb
	.long	0x3015
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x6
	.long	.LASF1565
	.value	0x1a9
	.byte	0xb
	.long	0x3015
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x6
	.long	.LASF28
	.value	0x1ab
	.byte	0xb
	.long	0x30a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x6
	.long	.LASF1566
	.value	0x1ac
	.byte	0xc
	.long	0x9e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x6
	.long	.LASF1567
	.value	0x1ad
	.byte	0xc
	.long	0x9e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x6
	.long	.LASF1568
	.value	0x1af
	.byte	0xb
	.long	0x3015
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x6
	.long	.LASF1569
	.value	0x1b1
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x6
	.long	.LASF1570
	.value	0x1b2
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x6
	.long	.LASF1571
	.value	0x1b3
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x6
	.long	.LASF1572
	.value	0x1b4
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x6
	.long	.LASF1573
	.value	0x1b5
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x6
	.long	.LASF1574
	.value	0x1b6
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x6
	.long	.LASF1575
	.value	0x1b7
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x6
	.long	.LASF1576
	.value	0x1b9
	.byte	0xb
	.long	0x3015
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x6
	.long	.LASF1577
	.value	0x1bb
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x6
	.long	.LASF1578
	.value	0x1bc
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x6
	.long	.LASF1579
	.value	0x1bd
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x5
	.long	0x319a
	.uleb128 0x5
	.long	0x311a
	.uleb128 0x5
	.long	0x31d6
	.uleb128 0x1b
	.long	.LASF1580
	.value	0x181
	.byte	0x1
	.long	0x3097
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a3e
	.uleb128 0x24
	.string	"tex"
	.value	0x182
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.string	"col"
	.value	0x183
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.long	.LASF1469
	.value	0x185
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"ofs"
	.value	0x186
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.long	.LASF1581
	.value	0x12a
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b01
	.uleb128 0x1c
	.long	.LASF1582
	.value	0x12a
	.byte	0x1c
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x6
	.long	.LASF1551
	.value	0x12c
	.byte	0x11
	.long	0x3324
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.long	.LASF1511
	.value	0x12d
	.byte	0xc
	.long	0x3097
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.long	.LASF1506
	.value	0x12e
	.byte	0x12
	.long	0x39dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x6
	.long	.LASF1583
	.value	0x12f
	.byte	0xf
	.long	0x380a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.string	"x"
	.value	0x130
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xb
	.string	"x1"
	.value	0x131
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xb
	.string	"x2"
	.value	0x132
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xb
	.string	"i"
	.value	0x133
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x6
	.long	.LASF1584
	.value	0x134
	.byte	0xd
	.long	0x2de0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.long	.LASF1585
	.value	0x135
	.byte	0x15
	.long	0x3398
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x30
	.long	.LASF1586
	.byte	0x1
	.byte	0xe6
	.byte	0x6
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x3bc4
	.uleb128 0x1a
	.long	.LASF1582
	.byte	0xe6
	.byte	0x1f
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0xe
	.long	.LASF1587
	.byte	0xe8
	.byte	0xc
	.long	0x3097
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.long	.LASF1551
	.byte	0xe9
	.byte	0x11
	.long	0x3324
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.long	.LASF1506
	.byte	0xea
	.byte	0x12
	.long	0x39dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xe
	.long	.LASF1583
	.byte	0xeb
	.byte	0xf
	.long	0x380a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.string	"x"
	.byte	0xec
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1d
	.string	"x1"
	.byte	0xed
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1d
	.string	"x2"
	.byte	0xee
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1d
	.string	"i"
	.byte	0xef
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xe
	.long	.LASF1588
	.byte	0xf0
	.byte	0x10
	.long	0x3bc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.long	.LASF1584
	.byte	0xf1
	.byte	0xd
	.long	0x2de0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.long	.LASF1585
	.byte	0xf2
	.byte	0x15
	.long	0x3398
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x5
	.long	0x2dc6
	.uleb128 0x31
	.long	.LASF1596
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.long	.LASF1506
	.byte	0xbc
	.byte	0xd
	.long	0x3bc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF1589
	.byte	0xbd
	.byte	0xa
	.long	0x3097
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF1505
	.byte	0xbe
	.byte	0x8
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1a
	.long	.LASF1590
	.byte	0xbf
	.byte	0x8
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xe
	.long	.LASF1591
	.byte	0xc1
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.long	.LASF30
	.byte	0xc2
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.long	.LASF1592
	.byte	0xc3
	.byte	0xb
	.long	0x3097
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.long	.LASF1593
	.byte	0xc4
	.byte	0xb
	.long	0x3097
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
	.uleb128 0x5
	.byte	0
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
	.uleb128 0xf
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.sleb128 11
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 16
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 11
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
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2e
	.uleb128 0x26
	.byte	0
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
.LASF860:
	.string	"S_BSPI_RUN3"
.LASF861:
	.string	"S_BSPI_RUN4"
.LASF862:
	.string	"S_BSPI_RUN5"
.LASF863:
	.string	"S_BSPI_RUN6"
.LASF864:
	.string	"S_BSPI_RUN7"
.LASF865:
	.string	"S_BSPI_RUN8"
.LASF866:
	.string	"S_BSPI_RUN9"
.LASF150:
	.string	"SPR_YSKU"
.LASF1417:
	.string	"attacker"
.LASF513:
	.string	"S_FIRE10"
.LASF514:
	.string	"S_FIRE11"
.LASF515:
	.string	"S_FIRE12"
.LASF516:
	.string	"S_FIRE13"
.LASF517:
	.string	"S_FIRE14"
.LASF518:
	.string	"S_FIRE15"
.LASF519:
	.string	"S_FIRE16"
.LASF520:
	.string	"S_FIRE17"
.LASF521:
	.string	"S_FIRE18"
.LASF522:
	.string	"S_FIRE19"
.LASF1334:
	.string	"MT_MISC84"
.LASF1267:
	.string	"MT_MISC20"
.LASF1081:
	.string	"S_MEGA2"
.LASF1082:
	.string	"S_MEGA3"
.LASF1083:
	.string	"S_MEGA4"
.LASF1271:
	.string	"MT_MISC24"
.LASF1272:
	.string	"MT_MISC25"
.LASF1274:
	.string	"MT_MISC26"
.LASF1275:
	.string	"MT_MISC27"
.LASF1276:
	.string	"MT_MISC28"
.LASF1279:
	.string	"MT_MISC29"
.LASF712:
	.string	"S_SARG_PAIN2"
.LASF1382:
	.string	"threshold"
.LASF40:
	.string	"wp_pistol"
.LASF191:
	.string	"SPR_COL1"
.LASF192:
	.string	"SPR_COL2"
.LASF193:
	.string	"SPR_COL3"
.LASF194:
	.string	"SPR_COL4"
.LASF203:
	.string	"SPR_COL5"
.LASF197:
	.string	"SPR_COL6"
.LASF1542:
	.string	"Z_ChangeTag2"
.LASF29:
	.string	"handle"
.LASF523:
	.string	"S_FIRE20"
.LASF524:
	.string	"S_FIRE21"
.LASF525:
	.string	"S_FIRE22"
.LASF526:
	.string	"S_FIRE23"
.LASF527:
	.string	"S_FIRE24"
.LASF177:
	.string	"SPR_COLU"
.LASF529:
	.string	"S_FIRE26"
.LASF530:
	.string	"S_FIRE27"
.LASF531:
	.string	"S_FIRE28"
.LASF532:
	.string	"S_FIRE29"
.LASF1280:
	.string	"MT_MISC30"
.LASF1195:
	.string	"action"
.LASF1282:
	.string	"MT_MISC32"
.LASF1283:
	.string	"MT_MISC33"
.LASF874:
	.string	"S_BSPI_PAIN"
.LASF1285:
	.string	"MT_MISC35"
.LASF346:
	.string	"S_BFGEXP"
.LASF54:
	.string	"am_misl"
.LASF1288:
	.string	"MT_MISC38"
.LASF1289:
	.string	"MT_MISC39"
.LASF1587:
	.string	"block"
.LASF1515:
	.string	"texture_t"
.LASF1428:
	.string	"floorpic"
.LASF876:
	.string	"S_BSPI_DIE1"
.LASF1477:
	.string	"NUMPSPRITES"
.LASF881:
	.string	"S_BSPI_DIE6"
.LASF1455:
	.string	"ST_POSITIVE"
.LASF1393:
	.string	"viewz"
.LASF1449:
	.string	"toptexture"
.LASF772:
	.string	"S_BOSS_RAISE1"
.LASF773:
	.string	"S_BOSS_RAISE2"
.LASF1214:
	.string	"MT_HEAD"
.LASF774:
	.string	"S_BOSS_RAISE3"
.LASF533:
	.string	"S_FIRE30"
.LASF678:
	.string	"S_TROO_PAIN"
.LASF967:
	.string	"S_SSWV_DIE1"
.LASF777:
	.string	"S_BOSS_RAISE6"
.LASF969:
	.string	"S_SSWV_DIE3"
.LASF970:
	.string	"S_SSWV_DIE4"
.LASF971:
	.string	"S_SSWV_DIE5"
.LASF145:
	.string	"SPR_BKEY"
.LASF1492:
	.string	"firstspritelump"
.LASF789:
	.string	"S_BOS2_ATK1"
.LASF790:
	.string	"S_BOS2_ATK2"
.LASF791:
	.string	"S_BOS2_ATK3"
.LASF179:
	.string	"SPR_GOR1"
.LASF186:
	.string	"SPR_GOR2"
.LASF187:
	.string	"SPR_GOR3"
.LASF188:
	.string	"SPR_GOR4"
.LASF189:
	.string	"SPR_GOR5"
.LASF1292:
	.string	"MT_MISC42"
.LASF1293:
	.string	"MT_MISC43"
.LASF546:
	.string	"S_SKEL_RUN1"
.LASF547:
	.string	"S_SKEL_RUN2"
.LASF548:
	.string	"S_SKEL_RUN3"
.LASF549:
	.string	"S_SKEL_RUN4"
.LASF550:
	.string	"S_SKEL_RUN5"
.LASF551:
	.string	"S_SKEL_RUN6"
.LASF552:
	.string	"S_SKEL_RUN7"
.LASF553:
	.string	"S_SKEL_RUN8"
.LASF554:
	.string	"S_SKEL_RUN9"
.LASF43:
	.string	"wp_missile"
.LASF1032:
	.string	"S_BEXP2"
.LASF1342:
	.string	"seestate"
.LASF1496:
	.string	"sprites"
.LASF727:
	.string	"S_HEAD_ATK1"
.LASF728:
	.string	"S_HEAD_ATK2"
.LASF729:
	.string	"S_HEAD_ATK3"
.LASF1443:
	.string	"slopetype"
.LASF981:
	.string	"S_SSWV_RAISE1"
.LASF982:
	.string	"S_SSWV_RAISE2"
.LASF983:
	.string	"S_SSWV_RAISE3"
.LASF984:
	.string	"S_SSWV_RAISE4"
.LASF985:
	.string	"S_SSWV_RAISE5"
.LASF79:
	.string	"angle"
.LASF1209:
	.string	"MT_FATSHOT"
.LASF165:
	.string	"SPR_CELL"
.LASF1553:
	.string	"R_CheckTextureNumForName"
.LASF166:
	.string	"SPR_CELP"
.LASF1147:
	.string	"S_HEARTCOL"
.LASF1576:
	.string	"directory"
.LASF1389:
	.string	"numlines"
.LASF1064:
	.string	"S_MEDI"
.LASF1071:
	.string	"S_PINV"
.LASF1258:
	.string	"MT_INS"
.LASF1301:
	.string	"MT_MISC51"
.LASF1302:
	.string	"MT_MISC52"
.LASF1256:
	.string	"MT_INV"
.LASF1304:
	.string	"MT_MISC54"
.LASF1161:
	.string	"S_BTORCHSHRT"
.LASF282:
	.string	"S_MISSILEUP"
.LASF1307:
	.string	"MT_MISC57"
.LASF1308:
	.string	"MT_MISC58"
.LASF1309:
	.string	"MT_MISC59"
.LASF459:
	.string	"S_SPOS_RAISE1"
.LASF1503:
	.string	"skytexture"
.LASF253:
	.string	"S_SGUNFLASH1"
.LASF254:
	.string	"S_SGUNFLASH2"
.LASF801:
	.string	"S_BOS2_RAISE1"
.LASF802:
	.string	"S_BOS2_RAISE2"
.LASF803:
	.string	"S_BOS2_RAISE3"
.LASF804:
	.string	"S_BOS2_RAISE4"
.LASF805:
	.string	"S_BOS2_RAISE5"
.LASF806:
	.string	"S_BOS2_RAISE6"
.LASF807:
	.string	"S_BOS2_RAISE7"
.LASF566:
	.string	"S_SKEL_PAIN"
.LASF1053:
	.string	"S_RKEY"
.LASF25:
	.string	"next"
.LASF1459:
	.string	"length"
.LASF235:
	.string	"S_PISTOLUP"
.LASF921:
	.string	"S_CYBER_DIE8"
.LASF1448:
	.string	"rowoffset"
.LASF1310:
	.string	"MT_MISC60"
.LASF1311:
	.string	"MT_MISC61"
.LASF1312:
	.string	"MT_MISC62"
.LASF1313:
	.string	"MT_MISC63"
.LASF1314:
	.string	"MT_MISC64"
.LASF1315:
	.string	"MT_MISC65"
.LASF1316:
	.string	"MT_MISC66"
.LASF1317:
	.string	"MT_MISC67"
.LASF350:
	.string	"S_EXPLODE1"
.LASF351:
	.string	"S_EXPLODE2"
.LASF352:
	.string	"S_EXPLODE3"
.LASF1540:
	.string	"printf"
.LASF541:
	.string	"S_TRACEEXP1"
.LASF542:
	.string	"S_TRACEEXP2"
.LASF543:
	.string	"S_TRACEEXP3"
.LASF929:
	.string	"S_PAIN_RUN5"
.LASF1031:
	.string	"S_BEXP"
.LASF930:
	.string	"S_PAIN_RUN6"
.LASF1418:
	.string	"extralight"
.LASF1482:
	.string	"playerstate_t"
.LASF1148:
	.string	"S_HEARTCOL2"
.LASF327:
	.string	"S_RBALLX1"
.LASF1356:
	.string	"height"
.LASF1241:
	.string	"MT_TELEPORTMAN"
.LASF1320:
	.string	"MT_MISC70"
.LASF110:
	.string	"SPR_IFOG"
.LASF1322:
	.string	"MT_MISC72"
.LASF1323:
	.string	"MT_MISC73"
.LASF1324:
	.string	"MT_MISC74"
.LASF1325:
	.string	"MT_MISC75"
.LASF1326:
	.string	"MT_MISC76"
.LASF1154:
	.string	"S_GREENTORCH2"
.LASF1155:
	.string	"S_GREENTORCH3"
.LASF1156:
	.string	"S_GREENTORCH4"
.LASF995:
	.string	"S_COMMKEEN9"
.LASF644:
	.string	"S_CPOS_PAIN2"
.LASF867:
	.string	"S_BSPI_RUN10"
.LASF868:
	.string	"S_BSPI_RUN11"
.LASF869:
	.string	"S_BSPI_RUN12"
.LASF951:
	.string	"S_SSWV_RUN1"
.LASF952:
	.string	"S_SSWV_RUN2"
.LASF953:
	.string	"S_SSWV_RUN3"
.LASF954:
	.string	"S_SSWV_RUN4"
.LASF955:
	.string	"S_SSWV_RUN5"
.LASF956:
	.string	"S_SSWV_RUN6"
.LASF957:
	.string	"S_SSWV_RUN7"
.LASF958:
	.string	"S_SSWV_RUN8"
.LASF1136:
	.string	"S_SKULLCOL"
.LASF1208:
	.string	"MT_FATSO"
.LASF680:
	.string	"S_TROO_DIE1"
.LASF681:
	.string	"S_TROO_DIE2"
.LASF682:
	.string	"S_TROO_DIE3"
.LASF683:
	.string	"S_TROO_DIE4"
.LASF684:
	.string	"S_TROO_DIE5"
.LASF1061:
	.string	"S_YSKULL"
.LASF1062:
	.string	"S_YSKULL2"
.LASF163:
	.string	"SPR_ROCK"
.LASF1233:
	.string	"MT_ROCKET"
.LASF1331:
	.string	"MT_MISC81"
.LASF1332:
	.string	"MT_MISC82"
.LASF1333:
	.string	"MT_MISC83"
.LASF639:
	.string	"S_CPOS_ATK1"
.LASF640:
	.string	"S_CPOS_ATK2"
.LASF641:
	.string	"S_CPOS_ATK3"
.LASF642:
	.string	"S_CPOS_ATK4"
.LASF1200:
	.string	"MT_PLAYER"
.LASF175:
	.string	"SPR_SHOT"
.LASF368:
	.string	"S_IFOG2"
.LASF369:
	.string	"S_IFOG3"
.LASF370:
	.string	"S_IFOG4"
.LASF371:
	.string	"S_IFOG5"
.LASF104:
	.string	"SPR_PLSE"
.LASF96:
	.string	"SPR_PLSF"
.LASF95:
	.string	"SPR_PLSG"
.LASF764:
	.string	"S_BOSS_PAIN2"
.LASF464:
	.string	"S_VILE_STND"
.LASF992:
	.string	"S_COMMKEEN6"
.LASF993:
	.string	"S_COMMKEEN7"
.LASF1497:
	.string	"numsectors"
.LASF994:
	.string	"S_COMMKEEN8"
.LASF103:
	.string	"SPR_PLSS"
.LASF843:
	.string	"S_SPID_PAIN2"
.LASF1357:
	.string	"mass"
.LASF216:
	.string	"SPR_POB1"
.LASF217:
	.string	"SPR_POB2"
.LASF1065:
	.string	"S_SOUL"
.LASF1075:
	.string	"S_PSTR"
.LASF907:
	.string	"S_CYBER_ATK1"
.LASF908:
	.string	"S_CYBER_ATK2"
.LASF909:
	.string	"S_CYBER_ATK3"
.LASF910:
	.string	"S_CYBER_ATK4"
.LASF911:
	.string	"S_CYBER_ATK5"
.LASF912:
	.string	"S_CYBER_ATK6"
.LASF1546:
	.string	"memcpy"
.LASF1102:
	.string	"S_BFUG"
.LASF142:
	.string	"SPR_FCAN"
.LASF585:
	.string	"S_FATT_STND"
.LASF1022:
	.string	"S_BRAINEXPLODE1"
.LASF1023:
	.string	"S_BRAINEXPLODE2"
.LASF1024:
	.string	"S_BRAINEXPLODE3"
.LASF306:
	.string	"S_BFGUP"
.LASF1592:
	.string	"source"
.LASF147:
	.string	"SPR_YKEY"
.LASF693:
	.string	"S_TROO_RAISE1"
.LASF694:
	.string	"S_TROO_RAISE2"
.LASF695:
	.string	"S_TROO_RAISE3"
.LASF696:
	.string	"S_TROO_RAISE4"
.LASF697:
	.string	"S_TROO_RAISE5"
.LASF1106:
	.string	"S_PLAS"
.LASF988:
	.string	"S_COMMKEEN2"
.LASF989:
	.string	"S_COMMKEEN3"
.LASF990:
	.string	"S_COMMKEEN4"
.LASF991:
	.string	"S_COMMKEEN5"
.LASF372:
	.string	"S_PLAY"
.LASF938:
	.string	"S_PAIN_DIE2"
.LASF939:
	.string	"S_PAIN_DIE3"
.LASF940:
	.string	"S_PAIN_DIE4"
.LASF941:
	.string	"S_PAIN_DIE5"
.LASF942:
	.string	"S_PAIN_DIE6"
.LASF1211:
	.string	"MT_TROOP"
.LASF493:
	.string	"S_VILE_PAIN2"
.LASF621:
	.string	"S_FATT_RAISE1"
.LASF44:
	.string	"wp_plasma"
.LASF623:
	.string	"S_FATT_RAISE3"
.LASF624:
	.string	"S_FATT_RAISE4"
.LASF625:
	.string	"S_FATT_RAISE5"
.LASF626:
	.string	"S_FATT_RAISE6"
.LASF627:
	.string	"S_FATT_RAISE7"
.LASF628:
	.string	"S_FATT_RAISE8"
.LASF1501:
	.string	"thinkercap"
.LASF337:
	.string	"S_ROCKET"
.LASF1232:
	.string	"MT_HEADSHOT"
.LASF1438:
	.string	"linecount"
.LASF1441:
	.string	"sidenum"
.LASF890:
	.string	"S_ARACH_PLAZ"
.LASF1129:
	.string	"S_STALAGTITE"
.LASF731:
	.string	"S_HEAD_PAIN2"
.LASF732:
	.string	"S_HEAD_PAIN3"
.LASF14:
	.string	"byte"
.LASF1524:
	.string	"texturecompositesize"
.LASF37:
	.string	"it_redskull"
.LASF1239:
	.string	"MT_TFOG"
.LASF440:
	.string	"S_SPOS_ATK1"
.LASF441:
	.string	"S_SPOS_ATK2"
.LASF442:
	.string	"S_SPOS_ATK3"
.LASF377:
	.string	"S_PLAY_ATK1"
.LASF378:
	.string	"S_PLAY_ATK2"
.LASF130:
	.string	"SPR_APLS"
.LASF1532:
	.string	"W_ReadLump"
.LASF1410:
	.string	"refire"
.LASF1158:
	.string	"S_REDTORCH2"
.LASF1159:
	.string	"S_REDTORCH3"
.LASF1160:
	.string	"S_REDTORCH4"
.LASF667:
	.string	"S_TROO_RUN1"
.LASF668:
	.string	"S_TROO_RUN2"
.LASF669:
	.string	"S_TROO_RUN3"
.LASF670:
	.string	"S_TROO_RUN4"
.LASF671:
	.string	"S_TROO_RUN5"
.LASF672:
	.string	"S_TROO_RUN6"
.LASF673:
	.string	"S_TROO_RUN7"
.LASF674:
	.string	"S_TROO_RUN8"
.LASF121:
	.string	"SPR_CPOS"
.LASF582:
	.string	"S_FATSHOTX1"
.LASF583:
	.string	"S_FATSHOTX2"
.LASF584:
	.string	"S_FATSHOTX3"
.LASF662:
	.string	"S_CPOS_RAISE5"
.LASF663:
	.string	"S_CPOS_RAISE6"
.LASF664:
	.string	"S_CPOS_RAISE7"
.LASF1572:
	.string	"maxoff"
.LASF39:
	.string	"wp_fist"
.LASF1350:
	.string	"missilestate"
.LASF151:
	.string	"SPR_STIM"
.LASF1473:
	.string	"spriteframes"
.LASF698:
	.string	"S_SARG_STND"
.LASF923:
	.string	"S_CYBER_DIE10"
.LASF101:
	.string	"SPR_BAL1"
.LASF102:
	.string	"SPR_BAL2"
.LASF1486:
	.string	"spriteoffset"
.LASF124:
	.string	"SPR_BAL7"
.LASF1376:
	.string	"info"
.LASF1117:
	.string	"S_HEADSONSTICK"
.LASF1371:
	.string	"ceilingz"
.LASF574:
	.string	"S_SKEL_RAISE1"
.LASF89:
	.string	"SPR_SHT2"
.LASF228:
	.string	"S_PUNCH1"
.LASF229:
	.string	"S_PUNCH2"
.LASF230:
	.string	"S_PUNCH3"
.LASF231:
	.string	"S_PUNCH4"
.LASF232:
	.string	"S_PUNCH5"
.LASF591:
	.string	"S_FATT_RUN5"
.LASF227:
	.string	"S_PUNCHUP"
.LASF844:
	.string	"S_SPID_DIE1"
.LASF595:
	.string	"S_FATT_RUN9"
.LASF846:
	.string	"S_SPID_DIE3"
.LASF847:
	.string	"S_SPID_DIE4"
.LASF88:
	.string	"SPR_SHTF"
.LASF84:
	.string	"SPR_SHTG"
.LASF366:
	.string	"S_IFOG01"
.LASF367:
	.string	"S_IFOG02"
.LASF852:
	.string	"S_SPID_DIE9"
.LASF1094:
	.string	"S_AMMO"
.LASF55:
	.string	"NUMAMMO"
.LASF925:
	.string	"S_PAIN_RUN1"
.LASF926:
	.string	"S_PAIN_RUN2"
.LASF927:
	.string	"S_PAIN_RUN3"
.LASF928:
	.string	"S_PAIN_RUN4"
.LASF210:
	.string	"SPR_HDB1"
.LASF211:
	.string	"SPR_HDB2"
.LASF212:
	.string	"SPR_HDB3"
.LASF213:
	.string	"SPR_HDB4"
.LASF214:
	.string	"SPR_HDB5"
.LASF215:
	.string	"SPR_HDB6"
.LASF1201:
	.string	"MT_POSSESSED"
.LASF260:
	.string	"S_DSGUN3"
.LASF261:
	.string	"S_DSGUN4"
.LASF1447:
	.string	"textureoffset"
.LASF80:
	.string	"type"
.LASF280:
	.string	"S_MISSILE"
.LASF1108:
	.string	"S_SHOT2"
.LASF1175:
	.string	"S_HANGTLOOKDN"
.LASF1379:
	.string	"movedir"
.LASF652:
	.string	"S_CPOS_XDIE1"
.LASF1562:
	.string	"mpatch"
.LASF73:
	.string	"actionf_t"
.LASF68:
	.string	"actionf_v"
.LASF171:
	.string	"SPR_MGUN"
.LASF1213:
	.string	"MT_SHADOWS"
.LASF555:
	.string	"S_SKEL_RUN10"
.LASF556:
	.string	"S_SKEL_RUN11"
.LASF557:
	.string	"S_SKEL_RUN12"
.LASF223:
	.string	"S_NULL"
.LASF765:
	.string	"S_BOSS_DIE1"
.LASF766:
	.string	"S_BOSS_DIE2"
.LASF767:
	.string	"S_BOSS_DIE3"
.LASF768:
	.string	"S_BOSS_DIE4"
.LASF769:
	.string	"S_BOSS_DIE5"
.LASF770:
	.string	"S_BOSS_DIE6"
.LASF771:
	.string	"S_BOSS_DIE7"
.LASF935:
	.string	"S_PAIN_PAIN"
.LASF304:
	.string	"S_BFG"
.LASF1348:
	.string	"painsound"
.LASF1431:
	.string	"special"
.LASF950:
	.string	"S_SSWV_STND2"
.LASF172:
	.string	"SPR_CSAW"
.LASF1085:
	.string	"S_PMAP"
.LASF1511:
	.string	"patchcount"
.LASF1091:
	.string	"S_PVIS"
.LASF305:
	.string	"S_BFGDOWN"
.LASF1558:
	.string	"R_InitSpriteLumps"
.LASF1225:
	.string	"MT_BOSSBRAIN"
.LASF118:
	.string	"SPR_SKEL"
.LASF300:
	.string	"S_PLASMA1"
.LASF301:
	.string	"S_PLASMA2"
.LASF1165:
	.string	"S_GTORCHSHRT"
.LASF1390:
	.string	"firstline"
.LASF1099:
	.string	"S_SHEL"
.LASF856:
	.string	"S_BSPI_STND2"
.LASF4:
	.string	"unsigned char"
.LASF116:
	.string	"SPR_FATB"
.LASF221:
	.string	"NUMSPRITES"
.LASF339:
	.string	"S_BFGSHOT2"
.LASF120:
	.string	"SPR_FATT"
.LASF1066:
	.string	"S_SOUL2"
.LASF1067:
	.string	"S_SOUL3"
.LASF1068:
	.string	"S_SOUL4"
.LASF1069:
	.string	"S_SOUL5"
.LASF1070:
	.string	"S_SOUL6"
.LASF826:
	.string	"S_SPID_RUN1"
.LASF827:
	.string	"S_SPID_RUN2"
.LASF828:
	.string	"S_SPID_RUN3"
.LASF829:
	.string	"S_SPID_RUN4"
.LASF830:
	.string	"S_SPID_RUN5"
.LASF831:
	.string	"S_SPID_RUN6"
.LASF832:
	.string	"S_SPID_RUN7"
.LASF833:
	.string	"S_SPID_RUN8"
.LASF64:
	.string	"float"
.LASF1033:
	.string	"S_BEXP3"
.LASF1034:
	.string	"S_BEXP4"
.LASF1122:
	.string	"S_DEADSTICK"
.LASF1419:
	.string	"fixedcolormap"
.LASF1404:
	.string	"weaponowned"
.LASF1242:
	.string	"MT_EXTRABFG"
.LASF412:
	.string	"S_POSS_DIE1"
.LASF413:
	.string	"S_POSS_DIE2"
.LASF414:
	.string	"S_POSS_DIE3"
.LASF415:
	.string	"S_POSS_DIE4"
.LASF416:
	.string	"S_POSS_DIE5"
.LASF242:
	.string	"S_SGUNDOWN"
.LASF91:
	.string	"SPR_CHGF"
.LASF90:
	.string	"SPR_CHGG"
.LASF635:
	.string	"S_CPOS_RUN5"
.LASF894:
	.string	"S_ARACH_PLEX3"
.LASF636:
	.string	"S_CPOS_RUN6"
.LASF896:
	.string	"S_ARACH_PLEX5"
.LASF637:
	.string	"S_CPOS_RUN7"
.LASF1381:
	.string	"target"
.LASF201:
	.string	"SPR_CEYE"
.LASF1453:
	.string	"ST_HORIZONTAL"
.LASF943:
	.string	"S_PAIN_RAISE1"
.LASF944:
	.string	"S_PAIN_RAISE2"
.LASF945:
	.string	"S_PAIN_RAISE3"
.LASF946:
	.string	"S_PAIN_RAISE4"
.LASF947:
	.string	"S_PAIN_RAISE5"
.LASF580:
	.string	"S_FATSHOT1"
.LASF581:
	.string	"S_FATSHOT2"
.LASF1454:
	.string	"ST_VERTICAL"
.LASF158:
	.string	"SPR_SUIT"
.LASF808:
	.string	"S_SKULL_STND"
.LASF842:
	.string	"S_SPID_PAIN"
.LASF1337:
	.string	"NUMMOBJTYPES"
.LASF140:
	.string	"SPR_BAR1"
.LASF1452:
	.string	"side_t"
.LASF255:
	.string	"S_DSGUN"
.LASF1134:
	.string	"S_CANDLESTIK"
.LASF61:
	.string	"pw_allmap"
.LASF1190:
	.string	"NUMSTATES"
.LASF834:
	.string	"S_SPID_RUN9"
.LASF320:
	.string	"S_TBALL1"
.LASF321:
	.string	"S_TBALL2"
.LASF1483:
	.string	"lumpinfo"
.LASF535:
	.string	"S_SMOKE2"
.LASF536:
	.string	"S_SMOKE3"
.LASF537:
	.string	"S_SMOKE4"
.LASF538:
	.string	"S_SMOKE5"
.LASF757:
	.string	"S_BOSS_RUN6"
.LASF758:
	.string	"S_BOSS_RUN7"
.LASF759:
	.string	"S_BOSS_RUN8"
.LASF123:
	.string	"SPR_HEAD"
.LASF1368:
	.string	"bprev"
.LASF184:
	.string	"SPR_POL1"
.LASF180:
	.string	"SPR_POL2"
.LASF183:
	.string	"SPR_POL3"
.LASF182:
	.string	"SPR_POL4"
.LASF181:
	.string	"SPR_POL5"
.LASF185:
	.string	"SPR_POL6"
.LASF1029:
	.string	"S_BAR1"
.LASF1243:
	.string	"MT_MISC0"
.LASF1115:
	.string	"S_DEADTORSO"
.LASF257:
	.string	"S_DSGUNUP"
.LASF1505:
	.string	"originy"
.LASF1596:
	.string	"R_DrawColumnInCache"
.LASF1340:
	.string	"spawnstate"
.LASF666:
	.string	"S_TROO_STND2"
.LASF1186:
	.string	"S_TECH2LAMP"
.LASF1229:
	.string	"MT_SPAWNFIRE"
.LASF1204:
	.string	"MT_FIRE"
.LASF1468:
	.string	"rotate"
.LASF1196:
	.string	"nextstate"
.LASF1518:
	.string	"firstpatch"
.LASF763:
	.string	"S_BOSS_PAIN"
.LASF134:
	.string	"SPR_SSWV"
.LASF325:
	.string	"S_RBALL1"
.LASF326:
	.string	"S_RBALL2"
.LASF1550:
	.string	"spritepresent"
.LASF1130:
	.string	"S_TALLGRNCOL"
.LASF1384:
	.string	"lastlook"
.LASF1500:
	.string	"sides"
.LASF1450:
	.string	"bottomtexture"
.LASF1119:
	.string	"S_HEADONASTICK"
.LASF1538:
	.string	"strncpy"
.LASF399:
	.string	"S_POSS_RUN1"
.LASF341:
	.string	"S_BFGLAND2"
.LASF342:
	.string	"S_BFGLAND3"
.LASF343:
	.string	"S_BFGLAND4"
.LASF344:
	.string	"S_BFGLAND5"
.LASF345:
	.string	"S_BFGLAND6"
.LASF405:
	.string	"S_POSS_RUN7"
.LASF406:
	.string	"S_POSS_RUN8"
.LASF1461:
	.string	"column_t"
.LASF388:
	.string	"S_PLAY_XDIE1"
.LASF389:
	.string	"S_PLAY_XDIE2"
.LASF390:
	.string	"S_PLAY_XDIE3"
.LASF391:
	.string	"S_PLAY_XDIE4"
.LASF392:
	.string	"S_PLAY_XDIE5"
.LASF393:
	.string	"S_PLAY_XDIE6"
.LASF394:
	.string	"S_PLAY_XDIE7"
.LASF395:
	.string	"S_PLAY_XDIE8"
.LASF396:
	.string	"S_PLAY_XDIE9"
.LASF794:
	.string	"S_BOS2_DIE1"
.LASF795:
	.string	"S_BOS2_DIE2"
.LASF796:
	.string	"S_BOS2_DIE3"
.LASF797:
	.string	"S_BOS2_DIE4"
.LASF798:
	.string	"S_BOS2_DIE5"
.LASF799:
	.string	"S_BOS2_DIE6"
.LASF800:
	.string	"S_BOS2_DIE7"
.LASF1360:
	.string	"flags"
.LASF720:
	.string	"S_SARG_RAISE2"
.LASF721:
	.string	"S_SARG_RAISE3"
.LASF364:
	.string	"S_TFOG10"
.LASF722:
	.string	"S_SARG_RAISE4"
.LASF417:
	.string	"S_POSS_XDIE1"
.LASF418:
	.string	"S_POSS_XDIE2"
.LASF419:
	.string	"S_POSS_XDIE3"
.LASF420:
	.string	"S_POSS_XDIE4"
.LASF421:
	.string	"S_POSS_XDIE5"
.LASF422:
	.string	"S_POSS_XDIE6"
.LASF423:
	.string	"S_POSS_XDIE7"
.LASF51:
	.string	"am_clip"
.LASF425:
	.string	"S_POSS_XDIE9"
.LASF1118:
	.string	"S_GIBS"
.LASF733:
	.string	"S_HEAD_DIE1"
.LASF734:
	.string	"S_HEAD_DIE2"
.LASF735:
	.string	"S_HEAD_DIE3"
.LASF736:
	.string	"S_HEAD_DIE4"
.LASF737:
	.string	"S_HEAD_DIE5"
.LASF23:
	.string	"size"
.LASF586:
	.string	"S_FATT_STND2"
.LASF1109:
	.string	"S_COLU"
.LASF236:
	.string	"S_PISTOL1"
.LASF237:
	.string	"S_PISTOL2"
.LASF238:
	.string	"S_PISTOL3"
.LASF239:
	.string	"S_PISTOL4"
.LASF575:
	.string	"S_SKEL_RAISE2"
.LASF576:
	.string	"S_SKEL_RAISE3"
.LASF577:
	.string	"S_SKEL_RAISE4"
.LASF578:
	.string	"S_SKEL_RAISE5"
.LASF579:
	.string	"S_SKEL_RAISE6"
.LASF1138:
	.string	"S_BIGTREE"
.LASF1456:
	.string	"ST_NEGATIVE"
.LASF1048:
	.string	"S_BON2C"
.LASF1049:
	.string	"S_BON2D"
.LASF354:
	.string	"S_TFOG01"
.LASF355:
	.string	"S_TFOG02"
.LASF173:
	.string	"SPR_LAUN"
.LASF410:
	.string	"S_POSS_PAIN"
.LASF745:
	.string	"S_BRBALL1"
.LASF746:
	.string	"S_BRBALL2"
.LASF1207:
	.string	"MT_SMOKE"
.LASF1221:
	.string	"MT_CYBORG"
.LASF1549:
	.string	"texturepresent"
.LASF1358:
	.string	"damage"
.LASF450:
	.string	"S_SPOS_XDIE1"
.LASF451:
	.string	"S_SPOS_XDIE2"
.LASF452:
	.string	"S_SPOS_XDIE3"
.LASF453:
	.string	"S_SPOS_XDIE4"
.LASF454:
	.string	"S_SPOS_XDIE5"
.LASF455:
	.string	"S_SPOS_XDIE6"
.LASF456:
	.string	"S_SPOS_XDIE7"
.LASF457:
	.string	"S_SPOS_XDIE8"
.LASF458:
	.string	"S_SPOS_XDIE9"
.LASF22:
	.string	"size_t"
.LASF1363:
	.string	"mobj_s"
.LASF1423:
	.string	"mobj_t"
.LASF1051:
	.string	"S_BKEY"
.LASF59:
	.string	"pw_invisibility"
.LASF1536:
	.string	"Z_Free"
.LASF1509:
	.string	"masked"
.LASF138:
	.string	"SPR_ARM1"
.LASF139:
	.string	"SPR_ARM2"
.LASF1203:
	.string	"MT_VILE"
.LASF35:
	.string	"it_blueskull"
.LASF1435:
	.string	"soundorg"
.LASF1491:
	.string	"texturetranslation"
.LASF298:
	.string	"S_PLASMADOWN"
.LASF610:
	.string	"S_FATT_PAIN2"
.LASF1008:
	.string	"S_BRAINEYESEE"
.LASF1457:
	.string	"slopetype_t"
.LASF545:
	.string	"S_SKEL_STND2"
.LASF898:
	.string	"S_CYBER_STND2"
.LASF1199:
	.string	"state_t"
.LASF742:
	.string	"S_HEAD_RAISE4"
.LASF968:
	.string	"S_SSWV_DIE2"
.LASF1341:
	.string	"spawnhealth"
.LASF424:
	.string	"S_POSS_XDIE8"
.LASF1098:
	.string	"S_CELP"
.LASF1140:
	.string	"S_EVILEYE"
.LASF1166:
	.string	"S_GTORCHSHRT2"
.LASF1167:
	.string	"S_GTORCHSHRT3"
.LASF1168:
	.string	"S_GTORCHSHRT4"
.LASF1394:
	.string	"viewheight"
.LASF1367:
	.string	"bnext"
.LASF1474:
	.string	"spritedef_t"
.LASF1574:
	.string	"numtextures1"
.LASF1575:
	.string	"numtextures2"
.LASF599:
	.string	"S_FATT_ATK1"
.LASF132:
	.string	"SPR_CYBR"
.LASF600:
	.string	"S_FATT_ATK2"
.LASF503:
	.string	"S_VILE_DIE10"
.LASF93:
	.string	"SPR_MISF"
.LASF92:
	.string	"SPR_MISG"
.LASF105:
	.string	"SPR_MISL"
.LASF1566:
	.string	"names"
.LASF1057:
	.string	"S_BSKULL"
.LASF136:
	.string	"SPR_BBRN"
.LASF478:
	.string	"S_VILE_ATK1"
.LASF479:
	.string	"S_VILE_ATK2"
.LASF480:
	.string	"S_VILE_ATK3"
.LASF481:
	.string	"S_VILE_ATK4"
.LASF482:
	.string	"S_VILE_ATK5"
.LASF483:
	.string	"S_VILE_ATK6"
.LASF484:
	.string	"S_VILE_ATK7"
.LASF225:
	.string	"S_PUNCH"
.LASF486:
	.string	"S_VILE_ATK9"
.LASF207:
	.string	"SPR_SMBT"
.LASF781:
	.string	"S_BOS2_RUN1"
.LASF782:
	.string	"S_BOS2_RUN2"
.LASF783:
	.string	"S_BOS2_RUN3"
.LASF784:
	.string	"S_BOS2_RUN4"
.LASF785:
	.string	"S_BOS2_RUN5"
.LASF786:
	.string	"S_BOS2_RUN6"
.LASF787:
	.string	"S_BOS2_RUN7"
.LASF788:
	.string	"S_BOS2_RUN8"
.LASF1430:
	.string	"lightlevel"
.LASF198:
	.string	"SPR_TRE1"
.LASF199:
	.string	"SPR_TRE2"
.LASF1556:
	.string	"R_PrecacheLevel"
.LASF855:
	.string	"S_BSPI_STND"
.LASF1349:
	.string	"meleestate"
.LASF1405:
	.string	"ammo"
.LASF645:
	.string	"S_CPOS_DIE1"
.LASF206:
	.string	"SPR_TRED"
.LASF99:
	.string	"SPR_BLUD"
.LASF601:
	.string	"S_FATT_ATK3"
.LASF602:
	.string	"S_FATT_ATK4"
.LASF603:
	.string	"S_FATT_ATK5"
.LASF604:
	.string	"S_FATT_ATK6"
.LASF605:
	.string	"S_FATT_ATK7"
.LASF606:
	.string	"S_FATT_ATK8"
.LASF607:
	.string	"S_FATT_ATK9"
.LASF109:
	.string	"SPR_TFOG"
.LASF313:
	.string	"S_BLOOD1"
.LASF314:
	.string	"S_BLOOD2"
.LASF315:
	.string	"S_BLOOD3"
.LASF1485:
	.string	"spritewidth"
.LASF1197:
	.string	"misc1"
.LASF1198:
	.string	"misc2"
.LASF17:
	.string	"angleturn"
.LASF1533:
	.string	"strncasecmp"
.LASF1105:
	.string	"S_LAUN"
.LASF365:
	.string	"S_IFOG"
.LASF112:
	.string	"SPR_POSS"
.LASF117:
	.string	"SPR_FBXP"
.LASF1504:
	.string	"originx"
.LASF914:
	.string	"S_CYBER_DIE1"
.LASF915:
	.string	"S_CYBER_DIE2"
.LASF916:
	.string	"S_CYBER_DIE3"
.LASF917:
	.string	"S_CYBER_DIE4"
.LASF918:
	.string	"S_CYBER_DIE5"
.LASF919:
	.string	"S_CYBER_DIE6"
.LASF920:
	.string	"S_CYBER_DIE7"
.LASF792:
	.string	"S_BOS2_PAIN"
.LASF922:
	.string	"S_CYBER_DIE9"
.LASF1385:
	.string	"spawnpoint"
.LASF1192:
	.string	"sprite"
.LASF1535:
	.string	"W_GetNumForName"
.LASF1270:
	.string	"MT_MISC23"
.LASF1467:
	.string	"patch_t"
.LASF1135:
	.string	"S_CANDELABRA"
.LASF475:
	.string	"S_VILE_RUN10"
.LASF476:
	.string	"S_VILE_RUN11"
.LASF477:
	.string	"S_VILE_RUN12"
.LASF1095:
	.string	"S_ROCK"
.LASF244:
	.string	"S_SGUN1"
.LASF245:
	.string	"S_SGUN2"
.LASF246:
	.string	"S_SGUN3"
.LASF247:
	.string	"S_SGUN4"
.LASF248:
	.string	"S_SGUN5"
.LASF249:
	.string	"S_SGUN6"
.LASF250:
	.string	"S_SGUN7"
.LASF251:
	.string	"S_SGUN8"
.LASF252:
	.string	"S_SGUN9"
.LASF1339:
	.string	"doomednum"
.LASF241:
	.string	"S_SGUN"
.LASF1131:
	.string	"S_SHRTGRNCOL"
.LASF1544:
	.string	"W_CacheLumpNum"
.LASF1489:
	.string	"firstflat"
.LASF816:
	.string	"S_SKULL_PAIN"
.LASF1228:
	.string	"MT_SPAWNSHOT"
.LASF540:
	.string	"S_TRACER2"
.LASF1139:
	.string	"S_TECHPILLAR"
.LASF544:
	.string	"S_SKEL_STND"
.LASF1528:
	.string	"flatmemory"
.LASF699:
	.string	"S_SARG_STND2"
.LASF445:
	.string	"S_SPOS_DIE1"
.LASF446:
	.string	"S_SPOS_DIE2"
.LASF447:
	.string	"S_SPOS_DIE3"
.LASF448:
	.string	"S_SPOS_DIE4"
.LASF449:
	.string	"S_SPOS_DIE5"
.LASF1481:
	.string	"PST_REBORN"
.LASF1590:
	.string	"cacheheight"
.LASF1174:
	.string	"S_HANGBNOBRAIN"
.LASF708:
	.string	"S_SARG_ATK1"
.LASF709:
	.string	"S_SARG_ATK2"
.LASF710:
	.string	"S_SARG_ATK3"
.LASF299:
	.string	"S_PLASMAUP"
.LASF1194:
	.string	"tics"
.LASF1055:
	.string	"S_YKEY"
.LASF1354:
	.string	"speed"
.LASF268:
	.string	"S_DSNR1"
.LASF937:
	.string	"S_PAIN_DIE1"
.LASF467:
	.string	"S_VILE_RUN2"
.LASF1581:
	.string	"R_GenerateLookup"
.LASF1185:
	.string	"S_TECHLAMP4"
.LASF631:
	.string	"S_CPOS_RUN1"
.LASF632:
	.string	"S_CPOS_RUN2"
.LASF633:
	.string	"S_CPOS_RUN3"
.LASF634:
	.string	"S_CPOS_RUN4"
.LASF69:
	.string	"actionf_p1"
.LASF70:
	.string	"actionf_p2"
.LASF169:
	.string	"SPR_BPAK"
.LASF638:
	.string	"S_CPOS_RUN8"
.LASF1035:
	.string	"S_BEXP5"
.LASF82:
	.string	"mapthing_t"
.LASF400:
	.string	"S_POSS_RUN2"
.LASF401:
	.string	"S_POSS_RUN3"
.LASF402:
	.string	"S_POSS_RUN4"
.LASF719:
	.string	"S_SARG_RAISE1"
.LASF403:
	.string	"S_POSS_RUN5"
.LASF71:
	.string	"acp1"
.LASF72:
	.string	"acp2"
.LASF723:
	.string	"S_SARG_RAISE5"
.LASF724:
	.string	"S_SARG_RAISE6"
.LASF1303:
	.string	"MT_MISC53"
.LASF208:
	.string	"SPR_SMGT"
.LASF999:
	.string	"S_KEENPAIN"
.LASF347:
	.string	"S_BFGEXP2"
.LASF348:
	.string	"S_BFGEXP3"
.LASF349:
	.string	"S_BFGEXP4"
.LASF278:
	.string	"S_CHAINFLASH1"
.LASF279:
	.string	"S_CHAINFLASH2"
.LASF234:
	.string	"S_PISTOLDOWN"
.LASF75:
	.string	"memblock_s"
.LASF27:
	.string	"memblock_t"
.LASF899:
	.string	"S_CYBER_RUN1"
.LASF900:
	.string	"S_CYBER_RUN2"
.LASF901:
	.string	"S_CYBER_RUN3"
.LASF902:
	.string	"S_CYBER_RUN4"
.LASF903:
	.string	"S_CYBER_RUN5"
.LASF904:
	.string	"S_CYBER_RUN6"
.LASF905:
	.string	"S_CYBER_RUN7"
.LASF906:
	.string	"S_CYBER_RUN8"
.LASF1343:
	.string	"seesound"
.LASF1469:
	.string	"lump"
.LASF1086:
	.string	"S_PMAP2"
.LASF1087:
	.string	"S_PMAP3"
.LASF1088:
	.string	"S_PMAP4"
.LASF1089:
	.string	"S_PMAP5"
.LASF1090:
	.string	"S_PMAP6"
.LASF1526:
	.string	"texturecolumnofs"
.LASF1416:
	.string	"bonuscount"
.LASF817:
	.string	"S_SKULL_PAIN2"
.LASF1502:
	.string	"demoplayback"
.LASF1560:
	.string	"R_InitTextures"
.LASF1347:
	.string	"painchance"
.LASF643:
	.string	"S_CPOS_PAIN"
.LASF1427:
	.string	"ceilingheight"
.LASF122:
	.string	"SPR_SARG"
.LASF948:
	.string	"S_PAIN_RAISE6"
.LASF1437:
	.string	"specialdata"
.LASF1286:
	.string	"MT_MISC36"
.LASF752:
	.string	"S_BOSS_RUN1"
.LASF753:
	.string	"S_BOSS_RUN2"
.LASF754:
	.string	"S_BOSS_RUN3"
.LASF755:
	.string	"S_BOSS_RUN4"
.LASF756:
	.string	"S_BOSS_RUN5"
.LASF1580:
	.string	"R_GetColumn"
.LASF274:
	.string	"S_CHAINUP"
.LASF1594:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1411:
	.string	"killcount"
.LASF893:
	.string	"S_ARACH_PLEX2"
.LASF1137:
	.string	"S_TORCHTREE"
.LASF949:
	.string	"S_SSWV_STND"
.LASF895:
	.string	"S_ARACH_PLEX4"
.LASF996:
	.string	"S_COMMKEEN10"
.LASF997:
	.string	"S_COMMKEEN11"
.LASF998:
	.string	"S_COMMKEEN12"
.LASF1595:
	.string	"R_InitData"
.LASF913:
	.string	"S_CYBER_PAIN"
.LASF432:
	.string	"S_SPOS_RUN1"
.LASF190:
	.string	"SPR_SMIT"
.LASF13:
	.string	"boolean"
.LASF435:
	.string	"S_SPOS_RUN4"
.LASF436:
	.string	"S_SPOS_RUN5"
.LASF127:
	.string	"SPR_SKUL"
.LASF438:
	.string	"S_SPOS_RUN7"
.LASF439:
	.string	"S_SPOS_RUN8"
.LASF1096:
	.string	"S_BROK"
.LASF28:
	.string	"name"
.LASF226:
	.string	"S_PUNCHDOWN"
.LASF892:
	.string	"S_ARACH_PLEX"
.LASF1153:
	.string	"S_GREENTORCH"
.LASF1510:
	.string	"columndirectory"
.LASF47:
	.string	"wp_supershotgun"
.LASF292:
	.string	"S_SAWDOWN"
.LASF1191:
	.string	"statenum_t"
.LASF1231:
	.string	"MT_TROOPSHOT"
.LASF1458:
	.string	"topdelta"
.LASF1216:
	.string	"MT_BRUISERSHOT"
.LASF21:
	.string	"ticcmd_t"
.LASF1336:
	.string	"MT_MISC86"
.LASF1475:
	.string	"ps_weapon"
.LASF1584:
	.string	"collump"
.LASF1512:
	.string	"patches"
.LASF380:
	.string	"S_PLAY_PAIN2"
.LASF1462:
	.string	"lighttable_t"
.LASF775:
	.string	"S_BOSS_RAISE4"
.LASF776:
	.string	"S_BOSS_RAISE5"
.LASF1193:
	.string	"frame"
.LASF1514:
	.string	"texpatch_t"
.LASF119:
	.string	"SPR_MANF"
.LASF630:
	.string	"S_CPOS_STND2"
.LASF443:
	.string	"S_SPOS_PAIN"
.LASF41:
	.string	"wp_shotgun"
.LASF411:
	.string	"S_POSS_PAIN2"
.LASF1237:
	.string	"MT_PUFF"
.LASF283:
	.string	"S_MISSILE1"
.LASF284:
	.string	"S_MISSILE2"
.LASF285:
	.string	"S_MISSILE3"
.LASF659:
	.string	"S_CPOS_RAISE2"
.LASF660:
	.string	"S_CPOS_RAISE3"
.LASF661:
	.string	"S_CPOS_RAISE4"
.LASF1421:
	.string	"psprites"
.LASF1103:
	.string	"S_MGUN"
.LASF1215:
	.string	"MT_BRUISER"
.LASF168:
	.string	"SPR_SBOX"
.LASF1413:
	.string	"secretcount"
.LASF1338:
	.string	"mobjtype_t"
.LASF1352:
	.string	"xdeathstate"
.LASF1398:
	.string	"powers"
.LASF1508:
	.string	"mappatch_t"
.LASF812:
	.string	"S_SKULL_ATK1"
.LASF813:
	.string	"S_SKULL_ATK2"
.LASF814:
	.string	"S_SKULL_ATK3"
.LASF815:
	.string	"S_SKULL_ATK4"
.LASF793:
	.string	"S_BOS2_PAIN2"
.LASF5:
	.string	"short unsigned int"
.LASF1217:
	.string	"MT_KNIGHT"
.LASF1487:
	.string	"spritetopoffset"
.LASF7:
	.string	"signed char"
.LASF16:
	.string	"sidemove"
.LASF1359:
	.string	"activesound"
.LASF444:
	.string	"S_SPOS_PAIN2"
.LASF608:
	.string	"S_FATT_ATK10"
.LASF205:
	.string	"SPR_TGRN"
.LASF1262:
	.string	"MT_MEGA"
.LASF107:
	.string	"SPR_BFE1"
.LASF108:
	.string	"SPR_BFE2"
.LASF1436:
	.string	"thinglist"
.LASF1296:
	.string	"MT_MISC46"
.LASF1466:
	.string	"columnofs"
.LASF1591:
	.string	"count"
.LASF1224:
	.string	"MT_KEEN"
.LASF1593:
	.string	"dest"
.LASF1434:
	.string	"blockbox"
.LASF1009:
	.string	"S_BRAINEYE1"
.LASF665:
	.string	"S_TROO_STND"
.LASF612:
	.string	"S_FATT_DIE2"
.LASF303:
	.string	"S_PLASMAFLASH2"
.LASF50:
	.string	"weapontype_t"
.LASF19:
	.string	"chatchar"
.LASF356:
	.string	"S_TFOG2"
.LASF357:
	.string	"S_TFOG3"
.LASF358:
	.string	"S_TFOG4"
.LASF359:
	.string	"S_TFOG5"
.LASF360:
	.string	"S_TFOG6"
.LASF361:
	.string	"S_TFOG7"
.LASF362:
	.string	"S_TFOG8"
.LASF363:
	.string	"S_TFOG9"
.LASF778:
	.string	"S_BOSS_RAISE7"
.LASF1407:
	.string	"attackdown"
.LASF83:
	.string	"SPR_TROO"
.LASF94:
	.string	"SPR_SAWG"
.LASF738:
	.string	"S_HEAD_DIE6"
.LASF1521:
	.string	"numtextures"
.LASF143:
	.string	"SPR_BON1"
.LASF144:
	.string	"SPR_BON2"
.LASF34:
	.string	"it_redcard"
.LASF1132:
	.string	"S_TALLREDCOL"
.LASF1527:
	.string	"texturecomposite"
.LASF1568:
	.string	"patchlookup"
.LASF1377:
	.string	"state"
.LASF1107:
	.string	"S_SHOT"
.LASF963:
	.string	"S_SSWV_ATK5"
.LASF1112:
	.string	"S_BLOODYTWITCH2"
.LASF1113:
	.string	"S_BLOODYTWITCH3"
.LASF1114:
	.string	"S_BLOODYTWITCH4"
.LASF853:
	.string	"S_SPID_DIE10"
.LASF854:
	.string	"S_SPID_DIE11"
.LASF1399:
	.string	"cards"
.LASF1561:
	.string	"mtexture"
.LASF200:
	.string	"SPR_ELEC"
.LASF1001:
	.string	"S_BRAIN"
.LASF1219:
	.string	"MT_SPIDER"
.LASF1084:
	.string	"S_SUIT"
.LASF1494:
	.string	"numspritelumps"
.LASF98:
	.string	"SPR_BFGF"
.LASF97:
	.string	"SPR_BFGG"
.LASF924:
	.string	"S_PAIN_STND"
.LASF1507:
	.string	"stepdir"
.LASF340:
	.string	"S_BFGLAND"
.LASF1030:
	.string	"S_BAR2"
.LASF1403:
	.string	"pendingweapon"
.LASF77:
	.string	"function"
.LASF1506:
	.string	"patch"
.LASF52:
	.string	"am_shell"
.LASF1539:
	.string	"W_CacheLumpName"
.LASF1375:
	.string	"validcount"
.LASF1570:
	.string	"nummappatches"
.LASF1414:
	.string	"message"
.LASF620:
	.string	"S_FATT_DIE10"
.LASF38:
	.string	"NUMCARDS"
.LASF1157:
	.string	"S_REDTORCH"
.LASF1235:
	.string	"MT_BFG"
.LASF404:
	.string	"S_POSS_RUN6"
.LASF1519:
	.string	"lastpatch"
.LASF114:
	.string	"SPR_VILE"
.LASF1238:
	.string	"MT_BLOOD"
.LASF233:
	.string	"S_PISTOL"
.LASF1585:
	.string	"colofs"
.LASF11:
	.string	"true"
.LASF465:
	.string	"S_VILE_STND2"
.LASF883:
	.string	"S_BSPI_RAISE1"
.LASF884:
	.string	"S_BSPI_RAISE2"
.LASF885:
	.string	"S_BSPI_RAISE3"
.LASF886:
	.string	"S_BSPI_RAISE4"
.LASF887:
	.string	"S_BSPI_RAISE5"
.LASF888:
	.string	"S_BSPI_RAISE6"
.LASF889:
	.string	"S_BSPI_RAISE7"
.LASF1372:
	.string	"momx"
.LASF1373:
	.string	"momy"
.LASF9:
	.string	"long int"
.LASF972:
	.string	"S_SSWV_XDIE1"
.LASF973:
	.string	"S_SSWV_XDIE2"
.LASF974:
	.string	"S_SSWV_XDIE3"
.LASF975:
	.string	"S_SSWV_XDIE4"
.LASF976:
	.string	"S_SSWV_XDIE5"
.LASF977:
	.string	"S_SSWV_XDIE6"
.LASF978:
	.string	"S_SSWV_XDIE7"
.LASF979:
	.string	"S_SSWV_XDIE8"
.LASF980:
	.string	"S_SSWV_XDIE9"
.LASF270:
	.string	"S_DSGUNFLASH1"
.LASF271:
	.string	"S_DSGUNFLASH2"
.LASF1269:
	.string	"MT_MISC22"
.LASF1422:
	.string	"didsecret"
.LASF528:
	.string	"S_FIRE25"
.LASF622:
	.string	"S_FATT_RAISE2"
.LASF1305:
	.string	"MT_MISC55"
.LASF1395:
	.string	"deltaviewheight"
.LASF36:
	.string	"it_yellowskull"
.LASF1060:
	.string	"S_RSKULL2"
.LASF1386:
	.string	"tracer"
.LASF835:
	.string	"S_SPID_RUN10"
.LASF836:
	.string	"S_SPID_RUN11"
.LASF837:
	.string	"S_SPID_RUN12"
.LASF1547:
	.string	"rcsid"
.LASF1361:
	.string	"raisestate"
.LASF286:
	.string	"S_MISSILEFLASH1"
.LASF287:
	.string	"S_MISSILEFLASH2"
.LASF288:
	.string	"S_MISSILEFLASH3"
.LASF289:
	.string	"S_MISSILEFLASH4"
.LASF149:
	.string	"SPR_RSKU"
.LASF74:
	.string	"think_t"
.LASF15:
	.string	"forwardmove"
.LASF647:
	.string	"S_CPOS_DIE3"
.LASF648:
	.string	"S_CPOS_DIE4"
.LASF1451:
	.string	"midtexture"
.LASF649:
	.string	"S_CPOS_DIE5"
.LASF650:
	.string	"S_CPOS_DIE6"
.LASF651:
	.string	"S_CPOS_DIE7"
.LASF1589:
	.string	"cache"
.LASF1092:
	.string	"S_PVIS2"
.LASF12:
	.string	"intptr_t"
.LASF1523:
	.string	"texturewidthmask"
.LASF1230:
	.string	"MT_BARREL"
.LASF824:
	.string	"S_SPID_STND"
.LASF596:
	.string	"S_FATT_RUN10"
.LASF597:
	.string	"S_FATT_RUN11"
.LASF598:
	.string	"S_FATT_RUN12"
.LASF1222:
	.string	"MT_PAIN"
.LASF1470:
	.string	"flip"
.LASF1150:
	.string	"S_BLUETORCH2"
.LASF1362:
	.string	"mobjinfo_t"
.LASF1151:
	.string	"S_BLUETORCH3"
.LASF1152:
	.string	"S_BLUETORCH4"
.LASF209:
	.string	"SPR_SMRT"
.LASF311:
	.string	"S_BFGFLASH1"
.LASF312:
	.string	"S_BFGFLASH2"
.LASF845:
	.string	"S_SPID_DIE2"
.LASF126:
	.string	"SPR_BOS2"
.LASF848:
	.string	"S_SPID_DIE5"
.LASF849:
	.string	"S_SPID_DIE6"
.LASF850:
	.string	"S_SPID_DIE7"
.LASF851:
	.string	"S_SPID_DIE8"
.LASF1516:
	.string	"lastflat"
.LASF1141:
	.string	"S_EVILEYE2"
.LASF1142:
	.string	"S_EVILEYE3"
.LASF1143:
	.string	"S_EVILEYE4"
.LASF316:
	.string	"S_PUFF1"
.LASF317:
	.string	"S_PUFF2"
.LASF318:
	.string	"S_PUFF3"
.LASF137:
	.string	"SPR_BOSF"
.LASF1439:
	.string	"lines"
.LASF1472:
	.string	"numframes"
.LASF125:
	.string	"SPR_BOSS"
.LASF30:
	.string	"position"
.LASF1234:
	.string	"MT_PLASMA"
.LASF870:
	.string	"S_BSPI_ATK1"
.LASF871:
	.string	"S_BSPI_ATK2"
.LASF872:
	.string	"S_BSPI_ATK3"
.LASF873:
	.string	"S_BSPI_ATK4"
.LASF1052:
	.string	"S_BKEY2"
.LASF48:
	.string	"NUMWEAPONS"
.LASF857:
	.string	"S_BSPI_SIGHT"
.LASF2:
	.string	"long unsigned int"
.LASF1530:
	.string	"spritememory"
.LASF859:
	.string	"S_BSPI_RUN2"
.LASF1003:
	.string	"S_BRAIN_DIE1"
.LASF1004:
	.string	"S_BRAIN_DIE2"
.LASF1005:
	.string	"S_BRAIN_DIE3"
.LASF1006:
	.string	"S_BRAIN_DIE4"
.LASF338:
	.string	"S_BFGSHOT"
.LASF1144:
	.string	"S_FLOATSKULL"
.LASF494:
	.string	"S_VILE_DIE1"
.LASF495:
	.string	"S_VILE_DIE2"
.LASF496:
	.string	"S_VILE_DIE3"
.LASF497:
	.string	"S_VILE_DIE4"
.LASF498:
	.string	"S_VILE_DIE5"
.LASF499:
	.string	"S_VILE_DIE6"
.LASF500:
	.string	"S_VILE_DIE7"
.LASF501:
	.string	"S_VILE_DIE8"
.LASF502:
	.string	"S_VILE_DIE9"
.LASF1415:
	.string	"damagecount"
.LASF178:
	.string	"SPR_SMT2"
.LASF1054:
	.string	"S_RKEY2"
.LASF1025:
	.string	"S_ARM1"
.LASF1027:
	.string	"S_ARM2"
.LASF1120:
	.string	"S_HEADCANDLES"
.LASF156:
	.string	"SPR_PINS"
.LASF750:
	.string	"S_BOSS_STND"
.LASF1537:
	.string	"W_CheckNumForName"
.LASF1522:
	.string	"textures"
.LASF730:
	.string	"S_HEAD_PAIN"
.LASF33:
	.string	"it_yellowcard"
.LASF1559:
	.string	"R_InitFlats"
.LASF1583:
	.string	"realpatch"
.LASF1206:
	.string	"MT_TRACER"
.LASF611:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF613:
	.string	"S_FATT_DIE3"
.LASF614:
	.string	"S_FATT_DIE4"
.LASF615:
	.string	"S_FATT_DIE5"
.LASF616:
	.string	"S_FATT_DIE6"
.LASF617:
	.string	"S_FATT_DIE7"
.LASF618:
	.string	"S_FATT_DIE8"
.LASF619:
	.string	"S_FATT_DIE9"
.LASF686:
	.string	"S_TROO_XDIE2"
.LASF687:
	.string	"S_TROO_XDIE3"
.LASF688:
	.string	"S_TROO_XDIE4"
.LASF689:
	.string	"S_TROO_XDIE5"
.LASF690:
	.string	"S_TROO_XDIE6"
.LASF691:
	.string	"S_TROO_XDIE7"
.LASF692:
	.string	"S_TROO_XDIE8"
.LASF1529:
	.string	"texturememory"
.LASF161:
	.string	"SPR_CLIP"
.LASF1133:
	.string	"S_SHRTREDCOL"
.LASF1176:
	.string	"S_HANGTSKULL"
.LASF63:
	.string	"NUMPOWERS"
.LASF961:
	.string	"S_SSWV_ATK3"
.LASF962:
	.string	"S_SSWV_ATK4"
.LASF267:
	.string	"S_DSGUN10"
.LASF58:
	.string	"pw_strength"
.LASF195:
	.string	"SPR_CAND"
.LASF1212:
	.string	"MT_SERGEANT"
.LASF1123:
	.string	"S_LIVESTICK"
.LASF1063:
	.string	"S_STIM"
.LASF53:
	.string	"am_cell"
.LASF32:
	.string	"it_bluecard"
.LASF1370:
	.string	"floorz"
.LASF726:
	.string	"S_HEAD_RUN1"
.LASF381:
	.string	"S_PLAY_DIE1"
.LASF382:
	.string	"S_PLAY_DIE2"
.LASF383:
	.string	"S_PLAY_DIE3"
.LASF384:
	.string	"S_PLAY_DIE4"
.LASF385:
	.string	"S_PLAY_DIE5"
.LASF386:
	.string	"S_PLAY_DIE6"
.LASF387:
	.string	"S_PLAY_DIE7"
.LASF397:
	.string	"S_POSS_STND"
.LASF353:
	.string	"S_TFOG"
.LASF1290:
	.string	"MT_MISC40"
.LASF1291:
	.string	"MT_MISC41"
.LASF1387:
	.string	"subsector_s"
.LASF713:
	.string	"S_SARG_DIE1"
.LASF714:
	.string	"S_SARG_DIE2"
.LASF715:
	.string	"S_SARG_DIE3"
.LASF716:
	.string	"S_SARG_DIE4"
.LASF1014:
	.string	"S_SPAWNFIRE1"
.LASF1015:
	.string	"S_SPAWNFIRE2"
.LASF1016:
	.string	"S_SPAWNFIRE3"
.LASF1017:
	.string	"S_SPAWNFIRE4"
.LASF1018:
	.string	"S_SPAWNFIRE5"
.LASF1019:
	.string	"S_SPAWNFIRE6"
.LASF1020:
	.string	"S_SPAWNFIRE7"
.LASF1021:
	.string	"S_SPAWNFIRE8"
.LASF685:
	.string	"S_TROO_XDIE1"
.LASF18:
	.string	"consistancy"
.LASF1388:
	.string	"sector"
.LASF1178:
	.string	"S_HANGTNOBRAIN"
.LASF1557:
	.string	"R_InitColormaps"
.LASF333:
	.string	"S_PLASEXP2"
.LASF334:
	.string	"S_PLASEXP3"
.LASF335:
	.string	"S_PLASEXP4"
.LASF336:
	.string	"S_PLASEXP5"
.LASF45:
	.string	"wp_bfg"
.LASF1162:
	.string	"S_BTORCHSHRT2"
.LASF1163:
	.string	"S_BTORCHSHRT3"
.LASF1164:
	.string	"S_BTORCHSHRT4"
.LASF1573:
	.string	"maxoff2"
.LASF466:
	.string	"S_VILE_RUN1"
.LASF256:
	.string	"S_DSGUNDOWN"
.LASF468:
	.string	"S_VILE_RUN3"
.LASF469:
	.string	"S_VILE_RUN4"
.LASF470:
	.string	"S_VILE_RUN5"
.LASF471:
	.string	"S_VILE_RUN6"
.LASF472:
	.string	"S_VILE_RUN7"
.LASF473:
	.string	"S_VILE_RUN8"
.LASF474:
	.string	"S_VILE_RUN9"
.LASF717:
	.string	"S_SARG_DIE5"
.LASF718:
	.string	"S_SARG_DIE6"
.LASF1364:
	.string	"thinker"
.LASF558:
	.string	"S_SKEL_FIST1"
.LASF559:
	.string	"S_SKEL_FIST2"
.LASF560:
	.string	"S_SKEL_FIST3"
.LASF561:
	.string	"S_SKEL_FIST4"
.LASF297:
	.string	"S_PLASMA"
.LASF1076:
	.string	"S_PINS"
.LASF1460:
	.string	"post_t"
.LASF1577:
	.string	"temp1"
.LASF1578:
	.string	"temp2"
.LASF1579:
	.string	"temp3"
.LASF1551:
	.string	"texture"
.LASF1498:
	.string	"sectors"
.LASF1149:
	.string	"S_BLUETORCH"
.LASF587:
	.string	"S_FATT_RUN1"
.LASF588:
	.string	"S_FATT_RUN2"
.LASF589:
	.string	"S_FATT_RUN3"
.LASF590:
	.string	"S_FATT_RUN4"
.LASF60:
	.string	"pw_ironfeet"
.LASF592:
	.string	"S_FATT_RUN6"
.LASF593:
	.string	"S_FATT_RUN7"
.LASF594:
	.string	"S_FATT_RUN8"
.LASF1125:
	.string	"S_MEAT2"
.LASF1126:
	.string	"S_MEAT3"
.LASF1127:
	.string	"S_MEAT4"
.LASF1128:
	.string	"S_MEAT5"
.LASF240:
	.string	"S_PISTOLFLASH"
.LASF1426:
	.string	"floorheight"
.LASF460:
	.string	"S_SPOS_RAISE2"
.LASF461:
	.string	"S_SPOS_RAISE3"
.LASF462:
	.string	"S_SPOS_RAISE4"
.LASF463:
	.string	"S_SPOS_RAISE5"
.LASF152:
	.string	"SPR_MEDI"
.LASF154:
	.string	"SPR_PINV"
.LASF1002:
	.string	"S_BRAIN_PAIN"
.LASF273:
	.string	"S_CHAINDOWN"
.LASF492:
	.string	"S_VILE_PAIN"
.LASF1490:
	.string	"flattranslation"
.LASF539:
	.string	"S_TRACER"
.LASF959:
	.string	"S_SSWV_ATK1"
.LASF960:
	.string	"S_SSWV_ATK2"
.LASF489:
	.string	"S_VILE_HEAL1"
.LASF490:
	.string	"S_VILE_HEAL2"
.LASF491:
	.string	"S_VILE_HEAL3"
.LASF964:
	.string	"S_SSWV_ATK6"
.LASF1380:
	.string	"movecount"
.LASF146:
	.string	"SPR_RKEY"
.LASF1110:
	.string	"S_STALAG"
.LASF1545:
	.string	"Z_Malloc"
.LASF825:
	.string	"S_SPID_STND2"
.LASF534:
	.string	"S_SMOKE1"
.LASF67:
	.string	"angle_t"
.LASF1429:
	.string	"ceilingpic"
.LASF1111:
	.string	"S_BLOODYTWITCH"
.LASF1180:
	.string	"S_SMALLPOOL"
.LASF1478:
	.string	"pspdef_t"
.LASF1306:
	.string	"MT_MISC56"
.LASF609:
	.string	"S_FATT_PAIN"
.LASF1569:
	.string	"totalwidth"
.LASF373:
	.string	"S_PLAY_RUN1"
.LASF374:
	.string	"S_PLAY_RUN2"
.LASF375:
	.string	"S_PLAY_RUN3"
.LASF376:
	.string	"S_PLAY_RUN4"
.LASF1101:
	.string	"S_BPAK"
.LASF65:
	.string	"double"
.LASF141:
	.string	"SPR_BEXP"
.LASF1391:
	.string	"player_s"
.LASF1058:
	.string	"S_BSKULL2"
.LASF100:
	.string	"SPR_PUFF"
.LASF987:
	.string	"S_COMMKEEN"
.LASF1567:
	.string	"name_p"
.LASF1408:
	.string	"usedown"
.LASF779:
	.string	"S_BOS2_STND"
.LASF106:
	.string	"SPR_BFS1"
.LASF1010:
	.string	"S_SPAWN1"
.LASF1011:
	.string	"S_SPAWN2"
.LASF1012:
	.string	"S_SPAWN3"
.LASF1013:
	.string	"S_SPAWN4"
.LASF1183:
	.string	"S_TECHLAMP2"
.LASF1184:
	.string	"S_TECHLAMP3"
.LASF46:
	.string	"wp_chainsaw"
.LASF1220:
	.string	"MT_BABY"
.LASF1406:
	.string	"maxammo"
.LASF1124:
	.string	"S_LIVESTICK2"
.LASF1169:
	.string	"S_RTORCHSHRT"
.LASF1266:
	.string	"MT_MISC19"
.LASF128:
	.string	"SPR_SPID"
.LASF725:
	.string	"S_HEAD_STND"
.LASF1563:
	.string	"maptex"
.LASF700:
	.string	"S_SARG_RUN1"
.LASF701:
	.string	"S_SARG_RUN2"
.LASF703:
	.string	"S_SARG_RUN4"
.LASF704:
	.string	"S_SARG_RUN5"
.LASF705:
	.string	"S_SARG_RUN6"
.LASF706:
	.string	"S_SARG_RUN7"
.LASF707:
	.string	"S_SARG_RUN8"
.LASF1244:
	.string	"MT_MISC1"
.LASF1245:
	.string	"MT_MISC2"
.LASF1246:
	.string	"MT_MISC3"
.LASF1247:
	.string	"MT_MISC4"
.LASF1248:
	.string	"MT_MISC5"
.LASF1249:
	.string	"MT_MISC6"
.LASF1250:
	.string	"MT_MISC7"
.LASF1251:
	.string	"MT_MISC8"
.LASF1252:
	.string	"MT_MISC9"
.LASF290:
	.string	"S_SAW"
.LASF157:
	.string	"SPR_MEGA"
.LASF379:
	.string	"S_PLAY_PAIN"
.LASF331:
	.string	"S_PLASBALL2"
.LASF1476:
	.string	"ps_flash"
.LASF1392:
	.string	"playerstate"
.LASF135:
	.string	"SPR_KEEN"
.LASF965:
	.string	"S_SSWV_PAIN"
.LASF1346:
	.string	"painstate"
.LASF1000:
	.string	"S_KEENPAIN2"
.LASF62:
	.string	"pw_infrared"
.LASF487:
	.string	"S_VILE_ATK10"
.LASF488:
	.string	"S_VILE_ATK11"
.LASF1465:
	.string	"topoffset"
.LASF966:
	.string	"S_SSWV_PAIN2"
.LASF1330:
	.string	"MT_MISC80"
.LASF1353:
	.string	"deathsound"
.LASF1040:
	.string	"S_BON1A"
.LASF1041:
	.string	"S_BON1B"
.LASF1042:
	.string	"S_BON1C"
.LASF1043:
	.string	"S_BON1D"
.LASF1044:
	.string	"S_BON1E"
.LASF1588:
	.string	"patchcol"
.LASF1446:
	.string	"sector_t"
.LASF1493:
	.string	"lastspritelump"
.LASF1463:
	.string	"width"
.LASF155:
	.string	"SPR_PSTR"
.LASF1268:
	.string	"MT_MISC21"
.LASF711:
	.string	"S_SARG_PAIN"
.LASF1263:
	.string	"MT_CLIP"
.LASF170:
	.string	"SPR_BFUG"
.LASF1318:
	.string	"MT_MISC68"
.LASF1036:
	.string	"S_BBAR1"
.LASF1037:
	.string	"S_BBAR2"
.LASF1038:
	.string	"S_BBAR3"
.LASF224:
	.string	"S_LIGHTDONE"
.LASF875:
	.string	"S_BSPI_PAIN2"
.LASF1400:
	.string	"backpack"
.LASF675:
	.string	"S_TROO_ATK1"
.LASF676:
	.string	"S_TROO_ATK2"
.LASF677:
	.string	"S_TROO_ATK3"
.LASF819:
	.string	"S_SKULL_DIE2"
.LASF820:
	.string	"S_SKULL_DIE3"
.LASF821:
	.string	"S_SKULL_DIE4"
.LASF822:
	.string	"S_SKULL_DIE5"
.LASF823:
	.string	"S_SKULL_DIE6"
.LASF174:
	.string	"SPR_PLAS"
.LASF1046:
	.string	"S_BON2A"
.LASF1047:
	.string	"S_BON2B"
.LASF87:
	.string	"SPR_PISF"
.LASF86:
	.string	"SPR_PISG"
.LASF1050:
	.string	"S_BON2E"
.LASF1273:
	.string	"MT_CHAINGUN"
.LASF322:
	.string	"S_TBALLX1"
.LASF323:
	.string	"S_TBALLX2"
.LASF324:
	.string	"S_TBALLX3"
.LASF49:
	.string	"wp_nochange"
.LASF1488:
	.string	"colormaps"
.LASF1210:
	.string	"MT_CHAINGUY"
.LASF1565:
	.string	"maptex1"
.LASF1564:
	.string	"maptex2"
.LASF1425:
	.string	"degenmobj_t"
.LASF818:
	.string	"S_SKULL_DIE1"
.LASF1480:
	.string	"PST_DEAD"
.LASF1181:
	.string	"S_BRAINSTEM"
.LASF986:
	.string	"S_KEENSTND"
.LASF111:
	.string	"SPR_PLAY"
.LASF1402:
	.string	"readyweapon"
.LASF1571:
	.string	"offset"
.LASF1121:
	.string	"S_HEADCANDLES2"
.LASF1240:
	.string	"MT_IFOG"
.LASF202:
	.string	"SPR_FSKU"
.LASF437:
	.string	"S_SPOS_RUN6"
.LASF293:
	.string	"S_SAWUP"
.LASF1026:
	.string	"S_ARM1A"
.LASF629:
	.string	"S_CPOS_STND"
.LASF1281:
	.string	"MT_MISC31"
.LASF1374:
	.string	"momz"
.LASF1100:
	.string	"S_SBOX"
.LASF1432:
	.string	"soundtraversed"
.LASF1499:
	.string	"numsides"
.LASF1284:
	.string	"MT_MISC34"
.LASF1442:
	.string	"bbox"
.LASF332:
	.string	"S_PLASEXP"
.LASF1287:
	.string	"MT_MISC37"
.LASF1116:
	.string	"S_DEADBOTTOM"
.LASF1173:
	.string	"S_HANGNOGUTS"
.LASF1345:
	.string	"attacksound"
.LASF1582:
	.string	"texnum"
.LASF1077:
	.string	"S_PINS2"
.LASF1078:
	.string	"S_PINS3"
.LASF1079:
	.string	"S_PINS4"
.LASF1555:
	.string	"namet"
.LASF931:
	.string	"S_PAIN_ATK1"
.LASF932:
	.string	"S_PAIN_ATK2"
.LASF933:
	.string	"S_PAIN_ATK3"
.LASF934:
	.string	"S_PAIN_ATK4"
.LASF243:
	.string	"S_SGUNUP"
.LASF1444:
	.string	"frontsector"
.LASF196:
	.string	"SPR_CBRA"
.LASF1351:
	.string	"deathstate"
.LASF1028:
	.string	"S_ARM2A"
.LASF897:
	.string	"S_CYBER_STND"
.LASF1464:
	.string	"leftoffset"
.LASF1056:
	.string	"S_YKEY2"
.LASF506:
	.string	"S_FIRE3"
.LASF1344:
	.string	"reactiontime"
.LASF511:
	.string	"S_FIRE8"
.LASF751:
	.string	"S_BOSS_STND2"
.LASF646:
	.string	"S_CPOS_DIE2"
.LASF1366:
	.string	"sprev"
.LASF294:
	.string	"S_SAW1"
.LASF295:
	.string	"S_SAW2"
.LASF296:
	.string	"S_SAW3"
.LASF1039:
	.string	"S_BON1"
.LASF1045:
	.string	"S_BON2"
.LASF1383:
	.string	"player"
.LASF291:
	.string	"S_SAWB"
.LASF679:
	.string	"S_TROO_PAIN2"
.LASF1226:
	.string	"MT_BOSSSPIT"
.LASF504:
	.string	"S_FIRE1"
.LASF505:
	.string	"S_FIRE2"
.LASF66:
	.string	"fixed_t"
.LASF507:
	.string	"S_FIRE4"
.LASF508:
	.string	"S_FIRE5"
.LASF509:
	.string	"S_FIRE6"
.LASF510:
	.string	"S_FIRE7"
.LASF164:
	.string	"SPR_BROK"
.LASF512:
	.string	"S_FIRE9"
.LASF1294:
	.string	"MT_MISC44"
.LASF1295:
	.string	"MT_MISC45"
.LASF31:
	.string	"lumpinfo_t"
.LASF1097:
	.string	"S_CELL"
.LASF1531:
	.string	"P_MobjThinker"
.LASF1297:
	.string	"MT_MISC47"
.LASF162:
	.string	"SPR_AMMO"
.LASF1298:
	.string	"MT_MISC48"
.LASF1299:
	.string	"MT_MISC49"
.LASF810:
	.string	"S_SKULL_RUN1"
.LASF811:
	.string	"S_SKULL_RUN2"
.LASF1177:
	.string	"S_HANGTLOOKUP"
.LASF272:
	.string	"S_CHAIN"
.LASF302:
	.string	"S_PLASMAFLASH1"
.LASF258:
	.string	"S_DSGUN1"
.LASF259:
	.string	"S_DSGUN2"
.LASF153:
	.string	"SPR_SOUL"
.LASF113:
	.string	"SPR_SPOS"
.LASF262:
	.string	"S_DSGUN5"
.LASF263:
	.string	"S_DSGUN6"
.LASF264:
	.string	"S_DSGUN7"
.LASF265:
	.string	"S_DSGUN8"
.LASF266:
	.string	"S_DSGUN9"
.LASF430:
	.string	"S_SPOS_STND"
.LASF133:
	.string	"SPR_PAIN"
.LASF658:
	.string	"S_CPOS_RAISE1"
.LASF1401:
	.string	"frags"
.LASF1525:
	.string	"texturecolumnlump"
.LASF1396:
	.string	"armorpoints"
.LASF20:
	.string	"buttons"
.LASF307:
	.string	"S_BFG1"
.LASF308:
	.string	"S_BFG2"
.LASF309:
	.string	"S_BFG3"
.LASF310:
	.string	"S_BFG4"
.LASF1484:
	.string	"textureheight"
.LASF1586:
	.string	"R_GenerateComposite"
.LASF1554:
	.string	"R_FlatNumForName"
.LASF1520:
	.string	"numpatches"
.LASF222:
	.string	"spritenum_t"
.LASF269:
	.string	"S_DSNR2"
.LASF809:
	.string	"S_SKULL_STND2"
.LASF1072:
	.string	"S_PINV2"
.LASF1073:
	.string	"S_PINV3"
.LASF702:
	.string	"S_SARG_RUN3"
.LASF1187:
	.string	"S_TECH2LAMP2"
.LASF1188:
	.string	"S_TECH2LAMP3"
.LASF1189:
	.string	"S_TECH2LAMP4"
.LASF1440:
	.string	"line_s"
.LASF85:
	.string	"SPR_PUNG"
.LASF653:
	.string	"S_CPOS_XDIE2"
.LASF654:
	.string	"S_CPOS_XDIE3"
.LASF655:
	.string	"S_CPOS_XDIE4"
.LASF656:
	.string	"S_CPOS_XDIE5"
.LASF657:
	.string	"S_CPOS_XDIE6"
.LASF838:
	.string	"S_SPID_ATK1"
.LASF839:
	.string	"S_SPID_ATK2"
.LASF840:
	.string	"S_SPID_ATK3"
.LASF841:
	.string	"S_SPID_ATK4"
.LASF562:
	.string	"S_SKEL_MISS1"
.LASF563:
	.string	"S_SKEL_MISS2"
.LASF564:
	.string	"S_SKEL_MISS3"
.LASF565:
	.string	"S_SKEL_MISS4"
.LASF319:
	.string	"S_PUFF4"
.LASF1059:
	.string	"S_RSKULL"
.LASF891:
	.string	"S_ARACH_PLAZ2"
.LASF1300:
	.string	"MT_MISC50"
.LASF739:
	.string	"S_HEAD_RAISE1"
.LASF1335:
	.string	"MT_MISC85"
.LASF740:
	.string	"S_HEAD_RAISE2"
.LASF741:
	.string	"S_HEAD_RAISE3"
.LASF1409:
	.string	"cheats"
.LASF148:
	.string	"SPR_BSKU"
.LASF743:
	.string	"S_HEAD_RAISE5"
.LASF744:
	.string	"S_HEAD_RAISE6"
.LASF1541:
	.string	"memset"
.LASF1278:
	.string	"MT_SUPERSHOTGUN"
.LASF1548:
	.string	"flatpresent"
.LASF159:
	.string	"SPR_PMAP"
.LASF1007:
	.string	"S_BRAINEYE"
.LASF160:
	.string	"SPR_PVIS"
.LASF1543:
	.string	"I_Error"
.LASF1479:
	.string	"PST_LIVE"
.LASF1236:
	.string	"MT_ARACHPLAZ"
.LASF24:
	.string	"user"
.LASF485:
	.string	"S_VILE_ATK8"
.LASF426:
	.string	"S_POSS_RAISE1"
.LASF427:
	.string	"S_POSS_RAISE2"
.LASF428:
	.string	"S_POSS_RAISE3"
.LASF429:
	.string	"S_POSS_RAISE4"
.LASF281:
	.string	"S_MISSILEDOWN"
.LASF1145:
	.string	"S_FLOATSKULL2"
.LASF1146:
	.string	"S_FLOATSKULL3"
.LASF1495:
	.string	"numsprites"
.LASF1513:
	.string	"maptexture_t"
.LASF1080:
	.string	"S_MEGA"
.LASF760:
	.string	"S_BOSS_ATK1"
.LASF761:
	.string	"S_BOSS_ATK2"
.LASF762:
	.string	"S_BOSS_ATK3"
.LASF1369:
	.string	"subsector"
.LASF218:
	.string	"SPR_BRS1"
.LASF1424:
	.string	"vertex_t"
.LASF567:
	.string	"S_SKEL_PAIN2"
.LASF1104:
	.string	"S_CSAW"
.LASF57:
	.string	"pw_invulnerability"
.LASF747:
	.string	"S_BRBALLX1"
.LASF748:
	.string	"S_BRBALLX2"
.LASF749:
	.string	"S_BRBALLX3"
.LASF877:
	.string	"S_BSPI_DIE2"
.LASF878:
	.string	"S_BSPI_DIE3"
.LASF879:
	.string	"S_BSPI_DIE4"
.LASF880:
	.string	"S_BSPI_DIE5"
.LASF42:
	.string	"wp_chaingun"
.LASF882:
	.string	"S_BSPI_DIE7"
.LASF433:
	.string	"S_SPOS_RUN2"
.LASF1445:
	.string	"backsector"
.LASF434:
	.string	"S_SPOS_RUN3"
.LASF936:
	.string	"S_PAIN_PAIN2"
.LASF571:
	.string	"S_SKEL_DIE4"
.LASF167:
	.string	"SPR_SHEL"
.LASF1319:
	.string	"MT_MISC69"
.LASF1397:
	.string	"armortype"
.LASF10:
	.string	"false"
.LASF219:
	.string	"SPR_TLMP"
.LASF1517:
	.string	"numflats"
.LASF398:
	.string	"S_POSS_STND2"
.LASF1277:
	.string	"MT_SHOTGUN"
.LASF1202:
	.string	"MT_SHOTGUY"
.LASF1412:
	.string	"itemcount"
.LASF1182:
	.string	"S_TECHLAMP"
.LASF1223:
	.string	"MT_WOLFSS"
.LASF1552:
	.string	"R_TextureNumForName"
.LASF780:
	.string	"S_BOS2_STND2"
.LASF1433:
	.string	"soundtarget"
.LASF275:
	.string	"S_CHAIN1"
.LASF276:
	.string	"S_CHAIN2"
.LASF277:
	.string	"S_CHAIN3"
.LASF328:
	.string	"S_RBALLX2"
.LASF329:
	.string	"S_RBALLX3"
.LASF204:
	.string	"SPR_TBLU"
.LASF431:
	.string	"S_SPOS_STND2"
.LASF6:
	.string	"unsigned int"
.LASF1365:
	.string	"snext"
.LASF56:
	.string	"am_noammo"
.LASF76:
	.string	"thinker_s"
.LASF78:
	.string	"thinker_t"
.LASF407:
	.string	"S_POSS_ATK1"
.LASF408:
	.string	"S_POSS_ATK2"
.LASF409:
	.string	"S_POSS_ATK3"
.LASF1321:
	.string	"MT_MISC71"
.LASF1170:
	.string	"S_RTORCHSHRT2"
.LASF1171:
	.string	"S_RTORCHSHRT3"
.LASF1172:
	.string	"S_RTORCHSHRT4"
.LASF1074:
	.string	"S_PINV4"
.LASF8:
	.string	"short int"
.LASF858:
	.string	"S_BSPI_RUN1"
.LASF1327:
	.string	"MT_MISC77"
.LASF1328:
	.string	"MT_MISC78"
.LASF1329:
	.string	"MT_MISC79"
.LASF1471:
	.string	"spriteframe_t"
.LASF1218:
	.string	"MT_SKULL"
.LASF1205:
	.string	"MT_UNDEAD"
.LASF26:
	.string	"prev"
.LASF568:
	.string	"S_SKEL_DIE1"
.LASF569:
	.string	"S_SKEL_DIE2"
.LASF570:
	.string	"S_SKEL_DIE3"
.LASF115:
	.string	"SPR_FIRE"
.LASF572:
	.string	"S_SKEL_DIE5"
.LASF573:
	.string	"S_SKEL_DIE6"
.LASF1179:
	.string	"S_COLONGIBS"
.LASF1534:
	.string	"W_LumpLength"
.LASF220:
	.string	"SPR_TLP2"
.LASF330:
	.string	"S_PLASBALL"
.LASF176:
	.string	"SPR_SGN2"
.LASF81:
	.string	"options"
.LASF129:
	.string	"SPR_BSPI"
.LASF131:
	.string	"SPR_APBX"
.LASF1420:
	.string	"colormap"
.LASF1253:
	.string	"MT_MISC10"
.LASF1254:
	.string	"MT_MISC11"
.LASF1255:
	.string	"MT_MISC12"
.LASF1257:
	.string	"MT_MISC13"
.LASF1259:
	.string	"MT_MISC14"
.LASF1260:
	.string	"MT_MISC15"
.LASF1261:
	.string	"MT_MISC16"
.LASF1264:
	.string	"MT_MISC17"
.LASF1265:
	.string	"MT_MISC18"
.LASF1093:
	.string	"S_CLIP"
.LASF1355:
	.string	"radius"
.LASF1378:
	.string	"health"
.LASF1227:
	.string	"MT_BOSSTARGET"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"r_data.c"
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
