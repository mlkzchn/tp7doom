	.file	"r_things.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "r_things.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 51
rcsid:
	.string	"$Id: r_things.c,v 1.5 1997/02/03 16:47:56 b1 Exp $"
	.globl	pspritescale
	.bss
	.align 4
	.type	pspritescale, @object
	.size	pspritescale, 4
pspritescale:
	.zero	4
	.globl	pspriteiscale
	.align 4
	.type	pspriteiscale, @object
	.size	pspriteiscale, 4
pspriteiscale:
	.zero	4
	.globl	spritelights
	.align 8
	.type	spritelights, @object
	.size	spritelights, 8
spritelights:
	.zero	8
	.globl	negonearray
	.align 32
	.type	negonearray, @object
	.size	negonearray, 640
negonearray:
	.zero	640
	.globl	screenheightarray
	.align 32
	.type	screenheightarray, @object
	.size	screenheightarray, 640
screenheightarray:
	.zero	640
	.globl	sprites
	.align 8
	.type	sprites, @object
	.size	sprites, 8
sprites:
	.zero	8
	.globl	numsprites
	.align 4
	.type	numsprites, @object
	.size	numsprites, 4
numsprites:
	.zero	4
	.globl	sprtemp
	.align 32
	.type	sprtemp, @object
	.size	sprtemp, 812
sprtemp:
	.zero	812
	.globl	maxframe
	.align 4
	.type	maxframe, @object
	.size	maxframe, 4
maxframe:
	.zero	4
	.globl	spritename
	.align 8
	.type	spritename, @object
	.size	spritename, 8
spritename:
	.zero	8
	.section	.rodata
	.align 8
.LC0:
	.string	"R_InstallSpriteLump: Bad frame characters in lump %i"
	.align 8
.LC1:
	.string	"R_InitSprites: Sprite %s frame %c has multip rot=0 lump"
	.align 8
.LC2:
	.string	"R_InitSprites: Sprite %s frame %c has rotations and a rot=0 lump"
	.align 8
.LC3:
	.string	"R_InitSprites: Sprite %s : %c : %c has two lumps mapped to it"
	.text
	.globl	R_InstallSpriteLump
	.type	R_InstallSpriteLump, @function
R_InstallSpriteLump:
.LFB6:
	.file 1 "r_things.c"
	.loc 1 111 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# lump, lump
	movl	%esi, -24(%rbp)	# frame, frame
	movl	%edx, -28(%rbp)	# rotation, rotation
	movl	%ecx, -32(%rbp)	# flipped, flipped
# r_things.c:114:     if (frame >= 29 || rotation > 8)
	.loc 1 114 8
	cmpl	$28, -24(%rbp)	#, frame
	ja	.L2	#,
# r_things.c:114:     if (frame >= 29 || rotation > 8)
	.loc 1 114 21 discriminator 1
	cmpl	$8, -28(%rbp)	#, rotation
	jbe	.L3	#,
.L2:
# r_things.c:115: 	I_Error("R_InstallSpriteLump: "
	.loc 1 115 2
	movl	-20(%rbp), %eax	# lump, tmp110
	movl	%eax, %esi	# tmp110,
	leaq	.LC0(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L3:
# r_things.c:118:     if ((int)frame > maxframe)
	.loc 1 118 9
	movl	-24(%rbp), %edx	# frame, frame.0_1
# r_things.c:118:     if ((int)frame > maxframe)
	.loc 1 118 20
	movl	maxframe(%rip), %eax	# maxframe, maxframe.1_2
# r_things.c:118:     if ((int)frame > maxframe)
	.loc 1 118 8
	cmpl	%eax, %edx	# maxframe.1_2, frame.0_1
	jle	.L4	#,
# r_things.c:119: 	maxframe = frame;
	.loc 1 119 11
	movl	-24(%rbp), %eax	# frame, frame.2_3
	movl	%eax, maxframe(%rip)	# frame.2_3, maxframe
.L4:
# r_things.c:121:     if (rotation == 0)
	.loc 1 121 8
	cmpl	$0, -28(%rbp)	#, rotation
	jne	.L5	#,
# r_things.c:124: 	if (sprtemp[frame].rotate == false)
	.loc 1 124 20
	movl	-24(%rbp), %edx	# frame, tmp112
	movq	%rdx, %rax	# tmp112, tmp114
	salq	$3, %rax	#, tmp115
	subq	%rdx, %rax	# tmp112, tmp114
	salq	$2, %rax	#, tmp116
	movq	%rax, %rdx	# tmp114, tmp113
	leaq	sprtemp(%rip), %rax	#, tmp117
	movl	(%rdx,%rax), %eax	# sprtemp[frame_38(D)].rotate, _4
# r_things.c:124: 	if (sprtemp[frame].rotate == false)
	.loc 1 124 5
	testl	%eax, %eax	# _4
	jne	.L6	#,
# r_things.c:125: 	    I_Error ("R_InitSprites: Sprite %s frame %c has "
	.loc 1 125 6
	movl	-24(%rbp), %eax	# frame, tmp118
	leal	65(%rax), %edx	#, _5
	movq	spritename(%rip), %rax	# spritename, spritename.3_6
	movq	%rax, %rsi	# spritename.3_6,
	leaq	.LC1(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L6:
# r_things.c:128: 	if (sprtemp[frame].rotate == true)
	.loc 1 128 20
	movl	-24(%rbp), %edx	# frame, tmp120
	movq	%rdx, %rax	# tmp120, tmp122
	salq	$3, %rax	#, tmp123
	subq	%rdx, %rax	# tmp120, tmp122
	salq	$2, %rax	#, tmp124
	movq	%rax, %rdx	# tmp122, tmp121
	leaq	sprtemp(%rip), %rax	#, tmp125
	movl	(%rdx,%rax), %eax	# sprtemp[frame_38(D)].rotate, _7
# r_things.c:128: 	if (sprtemp[frame].rotate == true)
	.loc 1 128 5
	cmpl	$1, %eax	#, _7
	jne	.L7	#,
# r_things.c:129: 	    I_Error ("R_InitSprites: Sprite %s frame %c has rotations "
	.loc 1 129 6
	movl	-24(%rbp), %eax	# frame, tmp126
	leal	65(%rax), %edx	#, _8
	movq	spritename(%rip), %rax	# spritename, spritename.4_9
	movq	%rax, %rsi	# spritename.4_9,
	leaq	.LC2(%rip), %rax	#, tmp127
	movq	%rax, %rdi	# tmp127,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L7:
# r_things.c:132: 	sprtemp[frame].rotate = false;
	.loc 1 132 24
	movl	-24(%rbp), %edx	# frame, tmp128
	movq	%rdx, %rax	# tmp128, tmp130
	salq	$3, %rax	#, tmp131
	subq	%rdx, %rax	# tmp128, tmp130
	salq	$2, %rax	#, tmp132
	movq	%rax, %rdx	# tmp130, tmp129
	leaq	sprtemp(%rip), %rax	#, tmp133
	movl	$0, (%rdx,%rax)	#, sprtemp[frame_38(D)].rotate
# r_things.c:133: 	for (r=0 ; r<8 ; r++)
	.loc 1 133 8
	movl	$0, -4(%rbp)	#, r
# r_things.c:133: 	for (r=0 ; r<8 ; r++)
	.loc 1 133 2
	jmp	.L8	#
.L9:
# r_things.c:135: 	    sprtemp[frame].lump[r] = lump - firstspritelump;
	.loc 1 135 36
	movl	-20(%rbp), %eax	# lump, tmp134
	movl	%eax, %edx	# tmp134, _10
	movl	firstspritelump(%rip), %eax	# firstspritelump, firstspritelump.5_11
	movl	%eax, %ecx	# firstspritelump.5_11, _12
	movl	%edx, %eax	# _10, _10
	subl	%ecx, %eax	# _12, _10
	movl	%eax, %esi	# _13, _14
# r_things.c:135: 	    sprtemp[frame].lump[r] = lump - firstspritelump;
	.loc 1 135 29
	movl	-4(%rbp), %eax	# r, tmp136
	movslq	%eax, %rcx	# tmp136, tmp135
	movl	-24(%rbp), %edx	# frame, tmp137
	movq	%rdx, %rax	# tmp137, tmp138
	salq	$3, %rax	#, tmp139
	subq	%rdx, %rax	# tmp137, tmp138
	addq	%rax, %rax	# tmp140
	addq	%rcx, %rax	# tmp135, tmp141
	leaq	(%rax,%rax), %rdx	#, tmp142
	leaq	4+sprtemp(%rip), %rax	#, tmp143
	movw	%si, (%rdx,%rax)	# _14, sprtemp[frame_38(D)].lump[r_29]
# r_things.c:136: 	    sprtemp[frame].flip[r] = (byte)flipped;
	.loc 1 136 31
	movl	-32(%rbp), %eax	# flipped, tmp144
	movl	%eax, %esi	# tmp144, _15
# r_things.c:136: 	    sprtemp[frame].flip[r] = (byte)flipped;
	.loc 1 136 29
	movl	-4(%rbp), %eax	# r, tmp146
	movslq	%eax, %rcx	# tmp146, tmp145
	movl	-24(%rbp), %edx	# frame, tmp147
	movq	%rdx, %rax	# tmp147, tmp148
	salq	$3, %rax	#, tmp149
	subq	%rdx, %rax	# tmp147, tmp148
	salq	$2, %rax	#, tmp150
	leaq	(%rax,%rcx), %rdx	#, tmp151
	leaq	20+sprtemp(%rip), %rax	#, tmp153
	addq	%rdx, %rax	# tmp151, tmp152
	movb	%sil, (%rax)	# _15, sprtemp[frame_38(D)].flip[r_29]
# r_things.c:133: 	for (r=0 ; r<8 ; r++)
	.loc 1 133 20 discriminator 3
	addl	$1, -4(%rbp)	#, r
.L8:
# r_things.c:133: 	for (r=0 ; r<8 ; r++)
	.loc 1 133 14 discriminator 1
	cmpl	$7, -4(%rbp)	#, r
	jle	.L9	#,
# r_things.c:138: 	return;
	.loc 1 138 2
	jmp	.L1	#
.L5:
# r_things.c:142:     if (sprtemp[frame].rotate == false)
	.loc 1 142 23
	movl	-24(%rbp), %edx	# frame, tmp154
	movq	%rdx, %rax	# tmp154, tmp156
	salq	$3, %rax	#, tmp157
	subq	%rdx, %rax	# tmp154, tmp156
	salq	$2, %rax	#, tmp158
	movq	%rax, %rdx	# tmp156, tmp155
	leaq	sprtemp(%rip), %rax	#, tmp159
	movl	(%rdx,%rax), %eax	# sprtemp[frame_38(D)].rotate, _16
# r_things.c:142:     if (sprtemp[frame].rotate == false)
	.loc 1 142 8
	testl	%eax, %eax	# _16
	jne	.L11	#,
# r_things.c:143: 	I_Error ("R_InitSprites: Sprite %s frame %c has rotations "
	.loc 1 143 2
	movl	-24(%rbp), %eax	# frame, tmp160
	leal	65(%rax), %edx	#, _17
	movq	spritename(%rip), %rax	# spritename, spritename.6_18
	movq	%rax, %rsi	# spritename.6_18,
	leaq	.LC2(%rip), %rax	#, tmp161
	movq	%rax, %rdi	# tmp161,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L11:
# r_things.c:146:     sprtemp[frame].rotate = true;
	.loc 1 146 27
	movl	-24(%rbp), %edx	# frame, tmp162
	movq	%rdx, %rax	# tmp162, tmp164
	salq	$3, %rax	#, tmp165
	subq	%rdx, %rax	# tmp162, tmp164
	salq	$2, %rax	#, tmp166
	movq	%rax, %rdx	# tmp164, tmp163
	leaq	sprtemp(%rip), %rax	#, tmp167
	movl	$1, (%rdx,%rax)	#, sprtemp[frame_38(D)].rotate
# r_things.c:149:     rotation--;		
	.loc 1 149 13
	subl	$1, -28(%rbp)	#, rotation
# r_things.c:150:     if (sprtemp[frame].lump[rotation] != -1)
	.loc 1 150 28
	movl	-28(%rbp), %ecx	# rotation, tmp168
	movl	-24(%rbp), %edx	# frame, tmp169
	movq	%rdx, %rax	# tmp169, tmp170
	salq	$3, %rax	#, tmp171
	subq	%rdx, %rax	# tmp169, tmp170
	addq	%rax, %rax	# tmp172
	addq	%rcx, %rax	# tmp168, tmp173
	leaq	(%rax,%rax), %rdx	#, tmp174
	leaq	4+sprtemp(%rip), %rax	#, tmp175
	movzwl	(%rdx,%rax), %eax	# sprtemp[frame_38(D)].lump[rotation_46], _19
# r_things.c:150:     if (sprtemp[frame].lump[rotation] != -1)
	.loc 1 150 8
	cmpw	$-1, %ax	#, _19
	je	.L12	#,
# r_things.c:151: 	I_Error ("R_InitSprites: Sprite %s : %c : %c "
	.loc 1 151 2
	movl	-28(%rbp), %eax	# rotation, tmp176
	leal	49(%rax), %ecx	#, _20
	movl	-24(%rbp), %eax	# frame, tmp177
	leal	65(%rax), %edx	#, _21
	movq	spritename(%rip), %rax	# spritename, spritename.7_22
	movq	%rax, %rsi	# spritename.7_22,
	leaq	.LC3(%rip), %rax	#, tmp178
	movq	%rax, %rdi	# tmp178,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L12:
# r_things.c:155:     sprtemp[frame].lump[rotation] = lump - firstspritelump;
	.loc 1 155 42
	movl	-20(%rbp), %eax	# lump, tmp179
	movl	%eax, %edx	# tmp179, _23
	movl	firstspritelump(%rip), %eax	# firstspritelump, firstspritelump.8_24
	movl	%eax, %ecx	# firstspritelump.8_24, _25
	movl	%edx, %eax	# _23, _23
	subl	%ecx, %eax	# _25, _23
	movl	%eax, %esi	# _26, _27
# r_things.c:155:     sprtemp[frame].lump[rotation] = lump - firstspritelump;
	.loc 1 155 35
	movl	-28(%rbp), %ecx	# rotation, tmp180
	movl	-24(%rbp), %edx	# frame, tmp181
	movq	%rdx, %rax	# tmp181, tmp182
	salq	$3, %rax	#, tmp183
	subq	%rdx, %rax	# tmp181, tmp182
	addq	%rax, %rax	# tmp184
	addq	%rcx, %rax	# tmp180, tmp185
	leaq	(%rax,%rax), %rdx	#, tmp186
	leaq	4+sprtemp(%rip), %rax	#, tmp187
	movw	%si, (%rdx,%rax)	# _27, sprtemp[frame_38(D)].lump[rotation_46]
# r_things.c:156:     sprtemp[frame].flip[rotation] = (byte)flipped;
	.loc 1 156 37
	movl	-32(%rbp), %eax	# flipped, tmp188
	movl	%eax, %esi	# tmp188, _28
# r_things.c:156:     sprtemp[frame].flip[rotation] = (byte)flipped;
	.loc 1 156 35
	movl	-28(%rbp), %ecx	# rotation, tmp189
	movl	-24(%rbp), %edx	# frame, tmp190
	movq	%rdx, %rax	# tmp190, tmp191
	salq	$3, %rax	#, tmp192
	subq	%rdx, %rax	# tmp190, tmp191
	salq	$2, %rax	#, tmp193
	leaq	(%rax,%rcx), %rdx	#, tmp194
	leaq	20+sprtemp(%rip), %rax	#, tmp196
	addq	%rdx, %rax	# tmp194, tmp195
	movb	%sil, (%rax)	# _28, sprtemp[frame_38(D)].flip[rotation_46]
.L1:
# r_things.c:157: }
	.loc 1 157 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	R_InstallSpriteLump, .-R_InstallSpriteLump
	.section	.rodata
	.align 8
.LC4:
	.string	"R_InitSprites: No patches found for %s frame %c"
	.align 8
.LC5:
	.string	"R_InitSprites: Sprite %s frame %c is missing rotations"
	.text
	.globl	R_InitSpriteDefs
	.type	R_InitSpriteDefs, @function
R_InitSpriteDefs:
.LFB7:
	.loc 1 178 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# namelist, namelist
# r_things.c:190:     check = namelist;
	.loc 1 190 11
	movq	-72(%rbp), %rax	# namelist, tmp193
	movq	%rax, -24(%rbp)	# tmp193, check
# r_things.c:191:     while (*check != NULL)
	.loc 1 191 11
	jmp	.L14	#
.L15:
# r_things.c:192: 	check++;
	.loc 1 192 7
	addq	$8, -24(%rbp)	#, check
.L14:
# r_things.c:191:     while (*check != NULL)
	.loc 1 191 12
	movq	-24(%rbp), %rax	# check, tmp194
	movq	(%rax), %rax	# *check_112, _1
# r_things.c:191:     while (*check != NULL)
	.loc 1 191 19
	testq	%rax, %rax	# _1
	jne	.L15	#,
# r_things.c:194:     numsprites = check-namelist;
	.loc 1 194 23
	movq	-24(%rbp), %rax	# check, tmp195
	subq	-72(%rbp), %rax	# namelist, _2
	sarq	$3, %rax	#, tmp196
# r_things.c:194:     numsprites = check-namelist;
	.loc 1 194 16
	movl	%eax, numsprites(%rip)	# _4, numsprites
# r_things.c:196:     if (!numsprites)
	.loc 1 196 9
	movl	numsprites(%rip), %eax	# numsprites, numsprites.9_5
# r_things.c:196:     if (!numsprites)
	.loc 1 196 8
	testl	%eax, %eax	# numsprites.9_5
	je	.L36	#,
# r_things.c:199:     sprites = Z_Malloc(numsprites *sizeof(*sprites), PU_STATIC, NULL);
	.loc 1 199 15
	movl	numsprites(%rip), %eax	# numsprites, numsprites.10_6
	cltq
	sall	$4, %eax	#, _9
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# _10,
	call	Z_Malloc@PLT	#
# r_things.c:199:     sprites = Z_Malloc(numsprites *sizeof(*sprites), PU_STATIC, NULL);
	.loc 1 199 13 discriminator 1
	movq	%rax, sprites(%rip)	# _11, sprites
# r_things.c:201:     start = firstspritelump-1;
	.loc 1 201 28
	movl	firstspritelump(%rip), %eax	# firstspritelump, firstspritelump.11_12
# r_things.c:201:     start = firstspritelump-1;
	.loc 1 201 11
	subl	$1, %eax	#, tmp197
	movl	%eax, -36(%rbp)	# tmp197, start
# r_things.c:202:     end = lastspritelump+1;
	.loc 1 202 25
	movl	lastspritelump(%rip), %eax	# lastspritelump, lastspritelump.12_13
# r_things.c:202:     end = lastspritelump+1;
	.loc 1 202 9
	addl	$1, %eax	#, tmp198
	movl	%eax, -32(%rbp)	# tmp198, end
# r_things.c:207:     for (i=0 ; i<numsprites ; i++)
	.loc 1 207 11
	movl	$0, -56(%rbp)	#, i
# r_things.c:207:     for (i=0 ; i<numsprites ; i++)
	.loc 1 207 5
	jmp	.L18	#
.L35:
# r_things.c:209: 	spritename = namelist[i];
	.loc 1 209 23
	movl	-56(%rbp), %eax	# i, tmp199
	cltq
	leaq	0(,%rax,8), %rdx	#, _15
	movq	-72(%rbp), %rax	# namelist, tmp200
	addq	%rdx, %rax	# _15, _16
	movq	(%rax), %rax	# *_16, _17
# r_things.c:209: 	spritename = namelist[i];
	.loc 1 209 13
	movq	%rax, spritename(%rip)	# _17, spritename
# r_things.c:210: 	memset (sprtemp,-1, sizeof(sprtemp));
	.loc 1 210 2
	movl	$812, %edx	#,
	movl	$-1, %esi	#,
	leaq	sprtemp(%rip), %rax	#, tmp201
	movq	%rax, %rdi	# tmp201,
	call	memset@PLT	#
# r_things.c:212: 	maxframe = -1;
	.loc 1 212 11
	movl	$-1, maxframe(%rip)	#, maxframe
# r_things.c:213: 	intname = *(int *)namelist[i];
	.loc 1 213 28
	movl	-56(%rbp), %eax	# i, tmp202
	cltq
	leaq	0(,%rax,8), %rdx	#, _19
	movq	-72(%rbp), %rax	# namelist, tmp203
	addq	%rdx, %rax	# _19, _20
# r_things.c:213: 	intname = *(int *)namelist[i];
	.loc 1 213 13
	movq	(%rax), %rax	# *_20, _21
# r_things.c:213: 	intname = *(int *)namelist[i];
	.loc 1 213 10
	movl	(%rax), %eax	# MEM[(int *)_21], tmp204
	movl	%eax, -28(%rbp)	# tmp204, intname
# r_things.c:217: 	for (l=start+1 ; l<end ; l++)
	.loc 1 217 8
	movl	-36(%rbp), %eax	# start, tmp208
	addl	$1, %eax	#, tmp207
	movl	%eax, -52(%rbp)	# tmp207, l
# r_things.c:217: 	for (l=start+1 ; l<end ; l++)
	.loc 1 217 2
	jmp	.L19	#
.L23:
# r_things.c:219: 	    if (*(int *)lumpinfo[l].name == intname)
	.loc 1 219 26
	movq	lumpinfo(%rip), %rcx	# lumpinfo, lumpinfo.13_22
	movl	-52(%rbp), %eax	# l, tmp209
	movslq	%eax, %rdx	# tmp209, _23
	movq	%rdx, %rax	# _23, tmp210
	salq	$2, %rax	#, tmp210
	addq	%rdx, %rax	# _23, tmp210
	salq	$2, %rax	#, tmp211
	addq	%rcx, %rax	# lumpinfo.13_22, _25
# r_things.c:219: 	    if (*(int *)lumpinfo[l].name == intname)
	.loc 1 219 10
	movl	(%rax), %eax	# MEM[(int *)_26], _27
# r_things.c:219: 	    if (*(int *)lumpinfo[l].name == intname)
	.loc 1 219 9
	cmpl	%eax, -28(%rbp)	# _27, intname
	jne	.L20	#,
# r_things.c:221: 		frame = lumpinfo[l].name[4] - 'A';
	.loc 1 221 19
	movq	lumpinfo(%rip), %rcx	# lumpinfo, lumpinfo.14_28
	movl	-52(%rbp), %eax	# l, tmp212
	movslq	%eax, %rdx	# tmp212, _29
	movq	%rdx, %rax	# _29, tmp213
	salq	$2, %rax	#, tmp213
	addq	%rdx, %rax	# _29, tmp213
	salq	$2, %rax	#, tmp214
	addq	%rcx, %rax	# lumpinfo.14_28, _31
# r_things.c:221: 		frame = lumpinfo[l].name[4] - 'A';
	.loc 1 221 27
	movzbl	4(%rax), %eax	# _31->name[4], _32
	movsbl	%al, %eax	# _32, _33
# r_things.c:221: 		frame = lumpinfo[l].name[4] - 'A';
	.loc 1 221 9
	subl	$65, %eax	#, tmp215
	movl	%eax, -48(%rbp)	# tmp215, frame
# r_things.c:222: 		rotation = lumpinfo[l].name[5] - '0';
	.loc 1 222 22
	movq	lumpinfo(%rip), %rcx	# lumpinfo, lumpinfo.15_34
	movl	-52(%rbp), %eax	# l, tmp216
	movslq	%eax, %rdx	# tmp216, _35
	movq	%rdx, %rax	# _35, tmp217
	salq	$2, %rax	#, tmp217
	addq	%rdx, %rax	# _35, tmp217
	salq	$2, %rax	#, tmp218
	addq	%rcx, %rax	# lumpinfo.15_34, _37
# r_things.c:222: 		rotation = lumpinfo[l].name[5] - '0';
	.loc 1 222 30
	movzbl	5(%rax), %eax	# _37->name[5], _38
	movsbl	%al, %eax	# _38, _39
# r_things.c:222: 		rotation = lumpinfo[l].name[5] - '0';
	.loc 1 222 12
	subl	$48, %eax	#, tmp219
	movl	%eax, -44(%rbp)	# tmp219, rotation
# r_things.c:224: 		if (modifiedgame)
	.loc 1 224 7
	movl	modifiedgame(%rip), %eax	# modifiedgame, modifiedgame.16_40
# r_things.c:224: 		if (modifiedgame)
	.loc 1 224 6
	testl	%eax, %eax	# modifiedgame.16_40
	je	.L21	#,
# r_things.c:225: 		    patched = W_GetNumForName (lumpinfo[l].name);
	.loc 1 225 42
	movq	lumpinfo(%rip), %rcx	# lumpinfo, lumpinfo.17_41
	movl	-52(%rbp), %eax	# l, tmp220
	movslq	%eax, %rdx	# tmp220, _42
	movq	%rdx, %rax	# _42, tmp221
	salq	$2, %rax	#, tmp221
	addq	%rdx, %rax	# _42, tmp221
	salq	$2, %rax	#, tmp222
	addq	%rcx, %rax	# lumpinfo.17_41, _44
# r_things.c:225: 		    patched = W_GetNumForName (lumpinfo[l].name);
	.loc 1 225 17
	movq	%rax, %rdi	# _45,
	call	W_GetNumForName@PLT	#
	movl	%eax, -40(%rbp)	# tmp223, patched
	jmp	.L22	#
.L21:
# r_things.c:227: 		    patched = l;
	.loc 1 227 15
	movl	-52(%rbp), %eax	# l, tmp224
	movl	%eax, -40(%rbp)	# tmp224, patched
.L22:
# r_things.c:229: 		R_InstallSpriteLump (patched, frame, rotation, false);
	.loc 1 229 3
	movl	-44(%rbp), %edx	# rotation, rotation.18_46
	movl	-48(%rbp), %esi	# frame, frame.19_47
	movl	-40(%rbp), %eax	# patched, tmp225
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp225,
	call	R_InstallSpriteLump	#
# r_things.c:231: 		if (lumpinfo[l].name[6])
	.loc 1 231 15
	movq	lumpinfo(%rip), %rcx	# lumpinfo, lumpinfo.20_48
	movl	-52(%rbp), %eax	# l, tmp226
	movslq	%eax, %rdx	# tmp226, _49
	movq	%rdx, %rax	# _49, tmp227
	salq	$2, %rax	#, tmp227
	addq	%rdx, %rax	# _49, tmp227
	salq	$2, %rax	#, tmp228
	addq	%rcx, %rax	# lumpinfo.20_48, _51
# r_things.c:231: 		if (lumpinfo[l].name[6])
	.loc 1 231 23
	movzbl	6(%rax), %eax	# _51->name[6], _52
# r_things.c:231: 		if (lumpinfo[l].name[6])
	.loc 1 231 6
	testb	%al, %al	# _52
	je	.L20	#,
# r_things.c:233: 		    frame = lumpinfo[l].name[6] - 'A';
	.loc 1 233 23
	movq	lumpinfo(%rip), %rcx	# lumpinfo, lumpinfo.21_53
	movl	-52(%rbp), %eax	# l, tmp229
	movslq	%eax, %rdx	# tmp229, _54
	movq	%rdx, %rax	# _54, tmp230
	salq	$2, %rax	#, tmp230
	addq	%rdx, %rax	# _54, tmp230
	salq	$2, %rax	#, tmp231
	addq	%rcx, %rax	# lumpinfo.21_53, _56
# r_things.c:233: 		    frame = lumpinfo[l].name[6] - 'A';
	.loc 1 233 31
	movzbl	6(%rax), %eax	# _56->name[6], _57
	movsbl	%al, %eax	# _57, _58
# r_things.c:233: 		    frame = lumpinfo[l].name[6] - 'A';
	.loc 1 233 13
	subl	$65, %eax	#, tmp232
	movl	%eax, -48(%rbp)	# tmp232, frame
# r_things.c:234: 		    rotation = lumpinfo[l].name[7] - '0';
	.loc 1 234 26
	movq	lumpinfo(%rip), %rcx	# lumpinfo, lumpinfo.22_59
	movl	-52(%rbp), %eax	# l, tmp233
	movslq	%eax, %rdx	# tmp233, _60
	movq	%rdx, %rax	# _60, tmp234
	salq	$2, %rax	#, tmp234
	addq	%rdx, %rax	# _60, tmp234
	salq	$2, %rax	#, tmp235
	addq	%rcx, %rax	# lumpinfo.22_59, _62
# r_things.c:234: 		    rotation = lumpinfo[l].name[7] - '0';
	.loc 1 234 34
	movzbl	7(%rax), %eax	# _62->name[7], _63
	movsbl	%al, %eax	# _63, _64
# r_things.c:234: 		    rotation = lumpinfo[l].name[7] - '0';
	.loc 1 234 16
	subl	$48, %eax	#, tmp236
	movl	%eax, -44(%rbp)	# tmp236, rotation
# r_things.c:235: 		    R_InstallSpriteLump (l, frame, rotation, true);
	.loc 1 235 7
	movl	-44(%rbp), %edx	# rotation, rotation.23_65
	movl	-48(%rbp), %esi	# frame, frame.24_66
	movl	-52(%rbp), %eax	# l, tmp237
	movl	$1, %ecx	#,
	movl	%eax, %edi	# tmp237,
	call	R_InstallSpriteLump	#
.L20:
# r_things.c:217: 	for (l=start+1 ; l<end ; l++)
	.loc 1 217 28 discriminator 2
	addl	$1, -52(%rbp)	#, l
.L19:
# r_things.c:217: 	for (l=start+1 ; l<end ; l++)
	.loc 1 217 20 discriminator 1
	movl	-52(%rbp), %eax	# l, tmp238
	cmpl	-32(%rbp), %eax	# end, tmp238
	jl	.L23	#,
# r_things.c:241: 	if (maxframe == -1)
	.loc 1 241 15
	movl	maxframe(%rip), %eax	# maxframe, maxframe.25_67
# r_things.c:241: 	if (maxframe == -1)
	.loc 1 241 5
	cmpl	$-1, %eax	#, maxframe.25_67
	jne	.L24	#,
# r_things.c:243: 	    sprites[i].numframes = 0;
	.loc 1 243 13
	movq	sprites(%rip), %rax	# sprites, sprites.26_68
	movl	-56(%rbp), %edx	# i, tmp239
	movslq	%edx, %rdx	# tmp239, _69
	salq	$4, %rdx	#, _70
	addq	%rdx, %rax	# _70, _71
# r_things.c:243: 	    sprites[i].numframes = 0;
	.loc 1 243 27
	movl	$0, (%rax)	#, _71->numframes
# r_things.c:244: 	    continue;
	.loc 1 244 6
	jmp	.L25	#
.L24:
# r_things.c:247: 	maxframe++;
	.loc 1 247 10
	movl	maxframe(%rip), %eax	# maxframe, maxframe.27_72
	addl	$1, %eax	#, _73
	movl	%eax, maxframe(%rip)	# _73, maxframe
# r_things.c:249: 	for (frame = 0 ; frame < maxframe ; frame++)
	.loc 1 249 13
	movl	$0, -48(%rbp)	#, frame
# r_things.c:249: 	for (frame = 0 ; frame < maxframe ; frame++)
	.loc 1 249 2
	jmp	.L26	#
.L34:
# r_things.c:251: 	    switch ((int)sprtemp[frame].rotate)
	.loc 1 251 33
	movl	-48(%rbp), %eax	# frame, tmp241
	movslq	%eax, %rdx	# tmp241, tmp240
	movq	%rdx, %rax	# tmp240, tmp243
	salq	$3, %rax	#, tmp244
	subq	%rdx, %rax	# tmp240, tmp243
	salq	$2, %rax	#, tmp245
	movq	%rax, %rdx	# tmp243, tmp242
	leaq	sprtemp(%rip), %rax	#, tmp246
	movl	(%rdx,%rax), %eax	# sprtemp[frame_115].rotate, _74
# r_things.c:251: 	    switch ((int)sprtemp[frame].rotate)
	.loc 1 251 6
	cmpl	$1, %eax	#, _75
	je	.L27	#,
	cmpl	$1, %eax	#, _75
	jg	.L28	#,
	cmpl	$-1, %eax	#, _75
	je	.L29	#,
	testl	%eax, %eax	# _75
# r_things.c:261: 		break;
	.loc 1 261 3
	jmp	.L28	#
.L29:
# r_things.c:255: 		I_Error ("R_InitSprites: No patches found "
	.loc 1 255 3
	movl	-48(%rbp), %eax	# frame, tmp247
	leal	65(%rax), %edx	#, _76
# r_things.c:256: 			 "for %s frame %c", namelist[i], frame+'A');
	.loc 1 256 32
	movl	-56(%rbp), %eax	# i, tmp248
	cltq
	leaq	0(,%rax,8), %rcx	#, _78
	movq	-72(%rbp), %rax	# namelist, tmp249
	addq	%rcx, %rax	# _78, _79
# r_things.c:255: 		I_Error ("R_InitSprites: No patches found "
	.loc 1 255 3
	movq	(%rax), %rax	# *_79, _80
	movq	%rax, %rsi	# _80,
	leaq	.LC4(%rip), %rax	#, tmp250
	movq	%rax, %rdi	# tmp250,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
# r_things.c:257: 		break;
	.loc 1 257 3
	jmp	.L28	#
.L27:
# r_things.c:265: 		for (rotation=0 ; rotation<8 ; rotation++)
	.loc 1 265 16
	movl	$0, -44(%rbp)	#, rotation
# r_things.c:265: 		for (rotation=0 ; rotation<8 ; rotation++)
	.loc 1 265 3
	jmp	.L31	#
.L33:
# r_things.c:266: 		    if (sprtemp[frame].lump[rotation] == -1)
	.loc 1 266 30
	movl	-44(%rbp), %eax	# rotation, tmp252
	movslq	%eax, %rcx	# tmp252, tmp251
	movl	-48(%rbp), %eax	# frame, tmp254
	movslq	%eax, %rdx	# tmp254, tmp253
	movq	%rdx, %rax	# tmp253, tmp255
	salq	$3, %rax	#, tmp256
	subq	%rdx, %rax	# tmp253, tmp255
	addq	%rax, %rax	# tmp257
	addq	%rcx, %rax	# tmp251, tmp258
	leaq	(%rax,%rax), %rdx	#, tmp259
	leaq	4+sprtemp(%rip), %rax	#, tmp260
	movzwl	(%rdx,%rax), %eax	# sprtemp[frame_115].lump[rotation_116], _81
# r_things.c:266: 		    if (sprtemp[frame].lump[rotation] == -1)
	.loc 1 266 10
	cmpw	$-1, %ax	#, _81
	jne	.L32	#,
# r_things.c:267: 			I_Error ("R_InitSprites: Sprite %s frame %c "
	.loc 1 267 4
	movl	-48(%rbp), %eax	# frame, tmp261
	leal	65(%rax), %edx	#, _82
# r_things.c:269: 				 namelist[i], frame+'A');
	.loc 1 269 14
	movl	-56(%rbp), %eax	# i, tmp262
	cltq
	leaq	0(,%rax,8), %rcx	#, _84
	movq	-72(%rbp), %rax	# namelist, tmp263
	addq	%rcx, %rax	# _84, _85
# r_things.c:267: 			I_Error ("R_InitSprites: Sprite %s frame %c "
	.loc 1 267 4
	movq	(%rax), %rax	# *_85, _86
	movq	%rax, %rsi	# _86,
	leaq	.LC5(%rip), %rax	#, tmp264
	movq	%rax, %rdi	# tmp264,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L32:
# r_things.c:265: 		for (rotation=0 ; rotation<8 ; rotation++)
	.loc 1 265 42 discriminator 2
	addl	$1, -44(%rbp)	#, rotation
.L31:
# r_things.c:265: 		for (rotation=0 ; rotation<8 ; rotation++)
	.loc 1 265 29 discriminator 1
	cmpl	$7, -44(%rbp)	#, rotation
	jle	.L33	#,
# r_things.c:270: 		break;
	.loc 1 270 3
	nop	
.L28:
# r_things.c:249: 	for (frame = 0 ; frame < maxframe ; frame++)
	.loc 1 249 43 discriminator 2
	addl	$1, -48(%rbp)	#, frame
.L26:
# r_things.c:249: 	for (frame = 0 ; frame < maxframe ; frame++)
	.loc 1 249 25 discriminator 1
	movl	maxframe(%rip), %eax	# maxframe, maxframe.28_87
	cmpl	%eax, -48(%rbp)	# maxframe.28_87, frame
	jl	.L34	#,
# r_things.c:275: 	sprites[i].numframes = maxframe;
	.loc 1 275 9
	movq	sprites(%rip), %rax	# sprites, sprites.29_88
	movl	-56(%rbp), %edx	# i, tmp265
	movslq	%edx, %rdx	# tmp265, _89
	salq	$4, %rdx	#, _90
	addq	%rax, %rdx	# sprites.29_88, _91
# r_things.c:275: 	sprites[i].numframes = maxframe;
	.loc 1 275 23
	movl	maxframe(%rip), %eax	# maxframe, maxframe.30_92
	movl	%eax, (%rdx)	# maxframe.30_92, _91->numframes
# r_things.c:277: 	    Z_Malloc (maxframe * sizeof(spriteframe_t), PU_STATIC, NULL);
	.loc 1 277 6
	movl	maxframe(%rip), %eax	# maxframe, maxframe.31_93
	cltq
	imull	$28, %eax, %eax	#, _95, _96
	movl	%eax, %ecx	# _96, _97
# r_things.c:276: 	sprites[i].spriteframes = 
	.loc 1 276 9
	movq	sprites(%rip), %rax	# sprites, sprites.32_98
	movl	-56(%rbp), %edx	# i, tmp266
	movslq	%edx, %rdx	# tmp266, _99
	salq	$4, %rdx	#, _100
	leaq	(%rax,%rdx), %rbx	#, _101
# r_things.c:277: 	    Z_Malloc (maxframe * sizeof(spriteframe_t), PU_STATIC, NULL);
	.loc 1 277 6
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%ecx, %edi	# _97,
	call	Z_Malloc@PLT	#
# r_things.c:276: 	sprites[i].spriteframes = 
	.loc 1 276 26
	movq	%rax, 8(%rbx)	# _102, _101->spriteframes
# r_things.c:278: 	memcpy (sprites[i].spriteframes, sprtemp, maxframe*sizeof(spriteframe_t));
	.loc 1 278 2
	movl	maxframe(%rip), %eax	# maxframe, maxframe.33_103
	movslq	%eax, %rdx	# maxframe.33_103, _104
	movq	%rdx, %rax	# _104, tmp267
	salq	$3, %rax	#, tmp268
	subq	%rdx, %rax	# _104, tmp267
	salq	$2, %rax	#, tmp269
	movq	%rax, %rcx	# tmp267, _105
# r_things.c:278: 	memcpy (sprites[i].spriteframes, sprtemp, maxframe*sizeof(spriteframe_t));
	.loc 1 278 17
	movq	sprites(%rip), %rax	# sprites, sprites.34_106
	movl	-56(%rbp), %edx	# i, tmp270
	movslq	%edx, %rdx	# tmp270, _107
	salq	$4, %rdx	#, _108
	addq	%rdx, %rax	# _108, _109
# r_things.c:278: 	memcpy (sprites[i].spriteframes, sprtemp, maxframe*sizeof(spriteframe_t));
	.loc 1 278 20
	movq	8(%rax), %rax	# _109->spriteframes, _110
# r_things.c:278: 	memcpy (sprites[i].spriteframes, sprtemp, maxframe*sizeof(spriteframe_t));
	.loc 1 278 2
	movq	%rcx, %rdx	# _105,
	leaq	sprtemp(%rip), %rcx	#, tmp271
	movq	%rcx, %rsi	# tmp271,
	movq	%rax, %rdi	# _110,
	call	memcpy@PLT	#
.L25:
# r_things.c:207:     for (i=0 ; i<numsprites ; i++)
	.loc 1 207 32 discriminator 2
	addl	$1, -56(%rbp)	#, i
.L18:
# r_things.c:207:     for (i=0 ; i<numsprites ; i++)
	.loc 1 207 17 discriminator 1
	movl	numsprites(%rip), %eax	# numsprites, numsprites.35_111
	cmpl	%eax, -56(%rbp)	# numsprites.35_111, i
	jl	.L35	#,
	jmp	.L13	#
.L36:
# r_things.c:197: 	return;
	.loc 1 197 2
	nop	
.L13:
# r_things.c:281: }
	.loc 1 281 1
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	R_InitSpriteDefs, .-R_InitSpriteDefs
	.globl	vissprites
	.bss
	.align 32
	.type	vissprites, @object
	.size	vissprites, 10240
vissprites:
	.zero	10240
	.globl	vissprite_p
	.align 8
	.type	vissprite_p, @object
	.size	vissprite_p, 8
vissprite_p:
	.zero	8
	.globl	newvissprite
	.align 4
	.type	newvissprite, @object
	.size	newvissprite, 4
newvissprite:
	.zero	4
	.text
	.globl	R_InitSprites
	.type	R_InitSprites, @function
R_InitSprites:
.LFB8:
	.loc 1 300 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# namelist, namelist
# r_things.c:303:     for (i=0 ; i<SCREENWIDTH ; i++)
	.loc 1 303 11
	movl	$0, -4(%rbp)	#, i
# r_things.c:303:     for (i=0 ; i<SCREENWIDTH ; i++)
	.loc 1 303 5
	jmp	.L38	#
.L39:
# r_things.c:305: 	negonearray[i] = -1;
	.loc 1 305 17
	movl	-4(%rbp), %eax	# i, tmp83
	cltq
	leaq	(%rax,%rax), %rdx	#, tmp84
	leaq	negonearray(%rip), %rax	#, tmp85
	movw	$-1, (%rdx,%rax)	#, negonearray[i_1]
# r_things.c:303:     for (i=0 ; i<SCREENWIDTH ; i++)
	.loc 1 303 33 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L38:
# r_things.c:303:     for (i=0 ; i<SCREENWIDTH ; i++)
	.loc 1 303 17 discriminator 1
	cmpl	$319, -4(%rbp)	#, i
	jle	.L39	#,
# r_things.c:308:     R_InitSpriteDefs (namelist);
	.loc 1 308 5
	movq	-24(%rbp), %rax	# namelist, tmp86
	movq	%rax, %rdi	# tmp86,
	call	R_InitSpriteDefs	#
# r_things.c:309: }
	.loc 1 309 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	R_InitSprites, .-R_InitSprites
	.globl	R_ClearSprites
	.type	R_ClearSprites, @function
R_ClearSprites:
.LFB9:
	.loc 1 318 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# r_things.c:319:     vissprite_p = vissprites;
	.loc 1 319 17
	leaq	vissprites(%rip), %rax	#, tmp82
	movq	%rax, vissprite_p(%rip)	# tmp82, vissprite_p
# r_things.c:320: }
	.loc 1 320 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	R_ClearSprites, .-R_ClearSprites
	.globl	overflowsprite
	.bss
	.align 32
	.type	overflowsprite, @object
	.size	overflowsprite, 80
overflowsprite:
	.zero	80
	.text
	.globl	R_NewVisSprite
	.type	R_NewVisSprite, @function
R_NewVisSprite:
.LFB10:
	.loc 1 329 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# r_things.c:330:     if (vissprite_p == &vissprites[MAXVISSPRITES])
	.loc 1 330 21
	movq	vissprite_p(%rip), %rdx	# vissprite_p, vissprite_p.36_1
# r_things.c:330:     if (vissprite_p == &vissprites[MAXVISSPRITES])
	.loc 1 330 8
	leaq	10240+vissprites(%rip), %rax	#, tmp88
	cmpq	%rax, %rdx	# tmp88, vissprite_p.36_1
	jne	.L42	#,
# r_things.c:331: 	return &overflowsprite;
	.loc 1 331 9
	leaq	overflowsprite(%rip), %rax	#, _5
	jmp	.L43	#
.L42:
# r_things.c:333:     vissprite_p++;
	.loc 1 333 16
	movq	vissprite_p(%rip), %rax	# vissprite_p, vissprite_p.37_2
	addq	$80, %rax	#, _3
	movq	%rax, vissprite_p(%rip)	# _3, vissprite_p
# r_things.c:334:     return vissprite_p-1;
	.loc 1 334 23
	movq	vissprite_p(%rip), %rax	# vissprite_p, vissprite_p.38_4
	subq	$80, %rax	#, _5
.L43:
# r_things.c:335: }
	.loc 1 335 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	R_NewVisSprite, .-R_NewVisSprite
	.globl	mfloorclip
	.bss
	.align 8
	.type	mfloorclip, @object
	.size	mfloorclip, 8
mfloorclip:
	.zero	8
	.globl	mceilingclip
	.align 8
	.type	mceilingclip, @object
	.size	mceilingclip, 8
mceilingclip:
	.zero	8
	.globl	spryscale
	.align 4
	.type	spryscale, @object
	.size	spryscale, 4
spryscale:
	.zero	4
	.globl	sprtopscreen
	.align 4
	.type	sprtopscreen, @object
	.size	sprtopscreen, 4
sprtopscreen:
	.zero	4
	.text
	.globl	R_DrawMaskedColumn
	.type	R_DrawMaskedColumn, @function
R_DrawMaskedColumn:
.LFB11:
	.loc 1 352 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# column, column
# r_things.c:357:     basetexturemid = dc_texturemid;
	.loc 1 357 20
	movl	dc_texturemid(%rip), %eax	# dc_texturemid, tmp139
	movl	%eax, -12(%rbp)	# tmp139, basetexturemid
# r_things.c:359:     for ( ; column->topdelta != 0xff ; ) 
	.loc 1 359 5
	jmp	.L45	#
.L49:
# r_things.c:363: 	topscreen = sprtopscreen + spryscale*column->topdelta;
	.loc 1 363 45
	movq	-24(%rbp), %rax	# column, tmp140
	movzbl	(%rax), %eax	# column_58->topdelta, _1
	movzbl	%al, %edx	# _1, _2
# r_things.c:363: 	topscreen = sprtopscreen + spryscale*column->topdelta;
	.loc 1 363 38
	movl	spryscale(%rip), %eax	# spryscale, spryscale.39_3
	imull	%eax, %edx	# spryscale.39_3, _4
# r_things.c:363: 	topscreen = sprtopscreen + spryscale*column->topdelta;
	.loc 1 363 27
	movl	sprtopscreen(%rip), %eax	# sprtopscreen, sprtopscreen.40_5
# r_things.c:363: 	topscreen = sprtopscreen + spryscale*column->topdelta;
	.loc 1 363 12
	addl	%edx, %eax	# _4, tmp141
	movl	%eax, -8(%rbp)	# tmp141, topscreen
# r_things.c:364: 	bottomscreen = topscreen + spryscale*column->length;
	.loc 1 364 45
	movq	-24(%rbp), %rax	# column, tmp142
	movzbl	1(%rax), %eax	# column_58->length, _6
	movzbl	%al, %edx	# _6, _7
# r_things.c:364: 	bottomscreen = topscreen + spryscale*column->length;
	.loc 1 364 38
	movl	spryscale(%rip), %eax	# spryscale, spryscale.41_8
	imull	%eax, %edx	# spryscale.41_8, _9
# r_things.c:364: 	bottomscreen = topscreen + spryscale*column->length;
	.loc 1 364 15
	movl	-8(%rbp), %eax	# topscreen, tmp146
	addl	%edx, %eax	# _9, tmp145
	movl	%eax, -4(%rbp)	# tmp145, bottomscreen
# r_things.c:366: 	dc_yl = (topscreen+FRACUNIT-1)>>FRACBITS;
	.loc 1 366 29
	movl	-8(%rbp), %eax	# topscreen, tmp147
	addl	$65535, %eax	#, _10
# r_things.c:366: 	dc_yl = (topscreen+FRACUNIT-1)>>FRACBITS;
	.loc 1 366 32
	sarl	$16, %eax	#, _11
# r_things.c:366: 	dc_yl = (topscreen+FRACUNIT-1)>>FRACBITS;
	.loc 1 366 8
	movl	%eax, dc_yl(%rip)	# _11, dc_yl
# r_things.c:367: 	dc_yh = (bottomscreen-1)>>FRACBITS;
	.loc 1 367 23
	movl	-4(%rbp), %eax	# bottomscreen, tmp148
	subl	$1, %eax	#, _12
# r_things.c:367: 	dc_yh = (bottomscreen-1)>>FRACBITS;
	.loc 1 367 26
	sarl	$16, %eax	#, _13
# r_things.c:367: 	dc_yh = (bottomscreen-1)>>FRACBITS;
	.loc 1 367 8
	movl	%eax, dc_yh(%rip)	# _13, dc_yh
# r_things.c:369: 	if (dc_yh >= mfloorclip[dc_x])
	.loc 1 369 25
	movq	mfloorclip(%rip), %rax	# mfloorclip, mfloorclip.42_14
	movl	dc_x(%rip), %edx	# dc_x, dc_x.43_15
	movslq	%edx, %rdx	# dc_x.43_15, _16
	addq	%rdx, %rdx	# _17
	addq	%rdx, %rax	# _17, _18
	movzwl	(%rax), %eax	# *_18, _19
	movswl	%ax, %edx	# _19, _20
# r_things.c:369: 	if (dc_yh >= mfloorclip[dc_x])
	.loc 1 369 12
	movl	dc_yh(%rip), %eax	# dc_yh, dc_yh.44_21
# r_things.c:369: 	if (dc_yh >= mfloorclip[dc_x])
	.loc 1 369 5
	cmpl	%eax, %edx	# dc_yh.44_21, _20
	jg	.L46	#,
# r_things.c:370: 	    dc_yh = mfloorclip[dc_x]-1;
	.loc 1 370 24
	movq	mfloorclip(%rip), %rax	# mfloorclip, mfloorclip.45_22
	movl	dc_x(%rip), %edx	# dc_x, dc_x.46_23
	movslq	%edx, %rdx	# dc_x.46_23, _24
	addq	%rdx, %rdx	# _25
	addq	%rdx, %rax	# _25, _26
	movzwl	(%rax), %eax	# *_26, _27
	cwtl
# r_things.c:370: 	    dc_yh = mfloorclip[dc_x]-1;
	.loc 1 370 30
	subl	$1, %eax	#, _29
# r_things.c:370: 	    dc_yh = mfloorclip[dc_x]-1;
	.loc 1 370 12
	movl	%eax, dc_yh(%rip)	# _29, dc_yh
.L46:
# r_things.c:371: 	if (dc_yl <= mceilingclip[dc_x])
	.loc 1 371 27
	movq	mceilingclip(%rip), %rax	# mceilingclip, mceilingclip.47_30
	movl	dc_x(%rip), %edx	# dc_x, dc_x.48_31
	movslq	%edx, %rdx	# dc_x.48_31, _32
	addq	%rdx, %rdx	# _33
	addq	%rdx, %rax	# _33, _34
	movzwl	(%rax), %eax	# *_34, _35
	movswl	%ax, %edx	# _35, _36
# r_things.c:371: 	if (dc_yl <= mceilingclip[dc_x])
	.loc 1 371 12
	movl	dc_yl(%rip), %eax	# dc_yl, dc_yl.49_37
# r_things.c:371: 	if (dc_yl <= mceilingclip[dc_x])
	.loc 1 371 5
	cmpl	%eax, %edx	# dc_yl.49_37, _36
	jl	.L47	#,
# r_things.c:372: 	    dc_yl = mceilingclip[dc_x]+1;
	.loc 1 372 26
	movq	mceilingclip(%rip), %rax	# mceilingclip, mceilingclip.50_38
	movl	dc_x(%rip), %edx	# dc_x, dc_x.51_39
	movslq	%edx, %rdx	# dc_x.51_39, _40
	addq	%rdx, %rdx	# _41
	addq	%rdx, %rax	# _41, _42
	movzwl	(%rax), %eax	# *_42, _43
	cwtl
# r_things.c:372: 	    dc_yl = mceilingclip[dc_x]+1;
	.loc 1 372 32
	addl	$1, %eax	#, _45
# r_things.c:372: 	    dc_yl = mceilingclip[dc_x]+1;
	.loc 1 372 12
	movl	%eax, dc_yl(%rip)	# _45, dc_yl
.L47:
# r_things.c:374: 	if (dc_yl <= dc_yh)
	.loc 1 374 12
	movl	dc_yl(%rip), %edx	# dc_yl, dc_yl.52_46
	movl	dc_yh(%rip), %eax	# dc_yh, dc_yh.53_47
# r_things.c:374: 	if (dc_yl <= dc_yh)
	.loc 1 374 5
	cmpl	%eax, %edx	# dc_yh.53_47, dc_yl.52_46
	jg	.L48	#,
# r_things.c:376: 	    dc_source = (byte *)column + 3;
	.loc 1 376 33
	movq	-24(%rbp), %rax	# column, tmp149
	addq	$3, %rax	#, _48
# r_things.c:376: 	    dc_source = (byte *)column + 3;
	.loc 1 376 16
	movq	%rax, dc_source(%rip)	# _48, dc_source
# r_things.c:377: 	    dc_texturemid = basetexturemid - (column->topdelta<<FRACBITS);
	.loc 1 377 46
	movq	-24(%rbp), %rax	# column, tmp150
	movzbl	(%rax), %eax	# column_58->topdelta, _49
	movzbl	%al, %eax	# _49, _50
# r_things.c:377: 	    dc_texturemid = basetexturemid - (column->topdelta<<FRACBITS);
	.loc 1 377 56
	sall	$16, %eax	#, _50
	movl	%eax, %edx	# _50, _51
# r_things.c:377: 	    dc_texturemid = basetexturemid - (column->topdelta<<FRACBITS);
	.loc 1 377 37
	movl	-12(%rbp), %eax	# basetexturemid, tmp151
	subl	%edx, %eax	# _51, _52
# r_things.c:377: 	    dc_texturemid = basetexturemid - (column->topdelta<<FRACBITS);
	.loc 1 377 20
	movl	%eax, dc_texturemid(%rip)	# _52, dc_texturemid
# r_things.c:382: 	    colfunc ();	
	.loc 1 382 6
	movq	colfunc(%rip), %rax	# colfunc, colfunc.54_53
	call	*%rax	# colfunc.54_53
.LVL0:
.L48:
# r_things.c:384: 	column = (column_t *)(  (byte *)column + column->length + 4);
	.loc 1 384 49
	movq	-24(%rbp), %rax	# column, tmp152
	movzbl	1(%rax), %eax	# column_58->length, _54
	movzbl	%al, %eax	# _54, _55
# r_things.c:384: 	column = (column_t *)(  (byte *)column + column->length + 4);
	.loc 1 384 58
	addq	$4, %rax	#, _56
# r_things.c:384: 	column = (column_t *)(  (byte *)column + column->length + 4);
	.loc 1 384 9
	addq	%rax, -24(%rbp)	# _56, column
.L45:
# r_things.c:359:     for ( ; column->topdelta != 0xff ; ) 
	.loc 1 359 19
	movq	-24(%rbp), %rax	# column, tmp153
	movzbl	(%rax), %eax	# column_58->topdelta, _57
# r_things.c:359:     for ( ; column->topdelta != 0xff ; ) 
	.loc 1 359 30
	cmpb	$-1, %al	#, _57
	jne	.L49	#,
# r_things.c:387:     dc_texturemid = basetexturemid;
	.loc 1 387 19
	movl	-12(%rbp), %eax	# basetexturemid, tmp154
	movl	%eax, dc_texturemid(%rip)	# tmp154, dc_texturemid
# r_things.c:388: }
	.loc 1 388 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	R_DrawMaskedColumn, .-R_DrawMaskedColumn
	.section	.rodata
	.align 8
.LC6:
	.string	"R_DrawSpriteRange: bad texturecolumn"
	.text
	.globl	R_DrawVisSprite
	.type	R_DrawVisSprite, @function
R_DrawVisSprite:
.LFB12:
	.loc 1 401 1
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
	movq	%rdi, -56(%rbp)	# vis, vis
	movl	%esi, -60(%rbp)	# x1, x1
	movl	%edx, -64(%rbp)	# x2, x2
# r_things.c:408:     patch = W_CacheLumpNum (vis->patch+firstspritelump, PU_CACHE);
	.loc 1 408 32
	movq	-56(%rbp), %rax	# vis, tmp119
	movl	56(%rax), %edx	# vis_43(D)->patch, _1
# r_things.c:408:     patch = W_CacheLumpNum (vis->patch+firstspritelump, PU_CACHE);
	.loc 1 408 13
	movl	firstspritelump(%rip), %eax	# firstspritelump, firstspritelump.55_2
	addl	%edx, %eax	# _1, _3
	movl	$101, %esi	#,
	movl	%eax, %edi	# _3,
	call	W_CacheLumpNum@PLT	#
	movq	%rax, -32(%rbp)	# tmp120, patch
# r_things.c:410:     dc_colormap = vis->colormap;
	.loc 1 410 22
	movq	-56(%rbp), %rax	# vis, tmp121
	movq	64(%rax), %rax	# vis_43(D)->colormap, _4
# r_things.c:410:     dc_colormap = vis->colormap;
	.loc 1 410 17
	movq	%rax, dc_colormap(%rip)	# _4, dc_colormap
# r_things.c:412:     if (!dc_colormap)
	.loc 1 412 9
	movq	dc_colormap(%rip), %rax	# dc_colormap, dc_colormap.56_5
# r_things.c:412:     if (!dc_colormap)
	.loc 1 412 8
	testq	%rax, %rax	# dc_colormap.56_5
	jne	.L51	#,
# r_things.c:415: 	colfunc = fuzzcolfunc;
	.loc 1 415 10
	movq	fuzzcolfunc(%rip), %rax	# fuzzcolfunc, fuzzcolfunc.57_6
	movq	%rax, colfunc(%rip)	# fuzzcolfunc.57_6, colfunc
	jmp	.L52	#
.L51:
# r_things.c:417:     else if (vis->mobjflags & MF_TRANSLATION)
	.loc 1 417 17
	movq	-56(%rbp), %rax	# vis, tmp122
	movl	72(%rax), %eax	# vis_43(D)->mobjflags, _7
# r_things.c:417:     else if (vis->mobjflags & MF_TRANSLATION)
	.loc 1 417 29
	andl	$201326592, %eax	#, _8
# r_things.c:417:     else if (vis->mobjflags & MF_TRANSLATION)
	.loc 1 417 13
	testl	%eax, %eax	# _8
	je	.L52	#,
# r_things.c:419: 	colfunc = R_DrawTranslatedColumn;
	.loc 1 419 10
	movq	R_DrawTranslatedColumn@GOTPCREL(%rip), %rax	#, tmp124
	movq	%rax, colfunc(%rip)	# tmp123, colfunc
# r_things.c:420: 	dc_translation = translationtables - 256 +
	.loc 1 420 43
	movq	translationtables(%rip), %rdx	# translationtables, translationtables.58_9
# r_things.c:421: 	    ( (vis->mobjflags & MF_TRANSLATION) >> (MF_TRANSSHIFT-8) );
	.loc 1 421 12
	movq	-56(%rbp), %rax	# vis, tmp125
	movl	72(%rax), %eax	# vis_43(D)->mobjflags, _10
# r_things.c:421: 	    ( (vis->mobjflags & MF_TRANSLATION) >> (MF_TRANSSHIFT-8) );
	.loc 1 421 42
	sarl	$18, %eax	#, _11
	cltq
	andl	$768, %eax	#, _13
# r_things.c:420: 	dc_translation = translationtables - 256 +
	.loc 1 420 43
	subq	$256, %rax	#, _14
	addq	%rdx, %rax	# translationtables.58_9, _15
# r_things.c:420: 	dc_translation = translationtables - 256 +
	.loc 1 420 17
	movq	%rax, dc_translation(%rip)	# _15, dc_translation
.L52:
# r_things.c:424:     dc_iscale = abs(vis->xiscale)>>detailshift;
	.loc 1 424 24
	movq	-56(%rbp), %rax	# vis, tmp126
	movl	48(%rax), %eax	# vis_43(D)->xiscale, _16
# r_things.c:424:     dc_iscale = abs(vis->xiscale)>>detailshift;
	.loc 1 424 17
	movl	%eax, %edx	# _16, tmp148
	negl	%edx	# tmp148
	cmovs	%eax, %edx	# tmp148,, _16, _17
# r_things.c:424:     dc_iscale = abs(vis->xiscale)>>detailshift;
	.loc 1 424 34
	movl	detailshift(%rip), %eax	# detailshift, detailshift.59_18
	movl	%eax, %ecx	# detailshift.59_18, tmp152
	sarl	%cl, %edx	# tmp152, _17
	movl	%edx, %eax	# _17, _19
# r_things.c:424:     dc_iscale = abs(vis->xiscale)>>detailshift;
	.loc 1 424 15
	movl	%eax, dc_iscale(%rip)	# _19, dc_iscale
# r_things.c:425:     dc_texturemid = vis->texturemid;
	.loc 1 425 24
	movq	-56(%rbp), %rax	# vis, tmp127
	movl	52(%rax), %eax	# vis_43(D)->texturemid, _20
# r_things.c:425:     dc_texturemid = vis->texturemid;
	.loc 1 425 19
	movl	%eax, dc_texturemid(%rip)	# _20, dc_texturemid
# r_things.c:426:     frac = vis->startfrac;
	.loc 1 426 10
	movq	-56(%rbp), %rax	# vis, tmp128
	movl	40(%rax), %eax	# vis_43(D)->startfrac, tmp129
	movl	%eax, -40(%rbp)	# tmp129, frac
# r_things.c:427:     spryscale = vis->scale;
	.loc 1 427 20
	movq	-56(%rbp), %rax	# vis, tmp130
	movl	44(%rax), %eax	# vis_43(D)->scale, _21
# r_things.c:427:     spryscale = vis->scale;
	.loc 1 427 15
	movl	%eax, spryscale(%rip)	# _21, spryscale
# r_things.c:428:     sprtopscreen = centeryfrac - FixedMul(dc_texturemid,spryscale);
	.loc 1 428 32
	movl	centeryfrac(%rip), %ebx	# centeryfrac, centeryfrac.60_22
# r_things.c:428:     sprtopscreen = centeryfrac - FixedMul(dc_texturemid,spryscale);
	.loc 1 428 34
	movl	spryscale(%rip), %edx	# spryscale, spryscale.61_23
	movl	dc_texturemid(%rip), %eax	# dc_texturemid, dc_texturemid.62_24
	movl	%edx, %esi	# spryscale.61_23,
	movl	%eax, %edi	# dc_texturemid.62_24,
	call	FixedMul@PLT	#
# r_things.c:428:     sprtopscreen = centeryfrac - FixedMul(dc_texturemid,spryscale);
	.loc 1 428 32 discriminator 1
	subl	%eax, %ebx	# _25, centeryfrac.60_22
	movl	%ebx, %edx	# centeryfrac.60_22, _26
# r_things.c:428:     sprtopscreen = centeryfrac - FixedMul(dc_texturemid,spryscale);
	.loc 1 428 18 discriminator 1
	movl	%edx, sprtopscreen(%rip)	# _26, sprtopscreen
# r_things.c:430:     for (dc_x=vis->x1 ; dc_x<=vis->x2 ; dc_x++, frac += vis->xiscale)
	.loc 1 430 18
	movq	-56(%rbp), %rax	# vis, tmp131
	movl	16(%rax), %eax	# vis_43(D)->x1, _27
# r_things.c:430:     for (dc_x=vis->x1 ; dc_x<=vis->x2 ; dc_x++, frac += vis->xiscale)
	.loc 1 430 14
	movl	%eax, dc_x(%rip)	# _27, dc_x
# r_things.c:430:     for (dc_x=vis->x1 ; dc_x<=vis->x2 ; dc_x++, frac += vis->xiscale)
	.loc 1 430 5
	jmp	.L53	#
.L56:
# r_things.c:432: 	texturecolumn = frac>>FRACBITS;
	.loc 1 432 16
	movl	-40(%rbp), %eax	# frac, tmp135
	sarl	$16, %eax	#, tmp134
	movl	%eax, -36(%rbp)	# tmp134, texturecolumn
# r_things.c:434: 	if (texturecolumn < 0 || texturecolumn >= SHORT(patch->width))
	.loc 1 434 5
	cmpl	$0, -36(%rbp)	#, texturecolumn
	js	.L54	#,
# r_things.c:434: 	if (texturecolumn < 0 || texturecolumn >= SHORT(patch->width))
	.loc 1 434 44 discriminator 1
	movq	-32(%rbp), %rax	# patch, tmp136
	movzwl	(%rax), %eax	# patch_45->width, _28
	cwtl
# r_things.c:434: 	if (texturecolumn < 0 || texturecolumn >= SHORT(patch->width))
	.loc 1 434 24 discriminator 1
	cmpl	%eax, -36(%rbp)	# _29, texturecolumn
	jl	.L55	#,
.L54:
# r_things.c:435: 	    I_Error ("R_DrawSpriteRange: bad texturecolumn");
	.loc 1 435 6
	leaq	.LC6(%rip), %rax	#, tmp137
	movq	%rax, %rdi	# tmp137,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L55:
# r_things.c:438: 			       LONG(patch->columnofs[texturecolumn]));
	.loc 1 438 11
	movq	-32(%rbp), %rax	# patch, tmp138
	movl	-36(%rbp), %edx	# texturecolumn, tmp140
	movslq	%edx, %rdx	# tmp140, tmp139
	movl	8(%rax,%rdx,4), %eax	# patch_45->columnofs[texturecolumn_58], _30
	movslq	%eax, %rdx	# _30, _31
# r_things.c:437: 	column = (column_t *) ((byte *)patch +
	.loc 1 437 9
	movq	-32(%rbp), %rax	# patch, tmp144
	addq	%rdx, %rax	# _31, tmp143
	movq	%rax, -24(%rbp)	# tmp143, column
# r_things.c:439: 	R_DrawMaskedColumn (column);
	.loc 1 439 2
	movq	-24(%rbp), %rax	# column, tmp145
	movq	%rax, %rdi	# tmp145,
	call	R_DrawMaskedColumn	#
# r_things.c:430:     for (dc_x=vis->x1 ; dc_x<=vis->x2 ; dc_x++, frac += vis->xiscale)
	.loc 1 430 45 discriminator 2
	movl	dc_x(%rip), %eax	# dc_x, dc_x.63_32
	addl	$1, %eax	#, _33
	movl	%eax, dc_x(%rip)	# _33, dc_x
# r_things.c:430:     for (dc_x=vis->x1 ; dc_x<=vis->x2 ; dc_x++, frac += vis->xiscale)
	.loc 1 430 60 discriminator 2
	movq	-56(%rbp), %rax	# vis, tmp146
	movl	48(%rax), %eax	# vis_43(D)->xiscale, _34
# r_things.c:430:     for (dc_x=vis->x1 ; dc_x<=vis->x2 ; dc_x++, frac += vis->xiscale)
	.loc 1 430 54 discriminator 2
	addl	%eax, -40(%rbp)	# _34, frac
.L53:
# r_things.c:430:     for (dc_x=vis->x1 ; dc_x<=vis->x2 ; dc_x++, frac += vis->xiscale)
	.loc 1 430 34 discriminator 1
	movq	-56(%rbp), %rax	# vis, tmp147
	movl	20(%rax), %edx	# vis_43(D)->x2, _35
# r_things.c:430:     for (dc_x=vis->x1 ; dc_x<=vis->x2 ; dc_x++, frac += vis->xiscale)
	.loc 1 430 29 discriminator 1
	movl	dc_x(%rip), %eax	# dc_x, dc_x.64_36
	cmpl	%eax, %edx	# dc_x.64_36, _35
	jge	.L56	#,
# r_things.c:442:     colfunc = basecolfunc;
	.loc 1 442 13
	movq	basecolfunc(%rip), %rax	# basecolfunc, basecolfunc.65_37
	movq	%rax, colfunc(%rip)	# basecolfunc.65_37, colfunc
# r_things.c:443: }
	.loc 1 443 1
	nop	
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	R_DrawVisSprite, .-R_DrawVisSprite
	.section	.rodata
	.align 8
.LC7:
	.string	"R_ProjectSprite: invalid sprite number %i "
	.align 8
.LC8:
	.string	"R_ProjectSprite: invalid sprite frame %i : %i "
	.text
	.globl	R_ProjectSprite
	.type	R_ProjectSprite, @function
R_ProjectSprite:
.LFB13:
	.loc 1 453 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -104(%rbp)	# thing, thing
# r_things.c:483:     tr_x = thing->x - viewx;
	.loc 1 483 17
	movq	-104(%rbp), %rax	# thing, tmp190
	movl	24(%rax), %edx	# thing_119(D)->x, _1
# r_things.c:483:     tr_x = thing->x - viewx;
	.loc 1 483 21
	movl	viewx(%rip), %eax	# viewx, viewx.66_2
# r_things.c:483:     tr_x = thing->x - viewx;
	.loc 1 483 10
	subl	%eax, %edx	# viewx.66_2, tmp191
	movl	%edx, -72(%rbp)	# tmp191, tr_x
# r_things.c:484:     tr_y = thing->y - viewy;
	.loc 1 484 17
	movq	-104(%rbp), %rax	# thing, tmp192
	movl	28(%rax), %edx	# thing_119(D)->y, _3
# r_things.c:484:     tr_y = thing->y - viewy;
	.loc 1 484 21
	movl	viewy(%rip), %eax	# viewy, viewy.67_4
# r_things.c:484:     tr_y = thing->y - viewy;
	.loc 1 484 10
	subl	%eax, %edx	# viewy.67_4, tmp193
	movl	%edx, -68(%rbp)	# tmp193, tr_y
# r_things.c:486:     gxt = FixedMul(tr_x,viewcos); 
	.loc 1 486 11
	movl	viewcos(%rip), %edx	# viewcos, viewcos.68_5
	movl	-72(%rbp), %eax	# tr_x, tmp194
	movl	%edx, %esi	# viewcos.68_5,
	movl	%eax, %edi	# tmp194,
	call	FixedMul@PLT	#
	movl	%eax, -64(%rbp)	# tmp195, gxt
# r_things.c:487:     gyt = -FixedMul(tr_y,viewsin);
	.loc 1 487 12
	movl	viewsin(%rip), %edx	# viewsin, viewsin.69_6
	movl	-68(%rbp), %eax	# tr_y, tmp196
	movl	%edx, %esi	# viewsin.69_6,
	movl	%eax, %edi	# tmp196,
	call	FixedMul@PLT	#
# r_things.c:487:     gyt = -FixedMul(tr_y,viewsin);
	.loc 1 487 9 discriminator 1
	negl	%eax	# tmp197
	movl	%eax, -60(%rbp)	# tmp197, gyt
# r_things.c:489:     tz = gxt-gyt; 
	.loc 1 489 8
	movl	-64(%rbp), %eax	# gxt, tmp201
	subl	-60(%rbp), %eax	# gyt, tmp200
	movl	%eax, -56(%rbp)	# tmp200, tz
# r_things.c:492:     if (tz < MINZ)
	.loc 1 492 8
	cmpl	$262143, -56(%rbp)	#, tz
	jle	.L76	#,
# r_things.c:495:     xscale = FixedDiv(projection, tz);
	.loc 1 495 14
	movl	projection(%rip), %eax	# projection, projection.70_8
	movl	-56(%rbp), %edx	# tz, tmp202
	movl	%edx, %esi	# tmp202,
	movl	%eax, %edi	# projection.70_8,
	call	FixedDiv@PLT	#
	movl	%eax, -52(%rbp)	# tmp203, xscale
# r_things.c:497:     gxt = -FixedMul(tr_x,viewsin); 
	.loc 1 497 12
	movl	viewsin(%rip), %edx	# viewsin, viewsin.71_9
	movl	-72(%rbp), %eax	# tr_x, tmp204
	movl	%edx, %esi	# viewsin.71_9,
	movl	%eax, %edi	# tmp204,
	call	FixedMul@PLT	#
# r_things.c:497:     gxt = -FixedMul(tr_x,viewsin); 
	.loc 1 497 9 discriminator 1
	negl	%eax	# tmp205
	movl	%eax, -64(%rbp)	# tmp205, gxt
# r_things.c:498:     gyt = FixedMul(tr_y,viewcos); 
	.loc 1 498 11
	movl	viewcos(%rip), %edx	# viewcos, viewcos.72_11
	movl	-68(%rbp), %eax	# tr_y, tmp206
	movl	%edx, %esi	# viewcos.72_11,
	movl	%eax, %edi	# tmp206,
	call	FixedMul@PLT	#
	movl	%eax, -60(%rbp)	# tmp207, gyt
# r_things.c:499:     tx = -(gyt+gxt); 
	.loc 1 499 15
	movl	-60(%rbp), %edx	# gyt, tmp208
	movl	-64(%rbp), %eax	# gxt, tmp209
	addl	%edx, %eax	# tmp208, _12
# r_things.c:499:     tx = -(gyt+gxt); 
	.loc 1 499 8
	negl	%eax	# tmp210
	movl	%eax, -48(%rbp)	# tmp210, tx
# r_things.c:502:     if (abs(tx)>(tz<<2))
	.loc 1 502 9
	movl	-48(%rbp), %eax	# tx, tmp301
	movl	%eax, %edx	# tmp301, tmp302
	negl	%edx	# tmp302
	cmovs	%eax, %edx	# tmp302,, tmp301, _13
# r_things.c:502:     if (abs(tx)>(tz<<2))
	.loc 1 502 20
	movl	-56(%rbp), %eax	# tz, tmp211
	sall	$2, %eax	#, _14
# r_things.c:502:     if (abs(tx)>(tz<<2))
	.loc 1 502 8
	cmpl	%eax, %edx	# _14, _13
	jg	.L77	#,
# r_things.c:507:     if ((unsigned)thing->sprite >= numsprites)
	.loc 1 507 24
	movq	-104(%rbp), %rax	# thing, tmp212
	movl	60(%rax), %eax	# thing_119(D)->sprite, _15
# r_things.c:507:     if ((unsigned)thing->sprite >= numsprites)
	.loc 1 507 33
	movl	numsprites(%rip), %edx	# numsprites, numsprites.73_16
# r_things.c:507:     if ((unsigned)thing->sprite >= numsprites)
	.loc 1 507 8
	cmpl	%edx, %eax	# numsprites.74_17, _15
	jb	.L61	#,
# r_things.c:509: 		 thing->sprite);
	.loc 1 509 9
	movq	-104(%rbp), %rax	# thing, tmp213
	movl	60(%rax), %eax	# thing_119(D)->sprite, _18
# r_things.c:508: 	I_Error ("R_ProjectSprite: invalid sprite number %i ",
	.loc 1 508 2
	movl	%eax, %esi	# _18,
	leaq	.LC7(%rip), %rax	#, tmp214
	movq	%rax, %rdi	# tmp214,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L61:
# r_things.c:511:     sprdef = &sprites[thing->sprite];
	.loc 1 511 14
	movq	sprites(%rip), %rdx	# sprites, sprites.75_19
# r_things.c:511:     sprdef = &sprites[thing->sprite];
	.loc 1 511 28
	movq	-104(%rbp), %rax	# thing, tmp215
	movl	60(%rax), %eax	# thing_119(D)->sprite, _20
	movl	%eax, %eax	# _20, _21
# r_things.c:511:     sprdef = &sprites[thing->sprite];
	.loc 1 511 22
	salq	$4, %rax	#, _22
# r_things.c:511:     sprdef = &sprites[thing->sprite];
	.loc 1 511 12
	addq	%rdx, %rax	# sprites.75_19, tmp216
	movq	%rax, -24(%rbp)	# tmp216, sprdef
# r_things.c:513:     if ( (thing->frame&FF_FRAMEMASK) >= sprdef->numframes )
	.loc 1 513 16
	movq	-104(%rbp), %rax	# thing, tmp217
	movl	64(%rax), %eax	# thing_119(D)->frame, _23
# r_things.c:513:     if ( (thing->frame&FF_FRAMEMASK) >= sprdef->numframes )
	.loc 1 513 23
	andl	$32767, %eax	#, _23
	movl	%eax, %edx	# _23, _24
# r_things.c:513:     if ( (thing->frame&FF_FRAMEMASK) >= sprdef->numframes )
	.loc 1 513 47
	movq	-24(%rbp), %rax	# sprdef, tmp218
	movl	(%rax), %eax	# sprdef_135->numframes, _25
# r_things.c:513:     if ( (thing->frame&FF_FRAMEMASK) >= sprdef->numframes )
	.loc 1 513 8
	cmpl	%eax, %edx	# _25, _24
	jl	.L62	#,
# r_things.c:514: 	I_Error ("R_ProjectSprite: invalid sprite frame %i : %i ",
	.loc 1 514 2
	movq	-104(%rbp), %rax	# thing, tmp219
	movl	64(%rax), %edx	# thing_119(D)->frame, _26
# r_things.c:515: 		 thing->sprite, thing->frame);
	.loc 1 515 9
	movq	-104(%rbp), %rax	# thing, tmp220
	movl	60(%rax), %eax	# thing_119(D)->sprite, _27
# r_things.c:514: 	I_Error ("R_ProjectSprite: invalid sprite frame %i : %i ",
	.loc 1 514 2
	movl	%eax, %esi	# _27,
	leaq	.LC8(%rip), %rax	#, tmp221
	movq	%rax, %rdi	# tmp221,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L62:
# r_things.c:517:     sprframe = &sprdef->spriteframes[ thing->frame & FF_FRAMEMASK];
	.loc 1 517 23
	movq	-24(%rbp), %rax	# sprdef, tmp222
	movq	8(%rax), %rcx	# sprdef_135->spriteframes, _28
# r_things.c:517:     sprframe = &sprdef->spriteframes[ thing->frame & FF_FRAMEMASK];
	.loc 1 517 44
	movq	-104(%rbp), %rax	# thing, tmp223
	movl	64(%rax), %eax	# thing_119(D)->frame, _29
# r_things.c:517:     sprframe = &sprdef->spriteframes[ thing->frame & FF_FRAMEMASK];
	.loc 1 517 52
	cltq
	andl	$32767, %eax	#, _30
	movq	%rax, %rdx	# _30, _31
# r_things.c:517:     sprframe = &sprdef->spriteframes[ thing->frame & FF_FRAMEMASK];
	.loc 1 517 37
	movq	%rdx, %rax	# _31, tmp224
	salq	$3, %rax	#, tmp225
	subq	%rdx, %rax	# _31, tmp224
	salq	$2, %rax	#, tmp226
# r_things.c:517:     sprframe = &sprdef->spriteframes[ thing->frame & FF_FRAMEMASK];
	.loc 1 517 14
	addq	%rcx, %rax	# _28, tmp227
	movq	%rax, -16(%rbp)	# tmp227, sprframe
# r_things.c:519:     if (sprframe->rotate)
	.loc 1 519 17
	movq	-16(%rbp), %rax	# sprframe, tmp228
	movl	(%rax), %eax	# sprframe_137->rotate, _33
# r_things.c:519:     if (sprframe->rotate)
	.loc 1 519 8
	testl	%eax, %eax	# _33
	je	.L63	#,
# r_things.c:522: 	ang = R_PointToAngle (thing->x, thing->y);
	.loc 1 522 8
	movq	-104(%rbp), %rax	# thing, tmp229
	movl	28(%rax), %edx	# thing_119(D)->y, _34
	movq	-104(%rbp), %rax	# thing, tmp230
	movl	24(%rax), %eax	# thing_119(D)->x, _35
	movl	%edx, %esi	# _34,
	movl	%eax, %edi	# _35,
	call	R_PointToAngle@PLT	#
	movl	%eax, -44(%rbp)	# tmp231, ang
# r_things.c:523: 	rot = (ang-thing->angle+(unsigned)(ANG45/2)*9)>>29;
	.loc 1 523 18
	movq	-104(%rbp), %rax	# thing, tmp232
	movl	56(%rax), %eax	# thing_119(D)->angle, _36
# r_things.c:523: 	rot = (ang-thing->angle+(unsigned)(ANG45/2)*9)>>29;
	.loc 1 523 12
	movl	-44(%rbp), %edx	# ang, tmp233
	subl	%eax, %edx	# _36, _37
# r_things.c:523: 	rot = (ang-thing->angle+(unsigned)(ANG45/2)*9)>>29;
	.loc 1 523 25
	leal	-1879048192(%rdx), %eax	#, _38
# r_things.c:523: 	rot = (ang-thing->angle+(unsigned)(ANG45/2)*9)>>29;
	.loc 1 523 6
	shrl	$29, %eax	#, tmp234
	movl	%eax, -40(%rbp)	# tmp234, rot
# r_things.c:524: 	lump = sprframe->lump[rot];
	.loc 1 524 23
	movq	-16(%rbp), %rax	# sprframe, tmp235
	movl	-40(%rbp), %edx	# rot, tmp236
	movzwl	4(%rax,%rdx,2), %eax	# sprframe_137->lump[rot_142], _39
# r_things.c:524: 	lump = sprframe->lump[rot];
	.loc 1 524 7
	cwtl
	movl	%eax, -84(%rbp)	# tmp237, lump
# r_things.c:525: 	flip = (boolean)sprframe->flip[rot];
	.loc 1 525 32
	movq	-16(%rbp), %rdx	# sprframe, tmp238
	movl	-40(%rbp), %eax	# rot, tmp239
	movzbl	20(%rdx,%rax), %eax	# sprframe_137->flip[rot_142], _40
# r_things.c:525: 	flip = (boolean)sprframe->flip[rot];
	.loc 1 525 7
	movzbl	%al, %eax	# _40, tmp240
	movl	%eax, -80(%rbp)	# tmp240, flip
	jmp	.L64	#
.L63:
# r_things.c:530: 	lump = sprframe->lump[0];
	.loc 1 530 23
	movq	-16(%rbp), %rax	# sprframe, tmp241
	movzwl	4(%rax), %eax	# sprframe_137->lump[0], _41
# r_things.c:530: 	lump = sprframe->lump[0];
	.loc 1 530 7
	cwtl
	movl	%eax, -84(%rbp)	# tmp242, lump
# r_things.c:531: 	flip = (boolean)sprframe->flip[0];
	.loc 1 531 32
	movq	-16(%rbp), %rax	# sprframe, tmp243
	movzbl	20(%rax), %eax	# sprframe_137->flip[0], _42
# r_things.c:531: 	flip = (boolean)sprframe->flip[0];
	.loc 1 531 7
	movzbl	%al, %eax	# _42, tmp244
	movl	%eax, -80(%rbp)	# tmp244, flip
.L64:
# r_things.c:535:     tx -= spriteoffset[lump];	
	.loc 1 535 23
	movq	spriteoffset(%rip), %rax	# spriteoffset, spriteoffset.76_43
	movl	-84(%rbp), %edx	# lump, tmp245
	movslq	%edx, %rdx	# tmp245, _44
	salq	$2, %rdx	#, _45
	addq	%rdx, %rax	# _45, _46
	movl	(%rax), %eax	# *_46, _47
# r_things.c:535:     tx -= spriteoffset[lump];	
	.loc 1 535 8
	subl	%eax, -48(%rbp)	# _47, tx
# r_things.c:536:     x1 = (centerxfrac + FixedMul (tx,xscale) ) >>FRACBITS;
	.loc 1 536 25
	movl	-52(%rbp), %edx	# xscale, tmp246
	movl	-48(%rbp), %eax	# tx, tmp247
	movl	%edx, %esi	# tmp246,
	movl	%eax, %edi	# tmp247,
	call	FixedMul@PLT	#
# r_things.c:536:     x1 = (centerxfrac + FixedMul (tx,xscale) ) >>FRACBITS;
	.loc 1 536 23 discriminator 1
	movl	centerxfrac(%rip), %edx	# centerxfrac, centerxfrac.77_49
	addl	%edx, %eax	# centerxfrac.77_49, _50
# r_things.c:536:     x1 = (centerxfrac + FixedMul (tx,xscale) ) >>FRACBITS;
	.loc 1 536 8 discriminator 1
	sarl	$16, %eax	#, tmp248
	movl	%eax, -36(%rbp)	# tmp248, x1
# r_things.c:539:     if (x1 > viewwidth)
	.loc 1 539 12
	movl	viewwidth(%rip), %eax	# viewwidth, viewwidth.78_51
# r_things.c:539:     if (x1 > viewwidth)
	.loc 1 539 8
	cmpl	%eax, -36(%rbp)	# viewwidth.78_51, x1
	jg	.L78	#,
# r_things.c:542:     tx +=  spritewidth[lump];
	.loc 1 542 23
	movq	spritewidth(%rip), %rax	# spritewidth, spritewidth.79_52
	movl	-84(%rbp), %edx	# lump, tmp249
	movslq	%edx, %rdx	# tmp249, _53
	salq	$2, %rdx	#, _54
	addq	%rdx, %rax	# _54, _55
	movl	(%rax), %eax	# *_55, _56
# r_things.c:542:     tx +=  spritewidth[lump];
	.loc 1 542 8
	addl	%eax, -48(%rbp)	# _56, tx
# r_things.c:543:     x2 = ((centerxfrac + FixedMul (tx,xscale) ) >>FRACBITS) - 1;
	.loc 1 543 26
	movl	-52(%rbp), %edx	# xscale, tmp250
	movl	-48(%rbp), %eax	# tx, tmp251
	movl	%edx, %esi	# tmp250,
	movl	%eax, %edi	# tmp251,
	call	FixedMul@PLT	#
# r_things.c:543:     x2 = ((centerxfrac + FixedMul (tx,xscale) ) >>FRACBITS) - 1;
	.loc 1 543 24 discriminator 1
	movl	centerxfrac(%rip), %edx	# centerxfrac, centerxfrac.80_58
	addl	%edx, %eax	# centerxfrac.80_58, _59
# r_things.c:543:     x2 = ((centerxfrac + FixedMul (tx,xscale) ) >>FRACBITS) - 1;
	.loc 1 543 49 discriminator 1
	sarl	$16, %eax	#, _60
# r_things.c:543:     x2 = ((centerxfrac + FixedMul (tx,xscale) ) >>FRACBITS) - 1;
	.loc 1 543 8 discriminator 1
	subl	$1, %eax	#, tmp252
	movl	%eax, -32(%rbp)	# tmp252, x2
# r_things.c:546:     if (x2 < 0)
	.loc 1 546 8
	cmpl	$0, -32(%rbp)	#, x2
	js	.L79	#,
# r_things.c:550:     vis = R_NewVisSprite ();
	.loc 1 550 11
	call	R_NewVisSprite	#
	movq	%rax, -8(%rbp)	# tmp253, vis
# r_things.c:551:     vis->mobjflags = thing->flags;
	.loc 1 551 27
	movq	-104(%rbp), %rax	# thing, tmp254
	movl	160(%rax), %edx	# thing_119(D)->flags, _61
# r_things.c:551:     vis->mobjflags = thing->flags;
	.loc 1 551 20
	movq	-8(%rbp), %rax	# vis, tmp255
	movl	%edx, 72(%rax)	# _61, vis_152->mobjflags
# r_things.c:552:     vis->scale = xscale<<detailshift;
	.loc 1 552 24
	movl	detailshift(%rip), %eax	# detailshift, detailshift.81_62
	movl	-52(%rbp), %edx	# xscale, tmp256
	movl	%eax, %ecx	# detailshift.81_62, tmp307
	sall	%cl, %edx	# tmp307, _63
# r_things.c:552:     vis->scale = xscale<<detailshift;
	.loc 1 552 16
	movq	-8(%rbp), %rax	# vis, tmp257
	movl	%edx, 44(%rax)	# _63, vis_152->scale
# r_things.c:553:     vis->gx = thing->x;
	.loc 1 553 20
	movq	-104(%rbp), %rax	# thing, tmp258
	movl	24(%rax), %edx	# thing_119(D)->x, _64
# r_things.c:553:     vis->gx = thing->x;
	.loc 1 553 13
	movq	-8(%rbp), %rax	# vis, tmp259
	movl	%edx, 24(%rax)	# _64, vis_152->gx
# r_things.c:554:     vis->gy = thing->y;
	.loc 1 554 20
	movq	-104(%rbp), %rax	# thing, tmp260
	movl	28(%rax), %edx	# thing_119(D)->y, _65
# r_things.c:554:     vis->gy = thing->y;
	.loc 1 554 13
	movq	-8(%rbp), %rax	# vis, tmp261
	movl	%edx, 28(%rax)	# _65, vis_152->gy
# r_things.c:555:     vis->gz = thing->z;
	.loc 1 555 20
	movq	-104(%rbp), %rax	# thing, tmp262
	movl	32(%rax), %edx	# thing_119(D)->z, _66
# r_things.c:555:     vis->gz = thing->z;
	.loc 1 555 13
	movq	-8(%rbp), %rax	# vis, tmp263
	movl	%edx, 32(%rax)	# _66, vis_152->gz
# r_things.c:556:     vis->gzt = thing->z + spritetopoffset[lump];
	.loc 1 556 21
	movq	-104(%rbp), %rax	# thing, tmp264
	movl	32(%rax), %edx	# thing_119(D)->z, _67
# r_things.c:556:     vis->gzt = thing->z + spritetopoffset[lump];
	.loc 1 556 42
	movq	spritetopoffset(%rip), %rax	# spritetopoffset, spritetopoffset.82_68
	movl	-84(%rbp), %ecx	# lump, tmp265
	movslq	%ecx, %rcx	# tmp265, _69
	salq	$2, %rcx	#, _70
	addq	%rcx, %rax	# _70, _71
	movl	(%rax), %eax	# *_71, _72
# r_things.c:556:     vis->gzt = thing->z + spritetopoffset[lump];
	.loc 1 556 25
	addl	%eax, %edx	# _72, _73
# r_things.c:556:     vis->gzt = thing->z + spritetopoffset[lump];
	.loc 1 556 14
	movq	-8(%rbp), %rax	# vis, tmp266
	movl	%edx, 36(%rax)	# _73, vis_152->gzt
# r_things.c:557:     vis->texturemid = vis->gzt - viewz;
	.loc 1 557 26
	movq	-8(%rbp), %rax	# vis, tmp267
	movl	36(%rax), %edx	# vis_152->gzt, _74
# r_things.c:557:     vis->texturemid = vis->gzt - viewz;
	.loc 1 557 32
	movl	viewz(%rip), %eax	# viewz, viewz.83_75
	subl	%eax, %edx	# viewz.83_75, _76
# r_things.c:557:     vis->texturemid = vis->gzt - viewz;
	.loc 1 557 21
	movq	-8(%rbp), %rax	# vis, tmp268
	movl	%edx, 52(%rax)	# _76, vis_152->texturemid
# r_things.c:558:     vis->x1 = x1 < 0 ? 0 : x1;
	.loc 1 558 26
	movl	-36(%rbp), %eax	# x1, tmp269
	movl	$0, %edx	#, tmp300
	testl	%eax, %eax	# tmp269
	cmovns	%eax, %edx	# tmp269,, _77
# r_things.c:558:     vis->x1 = x1 < 0 ? 0 : x1;
	.loc 1 558 13
	movq	-8(%rbp), %rax	# vis, tmp270
	movl	%edx, 16(%rax)	# _77, vis_152->x1
# r_things.c:559:     vis->x2 = x2 >= viewwidth ? viewwidth-1 : x2;	
	.loc 1 559 18
	movl	viewwidth(%rip), %eax	# viewwidth, viewwidth.85_78
# r_things.c:559:     vis->x2 = x2 >= viewwidth ? viewwidth-1 : x2;	
	.loc 1 559 45
	cmpl	%eax, -32(%rbp)	# viewwidth.85_78, x2
	jl	.L67	#,
# r_things.c:559:     vis->x2 = x2 >= viewwidth ? viewwidth-1 : x2;	
	.loc 1 559 42 discriminator 1
	movl	viewwidth(%rip), %eax	# viewwidth, viewwidth.86_79
# r_things.c:559:     vis->x2 = x2 >= viewwidth ? viewwidth-1 : x2;	
	.loc 1 559 45 discriminator 1
	subl	$1, %eax	#, iftmp.84_111
	jmp	.L68	#
.L67:
# r_things.c:559:     vis->x2 = x2 >= viewwidth ? viewwidth-1 : x2;	
	.loc 1 559 45 is_stmt 0 discriminator 2
	movl	-32(%rbp), %eax	# x2, iftmp.84_111
.L68:
# r_things.c:559:     vis->x2 = x2 >= viewwidth ? viewwidth-1 : x2;	
	.loc 1 559 13 is_stmt 1 discriminator 4
	movq	-8(%rbp), %rdx	# vis, tmp271
	movl	%eax, 20(%rdx)	# iftmp.84_111, vis_152->x2
# r_things.c:560:     iscale = FixedDiv (FRACUNIT, xscale);
	.loc 1 560 14
	movl	-52(%rbp), %eax	# xscale, tmp272
	movl	%eax, %esi	# tmp272,
	movl	$65536, %edi	#,
	call	FixedDiv@PLT	#
	movl	%eax, -28(%rbp)	# tmp273, iscale
# r_things.c:562:     if (flip)
	.loc 1 562 8
	cmpl	$0, -80(%rbp)	#, flip
	je	.L69	#,
# r_things.c:564: 	vis->startfrac = spritewidth[lump]-1;
	.loc 1 564 30
	movq	spritewidth(%rip), %rax	# spritewidth, spritewidth.87_80
	movl	-84(%rbp), %edx	# lump, tmp274
	movslq	%edx, %rdx	# tmp274, _81
	salq	$2, %rdx	#, _82
	addq	%rdx, %rax	# _82, _83
	movl	(%rax), %eax	# *_83, _84
# r_things.c:564: 	vis->startfrac = spritewidth[lump]-1;
	.loc 1 564 36
	leal	-1(%rax), %edx	#, _85
# r_things.c:564: 	vis->startfrac = spritewidth[lump]-1;
	.loc 1 564 17
	movq	-8(%rbp), %rax	# vis, tmp275
	movl	%edx, 40(%rax)	# _85, vis_152->startfrac
# r_things.c:565: 	vis->xiscale = -iscale;
	.loc 1 565 17
	movl	-28(%rbp), %eax	# iscale, tmp276
	negl	%eax	# tmp276
	movl	%eax, %edx	# tmp276, _86
# r_things.c:565: 	vis->xiscale = -iscale;
	.loc 1 565 15
	movq	-8(%rbp), %rax	# vis, tmp277
	movl	%edx, 48(%rax)	# _86, vis_152->xiscale
	jmp	.L70	#
.L69:
# r_things.c:569: 	vis->startfrac = 0;
	.loc 1 569 17
	movq	-8(%rbp), %rax	# vis, tmp278
	movl	$0, 40(%rax)	#, vis_152->startfrac
# r_things.c:570: 	vis->xiscale = iscale;
	.loc 1 570 15
	movq	-8(%rbp), %rax	# vis, tmp279
	movl	-28(%rbp), %edx	# iscale, tmp280
	movl	%edx, 48(%rax)	# tmp280, vis_152->xiscale
.L70:
# r_things.c:573:     if (vis->x1 > x1)
	.loc 1 573 12
	movq	-8(%rbp), %rax	# vis, tmp281
	movl	16(%rax), %eax	# vis_152->x1, _87
# r_things.c:573:     if (vis->x1 > x1)
	.loc 1 573 8
	cmpl	%eax, -36(%rbp)	# _87, x1
	jge	.L71	#,
# r_things.c:574: 	vis->startfrac += vis->xiscale*(vis->x1-x1);
	.loc 1 574 5
	movq	-8(%rbp), %rax	# vis, tmp282
	movl	40(%rax), %ecx	# vis_152->startfrac, _88
# r_things.c:574: 	vis->startfrac += vis->xiscale*(vis->x1-x1);
	.loc 1 574 23
	movq	-8(%rbp), %rax	# vis, tmp283
	movl	48(%rax), %edx	# vis_152->xiscale, _89
# r_things.c:574: 	vis->startfrac += vis->xiscale*(vis->x1-x1);
	.loc 1 574 37
	movq	-8(%rbp), %rax	# vis, tmp284
	movl	16(%rax), %eax	# vis_152->x1, _90
# r_things.c:574: 	vis->startfrac += vis->xiscale*(vis->x1-x1);
	.loc 1 574 41
	subl	-36(%rbp), %eax	# x1, _91
# r_things.c:574: 	vis->startfrac += vis->xiscale*(vis->x1-x1);
	.loc 1 574 32
	imull	%edx, %eax	# _89, _92
# r_things.c:574: 	vis->startfrac += vis->xiscale*(vis->x1-x1);
	.loc 1 574 17
	leal	(%rcx,%rax), %edx	#, _93
	movq	-8(%rbp), %rax	# vis, tmp285
	movl	%edx, 40(%rax)	# _93, vis_152->startfrac
.L71:
# r_things.c:575:     vis->patch = lump;
	.loc 1 575 16
	movq	-8(%rbp), %rax	# vis, tmp286
	movl	-84(%rbp), %edx	# lump, tmp287
	movl	%edx, 56(%rax)	# tmp287, vis_152->patch
# r_things.c:578:     if (thing->flags & MF_SHADOW)
	.loc 1 578 14
	movq	-104(%rbp), %rax	# thing, tmp288
	movl	160(%rax), %eax	# thing_119(D)->flags, _94
# r_things.c:578:     if (thing->flags & MF_SHADOW)
	.loc 1 578 22
	andl	$262144, %eax	#, _95
# r_things.c:578:     if (thing->flags & MF_SHADOW)
	.loc 1 578 8
	testl	%eax, %eax	# _95
	je	.L72	#,
# r_things.c:581: 	vis->colormap = NULL;
	.loc 1 581 16
	movq	-8(%rbp), %rax	# vis, tmp289
	movq	$0, 64(%rax)	#, vis_152->colormap
	jmp	.L57	#
.L72:
# r_things.c:583:     else if (fixedcolormap)
	.loc 1 583 14
	movq	fixedcolormap(%rip), %rax	# fixedcolormap, fixedcolormap.88_96
# r_things.c:583:     else if (fixedcolormap)
	.loc 1 583 13
	testq	%rax, %rax	# fixedcolormap.88_96
	je	.L73	#,
# r_things.c:586: 	vis->colormap = fixedcolormap;
	.loc 1 586 16
	movq	fixedcolormap(%rip), %rdx	# fixedcolormap, fixedcolormap.89_97
	movq	-8(%rbp), %rax	# vis, tmp290
	movq	%rdx, 64(%rax)	# fixedcolormap.89_97, vis_152->colormap
	jmp	.L57	#
.L73:
# r_things.c:588:     else if (thing->frame & FF_FULLBRIGHT)
	.loc 1 588 19
	movq	-104(%rbp), %rax	# thing, tmp291
	movl	64(%rax), %eax	# thing_119(D)->frame, _98
# r_things.c:588:     else if (thing->frame & FF_FULLBRIGHT)
	.loc 1 588 27
	andl	$32768, %eax	#, _99
# r_things.c:588:     else if (thing->frame & FF_FULLBRIGHT)
	.loc 1 588 13
	testl	%eax, %eax	# _99
	je	.L74	#,
# r_things.c:591: 	vis->colormap = colormaps;
	.loc 1 591 16
	movq	colormaps(%rip), %rdx	# colormaps, colormaps.90_100
	movq	-8(%rbp), %rax	# vis, tmp292
	movq	%rdx, 64(%rax)	# colormaps.90_100, vis_152->colormap
	jmp	.L57	#
.L74:
# r_things.c:597: 	index = xscale>>(LIGHTSCALESHIFT-detailshift);
	.loc 1 597 34
	movl	detailshift(%rip), %eax	# detailshift, detailshift.91_101
	movl	$12, %edx	#, tmp293
	subl	%eax, %edx	# detailshift.91_101, _102
# r_things.c:597: 	index = xscale>>(LIGHTSCALESHIFT-detailshift);
	.loc 1 597 8
	movl	-52(%rbp), %eax	# xscale, tmp297
	movl	%edx, %ecx	# _102, tmp309
	sarl	%cl, %eax	# tmp309, tmp296
	movl	%eax, -76(%rbp)	# tmp296, index
# r_things.c:599: 	if (index >= MAXLIGHTSCALE) 
	.loc 1 599 5
	cmpl	$47, -76(%rbp)	#, index
	jle	.L75	#,
# r_things.c:600: 	    index = MAXLIGHTSCALE-1;
	.loc 1 600 12
	movl	$47, -76(%rbp)	#, index
.L75:
# r_things.c:602: 	vis->colormap = spritelights[index];
	.loc 1 602 30
	movq	spritelights(%rip), %rax	# spritelights, spritelights.92_103
	movl	-76(%rbp), %edx	# index, tmp298
	movslq	%edx, %rdx	# tmp298, _104
	salq	$3, %rdx	#, _105
	addq	%rdx, %rax	# _105, _106
	movq	(%rax), %rdx	# *_106, _107
# r_things.c:602: 	vis->colormap = spritelights[index];
	.loc 1 602 16
	movq	-8(%rbp), %rax	# vis, tmp299
	movq	%rdx, 64(%rax)	# _107, vis_152->colormap
	jmp	.L57	#
.L76:
# r_things.c:493: 	return;
	.loc 1 493 2
	nop	
	jmp	.L57	#
.L77:
# r_things.c:503: 	return;
	.loc 1 503 2
	nop	
	jmp	.L57	#
.L78:
# r_things.c:540: 	return;
	.loc 1 540 2
	nop	
	jmp	.L57	#
.L79:
# r_things.c:547: 	return;
	.loc 1 547 2
	nop	
.L57:
# r_things.c:604: }
	.loc 1 604 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE13:
	.size	R_ProjectSprite, .-R_ProjectSprite
	.globl	R_AddSprites
	.type	R_AddSprites, @function
R_AddSprites:
.LFB14:
	.loc 1 614 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# sec, sec
# r_things.c:622:     if (sec->validcount == validcount)
	.loc 1 622 12
	movq	-24(%rbp), %rax	# sec, tmp90
	movl	88(%rax), %edx	# sec_14(D)->validcount, _1
# r_things.c:622:     if (sec->validcount == validcount)
	.loc 1 622 25
	movl	validcount(%rip), %eax	# validcount, validcount.93_2
# r_things.c:622:     if (sec->validcount == validcount)
	.loc 1 622 8
	cmpl	%eax, %edx	# validcount.93_2, _1
	je	.L88	#,
# r_things.c:626:     sec->validcount = validcount;
	.loc 1 626 21
	movl	validcount(%rip), %edx	# validcount, validcount.94_3
	movq	-24(%rbp), %rax	# sec, tmp91
	movl	%edx, 88(%rax)	# validcount.94_3, sec_14(D)->validcount
# r_things.c:628:     lightnum = (sec->lightlevel >> LIGHTSEGSHIFT)+extralight;
	.loc 1 628 20
	movq	-24(%rbp), %rax	# sec, tmp92
	movzwl	12(%rax), %eax	# sec_14(D)->lightlevel, _4
# r_things.c:628:     lightnum = (sec->lightlevel >> LIGHTSEGSHIFT)+extralight;
	.loc 1 628 33
	sarw	$4, %ax	#, _5
	movswl	%ax, %edx	# _5, _6
# r_things.c:628:     lightnum = (sec->lightlevel >> LIGHTSEGSHIFT)+extralight;
	.loc 1 628 50
	movl	extralight(%rip), %eax	# extralight, extralight.95_7
# r_things.c:628:     lightnum = (sec->lightlevel >> LIGHTSEGSHIFT)+extralight;
	.loc 1 628 14
	addl	%edx, %eax	# _6, tmp93
	movl	%eax, -12(%rbp)	# tmp93, lightnum
# r_things.c:630:     if (lightnum < 0)		
	.loc 1 630 8
	cmpl	$0, -12(%rbp)	#, lightnum
	jns	.L83	#,
# r_things.c:631: 	spritelights = scalelight[0];
	.loc 1 631 15
	leaq	scalelight(%rip), %rax	#, tmp94
	movq	%rax, spritelights(%rip)	# tmp94, spritelights
	jmp	.L84	#
.L83:
# r_things.c:632:     else if (lightnum >= LIGHTLEVELS)
	.loc 1 632 13
	cmpl	$15, -12(%rbp)	#, lightnum
	jle	.L85	#,
# r_things.c:633: 	spritelights = scalelight[LIGHTLEVELS-1];
	.loc 1 633 15
	leaq	5760+scalelight(%rip), %rax	#, tmp95
	movq	%rax, spritelights(%rip)	# tmp95, spritelights
	jmp	.L84	#
.L85:
# r_things.c:635: 	spritelights = scalelight[lightnum];
	.loc 1 635 17
	movl	-12(%rbp), %eax	# lightnum, tmp97
	movslq	%eax, %rdx	# tmp97, tmp96
	movq	%rdx, %rax	# tmp96, tmp98
	addq	%rax, %rax	# tmp98
	addq	%rdx, %rax	# tmp96, tmp98
	salq	$7, %rax	#, tmp99
	leaq	scalelight(%rip), %rdx	#, tmp100
	addq	%rdx, %rax	# tmp100, _8
# r_things.c:635: 	spritelights = scalelight[lightnum];
	.loc 1 635 15
	movq	%rax, spritelights(%rip)	# _8, spritelights
.L84:
# r_things.c:638:     for (thing = sec->thinglist ; thing ; thing = thing->snext)
	.loc 1 638 16
	movq	-24(%rbp), %rax	# sec, tmp101
	movq	96(%rax), %rax	# sec_14(D)->thinglist, tmp102
	movq	%rax, -8(%rbp)	# tmp102, thing
# r_things.c:638:     for (thing = sec->thinglist ; thing ; thing = thing->snext)
	.loc 1 638 5
	jmp	.L86	#
.L87:
# r_things.c:639: 	R_ProjectSprite (thing);
	.loc 1 639 2
	movq	-8(%rbp), %rax	# thing, tmp103
	movq	%rax, %rdi	# tmp103,
	call	R_ProjectSprite	#
# r_things.c:638:     for (thing = sec->thinglist ; thing ; thing = thing->snext)
	.loc 1 638 49 discriminator 3
	movq	-8(%rbp), %rax	# thing, tmp104
	movq	40(%rax), %rax	# thing_9->snext, tmp105
	movq	%rax, -8(%rbp)	# tmp105, thing
.L86:
# r_things.c:638:     for (thing = sec->thinglist ; thing ; thing = thing->snext)
	.loc 1 638 35 discriminator 1
	cmpq	$0, -8(%rbp)	#, thing
	jne	.L87	#,
	jmp	.L80	#
.L88:
# r_things.c:623: 	return;		
	.loc 1 623 2
	nop	
.L80:
# r_things.c:640: }
	.loc 1 640 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE14:
	.size	R_AddSprites, .-R_AddSprites
	.globl	R_DrawPSprite
	.type	R_DrawPSprite, @function
R_DrawPSprite:
.LFB15:
	.loc 1 647 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
	movq	%rdi, -152(%rbp)	# psp, psp
# r_things.c:647: {
	.loc 1 647 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp236
	movq	%rax, -8(%rbp)	# tmp236, D.7706
	xorl	%eax, %eax	# tmp236
# r_things.c:660:     if ( (unsigned)psp->state->sprite >= numsprites)
	.loc 1 660 23
	movq	-152(%rbp), %rax	# psp, tmp177
	movq	(%rax), %rax	# psp_104(D)->state, _1
# r_things.c:660:     if ( (unsigned)psp->state->sprite >= numsprites)
	.loc 1 660 30
	movl	(%rax), %eax	# _1->sprite, _2
# r_things.c:660:     if ( (unsigned)psp->state->sprite >= numsprites)
	.loc 1 660 39
	movl	numsprites(%rip), %edx	# numsprites, numsprites.96_3
# r_things.c:660:     if ( (unsigned)psp->state->sprite >= numsprites)
	.loc 1 660 8
	cmpl	%edx, %eax	# numsprites.97_4, _2
	jb	.L90	#,
# r_things.c:662: 		 psp->state->sprite);
	.loc 1 662 7
	movq	-152(%rbp), %rax	# psp, tmp178
	movq	(%rax), %rax	# psp_104(D)->state, _5
# r_things.c:662: 		 psp->state->sprite);
	.loc 1 662 14
	movl	(%rax), %eax	# _5->sprite, _6
# r_things.c:661: 	I_Error ("R_ProjectSprite: invalid sprite number %i ",
	.loc 1 661 2
	movl	%eax, %esi	# _6,
	leaq	.LC7(%rip), %rax	#, tmp179
	movq	%rax, %rdi	# tmp179,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L90:
# r_things.c:664:     sprdef = &sprites[psp->state->sprite];
	.loc 1 664 14
	movq	sprites(%rip), %rdx	# sprites, sprites.98_7
# r_things.c:664:     sprdef = &sprites[psp->state->sprite];
	.loc 1 664 26
	movq	-152(%rbp), %rax	# psp, tmp180
	movq	(%rax), %rax	# psp_104(D)->state, _8
# r_things.c:664:     sprdef = &sprites[psp->state->sprite];
	.loc 1 664 33
	movl	(%rax), %eax	# _8->sprite, _9
	movl	%eax, %eax	# _9, _10
# r_things.c:664:     sprdef = &sprites[psp->state->sprite];
	.loc 1 664 22
	salq	$4, %rax	#, _11
# r_things.c:664:     sprdef = &sprites[psp->state->sprite];
	.loc 1 664 12
	addq	%rdx, %rax	# sprites.98_7, tmp181
	movq	%rax, -120(%rbp)	# tmp181, sprdef
# r_things.c:666:     if ( (psp->state->frame & FF_FRAMEMASK)  >= sprdef->numframes)
	.loc 1 666 14
	movq	-152(%rbp), %rax	# psp, tmp182
	movq	(%rax), %rax	# psp_104(D)->state, _12
# r_things.c:666:     if ( (psp->state->frame & FF_FRAMEMASK)  >= sprdef->numframes)
	.loc 1 666 21
	movq	8(%rax), %rax	# _12->frame, _13
# r_things.c:666:     if ( (psp->state->frame & FF_FRAMEMASK)  >= sprdef->numframes)
	.loc 1 666 29
	andl	$32767, %eax	#, _13
	movq	%rax, %rdx	# _13, _14
# r_things.c:666:     if ( (psp->state->frame & FF_FRAMEMASK)  >= sprdef->numframes)
	.loc 1 666 55
	movq	-120(%rbp), %rax	# sprdef, tmp183
	movl	(%rax), %eax	# sprdef_106->numframes, _15
	cltq
# r_things.c:666:     if ( (psp->state->frame & FF_FRAMEMASK)  >= sprdef->numframes)
	.loc 1 666 8
	cmpq	%rax, %rdx	# _16, _14
	jl	.L91	#,
# r_things.c:668: 		 psp->state->sprite, psp->state->frame);
	.loc 1 668 27
	movq	-152(%rbp), %rax	# psp, tmp184
	movq	(%rax), %rax	# psp_104(D)->state, _17
# r_things.c:667: 	I_Error ("R_ProjectSprite: invalid sprite frame %i : %i ",
	.loc 1 667 2
	movq	8(%rax), %rdx	# _17->frame, _18
# r_things.c:668: 		 psp->state->sprite, psp->state->frame);
	.loc 1 668 7
	movq	-152(%rbp), %rax	# psp, tmp185
	movq	(%rax), %rax	# psp_104(D)->state, _19
# r_things.c:668: 		 psp->state->sprite, psp->state->frame);
	.loc 1 668 14
	movl	(%rax), %eax	# _19->sprite, _20
# r_things.c:667: 	I_Error ("R_ProjectSprite: invalid sprite frame %i : %i ",
	.loc 1 667 2
	movl	%eax, %esi	# _20,
	leaq	.LC8(%rip), %rax	#, tmp186
	movq	%rax, %rdi	# tmp186,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L91:
# r_things.c:670:     sprframe = &sprdef->spriteframes[ psp->state->frame & FF_FRAMEMASK ];
	.loc 1 670 23
	movq	-120(%rbp), %rax	# sprdef, tmp187
	movq	8(%rax), %rcx	# sprdef_106->spriteframes, _21
# r_things.c:670:     sprframe = &sprdef->spriteframes[ psp->state->frame & FF_FRAMEMASK ];
	.loc 1 670 42
	movq	-152(%rbp), %rax	# psp, tmp188
	movq	(%rax), %rax	# psp_104(D)->state, _22
# r_things.c:670:     sprframe = &sprdef->spriteframes[ psp->state->frame & FF_FRAMEMASK ];
	.loc 1 670 49
	movq	8(%rax), %rax	# _22->frame, _23
# r_things.c:670:     sprframe = &sprdef->spriteframes[ psp->state->frame & FF_FRAMEMASK ];
	.loc 1 670 57
	andl	$32767, %eax	#, _24
	movq	%rax, %rdx	# _24, _25
# r_things.c:670:     sprframe = &sprdef->spriteframes[ psp->state->frame & FF_FRAMEMASK ];
	.loc 1 670 37
	movq	%rdx, %rax	# _25, tmp189
	salq	$3, %rax	#, tmp190
	subq	%rdx, %rax	# _25, tmp189
	salq	$2, %rax	#, tmp191
# r_things.c:670:     sprframe = &sprdef->spriteframes[ psp->state->frame & FF_FRAMEMASK ];
	.loc 1 670 14
	addq	%rcx, %rax	# _21, tmp192
	movq	%rax, -112(%rbp)	# tmp192, sprframe
# r_things.c:672:     lump = sprframe->lump[0];
	.loc 1 672 26
	movq	-112(%rbp), %rax	# sprframe, tmp193
	movzwl	4(%rax), %eax	# sprframe_108->lump[0], _27
# r_things.c:672:     lump = sprframe->lump[0];
	.loc 1 672 10
	cwtl
	movl	%eax, -140(%rbp)	# tmp194, lump
# r_things.c:673:     flip = (boolean)sprframe->flip[0];
	.loc 1 673 35
	movq	-112(%rbp), %rax	# sprframe, tmp195
	movzbl	20(%rax), %eax	# sprframe_108->flip[0], _28
# r_things.c:673:     flip = (boolean)sprframe->flip[0];
	.loc 1 673 10
	movzbl	%al, %eax	# _28, tmp196
	movl	%eax, -136(%rbp)	# tmp196, flip
# r_things.c:676:     tx = psp->sx-160*FRACUNIT;
	.loc 1 676 13
	movq	-152(%rbp), %rax	# psp, tmp197
	movl	12(%rax), %eax	# psp_104(D)->sx, _29
# r_things.c:676:     tx = psp->sx-160*FRACUNIT;
	.loc 1 676 8
	subl	$10485760, %eax	#, tmp198
	movl	%eax, -132(%rbp)	# tmp198, tx
# r_things.c:678:     tx -= spriteoffset[lump];	
	.loc 1 678 23
	movq	spriteoffset(%rip), %rax	# spriteoffset, spriteoffset.99_30
	movl	-140(%rbp), %edx	# lump, tmp199
	movslq	%edx, %rdx	# tmp199, _31
	salq	$2, %rdx	#, _32
	addq	%rdx, %rax	# _32, _33
	movl	(%rax), %eax	# *_33, _34
# r_things.c:678:     tx -= spriteoffset[lump];	
	.loc 1 678 8
	subl	%eax, -132(%rbp)	# _34, tx
# r_things.c:679:     x1 = (centerxfrac + FixedMul (tx,pspritescale) ) >>FRACBITS;
	.loc 1 679 25
	movl	pspritescale(%rip), %edx	# pspritescale, pspritescale.100_35
	movl	-132(%rbp), %eax	# tx, tmp200
	movl	%edx, %esi	# pspritescale.100_35,
	movl	%eax, %edi	# tmp200,
	call	FixedMul@PLT	#
# r_things.c:679:     x1 = (centerxfrac + FixedMul (tx,pspritescale) ) >>FRACBITS;
	.loc 1 679 23 discriminator 1
	movl	centerxfrac(%rip), %edx	# centerxfrac, centerxfrac.101_37
	addl	%edx, %eax	# centerxfrac.101_37, _38
# r_things.c:679:     x1 = (centerxfrac + FixedMul (tx,pspritescale) ) >>FRACBITS;
	.loc 1 679 8 discriminator 1
	sarl	$16, %eax	#, tmp201
	movl	%eax, -128(%rbp)	# tmp201, x1
# r_things.c:682:     if (x1 > viewwidth)
	.loc 1 682 12
	movl	viewwidth(%rip), %eax	# viewwidth, viewwidth.102_39
# r_things.c:682:     if (x1 > viewwidth)
	.loc 1 682 8
	cmpl	%eax, -128(%rbp)	# viewwidth.102_39, x1
	jg	.L107	#,
# r_things.c:685:     tx +=  spritewidth[lump];
	.loc 1 685 23
	movq	spritewidth(%rip), %rax	# spritewidth, spritewidth.103_40
	movl	-140(%rbp), %edx	# lump, tmp202
	movslq	%edx, %rdx	# tmp202, _41
	salq	$2, %rdx	#, _42
	addq	%rdx, %rax	# _42, _43
	movl	(%rax), %eax	# *_43, _44
# r_things.c:685:     tx +=  spritewidth[lump];
	.loc 1 685 8
	addl	%eax, -132(%rbp)	# _44, tx
# r_things.c:686:     x2 = ((centerxfrac + FixedMul (tx, pspritescale) ) >>FRACBITS) - 1;
	.loc 1 686 26
	movl	pspritescale(%rip), %edx	# pspritescale, pspritescale.104_45
	movl	-132(%rbp), %eax	# tx, tmp203
	movl	%edx, %esi	# pspritescale.104_45,
	movl	%eax, %edi	# tmp203,
	call	FixedMul@PLT	#
# r_things.c:686:     x2 = ((centerxfrac + FixedMul (tx, pspritescale) ) >>FRACBITS) - 1;
	.loc 1 686 24 discriminator 1
	movl	centerxfrac(%rip), %edx	# centerxfrac, centerxfrac.105_47
	addl	%edx, %eax	# centerxfrac.105_47, _48
# r_things.c:686:     x2 = ((centerxfrac + FixedMul (tx, pspritescale) ) >>FRACBITS) - 1;
	.loc 1 686 56 discriminator 1
	sarl	$16, %eax	#, _49
# r_things.c:686:     x2 = ((centerxfrac + FixedMul (tx, pspritescale) ) >>FRACBITS) - 1;
	.loc 1 686 8 discriminator 1
	subl	$1, %eax	#, tmp204
	movl	%eax, -124(%rbp)	# tmp204, x2
# r_things.c:689:     if (x2 < 0)
	.loc 1 689 8
	cmpl	$0, -124(%rbp)	#, x2
	js	.L108	#,
# r_things.c:693:     vis = &avis;
	.loc 1 693 9
	leaq	-96(%rbp), %rax	#, tmp205
	movq	%rax, -104(%rbp)	# tmp205, vis
# r_things.c:694:     vis->mobjflags = 0;
	.loc 1 694 20
	movq	-104(%rbp), %rax	# vis, tmp206
	movl	$0, 72(%rax)	#, vis_118->mobjflags
# r_things.c:695:     vis->texturemid = (BASEYCENTER<<FRACBITS)+FRACUNIT/2-(psp->sy-spritetopoffset[lump]);
	.loc 1 695 62
	movq	-152(%rbp), %rax	# psp, tmp207
	movl	16(%rax), %edx	# psp_104(D)->sy, _50
# r_things.c:695:     vis->texturemid = (BASEYCENTER<<FRACBITS)+FRACUNIT/2-(psp->sy-spritetopoffset[lump]);
	.loc 1 695 82
	movq	spritetopoffset(%rip), %rax	# spritetopoffset, spritetopoffset.106_51
	movl	-140(%rbp), %ecx	# lump, tmp208
	movslq	%ecx, %rcx	# tmp208, _52
	salq	$2, %rcx	#, _53
	addq	%rcx, %rax	# _53, _54
	movl	(%rax), %eax	# *_54, _55
# r_things.c:695:     vis->texturemid = (BASEYCENTER<<FRACBITS)+FRACUNIT/2-(psp->sy-spritetopoffset[lump]);
	.loc 1 695 66
	movl	%edx, %ecx	# _50, _50
	subl	%eax, %ecx	# _55, _50
# r_things.c:695:     vis->texturemid = (BASEYCENTER<<FRACBITS)+FRACUNIT/2-(psp->sy-spritetopoffset[lump]);
	.loc 1 695 57
	movl	$6586368, %eax	#, tmp209
	subl	%ecx, %eax	# _56, tmp209
	movl	%eax, %edx	# tmp209, _57
# r_things.c:695:     vis->texturemid = (BASEYCENTER<<FRACBITS)+FRACUNIT/2-(psp->sy-spritetopoffset[lump]);
	.loc 1 695 21
	movq	-104(%rbp), %rax	# vis, tmp210
	movl	%edx, 52(%rax)	# _57, vis_118->texturemid
# r_things.c:696:     vis->x1 = x1 < 0 ? 0 : x1;
	.loc 1 696 26
	movl	-128(%rbp), %eax	# x1, tmp211
	movl	$0, %edx	#, tmp235
	testl	%eax, %eax	# tmp211
	cmovns	%eax, %edx	# tmp211,, _58
# r_things.c:696:     vis->x1 = x1 < 0 ? 0 : x1;
	.loc 1 696 13
	movq	-104(%rbp), %rax	# vis, tmp212
	movl	%edx, 16(%rax)	# _58, vis_118->x1
# r_things.c:697:     vis->x2 = x2 >= viewwidth ? viewwidth-1 : x2;	
	.loc 1 697 18
	movl	viewwidth(%rip), %eax	# viewwidth, viewwidth.108_59
# r_things.c:697:     vis->x2 = x2 >= viewwidth ? viewwidth-1 : x2;	
	.loc 1 697 45
	cmpl	%eax, -124(%rbp)	# viewwidth.108_59, x2
	jl	.L95	#,
# r_things.c:697:     vis->x2 = x2 >= viewwidth ? viewwidth-1 : x2;	
	.loc 1 697 42 discriminator 1
	movl	viewwidth(%rip), %eax	# viewwidth, viewwidth.109_60
# r_things.c:697:     vis->x2 = x2 >= viewwidth ? viewwidth-1 : x2;	
	.loc 1 697 45 discriminator 1
	subl	$1, %eax	#, iftmp.107_95
	jmp	.L96	#
.L95:
# r_things.c:697:     vis->x2 = x2 >= viewwidth ? viewwidth-1 : x2;	
	.loc 1 697 45 is_stmt 0 discriminator 2
	movl	-124(%rbp), %eax	# x2, iftmp.107_95
.L96:
# r_things.c:697:     vis->x2 = x2 >= viewwidth ? viewwidth-1 : x2;	
	.loc 1 697 13 is_stmt 1 discriminator 4
	movq	-104(%rbp), %rdx	# vis, tmp213
	movl	%eax, 20(%rdx)	# iftmp.107_95, vis_118->x2
# r_things.c:698:     vis->scale = pspritescale<<detailshift;
	.loc 1 698 30
	movl	pspritescale(%rip), %edx	# pspritescale, pspritescale.110_61
	movl	detailshift(%rip), %eax	# detailshift, detailshift.111_62
	movl	%eax, %ecx	# detailshift.111_62, tmp243
	sall	%cl, %edx	# tmp243, _63
# r_things.c:698:     vis->scale = pspritescale<<detailshift;
	.loc 1 698 16
	movq	-104(%rbp), %rax	# vis, tmp214
	movl	%edx, 44(%rax)	# _63, vis_118->scale
# r_things.c:700:     if (flip)
	.loc 1 700 8
	cmpl	$0, -136(%rbp)	#, flip
	je	.L97	#,
# r_things.c:702: 	vis->xiscale = -pspriteiscale;
	.loc 1 702 17
	movl	pspriteiscale(%rip), %eax	# pspriteiscale, pspriteiscale.112_64
	negl	%eax	# pspriteiscale.112_64
	movl	%eax, %edx	# pspriteiscale.112_64, _65
# r_things.c:702: 	vis->xiscale = -pspriteiscale;
	.loc 1 702 15
	movq	-104(%rbp), %rax	# vis, tmp215
	movl	%edx, 48(%rax)	# _65, vis_118->xiscale
# r_things.c:703: 	vis->startfrac = spritewidth[lump]-1;
	.loc 1 703 30
	movq	spritewidth(%rip), %rax	# spritewidth, spritewidth.113_66
	movl	-140(%rbp), %edx	# lump, tmp216
	movslq	%edx, %rdx	# tmp216, _67
	salq	$2, %rdx	#, _68
	addq	%rdx, %rax	# _68, _69
	movl	(%rax), %eax	# *_69, _70
# r_things.c:703: 	vis->startfrac = spritewidth[lump]-1;
	.loc 1 703 36
	leal	-1(%rax), %edx	#, _71
# r_things.c:703: 	vis->startfrac = spritewidth[lump]-1;
	.loc 1 703 17
	movq	-104(%rbp), %rax	# vis, tmp217
	movl	%edx, 40(%rax)	# _71, vis_118->startfrac
	jmp	.L98	#
.L97:
# r_things.c:707: 	vis->xiscale = pspriteiscale;
	.loc 1 707 15
	movl	pspriteiscale(%rip), %edx	# pspriteiscale, pspriteiscale.114_72
	movq	-104(%rbp), %rax	# vis, tmp218
	movl	%edx, 48(%rax)	# pspriteiscale.114_72, vis_118->xiscale
# r_things.c:708: 	vis->startfrac = 0;
	.loc 1 708 17
	movq	-104(%rbp), %rax	# vis, tmp219
	movl	$0, 40(%rax)	#, vis_118->startfrac
.L98:
# r_things.c:711:     if (vis->x1 > x1)
	.loc 1 711 12
	movq	-104(%rbp), %rax	# vis, tmp220
	movl	16(%rax), %eax	# vis_118->x1, _73
# r_things.c:711:     if (vis->x1 > x1)
	.loc 1 711 8
	cmpl	%eax, -128(%rbp)	# _73, x1
	jge	.L99	#,
# r_things.c:712: 	vis->startfrac += vis->xiscale*(vis->x1-x1);
	.loc 1 712 5
	movq	-104(%rbp), %rax	# vis, tmp221
	movl	40(%rax), %ecx	# vis_118->startfrac, _74
# r_things.c:712: 	vis->startfrac += vis->xiscale*(vis->x1-x1);
	.loc 1 712 23
	movq	-104(%rbp), %rax	# vis, tmp222
	movl	48(%rax), %edx	# vis_118->xiscale, _75
# r_things.c:712: 	vis->startfrac += vis->xiscale*(vis->x1-x1);
	.loc 1 712 37
	movq	-104(%rbp), %rax	# vis, tmp223
	movl	16(%rax), %eax	# vis_118->x1, _76
# r_things.c:712: 	vis->startfrac += vis->xiscale*(vis->x1-x1);
	.loc 1 712 41
	subl	-128(%rbp), %eax	# x1, _77
# r_things.c:712: 	vis->startfrac += vis->xiscale*(vis->x1-x1);
	.loc 1 712 32
	imull	%edx, %eax	# _75, _78
# r_things.c:712: 	vis->startfrac += vis->xiscale*(vis->x1-x1);
	.loc 1 712 17
	leal	(%rcx,%rax), %edx	#, _79
	movq	-104(%rbp), %rax	# vis, tmp224
	movl	%edx, 40(%rax)	# _79, vis_118->startfrac
.L99:
# r_things.c:714:     vis->patch = lump;
	.loc 1 714 16
	movq	-104(%rbp), %rax	# vis, tmp225
	movl	-140(%rbp), %edx	# lump, tmp226
	movl	%edx, 56(%rax)	# tmp226, vis_118->patch
# r_things.c:716:     if (viewplayer->powers[pw_invisibility] > 4*32
	.loc 1 716 19
	movq	viewplayer(%rip), %rax	# viewplayer, viewplayer.115_80
# r_things.c:716:     if (viewplayer->powers[pw_invisibility] > 4*32
	.loc 1 716 27
	movl	56(%rax), %eax	# viewplayer.115_80->powers[2], _81
# r_things.c:716:     if (viewplayer->powers[pw_invisibility] > 4*32
	.loc 1 716 8
	cmpl	$128, %eax	#, _81
	jg	.L100	#,
# r_things.c:717: 	|| viewplayer->powers[pw_invisibility] & 8)
	.loc 1 717 15
	movq	viewplayer(%rip), %rax	# viewplayer, viewplayer.116_82
# r_things.c:717: 	|| viewplayer->powers[pw_invisibility] & 8)
	.loc 1 717 23
	movl	56(%rax), %eax	# viewplayer.116_82->powers[2], _83
# r_things.c:717: 	|| viewplayer->powers[pw_invisibility] & 8)
	.loc 1 717 41
	andl	$8, %eax	#, _84
# r_things.c:717: 	|| viewplayer->powers[pw_invisibility] & 8)
	.loc 1 717 2
	testl	%eax, %eax	# _84
	je	.L101	#,
.L100:
# r_things.c:720: 	vis->colormap = NULL;
	.loc 1 720 16
	movq	-104(%rbp), %rax	# vis, tmp227
	movq	$0, 64(%rax)	#, vis_118->colormap
	jmp	.L102	#
.L101:
# r_things.c:722:     else if (fixedcolormap)
	.loc 1 722 14
	movq	fixedcolormap(%rip), %rax	# fixedcolormap, fixedcolormap.117_85
# r_things.c:722:     else if (fixedcolormap)
	.loc 1 722 13
	testq	%rax, %rax	# fixedcolormap.117_85
	je	.L103	#,
# r_things.c:725: 	vis->colormap = fixedcolormap;
	.loc 1 725 16
	movq	fixedcolormap(%rip), %rdx	# fixedcolormap, fixedcolormap.118_86
	movq	-104(%rbp), %rax	# vis, tmp228
	movq	%rdx, 64(%rax)	# fixedcolormap.118_86, vis_118->colormap
	jmp	.L102	#
.L103:
# r_things.c:727:     else if (psp->state->frame & FF_FULLBRIGHT)
	.loc 1 727 17
	movq	-152(%rbp), %rax	# psp, tmp229
	movq	(%rax), %rax	# psp_104(D)->state, _87
# r_things.c:727:     else if (psp->state->frame & FF_FULLBRIGHT)
	.loc 1 727 24
	movq	8(%rax), %rax	# _87->frame, _88
# r_things.c:727:     else if (psp->state->frame & FF_FULLBRIGHT)
	.loc 1 727 32
	andl	$32768, %eax	#, _89
# r_things.c:727:     else if (psp->state->frame & FF_FULLBRIGHT)
	.loc 1 727 13
	testq	%rax, %rax	# _89
	je	.L104	#,
# r_things.c:730: 	vis->colormap = colormaps;
	.loc 1 730 16
	movq	colormaps(%rip), %rdx	# colormaps, colormaps.119_90
	movq	-104(%rbp), %rax	# vis, tmp230
	movq	%rdx, 64(%rax)	# colormaps.119_90, vis_118->colormap
	jmp	.L102	#
.L104:
# r_things.c:735: 	vis->colormap = spritelights[MAXLIGHTSCALE-1];
	.loc 1 735 16
	movq	spritelights(%rip), %rax	# spritelights, spritelights.120_91
	movq	376(%rax), %rdx	# MEM[(lighttable_t * *)spritelights.120_91 + 376B], _92
	movq	-104(%rbp), %rax	# vis, tmp231
	movq	%rdx, 64(%rax)	# _92, vis_118->colormap
.L102:
# r_things.c:738:     R_DrawVisSprite (vis, vis->x1, vis->x2);
	.loc 1 738 5
	movq	-104(%rbp), %rax	# vis, tmp232
	movl	20(%rax), %edx	# vis_118->x2, _93
	movq	-104(%rbp), %rax	# vis, tmp233
	movl	16(%rax), %ecx	# vis_118->x1, _94
	movq	-104(%rbp), %rax	# vis, tmp234
	movl	%ecx, %esi	# _94,
	movq	%rax, %rdi	# tmp234,
	call	R_DrawVisSprite	#
	jmp	.L89	#
.L107:
# r_things.c:683: 	return;		
	.loc 1 683 2
	nop	
	jmp	.L89	#
.L108:
# r_things.c:690: 	return;
	.loc 1 690 2
	nop	
.L89:
# r_things.c:739: }
	.loc 1 739 1
	movq	-8(%rbp), %rax	# D.7706, tmp237
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp237
	je	.L106	#,
	call	__stack_chk_fail@PLT	#
.L106:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE15:
	.size	R_DrawPSprite, .-R_DrawPSprite
	.globl	R_DrawPlayerSprites
	.type	R_DrawPlayerSprites, @function
R_DrawPlayerSprites:
.LFB16:
	.loc 1 747 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# r_things.c:754: 	(viewplayer->mo->subsector->sector->lightlevel >> LIGHTSEGSHIFT) 
	.loc 1 754 13
	movq	viewplayer(%rip), %rax	# viewplayer, viewplayer.121_1
	movq	(%rax), %rax	# viewplayer.121_1->mo, _2
# r_things.c:754: 	(viewplayer->mo->subsector->sector->lightlevel >> LIGHTSEGSHIFT) 
	.loc 1 754 17
	movq	88(%rax), %rax	# _2->subsector, _3
# r_things.c:754: 	(viewplayer->mo->subsector->sector->lightlevel >> LIGHTSEGSHIFT) 
	.loc 1 754 28
	movq	(%rax), %rax	# _3->sector, _4
# r_things.c:754: 	(viewplayer->mo->subsector->sector->lightlevel >> LIGHTSEGSHIFT) 
	.loc 1 754 36
	movzwl	12(%rax), %eax	# _4->lightlevel, _5
# r_things.c:754: 	(viewplayer->mo->subsector->sector->lightlevel >> LIGHTSEGSHIFT) 
	.loc 1 754 49
	sarw	$4, %ax	#, _6
	movswl	%ax, %edx	# _6, _7
# r_things.c:755: 	+extralight;
	.loc 1 755 2
	movl	extralight(%rip), %eax	# extralight, extralight.122_8
# r_things.c:753:     lightnum =
	.loc 1 753 14
	addl	%edx, %eax	# _7, tmp93
	movl	%eax, -12(%rbp)	# tmp93, lightnum
# r_things.c:757:     if (lightnum < 0)		
	.loc 1 757 8
	cmpl	$0, -12(%rbp)	#, lightnum
	jns	.L110	#,
# r_things.c:758: 	spritelights = scalelight[0];
	.loc 1 758 15
	leaq	scalelight(%rip), %rax	#, tmp94
	movq	%rax, spritelights(%rip)	# tmp94, spritelights
	jmp	.L111	#
.L110:
# r_things.c:759:     else if (lightnum >= LIGHTLEVELS)
	.loc 1 759 13
	cmpl	$15, -12(%rbp)	#, lightnum
	jle	.L112	#,
# r_things.c:760: 	spritelights = scalelight[LIGHTLEVELS-1];
	.loc 1 760 15
	leaq	5760+scalelight(%rip), %rax	#, tmp95
	movq	%rax, spritelights(%rip)	# tmp95, spritelights
	jmp	.L111	#
.L112:
# r_things.c:762: 	spritelights = scalelight[lightnum];
	.loc 1 762 17
	movl	-12(%rbp), %eax	# lightnum, tmp97
	movslq	%eax, %rdx	# tmp97, tmp96
	movq	%rdx, %rax	# tmp96, tmp98
	addq	%rax, %rax	# tmp98
	addq	%rdx, %rax	# tmp96, tmp98
	salq	$7, %rax	#, tmp99
	leaq	scalelight(%rip), %rdx	#, tmp100
	addq	%rdx, %rax	# tmp100, _9
# r_things.c:762: 	spritelights = scalelight[lightnum];
	.loc 1 762 15
	movq	%rax, spritelights(%rip)	# _9, spritelights
.L111:
# r_things.c:765:     mfloorclip = screenheightarray;
	.loc 1 765 16
	leaq	screenheightarray(%rip), %rax	#, tmp101
	movq	%rax, mfloorclip(%rip)	# tmp101, mfloorclip
# r_things.c:766:     mceilingclip = negonearray;
	.loc 1 766 18
	leaq	negonearray(%rip), %rax	#, tmp102
	movq	%rax, mceilingclip(%rip)	# tmp102, mceilingclip
# r_things.c:769:     for (i=0, psp=viewplayer->psprites;
	.loc 1 769 11
	movl	$0, -16(%rbp)	#, i
# r_things.c:769:     for (i=0, psp=viewplayer->psprites;
	.loc 1 769 29
	movq	viewplayer(%rip), %rax	# viewplayer, viewplayer.123_10
# r_things.c:769:     for (i=0, psp=viewplayer->psprites;
	.loc 1 769 18
	addq	$264, %rax	#, tmp103
	movq	%rax, -8(%rbp)	# tmp103, psp
# r_things.c:769:     for (i=0, psp=viewplayer->psprites;
	.loc 1 769 5
	jmp	.L113	#
.L115:
# r_things.c:773: 	if (psp->state)
	.loc 1 773 9
	movq	-8(%rbp), %rax	# psp, tmp104
	movq	(%rax), %rax	# psp_13->state, _11
# r_things.c:773: 	if (psp->state)
	.loc 1 773 5
	testq	%rax, %rax	# _11
	je	.L114	#,
# r_things.c:774: 	    R_DrawPSprite (psp);
	.loc 1 774 6
	movq	-8(%rbp), %rax	# psp, tmp105
	movq	%rax, %rdi	# tmp105,
	call	R_DrawPSprite	#
.L114:
# r_things.c:771: 	 i++,psp++)
	.loc 1 771 4
	addl	$1, -16(%rbp)	#, i
# r_things.c:771: 	 i++,psp++)
	.loc 1 771 10
	addq	$24, -8(%rbp)	#, psp
.L113:
# r_things.c:770: 	 i<NUMPSPRITES;
	.loc 1 770 4
	cmpl	$1, -16(%rbp)	#, i
	jle	.L115	#,
# r_things.c:776: }
	.loc 1 776 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE16:
	.size	R_DrawPlayerSprites, .-R_DrawPlayerSprites
	.globl	vsprsortedhead
	.bss
	.align 32
	.type	vsprsortedhead, @object
	.size	vsprsortedhead, 80
vsprsortedhead:
	.zero	80
	.text
	.globl	R_SortVisSprites
	.type	R_SortVisSprites, @function
R_SortVisSprites:
.LFB17:
	.loc 1 788 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
# r_things.c:788: {
	.loc 1 788 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp133
	movq	%rax, -8(%rbp)	# tmp133, D.7708
	xorl	%eax, %eax	# tmp133
# r_things.c:796:     count = vissprite_p - vissprites;
	.loc 1 796 25
	movq	vissprite_p(%rip), %rdx	# vissprite_p, vissprite_p.124_1
	leaq	vissprites(%rip), %rax	#, tmp101
	subq	%rax, %rdx	# tmp101, _2
	sarq	$4, %rdx	#, tmp102
	movabsq	$-3689348814741910323, %rax	#, tmp104
	imulq	%rdx, %rax	# tmp102, tmp103
# r_things.c:796:     count = vissprite_p - vissprites;
	.loc 1 796 11
	movl	%eax, -116(%rbp)	# _3, count
# r_things.c:798:     unsorted.next = unsorted.prev = &unsorted;
	.loc 1 798 35
	leaq	-96(%rbp), %rax	#, tmp105
	movq	%rax, -96(%rbp)	# tmp105, unsorted.prev
# r_things.c:798:     unsorted.next = unsorted.prev = &unsorted;
	.loc 1 798 29
	movq	-96(%rbp), %rax	# unsorted.prev, _4
# r_things.c:798:     unsorted.next = unsorted.prev = &unsorted;
	.loc 1 798 19
	movq	%rax, -88(%rbp)	# _4, unsorted.next
# r_things.c:800:     if (!count)
	.loc 1 800 8
	cmpl	$0, -116(%rbp)	#, count
	je	.L127	#,
# r_things.c:803:     for (ds=vissprites ; ds<vissprite_p ; ds++)
	.loc 1 803 12
	leaq	vissprites(%rip), %rax	#, tmp106
	movq	%rax, -112(%rbp)	# tmp106, ds
# r_things.c:803:     for (ds=vissprites ; ds<vissprite_p ; ds++)
	.loc 1 803 5
	jmp	.L119	#
.L120:
# r_things.c:805: 	ds->next = ds+1;
	.loc 1 805 15
	movq	-112(%rbp), %rax	# ds, tmp107
	leaq	80(%rax), %rdx	#, _5
# r_things.c:805: 	ds->next = ds+1;
	.loc 1 805 11
	movq	-112(%rbp), %rax	# ds, tmp108
	movq	%rdx, 8(%rax)	# _5, ds_21->next
# r_things.c:806: 	ds->prev = ds-1;
	.loc 1 806 15
	movq	-112(%rbp), %rax	# ds, tmp109
	leaq	-80(%rax), %rdx	#, _6
# r_things.c:806: 	ds->prev = ds-1;
	.loc 1 806 11
	movq	-112(%rbp), %rax	# ds, tmp110
	movq	%rdx, (%rax)	# _6, ds_21->prev
# r_things.c:803:     for (ds=vissprites ; ds<vissprite_p ; ds++)
	.loc 1 803 45 discriminator 3
	addq	$80, -112(%rbp)	#, ds
.L119:
# r_things.c:803:     for (ds=vissprites ; ds<vissprite_p ; ds++)
	.loc 1 803 28 discriminator 1
	movq	vissprite_p(%rip), %rax	# vissprite_p, vissprite_p.125_7
	cmpq	%rax, -112(%rbp)	# vissprite_p.125_7, ds
	jb	.L120	#,
# r_things.c:809:     vissprites[0].prev = &unsorted;
	.loc 1 809 24
	leaq	-96(%rbp), %rax	#, tmp111
	movq	%rax, vissprites(%rip)	# tmp111, vissprites[0].prev
# r_things.c:810:     unsorted.next = &vissprites[0];
	.loc 1 810 19
	leaq	vissprites(%rip), %rax	#, tmp112
	movq	%rax, -88(%rbp)	# tmp112, unsorted.next
# r_things.c:811:     (vissprite_p-1)->next = &unsorted;
	.loc 1 811 17
	movq	vissprite_p(%rip), %rax	# vissprite_p, vissprite_p.126_8
	leaq	-80(%rax), %rdx	#, _9
# r_things.c:811:     (vissprite_p-1)->next = &unsorted;
	.loc 1 811 27
	leaq	-96(%rbp), %rax	#, tmp113
	movq	%rax, 8(%rdx)	# tmp113, _9->next
# r_things.c:812:     unsorted.prev = vissprite_p-1;
	.loc 1 812 32
	movq	vissprite_p(%rip), %rax	# vissprite_p, vissprite_p.127_10
	subq	$80, %rax	#, _11
# r_things.c:812:     unsorted.prev = vissprite_p-1;
	.loc 1 812 19
	movq	%rax, -96(%rbp)	# _11, unsorted.prev
# r_things.c:816:     vsprsortedhead.next = vsprsortedhead.prev = &vsprsortedhead;
	.loc 1 816 47
	leaq	vsprsortedhead(%rip), %rax	#, tmp114
	movq	%rax, vsprsortedhead(%rip)	# tmp114, vsprsortedhead.prev
# r_things.c:816:     vsprsortedhead.next = vsprsortedhead.prev = &vsprsortedhead;
	.loc 1 816 41
	movq	vsprsortedhead(%rip), %rax	# vsprsortedhead.prev, _12
# r_things.c:816:     vsprsortedhead.next = vsprsortedhead.prev = &vsprsortedhead;
	.loc 1 816 25
	movq	%rax, 8+vsprsortedhead(%rip)	# _12, vsprsortedhead.next
# r_things.c:817:     for (i=0 ; i<count ; i++)
	.loc 1 817 11
	movl	$0, -124(%rbp)	#, i
# r_things.c:817:     for (i=0 ; i<count ; i++)
	.loc 1 817 5
	jmp	.L121	#
.L125:
# r_things.c:819: 	bestscale = MAXINT;
	.loc 1 819 12
	movl	$2147483647, -120(%rbp)	#, bestscale
# r_things.c:820: 	for (ds=unsorted.next ; ds!= &unsorted ; ds=ds->next)
	.loc 1 820 9
	movq	-88(%rbp), %rax	# unsorted.next, tmp115
	movq	%rax, -112(%rbp)	# tmp115, ds
# r_things.c:820: 	for (ds=unsorted.next ; ds!= &unsorted ; ds=ds->next)
	.loc 1 820 2
	jmp	.L122	#
.L124:
# r_things.c:822: 	    if (ds->scale < bestscale)
	.loc 1 822 12
	movq	-112(%rbp), %rax	# ds, tmp116
	movl	44(%rax), %eax	# ds_22->scale, _13
# r_things.c:822: 	    if (ds->scale < bestscale)
	.loc 1 822 9
	cmpl	%eax, -120(%rbp)	# _13, bestscale
	jle	.L123	#,
# r_things.c:824: 		bestscale = ds->scale;
	.loc 1 824 13
	movq	-112(%rbp), %rax	# ds, tmp117
	movl	44(%rax), %eax	# ds_22->scale, tmp118
	movl	%eax, -120(%rbp)	# tmp118, bestscale
# r_things.c:825: 		best = ds;
	.loc 1 825 8
	movq	-112(%rbp), %rax	# ds, tmp119
	movq	%rax, -104(%rbp)	# tmp119, best
.L123:
# r_things.c:820: 	for (ds=unsorted.next ; ds!= &unsorted ; ds=ds->next)
	.loc 1 820 45 discriminator 2
	movq	-112(%rbp), %rax	# ds, tmp120
	movq	8(%rax), %rax	# ds_22->next, tmp121
	movq	%rax, -112(%rbp)	# tmp121, ds
.L122:
# r_things.c:820: 	for (ds=unsorted.next ; ds!= &unsorted ; ds=ds->next)
	.loc 1 820 28 discriminator 1
	leaq	-96(%rbp), %rax	#, tmp122
	cmpq	%rax, -112(%rbp)	# tmp122, ds
	jne	.L124	#,
# r_things.c:828: 	best->next->prev = best->prev;
	.loc 1 828 6
	movq	-104(%rbp), %rax	# best, tmp123
	movq	8(%rax), %rax	# best_24->next, _14
# r_things.c:828: 	best->next->prev = best->prev;
	.loc 1 828 25
	movq	-104(%rbp), %rdx	# best, tmp124
	movq	(%rdx), %rdx	# best_24->prev, _15
# r_things.c:828: 	best->next->prev = best->prev;
	.loc 1 828 19
	movq	%rdx, (%rax)	# _15, _14->prev
# r_things.c:829: 	best->prev->next = best->next;
	.loc 1 829 6
	movq	-104(%rbp), %rax	# best, tmp125
	movq	(%rax), %rax	# best_24->prev, _16
# r_things.c:829: 	best->prev->next = best->next;
	.loc 1 829 25
	movq	-104(%rbp), %rdx	# best, tmp126
	movq	8(%rdx), %rdx	# best_24->next, _17
# r_things.c:829: 	best->prev->next = best->next;
	.loc 1 829 19
	movq	%rdx, 8(%rax)	# _17, _16->next
# r_things.c:830: 	best->next = &vsprsortedhead;
	.loc 1 830 13
	movq	-104(%rbp), %rax	# best, tmp127
	leaq	vsprsortedhead(%rip), %rdx	#, tmp128
	movq	%rdx, 8(%rax)	# tmp128, best_24->next
# r_things.c:831: 	best->prev = vsprsortedhead.prev;
	.loc 1 831 29
	movq	vsprsortedhead(%rip), %rdx	# vsprsortedhead.prev, _18
# r_things.c:831: 	best->prev = vsprsortedhead.prev;
	.loc 1 831 13
	movq	-104(%rbp), %rax	# best, tmp129
	movq	%rdx, (%rax)	# _18, best_24->prev
# r_things.c:832: 	vsprsortedhead.prev->next = best;
	.loc 1 832 16
	movq	vsprsortedhead(%rip), %rax	# vsprsortedhead.prev, _19
# r_things.c:832: 	vsprsortedhead.prev->next = best;
	.loc 1 832 28
	movq	-104(%rbp), %rdx	# best, tmp130
	movq	%rdx, 8(%rax)	# tmp130, _19->next
# r_things.c:833: 	vsprsortedhead.prev = best;
	.loc 1 833 22
	movq	-104(%rbp), %rax	# best, tmp131
	movq	%rax, vsprsortedhead(%rip)	# tmp131, vsprsortedhead.prev
# r_things.c:817:     for (i=0 ; i<count ; i++)
	.loc 1 817 27 discriminator 2
	addl	$1, -124(%rbp)	#, i
.L121:
# r_things.c:817:     for (i=0 ; i<count ; i++)
	.loc 1 817 17 discriminator 1
	movl	-124(%rbp), %eax	# i, tmp132
	cmpl	-116(%rbp), %eax	# count, tmp132
	jl	.L125	#,
	jmp	.L116	#
.L127:
# r_things.c:801: 	return;
	.loc 1 801 2 discriminator 1
	nop	
.L116:
# r_things.c:835: }
	.loc 1 835 1
	movq	-8(%rbp), %rax	# D.7708, tmp134
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp134
	je	.L126	#,
	call	__stack_chk_fail@PLT	#
.L126:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE17:
	.size	R_SortVisSprites, .-R_SortVisSprites
	.globl	R_DrawSprite
	.type	R_DrawSprite, @function
R_DrawSprite:
.LFB18:
	.loc 1 843 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$1344, %rsp	#,
	movq	%rdi, -1336(%rbp)	# spr, spr
# r_things.c:843: {
	.loc 1 843 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp233
	movq	%rax, -8(%rbp)	# tmp233, D.7709
	xorl	%eax, %eax	# tmp233
# r_things.c:854:     for (x = spr->x1 ; x<=spr->x2 ; x++)
	.loc 1 854 12
	movq	-1336(%rbp), %rax	# spr, tmp139
	movl	16(%rax), %eax	# spr_85(D)->x1, tmp140
	movl	%eax, -1328(%rbp)	# tmp140, x
# r_things.c:854:     for (x = spr->x1 ; x<=spr->x2 ; x++)
	.loc 1 854 5
	jmp	.L129	#
.L130:
# r_things.c:855: 	clipbot[x] = cliptop[x] = -2;
	.loc 1 855 26
	movl	-1328(%rbp), %eax	# x, tmp142
	cltq
	movw	$-2, -656(%rbp,%rax,2)	#, cliptop[x_59]
# r_things.c:855: 	clipbot[x] = cliptop[x] = -2;
	.loc 1 855 22
	movl	-1328(%rbp), %eax	# x, tmp144
	cltq
	movzwl	-656(%rbp,%rax,2), %edx	# cliptop[x_59], _1
# r_things.c:855: 	clipbot[x] = cliptop[x] = -2;
	.loc 1 855 13
	movl	-1328(%rbp), %eax	# x, tmp146
	cltq
	movw	%dx, -1296(%rbp,%rax,2)	# _1, clipbot[x_59]
# r_things.c:854:     for (x = spr->x1 ; x<=spr->x2 ; x++)
	.loc 1 854 38 discriminator 3
	addl	$1, -1328(%rbp)	#, x
.L129:
# r_things.c:854:     for (x = spr->x1 ; x<=spr->x2 ; x++)
	.loc 1 854 30 discriminator 1
	movq	-1336(%rbp), %rax	# spr, tmp147
	movl	20(%rax), %eax	# spr_85(D)->x2, _2
# r_things.c:854:     for (x = spr->x1 ; x<=spr->x2 ; x++)
	.loc 1 854 25 discriminator 1
	cmpl	%eax, -1328(%rbp)	# _2, x
	jle	.L130	#,
# r_things.c:860:     for (ds=ds_p-1 ; ds >= drawsegs ; ds--)
	.loc 1 860 17
	movq	ds_p(%rip), %rax	# ds_p, ds_p.128_3
# r_things.c:860:     for (ds=ds_p-1 ; ds >= drawsegs ; ds--)
	.loc 1 860 12
	subq	$64, %rax	#, tmp148
	movq	%rax, -1304(%rbp)	# tmp148, ds
# r_things.c:860:     for (ds=ds_p-1 ; ds >= drawsegs ; ds--)
	.loc 1 860 5
	jmp	.L131	#
.L154:
# r_things.c:863: 	if (ds->x1 > spr->x2
	.loc 1 863 8
	movq	-1304(%rbp), %rax	# ds, tmp149
	movl	8(%rax), %edx	# ds_58->x1, _4
# r_things.c:863: 	if (ds->x1 > spr->x2
	.loc 1 863 18
	movq	-1336(%rbp), %rax	# spr, tmp150
	movl	20(%rax), %eax	# spr_85(D)->x2, _5
# r_things.c:863: 	if (ds->x1 > spr->x2
	.loc 1 863 5
	cmpl	%eax, %edx	# _5, _4
	jg	.L160	#,
# r_things.c:864: 	    || ds->x2 < spr->x1
	.loc 1 864 11
	movq	-1304(%rbp), %rax	# ds, tmp151
	movl	12(%rax), %edx	# ds_58->x2, _6
# r_things.c:864: 	    || ds->x2 < spr->x1
	.loc 1 864 21
	movq	-1336(%rbp), %rax	# spr, tmp152
	movl	16(%rax), %eax	# spr_85(D)->x1, _7
# r_things.c:864: 	    || ds->x2 < spr->x1
	.loc 1 864 6
	cmpl	%eax, %edx	# _7, _6
	jl	.L160	#,
# r_things.c:865: 	    || (!ds->silhouette
	.loc 1 865 13
	movq	-1304(%rbp), %rax	# ds, tmp153
	movl	28(%rax), %eax	# ds_58->silhouette, _8
# r_things.c:865: 	    || (!ds->silhouette
	.loc 1 865 6
	testl	%eax, %eax	# _8
	jne	.L133	#,
# r_things.c:866: 		&& !ds->maskedtexturecol) )
	.loc 1 866 9
	movq	-1304(%rbp), %rax	# ds, tmp154
	movq	56(%rax), %rax	# ds_58->maskedtexturecol, _9
# r_things.c:866: 		&& !ds->maskedtexturecol) )
	.loc 1 866 3
	testq	%rax, %rax	# _9
	je	.L160	#,
.L133:
# r_things.c:872: 	r1 = ds->x1 < spr->x1 ? spr->x1 : ds->x1;
	.loc 1 872 9
	movq	-1304(%rbp), %rax	# ds, tmp155
	movl	8(%rax), %edx	# ds_58->x1, _10
# r_things.c:872: 	r1 = ds->x1 < spr->x1 ? spr->x1 : ds->x1;
	.loc 1 872 19
	movq	-1336(%rbp), %rax	# spr, tmp156
	movl	16(%rax), %eax	# spr_85(D)->x1, _11
# r_things.c:872: 	r1 = ds->x1 < spr->x1 ? spr->x1 : ds->x1;
	.loc 1 872 5
	cmpl	%eax, %edx	# _11, _10
	cmovge	%edx, %eax	# _10,, tmp157
	movl	%eax, -1312(%rbp)	# tmp157, r1
# r_things.c:873: 	r2 = ds->x2 > spr->x2 ? spr->x2 : ds->x2;
	.loc 1 873 9
	movq	-1304(%rbp), %rax	# ds, tmp158
	movl	12(%rax), %edx	# ds_58->x2, _12
# r_things.c:873: 	r2 = ds->x2 > spr->x2 ? spr->x2 : ds->x2;
	.loc 1 873 19
	movq	-1336(%rbp), %rax	# spr, tmp159
	movl	20(%rax), %eax	# spr_85(D)->x2, _13
# r_things.c:873: 	r2 = ds->x2 > spr->x2 ? spr->x2 : ds->x2;
	.loc 1 873 5
	cmpl	%eax, %edx	# _13, _12
	cmovle	%edx, %eax	# _12,, tmp160
	movl	%eax, -1308(%rbp)	# tmp160, r2
# r_things.c:875: 	if (ds->scale1 > ds->scale2)
	.loc 1 875 8
	movq	-1304(%rbp), %rax	# ds, tmp161
	movl	16(%rax), %edx	# ds_58->scale1, _14
# r_things.c:875: 	if (ds->scale1 > ds->scale2)
	.loc 1 875 21
	movq	-1304(%rbp), %rax	# ds, tmp162
	movl	20(%rax), %eax	# ds_58->scale2, _15
# r_things.c:875: 	if (ds->scale1 > ds->scale2)
	.loc 1 875 5
	cmpl	%eax, %edx	# _15, _14
	jle	.L135	#,
# r_things.c:877: 	    lowscale = ds->scale2;
	.loc 1 877 15
	movq	-1304(%rbp), %rax	# ds, tmp163
	movl	20(%rax), %eax	# ds_58->scale2, tmp164
	movl	%eax, -1320(%rbp)	# tmp164, lowscale
# r_things.c:878: 	    scale = ds->scale1;
	.loc 1 878 12
	movq	-1304(%rbp), %rax	# ds, tmp165
	movl	16(%rax), %eax	# ds_58->scale1, tmp166
	movl	%eax, -1324(%rbp)	# tmp166, scale
	jmp	.L136	#
.L135:
# r_things.c:882: 	    lowscale = ds->scale1;
	.loc 1 882 15
	movq	-1304(%rbp), %rax	# ds, tmp167
	movl	16(%rax), %eax	# ds_58->scale1, tmp168
	movl	%eax, -1320(%rbp)	# tmp168, lowscale
# r_things.c:883: 	    scale = ds->scale2;
	.loc 1 883 12
	movq	-1304(%rbp), %rax	# ds, tmp169
	movl	20(%rax), %eax	# ds_58->scale2, tmp170
	movl	%eax, -1324(%rbp)	# tmp170, scale
.L136:
# r_things.c:886: 	if (scale < spr->scale
	.loc 1 886 17
	movq	-1336(%rbp), %rax	# spr, tmp171
	movl	44(%rax), %eax	# spr_85(D)->scale, _16
# r_things.c:886: 	if (scale < spr->scale
	.loc 1 886 5
	cmpl	%eax, -1324(%rbp)	# _16, scale
	jl	.L137	#,
# r_things.c:887: 	    || ( lowscale < spr->scale
	.loc 1 887 25
	movq	-1336(%rbp), %rax	# spr, tmp172
	movl	44(%rax), %eax	# spr_85(D)->scale, _17
# r_things.c:887: 	    || ( lowscale < spr->scale
	.loc 1 887 6
	cmpl	%eax, -1320(%rbp)	# _17, lowscale
	jge	.L138	#,
# r_things.c:888: 		 && !R_PointOnSegSide (spr->gx, spr->gy, ds->curline) ) )
	.loc 1 888 8
	movq	-1304(%rbp), %rax	# ds, tmp173
	movq	(%rax), %rdx	# ds_58->curline, _18
	movq	-1336(%rbp), %rax	# spr, tmp174
	movl	28(%rax), %ecx	# spr_85(D)->gy, _19
	movq	-1336(%rbp), %rax	# spr, tmp175
	movl	24(%rax), %eax	# spr_85(D)->gx, _20
	movl	%ecx, %esi	# _19,
	movl	%eax, %edi	# _20,
	call	R_PointOnSegSide@PLT	#
# r_things.c:888: 		 && !R_PointOnSegSide (spr->gx, spr->gy, ds->curline) ) )
	.loc 1 888 4 discriminator 1
	testl	%eax, %eax	# _21
	jne	.L138	#,
.L137:
# r_things.c:891: 	    if (ds->maskedtexturecol)	
	.loc 1 891 12
	movq	-1304(%rbp), %rax	# ds, tmp176
	movq	56(%rax), %rax	# ds_58->maskedtexturecol, _22
# r_things.c:891: 	    if (ds->maskedtexturecol)	
	.loc 1 891 9
	testq	%rax, %rax	# _22
	je	.L161	#,
# r_things.c:892: 		R_RenderMaskedSegRange (ds, r1, r2);
	.loc 1 892 3
	movl	-1308(%rbp), %edx	# r2, tmp177
	movl	-1312(%rbp), %ecx	# r1, tmp178
	movq	-1304(%rbp), %rax	# ds, tmp179
	movl	%ecx, %esi	# tmp178,
	movq	%rax, %rdi	# tmp179,
	call	R_RenderMaskedSegRange@PLT	#
# r_things.c:894: 	    continue;			
	.loc 1 894 6
	jmp	.L161	#
.L138:
# r_things.c:899: 	silhouette = ds->silhouette;
	.loc 1 899 13
	movq	-1304(%rbp), %rax	# ds, tmp180
	movl	28(%rax), %eax	# ds_58->silhouette, tmp181
	movl	%eax, -1316(%rbp)	# tmp181, silhouette
# r_things.c:901: 	if (spr->gz >= ds->bsilheight)
	.loc 1 901 9
	movq	-1336(%rbp), %rax	# spr, tmp182
	movl	32(%rax), %edx	# spr_85(D)->gz, _23
# r_things.c:901: 	if (spr->gz >= ds->bsilheight)
	.loc 1 901 19
	movq	-1304(%rbp), %rax	# ds, tmp183
	movl	32(%rax), %eax	# ds_58->bsilheight, _24
# r_things.c:901: 	if (spr->gz >= ds->bsilheight)
	.loc 1 901 5
	cmpl	%eax, %edx	# _24, _23
	jl	.L140	#,
# r_things.c:902: 	    silhouette &= ~SIL_BOTTOM;
	.loc 1 902 17
	andl	$-2, -1316(%rbp)	#, silhouette
.L140:
# r_things.c:904: 	if (spr->gzt <= ds->tsilheight)
	.loc 1 904 9
	movq	-1336(%rbp), %rax	# spr, tmp184
	movl	36(%rax), %edx	# spr_85(D)->gzt, _25
# r_things.c:904: 	if (spr->gzt <= ds->tsilheight)
	.loc 1 904 20
	movq	-1304(%rbp), %rax	# ds, tmp185
	movl	36(%rax), %eax	# ds_58->tsilheight, _26
# r_things.c:904: 	if (spr->gzt <= ds->tsilheight)
	.loc 1 904 5
	cmpl	%eax, %edx	# _26, _25
	jg	.L141	#,
# r_things.c:905: 	    silhouette &= ~SIL_TOP;
	.loc 1 905 17
	andl	$-3, -1316(%rbp)	#, silhouette
.L141:
# r_things.c:907: 	if (silhouette == 1)
	.loc 1 907 5
	cmpl	$1, -1316(%rbp)	#, silhouette
	jne	.L142	#,
# r_things.c:910: 	    for (x=r1 ; x<=r2 ; x++)
	.loc 1 910 12
	movl	-1312(%rbp), %eax	# r1, tmp186
	movl	%eax, -1328(%rbp)	# tmp186, x
# r_things.c:910: 	    for (x=r1 ; x<=r2 ; x++)
	.loc 1 910 6
	jmp	.L143	#
.L145:
# r_things.c:911: 		if (clipbot[x] == -2)
	.loc 1 911 14
	movl	-1328(%rbp), %eax	# x, tmp188
	cltq
	movzwl	-1296(%rbp,%rax,2), %eax	# clipbot[x_60], _27
# r_things.c:911: 		if (clipbot[x] == -2)
	.loc 1 911 6
	cmpw	$-2, %ax	#, _27
	jne	.L144	#,
# r_things.c:912: 		    clipbot[x] = ds->sprbottomclip[x];
	.loc 1 912 22
	movq	-1304(%rbp), %rax	# ds, tmp189
	movq	48(%rax), %rax	# ds_58->sprbottomclip, _28
# r_things.c:912: 		    clipbot[x] = ds->sprbottomclip[x];
	.loc 1 912 37
	movl	-1328(%rbp), %edx	# x, tmp190
	movslq	%edx, %rdx	# tmp190, _29
	addq	%rdx, %rdx	# _30
	addq	%rdx, %rax	# _30, _31
	movzwl	(%rax), %edx	# *_31, _32
# r_things.c:912: 		    clipbot[x] = ds->sprbottomclip[x];
	.loc 1 912 18
	movl	-1328(%rbp), %eax	# x, tmp192
	cltq
	movw	%dx, -1296(%rbp,%rax,2)	# _32, clipbot[x_60]
.L144:
# r_things.c:910: 	    for (x=r1 ; x<=r2 ; x++)
	.loc 1 910 27 discriminator 2
	addl	$1, -1328(%rbp)	#, x
.L143:
# r_things.c:910: 	    for (x=r1 ; x<=r2 ; x++)
	.loc 1 910 19 discriminator 1
	movl	-1328(%rbp), %eax	# x, tmp193
	cmpl	-1308(%rbp), %eax	# r2, tmp193
	jle	.L145	#,
	jmp	.L134	#
.L142:
# r_things.c:914: 	else if (silhouette == 2)
	.loc 1 914 10
	cmpl	$2, -1316(%rbp)	#, silhouette
	jne	.L146	#,
# r_things.c:917: 	    for (x=r1 ; x<=r2 ; x++)
	.loc 1 917 12
	movl	-1312(%rbp), %eax	# r1, tmp194
	movl	%eax, -1328(%rbp)	# tmp194, x
# r_things.c:917: 	    for (x=r1 ; x<=r2 ; x++)
	.loc 1 917 6
	jmp	.L147	#
.L149:
# r_things.c:918: 		if (cliptop[x] == -2)
	.loc 1 918 14
	movl	-1328(%rbp), %eax	# x, tmp196
	cltq
	movzwl	-656(%rbp,%rax,2), %eax	# cliptop[x_61], _33
# r_things.c:918: 		if (cliptop[x] == -2)
	.loc 1 918 6
	cmpw	$-2, %ax	#, _33
	jne	.L148	#,
# r_things.c:919: 		    cliptop[x] = ds->sprtopclip[x];
	.loc 1 919 22
	movq	-1304(%rbp), %rax	# ds, tmp197
	movq	40(%rax), %rax	# ds_58->sprtopclip, _34
# r_things.c:919: 		    cliptop[x] = ds->sprtopclip[x];
	.loc 1 919 34
	movl	-1328(%rbp), %edx	# x, tmp198
	movslq	%edx, %rdx	# tmp198, _35
	addq	%rdx, %rdx	# _36
	addq	%rdx, %rax	# _36, _37
	movzwl	(%rax), %edx	# *_37, _38
# r_things.c:919: 		    cliptop[x] = ds->sprtopclip[x];
	.loc 1 919 18
	movl	-1328(%rbp), %eax	# x, tmp200
	cltq
	movw	%dx, -656(%rbp,%rax,2)	# _38, cliptop[x_61]
.L148:
# r_things.c:917: 	    for (x=r1 ; x<=r2 ; x++)
	.loc 1 917 27 discriminator 2
	addl	$1, -1328(%rbp)	#, x
.L147:
# r_things.c:917: 	    for (x=r1 ; x<=r2 ; x++)
	.loc 1 917 19 discriminator 1
	movl	-1328(%rbp), %eax	# x, tmp201
	cmpl	-1308(%rbp), %eax	# r2, tmp201
	jle	.L149	#,
	jmp	.L134	#
.L146:
# r_things.c:921: 	else if (silhouette == 3)
	.loc 1 921 10
	cmpl	$3, -1316(%rbp)	#, silhouette
	jne	.L134	#,
# r_things.c:924: 	    for (x=r1 ; x<=r2 ; x++)
	.loc 1 924 12
	movl	-1312(%rbp), %eax	# r1, tmp202
	movl	%eax, -1328(%rbp)	# tmp202, x
# r_things.c:924: 	    for (x=r1 ; x<=r2 ; x++)
	.loc 1 924 6
	jmp	.L150	#
.L153:
# r_things.c:926: 		if (clipbot[x] == -2)
	.loc 1 926 14
	movl	-1328(%rbp), %eax	# x, tmp204
	cltq
	movzwl	-1296(%rbp,%rax,2), %eax	# clipbot[x_62], _39
# r_things.c:926: 		if (clipbot[x] == -2)
	.loc 1 926 6
	cmpw	$-2, %ax	#, _39
	jne	.L151	#,
# r_things.c:927: 		    clipbot[x] = ds->sprbottomclip[x];
	.loc 1 927 22
	movq	-1304(%rbp), %rax	# ds, tmp205
	movq	48(%rax), %rax	# ds_58->sprbottomclip, _40
# r_things.c:927: 		    clipbot[x] = ds->sprbottomclip[x];
	.loc 1 927 37
	movl	-1328(%rbp), %edx	# x, tmp206
	movslq	%edx, %rdx	# tmp206, _41
	addq	%rdx, %rdx	# _42
	addq	%rdx, %rax	# _42, _43
	movzwl	(%rax), %edx	# *_43, _44
# r_things.c:927: 		    clipbot[x] = ds->sprbottomclip[x];
	.loc 1 927 18
	movl	-1328(%rbp), %eax	# x, tmp208
	cltq
	movw	%dx, -1296(%rbp,%rax,2)	# _44, clipbot[x_62]
.L151:
# r_things.c:928: 		if (cliptop[x] == -2)
	.loc 1 928 14
	movl	-1328(%rbp), %eax	# x, tmp210
	cltq
	movzwl	-656(%rbp,%rax,2), %eax	# cliptop[x_62], _45
# r_things.c:928: 		if (cliptop[x] == -2)
	.loc 1 928 6
	cmpw	$-2, %ax	#, _45
	jne	.L152	#,
# r_things.c:929: 		    cliptop[x] = ds->sprtopclip[x];
	.loc 1 929 22
	movq	-1304(%rbp), %rax	# ds, tmp211
	movq	40(%rax), %rax	# ds_58->sprtopclip, _46
# r_things.c:929: 		    cliptop[x] = ds->sprtopclip[x];
	.loc 1 929 34
	movl	-1328(%rbp), %edx	# x, tmp212
	movslq	%edx, %rdx	# tmp212, _47
	addq	%rdx, %rdx	# _48
	addq	%rdx, %rax	# _48, _49
	movzwl	(%rax), %edx	# *_49, _50
# r_things.c:929: 		    cliptop[x] = ds->sprtopclip[x];
	.loc 1 929 18
	movl	-1328(%rbp), %eax	# x, tmp214
	cltq
	movw	%dx, -656(%rbp,%rax,2)	# _50, cliptop[x_62]
.L152:
# r_things.c:924: 	    for (x=r1 ; x<=r2 ; x++)
	.loc 1 924 27 discriminator 2
	addl	$1, -1328(%rbp)	#, x
.L150:
# r_things.c:924: 	    for (x=r1 ; x<=r2 ; x++)
	.loc 1 924 19 discriminator 1
	movl	-1328(%rbp), %eax	# x, tmp215
	cmpl	-1308(%rbp), %eax	# r2, tmp215
	jle	.L153	#,
	jmp	.L134	#
.L160:
# r_things.c:869: 	    continue;
	.loc 1 869 6
	nop	
	jmp	.L134	#
.L161:
# r_things.c:894: 	    continue;			
	.loc 1 894 6
	nop	
.L134:
# r_things.c:860:     for (ds=ds_p-1 ; ds >= drawsegs ; ds--)
	.loc 1 860 41 discriminator 2
	subq	$64, -1304(%rbp)	#, ds
.L131:
# r_things.c:860:     for (ds=ds_p-1 ; ds >= drawsegs ; ds--)
	.loc 1 860 25 discriminator 1
	leaq	drawsegs(%rip), %rax	#, tmp216
	cmpq	%rax, -1304(%rbp)	# tmp216, ds
	jnb	.L154	#,
# r_things.c:938:     for (x = spr->x1 ; x<=spr->x2 ; x++)
	.loc 1 938 12
	movq	-1336(%rbp), %rax	# spr, tmp217
	movl	16(%rax), %eax	# spr_85(D)->x1, tmp218
	movl	%eax, -1328(%rbp)	# tmp218, x
# r_things.c:938:     for (x = spr->x1 ; x<=spr->x2 ; x++)
	.loc 1 938 5
	jmp	.L155	#
.L158:
# r_things.c:940: 	if (clipbot[x] == -2)		
	.loc 1 940 13
	movl	-1328(%rbp), %eax	# x, tmp220
	cltq
	movzwl	-1296(%rbp,%rax,2), %eax	# clipbot[x_63], _51
# r_things.c:940: 	if (clipbot[x] == -2)		
	.loc 1 940 5
	cmpw	$-2, %ax	#, _51
	jne	.L156	#,
# r_things.c:941: 	    clipbot[x] = viewheight;
	.loc 1 941 17
	movl	viewheight(%rip), %eax	# viewheight, viewheight.129_52
	movl	%eax, %edx	# viewheight.129_52, _53
	movl	-1328(%rbp), %eax	# x, tmp222
	cltq
	movw	%dx, -1296(%rbp,%rax,2)	# _53, clipbot[x_63]
.L156:
# r_things.c:943: 	if (cliptop[x] == -2)
	.loc 1 943 13
	movl	-1328(%rbp), %eax	# x, tmp224
	cltq
	movzwl	-656(%rbp,%rax,2), %eax	# cliptop[x_63], _54
# r_things.c:943: 	if (cliptop[x] == -2)
	.loc 1 943 5
	cmpw	$-2, %ax	#, _54
	jne	.L157	#,
# r_things.c:944: 	    cliptop[x] = -1;
	.loc 1 944 17
	movl	-1328(%rbp), %eax	# x, tmp226
	cltq
	movw	$-1, -656(%rbp,%rax,2)	#, cliptop[x_63]
.L157:
# r_things.c:938:     for (x = spr->x1 ; x<=spr->x2 ; x++)
	.loc 1 938 38 discriminator 2
	addl	$1, -1328(%rbp)	#, x
.L155:
# r_things.c:938:     for (x = spr->x1 ; x<=spr->x2 ; x++)
	.loc 1 938 30 discriminator 1
	movq	-1336(%rbp), %rax	# spr, tmp227
	movl	20(%rax), %eax	# spr_85(D)->x2, _55
# r_things.c:938:     for (x = spr->x1 ; x<=spr->x2 ; x++)
	.loc 1 938 25 discriminator 1
	cmpl	%eax, -1328(%rbp)	# _55, x
	jle	.L158	#,
# r_things.c:947:     mfloorclip = clipbot;
	.loc 1 947 16
	leaq	-1296(%rbp), %rax	#, tmp228
	movq	%rax, mfloorclip(%rip)	# tmp228, mfloorclip
# r_things.c:948:     mceilingclip = cliptop;
	.loc 1 948 18
	leaq	-656(%rbp), %rax	#, tmp229
	movq	%rax, mceilingclip(%rip)	# tmp229, mceilingclip
# r_things.c:949:     R_DrawVisSprite (spr, spr->x1, spr->x2);
	.loc 1 949 5
	movq	-1336(%rbp), %rax	# spr, tmp230
	movl	20(%rax), %edx	# spr_85(D)->x2, _56
	movq	-1336(%rbp), %rax	# spr, tmp231
	movl	16(%rax), %ecx	# spr_85(D)->x1, _57
	movq	-1336(%rbp), %rax	# spr, tmp232
	movl	%ecx, %esi	# _57,
	movq	%rax, %rdi	# tmp232,
	call	R_DrawVisSprite	#
# r_things.c:950: }
	.loc 1 950 1
	nop	
	movq	-8(%rbp), %rax	# D.7709, tmp234
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp234
	je	.L159	#,
	call	__stack_chk_fail@PLT	#
.L159:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE18:
	.size	R_DrawSprite, .-R_DrawSprite
	.globl	R_DrawMasked
	.type	R_DrawMasked, @function
R_DrawMasked:
.LFB19:
	.loc 1 959 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# r_things.c:963:     R_SortVisSprites ();
	.loc 1 963 5
	call	R_SortVisSprites	#
# r_things.c:965:     if (vissprite_p > vissprites)
	.loc 1 965 21
	movq	vissprite_p(%rip), %rax	# vissprite_p, vissprite_p.130_1
# r_things.c:965:     if (vissprite_p > vissprites)
	.loc 1 965 8
	leaq	vissprites(%rip), %rdx	#, tmp88
	cmpq	%rax, %rdx	# vissprite_p.130_1, tmp88
	jnb	.L163	#,
# r_things.c:968: 	for (spr = vsprsortedhead.next ;
	.loc 1 968 11
	movq	8+vsprsortedhead(%rip), %rax	# vsprsortedhead.next, tmp89
	movq	%rax, -16(%rbp)	# tmp89, spr
# r_things.c:968: 	for (spr = vsprsortedhead.next ;
	.loc 1 968 2
	jmp	.L164	#
.L165:
# r_things.c:973: 	    R_DrawSprite (spr);
	.loc 1 973 6
	movq	-16(%rbp), %rax	# spr, tmp90
	movq	%rax, %rdi	# tmp90,
	call	R_DrawSprite	#
# r_things.c:970: 	     spr=spr->next)
	.loc 1 970 10
	movq	-16(%rbp), %rax	# spr, tmp91
	movq	8(%rax), %rax	# spr_7->next, tmp92
	movq	%rax, -16(%rbp)	# tmp92, spr
.L164:
# r_things.c:969: 	     spr != &vsprsortedhead ;
	.loc 1 969 11
	leaq	vsprsortedhead(%rip), %rax	#, tmp93
	cmpq	%rax, -16(%rbp)	# tmp93, spr
	jne	.L165	#,
.L163:
# r_things.c:978:     for (ds=ds_p-1 ; ds >= drawsegs ; ds--)
	.loc 1 978 17
	movq	ds_p(%rip), %rax	# ds_p, ds_p.131_2
# r_things.c:978:     for (ds=ds_p-1 ; ds >= drawsegs ; ds--)
	.loc 1 978 12
	subq	$64, %rax	#, tmp94
	movq	%rax, -8(%rbp)	# tmp94, ds
# r_things.c:978:     for (ds=ds_p-1 ; ds >= drawsegs ; ds--)
	.loc 1 978 5
	jmp	.L166	#
.L168:
# r_things.c:979: 	if (ds->maskedtexturecol)
	.loc 1 979 8
	movq	-8(%rbp), %rax	# ds, tmp95
	movq	56(%rax), %rax	# ds_8->maskedtexturecol, _3
# r_things.c:979: 	if (ds->maskedtexturecol)
	.loc 1 979 5
	testq	%rax, %rax	# _3
	je	.L167	#,
# r_things.c:980: 	    R_RenderMaskedSegRange (ds, ds->x1, ds->x2);
	.loc 1 980 6
	movq	-8(%rbp), %rax	# ds, tmp96
	movl	12(%rax), %edx	# ds_8->x2, _4
	movq	-8(%rbp), %rax	# ds, tmp97
	movl	8(%rax), %ecx	# ds_8->x1, _5
	movq	-8(%rbp), %rax	# ds, tmp98
	movl	%ecx, %esi	# _5,
	movq	%rax, %rdi	# tmp98,
	call	R_RenderMaskedSegRange@PLT	#
.L167:
# r_things.c:978:     for (ds=ds_p-1 ; ds >= drawsegs ; ds--)
	.loc 1 978 41 discriminator 2
	subq	$64, -8(%rbp)	#, ds
.L166:
# r_things.c:978:     for (ds=ds_p-1 ; ds >= drawsegs ; ds--)
	.loc 1 978 25 discriminator 1
	leaq	drawsegs(%rip), %rax	#, tmp99
	cmpq	%rax, -8(%rbp)	# tmp99, ds
	jnb	.L168	#,
# r_things.c:984:     if (!viewangleoffset)		
	.loc 1 984 9
	movl	viewangleoffset(%rip), %eax	# viewangleoffset, viewangleoffset.132_6
# r_things.c:984:     if (!viewangleoffset)		
	.loc 1 984 8
	testl	%eax, %eax	# viewangleoffset.132_6
	jne	.L170	#,
# r_things.c:985: 	R_DrawPlayerSprites ();
	.loc 1 985 2
	call	R_DrawPlayerSprites	#
.L170:
# r_things.c:986: }
	.loc 1 986 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE19:
	.size	R_DrawMasked, .-R_DrawMasked
.Letext0:
	.file 2 "doomdef.h"
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 4 "doomtype.h"
	.file 5 "d_ticcmd.h"
	.file 6 "w_wad.h"
	.file 7 "m_fixed.h"
	.file 8 "tables.h"
	.file 9 "d_think.h"
	.file 10 "doomdata.h"
	.file 11 "info.h"
	.file 12 "p_mobj.h"
	.file 13 "r_defs.h"
	.file 14 "d_player.h"
	.file 15 "p_pspr.h"
	.file 16 "r_state.h"
	.file 17 "r_main.h"
	.file 18 "r_bsp.h"
	.file 19 "r_things.h"
	.file 20 "r_draw.h"
	.file 21 "doomstat.h"
	.file 22 "/usr/include/string.h"
	.file 23 "z_zone.h"
	.file 24 "r_segs.h"
	.file 25 "i_system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3e66
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x28
	.long	.LASF1641
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
	.byte	0x32
	.byte	0
	.uleb128 0x21
	.long	0x2e
	.uleb128 0xf
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x21
	.long	0x4a
	.uleb128 0x16
	.long	.LASF1599
	.byte	0x1a
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x9
	.long	.LASF30
	.byte	0x3
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x29
	.byte	0x8
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0xf
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0xf
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2a
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xf
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x6
	.long	0x4a
	.uleb128 0xf
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0xf
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0xc
	.long	0x4a
	.long	0xcd
	.uleb128 0xd
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.long	0xd2
	.uleb128 0x2b
	.uleb128 0x10
	.long	0x77
	.byte	0x2
	.byte	0xa3
	.byte	0x1
	.long	0x10a
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
	.uleb128 0x2
	.long	.LASF16
	.byte	0x4
	.uleb128 0x2
	.long	.LASF17
	.byte	0x5
	.uleb128 0x2
	.long	.LASF18
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.long	0x77
	.byte	0x2
	.byte	0xb5
	.byte	0x1
	.long	0x159
	.uleb128 0x2
	.long	.LASF19
	.byte	0
	.uleb128 0x2
	.long	.LASF20
	.byte	0x1
	.uleb128 0x2
	.long	.LASF21
	.byte	0x2
	.uleb128 0x2
	.long	.LASF22
	.byte	0x3
	.uleb128 0x2
	.long	.LASF23
	.byte	0x4
	.uleb128 0x2
	.long	.LASF24
	.byte	0x5
	.uleb128 0x2
	.long	.LASF25
	.byte	0x6
	.uleb128 0x2
	.long	.LASF26
	.byte	0x7
	.uleb128 0x2
	.long	.LASF27
	.byte	0x8
	.uleb128 0x2
	.long	.LASF28
	.byte	0x9
	.uleb128 0x2
	.long	.LASF29
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.long	.LASF31
	.byte	0x2
	.byte	0xc5
	.byte	0x3
	.long	0x10a
	.uleb128 0x10
	.long	0x77
	.byte	0x2
	.byte	0xca
	.byte	0x1
	.long	0x196
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
	.uleb128 0x10
	.long	0x77
	.byte	0x2
	.byte	0xd7
	.byte	0x1
	.long	0x1cd
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
	.uleb128 0x10
	.long	0x77
	.byte	0x4
	.byte	0x22
	.byte	0xe
	.long	0x1e6
	.uleb128 0x2
	.long	.LASF45
	.byte	0
	.uleb128 0x2
	.long	.LASF46
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.long	.LASF47
	.byte	0x4
	.byte	0x22
	.byte	0x1c
	.long	0x1cd
	.uleb128 0x9
	.long	.LASF48
	.byte	0x4
	.byte	0x24
	.byte	0x17
	.long	0x80
	.uleb128 0x13
	.byte	0x8
	.byte	0x5
	.byte	0x24
	.long	0x255
	.uleb128 0x3
	.long	.LASF49
	.byte	0x5
	.byte	0x26
	.byte	0xa
	.long	0x4a
	.byte	0
	.uleb128 0x3
	.long	.LASF50
	.byte	0x5
	.byte	0x27
	.byte	0xa
	.long	0x4a
	.byte	0x1
	.uleb128 0x3
	.long	.LASF51
	.byte	0x5
	.byte	0x28
	.byte	0xb
	.long	0x95
	.byte	0x2
	.uleb128 0x3
	.long	.LASF52
	.byte	0x5
	.byte	0x29
	.byte	0xb
	.long	0x95
	.byte	0x4
	.uleb128 0x3
	.long	.LASF53
	.byte	0x5
	.byte	0x2a
	.byte	0xa
	.long	0x1f2
	.byte	0x6
	.uleb128 0x3
	.long	.LASF54
	.byte	0x5
	.byte	0x2b
	.byte	0xa
	.long	0x1f2
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.long	.LASF55
	.byte	0x5
	.byte	0x2c
	.byte	0x3
	.long	0x1fe
	.uleb128 0x13
	.byte	0x14
	.byte	0x6
	.byte	0x38
	.long	0x29e
	.uleb128 0x3
	.long	.LASF56
	.byte	0x6
	.byte	0x3a
	.byte	0xa
	.long	0xbd
	.byte	0
	.uleb128 0x3
	.long	.LASF57
	.byte	0x6
	.byte	0x3b
	.byte	0xa
	.long	0x9c
	.byte	0x8
	.uleb128 0x3
	.long	.LASF58
	.byte	0x6
	.byte	0x3c
	.byte	0xa
	.long	0x9c
	.byte	0xc
	.uleb128 0x3
	.long	.LASF59
	.byte	0x6
	.byte	0x3d
	.byte	0xa
	.long	0x9c
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.long	.LASF60
	.byte	0x6
	.byte	0x3e
	.byte	0x3
	.long	0x261
	.uleb128 0x5
	.long	.LASF1535
	.byte	0x6
	.byte	0x42
	.byte	0x14
	.long	0x2b6
	.uleb128 0x6
	.long	0x29e
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.long	.LASF61
	.uleb128 0xf
	.byte	0x8
	.byte	0x4
	.long	.LASF62
	.uleb128 0x9
	.long	.LASF63
	.byte	0x7
	.byte	0x26
	.byte	0xd
	.long	0x9c
	.uleb128 0x6
	.long	0x2c9
	.uleb128 0x9
	.long	.LASF64
	.byte	0x8
	.byte	0x4e
	.byte	0x12
	.long	0x77
	.uleb128 0x9
	.long	.LASF65
	.byte	0x9
	.byte	0x29
	.byte	0x11
	.long	0x2f2
	.uleb128 0x6
	.long	0x2f7
	.uleb128 0x2c
	.long	0x2fe
	.uleb128 0x22
	.byte	0
	.uleb128 0x9
	.long	.LASF66
	.byte	0x9
	.byte	0x2a
	.byte	0x11
	.long	0x30a
	.uleb128 0x6
	.long	0x30f
	.uleb128 0x23
	.long	0x31a
	.uleb128 0x8
	.long	0x7e
	.byte	0
	.uleb128 0x9
	.long	.LASF67
	.byte	0x9
	.byte	0x2b
	.byte	0x11
	.long	0x326
	.uleb128 0x6
	.long	0x32b
	.uleb128 0x23
	.long	0x33b
	.uleb128 0x8
	.long	0x7e
	.uleb128 0x8
	.long	0x7e
	.byte	0
	.uleb128 0x2d
	.byte	0x8
	.byte	0x9
	.byte	0x2d
	.byte	0x9
	.long	0x365
	.uleb128 0x24
	.long	.LASF68
	.byte	0x2f
	.long	0x2fe
	.uleb128 0x2e
	.string	"acv"
	.byte	0x9
	.byte	0x30
	.byte	0xd
	.long	0x2e6
	.uleb128 0x24
	.long	.LASF69
	.byte	0x31
	.long	0x31a
	.byte	0
	.uleb128 0x9
	.long	.LASF70
	.byte	0x9
	.byte	0x33
	.byte	0x3
	.long	0x33b
	.uleb128 0x9
	.long	.LASF71
	.byte	0x9
	.byte	0x3c
	.byte	0x14
	.long	0x365
	.uleb128 0x1c
	.long	.LASF1388
	.byte	0x18
	.byte	0x9
	.byte	0x40
	.long	0x3b1
	.uleb128 0x3
	.long	.LASF72
	.byte	0x9
	.byte	0x42
	.byte	0x17
	.long	0x3b1
	.byte	0
	.uleb128 0x3
	.long	.LASF73
	.byte	0x9
	.byte	0x43
	.byte	0x17
	.long	0x3b1
	.byte	0x8
	.uleb128 0x3
	.long	.LASF74
	.byte	0x9
	.byte	0x44
	.byte	0xe
	.long	0x371
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	0x37d
	.uleb128 0x9
	.long	.LASF75
	.byte	0x9
	.byte	0x46
	.byte	0x3
	.long	0x37d
	.uleb128 0xc
	.long	0x95
	.long	0x3d2
	.uleb128 0xd
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.byte	0xa
	.byte	0xa
	.byte	0xcb
	.long	0x418
	.uleb128 0xb
	.string	"x"
	.byte	0xa
	.byte	0xcd
	.byte	0xc
	.long	0x95
	.byte	0
	.uleb128 0xb
	.string	"y"
	.byte	0xa
	.byte	0xce
	.byte	0xc
	.long	0x95
	.byte	0x2
	.uleb128 0x3
	.long	.LASF76
	.byte	0xa
	.byte	0xcf
	.byte	0xc
	.long	0x95
	.byte	0x4
	.uleb128 0x3
	.long	.LASF77
	.byte	0xa
	.byte	0xd0
	.byte	0xc
	.long	0x95
	.byte	0x6
	.uleb128 0x3
	.long	.LASF78
	.byte	0xa
	.byte	0xd1
	.byte	0xc
	.long	0x95
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	.LASF79
	.byte	0xa
	.byte	0xd2
	.byte	0x3
	.long	0x3d2
	.uleb128 0x10
	.long	0x77
	.byte	0xb
	.byte	0x1f
	.byte	0x1
	.long	0x773
	.uleb128 0x2
	.long	.LASF80
	.byte	0
	.uleb128 0x2
	.long	.LASF81
	.byte	0x1
	.uleb128 0x2
	.long	.LASF82
	.byte	0x2
	.uleb128 0x2
	.long	.LASF83
	.byte	0x3
	.uleb128 0x2
	.long	.LASF84
	.byte	0x4
	.uleb128 0x2
	.long	.LASF85
	.byte	0x5
	.uleb128 0x2
	.long	.LASF86
	.byte	0x6
	.uleb128 0x2
	.long	.LASF87
	.byte	0x7
	.uleb128 0x2
	.long	.LASF88
	.byte	0x8
	.uleb128 0x2
	.long	.LASF89
	.byte	0x9
	.uleb128 0x2
	.long	.LASF90
	.byte	0xa
	.uleb128 0x2
	.long	.LASF91
	.byte	0xb
	.uleb128 0x2
	.long	.LASF92
	.byte	0xc
	.uleb128 0x2
	.long	.LASF93
	.byte	0xd
	.uleb128 0x2
	.long	.LASF94
	.byte	0xe
	.uleb128 0x2
	.long	.LASF95
	.byte	0xf
	.uleb128 0x2
	.long	.LASF96
	.byte	0x10
	.uleb128 0x2
	.long	.LASF97
	.byte	0x11
	.uleb128 0x2
	.long	.LASF98
	.byte	0x12
	.uleb128 0x2
	.long	.LASF99
	.byte	0x13
	.uleb128 0x2
	.long	.LASF100
	.byte	0x14
	.uleb128 0x2
	.long	.LASF101
	.byte	0x15
	.uleb128 0x2
	.long	.LASF102
	.byte	0x16
	.uleb128 0x2
	.long	.LASF103
	.byte	0x17
	.uleb128 0x2
	.long	.LASF104
	.byte	0x18
	.uleb128 0x2
	.long	.LASF105
	.byte	0x19
	.uleb128 0x2
	.long	.LASF106
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF107
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF108
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF109
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF110
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF111
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF112
	.byte	0x20
	.uleb128 0x2
	.long	.LASF113
	.byte	0x21
	.uleb128 0x2
	.long	.LASF114
	.byte	0x22
	.uleb128 0x2
	.long	.LASF115
	.byte	0x23
	.uleb128 0x2
	.long	.LASF116
	.byte	0x24
	.uleb128 0x2
	.long	.LASF117
	.byte	0x25
	.uleb128 0x2
	.long	.LASF118
	.byte	0x26
	.uleb128 0x2
	.long	.LASF119
	.byte	0x27
	.uleb128 0x2
	.long	.LASF120
	.byte	0x28
	.uleb128 0x2
	.long	.LASF121
	.byte	0x29
	.uleb128 0x2
	.long	.LASF122
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF123
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF124
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF125
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF126
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF127
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF128
	.byte	0x30
	.uleb128 0x2
	.long	.LASF129
	.byte	0x31
	.uleb128 0x2
	.long	.LASF130
	.byte	0x32
	.uleb128 0x2
	.long	.LASF131
	.byte	0x33
	.uleb128 0x2
	.long	.LASF132
	.byte	0x34
	.uleb128 0x2
	.long	.LASF133
	.byte	0x35
	.uleb128 0x2
	.long	.LASF134
	.byte	0x36
	.uleb128 0x2
	.long	.LASF135
	.byte	0x37
	.uleb128 0x2
	.long	.LASF136
	.byte	0x38
	.uleb128 0x2
	.long	.LASF137
	.byte	0x39
	.uleb128 0x2
	.long	.LASF138
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF139
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF140
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF141
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF142
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF143
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF144
	.byte	0x40
	.uleb128 0x2
	.long	.LASF145
	.byte	0x41
	.uleb128 0x2
	.long	.LASF146
	.byte	0x42
	.uleb128 0x2
	.long	.LASF147
	.byte	0x43
	.uleb128 0x2
	.long	.LASF148
	.byte	0x44
	.uleb128 0x2
	.long	.LASF149
	.byte	0x45
	.uleb128 0x2
	.long	.LASF150
	.byte	0x46
	.uleb128 0x2
	.long	.LASF151
	.byte	0x47
	.uleb128 0x2
	.long	.LASF152
	.byte	0x48
	.uleb128 0x2
	.long	.LASF153
	.byte	0x49
	.uleb128 0x2
	.long	.LASF154
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF155
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF156
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF157
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF158
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF159
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF160
	.byte	0x50
	.uleb128 0x2
	.long	.LASF161
	.byte	0x51
	.uleb128 0x2
	.long	.LASF162
	.byte	0x52
	.uleb128 0x2
	.long	.LASF163
	.byte	0x53
	.uleb128 0x2
	.long	.LASF164
	.byte	0x54
	.uleb128 0x2
	.long	.LASF165
	.byte	0x55
	.uleb128 0x2
	.long	.LASF166
	.byte	0x56
	.uleb128 0x2
	.long	.LASF167
	.byte	0x57
	.uleb128 0x2
	.long	.LASF168
	.byte	0x58
	.uleb128 0x2
	.long	.LASF169
	.byte	0x59
	.uleb128 0x2
	.long	.LASF170
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF171
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF172
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF173
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF174
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF175
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF176
	.byte	0x60
	.uleb128 0x2
	.long	.LASF177
	.byte	0x61
	.uleb128 0x2
	.long	.LASF178
	.byte	0x62
	.uleb128 0x2
	.long	.LASF179
	.byte	0x63
	.uleb128 0x2
	.long	.LASF180
	.byte	0x64
	.uleb128 0x2
	.long	.LASF181
	.byte	0x65
	.uleb128 0x2
	.long	.LASF182
	.byte	0x66
	.uleb128 0x2
	.long	.LASF183
	.byte	0x67
	.uleb128 0x2
	.long	.LASF184
	.byte	0x68
	.uleb128 0x2
	.long	.LASF185
	.byte	0x69
	.uleb128 0x2
	.long	.LASF186
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF187
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF188
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF189
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF190
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF191
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF192
	.byte	0x70
	.uleb128 0x2
	.long	.LASF193
	.byte	0x71
	.uleb128 0x2
	.long	.LASF194
	.byte	0x72
	.uleb128 0x2
	.long	.LASF195
	.byte	0x73
	.uleb128 0x2
	.long	.LASF196
	.byte	0x74
	.uleb128 0x2
	.long	.LASF197
	.byte	0x75
	.uleb128 0x2
	.long	.LASF198
	.byte	0x76
	.uleb128 0x2
	.long	.LASF199
	.byte	0x77
	.uleb128 0x2
	.long	.LASF200
	.byte	0x78
	.uleb128 0x2
	.long	.LASF201
	.byte	0x79
	.uleb128 0x2
	.long	.LASF202
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF203
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF204
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF205
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF206
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF207
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF208
	.byte	0x80
	.uleb128 0x2
	.long	.LASF209
	.byte	0x81
	.uleb128 0x2
	.long	.LASF210
	.byte	0x82
	.uleb128 0x2
	.long	.LASF211
	.byte	0x83
	.uleb128 0x2
	.long	.LASF212
	.byte	0x84
	.uleb128 0x2
	.long	.LASF213
	.byte	0x85
	.uleb128 0x2
	.long	.LASF214
	.byte	0x86
	.uleb128 0x2
	.long	.LASF215
	.byte	0x87
	.uleb128 0x2
	.long	.LASF216
	.byte	0x88
	.uleb128 0x2
	.long	.LASF217
	.byte	0x89
	.uleb128 0x2
	.long	.LASF218
	.byte	0x8a
	.byte	0
	.uleb128 0x9
	.long	.LASF219
	.byte	0xb
	.byte	0xac
	.byte	0x3
	.long	0x424
	.uleb128 0x10
	.long	0x77
	.byte	0xb
	.byte	0xaf
	.byte	0x1
	.long	0x2104
	.uleb128 0x2
	.long	.LASF220
	.byte	0
	.uleb128 0x2
	.long	.LASF221
	.byte	0x1
	.uleb128 0x2
	.long	.LASF222
	.byte	0x2
	.uleb128 0x2
	.long	.LASF223
	.byte	0x3
	.uleb128 0x2
	.long	.LASF224
	.byte	0x4
	.uleb128 0x2
	.long	.LASF225
	.byte	0x5
	.uleb128 0x2
	.long	.LASF226
	.byte	0x6
	.uleb128 0x2
	.long	.LASF227
	.byte	0x7
	.uleb128 0x2
	.long	.LASF228
	.byte	0x8
	.uleb128 0x2
	.long	.LASF229
	.byte	0x9
	.uleb128 0x2
	.long	.LASF230
	.byte	0xa
	.uleb128 0x2
	.long	.LASF231
	.byte	0xb
	.uleb128 0x2
	.long	.LASF232
	.byte	0xc
	.uleb128 0x2
	.long	.LASF233
	.byte	0xd
	.uleb128 0x2
	.long	.LASF234
	.byte	0xe
	.uleb128 0x2
	.long	.LASF235
	.byte	0xf
	.uleb128 0x2
	.long	.LASF236
	.byte	0x10
	.uleb128 0x2
	.long	.LASF237
	.byte	0x11
	.uleb128 0x2
	.long	.LASF238
	.byte	0x12
	.uleb128 0x2
	.long	.LASF239
	.byte	0x13
	.uleb128 0x2
	.long	.LASF240
	.byte	0x14
	.uleb128 0x2
	.long	.LASF241
	.byte	0x15
	.uleb128 0x2
	.long	.LASF242
	.byte	0x16
	.uleb128 0x2
	.long	.LASF243
	.byte	0x17
	.uleb128 0x2
	.long	.LASF244
	.byte	0x18
	.uleb128 0x2
	.long	.LASF245
	.byte	0x19
	.uleb128 0x2
	.long	.LASF246
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF247
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF248
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF249
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF250
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF251
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF252
	.byte	0x20
	.uleb128 0x2
	.long	.LASF253
	.byte	0x21
	.uleb128 0x2
	.long	.LASF254
	.byte	0x22
	.uleb128 0x2
	.long	.LASF255
	.byte	0x23
	.uleb128 0x2
	.long	.LASF256
	.byte	0x24
	.uleb128 0x2
	.long	.LASF257
	.byte	0x25
	.uleb128 0x2
	.long	.LASF258
	.byte	0x26
	.uleb128 0x2
	.long	.LASF259
	.byte	0x27
	.uleb128 0x2
	.long	.LASF260
	.byte	0x28
	.uleb128 0x2
	.long	.LASF261
	.byte	0x29
	.uleb128 0x2
	.long	.LASF262
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF263
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF264
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF265
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF266
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF267
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF268
	.byte	0x30
	.uleb128 0x2
	.long	.LASF269
	.byte	0x31
	.uleb128 0x2
	.long	.LASF270
	.byte	0x32
	.uleb128 0x2
	.long	.LASF271
	.byte	0x33
	.uleb128 0x2
	.long	.LASF272
	.byte	0x34
	.uleb128 0x2
	.long	.LASF273
	.byte	0x35
	.uleb128 0x2
	.long	.LASF274
	.byte	0x36
	.uleb128 0x2
	.long	.LASF275
	.byte	0x37
	.uleb128 0x2
	.long	.LASF276
	.byte	0x38
	.uleb128 0x2
	.long	.LASF277
	.byte	0x39
	.uleb128 0x2
	.long	.LASF278
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF279
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF280
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF281
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF282
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF283
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF284
	.byte	0x40
	.uleb128 0x2
	.long	.LASF285
	.byte	0x41
	.uleb128 0x2
	.long	.LASF286
	.byte	0x42
	.uleb128 0x2
	.long	.LASF287
	.byte	0x43
	.uleb128 0x2
	.long	.LASF288
	.byte	0x44
	.uleb128 0x2
	.long	.LASF289
	.byte	0x45
	.uleb128 0x2
	.long	.LASF290
	.byte	0x46
	.uleb128 0x2
	.long	.LASF291
	.byte	0x47
	.uleb128 0x2
	.long	.LASF292
	.byte	0x48
	.uleb128 0x2
	.long	.LASF293
	.byte	0x49
	.uleb128 0x2
	.long	.LASF294
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF295
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF296
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF297
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF298
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF299
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF300
	.byte	0x50
	.uleb128 0x2
	.long	.LASF301
	.byte	0x51
	.uleb128 0x2
	.long	.LASF302
	.byte	0x52
	.uleb128 0x2
	.long	.LASF303
	.byte	0x53
	.uleb128 0x2
	.long	.LASF304
	.byte	0x54
	.uleb128 0x2
	.long	.LASF305
	.byte	0x55
	.uleb128 0x2
	.long	.LASF306
	.byte	0x56
	.uleb128 0x2
	.long	.LASF307
	.byte	0x57
	.uleb128 0x2
	.long	.LASF308
	.byte	0x58
	.uleb128 0x2
	.long	.LASF309
	.byte	0x59
	.uleb128 0x2
	.long	.LASF310
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF311
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF312
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF313
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF314
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF315
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF316
	.byte	0x60
	.uleb128 0x2
	.long	.LASF317
	.byte	0x61
	.uleb128 0x2
	.long	.LASF318
	.byte	0x62
	.uleb128 0x2
	.long	.LASF319
	.byte	0x63
	.uleb128 0x2
	.long	.LASF320
	.byte	0x64
	.uleb128 0x2
	.long	.LASF321
	.byte	0x65
	.uleb128 0x2
	.long	.LASF322
	.byte	0x66
	.uleb128 0x2
	.long	.LASF323
	.byte	0x67
	.uleb128 0x2
	.long	.LASF324
	.byte	0x68
	.uleb128 0x2
	.long	.LASF325
	.byte	0x69
	.uleb128 0x2
	.long	.LASF326
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF327
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF328
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF329
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF330
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF331
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF332
	.byte	0x70
	.uleb128 0x2
	.long	.LASF333
	.byte	0x71
	.uleb128 0x2
	.long	.LASF334
	.byte	0x72
	.uleb128 0x2
	.long	.LASF335
	.byte	0x73
	.uleb128 0x2
	.long	.LASF336
	.byte	0x74
	.uleb128 0x2
	.long	.LASF337
	.byte	0x75
	.uleb128 0x2
	.long	.LASF338
	.byte	0x76
	.uleb128 0x2
	.long	.LASF339
	.byte	0x77
	.uleb128 0x2
	.long	.LASF340
	.byte	0x78
	.uleb128 0x2
	.long	.LASF341
	.byte	0x79
	.uleb128 0x2
	.long	.LASF342
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF343
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF344
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF345
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF346
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF347
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF348
	.byte	0x80
	.uleb128 0x2
	.long	.LASF349
	.byte	0x81
	.uleb128 0x2
	.long	.LASF350
	.byte	0x82
	.uleb128 0x2
	.long	.LASF351
	.byte	0x83
	.uleb128 0x2
	.long	.LASF352
	.byte	0x84
	.uleb128 0x2
	.long	.LASF353
	.byte	0x85
	.uleb128 0x2
	.long	.LASF354
	.byte	0x86
	.uleb128 0x2
	.long	.LASF355
	.byte	0x87
	.uleb128 0x2
	.long	.LASF356
	.byte	0x88
	.uleb128 0x2
	.long	.LASF357
	.byte	0x89
	.uleb128 0x2
	.long	.LASF358
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF359
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF360
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF361
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF362
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF363
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF364
	.byte	0x90
	.uleb128 0x2
	.long	.LASF365
	.byte	0x91
	.uleb128 0x2
	.long	.LASF366
	.byte	0x92
	.uleb128 0x2
	.long	.LASF367
	.byte	0x93
	.uleb128 0x2
	.long	.LASF368
	.byte	0x94
	.uleb128 0x2
	.long	.LASF369
	.byte	0x95
	.uleb128 0x2
	.long	.LASF370
	.byte	0x96
	.uleb128 0x2
	.long	.LASF371
	.byte	0x97
	.uleb128 0x2
	.long	.LASF372
	.byte	0x98
	.uleb128 0x2
	.long	.LASF373
	.byte	0x99
	.uleb128 0x2
	.long	.LASF374
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF375
	.byte	0x9b
	.uleb128 0x2
	.long	.LASF376
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF377
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF378
	.byte	0x9e
	.uleb128 0x2
	.long	.LASF379
	.byte	0x9f
	.uleb128 0x2
	.long	.LASF380
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF381
	.byte	0xa1
	.uleb128 0x2
	.long	.LASF382
	.byte	0xa2
	.uleb128 0x2
	.long	.LASF383
	.byte	0xa3
	.uleb128 0x2
	.long	.LASF384
	.byte	0xa4
	.uleb128 0x2
	.long	.LASF385
	.byte	0xa5
	.uleb128 0x2
	.long	.LASF386
	.byte	0xa6
	.uleb128 0x2
	.long	.LASF387
	.byte	0xa7
	.uleb128 0x2
	.long	.LASF388
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF389
	.byte	0xa9
	.uleb128 0x2
	.long	.LASF390
	.byte	0xaa
	.uleb128 0x2
	.long	.LASF391
	.byte	0xab
	.uleb128 0x2
	.long	.LASF392
	.byte	0xac
	.uleb128 0x2
	.long	.LASF393
	.byte	0xad
	.uleb128 0x2
	.long	.LASF394
	.byte	0xae
	.uleb128 0x2
	.long	.LASF395
	.byte	0xaf
	.uleb128 0x2
	.long	.LASF396
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF397
	.byte	0xb1
	.uleb128 0x2
	.long	.LASF398
	.byte	0xb2
	.uleb128 0x2
	.long	.LASF399
	.byte	0xb3
	.uleb128 0x2
	.long	.LASF400
	.byte	0xb4
	.uleb128 0x2
	.long	.LASF401
	.byte	0xb5
	.uleb128 0x2
	.long	.LASF402
	.byte	0xb6
	.uleb128 0x2
	.long	.LASF403
	.byte	0xb7
	.uleb128 0x2
	.long	.LASF404
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF405
	.byte	0xb9
	.uleb128 0x2
	.long	.LASF406
	.byte	0xba
	.uleb128 0x2
	.long	.LASF407
	.byte	0xbb
	.uleb128 0x2
	.long	.LASF408
	.byte	0xbc
	.uleb128 0x2
	.long	.LASF409
	.byte	0xbd
	.uleb128 0x2
	.long	.LASF410
	.byte	0xbe
	.uleb128 0x2
	.long	.LASF411
	.byte	0xbf
	.uleb128 0x2
	.long	.LASF412
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF413
	.byte	0xc1
	.uleb128 0x2
	.long	.LASF414
	.byte	0xc2
	.uleb128 0x2
	.long	.LASF415
	.byte	0xc3
	.uleb128 0x2
	.long	.LASF416
	.byte	0xc4
	.uleb128 0x2
	.long	.LASF417
	.byte	0xc5
	.uleb128 0x2
	.long	.LASF418
	.byte	0xc6
	.uleb128 0x2
	.long	.LASF419
	.byte	0xc7
	.uleb128 0x2
	.long	.LASF420
	.byte	0xc8
	.uleb128 0x2
	.long	.LASF421
	.byte	0xc9
	.uleb128 0x2
	.long	.LASF422
	.byte	0xca
	.uleb128 0x2
	.long	.LASF423
	.byte	0xcb
	.uleb128 0x2
	.long	.LASF424
	.byte	0xcc
	.uleb128 0x2
	.long	.LASF425
	.byte	0xcd
	.uleb128 0x2
	.long	.LASF426
	.byte	0xce
	.uleb128 0x2
	.long	.LASF427
	.byte	0xcf
	.uleb128 0x2
	.long	.LASF428
	.byte	0xd0
	.uleb128 0x2
	.long	.LASF429
	.byte	0xd1
	.uleb128 0x2
	.long	.LASF430
	.byte	0xd2
	.uleb128 0x2
	.long	.LASF431
	.byte	0xd3
	.uleb128 0x2
	.long	.LASF432
	.byte	0xd4
	.uleb128 0x2
	.long	.LASF433
	.byte	0xd5
	.uleb128 0x2
	.long	.LASF434
	.byte	0xd6
	.uleb128 0x2
	.long	.LASF435
	.byte	0xd7
	.uleb128 0x2
	.long	.LASF436
	.byte	0xd8
	.uleb128 0x2
	.long	.LASF437
	.byte	0xd9
	.uleb128 0x2
	.long	.LASF438
	.byte	0xda
	.uleb128 0x2
	.long	.LASF439
	.byte	0xdb
	.uleb128 0x2
	.long	.LASF440
	.byte	0xdc
	.uleb128 0x2
	.long	.LASF441
	.byte	0xdd
	.uleb128 0x2
	.long	.LASF442
	.byte	0xde
	.uleb128 0x2
	.long	.LASF443
	.byte	0xdf
	.uleb128 0x2
	.long	.LASF444
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF445
	.byte	0xe1
	.uleb128 0x2
	.long	.LASF446
	.byte	0xe2
	.uleb128 0x2
	.long	.LASF447
	.byte	0xe3
	.uleb128 0x2
	.long	.LASF448
	.byte	0xe4
	.uleb128 0x2
	.long	.LASF449
	.byte	0xe5
	.uleb128 0x2
	.long	.LASF450
	.byte	0xe6
	.uleb128 0x2
	.long	.LASF451
	.byte	0xe7
	.uleb128 0x2
	.long	.LASF452
	.byte	0xe8
	.uleb128 0x2
	.long	.LASF453
	.byte	0xe9
	.uleb128 0x2
	.long	.LASF454
	.byte	0xea
	.uleb128 0x2
	.long	.LASF455
	.byte	0xeb
	.uleb128 0x2
	.long	.LASF456
	.byte	0xec
	.uleb128 0x2
	.long	.LASF457
	.byte	0xed
	.uleb128 0x2
	.long	.LASF458
	.byte	0xee
	.uleb128 0x2
	.long	.LASF459
	.byte	0xef
	.uleb128 0x2
	.long	.LASF460
	.byte	0xf0
	.uleb128 0x2
	.long	.LASF461
	.byte	0xf1
	.uleb128 0x2
	.long	.LASF462
	.byte	0xf2
	.uleb128 0x2
	.long	.LASF463
	.byte	0xf3
	.uleb128 0x2
	.long	.LASF464
	.byte	0xf4
	.uleb128 0x2
	.long	.LASF465
	.byte	0xf5
	.uleb128 0x2
	.long	.LASF466
	.byte	0xf6
	.uleb128 0x2
	.long	.LASF467
	.byte	0xf7
	.uleb128 0x2
	.long	.LASF468
	.byte	0xf8
	.uleb128 0x2
	.long	.LASF469
	.byte	0xf9
	.uleb128 0x2
	.long	.LASF470
	.byte	0xfa
	.uleb128 0x2
	.long	.LASF471
	.byte	0xfb
	.uleb128 0x2
	.long	.LASF472
	.byte	0xfc
	.uleb128 0x2
	.long	.LASF473
	.byte	0xfd
	.uleb128 0x2
	.long	.LASF474
	.byte	0xfe
	.uleb128 0x2
	.long	.LASF475
	.byte	0xff
	.uleb128 0x1
	.long	.LASF476
	.value	0x100
	.uleb128 0x1
	.long	.LASF477
	.value	0x101
	.uleb128 0x1
	.long	.LASF478
	.value	0x102
	.uleb128 0x1
	.long	.LASF479
	.value	0x103
	.uleb128 0x1
	.long	.LASF480
	.value	0x104
	.uleb128 0x1
	.long	.LASF481
	.value	0x105
	.uleb128 0x1
	.long	.LASF482
	.value	0x106
	.uleb128 0x1
	.long	.LASF483
	.value	0x107
	.uleb128 0x1
	.long	.LASF484
	.value	0x108
	.uleb128 0x1
	.long	.LASF485
	.value	0x109
	.uleb128 0x1
	.long	.LASF486
	.value	0x10a
	.uleb128 0x1
	.long	.LASF487
	.value	0x10b
	.uleb128 0x1
	.long	.LASF488
	.value	0x10c
	.uleb128 0x1
	.long	.LASF489
	.value	0x10d
	.uleb128 0x1
	.long	.LASF490
	.value	0x10e
	.uleb128 0x1
	.long	.LASF491
	.value	0x10f
	.uleb128 0x1
	.long	.LASF492
	.value	0x110
	.uleb128 0x1
	.long	.LASF493
	.value	0x111
	.uleb128 0x1
	.long	.LASF494
	.value	0x112
	.uleb128 0x1
	.long	.LASF495
	.value	0x113
	.uleb128 0x1
	.long	.LASF496
	.value	0x114
	.uleb128 0x1
	.long	.LASF497
	.value	0x115
	.uleb128 0x1
	.long	.LASF498
	.value	0x116
	.uleb128 0x1
	.long	.LASF499
	.value	0x117
	.uleb128 0x1
	.long	.LASF500
	.value	0x118
	.uleb128 0x1
	.long	.LASF501
	.value	0x119
	.uleb128 0x1
	.long	.LASF502
	.value	0x11a
	.uleb128 0x1
	.long	.LASF503
	.value	0x11b
	.uleb128 0x1
	.long	.LASF504
	.value	0x11c
	.uleb128 0x1
	.long	.LASF505
	.value	0x11d
	.uleb128 0x1
	.long	.LASF506
	.value	0x11e
	.uleb128 0x1
	.long	.LASF507
	.value	0x11f
	.uleb128 0x1
	.long	.LASF508
	.value	0x120
	.uleb128 0x1
	.long	.LASF509
	.value	0x121
	.uleb128 0x1
	.long	.LASF510
	.value	0x122
	.uleb128 0x1
	.long	.LASF511
	.value	0x123
	.uleb128 0x1
	.long	.LASF512
	.value	0x124
	.uleb128 0x1
	.long	.LASF513
	.value	0x125
	.uleb128 0x1
	.long	.LASF514
	.value	0x126
	.uleb128 0x1
	.long	.LASF515
	.value	0x127
	.uleb128 0x1
	.long	.LASF516
	.value	0x128
	.uleb128 0x1
	.long	.LASF517
	.value	0x129
	.uleb128 0x1
	.long	.LASF518
	.value	0x12a
	.uleb128 0x1
	.long	.LASF519
	.value	0x12b
	.uleb128 0x1
	.long	.LASF520
	.value	0x12c
	.uleb128 0x1
	.long	.LASF521
	.value	0x12d
	.uleb128 0x1
	.long	.LASF522
	.value	0x12e
	.uleb128 0x1
	.long	.LASF523
	.value	0x12f
	.uleb128 0x1
	.long	.LASF524
	.value	0x130
	.uleb128 0x1
	.long	.LASF525
	.value	0x131
	.uleb128 0x1
	.long	.LASF526
	.value	0x132
	.uleb128 0x1
	.long	.LASF527
	.value	0x133
	.uleb128 0x1
	.long	.LASF528
	.value	0x134
	.uleb128 0x1
	.long	.LASF529
	.value	0x135
	.uleb128 0x1
	.long	.LASF530
	.value	0x136
	.uleb128 0x1
	.long	.LASF531
	.value	0x137
	.uleb128 0x1
	.long	.LASF532
	.value	0x138
	.uleb128 0x1
	.long	.LASF533
	.value	0x139
	.uleb128 0x1
	.long	.LASF534
	.value	0x13a
	.uleb128 0x1
	.long	.LASF535
	.value	0x13b
	.uleb128 0x1
	.long	.LASF536
	.value	0x13c
	.uleb128 0x1
	.long	.LASF537
	.value	0x13d
	.uleb128 0x1
	.long	.LASF538
	.value	0x13e
	.uleb128 0x1
	.long	.LASF539
	.value	0x13f
	.uleb128 0x1
	.long	.LASF540
	.value	0x140
	.uleb128 0x1
	.long	.LASF541
	.value	0x141
	.uleb128 0x1
	.long	.LASF542
	.value	0x142
	.uleb128 0x1
	.long	.LASF543
	.value	0x143
	.uleb128 0x1
	.long	.LASF544
	.value	0x144
	.uleb128 0x1
	.long	.LASF545
	.value	0x145
	.uleb128 0x1
	.long	.LASF546
	.value	0x146
	.uleb128 0x1
	.long	.LASF547
	.value	0x147
	.uleb128 0x1
	.long	.LASF548
	.value	0x148
	.uleb128 0x1
	.long	.LASF549
	.value	0x149
	.uleb128 0x1
	.long	.LASF550
	.value	0x14a
	.uleb128 0x1
	.long	.LASF551
	.value	0x14b
	.uleb128 0x1
	.long	.LASF552
	.value	0x14c
	.uleb128 0x1
	.long	.LASF553
	.value	0x14d
	.uleb128 0x1
	.long	.LASF554
	.value	0x14e
	.uleb128 0x1
	.long	.LASF555
	.value	0x14f
	.uleb128 0x1
	.long	.LASF556
	.value	0x150
	.uleb128 0x1
	.long	.LASF557
	.value	0x151
	.uleb128 0x1
	.long	.LASF558
	.value	0x152
	.uleb128 0x1
	.long	.LASF559
	.value	0x153
	.uleb128 0x1
	.long	.LASF560
	.value	0x154
	.uleb128 0x1
	.long	.LASF561
	.value	0x155
	.uleb128 0x1
	.long	.LASF562
	.value	0x156
	.uleb128 0x1
	.long	.LASF563
	.value	0x157
	.uleb128 0x1
	.long	.LASF564
	.value	0x158
	.uleb128 0x1
	.long	.LASF565
	.value	0x159
	.uleb128 0x1
	.long	.LASF566
	.value	0x15a
	.uleb128 0x1
	.long	.LASF567
	.value	0x15b
	.uleb128 0x1
	.long	.LASF568
	.value	0x15c
	.uleb128 0x1
	.long	.LASF569
	.value	0x15d
	.uleb128 0x1
	.long	.LASF570
	.value	0x15e
	.uleb128 0x1
	.long	.LASF571
	.value	0x15f
	.uleb128 0x1
	.long	.LASF572
	.value	0x160
	.uleb128 0x1
	.long	.LASF573
	.value	0x161
	.uleb128 0x1
	.long	.LASF574
	.value	0x162
	.uleb128 0x1
	.long	.LASF575
	.value	0x163
	.uleb128 0x1
	.long	.LASF576
	.value	0x164
	.uleb128 0x1
	.long	.LASF577
	.value	0x165
	.uleb128 0x1
	.long	.LASF578
	.value	0x166
	.uleb128 0x1
	.long	.LASF579
	.value	0x167
	.uleb128 0x1
	.long	.LASF580
	.value	0x168
	.uleb128 0x1
	.long	.LASF581
	.value	0x169
	.uleb128 0x1
	.long	.LASF582
	.value	0x16a
	.uleb128 0x1
	.long	.LASF583
	.value	0x16b
	.uleb128 0x1
	.long	.LASF584
	.value	0x16c
	.uleb128 0x1
	.long	.LASF585
	.value	0x16d
	.uleb128 0x1
	.long	.LASF586
	.value	0x16e
	.uleb128 0x1
	.long	.LASF587
	.value	0x16f
	.uleb128 0x1
	.long	.LASF588
	.value	0x170
	.uleb128 0x1
	.long	.LASF589
	.value	0x171
	.uleb128 0x1
	.long	.LASF590
	.value	0x172
	.uleb128 0x1
	.long	.LASF591
	.value	0x173
	.uleb128 0x1
	.long	.LASF592
	.value	0x174
	.uleb128 0x1
	.long	.LASF593
	.value	0x175
	.uleb128 0x1
	.long	.LASF594
	.value	0x176
	.uleb128 0x1
	.long	.LASF595
	.value	0x177
	.uleb128 0x1
	.long	.LASF596
	.value	0x178
	.uleb128 0x1
	.long	.LASF597
	.value	0x179
	.uleb128 0x1
	.long	.LASF598
	.value	0x17a
	.uleb128 0x1
	.long	.LASF599
	.value	0x17b
	.uleb128 0x1
	.long	.LASF600
	.value	0x17c
	.uleb128 0x1
	.long	.LASF601
	.value	0x17d
	.uleb128 0x1
	.long	.LASF602
	.value	0x17e
	.uleb128 0x1
	.long	.LASF603
	.value	0x17f
	.uleb128 0x1
	.long	.LASF604
	.value	0x180
	.uleb128 0x1
	.long	.LASF605
	.value	0x181
	.uleb128 0x1
	.long	.LASF606
	.value	0x182
	.uleb128 0x1
	.long	.LASF607
	.value	0x183
	.uleb128 0x1
	.long	.LASF608
	.value	0x184
	.uleb128 0x1
	.long	.LASF609
	.value	0x185
	.uleb128 0x1
	.long	.LASF610
	.value	0x186
	.uleb128 0x1
	.long	.LASF611
	.value	0x187
	.uleb128 0x1
	.long	.LASF612
	.value	0x188
	.uleb128 0x1
	.long	.LASF613
	.value	0x189
	.uleb128 0x1
	.long	.LASF614
	.value	0x18a
	.uleb128 0x1
	.long	.LASF615
	.value	0x18b
	.uleb128 0x1
	.long	.LASF616
	.value	0x18c
	.uleb128 0x1
	.long	.LASF617
	.value	0x18d
	.uleb128 0x1
	.long	.LASF618
	.value	0x18e
	.uleb128 0x1
	.long	.LASF619
	.value	0x18f
	.uleb128 0x1
	.long	.LASF620
	.value	0x190
	.uleb128 0x1
	.long	.LASF621
	.value	0x191
	.uleb128 0x1
	.long	.LASF622
	.value	0x192
	.uleb128 0x1
	.long	.LASF623
	.value	0x193
	.uleb128 0x1
	.long	.LASF624
	.value	0x194
	.uleb128 0x1
	.long	.LASF625
	.value	0x195
	.uleb128 0x1
	.long	.LASF626
	.value	0x196
	.uleb128 0x1
	.long	.LASF627
	.value	0x197
	.uleb128 0x1
	.long	.LASF628
	.value	0x198
	.uleb128 0x1
	.long	.LASF629
	.value	0x199
	.uleb128 0x1
	.long	.LASF630
	.value	0x19a
	.uleb128 0x1
	.long	.LASF631
	.value	0x19b
	.uleb128 0x1
	.long	.LASF632
	.value	0x19c
	.uleb128 0x1
	.long	.LASF633
	.value	0x19d
	.uleb128 0x1
	.long	.LASF634
	.value	0x19e
	.uleb128 0x1
	.long	.LASF635
	.value	0x19f
	.uleb128 0x1
	.long	.LASF636
	.value	0x1a0
	.uleb128 0x1
	.long	.LASF637
	.value	0x1a1
	.uleb128 0x1
	.long	.LASF638
	.value	0x1a2
	.uleb128 0x1
	.long	.LASF639
	.value	0x1a3
	.uleb128 0x1
	.long	.LASF640
	.value	0x1a4
	.uleb128 0x1
	.long	.LASF641
	.value	0x1a5
	.uleb128 0x1
	.long	.LASF642
	.value	0x1a6
	.uleb128 0x1
	.long	.LASF643
	.value	0x1a7
	.uleb128 0x1
	.long	.LASF644
	.value	0x1a8
	.uleb128 0x1
	.long	.LASF645
	.value	0x1a9
	.uleb128 0x1
	.long	.LASF646
	.value	0x1aa
	.uleb128 0x1
	.long	.LASF647
	.value	0x1ab
	.uleb128 0x1
	.long	.LASF648
	.value	0x1ac
	.uleb128 0x1
	.long	.LASF649
	.value	0x1ad
	.uleb128 0x1
	.long	.LASF650
	.value	0x1ae
	.uleb128 0x1
	.long	.LASF651
	.value	0x1af
	.uleb128 0x1
	.long	.LASF652
	.value	0x1b0
	.uleb128 0x1
	.long	.LASF653
	.value	0x1b1
	.uleb128 0x1
	.long	.LASF654
	.value	0x1b2
	.uleb128 0x1
	.long	.LASF655
	.value	0x1b3
	.uleb128 0x1
	.long	.LASF656
	.value	0x1b4
	.uleb128 0x1
	.long	.LASF657
	.value	0x1b5
	.uleb128 0x1
	.long	.LASF658
	.value	0x1b6
	.uleb128 0x1
	.long	.LASF659
	.value	0x1b7
	.uleb128 0x1
	.long	.LASF660
	.value	0x1b8
	.uleb128 0x1
	.long	.LASF661
	.value	0x1b9
	.uleb128 0x1
	.long	.LASF662
	.value	0x1ba
	.uleb128 0x1
	.long	.LASF663
	.value	0x1bb
	.uleb128 0x1
	.long	.LASF664
	.value	0x1bc
	.uleb128 0x1
	.long	.LASF665
	.value	0x1bd
	.uleb128 0x1
	.long	.LASF666
	.value	0x1be
	.uleb128 0x1
	.long	.LASF667
	.value	0x1bf
	.uleb128 0x1
	.long	.LASF668
	.value	0x1c0
	.uleb128 0x1
	.long	.LASF669
	.value	0x1c1
	.uleb128 0x1
	.long	.LASF670
	.value	0x1c2
	.uleb128 0x1
	.long	.LASF671
	.value	0x1c3
	.uleb128 0x1
	.long	.LASF672
	.value	0x1c4
	.uleb128 0x1
	.long	.LASF673
	.value	0x1c5
	.uleb128 0x1
	.long	.LASF674
	.value	0x1c6
	.uleb128 0x1
	.long	.LASF675
	.value	0x1c7
	.uleb128 0x1
	.long	.LASF676
	.value	0x1c8
	.uleb128 0x1
	.long	.LASF677
	.value	0x1c9
	.uleb128 0x1
	.long	.LASF678
	.value	0x1ca
	.uleb128 0x1
	.long	.LASF679
	.value	0x1cb
	.uleb128 0x1
	.long	.LASF680
	.value	0x1cc
	.uleb128 0x1
	.long	.LASF681
	.value	0x1cd
	.uleb128 0x1
	.long	.LASF682
	.value	0x1ce
	.uleb128 0x1
	.long	.LASF683
	.value	0x1cf
	.uleb128 0x1
	.long	.LASF684
	.value	0x1d0
	.uleb128 0x1
	.long	.LASF685
	.value	0x1d1
	.uleb128 0x1
	.long	.LASF686
	.value	0x1d2
	.uleb128 0x1
	.long	.LASF687
	.value	0x1d3
	.uleb128 0x1
	.long	.LASF688
	.value	0x1d4
	.uleb128 0x1
	.long	.LASF689
	.value	0x1d5
	.uleb128 0x1
	.long	.LASF690
	.value	0x1d6
	.uleb128 0x1
	.long	.LASF691
	.value	0x1d7
	.uleb128 0x1
	.long	.LASF692
	.value	0x1d8
	.uleb128 0x1
	.long	.LASF693
	.value	0x1d9
	.uleb128 0x1
	.long	.LASF694
	.value	0x1da
	.uleb128 0x1
	.long	.LASF695
	.value	0x1db
	.uleb128 0x1
	.long	.LASF696
	.value	0x1dc
	.uleb128 0x1
	.long	.LASF697
	.value	0x1dd
	.uleb128 0x1
	.long	.LASF698
	.value	0x1de
	.uleb128 0x1
	.long	.LASF699
	.value	0x1df
	.uleb128 0x1
	.long	.LASF700
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF701
	.value	0x1e1
	.uleb128 0x1
	.long	.LASF702
	.value	0x1e2
	.uleb128 0x1
	.long	.LASF703
	.value	0x1e3
	.uleb128 0x1
	.long	.LASF704
	.value	0x1e4
	.uleb128 0x1
	.long	.LASF705
	.value	0x1e5
	.uleb128 0x1
	.long	.LASF706
	.value	0x1e6
	.uleb128 0x1
	.long	.LASF707
	.value	0x1e7
	.uleb128 0x1
	.long	.LASF708
	.value	0x1e8
	.uleb128 0x1
	.long	.LASF709
	.value	0x1e9
	.uleb128 0x1
	.long	.LASF710
	.value	0x1ea
	.uleb128 0x1
	.long	.LASF711
	.value	0x1eb
	.uleb128 0x1
	.long	.LASF712
	.value	0x1ec
	.uleb128 0x1
	.long	.LASF713
	.value	0x1ed
	.uleb128 0x1
	.long	.LASF714
	.value	0x1ee
	.uleb128 0x1
	.long	.LASF715
	.value	0x1ef
	.uleb128 0x1
	.long	.LASF716
	.value	0x1f0
	.uleb128 0x1
	.long	.LASF717
	.value	0x1f1
	.uleb128 0x1
	.long	.LASF718
	.value	0x1f2
	.uleb128 0x1
	.long	.LASF719
	.value	0x1f3
	.uleb128 0x1
	.long	.LASF720
	.value	0x1f4
	.uleb128 0x1
	.long	.LASF721
	.value	0x1f5
	.uleb128 0x1
	.long	.LASF722
	.value	0x1f6
	.uleb128 0x1
	.long	.LASF723
	.value	0x1f7
	.uleb128 0x1
	.long	.LASF724
	.value	0x1f8
	.uleb128 0x1
	.long	.LASF725
	.value	0x1f9
	.uleb128 0x1
	.long	.LASF726
	.value	0x1fa
	.uleb128 0x1
	.long	.LASF727
	.value	0x1fb
	.uleb128 0x1
	.long	.LASF728
	.value	0x1fc
	.uleb128 0x1
	.long	.LASF729
	.value	0x1fd
	.uleb128 0x1
	.long	.LASF730
	.value	0x1fe
	.uleb128 0x1
	.long	.LASF731
	.value	0x1ff
	.uleb128 0x1
	.long	.LASF732
	.value	0x200
	.uleb128 0x1
	.long	.LASF733
	.value	0x201
	.uleb128 0x1
	.long	.LASF734
	.value	0x202
	.uleb128 0x1
	.long	.LASF735
	.value	0x203
	.uleb128 0x1
	.long	.LASF736
	.value	0x204
	.uleb128 0x1
	.long	.LASF737
	.value	0x205
	.uleb128 0x1
	.long	.LASF738
	.value	0x206
	.uleb128 0x1
	.long	.LASF739
	.value	0x207
	.uleb128 0x1
	.long	.LASF740
	.value	0x208
	.uleb128 0x1
	.long	.LASF741
	.value	0x209
	.uleb128 0x1
	.long	.LASF742
	.value	0x20a
	.uleb128 0x1
	.long	.LASF743
	.value	0x20b
	.uleb128 0x1
	.long	.LASF744
	.value	0x20c
	.uleb128 0x1
	.long	.LASF745
	.value	0x20d
	.uleb128 0x1
	.long	.LASF746
	.value	0x20e
	.uleb128 0x1
	.long	.LASF747
	.value	0x20f
	.uleb128 0x1
	.long	.LASF748
	.value	0x210
	.uleb128 0x1
	.long	.LASF749
	.value	0x211
	.uleb128 0x1
	.long	.LASF750
	.value	0x212
	.uleb128 0x1
	.long	.LASF751
	.value	0x213
	.uleb128 0x1
	.long	.LASF752
	.value	0x214
	.uleb128 0x1
	.long	.LASF753
	.value	0x215
	.uleb128 0x1
	.long	.LASF754
	.value	0x216
	.uleb128 0x1
	.long	.LASF755
	.value	0x217
	.uleb128 0x1
	.long	.LASF756
	.value	0x218
	.uleb128 0x1
	.long	.LASF757
	.value	0x219
	.uleb128 0x1
	.long	.LASF758
	.value	0x21a
	.uleb128 0x1
	.long	.LASF759
	.value	0x21b
	.uleb128 0x1
	.long	.LASF760
	.value	0x21c
	.uleb128 0x1
	.long	.LASF761
	.value	0x21d
	.uleb128 0x1
	.long	.LASF762
	.value	0x21e
	.uleb128 0x1
	.long	.LASF763
	.value	0x21f
	.uleb128 0x1
	.long	.LASF764
	.value	0x220
	.uleb128 0x1
	.long	.LASF765
	.value	0x221
	.uleb128 0x1
	.long	.LASF766
	.value	0x222
	.uleb128 0x1
	.long	.LASF767
	.value	0x223
	.uleb128 0x1
	.long	.LASF768
	.value	0x224
	.uleb128 0x1
	.long	.LASF769
	.value	0x225
	.uleb128 0x1
	.long	.LASF770
	.value	0x226
	.uleb128 0x1
	.long	.LASF771
	.value	0x227
	.uleb128 0x1
	.long	.LASF772
	.value	0x228
	.uleb128 0x1
	.long	.LASF773
	.value	0x229
	.uleb128 0x1
	.long	.LASF774
	.value	0x22a
	.uleb128 0x1
	.long	.LASF775
	.value	0x22b
	.uleb128 0x1
	.long	.LASF776
	.value	0x22c
	.uleb128 0x1
	.long	.LASF777
	.value	0x22d
	.uleb128 0x1
	.long	.LASF778
	.value	0x22e
	.uleb128 0x1
	.long	.LASF779
	.value	0x22f
	.uleb128 0x1
	.long	.LASF780
	.value	0x230
	.uleb128 0x1
	.long	.LASF781
	.value	0x231
	.uleb128 0x1
	.long	.LASF782
	.value	0x232
	.uleb128 0x1
	.long	.LASF783
	.value	0x233
	.uleb128 0x1
	.long	.LASF784
	.value	0x234
	.uleb128 0x1
	.long	.LASF785
	.value	0x235
	.uleb128 0x1
	.long	.LASF786
	.value	0x236
	.uleb128 0x1
	.long	.LASF787
	.value	0x237
	.uleb128 0x1
	.long	.LASF788
	.value	0x238
	.uleb128 0x1
	.long	.LASF789
	.value	0x239
	.uleb128 0x1
	.long	.LASF790
	.value	0x23a
	.uleb128 0x1
	.long	.LASF791
	.value	0x23b
	.uleb128 0x1
	.long	.LASF792
	.value	0x23c
	.uleb128 0x1
	.long	.LASF793
	.value	0x23d
	.uleb128 0x1
	.long	.LASF794
	.value	0x23e
	.uleb128 0x1
	.long	.LASF795
	.value	0x23f
	.uleb128 0x1
	.long	.LASF796
	.value	0x240
	.uleb128 0x1
	.long	.LASF797
	.value	0x241
	.uleb128 0x1
	.long	.LASF798
	.value	0x242
	.uleb128 0x1
	.long	.LASF799
	.value	0x243
	.uleb128 0x1
	.long	.LASF800
	.value	0x244
	.uleb128 0x1
	.long	.LASF801
	.value	0x245
	.uleb128 0x1
	.long	.LASF802
	.value	0x246
	.uleb128 0x1
	.long	.LASF803
	.value	0x247
	.uleb128 0x1
	.long	.LASF804
	.value	0x248
	.uleb128 0x1
	.long	.LASF805
	.value	0x249
	.uleb128 0x1
	.long	.LASF806
	.value	0x24a
	.uleb128 0x1
	.long	.LASF807
	.value	0x24b
	.uleb128 0x1
	.long	.LASF808
	.value	0x24c
	.uleb128 0x1
	.long	.LASF809
	.value	0x24d
	.uleb128 0x1
	.long	.LASF810
	.value	0x24e
	.uleb128 0x1
	.long	.LASF811
	.value	0x24f
	.uleb128 0x1
	.long	.LASF812
	.value	0x250
	.uleb128 0x1
	.long	.LASF813
	.value	0x251
	.uleb128 0x1
	.long	.LASF814
	.value	0x252
	.uleb128 0x1
	.long	.LASF815
	.value	0x253
	.uleb128 0x1
	.long	.LASF816
	.value	0x254
	.uleb128 0x1
	.long	.LASF817
	.value	0x255
	.uleb128 0x1
	.long	.LASF818
	.value	0x256
	.uleb128 0x1
	.long	.LASF819
	.value	0x257
	.uleb128 0x1
	.long	.LASF820
	.value	0x258
	.uleb128 0x1
	.long	.LASF821
	.value	0x259
	.uleb128 0x1
	.long	.LASF822
	.value	0x25a
	.uleb128 0x1
	.long	.LASF823
	.value	0x25b
	.uleb128 0x1
	.long	.LASF824
	.value	0x25c
	.uleb128 0x1
	.long	.LASF825
	.value	0x25d
	.uleb128 0x1
	.long	.LASF826
	.value	0x25e
	.uleb128 0x1
	.long	.LASF827
	.value	0x25f
	.uleb128 0x1
	.long	.LASF828
	.value	0x260
	.uleb128 0x1
	.long	.LASF829
	.value	0x261
	.uleb128 0x1
	.long	.LASF830
	.value	0x262
	.uleb128 0x1
	.long	.LASF831
	.value	0x263
	.uleb128 0x1
	.long	.LASF832
	.value	0x264
	.uleb128 0x1
	.long	.LASF833
	.value	0x265
	.uleb128 0x1
	.long	.LASF834
	.value	0x266
	.uleb128 0x1
	.long	.LASF835
	.value	0x267
	.uleb128 0x1
	.long	.LASF836
	.value	0x268
	.uleb128 0x1
	.long	.LASF837
	.value	0x269
	.uleb128 0x1
	.long	.LASF838
	.value	0x26a
	.uleb128 0x1
	.long	.LASF839
	.value	0x26b
	.uleb128 0x1
	.long	.LASF840
	.value	0x26c
	.uleb128 0x1
	.long	.LASF841
	.value	0x26d
	.uleb128 0x1
	.long	.LASF842
	.value	0x26e
	.uleb128 0x1
	.long	.LASF843
	.value	0x26f
	.uleb128 0x1
	.long	.LASF844
	.value	0x270
	.uleb128 0x1
	.long	.LASF845
	.value	0x271
	.uleb128 0x1
	.long	.LASF846
	.value	0x272
	.uleb128 0x1
	.long	.LASF847
	.value	0x273
	.uleb128 0x1
	.long	.LASF848
	.value	0x274
	.uleb128 0x1
	.long	.LASF849
	.value	0x275
	.uleb128 0x1
	.long	.LASF850
	.value	0x276
	.uleb128 0x1
	.long	.LASF851
	.value	0x277
	.uleb128 0x1
	.long	.LASF852
	.value	0x278
	.uleb128 0x1
	.long	.LASF853
	.value	0x279
	.uleb128 0x1
	.long	.LASF854
	.value	0x27a
	.uleb128 0x1
	.long	.LASF855
	.value	0x27b
	.uleb128 0x1
	.long	.LASF856
	.value	0x27c
	.uleb128 0x1
	.long	.LASF857
	.value	0x27d
	.uleb128 0x1
	.long	.LASF858
	.value	0x27e
	.uleb128 0x1
	.long	.LASF859
	.value	0x27f
	.uleb128 0x1
	.long	.LASF860
	.value	0x280
	.uleb128 0x1
	.long	.LASF861
	.value	0x281
	.uleb128 0x1
	.long	.LASF862
	.value	0x282
	.uleb128 0x1
	.long	.LASF863
	.value	0x283
	.uleb128 0x1
	.long	.LASF864
	.value	0x284
	.uleb128 0x1
	.long	.LASF865
	.value	0x285
	.uleb128 0x1
	.long	.LASF866
	.value	0x286
	.uleb128 0x1
	.long	.LASF867
	.value	0x287
	.uleb128 0x1
	.long	.LASF868
	.value	0x288
	.uleb128 0x1
	.long	.LASF869
	.value	0x289
	.uleb128 0x1
	.long	.LASF870
	.value	0x28a
	.uleb128 0x1
	.long	.LASF871
	.value	0x28b
	.uleb128 0x1
	.long	.LASF872
	.value	0x28c
	.uleb128 0x1
	.long	.LASF873
	.value	0x28d
	.uleb128 0x1
	.long	.LASF874
	.value	0x28e
	.uleb128 0x1
	.long	.LASF875
	.value	0x28f
	.uleb128 0x1
	.long	.LASF876
	.value	0x290
	.uleb128 0x1
	.long	.LASF877
	.value	0x291
	.uleb128 0x1
	.long	.LASF878
	.value	0x292
	.uleb128 0x1
	.long	.LASF879
	.value	0x293
	.uleb128 0x1
	.long	.LASF880
	.value	0x294
	.uleb128 0x1
	.long	.LASF881
	.value	0x295
	.uleb128 0x1
	.long	.LASF882
	.value	0x296
	.uleb128 0x1
	.long	.LASF883
	.value	0x297
	.uleb128 0x1
	.long	.LASF884
	.value	0x298
	.uleb128 0x1
	.long	.LASF885
	.value	0x299
	.uleb128 0x1
	.long	.LASF886
	.value	0x29a
	.uleb128 0x1
	.long	.LASF887
	.value	0x29b
	.uleb128 0x1
	.long	.LASF888
	.value	0x29c
	.uleb128 0x1
	.long	.LASF889
	.value	0x29d
	.uleb128 0x1
	.long	.LASF890
	.value	0x29e
	.uleb128 0x1
	.long	.LASF891
	.value	0x29f
	.uleb128 0x1
	.long	.LASF892
	.value	0x2a0
	.uleb128 0x1
	.long	.LASF893
	.value	0x2a1
	.uleb128 0x1
	.long	.LASF894
	.value	0x2a2
	.uleb128 0x1
	.long	.LASF895
	.value	0x2a3
	.uleb128 0x1
	.long	.LASF896
	.value	0x2a4
	.uleb128 0x1
	.long	.LASF897
	.value	0x2a5
	.uleb128 0x1
	.long	.LASF898
	.value	0x2a6
	.uleb128 0x1
	.long	.LASF899
	.value	0x2a7
	.uleb128 0x1
	.long	.LASF900
	.value	0x2a8
	.uleb128 0x1
	.long	.LASF901
	.value	0x2a9
	.uleb128 0x1
	.long	.LASF902
	.value	0x2aa
	.uleb128 0x1
	.long	.LASF903
	.value	0x2ab
	.uleb128 0x1
	.long	.LASF904
	.value	0x2ac
	.uleb128 0x1
	.long	.LASF905
	.value	0x2ad
	.uleb128 0x1
	.long	.LASF906
	.value	0x2ae
	.uleb128 0x1
	.long	.LASF907
	.value	0x2af
	.uleb128 0x1
	.long	.LASF908
	.value	0x2b0
	.uleb128 0x1
	.long	.LASF909
	.value	0x2b1
	.uleb128 0x1
	.long	.LASF910
	.value	0x2b2
	.uleb128 0x1
	.long	.LASF911
	.value	0x2b3
	.uleb128 0x1
	.long	.LASF912
	.value	0x2b4
	.uleb128 0x1
	.long	.LASF913
	.value	0x2b5
	.uleb128 0x1
	.long	.LASF914
	.value	0x2b6
	.uleb128 0x1
	.long	.LASF915
	.value	0x2b7
	.uleb128 0x1
	.long	.LASF916
	.value	0x2b8
	.uleb128 0x1
	.long	.LASF917
	.value	0x2b9
	.uleb128 0x1
	.long	.LASF918
	.value	0x2ba
	.uleb128 0x1
	.long	.LASF919
	.value	0x2bb
	.uleb128 0x1
	.long	.LASF920
	.value	0x2bc
	.uleb128 0x1
	.long	.LASF921
	.value	0x2bd
	.uleb128 0x1
	.long	.LASF922
	.value	0x2be
	.uleb128 0x1
	.long	.LASF923
	.value	0x2bf
	.uleb128 0x1
	.long	.LASF924
	.value	0x2c0
	.uleb128 0x1
	.long	.LASF925
	.value	0x2c1
	.uleb128 0x1
	.long	.LASF926
	.value	0x2c2
	.uleb128 0x1
	.long	.LASF927
	.value	0x2c3
	.uleb128 0x1
	.long	.LASF928
	.value	0x2c4
	.uleb128 0x1
	.long	.LASF929
	.value	0x2c5
	.uleb128 0x1
	.long	.LASF930
	.value	0x2c6
	.uleb128 0x1
	.long	.LASF931
	.value	0x2c7
	.uleb128 0x1
	.long	.LASF932
	.value	0x2c8
	.uleb128 0x1
	.long	.LASF933
	.value	0x2c9
	.uleb128 0x1
	.long	.LASF934
	.value	0x2ca
	.uleb128 0x1
	.long	.LASF935
	.value	0x2cb
	.uleb128 0x1
	.long	.LASF936
	.value	0x2cc
	.uleb128 0x1
	.long	.LASF937
	.value	0x2cd
	.uleb128 0x1
	.long	.LASF938
	.value	0x2ce
	.uleb128 0x1
	.long	.LASF939
	.value	0x2cf
	.uleb128 0x1
	.long	.LASF940
	.value	0x2d0
	.uleb128 0x1
	.long	.LASF941
	.value	0x2d1
	.uleb128 0x1
	.long	.LASF942
	.value	0x2d2
	.uleb128 0x1
	.long	.LASF943
	.value	0x2d3
	.uleb128 0x1
	.long	.LASF944
	.value	0x2d4
	.uleb128 0x1
	.long	.LASF945
	.value	0x2d5
	.uleb128 0x1
	.long	.LASF946
	.value	0x2d6
	.uleb128 0x1
	.long	.LASF947
	.value	0x2d7
	.uleb128 0x1
	.long	.LASF948
	.value	0x2d8
	.uleb128 0x1
	.long	.LASF949
	.value	0x2d9
	.uleb128 0x1
	.long	.LASF950
	.value	0x2da
	.uleb128 0x1
	.long	.LASF951
	.value	0x2db
	.uleb128 0x1
	.long	.LASF952
	.value	0x2dc
	.uleb128 0x1
	.long	.LASF953
	.value	0x2dd
	.uleb128 0x1
	.long	.LASF954
	.value	0x2de
	.uleb128 0x1
	.long	.LASF955
	.value	0x2df
	.uleb128 0x1
	.long	.LASF956
	.value	0x2e0
	.uleb128 0x1
	.long	.LASF957
	.value	0x2e1
	.uleb128 0x1
	.long	.LASF958
	.value	0x2e2
	.uleb128 0x1
	.long	.LASF959
	.value	0x2e3
	.uleb128 0x1
	.long	.LASF960
	.value	0x2e4
	.uleb128 0x1
	.long	.LASF961
	.value	0x2e5
	.uleb128 0x1
	.long	.LASF962
	.value	0x2e6
	.uleb128 0x1
	.long	.LASF963
	.value	0x2e7
	.uleb128 0x1
	.long	.LASF964
	.value	0x2e8
	.uleb128 0x1
	.long	.LASF965
	.value	0x2e9
	.uleb128 0x1
	.long	.LASF966
	.value	0x2ea
	.uleb128 0x1
	.long	.LASF967
	.value	0x2eb
	.uleb128 0x1
	.long	.LASF968
	.value	0x2ec
	.uleb128 0x1
	.long	.LASF969
	.value	0x2ed
	.uleb128 0x1
	.long	.LASF970
	.value	0x2ee
	.uleb128 0x1
	.long	.LASF971
	.value	0x2ef
	.uleb128 0x1
	.long	.LASF972
	.value	0x2f0
	.uleb128 0x1
	.long	.LASF973
	.value	0x2f1
	.uleb128 0x1
	.long	.LASF974
	.value	0x2f2
	.uleb128 0x1
	.long	.LASF975
	.value	0x2f3
	.uleb128 0x1
	.long	.LASF976
	.value	0x2f4
	.uleb128 0x1
	.long	.LASF977
	.value	0x2f5
	.uleb128 0x1
	.long	.LASF978
	.value	0x2f6
	.uleb128 0x1
	.long	.LASF979
	.value	0x2f7
	.uleb128 0x1
	.long	.LASF980
	.value	0x2f8
	.uleb128 0x1
	.long	.LASF981
	.value	0x2f9
	.uleb128 0x1
	.long	.LASF982
	.value	0x2fa
	.uleb128 0x1
	.long	.LASF983
	.value	0x2fb
	.uleb128 0x1
	.long	.LASF984
	.value	0x2fc
	.uleb128 0x1
	.long	.LASF985
	.value	0x2fd
	.uleb128 0x1
	.long	.LASF986
	.value	0x2fe
	.uleb128 0x1
	.long	.LASF987
	.value	0x2ff
	.uleb128 0x1
	.long	.LASF988
	.value	0x300
	.uleb128 0x1
	.long	.LASF989
	.value	0x301
	.uleb128 0x1
	.long	.LASF990
	.value	0x302
	.uleb128 0x1
	.long	.LASF991
	.value	0x303
	.uleb128 0x1
	.long	.LASF992
	.value	0x304
	.uleb128 0x1
	.long	.LASF993
	.value	0x305
	.uleb128 0x1
	.long	.LASF994
	.value	0x306
	.uleb128 0x1
	.long	.LASF995
	.value	0x307
	.uleb128 0x1
	.long	.LASF996
	.value	0x308
	.uleb128 0x1
	.long	.LASF997
	.value	0x309
	.uleb128 0x1
	.long	.LASF998
	.value	0x30a
	.uleb128 0x1
	.long	.LASF999
	.value	0x30b
	.uleb128 0x1
	.long	.LASF1000
	.value	0x30c
	.uleb128 0x1
	.long	.LASF1001
	.value	0x30d
	.uleb128 0x1
	.long	.LASF1002
	.value	0x30e
	.uleb128 0x1
	.long	.LASF1003
	.value	0x30f
	.uleb128 0x1
	.long	.LASF1004
	.value	0x310
	.uleb128 0x1
	.long	.LASF1005
	.value	0x311
	.uleb128 0x1
	.long	.LASF1006
	.value	0x312
	.uleb128 0x1
	.long	.LASF1007
	.value	0x313
	.uleb128 0x1
	.long	.LASF1008
	.value	0x314
	.uleb128 0x1
	.long	.LASF1009
	.value	0x315
	.uleb128 0x1
	.long	.LASF1010
	.value	0x316
	.uleb128 0x1
	.long	.LASF1011
	.value	0x317
	.uleb128 0x1
	.long	.LASF1012
	.value	0x318
	.uleb128 0x1
	.long	.LASF1013
	.value	0x319
	.uleb128 0x1
	.long	.LASF1014
	.value	0x31a
	.uleb128 0x1
	.long	.LASF1015
	.value	0x31b
	.uleb128 0x1
	.long	.LASF1016
	.value	0x31c
	.uleb128 0x1
	.long	.LASF1017
	.value	0x31d
	.uleb128 0x1
	.long	.LASF1018
	.value	0x31e
	.uleb128 0x1
	.long	.LASF1019
	.value	0x31f
	.uleb128 0x1
	.long	.LASF1020
	.value	0x320
	.uleb128 0x1
	.long	.LASF1021
	.value	0x321
	.uleb128 0x1
	.long	.LASF1022
	.value	0x322
	.uleb128 0x1
	.long	.LASF1023
	.value	0x323
	.uleb128 0x1
	.long	.LASF1024
	.value	0x324
	.uleb128 0x1
	.long	.LASF1025
	.value	0x325
	.uleb128 0x1
	.long	.LASF1026
	.value	0x326
	.uleb128 0x1
	.long	.LASF1027
	.value	0x327
	.uleb128 0x1
	.long	.LASF1028
	.value	0x328
	.uleb128 0x1
	.long	.LASF1029
	.value	0x329
	.uleb128 0x1
	.long	.LASF1030
	.value	0x32a
	.uleb128 0x1
	.long	.LASF1031
	.value	0x32b
	.uleb128 0x1
	.long	.LASF1032
	.value	0x32c
	.uleb128 0x1
	.long	.LASF1033
	.value	0x32d
	.uleb128 0x1
	.long	.LASF1034
	.value	0x32e
	.uleb128 0x1
	.long	.LASF1035
	.value	0x32f
	.uleb128 0x1
	.long	.LASF1036
	.value	0x330
	.uleb128 0x1
	.long	.LASF1037
	.value	0x331
	.uleb128 0x1
	.long	.LASF1038
	.value	0x332
	.uleb128 0x1
	.long	.LASF1039
	.value	0x333
	.uleb128 0x1
	.long	.LASF1040
	.value	0x334
	.uleb128 0x1
	.long	.LASF1041
	.value	0x335
	.uleb128 0x1
	.long	.LASF1042
	.value	0x336
	.uleb128 0x1
	.long	.LASF1043
	.value	0x337
	.uleb128 0x1
	.long	.LASF1044
	.value	0x338
	.uleb128 0x1
	.long	.LASF1045
	.value	0x339
	.uleb128 0x1
	.long	.LASF1046
	.value	0x33a
	.uleb128 0x1
	.long	.LASF1047
	.value	0x33b
	.uleb128 0x1
	.long	.LASF1048
	.value	0x33c
	.uleb128 0x1
	.long	.LASF1049
	.value	0x33d
	.uleb128 0x1
	.long	.LASF1050
	.value	0x33e
	.uleb128 0x1
	.long	.LASF1051
	.value	0x33f
	.uleb128 0x1
	.long	.LASF1052
	.value	0x340
	.uleb128 0x1
	.long	.LASF1053
	.value	0x341
	.uleb128 0x1
	.long	.LASF1054
	.value	0x342
	.uleb128 0x1
	.long	.LASF1055
	.value	0x343
	.uleb128 0x1
	.long	.LASF1056
	.value	0x344
	.uleb128 0x1
	.long	.LASF1057
	.value	0x345
	.uleb128 0x1
	.long	.LASF1058
	.value	0x346
	.uleb128 0x1
	.long	.LASF1059
	.value	0x347
	.uleb128 0x1
	.long	.LASF1060
	.value	0x348
	.uleb128 0x1
	.long	.LASF1061
	.value	0x349
	.uleb128 0x1
	.long	.LASF1062
	.value	0x34a
	.uleb128 0x1
	.long	.LASF1063
	.value	0x34b
	.uleb128 0x1
	.long	.LASF1064
	.value	0x34c
	.uleb128 0x1
	.long	.LASF1065
	.value	0x34d
	.uleb128 0x1
	.long	.LASF1066
	.value	0x34e
	.uleb128 0x1
	.long	.LASF1067
	.value	0x34f
	.uleb128 0x1
	.long	.LASF1068
	.value	0x350
	.uleb128 0x1
	.long	.LASF1069
	.value	0x351
	.uleb128 0x1
	.long	.LASF1070
	.value	0x352
	.uleb128 0x1
	.long	.LASF1071
	.value	0x353
	.uleb128 0x1
	.long	.LASF1072
	.value	0x354
	.uleb128 0x1
	.long	.LASF1073
	.value	0x355
	.uleb128 0x1
	.long	.LASF1074
	.value	0x356
	.uleb128 0x1
	.long	.LASF1075
	.value	0x357
	.uleb128 0x1
	.long	.LASF1076
	.value	0x358
	.uleb128 0x1
	.long	.LASF1077
	.value	0x359
	.uleb128 0x1
	.long	.LASF1078
	.value	0x35a
	.uleb128 0x1
	.long	.LASF1079
	.value	0x35b
	.uleb128 0x1
	.long	.LASF1080
	.value	0x35c
	.uleb128 0x1
	.long	.LASF1081
	.value	0x35d
	.uleb128 0x1
	.long	.LASF1082
	.value	0x35e
	.uleb128 0x1
	.long	.LASF1083
	.value	0x35f
	.uleb128 0x1
	.long	.LASF1084
	.value	0x360
	.uleb128 0x1
	.long	.LASF1085
	.value	0x361
	.uleb128 0x1
	.long	.LASF1086
	.value	0x362
	.uleb128 0x1
	.long	.LASF1087
	.value	0x363
	.uleb128 0x1
	.long	.LASF1088
	.value	0x364
	.uleb128 0x1
	.long	.LASF1089
	.value	0x365
	.uleb128 0x1
	.long	.LASF1090
	.value	0x366
	.uleb128 0x1
	.long	.LASF1091
	.value	0x367
	.uleb128 0x1
	.long	.LASF1092
	.value	0x368
	.uleb128 0x1
	.long	.LASF1093
	.value	0x369
	.uleb128 0x1
	.long	.LASF1094
	.value	0x36a
	.uleb128 0x1
	.long	.LASF1095
	.value	0x36b
	.uleb128 0x1
	.long	.LASF1096
	.value	0x36c
	.uleb128 0x1
	.long	.LASF1097
	.value	0x36d
	.uleb128 0x1
	.long	.LASF1098
	.value	0x36e
	.uleb128 0x1
	.long	.LASF1099
	.value	0x36f
	.uleb128 0x1
	.long	.LASF1100
	.value	0x370
	.uleb128 0x1
	.long	.LASF1101
	.value	0x371
	.uleb128 0x1
	.long	.LASF1102
	.value	0x372
	.uleb128 0x1
	.long	.LASF1103
	.value	0x373
	.uleb128 0x1
	.long	.LASF1104
	.value	0x374
	.uleb128 0x1
	.long	.LASF1105
	.value	0x375
	.uleb128 0x1
	.long	.LASF1106
	.value	0x376
	.uleb128 0x1
	.long	.LASF1107
	.value	0x377
	.uleb128 0x1
	.long	.LASF1108
	.value	0x378
	.uleb128 0x1
	.long	.LASF1109
	.value	0x379
	.uleb128 0x1
	.long	.LASF1110
	.value	0x37a
	.uleb128 0x1
	.long	.LASF1111
	.value	0x37b
	.uleb128 0x1
	.long	.LASF1112
	.value	0x37c
	.uleb128 0x1
	.long	.LASF1113
	.value	0x37d
	.uleb128 0x1
	.long	.LASF1114
	.value	0x37e
	.uleb128 0x1
	.long	.LASF1115
	.value	0x37f
	.uleb128 0x1
	.long	.LASF1116
	.value	0x380
	.uleb128 0x1
	.long	.LASF1117
	.value	0x381
	.uleb128 0x1
	.long	.LASF1118
	.value	0x382
	.uleb128 0x1
	.long	.LASF1119
	.value	0x383
	.uleb128 0x1
	.long	.LASF1120
	.value	0x384
	.uleb128 0x1
	.long	.LASF1121
	.value	0x385
	.uleb128 0x1
	.long	.LASF1122
	.value	0x386
	.uleb128 0x1
	.long	.LASF1123
	.value	0x387
	.uleb128 0x1
	.long	.LASF1124
	.value	0x388
	.uleb128 0x1
	.long	.LASF1125
	.value	0x389
	.uleb128 0x1
	.long	.LASF1126
	.value	0x38a
	.uleb128 0x1
	.long	.LASF1127
	.value	0x38b
	.uleb128 0x1
	.long	.LASF1128
	.value	0x38c
	.uleb128 0x1
	.long	.LASF1129
	.value	0x38d
	.uleb128 0x1
	.long	.LASF1130
	.value	0x38e
	.uleb128 0x1
	.long	.LASF1131
	.value	0x38f
	.uleb128 0x1
	.long	.LASF1132
	.value	0x390
	.uleb128 0x1
	.long	.LASF1133
	.value	0x391
	.uleb128 0x1
	.long	.LASF1134
	.value	0x392
	.uleb128 0x1
	.long	.LASF1135
	.value	0x393
	.uleb128 0x1
	.long	.LASF1136
	.value	0x394
	.uleb128 0x1
	.long	.LASF1137
	.value	0x395
	.uleb128 0x1
	.long	.LASF1138
	.value	0x396
	.uleb128 0x1
	.long	.LASF1139
	.value	0x397
	.uleb128 0x1
	.long	.LASF1140
	.value	0x398
	.uleb128 0x1
	.long	.LASF1141
	.value	0x399
	.uleb128 0x1
	.long	.LASF1142
	.value	0x39a
	.uleb128 0x1
	.long	.LASF1143
	.value	0x39b
	.uleb128 0x1
	.long	.LASF1144
	.value	0x39c
	.uleb128 0x1
	.long	.LASF1145
	.value	0x39d
	.uleb128 0x1
	.long	.LASF1146
	.value	0x39e
	.uleb128 0x1
	.long	.LASF1147
	.value	0x39f
	.uleb128 0x1
	.long	.LASF1148
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF1149
	.value	0x3a1
	.uleb128 0x1
	.long	.LASF1150
	.value	0x3a2
	.uleb128 0x1
	.long	.LASF1151
	.value	0x3a3
	.uleb128 0x1
	.long	.LASF1152
	.value	0x3a4
	.uleb128 0x1
	.long	.LASF1153
	.value	0x3a5
	.uleb128 0x1
	.long	.LASF1154
	.value	0x3a6
	.uleb128 0x1
	.long	.LASF1155
	.value	0x3a7
	.uleb128 0x1
	.long	.LASF1156
	.value	0x3a8
	.uleb128 0x1
	.long	.LASF1157
	.value	0x3a9
	.uleb128 0x1
	.long	.LASF1158
	.value	0x3aa
	.uleb128 0x1
	.long	.LASF1159
	.value	0x3ab
	.uleb128 0x1
	.long	.LASF1160
	.value	0x3ac
	.uleb128 0x1
	.long	.LASF1161
	.value	0x3ad
	.uleb128 0x1
	.long	.LASF1162
	.value	0x3ae
	.uleb128 0x1
	.long	.LASF1163
	.value	0x3af
	.uleb128 0x1
	.long	.LASF1164
	.value	0x3b0
	.uleb128 0x1
	.long	.LASF1165
	.value	0x3b1
	.uleb128 0x1
	.long	.LASF1166
	.value	0x3b2
	.uleb128 0x1
	.long	.LASF1167
	.value	0x3b3
	.uleb128 0x1
	.long	.LASF1168
	.value	0x3b4
	.uleb128 0x1
	.long	.LASF1169
	.value	0x3b5
	.uleb128 0x1
	.long	.LASF1170
	.value	0x3b6
	.uleb128 0x1
	.long	.LASF1171
	.value	0x3b7
	.uleb128 0x1
	.long	.LASF1172
	.value	0x3b8
	.uleb128 0x1
	.long	.LASF1173
	.value	0x3b9
	.uleb128 0x1
	.long	.LASF1174
	.value	0x3ba
	.uleb128 0x1
	.long	.LASF1175
	.value	0x3bb
	.uleb128 0x1
	.long	.LASF1176
	.value	0x3bc
	.uleb128 0x1
	.long	.LASF1177
	.value	0x3bd
	.uleb128 0x1
	.long	.LASF1178
	.value	0x3be
	.uleb128 0x1
	.long	.LASF1179
	.value	0x3bf
	.uleb128 0x1
	.long	.LASF1180
	.value	0x3c0
	.uleb128 0x1
	.long	.LASF1181
	.value	0x3c1
	.uleb128 0x1
	.long	.LASF1182
	.value	0x3c2
	.uleb128 0x1
	.long	.LASF1183
	.value	0x3c3
	.uleb128 0x1
	.long	.LASF1184
	.value	0x3c4
	.uleb128 0x1
	.long	.LASF1185
	.value	0x3c5
	.uleb128 0x1
	.long	.LASF1186
	.value	0x3c6
	.uleb128 0x1
	.long	.LASF1187
	.value	0x3c7
	.byte	0
	.uleb128 0xe
	.long	.LASF1188
	.byte	0xb
	.value	0x478
	.byte	0x3
	.long	0x77f
	.uleb128 0x18
	.byte	0x38
	.byte	0xb
	.value	0x47b
	.long	0x217d
	.uleb128 0x4
	.long	.LASF1189
	.byte	0xb
	.value	0x47d
	.byte	0xf
	.long	0x773
	.byte	0
	.uleb128 0x4
	.long	.LASF1190
	.byte	0xb
	.value	0x47e
	.byte	0xa
	.long	0xa3
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1191
	.byte	0xb
	.value	0x47f
	.byte	0xa
	.long	0xa3
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1192
	.byte	0xb
	.value	0x481
	.byte	0xf
	.long	0x365
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1193
	.byte	0xb
	.value	0x482
	.byte	0x10
	.long	0x2104
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1194
	.byte	0xb
	.value	0x483
	.byte	0xa
	.long	0xa3
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1195
	.byte	0xb
	.value	0x483
	.byte	0x11
	.long	0xa3
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.long	.LASF1196
	.byte	0xb
	.value	0x484
	.byte	0x3
	.long	0x2111
	.uleb128 0x2f
	.byte	0x7
	.byte	0x4
	.long	0x77
	.byte	0xb
	.value	0x48b
	.byte	0xe
	.long	0x24d6
	.uleb128 0x2
	.long	.LASF1197
	.byte	0
	.uleb128 0x2
	.long	.LASF1198
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1199
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1200
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1201
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1202
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1203
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1204
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1205
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1206
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1207
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1208
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1209
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1210
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1211
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1212
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1213
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1214
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1215
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1216
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1217
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1218
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1219
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1220
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1221
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1222
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1223
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1224
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1225
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1226
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1227
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1228
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1229
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1230
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1231
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1232
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1233
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1234
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1235
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1236
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1237
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1238
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1239
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1240
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1241
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1242
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1243
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1244
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1245
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1246
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1247
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1248
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1249
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1250
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1251
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1252
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1253
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1254
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1255
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1256
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1257
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1258
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1259
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1260
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1261
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1262
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1263
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1264
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1265
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1266
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1267
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1268
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1269
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1270
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1271
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1272
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1273
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1274
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1275
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1276
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1277
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1278
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1279
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1280
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1281
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1282
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1283
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1284
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1285
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1286
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1287
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1288
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1289
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1290
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1291
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1292
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1293
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1294
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1295
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1296
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1297
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1298
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1299
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1300
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1301
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1302
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1303
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1304
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1305
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1306
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF1307
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF1308
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF1309
	.byte	0x70
	.uleb128 0x2
	.long	.LASF1310
	.byte	0x71
	.uleb128 0x2
	.long	.LASF1311
	.byte	0x72
	.uleb128 0x2
	.long	.LASF1312
	.byte	0x73
	.uleb128 0x2
	.long	.LASF1313
	.byte	0x74
	.uleb128 0x2
	.long	.LASF1314
	.byte	0x75
	.uleb128 0x2
	.long	.LASF1315
	.byte	0x76
	.uleb128 0x2
	.long	.LASF1316
	.byte	0x77
	.uleb128 0x2
	.long	.LASF1317
	.byte	0x78
	.uleb128 0x2
	.long	.LASF1318
	.byte	0x79
	.uleb128 0x2
	.long	.LASF1319
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF1320
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF1321
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF1322
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF1323
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF1324
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF1325
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1326
	.byte	0x81
	.uleb128 0x2
	.long	.LASF1327
	.byte	0x82
	.uleb128 0x2
	.long	.LASF1328
	.byte	0x83
	.uleb128 0x2
	.long	.LASF1329
	.byte	0x84
	.uleb128 0x2
	.long	.LASF1330
	.byte	0x85
	.uleb128 0x2
	.long	.LASF1331
	.byte	0x86
	.uleb128 0x2
	.long	.LASF1332
	.byte	0x87
	.uleb128 0x2
	.long	.LASF1333
	.byte	0x88
	.uleb128 0x2
	.long	.LASF1334
	.byte	0x89
	.byte	0
	.uleb128 0xe
	.long	.LASF1335
	.byte	0xb
	.value	0x517
	.byte	0x3
	.long	0x218a
	.uleb128 0x18
	.byte	0x5c
	.byte	0xb
	.value	0x519
	.long	0x262f
	.uleb128 0x4
	.long	.LASF1336
	.byte	0xb
	.value	0x51b
	.byte	0x9
	.long	0x9c
	.byte	0
	.uleb128 0x4
	.long	.LASF1337
	.byte	0xb
	.value	0x51c
	.byte	0x9
	.long	0x9c
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1338
	.byte	0xb
	.value	0x51d
	.byte	0x9
	.long	0x9c
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1339
	.byte	0xb
	.value	0x51e
	.byte	0x9
	.long	0x9c
	.byte	0xc
	.uleb128 0x4
	.long	.LASF1340
	.byte	0xb
	.value	0x51f
	.byte	0x9
	.long	0x9c
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1341
	.byte	0xb
	.value	0x520
	.byte	0x9
	.long	0x9c
	.byte	0x14
	.uleb128 0x4
	.long	.LASF1342
	.byte	0xb
	.value	0x521
	.byte	0x9
	.long	0x9c
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1343
	.byte	0xb
	.value	0x522
	.byte	0x9
	.long	0x9c
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF1344
	.byte	0xb
	.value	0x523
	.byte	0x9
	.long	0x9c
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1345
	.byte	0xb
	.value	0x524
	.byte	0x9
	.long	0x9c
	.byte	0x24
	.uleb128 0x4
	.long	.LASF1346
	.byte	0xb
	.value	0x525
	.byte	0x9
	.long	0x9c
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1347
	.byte	0xb
	.value	0x526
	.byte	0x9
	.long	0x9c
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1348
	.byte	0xb
	.value	0x527
	.byte	0x9
	.long	0x9c
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1349
	.byte	0xb
	.value	0x528
	.byte	0x9
	.long	0x9c
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1350
	.byte	0xb
	.value	0x529
	.byte	0x9
	.long	0x9c
	.byte	0x38
	.uleb128 0x4
	.long	.LASF1351
	.byte	0xb
	.value	0x52a
	.byte	0x9
	.long	0x9c
	.byte	0x3c
	.uleb128 0x4
	.long	.LASF1352
	.byte	0xb
	.value	0x52b
	.byte	0x9
	.long	0x9c
	.byte	0x40
	.uleb128 0x4
	.long	.LASF1353
	.byte	0xb
	.value	0x52c
	.byte	0x9
	.long	0x9c
	.byte	0x44
	.uleb128 0x4
	.long	.LASF1354
	.byte	0xb
	.value	0x52d
	.byte	0x9
	.long	0x9c
	.byte	0x48
	.uleb128 0x4
	.long	.LASF1355
	.byte	0xb
	.value	0x52e
	.byte	0x9
	.long	0x9c
	.byte	0x4c
	.uleb128 0x4
	.long	.LASF1356
	.byte	0xb
	.value	0x52f
	.byte	0x9
	.long	0x9c
	.byte	0x50
	.uleb128 0x4
	.long	.LASF1357
	.byte	0xb
	.value	0x530
	.byte	0x9
	.long	0x9c
	.byte	0x54
	.uleb128 0x4
	.long	.LASF1358
	.byte	0xb
	.value	0x531
	.byte	0x9
	.long	0x9c
	.byte	0x58
	.byte	0
	.uleb128 0xe
	.long	.LASF1359
	.byte	0xb
	.value	0x533
	.byte	0x3
	.long	0x24e3
	.uleb128 0x10
	.long	0x77
	.byte	0xc
	.byte	0x76
	.byte	0x1
	.long	0x271a
	.uleb128 0x2
	.long	.LASF1360
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1361
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1362
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1363
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1364
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1365
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1366
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1367
	.byte	0x80
	.uleb128 0x1
	.long	.LASF1368
	.value	0x100
	.uleb128 0x1
	.long	.LASF1369
	.value	0x200
	.uleb128 0x1
	.long	.LASF1370
	.value	0x400
	.uleb128 0x1
	.long	.LASF1371
	.value	0x800
	.uleb128 0x1
	.long	.LASF1372
	.value	0x1000
	.uleb128 0x1
	.long	.LASF1373
	.value	0x2000
	.uleb128 0x1
	.long	.LASF1374
	.value	0x4000
	.uleb128 0x1
	.long	.LASF1375
	.value	0x8000
	.uleb128 0x11
	.long	.LASF1376
	.long	0x10000
	.uleb128 0x11
	.long	.LASF1377
	.long	0x20000
	.uleb128 0x11
	.long	.LASF1378
	.long	0x40000
	.uleb128 0x11
	.long	.LASF1379
	.long	0x80000
	.uleb128 0x11
	.long	.LASF1380
	.long	0x100000
	.uleb128 0x11
	.long	.LASF1381
	.long	0x200000
	.uleb128 0x11
	.long	.LASF1382
	.long	0x400000
	.uleb128 0x11
	.long	.LASF1383
	.long	0x800000
	.uleb128 0x11
	.long	.LASF1384
	.long	0x1000000
	.uleb128 0x11
	.long	.LASF1385
	.long	0x2000000
	.uleb128 0x11
	.long	.LASF1386
	.long	0xc000000
	.uleb128 0x2
	.long	.LASF1387
	.byte	0x1a
	.byte	0
	.uleb128 0x1c
	.long	.LASF1389
	.byte	0xe0
	.byte	0xc
	.byte	0xcf
	.long	0x28f1
	.uleb128 0x3
	.long	.LASF1390
	.byte	0xc
	.byte	0xd2
	.byte	0x10
	.long	0x3b6
	.byte	0
	.uleb128 0xb
	.string	"x"
	.byte	0xc
	.byte	0xd5
	.byte	0xe
	.long	0x2c9
	.byte	0x18
	.uleb128 0xb
	.string	"y"
	.byte	0xc
	.byte	0xd6
	.byte	0xe
	.long	0x2c9
	.byte	0x1c
	.uleb128 0xb
	.string	"z"
	.byte	0xc
	.byte	0xd7
	.byte	0xe
	.long	0x2c9
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1391
	.byte	0xc
	.byte	0xda
	.byte	0x14
	.long	0x28f1
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1392
	.byte	0xc
	.byte	0xdb
	.byte	0x14
	.long	0x28f1
	.byte	0x30
	.uleb128 0x3
	.long	.LASF76
	.byte	0xc
	.byte	0xde
	.byte	0xe
	.long	0x2da
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1189
	.byte	0xc
	.byte	0xdf
	.byte	0x12
	.long	0x773
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1190
	.byte	0xc
	.byte	0xe0
	.byte	0xb
	.long	0x9c
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1393
	.byte	0xc
	.byte	0xe4
	.byte	0x14
	.long	0x28f1
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1394
	.byte	0xc
	.byte	0xe5
	.byte	0x14
	.long	0x28f1
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1395
	.byte	0xc
	.byte	0xe7
	.byte	0x19
	.long	0x292a
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1396
	.byte	0xc
	.byte	0xea
	.byte	0xe
	.long	0x2c9
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1397
	.byte	0xc
	.byte	0xeb
	.byte	0xe
	.long	0x2c9
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1352
	.byte	0xc
	.byte	0xee
	.byte	0xe
	.long	0x2c9
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1353
	.byte	0xc
	.byte	0xef
	.byte	0xe
	.long	0x2c9
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1398
	.byte	0xc
	.byte	0xf2
	.byte	0xe
	.long	0x2c9
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1399
	.byte	0xc
	.byte	0xf3
	.byte	0xe
	.long	0x2c9
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1400
	.byte	0xc
	.byte	0xf4
	.byte	0xe
	.long	0x2c9
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1401
	.byte	0xc
	.byte	0xf7
	.byte	0xb
	.long	0x9c
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF77
	.byte	0xc
	.byte	0xf9
	.byte	0x11
	.long	0x24d6
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1402
	.byte	0xc
	.byte	0xfa
	.byte	0x12
	.long	0x292f
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1191
	.byte	0xc
	.byte	0xfc
	.byte	0xb
	.long	0x9c
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1403
	.byte	0xc
	.byte	0xfd
	.byte	0xf
	.long	0x2934
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1357
	.byte	0xc
	.byte	0xfe
	.byte	0xb
	.long	0x9c
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1404
	.byte	0xc
	.byte	0xff
	.byte	0xb
	.long	0x9c
	.byte	0xa4
	.uleb128 0x4
	.long	.LASF1405
	.byte	0xc
	.value	0x102
	.byte	0xb
	.long	0x9c
	.byte	0xa8
	.uleb128 0x4
	.long	.LASF1406
	.byte	0xc
	.value	0x103
	.byte	0xb
	.long	0x9c
	.byte	0xac
	.uleb128 0x4
	.long	.LASF1407
	.byte	0xc
	.value	0x107
	.byte	0x14
	.long	0x28f1
	.byte	0xb0
	.uleb128 0x4
	.long	.LASF1341
	.byte	0xc
	.value	0x10b
	.byte	0xb
	.long	0x9c
	.byte	0xb8
	.uleb128 0x4
	.long	.LASF1408
	.byte	0xc
	.value	0x10f
	.byte	0xb
	.long	0x9c
	.byte	0xbc
	.uleb128 0x4
	.long	.LASF1409
	.byte	0xc
	.value	0x113
	.byte	0x16
	.long	0x2b0e
	.byte	0xc0
	.uleb128 0x4
	.long	.LASF1410
	.byte	0xc
	.value	0x116
	.byte	0xb
	.long	0x9c
	.byte	0xc8
	.uleb128 0x4
	.long	.LASF1411
	.byte	0xc
	.value	0x119
	.byte	0x11
	.long	0x418
	.byte	0xcc
	.uleb128 0x4
	.long	.LASF1412
	.byte	0xc
	.value	0x11c
	.byte	0x14
	.long	0x28f1
	.byte	0xd8
	.byte	0
	.uleb128 0x6
	.long	0x271a
	.uleb128 0x1c
	.long	.LASF1413
	.byte	0x10
	.byte	0xd
	.byte	0xe3
	.long	0x292a
	.uleb128 0x3
	.long	.LASF1414
	.byte	0xd
	.byte	0xe5
	.byte	0xf
	.long	0x2da8
	.byte	0
	.uleb128 0x3
	.long	.LASF1415
	.byte	0xd
	.byte	0xe6
	.byte	0xb
	.long	0x95
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1416
	.byte	0xd
	.byte	0xe7
	.byte	0xb
	.long	0x95
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.long	0x28f6
	.uleb128 0x6
	.long	0x262f
	.uleb128 0x6
	.long	0x217d
	.uleb128 0x30
	.long	.LASF1417
	.value	0x140
	.byte	0xe
	.byte	0x53
	.byte	0x10
	.long	0x2b0e
	.uleb128 0xb
	.string	"mo"
	.byte	0xe
	.byte	0x55
	.byte	0xe
	.long	0x2c67
	.byte	0
	.uleb128 0x3
	.long	.LASF1418
	.byte	0xe
	.byte	0x56
	.byte	0x13
	.long	0x321d
	.byte	0x8
	.uleb128 0xb
	.string	"cmd"
	.byte	0xe
	.byte	0x57
	.byte	0xf
	.long	0x255
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1419
	.byte	0xe
	.byte	0x5c
	.byte	0xe
	.long	0x2c9
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1420
	.byte	0xe
	.byte	0x5e
	.byte	0xe
	.long	0x2c9
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1421
	.byte	0xe
	.byte	0x60
	.byte	0x16
	.long	0x2c9
	.byte	0x1c
	.uleb128 0xb
	.string	"bob"
	.byte	0xe
	.byte	0x62
	.byte	0x16
	.long	0x2c9
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1404
	.byte	0xe
	.byte	0x66
	.byte	0xb
	.long	0x9c
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1422
	.byte	0xe
	.byte	0x67
	.byte	0xb
	.long	0x9c
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1423
	.byte	0xe
	.byte	0x69
	.byte	0xb
	.long	0x9c
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1424
	.byte	0xe
	.byte	0x6c
	.byte	0xb
	.long	0x3229
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1425
	.byte	0xe
	.byte	0x6d
	.byte	0xe
	.long	0x3239
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1426
	.byte	0xe
	.byte	0x6e
	.byte	0xe
	.long	0x1e6
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1427
	.byte	0xe
	.byte	0x71
	.byte	0xb
	.long	0x2c6c
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1428
	.byte	0xe
	.byte	0x72
	.byte	0x12
	.long	0x159
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1429
	.byte	0xe
	.byte	0x75
	.byte	0x12
	.long	0x159
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1430
	.byte	0xe
	.byte	0x77
	.byte	0xe
	.long	0x3249
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1431
	.byte	0xe
	.byte	0x78
	.byte	0xb
	.long	0x2c6c
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1432
	.byte	0xe
	.byte	0x79
	.byte	0xb
	.long	0x2c6c
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1433
	.byte	0xe
	.byte	0x7c
	.byte	0xb
	.long	0x9c
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1434
	.byte	0xe
	.byte	0x7d
	.byte	0xb
	.long	0x9c
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1435
	.byte	0xe
	.byte	0x81
	.byte	0xb
	.long	0x9c
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1436
	.byte	0xe
	.byte	0x84
	.byte	0xb
	.long	0x9c
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1437
	.byte	0xe
	.byte	0x87
	.byte	0xb
	.long	0x9c
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1438
	.byte	0xe
	.byte	0x88
	.byte	0xb
	.long	0x9c
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1439
	.byte	0xe
	.byte	0x89
	.byte	0xb
	.long	0x9c
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1440
	.byte	0xe
	.byte	0x8c
	.byte	0xc
	.long	0xaa
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1441
	.byte	0xe
	.byte	0x8f
	.byte	0xb
	.long	0x9c
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1442
	.byte	0xe
	.byte	0x90
	.byte	0xb
	.long	0x9c
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1443
	.byte	0xe
	.byte	0x93
	.byte	0xe
	.long	0x2c67
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1444
	.byte	0xe
	.byte	0x96
	.byte	0xb
	.long	0x9c
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1445
	.byte	0xe
	.byte	0x9a
	.byte	0xb
	.long	0x9c
	.byte	0xfc
	.uleb128 0x1f
	.long	.LASF1446
	.byte	0x9e
	.byte	0xb
	.long	0x9c
	.value	0x100
	.uleb128 0x1f
	.long	.LASF1447
	.byte	0xa1
	.byte	0xf
	.long	0x3259
	.value	0x108
	.uleb128 0x1f
	.long	.LASF1448
	.byte	0xa4
	.byte	0xe
	.long	0x1e6
	.value	0x138
	.byte	0
	.uleb128 0x6
	.long	0x2939
	.uleb128 0xe
	.long	.LASF1449
	.byte	0xc
	.value	0x11e
	.byte	0x3
	.long	0x271a
	.uleb128 0x13
	.byte	0x8
	.byte	0xd
	.byte	0x47
	.long	0x2b3f
	.uleb128 0xb
	.string	"x"
	.byte	0xd
	.byte	0x49
	.byte	0xd
	.long	0x2c9
	.byte	0
	.uleb128 0xb
	.string	"y"
	.byte	0xd
	.byte	0x4a
	.byte	0xd
	.long	0x2c9
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.long	.LASF1450
	.byte	0xd
	.byte	0x4c
	.byte	0x3
	.long	0x2b20
	.uleb128 0x13
	.byte	0x28
	.byte	0xd
	.byte	0x58
	.long	0x2b82
	.uleb128 0x3
	.long	.LASF1390
	.byte	0xd
	.byte	0x5a
	.byte	0x10
	.long	0x3b6
	.byte	0
	.uleb128 0xb
	.string	"x"
	.byte	0xd
	.byte	0x5b
	.byte	0xe
	.long	0x2c9
	.byte	0x18
	.uleb128 0xb
	.string	"y"
	.byte	0xd
	.byte	0x5c
	.byte	0xe
	.long	0x2c9
	.byte	0x1c
	.uleb128 0xb
	.string	"z"
	.byte	0xd
	.byte	0x5d
	.byte	0xe
	.long	0x2c9
	.byte	0x20
	.byte	0
	.uleb128 0x9
	.long	.LASF1451
	.byte	0xd
	.byte	0x5f
	.byte	0x3
	.long	0x2b4b
	.uleb128 0x13
	.byte	0x80
	.byte	0xd
	.byte	0x65
	.long	0x2c67
	.uleb128 0x3
	.long	.LASF1452
	.byte	0xd
	.byte	0x67
	.byte	0xd
	.long	0x2c9
	.byte	0
	.uleb128 0x3
	.long	.LASF1453
	.byte	0xd
	.byte	0x68
	.byte	0xd
	.long	0x2c9
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1454
	.byte	0xd
	.byte	0x69
	.byte	0xb
	.long	0x95
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1455
	.byte	0xd
	.byte	0x6a
	.byte	0xb
	.long	0x95
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1456
	.byte	0xd
	.byte	0x6b
	.byte	0xb
	.long	0x95
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1457
	.byte	0xd
	.byte	0x6c
	.byte	0xb
	.long	0x95
	.byte	0xe
	.uleb128 0xb
	.string	"tag"
	.byte	0xd
	.byte	0x6d
	.byte	0xb
	.long	0x95
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1458
	.byte	0xd
	.byte	0x70
	.byte	0xa
	.long	0x9c
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1459
	.byte	0xd
	.byte	0x73
	.byte	0xd
	.long	0x2c67
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1460
	.byte	0xd
	.byte	0x76
	.byte	0xa
	.long	0x2c6c
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1461
	.byte	0xd
	.byte	0x79
	.byte	0x11
	.long	0x2b82
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1401
	.byte	0xd
	.byte	0x7c
	.byte	0xa
	.long	0x9c
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1462
	.byte	0xd
	.byte	0x7f
	.byte	0xd
	.long	0x2c67
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1463
	.byte	0xd
	.byte	0x82
	.byte	0xb
	.long	0x7e
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1464
	.byte	0xd
	.byte	0x84
	.byte	0xb
	.long	0x9c
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1465
	.byte	0xd
	.byte	0x85
	.byte	0x15
	.long	0x2d3b
	.byte	0x78
	.byte	0
	.uleb128 0x6
	.long	0x2b13
	.uleb128 0xc
	.long	0x9c
	.long	0x2c7c
	.uleb128 0xd
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x1c
	.long	.LASF1466
	.byte	0x58
	.byte	0xd
	.byte	0xb3
	.long	0x2d3b
	.uleb128 0xb
	.string	"v1"
	.byte	0xd
	.byte	0xb6
	.byte	0xf
	.long	0x2dea
	.byte	0
	.uleb128 0xb
	.string	"v2"
	.byte	0xd
	.byte	0xb7
	.byte	0xf
	.long	0x2dea
	.byte	0x8
	.uleb128 0xb
	.string	"dx"
	.byte	0xd
	.byte	0xba
	.byte	0xd
	.long	0x2c9
	.byte	0x10
	.uleb128 0xb
	.string	"dy"
	.byte	0xd
	.byte	0xbb
	.byte	0xd
	.long	0x2c9
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1357
	.byte	0xd
	.byte	0xbe
	.byte	0xb
	.long	0x95
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1457
	.byte	0xd
	.byte	0xbf
	.byte	0xb
	.long	0x95
	.byte	0x1a
	.uleb128 0xb
	.string	"tag"
	.byte	0xd
	.byte	0xc0
	.byte	0xb
	.long	0x95
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1467
	.byte	0xd
	.byte	0xc4
	.byte	0xb
	.long	0x3c2
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1468
	.byte	0xd
	.byte	0xc8
	.byte	0xd
	.long	0x2def
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1469
	.byte	0xd
	.byte	0xcb
	.byte	0x11
	.long	0x2dde
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1470
	.byte	0xd
	.byte	0xcf
	.byte	0xf
	.long	0x2da8
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1471
	.byte	0xd
	.byte	0xd0
	.byte	0xf
	.long	0x2da8
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1401
	.byte	0xd
	.byte	0xd3
	.byte	0xa
	.long	0x9c
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1463
	.byte	0xd
	.byte	0xd6
	.byte	0xb
	.long	0x7e
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.long	0x2d40
	.uleb128 0x6
	.long	0x2c7c
	.uleb128 0x9
	.long	.LASF1472
	.byte	0xd
	.byte	0x87
	.byte	0x3
	.long	0x2b8e
	.uleb128 0x13
	.byte	0x18
	.byte	0xd
	.byte	0x90
	.long	0x2da8
	.uleb128 0x3
	.long	.LASF1473
	.byte	0xd
	.byte	0x93
	.byte	0xd
	.long	0x2c9
	.byte	0
	.uleb128 0x3
	.long	.LASF1474
	.byte	0xd
	.byte	0x96
	.byte	0xd
	.long	0x2c9
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1475
	.byte	0xd
	.byte	0x9a
	.byte	0xb
	.long	0x95
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1476
	.byte	0xd
	.byte	0x9b
	.byte	0xb
	.long	0x95
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1477
	.byte	0xd
	.byte	0x9c
	.byte	0xb
	.long	0x95
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1414
	.byte	0xd
	.byte	0x9f
	.byte	0xf
	.long	0x2da8
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	0x2d45
	.uleb128 0x9
	.long	.LASF1478
	.byte	0xd
	.byte	0xa1
	.byte	0x3
	.long	0x2d51
	.uleb128 0x10
	.long	0x77
	.byte	0xd
	.byte	0xa9
	.byte	0x1
	.long	0x2dde
	.uleb128 0x2
	.long	.LASF1479
	.byte	0
	.uleb128 0x2
	.long	.LASF1480
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1481
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1482
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	.LASF1483
	.byte	0xd
	.byte	0xaf
	.byte	0x3
	.long	0x2db9
	.uleb128 0x6
	.long	0x2b3f
	.uleb128 0xc
	.long	0x2c9
	.long	0x2dff
	.uleb128 0xd
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	.LASF1484
	.byte	0xd
	.byte	0xd7
	.byte	0x3
	.long	0x2c7c
	.uleb128 0x13
	.byte	0x38
	.byte	0xd
	.byte	0xf0
	.long	0x2e7b
	.uleb128 0xb
	.string	"v1"
	.byte	0xd
	.byte	0xf2
	.byte	0xf
	.long	0x2dea
	.byte	0
	.uleb128 0xb
	.string	"v2"
	.byte	0xd
	.byte	0xf3
	.byte	0xf
	.long	0x2dea
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1485
	.byte	0xd
	.byte	0xf5
	.byte	0xd
	.long	0x2c9
	.byte	0x10
	.uleb128 0x3
	.long	.LASF76
	.byte	0xd
	.byte	0xf7
	.byte	0xd
	.long	0x2da
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1486
	.byte	0xd
	.byte	0xf9
	.byte	0xd
	.long	0x2e7b
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1487
	.byte	0xd
	.byte	0xfa
	.byte	0xd
	.long	0x2e80
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1470
	.byte	0xd
	.byte	0xff
	.byte	0xf
	.long	0x2da8
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1471
	.byte	0xd
	.value	0x100
	.byte	0xf
	.long	0x2da8
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.long	0x2dad
	.uleb128 0x6
	.long	0x2dff
	.uleb128 0xe
	.long	.LASF1488
	.byte	0xd
	.value	0x102
	.byte	0x3
	.long	0x2e0b
	.uleb128 0x18
	.byte	0x2
	.byte	0xd
	.value	0x11d
	.long	0x2eb8
	.uleb128 0x4
	.long	.LASF1489
	.byte	0xd
	.value	0x11f
	.byte	0xb
	.long	0x1f2
	.byte	0
	.uleb128 0x4
	.long	.LASF1490
	.byte	0xd
	.value	0x120
	.byte	0xb
	.long	0x1f2
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.long	.LASF1491
	.byte	0xd
	.value	0x121
	.byte	0x3
	.long	0x2e92
	.uleb128 0xe
	.long	.LASF1492
	.byte	0xd
	.value	0x124
	.byte	0x10
	.long	0x2eb8
	.uleb128 0xe
	.long	.LASF1493
	.byte	0xd
	.value	0x13a
	.byte	0xe
	.long	0x1f2
	.uleb128 0x25
	.long	.LASF1494
	.byte	0x40
	.value	0x142
	.long	0x2f90
	.uleb128 0x4
	.long	.LASF1495
	.byte	0xd
	.value	0x144
	.byte	0xd
	.long	0x2f90
	.byte	0
	.uleb128 0x15
	.string	"x1"
	.value	0x145
	.byte	0xb
	.long	0x9c
	.byte	0x8
	.uleb128 0x15
	.string	"x2"
	.value	0x146
	.byte	0xb
	.long	0x9c
	.byte	0xc
	.uleb128 0x4
	.long	.LASF1496
	.byte	0xd
	.value	0x148
	.byte	0xe
	.long	0x2c9
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1497
	.byte	0xd
	.value	0x149
	.byte	0xe
	.long	0x2c9
	.byte	0x14
	.uleb128 0x4
	.long	.LASF1498
	.byte	0xd
	.value	0x14a
	.byte	0xe
	.long	0x2c9
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1499
	.byte	0xd
	.value	0x14d
	.byte	0xb
	.long	0x9c
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF1500
	.byte	0xd
	.value	0x150
	.byte	0xe
	.long	0x2c9
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1501
	.byte	0xd
	.value	0x153
	.byte	0xe
	.long	0x2c9
	.byte	0x24
	.uleb128 0x4
	.long	.LASF1502
	.byte	0xd
	.value	0x157
	.byte	0xd
	.long	0x2f95
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1503
	.byte	0xd
	.value	0x158
	.byte	0xd
	.long	0x2f95
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1504
	.byte	0xd
	.value	0x159
	.byte	0xd
	.long	0x2f95
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.long	0x2e85
	.uleb128 0x6
	.long	0x95
	.uleb128 0xe
	.long	.LASF1505
	.byte	0xd
	.value	0x15b
	.byte	0x3
	.long	0x2edf
	.uleb128 0x18
	.byte	0x28
	.byte	0xd
	.value	0x164
	.long	0x2ff7
	.uleb128 0x4
	.long	.LASF1506
	.byte	0xd
	.value	0x166
	.byte	0xc
	.long	0x95
	.byte	0
	.uleb128 0x4
	.long	.LASF1353
	.byte	0xd
	.value	0x167
	.byte	0xc
	.long	0x95
	.byte	0x2
	.uleb128 0x4
	.long	.LASF1507
	.byte	0xd
	.value	0x168
	.byte	0xc
	.long	0x95
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1508
	.byte	0xd
	.value	0x169
	.byte	0xc
	.long	0x95
	.byte	0x6
	.uleb128 0x4
	.long	.LASF1509
	.byte	0xd
	.value	0x16a
	.byte	0xb
	.long	0x2ff7
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x9c
	.long	0x3007
	.uleb128 0xd
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.long	.LASF1510
	.byte	0xd
	.value	0x16c
	.byte	0x3
	.long	0x2fa7
	.uleb128 0x25
	.long	.LASF1511
	.byte	0x50
	.value	0x177
	.long	0x30e8
	.uleb128 0x4
	.long	.LASF72
	.byte	0xd
	.value	0x17a
	.byte	0x19
	.long	0x30e8
	.byte	0
	.uleb128 0x4
	.long	.LASF73
	.byte	0xd
	.value	0x17b
	.byte	0x19
	.long	0x30e8
	.byte	0x8
	.uleb128 0x15
	.string	"x1"
	.value	0x17d
	.byte	0xb
	.long	0x9c
	.byte	0x10
	.uleb128 0x15
	.string	"x2"
	.value	0x17e
	.byte	0xb
	.long	0x9c
	.byte	0x14
	.uleb128 0x15
	.string	"gx"
	.value	0x181
	.byte	0xe
	.long	0x2c9
	.byte	0x18
	.uleb128 0x15
	.string	"gy"
	.value	0x182
	.byte	0xe
	.long	0x2c9
	.byte	0x1c
	.uleb128 0x15
	.string	"gz"
	.value	0x185
	.byte	0xe
	.long	0x2c9
	.byte	0x20
	.uleb128 0x15
	.string	"gzt"
	.value	0x186
	.byte	0xe
	.long	0x2c9
	.byte	0x24
	.uleb128 0x4
	.long	.LASF1512
	.byte	0xd
	.value	0x189
	.byte	0xe
	.long	0x2c9
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1513
	.byte	0xd
	.value	0x18b
	.byte	0xe
	.long	0x2c9
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1514
	.byte	0xd
	.value	0x18e
	.byte	0xe
	.long	0x2c9
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1515
	.byte	0xd
	.value	0x190
	.byte	0xe
	.long	0x2c9
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1516
	.byte	0xd
	.value	0x191
	.byte	0xb
	.long	0x9c
	.byte	0x38
	.uleb128 0x4
	.long	.LASF1446
	.byte	0xd
	.value	0x195
	.byte	0x13
	.long	0x30ed
	.byte	0x40
	.uleb128 0x4
	.long	.LASF1517
	.byte	0xd
	.value	0x197
	.byte	0xb
	.long	0x9c
	.byte	0x48
	.byte	0
	.uleb128 0x6
	.long	0x3014
	.uleb128 0x6
	.long	0x2ed2
	.uleb128 0xe
	.long	.LASF1518
	.byte	0xd
	.value	0x199
	.byte	0x3
	.long	0x3014
	.uleb128 0x18
	.byte	0x1c
	.byte	0xd
	.value	0x1ab
	.long	0x3133
	.uleb128 0x4
	.long	.LASF1519
	.byte	0xd
	.value	0x1b0
	.byte	0xd
	.long	0x1e6
	.byte	0
	.uleb128 0x4
	.long	.LASF1520
	.byte	0xd
	.value	0x1b3
	.byte	0xb
	.long	0x3133
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1521
	.byte	0xd
	.value	0x1b6
	.byte	0xa
	.long	0x3143
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.long	0x95
	.long	0x3143
	.uleb128 0xd
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.long	0x1f2
	.long	0x3153
	.uleb128 0xd
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.long	.LASF1522
	.byte	0xd
	.value	0x1b8
	.byte	0x3
	.long	0x30ff
	.uleb128 0x18
	.byte	0x10
	.byte	0xd
	.value	0x1c0
	.long	0x3186
	.uleb128 0x4
	.long	.LASF1523
	.byte	0xd
	.value	0x1c2
	.byte	0xb
	.long	0x9c
	.byte	0
	.uleb128 0x4
	.long	.LASF1524
	.byte	0xd
	.value	0x1c3
	.byte	0x14
	.long	0x3186
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	0x3153
	.uleb128 0xe
	.long	.LASF1525
	.byte	0xd
	.value	0x1c5
	.byte	0x3
	.long	0x3160
	.uleb128 0x10
	.long	0x77
	.byte	0xf
	.byte	0x3d
	.byte	0x1
	.long	0x31b7
	.uleb128 0x2
	.long	.LASF1526
	.byte	0
	.uleb128 0x2
	.long	.LASF1527
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1528
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.byte	0x18
	.byte	0xf
	.byte	0x44
	.long	0x31f2
	.uleb128 0x3
	.long	.LASF1403
	.byte	0xf
	.byte	0x46
	.byte	0xe
	.long	0x2934
	.byte	0
	.uleb128 0x3
	.long	.LASF1191
	.byte	0xf
	.byte	0x47
	.byte	0xa
	.long	0x9c
	.byte	0x8
	.uleb128 0xb
	.string	"sx"
	.byte	0xf
	.byte	0x48
	.byte	0xd
	.long	0x2c9
	.byte	0xc
	.uleb128 0xb
	.string	"sy"
	.byte	0xf
	.byte	0x49
	.byte	0xd
	.long	0x2c9
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.long	.LASF1529
	.byte	0xf
	.byte	0x4b
	.byte	0x3
	.long	0x31b7
	.uleb128 0x10
	.long	0x77
	.byte	0xe
	.byte	0x36
	.byte	0x1
	.long	0x321d
	.uleb128 0x2
	.long	.LASF1530
	.byte	0
	.uleb128 0x2
	.long	.LASF1531
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1532
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	.LASF1533
	.byte	0xe
	.byte	0x3e
	.byte	0x3
	.long	0x31fe
	.uleb128 0xc
	.long	0x9c
	.long	0x3239
	.uleb128 0xd
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.long	0x1e6
	.long	0x3249
	.uleb128 0xd
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.long	0x1e6
	.long	0x3259
	.uleb128 0xd
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x31f2
	.long	0x3269
	.uleb128 0xd
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.long	.LASF1534
	.byte	0xe
	.byte	0xa6
	.byte	0x3
	.long	0x2939
	.uleb128 0x5
	.long	.LASF1536
	.byte	0x10
	.byte	0x2f
	.byte	0x12
	.long	0x2d5
	.uleb128 0x5
	.long	.LASF1537
	.byte	0x10
	.byte	0x31
	.byte	0x12
	.long	0x2d5
	.uleb128 0x5
	.long	.LASF1538
	.byte	0x10
	.byte	0x32
	.byte	0x12
	.long	0x2d5
	.uleb128 0x5
	.long	.LASF1539
	.byte	0x10
	.byte	0x34
	.byte	0x16
	.long	0x30ed
	.uleb128 0x5
	.long	.LASF1540
	.byte	0x10
	.byte	0x36
	.byte	0xd
	.long	0x9c
	.uleb128 0x5
	.long	.LASF1420
	.byte	0x10
	.byte	0x38
	.byte	0xd
	.long	0x9c
	.uleb128 0x5
	.long	.LASF1541
	.byte	0x10
	.byte	0x42
	.byte	0xd
	.long	0x9c
	.uleb128 0x5
	.long	.LASF1542
	.byte	0x10
	.byte	0x43
	.byte	0xd
	.long	0x9c
	.uleb128 0x5
	.long	.LASF1543
	.byte	0x10
	.byte	0x4b
	.byte	0xd
	.long	0x9c
	.uleb128 0x5
	.long	.LASF1544
	.byte	0x10
	.byte	0x4c
	.byte	0x15
	.long	0x32ed
	.uleb128 0x6
	.long	0x318b
	.uleb128 0x5
	.long	.LASF1545
	.byte	0x10
	.byte	0x67
	.byte	0x11
	.long	0x2c9
	.uleb128 0x5
	.long	.LASF1546
	.byte	0x10
	.byte	0x68
	.byte	0x11
	.long	0x2c9
	.uleb128 0x5
	.long	.LASF1419
	.byte	0x10
	.byte	0x69
	.byte	0x11
	.long	0x2c9
	.uleb128 0x5
	.long	.LASF1547
	.byte	0x10
	.byte	0x6c
	.byte	0x12
	.long	0x3322
	.uleb128 0x6
	.long	0x3269
	.uleb128 0x5
	.long	.LASF1548
	.byte	0x11
	.byte	0x26
	.byte	0x11
	.long	0x2c9
	.uleb128 0x5
	.long	.LASF1549
	.byte	0x11
	.byte	0x27
	.byte	0x11
	.long	0x2c9
	.uleb128 0x5
	.long	.LASF1550
	.byte	0x11
	.byte	0x33
	.byte	0x11
	.long	0x2c9
	.uleb128 0x5
	.long	.LASF1551
	.byte	0x11
	.byte	0x34
	.byte	0x11
	.long	0x2c9
	.uleb128 0x5
	.long	.LASF1552
	.byte	0x11
	.byte	0x35
	.byte	0x11
	.long	0x2c9
	.uleb128 0x5
	.long	.LASF1401
	.byte	0x11
	.byte	0x37
	.byte	0xd
	.long	0x9c
	.uleb128 0xc
	.long	0x30ed
	.long	0x3385
	.uleb128 0xd
	.long	0x43
	.byte	0xf
	.uleb128 0xd
	.long	0x43
	.byte	0x2f
	.byte	0
	.uleb128 0x5
	.long	.LASF1553
	.byte	0x11
	.byte	0x4d
	.byte	0x16
	.long	0x336f
	.uleb128 0x5
	.long	.LASF1444
	.byte	0x11
	.byte	0x51
	.byte	0xd
	.long	0x9c
	.uleb128 0x5
	.long	.LASF1445
	.byte	0x11
	.byte	0x52
	.byte	0x16
	.long	0x30ed
	.uleb128 0x5
	.long	.LASF1554
	.byte	0x11
	.byte	0x5d
	.byte	0xd
	.long	0x9c
	.uleb128 0x31
	.uleb128 0x5
	.long	.LASF1555
	.byte	0x11
	.byte	0x64
	.byte	0x10
	.long	0x33c2
	.uleb128 0x6
	.long	0x33b5
	.uleb128 0x5
	.long	.LASF1556
	.byte	0x11
	.byte	0x65
	.byte	0x10
	.long	0x33c2
	.uleb128 0x5
	.long	.LASF1557
	.byte	0x11
	.byte	0x66
	.byte	0x10
	.long	0x33c2
	.uleb128 0xc
	.long	0x2f9a
	.long	0x33ef
	.uleb128 0xd
	.long	0x43
	.byte	0xff
	.byte	0
	.uleb128 0x5
	.long	.LASF1558
	.byte	0x12
	.byte	0x30
	.byte	0x12
	.long	0x33df
	.uleb128 0x5
	.long	.LASF1559
	.byte	0x12
	.byte	0x31
	.byte	0x13
	.long	0x3407
	.uleb128 0x6
	.long	0x2f9a
	.uleb128 0x6
	.long	0x30ed
	.uleb128 0xc
	.long	0x95
	.long	0x3422
	.uleb128 0x32
	.long	0x43
	.value	0x13f
	.byte	0
	.uleb128 0xc
	.long	0x30f2
	.long	0x3432
	.uleb128 0xd
	.long	0x43
	.byte	0x7f
	.byte	0
	.uleb128 0x5
	.long	.LASF1560
	.byte	0x13
	.byte	0x21
	.byte	0x14
	.long	0x3422
	.uleb128 0x5
	.long	.LASF1561
	.byte	0x13
	.byte	0x22
	.byte	0x15
	.long	0x344a
	.uleb128 0x6
	.long	0x30f2
	.uleb128 0x5
	.long	.LASF1562
	.byte	0x13
	.byte	0x23
	.byte	0x14
	.long	0x30f2
	.uleb128 0x5
	.long	.LASF1563
	.byte	0x13
	.byte	0x27
	.byte	0xf
	.long	0x3411
	.uleb128 0x5
	.long	.LASF1564
	.byte	0x13
	.byte	0x28
	.byte	0xf
	.long	0x3411
	.uleb128 0x5
	.long	.LASF1565
	.byte	0x13
	.byte	0x2b
	.byte	0x10
	.long	0x2f95
	.uleb128 0x5
	.long	.LASF1566
	.byte	0x13
	.byte	0x2c
	.byte	0x10
	.long	0x2f95
	.uleb128 0x5
	.long	.LASF1567
	.byte	0x13
	.byte	0x2d
	.byte	0x11
	.long	0x2c9
	.uleb128 0x5
	.long	.LASF1568
	.byte	0x13
	.byte	0x2e
	.byte	0x11
	.long	0x2c9
	.uleb128 0x5
	.long	.LASF1569
	.byte	0x13
	.byte	0x30
	.byte	0x11
	.long	0x2c9
	.uleb128 0x5
	.long	.LASF1570
	.byte	0x13
	.byte	0x31
	.byte	0x11
	.long	0x2c9
	.uleb128 0x5
	.long	.LASF1571
	.byte	0x14
	.byte	0x20
	.byte	0x16
	.long	0x30ed
	.uleb128 0x5
	.long	.LASF1572
	.byte	0x14
	.byte	0x21
	.byte	0xd
	.long	0x9c
	.uleb128 0x5
	.long	.LASF1573
	.byte	0x14
	.byte	0x22
	.byte	0xd
	.long	0x9c
	.uleb128 0x5
	.long	.LASF1574
	.byte	0x14
	.byte	0x23
	.byte	0xd
	.long	0x9c
	.uleb128 0x5
	.long	.LASF1575
	.byte	0x14
	.byte	0x24
	.byte	0x11
	.long	0x2c9
	.uleb128 0x5
	.long	.LASF1576
	.byte	0x14
	.byte	0x25
	.byte	0x11
	.long	0x2c9
	.uleb128 0x5
	.long	.LASF1577
	.byte	0x14
	.byte	0x28
	.byte	0xf
	.long	0x350f
	.uleb128 0x6
	.long	0x1f2
	.uleb128 0x5
	.long	.LASF1578
	.byte	0x14
	.byte	0x4e
	.byte	0xf
	.long	0x350f
	.uleb128 0x5
	.long	.LASF1579
	.byte	0x14
	.byte	0x4f
	.byte	0xf
	.long	0x350f
	.uleb128 0x5
	.long	.LASF1580
	.byte	0x15
	.byte	0x40
	.byte	0x11
	.long	0x1e6
	.uleb128 0x5
	.long	.LASF1581
	.byte	0x15
	.byte	0x9b
	.byte	0xd
	.long	0x9c
	.uleb128 0x19
	.long	0x34a3
	.byte	0x4a
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	pspritescale
	.uleb128 0x19
	.long	0x34af
	.byte	0x4b
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	pspriteiscale
	.uleb128 0x1d
	.long	.LASF1582
	.byte	0x4d
	.byte	0x10
	.long	0x340c
	.uleb128 0x9
	.byte	0x3
	.quad	spritelights
	.uleb128 0x19
	.long	0x345b
	.byte	0x51
	.byte	0x8
	.uleb128 0x9
	.byte	0x3
	.quad	negonearray
	.uleb128 0x19
	.long	0x3467
	.byte	0x52
	.byte	0x8
	.uleb128 0x9
	.byte	0x3
	.quad	screenheightarray
	.uleb128 0x19
	.long	0x32e1
	.byte	0x5b
	.byte	0xe
	.uleb128 0x9
	.byte	0x3
	.quad	sprites
	.uleb128 0x19
	.long	0x32d5
	.byte	0x5c
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	numsprites
	.uleb128 0xc
	.long	0x3153
	.long	0x35cf
	.uleb128 0xd
	.long	0x43
	.byte	0x1c
	.byte	0
	.uleb128 0x1d
	.long	.LASF1583
	.byte	0x5e
	.byte	0xf
	.long	0x35bf
	.uleb128 0x9
	.byte	0x3
	.quad	sprtemp
	.uleb128 0x1d
	.long	.LASF1584
	.byte	0x5f
	.byte	0x6
	.long	0x9c
	.uleb128 0x9
	.byte	0x3
	.quad	maxframe
	.uleb128 0x1d
	.long	.LASF1585
	.byte	0x60
	.byte	0x8
	.long	0xaa
	.uleb128 0x9
	.byte	0x3
	.quad	spritename
	.uleb128 0x17
	.long	0x3432
	.value	0x121
	.byte	0xd
	.uleb128 0x9
	.byte	0x3
	.quad	vissprites
	.uleb128 0x17
	.long	0x343e
	.value	0x122
	.byte	0xe
	.uleb128 0x9
	.byte	0x3
	.quad	vissprite_p
	.uleb128 0x26
	.long	.LASF1586
	.value	0x123
	.byte	0x6
	.long	0x9c
	.uleb128 0x9
	.byte	0x3
	.quad	newvissprite
	.uleb128 0x26
	.long	.LASF1587
	.value	0x146
	.byte	0xd
	.long	0x30f2
	.uleb128 0x9
	.byte	0x3
	.quad	overflowsprite
	.uleb128 0x17
	.long	0x3473
	.value	0x159
	.byte	0x9
	.uleb128 0x9
	.byte	0x3
	.quad	mfloorclip
	.uleb128 0x17
	.long	0x347f
	.value	0x15a
	.byte	0x9
	.uleb128 0x9
	.byte	0x3
	.quad	mceilingclip
	.uleb128 0x17
	.long	0x348b
	.value	0x15c
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	spryscale
	.uleb128 0x17
	.long	0x3497
	.value	0x15d
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	sprtopscreen
	.uleb128 0x17
	.long	0x344f
	.value	0x310
	.byte	0xd
	.uleb128 0x9
	.byte	0x3
	.quad	vsprsortedhead
	.uleb128 0x27
	.long	.LASF1597
	.byte	0x18
	.byte	0x21
	.byte	0x1
	.long	0x36d4
	.uleb128 0x8
	.long	0x3407
	.uleb128 0x8
	.long	0x9c
	.uleb128 0x8
	.long	0x9c
	.byte	0
	.uleb128 0x14
	.long	.LASF1588
	.byte	0x11
	.byte	0x74
	.byte	0x1
	.long	0x9c
	.long	0x36f4
	.uleb128 0x8
	.long	0x2c9
	.uleb128 0x8
	.long	0x2c9
	.uleb128 0x8
	.long	0x2f90
	.byte	0
	.uleb128 0x14
	.long	.LASF1589
	.byte	0x11
	.byte	0x7a
	.byte	0x1
	.long	0x2da
	.long	0x370f
	.uleb128 0x8
	.long	0x2c9
	.uleb128 0x8
	.long	0x2c9
	.byte	0
	.uleb128 0x14
	.long	.LASF1590
	.byte	0x7
	.byte	0x29
	.byte	0x9
	.long	0x2c9
	.long	0x372a
	.uleb128 0x8
	.long	0x2c9
	.uleb128 0x8
	.long	0x2c9
	.byte	0
	.uleb128 0x14
	.long	.LASF1591
	.byte	0x7
	.byte	0x28
	.byte	0x9
	.long	0x2c9
	.long	0x3745
	.uleb128 0x8
	.long	0x2c9
	.uleb128 0x8
	.long	0x2c9
	.byte	0
	.uleb128 0x33
	.long	.LASF1642
	.byte	0x14
	.byte	0x38
	.byte	0x6
	.uleb128 0x14
	.long	.LASF1592
	.byte	0x6
	.byte	0x4e
	.byte	0x7
	.long	0x7e
	.long	0x3768
	.uleb128 0x8
	.long	0x9c
	.uleb128 0x8
	.long	0x9c
	.byte	0
	.uleb128 0x14
	.long	.LASF1593
	.byte	0x16
	.byte	0x2b
	.byte	0xe
	.long	0x7e
	.long	0x3788
	.uleb128 0x8
	.long	0x7e
	.uleb128 0x8
	.long	0xcd
	.uleb128 0x8
	.long	0x6b
	.byte	0
	.uleb128 0x14
	.long	.LASF1594
	.byte	0x6
	.byte	0x49
	.byte	0x5
	.long	0x9c
	.long	0x379e
	.uleb128 0x8
	.long	0xaa
	.byte	0
	.uleb128 0x14
	.long	.LASF1595
	.byte	0x16
	.byte	0x3d
	.byte	0xe
	.long	0x7e
	.long	0x37be
	.uleb128 0x8
	.long	0x7e
	.uleb128 0x8
	.long	0x9c
	.uleb128 0x8
	.long	0x6b
	.byte	0
	.uleb128 0x14
	.long	.LASF1596
	.byte	0x17
	.byte	0x30
	.byte	0x7
	.long	0x7e
	.long	0x37de
	.uleb128 0x8
	.long	0x9c
	.uleb128 0x8
	.long	0x9c
	.uleb128 0x8
	.long	0x7e
	.byte	0
	.uleb128 0x27
	.long	.LASF1598
	.byte	0x19
	.byte	0x59
	.byte	0x6
	.long	0x37f1
	.uleb128 0x8
	.long	0xaa
	.uleb128 0x22
	.byte	0
	.uleb128 0x12
	.long	.LASF1600
	.value	0x3be
	.byte	0x6
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x382d
	.uleb128 0xa
	.string	"spr"
	.value	0x3c0
	.byte	0x12
	.long	0x344a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.string	"ds"
	.value	0x3c1
	.byte	0x11
	.long	0x3407
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF1601
	.value	0x34a
	.byte	0x6
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x38e7
	.uleb128 0x1a
	.string	"spr"
	.value	0x34a
	.byte	0x21
	.long	0x344a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1352
	.uleb128 0xa
	.string	"ds"
	.value	0x34c
	.byte	0x11
	.long	0x3407
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1320
	.uleb128 0x7
	.long	.LASF1602
	.value	0x34d
	.byte	0xc
	.long	0x3411
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1312
	.uleb128 0x7
	.long	.LASF1603
	.value	0x34e
	.byte	0xc
	.long	0x3411
	.uleb128 0x3
	.byte	0x91
	.sleb128 -672
	.uleb128 0xa
	.string	"x"
	.value	0x34f
	.byte	0xb
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1344
	.uleb128 0xa
	.string	"r1"
	.value	0x350
	.byte	0xb
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1328
	.uleb128 0xa
	.string	"r2"
	.value	0x351
	.byte	0xb
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1324
	.uleb128 0x7
	.long	.LASF1513
	.value	0x352
	.byte	0xe
	.long	0x2c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1340
	.uleb128 0x7
	.long	.LASF1604
	.value	0x353
	.byte	0xe
	.long	0x2c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1336
	.uleb128 0x7
	.long	.LASF1499
	.value	0x354
	.byte	0xb
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1332
	.byte	0
	.uleb128 0x12
	.long	.LASF1605
	.value	0x313
	.byte	0x6
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x3963
	.uleb128 0xa
	.string	"i"
	.value	0x315
	.byte	0xb
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x7
	.long	.LASF1606
	.value	0x316
	.byte	0xb
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0xa
	.string	"ds"
	.value	0x317
	.byte	0x12
	.long	0x344a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x7
	.long	.LASF1607
	.value	0x318
	.byte	0x12
	.long	0x344a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x7
	.long	.LASF1608
	.value	0x319
	.byte	0x12
	.long	0x30f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x7
	.long	.LASF1609
	.value	0x31a
	.byte	0xe
	.long	0x2c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0x12
	.long	.LASF1610
	.value	0x2ea
	.byte	0x6
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x39ad
	.uleb128 0xa
	.string	"i"
	.value	0x2ec
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.long	.LASF1611
	.value	0x2ed
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.string	"psp"
	.value	0x2ee
	.byte	0xf
	.long	0x39ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	0x31f2
	.uleb128 0x12
	.long	.LASF1612
	.value	0x286
	.byte	0x6
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a6e
	.uleb128 0x1a
	.string	"psp"
	.value	0x286
	.byte	0x1f
	.long	0x39ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0xa
	.string	"tx"
	.value	0x288
	.byte	0xe
	.long	0x2c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0xa
	.string	"x1"
	.value	0x289
	.byte	0xb
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0xa
	.string	"x2"
	.value	0x28a
	.byte	0xb
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x7
	.long	.LASF1613
	.value	0x28b
	.byte	0x12
	.long	0x32ed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x7
	.long	.LASF1614
	.value	0x28c
	.byte	0x14
	.long	0x3186
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x7
	.long	.LASF1520
	.value	0x28d
	.byte	0xb
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x7
	.long	.LASF1521
	.value	0x28e
	.byte	0xe
	.long	0x1e6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0xa
	.string	"vis"
	.value	0x28f
	.byte	0x12
	.long	0x344a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x7
	.long	.LASF1615
	.value	0x290
	.byte	0x12
	.long	0x30f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x12
	.long	.LASF1616
	.value	0x265
	.byte	0x6
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x3aba
	.uleb128 0x1a
	.string	"sec"
	.value	0x265
	.byte	0x1e
	.long	0x2da8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.long	.LASF1617
	.value	0x267
	.byte	0xe
	.long	0x2c67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.long	.LASF1611
	.value	0x268
	.byte	0xb
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x12
	.long	.LASF1618
	.value	0x1c4
	.byte	0x6
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x3bfc
	.uleb128 0x20
	.long	.LASF1617
	.value	0x1c4
	.byte	0x1f
	.long	0x2c67
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x7
	.long	.LASF1619
	.value	0x1c6
	.byte	0xe
	.long	0x2c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x7
	.long	.LASF1620
	.value	0x1c7
	.byte	0xe
	.long	0x2c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xa
	.string	"gxt"
	.value	0x1c9
	.byte	0xe
	.long	0x2c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xa
	.string	"gyt"
	.value	0x1ca
	.byte	0xe
	.long	0x2c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xa
	.string	"tx"
	.value	0x1cc
	.byte	0xe
	.long	0x2c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.string	"tz"
	.value	0x1cd
	.byte	0xe
	.long	0x2c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x7
	.long	.LASF1621
	.value	0x1cf
	.byte	0xe
	.long	0x2c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xa
	.string	"x1"
	.value	0x1d1
	.byte	0xb
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xa
	.string	"x2"
	.value	0x1d2
	.byte	0xb
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.long	.LASF1613
	.value	0x1d4
	.byte	0x12
	.long	0x32ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.long	.LASF1614
	.value	0x1d5
	.byte	0x14
	.long	0x3186
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.long	.LASF1520
	.value	0x1d6
	.byte	0xb
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0xa
	.string	"rot"
	.value	0x1d8
	.byte	0xf
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.long	.LASF1521
	.value	0x1d9
	.byte	0xe
	.long	0x1e6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x7
	.long	.LASF1622
	.value	0x1db
	.byte	0xb
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0xa
	.string	"vis"
	.value	0x1dd
	.byte	0x12
	.long	0x344a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"ang"
	.value	0x1df
	.byte	0xe
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.long	.LASF1623
	.value	0x1e0
	.byte	0xe
	.long	0x2c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x12
	.long	.LASF1624
	.value	0x18d
	.byte	0x1
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c85
	.uleb128 0x1a
	.string	"vis"
	.value	0x18e
	.byte	0x11
	.long	0x344a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.string	"x1"
	.value	0x18f
	.byte	0x9
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1a
	.string	"x2"
	.value	0x190
	.byte	0x9
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x7
	.long	.LASF1625
	.value	0x192
	.byte	0x10
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.long	.LASF1626
	.value	0x193
	.byte	0xb
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.long	.LASF1627
	.value	0x194
	.byte	0xe
	.long	0x2c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.long	.LASF1516
	.value	0x195
	.byte	0xf
	.long	0x3c8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x6
	.long	0x2ec5
	.uleb128 0x6
	.long	0x3007
	.uleb128 0x12
	.long	.LASF1628
	.value	0x15f
	.byte	0x6
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x3cea
	.uleb128 0x20
	.long	.LASF1625
	.value	0x15f
	.byte	0x24
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.long	.LASF1629
	.value	0x161
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.long	.LASF1630
	.value	0x162
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.long	.LASF1631
	.value	0x163
	.byte	0xd
	.long	0x2c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x34
	.long	.LASF1643
	.byte	0x1
	.value	0x148
	.byte	0xe
	.long	0x344a
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x35
	.long	.LASF1644
	.byte	0x1
	.value	0x13d
	.byte	0x6
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x12
	.long	.LASF1632
	.value	0x12b
	.byte	0x6
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d5f
	.uleb128 0x20
	.long	.LASF1633
	.value	0x12b
	.byte	0x1c
	.long	0x3d5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"i"
	.value	0x12d
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.long	0xaa
	.uleb128 0x36
	.long	.LASF1634
	.byte	0x1
	.byte	0xb1
	.byte	0x6
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e0b
	.uleb128 0x1b
	.long	.LASF1633
	.byte	0xb1
	.byte	0x1f
	.long	0x3d5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x16
	.long	.LASF1635
	.byte	0xb3
	.byte	0xc
	.long	0x3d5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.string	"i"
	.byte	0xb4
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.string	"l"
	.byte	0xb5
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x16
	.long	.LASF1636
	.byte	0xb6
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.long	.LASF1190
	.byte	0xb7
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.long	.LASF1637
	.byte	0xb8
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x16
	.long	.LASF1638
	.byte	0xb9
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1e
	.string	"end"
	.byte	0xba
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.long	.LASF1639
	.byte	0xbb
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x37
	.long	.LASF1645
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.long	.LASF1520
	.byte	0x6b
	.byte	0x8
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.long	.LASF1190
	.byte	0x6c
	.byte	0xc
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF1637
	.byte	0x6d
	.byte	0xc
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.long	.LASF1640
	.byte	0x6e
	.byte	0xb
	.long	0x1e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.string	"r"
	.byte	0x70
	.long	0x9c
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
.LASF1540:
	.string	"viewwidth"
.LASF857:
	.string	"S_BSPI_RUN3"
.LASF858:
	.string	"S_BSPI_RUN4"
.LASF859:
	.string	"S_BSPI_RUN5"
.LASF860:
	.string	"S_BSPI_RUN6"
.LASF861:
	.string	"S_BSPI_RUN7"
.LASF862:
	.string	"S_BSPI_RUN8"
.LASF863:
	.string	"S_BSPI_RUN9"
.LASF147:
	.string	"SPR_YSKU"
.LASF1443:
	.string	"attacker"
.LASF510:
	.string	"S_FIRE10"
.LASF511:
	.string	"S_FIRE11"
.LASF512:
	.string	"S_FIRE12"
.LASF513:
	.string	"S_FIRE13"
.LASF514:
	.string	"S_FIRE14"
.LASF515:
	.string	"S_FIRE15"
.LASF516:
	.string	"S_FIRE16"
.LASF517:
	.string	"S_FIRE17"
.LASF518:
	.string	"S_FIRE18"
.LASF519:
	.string	"S_FIRE19"
.LASF1331:
	.string	"MT_MISC84"
.LASF1264:
	.string	"MT_MISC20"
.LASF1078:
	.string	"S_MEGA2"
.LASF1079:
	.string	"S_MEGA3"
.LASF1080:
	.string	"S_MEGA4"
.LASF1268:
	.string	"MT_MISC24"
.LASF1269:
	.string	"MT_MISC25"
.LASF1271:
	.string	"MT_MISC26"
.LASF1272:
	.string	"MT_MISC27"
.LASF1273:
	.string	"MT_MISC28"
.LASF1276:
	.string	"MT_MISC29"
.LASF709:
	.string	"S_SARG_PAIN2"
.LASF1408:
	.string	"threshold"
.LASF20:
	.string	"wp_pistol"
.LASF1382:
	.string	"MF_COUNTKILL"
.LASF188:
	.string	"SPR_COL1"
.LASF189:
	.string	"SPR_COL2"
.LASF190:
	.string	"SPR_COL3"
.LASF191:
	.string	"SPR_COL4"
.LASF200:
	.string	"SPR_COL5"
.LASF194:
	.string	"SPR_COL6"
.LASF57:
	.string	"handle"
.LASF1381:
	.string	"MF_INFLOAT"
.LASF1581:
	.string	"viewangleoffset"
.LASF520:
	.string	"S_FIRE20"
.LASF521:
	.string	"S_FIRE21"
.LASF522:
	.string	"S_FIRE22"
.LASF523:
	.string	"S_FIRE23"
.LASF524:
	.string	"S_FIRE24"
.LASF174:
	.string	"SPR_COLU"
.LASF526:
	.string	"S_FIRE26"
.LASF527:
	.string	"S_FIRE27"
.LASF528:
	.string	"S_FIRE28"
.LASF529:
	.string	"S_FIRE29"
.LASF1277:
	.string	"MT_MISC30"
.LASF1192:
	.string	"action"
.LASF1279:
	.string	"MT_MISC32"
.LASF1280:
	.string	"MT_MISC33"
.LASF871:
	.string	"S_BSPI_PAIN"
.LASF1282:
	.string	"MT_MISC35"
.LASF343:
	.string	"S_BFGEXP"
.LASF35:
	.string	"am_misl"
.LASF1285:
	.string	"MT_MISC38"
.LASF1286:
	.string	"MT_MISC39"
.LASF1454:
	.string	"floorpic"
.LASF873:
	.string	"S_BSPI_DIE1"
.LASF1528:
	.string	"NUMPSPRITES"
.LASF1591:
	.string	"FixedMul"
.LASF878:
	.string	"S_BSPI_DIE6"
.LASF1504:
	.string	"maskedtexturecol"
.LASF1481:
	.string	"ST_POSITIVE"
.LASF1419:
	.string	"viewz"
.LASF1495:
	.string	"curline"
.LASF1475:
	.string	"toptexture"
.LASF769:
	.string	"S_BOSS_RAISE1"
.LASF770:
	.string	"S_BOSS_RAISE2"
.LASF1211:
	.string	"MT_HEAD"
.LASF771:
	.string	"S_BOSS_RAISE3"
.LASF530:
	.string	"S_FIRE30"
.LASF675:
	.string	"S_TROO_PAIN"
.LASF964:
	.string	"S_SSWV_DIE1"
.LASF774:
	.string	"S_BOSS_RAISE6"
.LASF966:
	.string	"S_SSWV_DIE3"
.LASF967:
	.string	"S_SSWV_DIE4"
.LASF968:
	.string	"S_SSWV_DIE5"
.LASF142:
	.string	"SPR_BKEY"
.LASF1541:
	.string	"firstspritelump"
.LASF786:
	.string	"S_BOS2_ATK1"
.LASF787:
	.string	"S_BOS2_ATK2"
.LASF788:
	.string	"S_BOS2_ATK3"
.LASF176:
	.string	"SPR_GOR1"
.LASF183:
	.string	"SPR_GOR2"
.LASF184:
	.string	"SPR_GOR3"
.LASF185:
	.string	"SPR_GOR4"
.LASF186:
	.string	"SPR_GOR5"
.LASF1289:
	.string	"MT_MISC42"
.LASF1290:
	.string	"MT_MISC43"
.LASF543:
	.string	"S_SKEL_RUN1"
.LASF544:
	.string	"S_SKEL_RUN2"
.LASF545:
	.string	"S_SKEL_RUN3"
.LASF546:
	.string	"S_SKEL_RUN4"
.LASF547:
	.string	"S_SKEL_RUN5"
.LASF548:
	.string	"S_SKEL_RUN6"
.LASF549:
	.string	"S_SKEL_RUN7"
.LASF550:
	.string	"S_SKEL_RUN8"
.LASF551:
	.string	"S_SKEL_RUN9"
.LASF23:
	.string	"wp_missile"
.LASF1029:
	.string	"S_BEXP2"
.LASF1339:
	.string	"seestate"
.LASF1544:
	.string	"sprites"
.LASF724:
	.string	"S_HEAD_ATK1"
.LASF725:
	.string	"S_HEAD_ATK2"
.LASF726:
	.string	"S_HEAD_ATK3"
.LASF1469:
	.string	"slopetype"
.LASF978:
	.string	"S_SSWV_RAISE1"
.LASF979:
	.string	"S_SSWV_RAISE2"
.LASF980:
	.string	"S_SSWV_RAISE3"
.LASF981:
	.string	"S_SSWV_RAISE4"
.LASF982:
	.string	"S_SSWV_RAISE5"
.LASF76:
	.string	"angle"
.LASF1206:
	.string	"MT_FATSHOT"
.LASF162:
	.string	"SPR_CELL"
.LASF163:
	.string	"SPR_CELP"
.LASF1144:
	.string	"S_HEARTCOL"
.LASF1464:
	.string	"linecount"
.LASF1569:
	.string	"pspritescale"
.LASF1415:
	.string	"numlines"
.LASF1061:
	.string	"S_MEDI"
.LASF1068:
	.string	"S_PINV"
.LASF1255:
	.string	"MT_INS"
.LASF1298:
	.string	"MT_MISC51"
.LASF1299:
	.string	"MT_MISC52"
.LASF1253:
	.string	"MT_INV"
.LASF1301:
	.string	"MT_MISC54"
.LASF1158:
	.string	"S_BTORCHSHRT"
.LASF279:
	.string	"S_MISSILEUP"
.LASF1304:
	.string	"MT_MISC57"
.LASF1305:
	.string	"MT_MISC58"
.LASF1306:
	.string	"MT_MISC59"
.LASF456:
	.string	"S_SPOS_RAISE1"
.LASF250:
	.string	"S_SGUNFLASH1"
.LASF251:
	.string	"S_SGUNFLASH2"
.LASF798:
	.string	"S_BOS2_RAISE1"
.LASF799:
	.string	"S_BOS2_RAISE2"
.LASF800:
	.string	"S_BOS2_RAISE3"
.LASF801:
	.string	"S_BOS2_RAISE4"
.LASF802:
	.string	"S_BOS2_RAISE5"
.LASF803:
	.string	"S_BOS2_RAISE6"
.LASF804:
	.string	"S_BOS2_RAISE7"
.LASF563:
	.string	"S_SKEL_PAIN"
.LASF1514:
	.string	"xiscale"
.LASF1050:
	.string	"S_RKEY"
.LASF73:
	.string	"next"
.LASF1490:
	.string	"length"
.LASF232:
	.string	"S_PISTOLUP"
.LASF918:
	.string	"S_CYBER_DIE8"
.LASF1474:
	.string	"rowoffset"
.LASF1307:
	.string	"MT_MISC60"
.LASF1308:
	.string	"MT_MISC61"
.LASF1309:
	.string	"MT_MISC62"
.LASF1310:
	.string	"MT_MISC63"
.LASF1311:
	.string	"MT_MISC64"
.LASF1312:
	.string	"MT_MISC65"
.LASF1313:
	.string	"MT_MISC66"
.LASF1314:
	.string	"MT_MISC67"
.LASF347:
	.string	"S_EXPLODE1"
.LASF348:
	.string	"S_EXPLODE2"
.LASF349:
	.string	"S_EXPLODE3"
.LASF538:
	.string	"S_TRACEEXP1"
.LASF539:
	.string	"S_TRACEEXP2"
.LASF540:
	.string	"S_TRACEEXP3"
.LASF926:
	.string	"S_PAIN_RUN5"
.LASF1028:
	.string	"S_BEXP"
.LASF927:
	.string	"S_PAIN_RUN6"
.LASF1444:
	.string	"extralight"
.LASF1533:
	.string	"playerstate_t"
.LASF1145:
	.string	"S_HEARTCOL2"
.LASF324:
	.string	"S_RBALLX1"
.LASF1353:
	.string	"height"
.LASF1238:
	.string	"MT_TELEPORTMAN"
.LASF1627:
	.string	"frac"
.LASF1549:
	.string	"viewsin"
.LASF1317:
	.string	"MT_MISC70"
.LASF107:
	.string	"SPR_IFOG"
.LASF1319:
	.string	"MT_MISC72"
.LASF1320:
	.string	"MT_MISC73"
.LASF1321:
	.string	"MT_MISC74"
.LASF1322:
	.string	"MT_MISC75"
.LASF1323:
	.string	"MT_MISC76"
.LASF1151:
	.string	"S_GREENTORCH2"
.LASF1152:
	.string	"S_GREENTORCH3"
.LASF1153:
	.string	"S_GREENTORCH4"
.LASF992:
	.string	"S_COMMKEEN9"
.LASF641:
	.string	"S_CPOS_PAIN2"
.LASF1563:
	.string	"negonearray"
.LASF864:
	.string	"S_BSPI_RUN10"
.LASF865:
	.string	"S_BSPI_RUN11"
.LASF866:
	.string	"S_BSPI_RUN12"
.LASF948:
	.string	"S_SSWV_RUN1"
.LASF949:
	.string	"S_SSWV_RUN2"
.LASF950:
	.string	"S_SSWV_RUN3"
.LASF951:
	.string	"S_SSWV_RUN4"
.LASF952:
	.string	"S_SSWV_RUN5"
.LASF953:
	.string	"S_SSWV_RUN6"
.LASF954:
	.string	"S_SSWV_RUN7"
.LASF955:
	.string	"S_SSWV_RUN8"
.LASF1133:
	.string	"S_SKULLCOL"
.LASF1205:
	.string	"MT_FATSO"
.LASF677:
	.string	"S_TROO_DIE1"
.LASF678:
	.string	"S_TROO_DIE2"
.LASF679:
	.string	"S_TROO_DIE3"
.LASF680:
	.string	"S_TROO_DIE4"
.LASF681:
	.string	"S_TROO_DIE5"
.LASF1573:
	.string	"dc_yl"
.LASF1058:
	.string	"S_YSKULL"
.LASF1059:
	.string	"S_YSKULL2"
.LASF160:
	.string	"SPR_ROCK"
.LASF1230:
	.string	"MT_ROCKET"
.LASF1328:
	.string	"MT_MISC81"
.LASF1329:
	.string	"MT_MISC82"
.LASF1330:
	.string	"MT_MISC83"
.LASF636:
	.string	"S_CPOS_ATK1"
.LASF637:
	.string	"S_CPOS_ATK2"
.LASF638:
	.string	"S_CPOS_ATK3"
.LASF639:
	.string	"S_CPOS_ATK4"
.LASF1197:
	.string	"MT_PLAYER"
.LASF172:
	.string	"SPR_SHOT"
.LASF365:
	.string	"S_IFOG2"
.LASF366:
	.string	"S_IFOG3"
.LASF367:
	.string	"S_IFOG4"
.LASF368:
	.string	"S_IFOG5"
.LASF101:
	.string	"SPR_PLSE"
.LASF93:
	.string	"SPR_PLSF"
.LASF92:
	.string	"SPR_PLSG"
.LASF761:
	.string	"S_BOSS_PAIN2"
.LASF461:
	.string	"S_VILE_STND"
.LASF989:
	.string	"S_COMMKEEN6"
.LASF990:
	.string	"S_COMMKEEN7"
.LASF991:
	.string	"S_COMMKEEN8"
.LASF100:
	.string	"SPR_PLSS"
.LASF840:
	.string	"S_SPID_PAIN2"
.LASF1354:
	.string	"mass"
.LASF213:
	.string	"SPR_POB1"
.LASF214:
	.string	"SPR_POB2"
.LASF1062:
	.string	"S_SOUL"
.LASF1072:
	.string	"S_PSTR"
.LASF904:
	.string	"S_CYBER_ATK1"
.LASF905:
	.string	"S_CYBER_ATK2"
.LASF906:
	.string	"S_CYBER_ATK3"
.LASF907:
	.string	"S_CYBER_ATK4"
.LASF908:
	.string	"S_CYBER_ATK5"
.LASF909:
	.string	"S_CYBER_ATK6"
.LASF1593:
	.string	"memcpy"
.LASF1099:
	.string	"S_BFUG"
.LASF139:
	.string	"SPR_FCAN"
.LASF1484:
	.string	"line_t"
.LASF582:
	.string	"S_FATT_STND"
.LASF1019:
	.string	"S_BRAINEXPLODE1"
.LASF1020:
	.string	"S_BRAINEXPLODE2"
.LASF1021:
	.string	"S_BRAINEXPLODE3"
.LASF303:
	.string	"S_BFGUP"
.LASF1640:
	.string	"flipped"
.LASF144:
	.string	"SPR_YKEY"
.LASF690:
	.string	"S_TROO_RAISE1"
.LASF691:
	.string	"S_TROO_RAISE2"
.LASF692:
	.string	"S_TROO_RAISE3"
.LASF693:
	.string	"S_TROO_RAISE4"
.LASF694:
	.string	"S_TROO_RAISE5"
.LASF1103:
	.string	"S_PLAS"
.LASF1629:
	.string	"topscreen"
.LASF985:
	.string	"S_COMMKEEN2"
.LASF986:
	.string	"S_COMMKEEN3"
.LASF987:
	.string	"S_COMMKEEN4"
.LASF988:
	.string	"S_COMMKEEN5"
.LASF369:
	.string	"S_PLAY"
.LASF935:
	.string	"S_PAIN_DIE2"
.LASF936:
	.string	"S_PAIN_DIE3"
.LASF937:
	.string	"S_PAIN_DIE4"
.LASF938:
	.string	"S_PAIN_DIE5"
.LASF939:
	.string	"S_PAIN_DIE6"
.LASF1208:
	.string	"MT_TROOP"
.LASF490:
	.string	"S_VILE_PAIN2"
.LASF618:
	.string	"S_FATT_RAISE1"
.LASF24:
	.string	"wp_plasma"
.LASF620:
	.string	"S_FATT_RAISE3"
.LASF621:
	.string	"S_FATT_RAISE4"
.LASF622:
	.string	"S_FATT_RAISE5"
.LASF623:
	.string	"S_FATT_RAISE6"
.LASF624:
	.string	"S_FATT_RAISE7"
.LASF625:
	.string	"S_FATT_RAISE8"
.LASF1364:
	.string	"MF_NOBLOCKMAP"
.LASF334:
	.string	"S_ROCKET"
.LASF1229:
	.string	"MT_HEADSHOT"
.LASF1386:
	.string	"MF_TRANSLATION"
.LASF1467:
	.string	"sidenum"
.LASF887:
	.string	"S_ARACH_PLAZ"
.LASF1126:
	.string	"S_STALAGTITE"
.LASF728:
	.string	"S_HEAD_PAIN2"
.LASF729:
	.string	"S_HEAD_PAIN3"
.LASF1556:
	.string	"basecolfunc"
.LASF48:
	.string	"byte"
.LASF17:
	.string	"it_redskull"
.LASF1236:
	.string	"MT_TFOG"
.LASF437:
	.string	"S_SPOS_ATK1"
.LASF438:
	.string	"S_SPOS_ATK2"
.LASF439:
	.string	"S_SPOS_ATK3"
.LASF374:
	.string	"S_PLAY_ATK1"
.LASF375:
	.string	"S_PLAY_ATK2"
.LASF127:
	.string	"SPR_APLS"
.LASF1622:
	.string	"index"
.LASF1589:
	.string	"R_PointToAngle"
.LASF1570:
	.string	"pspriteiscale"
.LASF1628:
	.string	"R_DrawMaskedColumn"
.LASF1436:
	.string	"refire"
.LASF1155:
	.string	"S_REDTORCH2"
.LASF1156:
	.string	"S_REDTORCH3"
.LASF1157:
	.string	"S_REDTORCH4"
.LASF664:
	.string	"S_TROO_RUN1"
.LASF665:
	.string	"S_TROO_RUN2"
.LASF666:
	.string	"S_TROO_RUN3"
.LASF667:
	.string	"S_TROO_RUN4"
.LASF668:
	.string	"S_TROO_RUN5"
.LASF669:
	.string	"S_TROO_RUN6"
.LASF670:
	.string	"S_TROO_RUN7"
.LASF671:
	.string	"S_TROO_RUN8"
.LASF118:
	.string	"SPR_CPOS"
.LASF579:
	.string	"S_FATSHOTX1"
.LASF580:
	.string	"S_FATSHOTX2"
.LASF581:
	.string	"S_FATSHOTX3"
.LASF659:
	.string	"S_CPOS_RAISE5"
.LASF660:
	.string	"S_CPOS_RAISE6"
.LASF661:
	.string	"S_CPOS_RAISE7"
.LASF19:
	.string	"wp_fist"
.LASF1347:
	.string	"missilestate"
.LASF148:
	.string	"SPR_STIM"
.LASF1496:
	.string	"scale1"
.LASF1497:
	.string	"scale2"
.LASF1610:
	.string	"R_DrawPlayerSprites"
.LASF1367:
	.string	"MF_JUSTATTACKED"
.LASF1524:
	.string	"spriteframes"
.LASF695:
	.string	"S_SARG_STND"
.LASF920:
	.string	"S_CYBER_DIE10"
.LASF98:
	.string	"SPR_BAL1"
.LASF99:
	.string	"SPR_BAL2"
.LASF1537:
	.string	"spriteoffset"
.LASF121:
	.string	"SPR_BAL7"
.LASF1402:
	.string	"info"
.LASF1580:
	.string	"modifiedgame"
.LASF1114:
	.string	"S_HEADSONSTICK"
.LASF1637:
	.string	"rotation"
.LASF1397:
	.string	"ceilingz"
.LASF571:
	.string	"S_SKEL_RAISE1"
.LASF86:
	.string	"SPR_SHT2"
.LASF225:
	.string	"S_PUNCH1"
.LASF226:
	.string	"S_PUNCH2"
.LASF227:
	.string	"S_PUNCH3"
.LASF228:
	.string	"S_PUNCH4"
.LASF229:
	.string	"S_PUNCH5"
.LASF588:
	.string	"S_FATT_RUN5"
.LASF224:
	.string	"S_PUNCHUP"
.LASF841:
	.string	"S_SPID_DIE1"
.LASF592:
	.string	"S_FATT_RUN9"
.LASF843:
	.string	"S_SPID_DIE3"
.LASF844:
	.string	"S_SPID_DIE4"
.LASF85:
	.string	"SPR_SHTF"
.LASF81:
	.string	"SPR_SHTG"
.LASF363:
	.string	"S_IFOG01"
.LASF364:
	.string	"S_IFOG02"
.LASF849:
	.string	"S_SPID_DIE9"
.LASF1559:
	.string	"ds_p"
.LASF1091:
	.string	"S_AMMO"
.LASF36:
	.string	"NUMAMMO"
.LASF1567:
	.string	"spryscale"
.LASF1632:
	.string	"R_InitSprites"
.LASF922:
	.string	"S_PAIN_RUN1"
.LASF923:
	.string	"S_PAIN_RUN2"
.LASF924:
	.string	"S_PAIN_RUN3"
.LASF925:
	.string	"S_PAIN_RUN4"
.LASF207:
	.string	"SPR_HDB1"
.LASF208:
	.string	"SPR_HDB2"
.LASF209:
	.string	"SPR_HDB3"
.LASF210:
	.string	"SPR_HDB4"
.LASF211:
	.string	"SPR_HDB5"
.LASF212:
	.string	"SPR_HDB6"
.LASF1615:
	.string	"avis"
.LASF1198:
	.string	"MT_POSSESSED"
.LASF257:
	.string	"S_DSGUN3"
.LASF258:
	.string	"S_DSGUN4"
.LASF1473:
	.string	"textureoffset"
.LASF77:
	.string	"type"
.LASF277:
	.string	"S_MISSILE"
.LASF1105:
	.string	"S_SHOT2"
.LASF1360:
	.string	"MF_SPECIAL"
.LASF1172:
	.string	"S_HANGTLOOKDN"
.LASF1405:
	.string	"movedir"
.LASF1558:
	.string	"drawsegs"
.LASF649:
	.string	"S_CPOS_XDIE1"
.LASF1374:
	.string	"MF_FLOAT"
.LASF1553:
	.string	"scalelight"
.LASF1576:
	.string	"dc_texturemid"
.LASF70:
	.string	"actionf_t"
.LASF65:
	.string	"actionf_v"
.LASF168:
	.string	"SPR_MGUN"
.LASF1210:
	.string	"MT_SHADOWS"
.LASF552:
	.string	"S_SKEL_RUN10"
.LASF553:
	.string	"S_SKEL_RUN11"
.LASF554:
	.string	"S_SKEL_RUN12"
.LASF220:
	.string	"S_NULL"
.LASF762:
	.string	"S_BOSS_DIE1"
.LASF763:
	.string	"S_BOSS_DIE2"
.LASF764:
	.string	"S_BOSS_DIE3"
.LASF765:
	.string	"S_BOSS_DIE4"
.LASF766:
	.string	"S_BOSS_DIE5"
.LASF767:
	.string	"S_BOSS_DIE6"
.LASF768:
	.string	"S_BOSS_DIE7"
.LASF932:
	.string	"S_PAIN_PAIN"
.LASF301:
	.string	"S_BFG"
.LASF1345:
	.string	"painsound"
.LASF1534:
	.string	"player_t"
.LASF1457:
	.string	"special"
.LASF947:
	.string	"S_SSWV_STND2"
.LASF169:
	.string	"SPR_CSAW"
.LASF1082:
	.string	"S_PMAP"
.LASF1088:
	.string	"S_PVIS"
.LASF302:
	.string	"S_BFGDOWN"
.LASF1222:
	.string	"MT_BOSSBRAIN"
.LASF115:
	.string	"SPR_SKEL"
.LASF1631:
	.string	"basetexturemid"
.LASF297:
	.string	"S_PLASMA1"
.LASF298:
	.string	"S_PLASMA2"
.LASF1614:
	.string	"sprframe"
.LASF1162:
	.string	"S_GTORCHSHRT"
.LASF1416:
	.string	"firstline"
.LASF1096:
	.string	"S_SHEL"
.LASF853:
	.string	"S_BSPI_STND2"
.LASF5:
	.string	"unsigned char"
.LASF113:
	.string	"SPR_FATB"
.LASF218:
	.string	"NUMSPRITES"
.LASF336:
	.string	"S_BFGSHOT2"
.LASF1562:
	.string	"vsprsortedhead"
.LASF117:
	.string	"SPR_FATT"
.LASF1063:
	.string	"S_SOUL2"
.LASF1064:
	.string	"S_SOUL3"
.LASF1065:
	.string	"S_SOUL4"
.LASF1066:
	.string	"S_SOUL5"
.LASF1067:
	.string	"S_SOUL6"
.LASF823:
	.string	"S_SPID_RUN1"
.LASF824:
	.string	"S_SPID_RUN2"
.LASF825:
	.string	"S_SPID_RUN3"
.LASF826:
	.string	"S_SPID_RUN4"
.LASF827:
	.string	"S_SPID_RUN5"
.LASF828:
	.string	"S_SPID_RUN6"
.LASF829:
	.string	"S_SPID_RUN7"
.LASF830:
	.string	"S_SPID_RUN8"
.LASF61:
	.string	"float"
.LASF1030:
	.string	"S_BEXP3"
.LASF1645:
	.string	"R_InstallSpriteLump"
.LASF1031:
	.string	"S_BEXP4"
.LASF1119:
	.string	"S_DEADSTICK"
.LASF1445:
	.string	"fixedcolormap"
.LASF1430:
	.string	"weaponowned"
.LASF1239:
	.string	"MT_EXTRABFG"
.LASF409:
	.string	"S_POSS_DIE1"
.LASF410:
	.string	"S_POSS_DIE2"
.LASF411:
	.string	"S_POSS_DIE3"
.LASF412:
	.string	"S_POSS_DIE4"
.LASF413:
	.string	"S_POSS_DIE5"
.LASF239:
	.string	"S_SGUNDOWN"
.LASF1500:
	.string	"bsilheight"
.LASF88:
	.string	"SPR_CHGF"
.LASF87:
	.string	"SPR_CHGG"
.LASF632:
	.string	"S_CPOS_RUN5"
.LASF891:
	.string	"S_ARACH_PLEX3"
.LASF633:
	.string	"S_CPOS_RUN6"
.LASF893:
	.string	"S_ARACH_PLEX5"
.LASF634:
	.string	"S_CPOS_RUN7"
.LASF1407:
	.string	"target"
.LASF198:
	.string	"SPR_CEYE"
.LASF1499:
	.string	"silhouette"
.LASF1479:
	.string	"ST_HORIZONTAL"
.LASF940:
	.string	"S_PAIN_RAISE1"
.LASF941:
	.string	"S_PAIN_RAISE2"
.LASF942:
	.string	"S_PAIN_RAISE3"
.LASF943:
	.string	"S_PAIN_RAISE4"
.LASF944:
	.string	"S_PAIN_RAISE5"
.LASF577:
	.string	"S_FATSHOT1"
.LASF578:
	.string	"S_FATSHOT2"
.LASF1480:
	.string	"ST_VERTICAL"
.LASF155:
	.string	"SPR_SUIT"
.LASF805:
	.string	"S_SKULL_STND"
.LASF1366:
	.string	"MF_JUSTHIT"
.LASF1387:
	.string	"MF_TRANSSHIFT"
.LASF839:
	.string	"S_SPID_PAIN"
.LASF1334:
	.string	"NUMMOBJTYPES"
.LASF137:
	.string	"SPR_BAR1"
.LASF1478:
	.string	"side_t"
.LASF252:
	.string	"S_DSGUN"
.LASF1131:
	.string	"S_CANDLESTIK"
.LASF42:
	.string	"pw_allmap"
.LASF1187:
	.string	"NUMSTATES"
.LASF831:
	.string	"S_SPID_RUN9"
.LASF317:
	.string	"S_TBALL1"
.LASF318:
	.string	"S_TBALL2"
.LASF1535:
	.string	"lumpinfo"
.LASF532:
	.string	"S_SMOKE2"
.LASF533:
	.string	"S_SMOKE3"
.LASF534:
	.string	"S_SMOKE4"
.LASF535:
	.string	"S_SMOKE5"
.LASF754:
	.string	"S_BOSS_RUN6"
.LASF755:
	.string	"S_BOSS_RUN7"
.LASF756:
	.string	"S_BOSS_RUN8"
.LASF120:
	.string	"SPR_HEAD"
.LASF1394:
	.string	"bprev"
.LASF181:
	.string	"SPR_POL1"
.LASF177:
	.string	"SPR_POL2"
.LASF180:
	.string	"SPR_POL3"
.LASF179:
	.string	"SPR_POL4"
.LASF178:
	.string	"SPR_POL5"
.LASF182:
	.string	"SPR_POL6"
.LASF1026:
	.string	"S_BAR1"
.LASF1626:
	.string	"texturecolumn"
.LASF1240:
	.string	"MT_MISC0"
.LASF1112:
	.string	"S_DEADTORSO"
.LASF1371:
	.string	"MF_PICKUP"
.LASF1380:
	.string	"MF_CORPSE"
.LASF254:
	.string	"S_DSGUNUP"
.LASF1337:
	.string	"spawnstate"
.LASF663:
	.string	"S_TROO_STND2"
.LASF1625:
	.string	"column"
.LASF1183:
	.string	"S_TECH2LAMP"
.LASF1623:
	.string	"iscale"
.LASF1226:
	.string	"MT_SPAWNFIRE"
.LASF1515:
	.string	"texturemid"
.LASF1201:
	.string	"MT_FIRE"
.LASF1604:
	.string	"lowscale"
.LASF1519:
	.string	"rotate"
.LASF1193:
	.string	"nextstate"
.LASF760:
	.string	"S_BOSS_PAIN"
.LASF1602:
	.string	"clipbot"
.LASF131:
	.string	"SPR_SSWV"
.LASF1365:
	.string	"MF_AMBUSH"
.LASF322:
	.string	"S_RBALL1"
.LASF323:
	.string	"S_RBALL2"
.LASF1127:
	.string	"S_TALLGRNCOL"
.LASF1568:
	.string	"sprtopscreen"
.LASF1410:
	.string	"lastlook"
.LASF1621:
	.string	"xscale"
.LASF1476:
	.string	"bottomtexture"
.LASF1116:
	.string	"S_HEADONASTICK"
.LASF396:
	.string	"S_POSS_RUN1"
.LASF338:
	.string	"S_BFGLAND2"
.LASF339:
	.string	"S_BFGLAND3"
.LASF340:
	.string	"S_BFGLAND4"
.LASF341:
	.string	"S_BFGLAND5"
.LASF342:
	.string	"S_BFGLAND6"
.LASF402:
	.string	"S_POSS_RUN7"
.LASF403:
	.string	"S_POSS_RUN8"
.LASF1492:
	.string	"column_t"
.LASF385:
	.string	"S_PLAY_XDIE1"
.LASF386:
	.string	"S_PLAY_XDIE2"
.LASF387:
	.string	"S_PLAY_XDIE3"
.LASF388:
	.string	"S_PLAY_XDIE4"
.LASF389:
	.string	"S_PLAY_XDIE5"
.LASF390:
	.string	"S_PLAY_XDIE6"
.LASF391:
	.string	"S_PLAY_XDIE7"
.LASF392:
	.string	"S_PLAY_XDIE8"
.LASF393:
	.string	"S_PLAY_XDIE9"
.LASF791:
	.string	"S_BOS2_DIE1"
.LASF792:
	.string	"S_BOS2_DIE2"
.LASF793:
	.string	"S_BOS2_DIE3"
.LASF794:
	.string	"S_BOS2_DIE4"
.LASF795:
	.string	"S_BOS2_DIE5"
.LASF796:
	.string	"S_BOS2_DIE6"
.LASF797:
	.string	"S_BOS2_DIE7"
.LASF1357:
	.string	"flags"
.LASF717:
	.string	"S_SARG_RAISE2"
.LASF718:
	.string	"S_SARG_RAISE3"
.LASF361:
	.string	"S_TFOG10"
.LASF719:
	.string	"S_SARG_RAISE4"
.LASF1571:
	.string	"dc_colormap"
.LASF414:
	.string	"S_POSS_XDIE1"
.LASF415:
	.string	"S_POSS_XDIE2"
.LASF416:
	.string	"S_POSS_XDIE3"
.LASF417:
	.string	"S_POSS_XDIE4"
.LASF418:
	.string	"S_POSS_XDIE5"
.LASF419:
	.string	"S_POSS_XDIE6"
.LASF420:
	.string	"S_POSS_XDIE7"
.LASF32:
	.string	"am_clip"
.LASF422:
	.string	"S_POSS_XDIE9"
.LASF1115:
	.string	"S_GIBS"
.LASF730:
	.string	"S_HEAD_DIE1"
.LASF731:
	.string	"S_HEAD_DIE2"
.LASF732:
	.string	"S_HEAD_DIE3"
.LASF733:
	.string	"S_HEAD_DIE4"
.LASF734:
	.string	"S_HEAD_DIE5"
.LASF59:
	.string	"size"
.LASF583:
	.string	"S_FATT_STND2"
.LASF1106:
	.string	"S_COLU"
.LASF233:
	.string	"S_PISTOL1"
.LASF234:
	.string	"S_PISTOL2"
.LASF235:
	.string	"S_PISTOL3"
.LASF236:
	.string	"S_PISTOL4"
.LASF572:
	.string	"S_SKEL_RAISE2"
.LASF573:
	.string	"S_SKEL_RAISE3"
.LASF574:
	.string	"S_SKEL_RAISE4"
.LASF575:
	.string	"S_SKEL_RAISE5"
.LASF576:
	.string	"S_SKEL_RAISE6"
.LASF1135:
	.string	"S_BIGTREE"
.LASF1482:
	.string	"ST_NEGATIVE"
.LASF1636:
	.string	"intname"
.LASF1045:
	.string	"S_BON2C"
.LASF1046:
	.string	"S_BON2D"
.LASF351:
	.string	"S_TFOG01"
.LASF352:
	.string	"S_TFOG02"
.LASF170:
	.string	"SPR_LAUN"
.LASF407:
	.string	"S_POSS_PAIN"
.LASF742:
	.string	"S_BRBALL1"
.LASF743:
	.string	"S_BRBALL2"
.LASF1477:
	.string	"midtexture"
.LASF1204:
	.string	"MT_SMOKE"
.LASF1218:
	.string	"MT_CYBORG"
.LASF1355:
	.string	"damage"
.LASF447:
	.string	"S_SPOS_XDIE1"
.LASF448:
	.string	"S_SPOS_XDIE2"
.LASF449:
	.string	"S_SPOS_XDIE3"
.LASF450:
	.string	"S_SPOS_XDIE4"
.LASF451:
	.string	"S_SPOS_XDIE5"
.LASF452:
	.string	"S_SPOS_XDIE6"
.LASF453:
	.string	"S_SPOS_XDIE7"
.LASF454:
	.string	"S_SPOS_XDIE8"
.LASF455:
	.string	"S_SPOS_XDIE9"
.LASF1384:
	.string	"MF_SKULLFLY"
.LASF30:
	.string	"size_t"
.LASF1389:
	.string	"mobj_s"
.LASF1449:
	.string	"mobj_t"
.LASF1048:
	.string	"S_BKEY"
.LASF40:
	.string	"pw_invisibility"
.LASF135:
	.string	"SPR_ARM1"
.LASF136:
	.string	"SPR_ARM2"
.LASF1200:
	.string	"MT_VILE"
.LASF15:
	.string	"it_blueskull"
.LASF1461:
	.string	"soundorg"
.LASF295:
	.string	"S_PLASMADOWN"
.LASF1633:
	.string	"namelist"
.LASF607:
	.string	"S_FATT_PAIN2"
.LASF1005:
	.string	"S_BRAINEYESEE"
.LASF1483:
	.string	"slopetype_t"
.LASF542:
	.string	"S_SKEL_STND2"
.LASF895:
	.string	"S_CYBER_STND2"
.LASF1196:
	.string	"state_t"
.LASF739:
	.string	"S_HEAD_RAISE4"
.LASF965:
	.string	"S_SSWV_DIE2"
.LASF1338:
	.string	"spawnhealth"
.LASF421:
	.string	"S_POSS_XDIE8"
.LASF1095:
	.string	"S_CELP"
.LASF1137:
	.string	"S_EVILEYE"
.LASF1608:
	.string	"unsorted"
.LASF1163:
	.string	"S_GTORCHSHRT2"
.LASF1164:
	.string	"S_GTORCHSHRT3"
.LASF1165:
	.string	"S_GTORCHSHRT4"
.LASF1420:
	.string	"viewheight"
.LASF1393:
	.string	"bnext"
.LASF1525:
	.string	"spritedef_t"
.LASF596:
	.string	"S_FATT_ATK1"
.LASF129:
	.string	"SPR_CYBR"
.LASF597:
	.string	"S_FATT_ATK2"
.LASF500:
	.string	"S_VILE_DIE10"
.LASF90:
	.string	"SPR_MISF"
.LASF89:
	.string	"SPR_MISG"
.LASF1624:
	.string	"R_DrawVisSprite"
.LASF102:
	.string	"SPR_MISL"
.LASF1586:
	.string	"newvissprite"
.LASF1054:
	.string	"S_BSKULL"
.LASF133:
	.string	"SPR_BBRN"
.LASF475:
	.string	"S_VILE_ATK1"
.LASF476:
	.string	"S_VILE_ATK2"
.LASF477:
	.string	"S_VILE_ATK3"
.LASF478:
	.string	"S_VILE_ATK4"
.LASF479:
	.string	"S_VILE_ATK5"
.LASF480:
	.string	"S_VILE_ATK6"
.LASF481:
	.string	"S_VILE_ATK7"
.LASF222:
	.string	"S_PUNCH"
.LASF483:
	.string	"S_VILE_ATK9"
.LASF204:
	.string	"SPR_SMBT"
.LASF778:
	.string	"S_BOS2_RUN1"
.LASF779:
	.string	"S_BOS2_RUN2"
.LASF780:
	.string	"S_BOS2_RUN3"
.LASF781:
	.string	"S_BOS2_RUN4"
.LASF782:
	.string	"S_BOS2_RUN5"
.LASF783:
	.string	"S_BOS2_RUN6"
.LASF784:
	.string	"S_BOS2_RUN7"
.LASF785:
	.string	"S_BOS2_RUN8"
.LASF1456:
	.string	"lightlevel"
.LASF195:
	.string	"SPR_TRE1"
.LASF196:
	.string	"SPR_TRE2"
.LASF852:
	.string	"S_BSPI_STND"
.LASF1346:
	.string	"meleestate"
.LASF1431:
	.string	"ammo"
.LASF642:
	.string	"S_CPOS_DIE1"
.LASF203:
	.string	"SPR_TRED"
.LASF96:
	.string	"SPR_BLUD"
.LASF598:
	.string	"S_FATT_ATK3"
.LASF599:
	.string	"S_FATT_ATK4"
.LASF600:
	.string	"S_FATT_ATK5"
.LASF601:
	.string	"S_FATT_ATK6"
.LASF602:
	.string	"S_FATT_ATK7"
.LASF603:
	.string	"S_FATT_ATK8"
.LASF604:
	.string	"S_FATT_ATK9"
.LASF106:
	.string	"SPR_TFOG"
.LASF310:
	.string	"S_BLOOD1"
.LASF311:
	.string	"S_BLOOD2"
.LASF312:
	.string	"S_BLOOD3"
.LASF1536:
	.string	"spritewidth"
.LASF1194:
	.string	"misc1"
.LASF1195:
	.string	"misc2"
.LASF51:
	.string	"angleturn"
.LASF1583:
	.string	"sprtemp"
.LASF1102:
	.string	"S_LAUN"
.LASF1644:
	.string	"R_ClearSprites"
.LASF362:
	.string	"S_IFOG"
.LASF109:
	.string	"SPR_POSS"
.LASF114:
	.string	"SPR_FBXP"
.LASF911:
	.string	"S_CYBER_DIE1"
.LASF912:
	.string	"S_CYBER_DIE2"
.LASF913:
	.string	"S_CYBER_DIE3"
.LASF914:
	.string	"S_CYBER_DIE4"
.LASF915:
	.string	"S_CYBER_DIE5"
.LASF916:
	.string	"S_CYBER_DIE6"
.LASF917:
	.string	"S_CYBER_DIE7"
.LASF789:
	.string	"S_BOS2_PAIN"
.LASF919:
	.string	"S_CYBER_DIE9"
.LASF1411:
	.string	"spawnpoint"
.LASF1189:
	.string	"sprite"
.LASF1594:
	.string	"W_GetNumForName"
.LASF1267:
	.string	"MT_MISC23"
.LASF1510:
	.string	"patch_t"
.LASF1132:
	.string	"S_CANDELABRA"
.LASF472:
	.string	"S_VILE_RUN10"
.LASF473:
	.string	"S_VILE_RUN11"
.LASF474:
	.string	"S_VILE_RUN12"
.LASF1092:
	.string	"S_ROCK"
.LASF241:
	.string	"S_SGUN1"
.LASF242:
	.string	"S_SGUN2"
.LASF243:
	.string	"S_SGUN3"
.LASF244:
	.string	"S_SGUN4"
.LASF245:
	.string	"S_SGUN5"
.LASF246:
	.string	"S_SGUN6"
.LASF247:
	.string	"S_SGUN7"
.LASF248:
	.string	"S_SGUN8"
.LASF249:
	.string	"S_SGUN9"
.LASF1336:
	.string	"doomednum"
.LASF238:
	.string	"S_SGUN"
.LASF1128:
	.string	"S_SHRTGRNCOL"
.LASF1592:
	.string	"W_CacheLumpNum"
.LASF1551:
	.string	"centeryfrac"
.LASF813:
	.string	"S_SKULL_PAIN"
.LASF1225:
	.string	"MT_SPAWNSHOT"
.LASF1578:
	.string	"translationtables"
.LASF537:
	.string	"S_TRACER2"
.LASF1136:
	.string	"S_TECHPILLAR"
.LASF541:
	.string	"S_SKEL_STND"
.LASF1612:
	.string	"R_DrawPSprite"
.LASF696:
	.string	"S_SARG_STND2"
.LASF442:
	.string	"S_SPOS_DIE1"
.LASF443:
	.string	"S_SPOS_DIE2"
.LASF444:
	.string	"S_SPOS_DIE3"
.LASF445:
	.string	"S_SPOS_DIE4"
.LASF446:
	.string	"S_SPOS_DIE5"
.LASF1532:
	.string	"PST_REBORN"
.LASF1577:
	.string	"dc_source"
.LASF1171:
	.string	"S_HANGBNOBRAIN"
.LASF705:
	.string	"S_SARG_ATK1"
.LASF706:
	.string	"S_SARG_ATK2"
.LASF707:
	.string	"S_SARG_ATK3"
.LASF296:
	.string	"S_PLASMAUP"
.LASF1191:
	.string	"tics"
.LASF1635:
	.string	"check"
.LASF1052:
	.string	"S_YKEY"
.LASF1498:
	.string	"scalestep"
.LASF1351:
	.string	"speed"
.LASF265:
	.string	"S_DSNR1"
.LASF934:
	.string	"S_PAIN_DIE1"
.LASF1574:
	.string	"dc_yh"
.LASF464:
	.string	"S_VILE_RUN2"
.LASF1182:
	.string	"S_TECHLAMP4"
.LASF628:
	.string	"S_CPOS_RUN1"
.LASF629:
	.string	"S_CPOS_RUN2"
.LASF630:
	.string	"S_CPOS_RUN3"
.LASF631:
	.string	"S_CPOS_RUN4"
.LASF66:
	.string	"actionf_p1"
.LASF67:
	.string	"actionf_p2"
.LASF166:
	.string	"SPR_BPAK"
.LASF635:
	.string	"S_CPOS_RUN8"
.LASF1032:
	.string	"S_BEXP5"
.LASF79:
	.string	"mapthing_t"
.LASF397:
	.string	"S_POSS_RUN2"
.LASF398:
	.string	"S_POSS_RUN3"
.LASF399:
	.string	"S_POSS_RUN4"
.LASF716:
	.string	"S_SARG_RAISE1"
.LASF400:
	.string	"S_POSS_RUN5"
.LASF68:
	.string	"acp1"
.LASF69:
	.string	"acp2"
.LASF720:
	.string	"S_SARG_RAISE5"
.LASF721:
	.string	"S_SARG_RAISE6"
.LASF1300:
	.string	"MT_MISC53"
.LASF205:
	.string	"SPR_SMGT"
.LASF996:
	.string	"S_KEENPAIN"
.LASF344:
	.string	"S_BFGEXP2"
.LASF345:
	.string	"S_BFGEXP3"
.LASF346:
	.string	"S_BFGEXP4"
.LASF275:
	.string	"S_CHAINFLASH1"
.LASF276:
	.string	"S_CHAINFLASH2"
.LASF231:
	.string	"S_PISTOLDOWN"
.LASF896:
	.string	"S_CYBER_RUN1"
.LASF897:
	.string	"S_CYBER_RUN2"
.LASF898:
	.string	"S_CYBER_RUN3"
.LASF899:
	.string	"S_CYBER_RUN4"
.LASF900:
	.string	"S_CYBER_RUN5"
.LASF901:
	.string	"S_CYBER_RUN6"
.LASF902:
	.string	"S_CYBER_RUN7"
.LASF903:
	.string	"S_CYBER_RUN8"
.LASF1340:
	.string	"seesound"
.LASF1520:
	.string	"lump"
.LASF1083:
	.string	"S_PMAP2"
.LASF1084:
	.string	"S_PMAP3"
.LASF1085:
	.string	"S_PMAP4"
.LASF1086:
	.string	"S_PMAP5"
.LASF1087:
	.string	"S_PMAP6"
.LASF1376:
	.string	"MF_MISSILE"
.LASF1442:
	.string	"bonuscount"
.LASF814:
	.string	"S_SKULL_PAIN2"
.LASF1344:
	.string	"painchance"
.LASF640:
	.string	"S_CPOS_PAIN"
.LASF1453:
	.string	"ceilingheight"
.LASF119:
	.string	"SPR_SARG"
.LASF945:
	.string	"S_PAIN_RAISE6"
.LASF1463:
	.string	"specialdata"
.LASF1283:
	.string	"MT_MISC36"
.LASF749:
	.string	"S_BOSS_RUN1"
.LASF750:
	.string	"S_BOSS_RUN2"
.LASF751:
	.string	"S_BOSS_RUN3"
.LASF752:
	.string	"S_BOSS_RUN4"
.LASF753:
	.string	"S_BOSS_RUN5"
.LASF271:
	.string	"S_CHAINUP"
.LASF1641:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1437:
	.string	"killcount"
.LASF890:
	.string	"S_ARACH_PLEX2"
.LASF1134:
	.string	"S_TORCHTREE"
.LASF946:
	.string	"S_SSWV_STND"
.LASF892:
	.string	"S_ARACH_PLEX4"
.LASF1369:
	.string	"MF_NOGRAVITY"
.LASF993:
	.string	"S_COMMKEEN10"
.LASF994:
	.string	"S_COMMKEEN11"
.LASF995:
	.string	"S_COMMKEEN12"
.LASF910:
	.string	"S_CYBER_PAIN"
.LASF429:
	.string	"S_SPOS_RUN1"
.LASF187:
	.string	"SPR_SMIT"
.LASF47:
	.string	"boolean"
.LASF432:
	.string	"S_SPOS_RUN4"
.LASF433:
	.string	"S_SPOS_RUN5"
.LASF124:
	.string	"SPR_SKUL"
.LASF435:
	.string	"S_SPOS_RUN7"
.LASF436:
	.string	"S_SPOS_RUN8"
.LASF1494:
	.string	"drawseg_s"
.LASF1093:
	.string	"S_BROK"
.LASF56:
	.string	"name"
.LASF223:
	.string	"S_PUNCHDOWN"
.LASF889:
	.string	"S_ARACH_PLEX"
.LASF1150:
	.string	"S_GREENTORCH"
.LASF27:
	.string	"wp_supershotgun"
.LASF289:
	.string	"S_SAWDOWN"
.LASF1188:
	.string	"statenum_t"
.LASF1505:
	.string	"drawseg_t"
.LASF1228:
	.string	"MT_TROOPSHOT"
.LASF1489:
	.string	"topdelta"
.LASF1213:
	.string	"MT_BRUISERSHOT"
.LASF1639:
	.string	"patched"
.LASF55:
	.string	"ticcmd_t"
.LASF1501:
	.string	"tsilheight"
.LASF1333:
	.string	"MT_MISC86"
.LASF1526:
	.string	"ps_weapon"
.LASF377:
	.string	"S_PLAY_PAIN2"
.LASF1493:
	.string	"lighttable_t"
.LASF1554:
	.string	"detailshift"
.LASF772:
	.string	"S_BOSS_RAISE4"
.LASF773:
	.string	"S_BOSS_RAISE5"
.LASF1190:
	.string	"frame"
.LASF116:
	.string	"SPR_MANF"
.LASF627:
	.string	"S_CPOS_STND2"
.LASF440:
	.string	"S_SPOS_PAIN"
.LASF21:
	.string	"wp_shotgun"
.LASF1564:
	.string	"screenheightarray"
.LASF408:
	.string	"S_POSS_PAIN2"
.LASF1234:
	.string	"MT_PUFF"
.LASF1503:
	.string	"sprbottomclip"
.LASF280:
	.string	"S_MISSILE1"
.LASF281:
	.string	"S_MISSILE2"
.LASF282:
	.string	"S_MISSILE3"
.LASF656:
	.string	"S_CPOS_RAISE2"
.LASF657:
	.string	"S_CPOS_RAISE3"
.LASF658:
	.string	"S_CPOS_RAISE4"
.LASF1447:
	.string	"psprites"
.LASF1100:
	.string	"S_MGUN"
.LASF1212:
	.string	"MT_BRUISER"
.LASF165:
	.string	"SPR_SBOX"
.LASF1517:
	.string	"mobjflags"
.LASF1439:
	.string	"secretcount"
.LASF1335:
	.string	"mobjtype_t"
.LASF1349:
	.string	"xdeathstate"
.LASF1424:
	.string	"powers"
.LASF809:
	.string	"S_SKULL_ATK1"
.LASF810:
	.string	"S_SKULL_ATK2"
.LASF811:
	.string	"S_SKULL_ATK3"
.LASF812:
	.string	"S_SKULL_ATK4"
.LASF790:
	.string	"S_BOS2_PAIN2"
.LASF6:
	.string	"short unsigned int"
.LASF1214:
	.string	"MT_KNIGHT"
.LASF1538:
	.string	"spritetopoffset"
.LASF7:
	.string	"signed char"
.LASF50:
	.string	"sidemove"
.LASF1356:
	.string	"activesound"
.LASF441:
	.string	"S_SPOS_PAIN2"
.LASF1638:
	.string	"start"
.LASF605:
	.string	"S_FATT_ATK10"
.LASF1611:
	.string	"lightnum"
.LASF202:
	.string	"SPR_TGRN"
.LASF1582:
	.string	"spritelights"
.LASF1259:
	.string	"MT_MEGA"
.LASF104:
	.string	"SPR_BFE1"
.LASF105:
	.string	"SPR_BFE2"
.LASF1462:
	.string	"thinglist"
.LASF1575:
	.string	"dc_iscale"
.LASF1293:
	.string	"MT_MISC46"
.LASF1509:
	.string	"columnofs"
.LASF1606:
	.string	"count"
.LASF1221:
	.string	"MT_KEEN"
.LASF1460:
	.string	"blockbox"
.LASF1006:
	.string	"S_BRAINEYE1"
.LASF1487:
	.string	"linedef"
.LASF662:
	.string	"S_TROO_STND"
.LASF609:
	.string	"S_FATT_DIE2"
.LASF300:
	.string	"S_PLASMAFLASH2"
.LASF31:
	.string	"weapontype_t"
.LASF53:
	.string	"chatchar"
.LASF353:
	.string	"S_TFOG2"
.LASF354:
	.string	"S_TFOG3"
.LASF355:
	.string	"S_TFOG4"
.LASF356:
	.string	"S_TFOG5"
.LASF357:
	.string	"S_TFOG6"
.LASF358:
	.string	"S_TFOG7"
.LASF359:
	.string	"S_TFOG8"
.LASF360:
	.string	"S_TFOG9"
.LASF775:
	.string	"S_BOSS_RAISE7"
.LASF1433:
	.string	"attackdown"
.LASF80:
	.string	"SPR_TROO"
.LASF91:
	.string	"SPR_SAWG"
.LASF735:
	.string	"S_HEAD_DIE6"
.LASF1385:
	.string	"MF_NOTDMATCH"
.LASF140:
	.string	"SPR_BON1"
.LASF141:
	.string	"SPR_BON2"
.LASF1361:
	.string	"MF_SOLID"
.LASF14:
	.string	"it_redcard"
.LASF1129:
	.string	"S_TALLREDCOL"
.LASF1598:
	.string	"I_Error"
.LASF1403:
	.string	"state"
.LASF1104:
	.string	"S_SHOT"
.LASF960:
	.string	"S_SSWV_ATK5"
.LASF1109:
	.string	"S_BLOODYTWITCH2"
.LASF1110:
	.string	"S_BLOODYTWITCH3"
.LASF1111:
	.string	"S_BLOODYTWITCH4"
.LASF850:
	.string	"S_SPID_DIE10"
.LASF851:
	.string	"S_SPID_DIE11"
.LASF1425:
	.string	"cards"
.LASF1630:
	.string	"bottomscreen"
.LASF1488:
	.string	"seg_t"
.LASF197:
	.string	"SPR_ELEC"
.LASF998:
	.string	"S_BRAIN"
.LASF1216:
	.string	"MT_SPIDER"
.LASF1081:
	.string	"S_SUIT"
.LASF95:
	.string	"SPR_BFGF"
.LASF94:
	.string	"SPR_BFGG"
.LASF1605:
	.string	"R_SortVisSprites"
.LASF921:
	.string	"S_PAIN_STND"
.LASF337:
	.string	"S_BFGLAND"
.LASF1027:
	.string	"S_BAR2"
.LASF1429:
	.string	"pendingweapon"
.LASF74:
	.string	"function"
.LASF1516:
	.string	"patch"
.LASF33:
	.string	"am_shell"
.LASF1401:
	.string	"validcount"
.LASF1440:
	.string	"message"
.LASF617:
	.string	"S_FATT_DIE10"
.LASF18:
	.string	"NUMCARDS"
.LASF1154:
	.string	"S_REDTORCH"
.LASF1232:
	.string	"MT_BFG"
.LASF401:
	.string	"S_POSS_RUN6"
.LASF111:
	.string	"SPR_VILE"
.LASF1235:
	.string	"MT_BLOOD"
.LASF230:
	.string	"S_PISTOL"
.LASF46:
	.string	"true"
.LASF462:
	.string	"S_VILE_STND2"
.LASF880:
	.string	"S_BSPI_RAISE1"
.LASF881:
	.string	"S_BSPI_RAISE2"
.LASF882:
	.string	"S_BSPI_RAISE3"
.LASF883:
	.string	"S_BSPI_RAISE4"
.LASF884:
	.string	"S_BSPI_RAISE5"
.LASF885:
	.string	"S_BSPI_RAISE6"
.LASF886:
	.string	"S_BSPI_RAISE7"
.LASF1398:
	.string	"momx"
.LASF1377:
	.string	"MF_DROPPED"
.LASF1399:
	.string	"momy"
.LASF9:
	.string	"long int"
.LASF969:
	.string	"S_SSWV_XDIE1"
.LASF970:
	.string	"S_SSWV_XDIE2"
.LASF971:
	.string	"S_SSWV_XDIE3"
.LASF972:
	.string	"S_SSWV_XDIE4"
.LASF973:
	.string	"S_SSWV_XDIE5"
.LASF974:
	.string	"S_SSWV_XDIE6"
.LASF975:
	.string	"S_SSWV_XDIE7"
.LASF976:
	.string	"S_SSWV_XDIE8"
.LASF977:
	.string	"S_SSWV_XDIE9"
.LASF267:
	.string	"S_DSGUNFLASH1"
.LASF268:
	.string	"S_DSGUNFLASH2"
.LASF1266:
	.string	"MT_MISC22"
.LASF1448:
	.string	"didsecret"
.LASF525:
	.string	"S_FIRE25"
.LASF619:
	.string	"S_FATT_RAISE2"
.LASF1302:
	.string	"MT_MISC55"
.LASF1421:
	.string	"deltaviewheight"
.LASF16:
	.string	"it_yellowskull"
.LASF1057:
	.string	"S_RSKULL2"
.LASF1412:
	.string	"tracer"
.LASF1548:
	.string	"viewcos"
.LASF832:
	.string	"S_SPID_RUN10"
.LASF833:
	.string	"S_SPID_RUN11"
.LASF834:
	.string	"S_SPID_RUN12"
.LASF1599:
	.string	"rcsid"
.LASF1358:
	.string	"raisestate"
.LASF283:
	.string	"S_MISSILEFLASH1"
.LASF284:
	.string	"S_MISSILEFLASH2"
.LASF285:
	.string	"S_MISSILEFLASH3"
.LASF286:
	.string	"S_MISSILEFLASH4"
.LASF146:
	.string	"SPR_RSKU"
.LASF71:
	.string	"think_t"
.LASF49:
	.string	"forwardmove"
.LASF644:
	.string	"S_CPOS_DIE3"
.LASF645:
	.string	"S_CPOS_DIE4"
.LASF1378:
	.string	"MF_SHADOW"
.LASF646:
	.string	"S_CPOS_DIE5"
.LASF647:
	.string	"S_CPOS_DIE6"
.LASF648:
	.string	"S_CPOS_DIE7"
.LASF1555:
	.string	"colfunc"
.LASF1547:
	.string	"viewplayer"
.LASF1089:
	.string	"S_PVIS2"
.LASF1227:
	.string	"MT_BARREL"
.LASF821:
	.string	"S_SPID_STND"
.LASF1634:
	.string	"R_InitSpriteDefs"
.LASF593:
	.string	"S_FATT_RUN10"
.LASF594:
	.string	"S_FATT_RUN11"
.LASF595:
	.string	"S_FATT_RUN12"
.LASF1219:
	.string	"MT_PAIN"
.LASF1521:
	.string	"flip"
.LASF1147:
	.string	"S_BLUETORCH2"
.LASF1359:
	.string	"mobjinfo_t"
.LASF1148:
	.string	"S_BLUETORCH3"
.LASF1149:
	.string	"S_BLUETORCH4"
.LASF206:
	.string	"SPR_SMRT"
.LASF308:
	.string	"S_BFGFLASH1"
.LASF309:
	.string	"S_BFGFLASH2"
.LASF1572:
	.string	"dc_x"
.LASF842:
	.string	"S_SPID_DIE2"
.LASF1545:
	.string	"viewx"
.LASF1546:
	.string	"viewy"
.LASF123:
	.string	"SPR_BOS2"
.LASF845:
	.string	"S_SPID_DIE5"
.LASF846:
	.string	"S_SPID_DIE6"
.LASF847:
	.string	"S_SPID_DIE7"
.LASF848:
	.string	"S_SPID_DIE8"
.LASF1138:
	.string	"S_EVILEYE2"
.LASF1139:
	.string	"S_EVILEYE3"
.LASF1140:
	.string	"S_EVILEYE4"
.LASF313:
	.string	"S_PUFF1"
.LASF314:
	.string	"S_PUFF2"
.LASF315:
	.string	"S_PUFF3"
.LASF134:
	.string	"SPR_BOSF"
.LASF1465:
	.string	"lines"
.LASF1523:
	.string	"numframes"
.LASF122:
	.string	"SPR_BOSS"
.LASF1550:
	.string	"centerxfrac"
.LASF58:
	.string	"position"
.LASF1231:
	.string	"MT_PLASMA"
.LASF867:
	.string	"S_BSPI_ATK1"
.LASF868:
	.string	"S_BSPI_ATK2"
.LASF869:
	.string	"S_BSPI_ATK3"
.LASF870:
	.string	"S_BSPI_ATK4"
.LASF1049:
	.string	"S_BKEY2"
.LASF28:
	.string	"NUMWEAPONS"
.LASF854:
	.string	"S_BSPI_SIGHT"
.LASF2:
	.string	"long unsigned int"
.LASF856:
	.string	"S_BSPI_RUN2"
.LASF1000:
	.string	"S_BRAIN_DIE1"
.LASF1001:
	.string	"S_BRAIN_DIE2"
.LASF1002:
	.string	"S_BRAIN_DIE3"
.LASF1003:
	.string	"S_BRAIN_DIE4"
.LASF335:
	.string	"S_BFGSHOT"
.LASF1141:
	.string	"S_FLOATSKULL"
.LASF491:
	.string	"S_VILE_DIE1"
.LASF492:
	.string	"S_VILE_DIE2"
.LASF493:
	.string	"S_VILE_DIE3"
.LASF494:
	.string	"S_VILE_DIE4"
.LASF495:
	.string	"S_VILE_DIE5"
.LASF496:
	.string	"S_VILE_DIE6"
.LASF497:
	.string	"S_VILE_DIE7"
.LASF498:
	.string	"S_VILE_DIE8"
.LASF499:
	.string	"S_VILE_DIE9"
.LASF1441:
	.string	"damagecount"
.LASF1362:
	.string	"MF_SHOOTABLE"
.LASF175:
	.string	"SPR_SMT2"
.LASF1051:
	.string	"S_RKEY2"
.LASF1022:
	.string	"S_ARM1"
.LASF1024:
	.string	"S_ARM2"
.LASF1117:
	.string	"S_HEADCANDLES"
.LASF153:
	.string	"SPR_PINS"
.LASF747:
	.string	"S_BOSS_STND"
.LASF727:
	.string	"S_HEAD_PAIN"
.LASF13:
	.string	"it_yellowcard"
.LASF1203:
	.string	"MT_TRACER"
.LASF608:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF610:
	.string	"S_FATT_DIE3"
.LASF611:
	.string	"S_FATT_DIE4"
.LASF612:
	.string	"S_FATT_DIE5"
.LASF613:
	.string	"S_FATT_DIE6"
.LASF614:
	.string	"S_FATT_DIE7"
.LASF615:
	.string	"S_FATT_DIE8"
.LASF616:
	.string	"S_FATT_DIE9"
.LASF683:
	.string	"S_TROO_XDIE2"
.LASF684:
	.string	"S_TROO_XDIE3"
.LASF685:
	.string	"S_TROO_XDIE4"
.LASF686:
	.string	"S_TROO_XDIE5"
.LASF687:
	.string	"S_TROO_XDIE6"
.LASF688:
	.string	"S_TROO_XDIE7"
.LASF689:
	.string	"S_TROO_XDIE8"
.LASF158:
	.string	"SPR_CLIP"
.LASF1613:
	.string	"sprdef"
.LASF1130:
	.string	"S_SHRTREDCOL"
.LASF1588:
	.string	"R_PointOnSegSide"
.LASF1173:
	.string	"S_HANGTSKULL"
.LASF1620:
	.string	"tr_y"
.LASF44:
	.string	"NUMPOWERS"
.LASF958:
	.string	"S_SSWV_ATK3"
.LASF959:
	.string	"S_SSWV_ATK4"
.LASF264:
	.string	"S_DSGUN10"
.LASF39:
	.string	"pw_strength"
.LASF1601:
	.string	"R_DrawSprite"
.LASF192:
	.string	"SPR_CAND"
.LASF1209:
	.string	"MT_SERGEANT"
.LASF1120:
	.string	"S_LIVESTICK"
.LASF1060:
	.string	"S_STIM"
.LASF34:
	.string	"am_cell"
.LASF12:
	.string	"it_bluecard"
.LASF1396:
	.string	"floorz"
.LASF723:
	.string	"S_HEAD_RUN1"
.LASF378:
	.string	"S_PLAY_DIE1"
.LASF379:
	.string	"S_PLAY_DIE2"
.LASF380:
	.string	"S_PLAY_DIE3"
.LASF381:
	.string	"S_PLAY_DIE4"
.LASF382:
	.string	"S_PLAY_DIE5"
.LASF383:
	.string	"S_PLAY_DIE6"
.LASF384:
	.string	"S_PLAY_DIE7"
.LASF394:
	.string	"S_POSS_STND"
.LASF350:
	.string	"S_TFOG"
.LASF1287:
	.string	"MT_MISC40"
.LASF1288:
	.string	"MT_MISC41"
.LASF1413:
	.string	"subsector_s"
.LASF710:
	.string	"S_SARG_DIE1"
.LASF711:
	.string	"S_SARG_DIE2"
.LASF712:
	.string	"S_SARG_DIE3"
.LASF713:
	.string	"S_SARG_DIE4"
.LASF1011:
	.string	"S_SPAWNFIRE1"
.LASF1012:
	.string	"S_SPAWNFIRE2"
.LASF1013:
	.string	"S_SPAWNFIRE3"
.LASF1014:
	.string	"S_SPAWNFIRE4"
.LASF1015:
	.string	"S_SPAWNFIRE5"
.LASF1016:
	.string	"S_SPAWNFIRE6"
.LASF1017:
	.string	"S_SPAWNFIRE7"
.LASF1018:
	.string	"S_SPAWNFIRE8"
.LASF682:
	.string	"S_TROO_XDIE1"
.LASF52:
	.string	"consistancy"
.LASF1414:
	.string	"sector"
.LASF1175:
	.string	"S_HANGTNOBRAIN"
.LASF1642:
	.string	"R_DrawTranslatedColumn"
.LASF330:
	.string	"S_PLASEXP2"
.LASF331:
	.string	"S_PLASEXP3"
.LASF332:
	.string	"S_PLASEXP4"
.LASF333:
	.string	"S_PLASEXP5"
.LASF25:
	.string	"wp_bfg"
.LASF1159:
	.string	"S_BTORCHSHRT2"
.LASF1160:
	.string	"S_BTORCHSHRT3"
.LASF1161:
	.string	"S_BTORCHSHRT4"
.LASF463:
	.string	"S_VILE_RUN1"
.LASF253:
	.string	"S_DSGUNDOWN"
.LASF465:
	.string	"S_VILE_RUN3"
.LASF466:
	.string	"S_VILE_RUN4"
.LASF467:
	.string	"S_VILE_RUN5"
.LASF468:
	.string	"S_VILE_RUN6"
.LASF469:
	.string	"S_VILE_RUN7"
.LASF470:
	.string	"S_VILE_RUN8"
.LASF471:
	.string	"S_VILE_RUN9"
.LASF714:
	.string	"S_SARG_DIE5"
.LASF715:
	.string	"S_SARG_DIE6"
.LASF1390:
	.string	"thinker"
.LASF555:
	.string	"S_SKEL_FIST1"
.LASF556:
	.string	"S_SKEL_FIST2"
.LASF557:
	.string	"S_SKEL_FIST3"
.LASF558:
	.string	"S_SKEL_FIST4"
.LASF294:
	.string	"S_PLASMA"
.LASF1073:
	.string	"S_PINS"
.LASF1491:
	.string	"post_t"
.LASF1146:
	.string	"S_BLUETORCH"
.LASF584:
	.string	"S_FATT_RUN1"
.LASF585:
	.string	"S_FATT_RUN2"
.LASF586:
	.string	"S_FATT_RUN3"
.LASF587:
	.string	"S_FATT_RUN4"
.LASF41:
	.string	"pw_ironfeet"
.LASF589:
	.string	"S_FATT_RUN6"
.LASF590:
	.string	"S_FATT_RUN7"
.LASF591:
	.string	"S_FATT_RUN8"
.LASF1122:
	.string	"S_MEAT2"
.LASF1123:
	.string	"S_MEAT3"
.LASF1124:
	.string	"S_MEAT4"
.LASF1125:
	.string	"S_MEAT5"
.LASF237:
	.string	"S_PISTOLFLASH"
.LASF1452:
	.string	"floorheight"
.LASF457:
	.string	"S_SPOS_RAISE2"
.LASF458:
	.string	"S_SPOS_RAISE3"
.LASF459:
	.string	"S_SPOS_RAISE4"
.LASF460:
	.string	"S_SPOS_RAISE5"
.LASF149:
	.string	"SPR_MEDI"
.LASF151:
	.string	"SPR_PINV"
.LASF999:
	.string	"S_BRAIN_PAIN"
.LASF270:
	.string	"S_CHAINDOWN"
.LASF1373:
	.string	"MF_SLIDE"
.LASF1609:
	.string	"bestscale"
.LASF489:
	.string	"S_VILE_PAIN"
.LASF536:
	.string	"S_TRACER"
.LASF956:
	.string	"S_SSWV_ATK1"
.LASF957:
	.string	"S_SSWV_ATK2"
.LASF486:
	.string	"S_VILE_HEAL1"
.LASF487:
	.string	"S_VILE_HEAL2"
.LASF488:
	.string	"S_VILE_HEAL3"
.LASF961:
	.string	"S_SSWV_ATK6"
.LASF1406:
	.string	"movecount"
.LASF143:
	.string	"SPR_RKEY"
.LASF1107:
	.string	"S_STALAG"
.LASF1596:
	.string	"Z_Malloc"
.LASF822:
	.string	"S_SPID_STND2"
.LASF531:
	.string	"S_SMOKE1"
.LASF64:
	.string	"angle_t"
.LASF1455:
	.string	"ceilingpic"
.LASF1108:
	.string	"S_BLOODYTWITCH"
.LASF1177:
	.string	"S_SMALLPOOL"
.LASF1529:
	.string	"pspdef_t"
.LASF1303:
	.string	"MT_MISC56"
.LASF606:
	.string	"S_FATT_PAIN"
.LASF1597:
	.string	"R_RenderMaskedSegRange"
.LASF1512:
	.string	"startfrac"
.LASF1560:
	.string	"vissprites"
.LASF370:
	.string	"S_PLAY_RUN1"
.LASF371:
	.string	"S_PLAY_RUN2"
.LASF372:
	.string	"S_PLAY_RUN3"
.LASF373:
	.string	"S_PLAY_RUN4"
.LASF1098:
	.string	"S_BPAK"
.LASF62:
	.string	"double"
.LASF138:
	.string	"SPR_BEXP"
.LASF1417:
	.string	"player_s"
.LASF1055:
	.string	"S_BSKULL2"
.LASF1368:
	.string	"MF_SPAWNCEILING"
.LASF97:
	.string	"SPR_PUFF"
.LASF984:
	.string	"S_COMMKEEN"
.LASF1434:
	.string	"usedown"
.LASF1617:
	.string	"thing"
.LASF776:
	.string	"S_BOS2_STND"
.LASF103:
	.string	"SPR_BFS1"
.LASF1007:
	.string	"S_SPAWN1"
.LASF1008:
	.string	"S_SPAWN2"
.LASF1009:
	.string	"S_SPAWN3"
.LASF1010:
	.string	"S_SPAWN4"
.LASF1180:
	.string	"S_TECHLAMP2"
.LASF1181:
	.string	"S_TECHLAMP3"
.LASF26:
	.string	"wp_chainsaw"
.LASF1217:
	.string	"MT_BABY"
.LASF1432:
	.string	"maxammo"
.LASF1121:
	.string	"S_LIVESTICK2"
.LASF1166:
	.string	"S_RTORCHSHRT"
.LASF1263:
	.string	"MT_MISC19"
.LASF125:
	.string	"SPR_SPID"
.LASF722:
	.string	"S_HEAD_STND"
.LASF1513:
	.string	"scale"
.LASF697:
	.string	"S_SARG_RUN1"
.LASF698:
	.string	"S_SARG_RUN2"
.LASF700:
	.string	"S_SARG_RUN4"
.LASF701:
	.string	"S_SARG_RUN5"
.LASF702:
	.string	"S_SARG_RUN6"
.LASF703:
	.string	"S_SARG_RUN7"
.LASF704:
	.string	"S_SARG_RUN8"
.LASF1241:
	.string	"MT_MISC1"
.LASF1242:
	.string	"MT_MISC2"
.LASF1243:
	.string	"MT_MISC3"
.LASF1244:
	.string	"MT_MISC4"
.LASF1245:
	.string	"MT_MISC5"
.LASF1246:
	.string	"MT_MISC6"
.LASF1247:
	.string	"MT_MISC7"
.LASF1248:
	.string	"MT_MISC8"
.LASF1249:
	.string	"MT_MISC9"
.LASF287:
	.string	"S_SAW"
.LASF154:
	.string	"SPR_MEGA"
.LASF376:
	.string	"S_PLAY_PAIN"
.LASF328:
	.string	"S_PLASBALL2"
.LASF1527:
	.string	"ps_flash"
.LASF1643:
	.string	"R_NewVisSprite"
.LASF1418:
	.string	"playerstate"
.LASF132:
	.string	"SPR_KEEN"
.LASF962:
	.string	"S_SSWV_PAIN"
.LASF1343:
	.string	"painstate"
.LASF997:
	.string	"S_KEENPAIN2"
.LASF43:
	.string	"pw_infrared"
.LASF484:
	.string	"S_VILE_ATK10"
.LASF485:
	.string	"S_VILE_ATK11"
.LASF1508:
	.string	"topoffset"
.LASF963:
	.string	"S_SSWV_PAIN2"
.LASF1327:
	.string	"MT_MISC80"
.LASF1350:
	.string	"deathsound"
.LASF1037:
	.string	"S_BON1A"
.LASF1038:
	.string	"S_BON1B"
.LASF1039:
	.string	"S_BON1C"
.LASF1040:
	.string	"S_BON1D"
.LASF1041:
	.string	"S_BON1E"
.LASF1472:
	.string	"sector_t"
.LASF1542:
	.string	"lastspritelump"
.LASF1506:
	.string	"width"
.LASF152:
	.string	"SPR_PSTR"
.LASF1265:
	.string	"MT_MISC21"
.LASF708:
	.string	"S_SARG_PAIN"
.LASF1260:
	.string	"MT_CLIP"
.LASF167:
	.string	"SPR_BFUG"
.LASF1315:
	.string	"MT_MISC68"
.LASF1033:
	.string	"S_BBAR1"
.LASF1034:
	.string	"S_BBAR2"
.LASF1035:
	.string	"S_BBAR3"
.LASF221:
	.string	"S_LIGHTDONE"
.LASF872:
	.string	"S_BSPI_PAIN2"
.LASF1426:
	.string	"backpack"
.LASF672:
	.string	"S_TROO_ATK1"
.LASF673:
	.string	"S_TROO_ATK2"
.LASF674:
	.string	"S_TROO_ATK3"
.LASF816:
	.string	"S_SKULL_DIE2"
.LASF817:
	.string	"S_SKULL_DIE3"
.LASF818:
	.string	"S_SKULL_DIE4"
.LASF819:
	.string	"S_SKULL_DIE5"
.LASF820:
	.string	"S_SKULL_DIE6"
.LASF171:
	.string	"SPR_PLAS"
.LASF1043:
	.string	"S_BON2A"
.LASF1044:
	.string	"S_BON2B"
.LASF84:
	.string	"SPR_PISF"
.LASF83:
	.string	"SPR_PISG"
.LASF1047:
	.string	"S_BON2E"
.LASF1270:
	.string	"MT_CHAINGUN"
.LASF319:
	.string	"S_TBALLX1"
.LASF320:
	.string	"S_TBALLX2"
.LASF321:
	.string	"S_TBALLX3"
.LASF29:
	.string	"wp_nochange"
.LASF1539:
	.string	"colormaps"
.LASF1207:
	.string	"MT_CHAINGUY"
.LASF1552:
	.string	"projection"
.LASF1451:
	.string	"degenmobj_t"
.LASF815:
	.string	"S_SKULL_DIE1"
.LASF1531:
	.string	"PST_DEAD"
.LASF1178:
	.string	"S_BRAINSTEM"
.LASF983:
	.string	"S_KEENSTND"
.LASF108:
	.string	"SPR_PLAY"
.LASF1372:
	.string	"MF_NOCLIP"
.LASF1428:
	.string	"readyweapon"
.LASF11:
	.string	"long long unsigned int"
.LASF1485:
	.string	"offset"
.LASF1118:
	.string	"S_HEADCANDLES2"
.LASF1237:
	.string	"MT_IFOG"
.LASF1557:
	.string	"fuzzcolfunc"
.LASF199:
	.string	"SPR_FSKU"
.LASF434:
	.string	"S_SPOS_RUN6"
.LASF290:
	.string	"S_SAWUP"
.LASF1023:
	.string	"S_ARM1A"
.LASF626:
	.string	"S_CPOS_STND"
.LASF1278:
	.string	"MT_MISC31"
.LASF1400:
	.string	"momz"
.LASF1097:
	.string	"S_SBOX"
.LASF1458:
	.string	"soundtraversed"
.LASF1281:
	.string	"MT_MISC34"
.LASF1468:
	.string	"bbox"
.LASF329:
	.string	"S_PLASEXP"
.LASF1585:
	.string	"spritename"
.LASF1284:
	.string	"MT_MISC37"
.LASF1113:
	.string	"S_DEADBOTTOM"
.LASF1170:
	.string	"S_HANGNOGUTS"
.LASF1616:
	.string	"R_AddSprites"
.LASF1342:
	.string	"attacksound"
.LASF1074:
	.string	"S_PINS2"
.LASF1075:
	.string	"S_PINS3"
.LASF1076:
	.string	"S_PINS4"
.LASF928:
	.string	"S_PAIN_ATK1"
.LASF929:
	.string	"S_PAIN_ATK2"
.LASF930:
	.string	"S_PAIN_ATK3"
.LASF931:
	.string	"S_PAIN_ATK4"
.LASF240:
	.string	"S_SGUNUP"
.LASF1370:
	.string	"MF_DROPOFF"
.LASF1470:
	.string	"frontsector"
.LASF1607:
	.string	"best"
.LASF193:
	.string	"SPR_CBRA"
.LASF1348:
	.string	"deathstate"
.LASF1025:
	.string	"S_ARM2A"
.LASF894:
	.string	"S_CYBER_STND"
.LASF1507:
	.string	"leftoffset"
.LASF1053:
	.string	"S_YKEY2"
.LASF503:
	.string	"S_FIRE3"
.LASF1341:
	.string	"reactiontime"
.LASF508:
	.string	"S_FIRE8"
.LASF748:
	.string	"S_BOSS_STND2"
.LASF1566:
	.string	"mceilingclip"
.LASF1579:
	.string	"dc_translation"
.LASF643:
	.string	"S_CPOS_DIE2"
.LASF1392:
	.string	"sprev"
.LASF291:
	.string	"S_SAW1"
.LASF292:
	.string	"S_SAW2"
.LASF293:
	.string	"S_SAW3"
.LASF1036:
	.string	"S_BON1"
.LASF1042:
	.string	"S_BON2"
.LASF1409:
	.string	"player"
.LASF288:
	.string	"S_SAWB"
.LASF676:
	.string	"S_TROO_PAIN2"
.LASF1223:
	.string	"MT_BOSSSPIT"
.LASF501:
	.string	"S_FIRE1"
.LASF502:
	.string	"S_FIRE2"
.LASF63:
	.string	"fixed_t"
.LASF504:
	.string	"S_FIRE4"
.LASF505:
	.string	"S_FIRE5"
.LASF506:
	.string	"S_FIRE6"
.LASF507:
	.string	"S_FIRE7"
.LASF161:
	.string	"SPR_BROK"
.LASF509:
	.string	"S_FIRE9"
.LASF1291:
	.string	"MT_MISC44"
.LASF1292:
	.string	"MT_MISC45"
.LASF60:
	.string	"lumpinfo_t"
.LASF1094:
	.string	"S_CELL"
.LASF1294:
	.string	"MT_MISC47"
.LASF159:
	.string	"SPR_AMMO"
.LASF1295:
	.string	"MT_MISC48"
.LASF1296:
	.string	"MT_MISC49"
.LASF807:
	.string	"S_SKULL_RUN1"
.LASF808:
	.string	"S_SKULL_RUN2"
.LASF1174:
	.string	"S_HANGTLOOKUP"
.LASF1363:
	.string	"MF_NOSECTOR"
.LASF269:
	.string	"S_CHAIN"
.LASF299:
	.string	"S_PLASMAFLASH1"
.LASF255:
	.string	"S_DSGUN1"
.LASF256:
	.string	"S_DSGUN2"
.LASF150:
	.string	"SPR_SOUL"
.LASF110:
	.string	"SPR_SPOS"
.LASF259:
	.string	"S_DSGUN5"
.LASF260:
	.string	"S_DSGUN6"
.LASF261:
	.string	"S_DSGUN7"
.LASF262:
	.string	"S_DSGUN8"
.LASF263:
	.string	"S_DSGUN9"
.LASF427:
	.string	"S_SPOS_STND"
.LASF130:
	.string	"SPR_PAIN"
.LASF655:
	.string	"S_CPOS_RAISE1"
.LASF1427:
	.string	"frags"
.LASF1618:
	.string	"R_ProjectSprite"
.LASF1422:
	.string	"armorpoints"
.LASF54:
	.string	"buttons"
.LASF304:
	.string	"S_BFG1"
.LASF305:
	.string	"S_BFG2"
.LASF306:
	.string	"S_BFG3"
.LASF307:
	.string	"S_BFG4"
.LASF219:
	.string	"spritenum_t"
.LASF266:
	.string	"S_DSNR2"
.LASF806:
	.string	"S_SKULL_STND2"
.LASF1069:
	.string	"S_PINV2"
.LASF1070:
	.string	"S_PINV3"
.LASF699:
	.string	"S_SARG_RUN3"
.LASF1184:
	.string	"S_TECH2LAMP2"
.LASF1185:
	.string	"S_TECH2LAMP3"
.LASF1186:
	.string	"S_TECH2LAMP4"
.LASF1466:
	.string	"line_s"
.LASF10:
	.string	"long long int"
.LASF82:
	.string	"SPR_PUNG"
.LASF650:
	.string	"S_CPOS_XDIE2"
.LASF651:
	.string	"S_CPOS_XDIE3"
.LASF652:
	.string	"S_CPOS_XDIE4"
.LASF653:
	.string	"S_CPOS_XDIE5"
.LASF654:
	.string	"S_CPOS_XDIE6"
.LASF835:
	.string	"S_SPID_ATK1"
.LASF836:
	.string	"S_SPID_ATK2"
.LASF837:
	.string	"S_SPID_ATK3"
.LASF838:
	.string	"S_SPID_ATK4"
.LASF559:
	.string	"S_SKEL_MISS1"
.LASF560:
	.string	"S_SKEL_MISS2"
.LASF561:
	.string	"S_SKEL_MISS3"
.LASF562:
	.string	"S_SKEL_MISS4"
.LASF316:
	.string	"S_PUFF4"
.LASF1056:
	.string	"S_RSKULL"
.LASF888:
	.string	"S_ARACH_PLAZ2"
.LASF1297:
	.string	"MT_MISC50"
.LASF736:
	.string	"S_HEAD_RAISE1"
.LASF1332:
	.string	"MT_MISC85"
.LASF737:
	.string	"S_HEAD_RAISE2"
.LASF738:
	.string	"S_HEAD_RAISE3"
.LASF1435:
	.string	"cheats"
.LASF145:
	.string	"SPR_BSKU"
.LASF740:
	.string	"S_HEAD_RAISE5"
.LASF741:
	.string	"S_HEAD_RAISE6"
.LASF1486:
	.string	"sidedef"
.LASF1595:
	.string	"memset"
.LASF1275:
	.string	"MT_SUPERSHOTGUN"
.LASF156:
	.string	"SPR_PMAP"
.LASF1004:
	.string	"S_BRAINEYE"
.LASF157:
	.string	"SPR_PVIS"
.LASF1530:
	.string	"PST_LIVE"
.LASF1603:
	.string	"cliptop"
.LASF1233:
	.string	"MT_ARACHPLAZ"
.LASF1379:
	.string	"MF_NOBLOOD"
.LASF482:
	.string	"S_VILE_ATK8"
.LASF423:
	.string	"S_POSS_RAISE1"
.LASF424:
	.string	"S_POSS_RAISE2"
.LASF425:
	.string	"S_POSS_RAISE3"
.LASF426:
	.string	"S_POSS_RAISE4"
.LASF278:
	.string	"S_MISSILEDOWN"
.LASF1502:
	.string	"sprtopclip"
.LASF1142:
	.string	"S_FLOATSKULL2"
.LASF1143:
	.string	"S_FLOATSKULL3"
.LASF1543:
	.string	"numsprites"
.LASF1077:
	.string	"S_MEGA"
.LASF757:
	.string	"S_BOSS_ATK1"
.LASF758:
	.string	"S_BOSS_ATK2"
.LASF759:
	.string	"S_BOSS_ATK3"
.LASF1395:
	.string	"subsector"
.LASF215:
	.string	"SPR_BRS1"
.LASF1450:
	.string	"vertex_t"
.LASF564:
	.string	"S_SKEL_PAIN2"
.LASF1101:
	.string	"S_CSAW"
.LASF38:
	.string	"pw_invulnerability"
.LASF744:
	.string	"S_BRBALLX1"
.LASF745:
	.string	"S_BRBALLX2"
.LASF746:
	.string	"S_BRBALLX3"
.LASF874:
	.string	"S_BSPI_DIE2"
.LASF875:
	.string	"S_BSPI_DIE3"
.LASF876:
	.string	"S_BSPI_DIE4"
.LASF877:
	.string	"S_BSPI_DIE5"
.LASF22:
	.string	"wp_chaingun"
.LASF879:
	.string	"S_BSPI_DIE7"
.LASF430:
	.string	"S_SPOS_RUN2"
.LASF1471:
	.string	"backsector"
.LASF431:
	.string	"S_SPOS_RUN3"
.LASF933:
	.string	"S_PAIN_PAIN2"
.LASF568:
	.string	"S_SKEL_DIE4"
.LASF164:
	.string	"SPR_SHEL"
.LASF1316:
	.string	"MT_MISC69"
.LASF1423:
	.string	"armortype"
.LASF45:
	.string	"false"
.LASF216:
	.string	"SPR_TLMP"
.LASF1600:
	.string	"R_DrawMasked"
.LASF1375:
	.string	"MF_TELEPORT"
.LASF395:
	.string	"S_POSS_STND2"
.LASF1274:
	.string	"MT_SHOTGUN"
.LASF1561:
	.string	"vissprite_p"
.LASF1511:
	.string	"vissprite_s"
.LASF1518:
	.string	"vissprite_t"
.LASF1199:
	.string	"MT_SHOTGUY"
.LASF1438:
	.string	"itemcount"
.LASF1179:
	.string	"S_TECHLAMP"
.LASF1220:
	.string	"MT_WOLFSS"
.LASF777:
	.string	"S_BOS2_STND2"
.LASF1459:
	.string	"soundtarget"
.LASF272:
	.string	"S_CHAIN1"
.LASF273:
	.string	"S_CHAIN2"
.LASF274:
	.string	"S_CHAIN3"
.LASF325:
	.string	"S_RBALLX2"
.LASF326:
	.string	"S_RBALLX3"
.LASF201:
	.string	"SPR_TBLU"
.LASF428:
	.string	"S_SPOS_STND2"
.LASF4:
	.string	"unsigned int"
.LASF1587:
	.string	"overflowsprite"
.LASF1391:
	.string	"snext"
.LASF1590:
	.string	"FixedDiv"
.LASF37:
	.string	"am_noammo"
.LASF1619:
	.string	"tr_x"
.LASF1388:
	.string	"thinker_s"
.LASF75:
	.string	"thinker_t"
.LASF1584:
	.string	"maxframe"
.LASF404:
	.string	"S_POSS_ATK1"
.LASF405:
	.string	"S_POSS_ATK2"
.LASF406:
	.string	"S_POSS_ATK3"
.LASF1318:
	.string	"MT_MISC71"
.LASF1167:
	.string	"S_RTORCHSHRT2"
.LASF1168:
	.string	"S_RTORCHSHRT3"
.LASF1169:
	.string	"S_RTORCHSHRT4"
.LASF1071:
	.string	"S_PINV4"
.LASF8:
	.string	"short int"
.LASF855:
	.string	"S_BSPI_RUN1"
.LASF1324:
	.string	"MT_MISC77"
.LASF1325:
	.string	"MT_MISC78"
.LASF1326:
	.string	"MT_MISC79"
.LASF1522:
	.string	"spriteframe_t"
.LASF1215:
	.string	"MT_SKULL"
.LASF1202:
	.string	"MT_UNDEAD"
.LASF1565:
	.string	"mfloorclip"
.LASF72:
	.string	"prev"
.LASF565:
	.string	"S_SKEL_DIE1"
.LASF566:
	.string	"S_SKEL_DIE2"
.LASF567:
	.string	"S_SKEL_DIE3"
.LASF112:
	.string	"SPR_FIRE"
.LASF569:
	.string	"S_SKEL_DIE5"
.LASF570:
	.string	"S_SKEL_DIE6"
.LASF1176:
	.string	"S_COLONGIBS"
.LASF217:
	.string	"SPR_TLP2"
.LASF327:
	.string	"S_PLASBALL"
.LASF173:
	.string	"SPR_SGN2"
.LASF78:
	.string	"options"
.LASF126:
	.string	"SPR_BSPI"
.LASF128:
	.string	"SPR_APBX"
.LASF1446:
	.string	"colormap"
.LASF1250:
	.string	"MT_MISC10"
.LASF1251:
	.string	"MT_MISC11"
.LASF1252:
	.string	"MT_MISC12"
.LASF1254:
	.string	"MT_MISC13"
.LASF1256:
	.string	"MT_MISC14"
.LASF1257:
	.string	"MT_MISC15"
.LASF1258:
	.string	"MT_MISC16"
.LASF1261:
	.string	"MT_MISC17"
.LASF1262:
	.string	"MT_MISC18"
.LASF1090:
	.string	"S_CLIP"
.LASF1352:
	.string	"radius"
.LASF1404:
	.string	"health"
.LASF1224:
	.string	"MT_BOSSTARGET"
.LASF1383:
	.string	"MF_COUNTITEM"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10"
.LASF0:
	.string	"r_things.c"
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
