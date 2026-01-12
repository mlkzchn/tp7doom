	.file	"r_draw.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "r_draw.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 49
rcsid:
	.string	"$Id: r_draw.c,v 1.4 1997/02/03 16:47:55 b1 Exp $"
	.globl	viewimage
	.bss
	.align 8
	.type	viewimage, @object
	.size	viewimage, 8
viewimage:
	.zero	8
	.globl	viewwidth
	.align 4
	.type	viewwidth, @object
	.size	viewwidth, 4
viewwidth:
	.zero	4
	.globl	scaledviewwidth
	.align 4
	.type	scaledviewwidth, @object
	.size	scaledviewwidth, 4
scaledviewwidth:
	.zero	4
	.globl	viewheight
	.align 4
	.type	viewheight, @object
	.size	viewheight, 4
viewheight:
	.zero	4
	.globl	viewwindowx
	.align 4
	.type	viewwindowx, @object
	.size	viewwindowx, 4
viewwindowx:
	.zero	4
	.globl	viewwindowy
	.align 4
	.type	viewwindowy, @object
	.size	viewwindowy, 4
viewwindowy:
	.zero	4
	.globl	ylookup
	.align 32
	.type	ylookup, @object
	.size	ylookup, 6656
ylookup:
	.zero	6656
	.globl	columnofs
	.align 32
	.type	columnofs, @object
	.size	columnofs, 4480
columnofs:
	.zero	4480
	.globl	translations
	.align 32
	.type	translations, @object
	.size	translations, 768
translations:
	.zero	768
	.globl	dc_colormap
	.align 8
	.type	dc_colormap, @object
	.size	dc_colormap, 8
dc_colormap:
	.zero	8
	.globl	dc_x
	.align 4
	.type	dc_x, @object
	.size	dc_x, 4
dc_x:
	.zero	4
	.globl	dc_yl
	.align 4
	.type	dc_yl, @object
	.size	dc_yl, 4
dc_yl:
	.zero	4
	.globl	dc_yh
	.align 4
	.type	dc_yh, @object
	.size	dc_yh, 4
dc_yh:
	.zero	4
	.globl	dc_iscale
	.align 4
	.type	dc_iscale, @object
	.size	dc_iscale, 4
dc_iscale:
	.zero	4
	.globl	dc_texturemid
	.align 4
	.type	dc_texturemid, @object
	.size	dc_texturemid, 4
dc_texturemid:
	.zero	4
	.globl	dc_source
	.align 8
	.type	dc_source, @object
	.size	dc_source, 8
dc_source:
	.zero	8
	.globl	dccount
	.align 4
	.type	dccount, @object
	.size	dccount, 4
dccount:
	.zero	4
	.section	.rodata
.LC0:
	.string	"R_DrawColumn: %i to %i at %i"
	.text
	.globl	R_DrawColumn
	.type	R_DrawColumn, @function
R_DrawColumn:
.LFB0:
	.file 1 "r_draw.c"
	.loc 1 107 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# r_draw.c:113:     count = dc_yh - dc_yl; 
	.loc 1 113 19
	movl	dc_yh(%rip), %edx	# dc_yh, dc_yh.0_1
	movl	dc_yl(%rip), %eax	# dc_yl, dc_yl.1_2
# r_draw.c:113:     count = dc_yh - dc_yl; 
	.loc 1 113 11
	subl	%eax, %edx	# dc_yl.1_2, tmp112
	movl	%edx, -20(%rbp)	# tmp112, count
# r_draw.c:116:     if (count < 0) 
	.loc 1 116 8
	cmpl	$0, -20(%rbp)	#, count
	js	.L7	#,
# r_draw.c:120:     if ((unsigned)dc_x >= SCREENWIDTH
	.loc 1 120 9
	movl	dc_x(%rip), %eax	# dc_x, dc_x.2_3
# r_draw.c:120:     if ((unsigned)dc_x >= SCREENWIDTH
	.loc 1 120 8
	cmpl	$319, %eax	#, dc_x.3_4
	ja	.L4	#,
# r_draw.c:121: 	|| dc_yl < 0
	.loc 1 121 11
	movl	dc_yl(%rip), %eax	# dc_yl, dc_yl.4_5
# r_draw.c:121: 	|| dc_yl < 0
	.loc 1 121 2
	testl	%eax, %eax	# dc_yl.4_5
	js	.L4	#,
# r_draw.c:122: 	|| dc_yh >= SCREENHEIGHT) 
	.loc 1 122 11
	movl	dc_yh(%rip), %eax	# dc_yh, dc_yh.5_6
# r_draw.c:122: 	|| dc_yh >= SCREENHEIGHT) 
	.loc 1 122 2
	cmpl	$199, %eax	#, dc_yh.5_6
	jle	.L5	#,
.L4:
# r_draw.c:123: 	I_Error ("R_DrawColumn: %i to %i at %i", dc_yl, dc_yh, dc_x); 
	.loc 1 123 2
	movl	dc_x(%rip), %ecx	# dc_x, dc_x.6_7
	movl	dc_yh(%rip), %edx	# dc_yh, dc_yh.7_8
	movl	dc_yl(%rip), %eax	# dc_yl, dc_yl.8_9
	movl	%eax, %esi	# dc_yl.8_9,
	leaq	.LC0(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L5:
# r_draw.c:129:     dest = ylookup[dc_yl] + columnofs[dc_x];  
	.loc 1 129 19
	movl	dc_yl(%rip), %eax	# dc_yl, dc_yl.9_10
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp115
	leaq	ylookup(%rip), %rax	#, tmp116
	movq	(%rdx,%rax), %rdx	# ylookup[dc_yl.9_10], _11
# r_draw.c:129:     dest = ylookup[dc_yl] + columnofs[dc_x];  
	.loc 1 129 38
	movl	dc_x(%rip), %eax	# dc_x, dc_x.10_12
	cltq
	leaq	0(,%rax,4), %rcx	#, tmp118
	leaq	columnofs(%rip), %rax	#, tmp119
	movl	(%rcx,%rax), %eax	# columnofs[dc_x.10_12], _13
	cltq
# r_draw.c:129:     dest = ylookup[dc_yl] + columnofs[dc_x];  
	.loc 1 129 10
	addq	%rdx, %rax	# _11, tmp120
	movq	%rax, -8(%rbp)	# tmp120, dest
# r_draw.c:133:     fracstep = dc_iscale; 
	.loc 1 133 14
	movl	dc_iscale(%rip), %eax	# dc_iscale, tmp121
	movl	%eax, -12(%rbp)	# tmp121, fracstep
# r_draw.c:134:     frac = dc_texturemid + (dc_yl-centery)*fracstep; 
	.loc 1 134 34
	movl	dc_yl(%rip), %edx	# dc_yl, dc_yl.11_15
	movl	centery(%rip), %eax	# centery, centery.12_16
	subl	%eax, %edx	# centery.12_16, _17
# r_draw.c:134:     frac = dc_texturemid + (dc_yl-centery)*fracstep; 
	.loc 1 134 43
	imull	-12(%rbp), %edx	# fracstep, _18
# r_draw.c:134:     frac = dc_texturemid + (dc_yl-centery)*fracstep; 
	.loc 1 134 26
	movl	dc_texturemid(%rip), %eax	# dc_texturemid, dc_texturemid.13_19
# r_draw.c:134:     frac = dc_texturemid + (dc_yl-centery)*fracstep; 
	.loc 1 134 10
	addl	%edx, %eax	# _18, tmp122
	movl	%eax, -16(%rbp)	# tmp122, frac
.L6:
# r_draw.c:143: 	*dest = dc_colormap[dc_source[(frac>>FRACBITS)&127]];
	.loc 1 143 21
	movq	dc_colormap(%rip), %rdx	# dc_colormap, dc_colormap.14_20
# r_draw.c:143: 	*dest = dc_colormap[dc_source[(frac>>FRACBITS)&127]];
	.loc 1 143 31
	movq	dc_source(%rip), %rax	# dc_source, dc_source.15_21
# r_draw.c:143: 	*dest = dc_colormap[dc_source[(frac>>FRACBITS)&127]];
	.loc 1 143 37
	movl	-16(%rbp), %ecx	# frac, tmp123
	sarl	$16, %ecx	#, _22
# r_draw.c:143: 	*dest = dc_colormap[dc_source[(frac>>FRACBITS)&127]];
	.loc 1 143 48
	movslq	%ecx, %rcx	# _22, _23
	andl	$127, %ecx	#, _24
# r_draw.c:143: 	*dest = dc_colormap[dc_source[(frac>>FRACBITS)&127]];
	.loc 1 143 31
	addq	%rcx, %rax	# _24, _25
	movzbl	(%rax), %eax	# *_25, _26
	movzbl	%al, %eax	# _26, _27
# r_draw.c:143: 	*dest = dc_colormap[dc_source[(frac>>FRACBITS)&127]];
	.loc 1 143 21
	addq	%rdx, %rax	# dc_colormap.14_20, _28
	movzbl	(%rax), %edx	# *_28, _29
# r_draw.c:143: 	*dest = dc_colormap[dc_source[(frac>>FRACBITS)&127]];
	.loc 1 143 8
	movq	-8(%rbp), %rax	# dest, tmp124
	movb	%dl, (%rax)	# _29, *dest_32
# r_draw.c:145: 	dest += SCREENWIDTH; 
	.loc 1 145 7
	addq	$320, -8(%rbp)	#, dest
# r_draw.c:146: 	frac += fracstep;
	.loc 1 146 7
	movl	-12(%rbp), %eax	# fracstep, tmp125
	addl	%eax, -16(%rbp)	# tmp125, frac
# r_draw.c:148:     } while (count--); 
	.loc 1 148 19 discriminator 1
	movl	-20(%rbp), %eax	# count, count.16_30
	leal	-1(%rax), %edx	#, tmp126
	movl	%edx, -20(%rbp)	# tmp126, count
# r_draw.c:148:     } while (count--); 
	.loc 1 148 14 discriminator 1
	testl	%eax, %eax	# count.16_30
	jne	.L6	#,
	jmp	.L1	#
.L7:
# r_draw.c:117: 	return; 
	.loc 1 117 2
	nop	
.L1:
# r_draw.c:149: } 
	.loc 1 149 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	R_DrawColumn, .-R_DrawColumn
	.globl	R_DrawColumnLow
	.type	R_DrawColumnLow, @function
R_DrawColumnLow:
.LFB1:
	.loc 1 213 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# r_draw.c:220:     count = dc_yh - dc_yl; 
	.loc 1 220 19
	movl	dc_yh(%rip), %edx	# dc_yh, dc_yh.17_1
	movl	dc_yl(%rip), %eax	# dc_yl, dc_yl.18_2
# r_draw.c:220:     count = dc_yh - dc_yl; 
	.loc 1 220 11
	subl	%eax, %edx	# dc_yl.18_2, tmp121
	movl	%edx, -28(%rbp)	# tmp121, count
# r_draw.c:223:     if (count < 0) 
	.loc 1 223 8
	cmpl	$0, -28(%rbp)	#, count
	js	.L14	#,
# r_draw.c:227:     if ((unsigned)dc_x >= SCREENWIDTH
	.loc 1 227 9
	movl	dc_x(%rip), %eax	# dc_x, dc_x.19_3
# r_draw.c:227:     if ((unsigned)dc_x >= SCREENWIDTH
	.loc 1 227 8
	cmpl	$319, %eax	#, dc_x.20_4
	ja	.L11	#,
# r_draw.c:228: 	|| dc_yl < 0
	.loc 1 228 11
	movl	dc_yl(%rip), %eax	# dc_yl, dc_yl.21_5
# r_draw.c:228: 	|| dc_yl < 0
	.loc 1 228 2
	testl	%eax, %eax	# dc_yl.21_5
	js	.L11	#,
# r_draw.c:229: 	|| dc_yh >= SCREENHEIGHT)
	.loc 1 229 11
	movl	dc_yh(%rip), %eax	# dc_yh, dc_yh.22_6
# r_draw.c:229: 	|| dc_yh >= SCREENHEIGHT)
	.loc 1 229 2
	cmpl	$199, %eax	#, dc_yh.22_6
	jle	.L12	#,
.L11:
# r_draw.c:232: 	I_Error ("R_DrawColumn: %i to %i at %i", dc_yl, dc_yh, dc_x);
	.loc 1 232 2
	movl	dc_x(%rip), %ecx	# dc_x, dc_x.23_7
	movl	dc_yh(%rip), %edx	# dc_yh, dc_yh.24_8
	movl	dc_yl(%rip), %eax	# dc_yl, dc_yl.25_9
	movl	%eax, %esi	# dc_yl.25_9,
	leaq	.LC0(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L12:
# r_draw.c:237:     dc_x <<= 1;
	.loc 1 237 10
	movl	dc_x(%rip), %eax	# dc_x, dc_x.26_10
	addl	%eax, %eax	# _11
	movl	%eax, dc_x(%rip)	# _11, dc_x
# r_draw.c:239:     dest = ylookup[dc_yl] + columnofs[dc_x];
	.loc 1 239 19
	movl	dc_yl(%rip), %eax	# dc_yl, dc_yl.27_12
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp124
	leaq	ylookup(%rip), %rax	#, tmp125
	movq	(%rdx,%rax), %rdx	# ylookup[dc_yl.27_12], _13
# r_draw.c:239:     dest = ylookup[dc_yl] + columnofs[dc_x];
	.loc 1 239 38
	movl	dc_x(%rip), %eax	# dc_x, dc_x.28_14
	cltq
	leaq	0(,%rax,4), %rcx	#, tmp127
	leaq	columnofs(%rip), %rax	#, tmp128
	movl	(%rcx,%rax), %eax	# columnofs[dc_x.28_14], _15
	cltq
# r_draw.c:239:     dest = ylookup[dc_yl] + columnofs[dc_x];
	.loc 1 239 10
	addq	%rdx, %rax	# _13, tmp129
	movq	%rax, -16(%rbp)	# tmp129, dest
# r_draw.c:240:     dest2 = ylookup[dc_yl] + columnofs[dc_x+1];
	.loc 1 240 20
	movl	dc_yl(%rip), %eax	# dc_yl, dc_yl.29_17
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp131
	leaq	ylookup(%rip), %rax	#, tmp132
	movq	(%rdx,%rax), %rdx	# ylookup[dc_yl.29_17], _18
# r_draw.c:240:     dest2 = ylookup[dc_yl] + columnofs[dc_x+1];
	.loc 1 240 44
	movl	dc_x(%rip), %eax	# dc_x, dc_x.30_19
	addl	$1, %eax	#, _20
# r_draw.c:240:     dest2 = ylookup[dc_yl] + columnofs[dc_x+1];
	.loc 1 240 39
	cltq
	leaq	0(,%rax,4), %rcx	#, tmp134
	leaq	columnofs(%rip), %rax	#, tmp135
	movl	(%rcx,%rax), %eax	# columnofs[_20], _21
	cltq
# r_draw.c:240:     dest2 = ylookup[dc_yl] + columnofs[dc_x+1];
	.loc 1 240 11
	addq	%rdx, %rax	# _18, tmp136
	movq	%rax, -8(%rbp)	# tmp136, dest2
# r_draw.c:242:     fracstep = dc_iscale; 
	.loc 1 242 14
	movl	dc_iscale(%rip), %eax	# dc_iscale, tmp137
	movl	%eax, -20(%rbp)	# tmp137, fracstep
# r_draw.c:243:     frac = dc_texturemid + (dc_yl-centery)*fracstep;
	.loc 1 243 34
	movl	dc_yl(%rip), %edx	# dc_yl, dc_yl.31_23
	movl	centery(%rip), %eax	# centery, centery.32_24
	subl	%eax, %edx	# centery.32_24, _25
# r_draw.c:243:     frac = dc_texturemid + (dc_yl-centery)*fracstep;
	.loc 1 243 43
	imull	-20(%rbp), %edx	# fracstep, _26
# r_draw.c:243:     frac = dc_texturemid + (dc_yl-centery)*fracstep;
	.loc 1 243 26
	movl	dc_texturemid(%rip), %eax	# dc_texturemid, dc_texturemid.33_27
# r_draw.c:243:     frac = dc_texturemid + (dc_yl-centery)*fracstep;
	.loc 1 243 10
	addl	%edx, %eax	# _26, tmp138
	movl	%eax, -24(%rbp)	# tmp138, frac
.L13:
# r_draw.c:248: 	*dest2 = *dest = dc_colormap[dc_source[(frac>>FRACBITS)&127]];
	.loc 1 248 30
	movq	dc_colormap(%rip), %rdx	# dc_colormap, dc_colormap.34_28
# r_draw.c:248: 	*dest2 = *dest = dc_colormap[dc_source[(frac>>FRACBITS)&127]];
	.loc 1 248 40
	movq	dc_source(%rip), %rax	# dc_source, dc_source.35_29
# r_draw.c:248: 	*dest2 = *dest = dc_colormap[dc_source[(frac>>FRACBITS)&127]];
	.loc 1 248 46
	movl	-24(%rbp), %ecx	# frac, tmp139
	sarl	$16, %ecx	#, _30
# r_draw.c:248: 	*dest2 = *dest = dc_colormap[dc_source[(frac>>FRACBITS)&127]];
	.loc 1 248 57
	movslq	%ecx, %rcx	# _30, _31
	andl	$127, %ecx	#, _32
# r_draw.c:248: 	*dest2 = *dest = dc_colormap[dc_source[(frac>>FRACBITS)&127]];
	.loc 1 248 40
	addq	%rcx, %rax	# _32, _33
	movzbl	(%rax), %eax	# *_33, _34
	movzbl	%al, %eax	# _34, _35
# r_draw.c:248: 	*dest2 = *dest = dc_colormap[dc_source[(frac>>FRACBITS)&127]];
	.loc 1 248 30
	addq	%rdx, %rax	# dc_colormap.34_28, _36
	movzbl	(%rax), %edx	# *_36, _37
# r_draw.c:248: 	*dest2 = *dest = dc_colormap[dc_source[(frac>>FRACBITS)&127]];
	.loc 1 248 17
	movq	-16(%rbp), %rax	# dest, tmp140
	movb	%dl, (%rax)	# _37, *dest_41
# r_draw.c:248: 	*dest2 = *dest = dc_colormap[dc_source[(frac>>FRACBITS)&127]];
	.loc 1 248 11
	movq	-16(%rbp), %rax	# dest, tmp141
	movzbl	(%rax), %edx	# *dest_41, _38
# r_draw.c:248: 	*dest2 = *dest = dc_colormap[dc_source[(frac>>FRACBITS)&127]];
	.loc 1 248 9
	movq	-8(%rbp), %rax	# dest2, tmp142
	movb	%dl, (%rax)	# _38, *dest2_42
# r_draw.c:249: 	dest += SCREENWIDTH;
	.loc 1 249 7
	addq	$320, -16(%rbp)	#, dest
# r_draw.c:250: 	dest2 += SCREENWIDTH;
	.loc 1 250 8
	addq	$320, -8(%rbp)	#, dest2
# r_draw.c:251: 	frac += fracstep; 
	.loc 1 251 7
	movl	-20(%rbp), %eax	# fracstep, tmp143
	addl	%eax, -24(%rbp)	# tmp143, frac
# r_draw.c:253:     } while (count--);
	.loc 1 253 19 discriminator 1
	movl	-28(%rbp), %eax	# count, count.36_39
	leal	-1(%rax), %edx	#, tmp144
	movl	%edx, -28(%rbp)	# tmp144, count
# r_draw.c:253:     } while (count--);
	.loc 1 253 14 discriminator 1
	testl	%eax, %eax	# count.36_39
	jne	.L13	#,
	jmp	.L8	#
.L14:
# r_draw.c:224: 	return; 
	.loc 1 224 2
	nop	
.L8:
# r_draw.c:254: }
	.loc 1 254 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	R_DrawColumnLow, .-R_DrawColumnLow
	.globl	fuzzoffset
	.data
	.align 32
	.type	fuzzoffset, @object
	.size	fuzzoffset, 200
fuzzoffset:
	.long	320
	.long	-320
	.long	320
	.long	-320
	.long	320
	.long	320
	.long	-320
	.long	320
	.long	320
	.long	-320
	.long	320
	.long	320
	.long	320
	.long	-320
	.long	320
	.long	320
	.long	320
	.long	-320
	.long	-320
	.long	-320
	.long	-320
	.long	320
	.long	-320
	.long	-320
	.long	320
	.long	320
	.long	320
	.long	320
	.long	-320
	.long	320
	.long	-320
	.long	320
	.long	320
	.long	-320
	.long	-320
	.long	320
	.long	320
	.long	-320
	.long	-320
	.long	-320
	.long	-320
	.long	320
	.long	320
	.long	320
	.long	320
	.long	-320
	.long	320
	.long	320
	.long	-320
	.long	320
	.globl	fuzzpos
	.bss
	.align 4
	.type	fuzzpos, @object
	.size	fuzzpos, 4
fuzzpos:
	.zero	4
	.section	.rodata
	.align 8
.LC1:
	.string	"R_DrawFuzzColumn: %i to %i at %i"
	.text
	.globl	R_DrawFuzzColumn
	.type	R_DrawFuzzColumn, @function
R_DrawFuzzColumn:
.LFB2:
	.loc 1 287 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# r_draw.c:294:     if (!dc_yl) 
	.loc 1 294 9
	movl	dc_yl(%rip), %eax	# dc_yl, dc_yl.37_1
# r_draw.c:294:     if (!dc_yl) 
	.loc 1 294 8
	testl	%eax, %eax	# dc_yl.37_1
	jne	.L16	#,
# r_draw.c:295: 	dc_yl = 1;
	.loc 1 295 8
	movl	$1, dc_yl(%rip)	#, dc_yl
.L16:
# r_draw.c:298:     if (dc_yh == viewheight-1) 
	.loc 1 298 28
	movl	viewheight(%rip), %eax	# viewheight, viewheight.38_2
	leal	-1(%rax), %edx	#, _3
# r_draw.c:298:     if (dc_yh == viewheight-1) 
	.loc 1 298 15
	movl	dc_yh(%rip), %eax	# dc_yh, dc_yh.39_4
# r_draw.c:298:     if (dc_yh == viewheight-1) 
	.loc 1 298 8
	cmpl	%eax, %edx	# dc_yh.39_4, _3
	jne	.L17	#,
# r_draw.c:299: 	dc_yh = viewheight - 2; 
	.loc 1 299 21
	movl	viewheight(%rip), %eax	# viewheight, viewheight.40_5
	subl	$2, %eax	#, _6
# r_draw.c:299: 	dc_yh = viewheight - 2; 
	.loc 1 299 8
	movl	%eax, dc_yh(%rip)	# _6, dc_yh
.L17:
# r_draw.c:301:     count = dc_yh - dc_yl; 
	.loc 1 301 19
	movl	dc_yh(%rip), %edx	# dc_yh, dc_yh.41_7
	movl	dc_yl(%rip), %eax	# dc_yl, dc_yl.42_8
# r_draw.c:301:     count = dc_yh - dc_yl; 
	.loc 1 301 11
	subl	%eax, %edx	# dc_yl.42_8, tmp122
	movl	%edx, -20(%rbp)	# tmp122, count
# r_draw.c:304:     if (count < 0) 
	.loc 1 304 8
	cmpl	$0, -20(%rbp)	#, count
	js	.L24	#,
# r_draw.c:309:     if ((unsigned)dc_x >= SCREENWIDTH
	.loc 1 309 9
	movl	dc_x(%rip), %eax	# dc_x, dc_x.43_9
# r_draw.c:309:     if ((unsigned)dc_x >= SCREENWIDTH
	.loc 1 309 8
	cmpl	$319, %eax	#, dc_x.44_10
	ja	.L20	#,
# r_draw.c:310: 	|| dc_yl < 0 || dc_yh >= SCREENHEIGHT)
	.loc 1 310 11
	movl	dc_yl(%rip), %eax	# dc_yl, dc_yl.45_11
# r_draw.c:310: 	|| dc_yl < 0 || dc_yh >= SCREENHEIGHT)
	.loc 1 310 2
	testl	%eax, %eax	# dc_yl.45_11
	js	.L20	#,
# r_draw.c:310: 	|| dc_yl < 0 || dc_yh >= SCREENHEIGHT)
	.loc 1 310 24 discriminator 1
	movl	dc_yh(%rip), %eax	# dc_yh, dc_yh.46_12
# r_draw.c:310: 	|| dc_yl < 0 || dc_yh >= SCREENHEIGHT)
	.loc 1 310 15 discriminator 1
	cmpl	$199, %eax	#, dc_yh.46_12
	jle	.L21	#,
.L20:
# r_draw.c:312: 	I_Error ("R_DrawFuzzColumn: %i to %i at %i",
	.loc 1 312 2
	movl	dc_x(%rip), %ecx	# dc_x, dc_x.47_13
	movl	dc_yh(%rip), %edx	# dc_yh, dc_yh.48_14
	movl	dc_yl(%rip), %eax	# dc_yl, dc_yl.49_15
	movl	%eax, %esi	# dc_yl.49_15,
	leaq	.LC1(%rip), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L21:
# r_draw.c:344:     dest = ylookup[dc_yl] + columnofs[dc_x];
	.loc 1 344 19
	movl	dc_yl(%rip), %eax	# dc_yl, dc_yl.50_16
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp125
	leaq	ylookup(%rip), %rax	#, tmp126
	movq	(%rdx,%rax), %rdx	# ylookup[dc_yl.50_16], _17
# r_draw.c:344:     dest = ylookup[dc_yl] + columnofs[dc_x];
	.loc 1 344 38
	movl	dc_x(%rip), %eax	# dc_x, dc_x.51_18
	cltq
	leaq	0(,%rax,4), %rcx	#, tmp128
	leaq	columnofs(%rip), %rax	#, tmp129
	movl	(%rcx,%rax), %eax	# columnofs[dc_x.51_18], _19
	cltq
# r_draw.c:344:     dest = ylookup[dc_yl] + columnofs[dc_x];
	.loc 1 344 10
	addq	%rdx, %rax	# _17, tmp130
	movq	%rax, -8(%rbp)	# tmp130, dest
# r_draw.c:347:     fracstep = dc_iscale; 
	.loc 1 347 14
	movl	dc_iscale(%rip), %eax	# dc_iscale, tmp131
	movl	%eax, -12(%rbp)	# tmp131, fracstep
# r_draw.c:348:     frac = dc_texturemid + (dc_yl-centery)*fracstep; 
	.loc 1 348 34
	movl	dc_yl(%rip), %edx	# dc_yl, dc_yl.52_21
	movl	centery(%rip), %eax	# centery, centery.53_22
	subl	%eax, %edx	# centery.53_22, _23
# r_draw.c:348:     frac = dc_texturemid + (dc_yl-centery)*fracstep; 
	.loc 1 348 43
	imull	-12(%rbp), %edx	# fracstep, _24
# r_draw.c:348:     frac = dc_texturemid + (dc_yl-centery)*fracstep; 
	.loc 1 348 26
	movl	dc_texturemid(%rip), %eax	# dc_texturemid, dc_texturemid.54_25
# r_draw.c:348:     frac = dc_texturemid + (dc_yl-centery)*fracstep; 
	.loc 1 348 10
	addl	%edx, %eax	# _24, tmp132
	movl	%eax, -16(%rbp)	# tmp132, frac
.L23:
# r_draw.c:359: 	*dest = colormaps[6*256+dest[fuzzoffset[fuzzpos]]]; 
	.loc 1 359 19
	movq	colormaps(%rip), %rdx	# colormaps, colormaps.55_26
# r_draw.c:359: 	*dest = colormaps[6*256+dest[fuzzoffset[fuzzpos]]]; 
	.loc 1 359 41
	movl	fuzzpos(%rip), %eax	# fuzzpos, fuzzpos.56_27
	cltq
	leaq	0(,%rax,4), %rcx	#, tmp134
	leaq	fuzzoffset(%rip), %rax	#, tmp135
	movl	(%rcx,%rax), %eax	# fuzzoffset[fuzzpos.56_27], _28
	movslq	%eax, %rcx	# _28, _29
# r_draw.c:359: 	*dest = colormaps[6*256+dest[fuzzoffset[fuzzpos]]]; 
	.loc 1 359 30
	movq	-8(%rbp), %rax	# dest, tmp136
	addq	%rcx, %rax	# _29, _30
	movzbl	(%rax), %eax	# *_30, _31
	movzbl	%al, %eax	# _31, _32
# r_draw.c:359: 	*dest = colormaps[6*256+dest[fuzzoffset[fuzzpos]]]; 
	.loc 1 359 25
	addl	$1536, %eax	#, _33
	cltq
# r_draw.c:359: 	*dest = colormaps[6*256+dest[fuzzoffset[fuzzpos]]]; 
	.loc 1 359 19
	addq	%rdx, %rax	# colormaps.55_26, _35
	movzbl	(%rax), %edx	# *_35, _36
# r_draw.c:359: 	*dest = colormaps[6*256+dest[fuzzoffset[fuzzpos]]]; 
	.loc 1 359 8
	movq	-8(%rbp), %rax	# dest, tmp137
	movb	%dl, (%rax)	# _36, *dest_42
# r_draw.c:362: 	if (++fuzzpos == FUZZTABLE) 
	.loc 1 362 6
	movl	fuzzpos(%rip), %eax	# fuzzpos, fuzzpos.57_37
	addl	$1, %eax	#, _38
# r_draw.c:362: 	if (++fuzzpos == FUZZTABLE) 
	.loc 1 362 5
	movl	%eax, fuzzpos(%rip)	# _38, fuzzpos
# r_draw.c:362: 	if (++fuzzpos == FUZZTABLE) 
	.loc 1 362 6
	movl	fuzzpos(%rip), %eax	# fuzzpos, fuzzpos.58_39
# r_draw.c:362: 	if (++fuzzpos == FUZZTABLE) 
	.loc 1 362 5
	cmpl	$50, %eax	#, fuzzpos.58_39
	jne	.L22	#,
# r_draw.c:363: 	    fuzzpos = 0;
	.loc 1 363 14
	movl	$0, fuzzpos(%rip)	#, fuzzpos
.L22:
# r_draw.c:365: 	dest += SCREENWIDTH;
	.loc 1 365 7
	addq	$320, -8(%rbp)	#, dest
# r_draw.c:367: 	frac += fracstep; 
	.loc 1 367 7
	movl	-12(%rbp), %eax	# fracstep, tmp138
	addl	%eax, -16(%rbp)	# tmp138, frac
# r_draw.c:368:     } while (count--); 
	.loc 1 368 19
	movl	-20(%rbp), %eax	# count, count.59_40
	leal	-1(%rax), %edx	#, tmp139
	movl	%edx, -20(%rbp)	# tmp139, count
# r_draw.c:368:     } while (count--); 
	.loc 1 368 14
	testl	%eax, %eax	# count.59_40
	jne	.L23	#,
	jmp	.L15	#
.L24:
# r_draw.c:305: 	return; 
	.loc 1 305 2
	nop	
.L15:
# r_draw.c:369: } 
	.loc 1 369 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	R_DrawFuzzColumn, .-R_DrawFuzzColumn
	.globl	dc_translation
	.bss
	.align 8
	.type	dc_translation, @object
	.size	dc_translation, 8
dc_translation:
	.zero	8
	.globl	translationtables
	.align 8
	.type	translationtables, @object
	.size	translationtables, 8
translationtables:
	.zero	8
	.text
	.globl	R_DrawTranslatedColumn
	.type	R_DrawTranslatedColumn, @function
R_DrawTranslatedColumn:
.LFB3:
	.loc 1 387 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# r_draw.c:393:     count = dc_yh - dc_yl; 
	.loc 1 393 19
	movl	dc_yh(%rip), %edx	# dc_yh, dc_yh.60_1
	movl	dc_yl(%rip), %eax	# dc_yl, dc_yl.61_2
# r_draw.c:393:     count = dc_yh - dc_yl; 
	.loc 1 393 11
	subl	%eax, %edx	# dc_yl.61_2, tmp115
	movl	%edx, -20(%rbp)	# tmp115, count
# r_draw.c:394:     if (count < 0) 
	.loc 1 394 8
	cmpl	$0, -20(%rbp)	#, count
	js	.L31	#,
# r_draw.c:398:     if ((unsigned)dc_x >= SCREENWIDTH
	.loc 1 398 9
	movl	dc_x(%rip), %eax	# dc_x, dc_x.62_3
# r_draw.c:398:     if ((unsigned)dc_x >= SCREENWIDTH
	.loc 1 398 8
	cmpl	$319, %eax	#, dc_x.63_4
	ja	.L28	#,
# r_draw.c:399: 	|| dc_yl < 0
	.loc 1 399 11
	movl	dc_yl(%rip), %eax	# dc_yl, dc_yl.64_5
# r_draw.c:399: 	|| dc_yl < 0
	.loc 1 399 2
	testl	%eax, %eax	# dc_yl.64_5
	js	.L28	#,
# r_draw.c:400: 	|| dc_yh >= SCREENHEIGHT)
	.loc 1 400 11
	movl	dc_yh(%rip), %eax	# dc_yh, dc_yh.65_6
# r_draw.c:400: 	|| dc_yh >= SCREENHEIGHT)
	.loc 1 400 2
	cmpl	$199, %eax	#, dc_yh.65_6
	jle	.L29	#,
.L28:
# r_draw.c:402: 	I_Error ( "R_DrawColumn: %i to %i at %i",
	.loc 1 402 2
	movl	dc_x(%rip), %ecx	# dc_x, dc_x.66_7
	movl	dc_yh(%rip), %edx	# dc_yh, dc_yh.67_8
	movl	dc_yl(%rip), %eax	# dc_yl, dc_yl.68_9
	movl	%eax, %esi	# dc_yl.68_9,
	leaq	.LC0(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L29:
# r_draw.c:429:     dest = ylookup[dc_yl] + columnofs[dc_x]; 
	.loc 1 429 19
	movl	dc_yl(%rip), %eax	# dc_yl, dc_yl.69_10
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp118
	leaq	ylookup(%rip), %rax	#, tmp119
	movq	(%rdx,%rax), %rdx	# ylookup[dc_yl.69_10], _11
# r_draw.c:429:     dest = ylookup[dc_yl] + columnofs[dc_x]; 
	.loc 1 429 38
	movl	dc_x(%rip), %eax	# dc_x, dc_x.70_12
	cltq
	leaq	0(,%rax,4), %rcx	#, tmp121
	leaq	columnofs(%rip), %rax	#, tmp122
	movl	(%rcx,%rax), %eax	# columnofs[dc_x.70_12], _13
	cltq
# r_draw.c:429:     dest = ylookup[dc_yl] + columnofs[dc_x]; 
	.loc 1 429 10
	addq	%rdx, %rax	# _11, tmp123
	movq	%rax, -8(%rbp)	# tmp123, dest
# r_draw.c:432:     fracstep = dc_iscale; 
	.loc 1 432 14
	movl	dc_iscale(%rip), %eax	# dc_iscale, tmp124
	movl	%eax, -12(%rbp)	# tmp124, fracstep
# r_draw.c:433:     frac = dc_texturemid + (dc_yl-centery)*fracstep; 
	.loc 1 433 34
	movl	dc_yl(%rip), %edx	# dc_yl, dc_yl.71_15
	movl	centery(%rip), %eax	# centery, centery.72_16
	subl	%eax, %edx	# centery.72_16, _17
# r_draw.c:433:     frac = dc_texturemid + (dc_yl-centery)*fracstep; 
	.loc 1 433 43
	imull	-12(%rbp), %edx	# fracstep, _18
# r_draw.c:433:     frac = dc_texturemid + (dc_yl-centery)*fracstep; 
	.loc 1 433 26
	movl	dc_texturemid(%rip), %eax	# dc_texturemid, dc_texturemid.73_19
# r_draw.c:433:     frac = dc_texturemid + (dc_yl-centery)*fracstep; 
	.loc 1 433 10
	addl	%edx, %eax	# _18, tmp125
	movl	%eax, -16(%rbp)	# tmp125, frac
.L30:
# r_draw.c:443: 	*dest = dc_colormap[dc_translation[dc_source[frac>>FRACBITS]]];
	.loc 1 443 21
	movq	dc_colormap(%rip), %rdx	# dc_colormap, dc_colormap.74_20
# r_draw.c:443: 	*dest = dc_colormap[dc_translation[dc_source[frac>>FRACBITS]]];
	.loc 1 443 36
	movq	dc_translation(%rip), %rcx	# dc_translation, dc_translation.75_21
# r_draw.c:443: 	*dest = dc_colormap[dc_translation[dc_source[frac>>FRACBITS]]];
	.loc 1 443 46
	movq	dc_source(%rip), %rsi	# dc_source, dc_source.76_22
# r_draw.c:443: 	*dest = dc_colormap[dc_translation[dc_source[frac>>FRACBITS]]];
	.loc 1 443 51
	movl	-16(%rbp), %eax	# frac, tmp126
	sarl	$16, %eax	#, _23
	cltq
# r_draw.c:443: 	*dest = dc_colormap[dc_translation[dc_source[frac>>FRACBITS]]];
	.loc 1 443 46
	addq	%rsi, %rax	# dc_source.76_22, _25
	movzbl	(%rax), %eax	# *_25, _26
	movzbl	%al, %eax	# _26, _27
# r_draw.c:443: 	*dest = dc_colormap[dc_translation[dc_source[frac>>FRACBITS]]];
	.loc 1 443 36
	addq	%rcx, %rax	# dc_translation.75_21, _28
	movzbl	(%rax), %eax	# *_28, _29
	movzbl	%al, %eax	# _29, _30
# r_draw.c:443: 	*dest = dc_colormap[dc_translation[dc_source[frac>>FRACBITS]]];
	.loc 1 443 21
	addq	%rdx, %rax	# dc_colormap.74_20, _31
	movzbl	(%rax), %edx	# *_31, _32
# r_draw.c:443: 	*dest = dc_colormap[dc_translation[dc_source[frac>>FRACBITS]]];
	.loc 1 443 8
	movq	-8(%rbp), %rax	# dest, tmp127
	movb	%dl, (%rax)	# _32, *dest_35
# r_draw.c:444: 	dest += SCREENWIDTH;
	.loc 1 444 7
	addq	$320, -8(%rbp)	#, dest
# r_draw.c:446: 	frac += fracstep; 
	.loc 1 446 7
	movl	-12(%rbp), %eax	# fracstep, tmp128
	addl	%eax, -16(%rbp)	# tmp128, frac
# r_draw.c:447:     } while (count--); 
	.loc 1 447 19 discriminator 1
	movl	-20(%rbp), %eax	# count, count.77_33
	leal	-1(%rax), %edx	#, tmp129
	movl	%edx, -20(%rbp)	# tmp129, count
# r_draw.c:447:     } while (count--); 
	.loc 1 447 14 discriminator 1
	testl	%eax, %eax	# count.77_33
	jne	.L30	#,
	jmp	.L25	#
.L31:
# r_draw.c:395: 	return; 
	.loc 1 395 2
	nop	
.L25:
# r_draw.c:448: } 
	.loc 1 448 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3:
	.size	R_DrawTranslatedColumn, .-R_DrawTranslatedColumn
	.globl	R_InitTranslationTables
	.type	R_InitTranslationTables, @function
R_InitTranslationTables:
.LFB4:
	.loc 1 461 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# r_draw.c:464:     translationtables = Z_Malloc (256*3+255, PU_STATIC, 0);
	.loc 1 464 25
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	$1023, %edi	#,
	call	Z_Malloc@PLT	#
# r_draw.c:464:     translationtables = Z_Malloc (256*3+255, PU_STATIC, 0);
	.loc 1 464 23 discriminator 1
	movq	%rax, translationtables(%rip)	# _1, translationtables
# r_draw.c:465:     translationtables = (byte *)(( (intptr_t)translationtables + 255 )& ~255);
	.loc 1 465 36
	movq	translationtables(%rip), %rax	# translationtables, translationtables.78_2
# r_draw.c:465:     translationtables = (byte *)(( (intptr_t)translationtables + 255 )& ~255);
	.loc 1 465 64
	addq	$255, %rax	#, _4
# r_draw.c:465:     translationtables = (byte *)(( (intptr_t)translationtables + 255 )& ~255);
	.loc 1 465 71
	movb	$0, %al	#, _5
# r_draw.c:465:     translationtables = (byte *)(( (intptr_t)translationtables + 255 )& ~255);
	.loc 1 465 23
	movq	%rax, translationtables(%rip)	# _6, translationtables
# r_draw.c:468:     for (i=0 ; i<256 ; i++)
	.loc 1 468 11
	movl	$0, -4(%rbp)	#, i
# r_draw.c:468:     for (i=0 ; i<256 ; i++)
	.loc 1 468 5
	jmp	.L33	#
.L36:
# r_draw.c:470: 	if (i >= 0x70 && i<= 0x7f)
	.loc 1 470 5
	cmpl	$111, -4(%rbp)	#, i
	jle	.L34	#,
# r_draw.c:470: 	if (i >= 0x70 && i<= 0x7f)
	.loc 1 470 16 discriminator 1
	cmpl	$127, -4(%rbp)	#, i
	jg	.L34	#,
# r_draw.c:473: 	    translationtables[i] = 0x60 + (i&0xf);
	.loc 1 473 38
	movl	-4(%rbp), %eax	# i, tmp122
	andl	$15, %eax	#, _7
	movl	%eax, %ecx	# _7, _8
# r_draw.c:473: 	    translationtables[i] = 0x60 + (i&0xf);
	.loc 1 473 23
	movq	translationtables(%rip), %rdx	# translationtables, translationtables.80_9
	movl	-4(%rbp), %eax	# i, tmp123
	cltq
	addq	%rdx, %rax	# translationtables.80_9, _11
# r_draw.c:473: 	    translationtables[i] = 0x60 + (i&0xf);
	.loc 1 473 34
	leal	96(%rcx), %edx	#, _12
# r_draw.c:473: 	    translationtables[i] = 0x60 + (i&0xf);
	.loc 1 473 27
	movb	%dl, (%rax)	# _12, *_11
# r_draw.c:474: 	    translationtables [i+256] = 0x40 + (i&0xf);
	.loc 1 474 43
	movl	-4(%rbp), %eax	# i, tmp124
	andl	$15, %eax	#, _13
	movl	%eax, %ecx	# _13, _14
# r_draw.c:474: 	    translationtables [i+256] = 0x40 + (i&0xf);
	.loc 1 474 24
	movq	translationtables(%rip), %rax	# translationtables, translationtables.81_15
	movl	-4(%rbp), %edx	# i, tmp125
	movslq	%edx, %rdx	# tmp125, _16
	addq	$256, %rdx	#, _17
	addq	%rdx, %rax	# _17, _18
# r_draw.c:474: 	    translationtables [i+256] = 0x40 + (i&0xf);
	.loc 1 474 39
	leal	64(%rcx), %edx	#, _19
# r_draw.c:474: 	    translationtables [i+256] = 0x40 + (i&0xf);
	.loc 1 474 32
	movb	%dl, (%rax)	# _19, *_18
# r_draw.c:475: 	    translationtables [i+512] = 0x20 + (i&0xf);
	.loc 1 475 43
	movl	-4(%rbp), %eax	# i, tmp126
	andl	$15, %eax	#, _20
	movl	%eax, %ecx	# _20, _21
# r_draw.c:475: 	    translationtables [i+512] = 0x20 + (i&0xf);
	.loc 1 475 24
	movq	translationtables(%rip), %rax	# translationtables, translationtables.82_22
	movl	-4(%rbp), %edx	# i, tmp127
	movslq	%edx, %rdx	# tmp127, _23
	addq	$512, %rdx	#, _24
	addq	%rdx, %rax	# _24, _25
# r_draw.c:475: 	    translationtables [i+512] = 0x20 + (i&0xf);
	.loc 1 475 39
	leal	32(%rcx), %edx	#, _26
# r_draw.c:475: 	    translationtables [i+512] = 0x20 + (i&0xf);
	.loc 1 475 32
	movb	%dl, (%rax)	# _26, *_25
	jmp	.L35	#
.L34:
# r_draw.c:481: 		= translationtables[i+512] = i;
	.loc 1 481 22
	movq	translationtables(%rip), %rax	# translationtables, translationtables.83_27
	movl	-4(%rbp), %edx	# i, tmp128
	movslq	%edx, %rdx	# tmp128, _28
	addq	$512, %rdx	#, _29
	addq	%rax, %rdx	# translationtables.83_27, _30
# r_draw.c:481: 		= translationtables[i+512] = i;
	.loc 1 481 30
	movl	-4(%rbp), %eax	# i, tmp129
	movb	%al, (%rdx)	# _31, *_30
# r_draw.c:480: 	    translationtables[i] = translationtables[i+256] 
	.loc 1 480 46
	movq	translationtables(%rip), %rax	# translationtables, translationtables.84_32
	movl	-4(%rbp), %ecx	# i, tmp130
	movslq	%ecx, %rcx	# tmp130, _33
	addq	$256, %rcx	#, _34
	addq	%rcx, %rax	# _34, _35
# r_draw.c:481: 		= translationtables[i+512] = i;
	.loc 1 481 22
	movzbl	(%rdx), %edx	# *_30, _36
# r_draw.c:481: 		= translationtables[i+512] = i;
	.loc 1 481 3
	movb	%dl, (%rax)	# _36, *_35
# r_draw.c:480: 	    translationtables[i] = translationtables[i+256] 
	.loc 1 480 23
	movq	translationtables(%rip), %rcx	# translationtables, translationtables.85_37
	movl	-4(%rbp), %edx	# i, tmp131
	movslq	%edx, %rdx	# tmp131, _38
	addq	%rcx, %rdx	# translationtables.85_37, _39
# r_draw.c:480: 	    translationtables[i] = translationtables[i+256] 
	.loc 1 480 46
	movzbl	(%rax), %eax	# *_35, _40
# r_draw.c:480: 	    translationtables[i] = translationtables[i+256] 
	.loc 1 480 27
	movb	%al, (%rdx)	# _40, *_39
.L35:
# r_draw.c:468:     for (i=0 ; i<256 ; i++)
	.loc 1 468 25 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L33:
# r_draw.c:468:     for (i=0 ; i<256 ; i++)
	.loc 1 468 17 discriminator 1
	cmpl	$255, -4(%rbp)	#, i
	jle	.L36	#,
# r_draw.c:484: }
	.loc 1 484 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4:
	.size	R_InitTranslationTables, .-R_InitTranslationTables
	.globl	ds_y
	.bss
	.align 4
	.type	ds_y, @object
	.size	ds_y, 4
ds_y:
	.zero	4
	.globl	ds_x1
	.align 4
	.type	ds_x1, @object
	.size	ds_x1, 4
ds_x1:
	.zero	4
	.globl	ds_x2
	.align 4
	.type	ds_x2, @object
	.size	ds_x2, 4
ds_x2:
	.zero	4
	.globl	ds_colormap
	.align 8
	.type	ds_colormap, @object
	.size	ds_colormap, 8
ds_colormap:
	.zero	8
	.globl	ds_xfrac
	.align 4
	.type	ds_xfrac, @object
	.size	ds_xfrac, 4
ds_xfrac:
	.zero	4
	.globl	ds_yfrac
	.align 4
	.type	ds_yfrac, @object
	.size	ds_yfrac, 4
ds_yfrac:
	.zero	4
	.globl	ds_xstep
	.align 4
	.type	ds_xstep, @object
	.size	ds_xstep, 4
ds_xstep:
	.zero	4
	.globl	ds_ystep
	.align 4
	.type	ds_ystep, @object
	.size	ds_ystep, 4
ds_ystep:
	.zero	4
	.globl	ds_source
	.align 8
	.type	ds_source, @object
	.size	ds_source, 8
ds_source:
	.zero	8
	.globl	dscount
	.align 4
	.type	dscount, @object
	.size	dscount, 4
dscount:
	.zero	4
	.section	.rodata
.LC2:
	.string	"R_DrawSpan: %i to %i at %i"
	.text
	.globl	R_DrawSpan
	.type	R_DrawSpan, @function
R_DrawSpan:
.LFB5:
	.loc 1 522 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# r_draw.c:530:     if (ds_x2 < ds_x1
	.loc 1 530 15
	movl	ds_x2(%rip), %edx	# ds_x2, ds_x2.86_1
	movl	ds_x1(%rip), %eax	# ds_x1, ds_x1.87_2
# r_draw.c:530:     if (ds_x2 < ds_x1
	.loc 1 530 8
	cmpl	%eax, %edx	# ds_x1.87_2, ds_x2.86_1
	jl	.L38	#,
# r_draw.c:531: 	|| ds_x1<0
	.loc 1 531 10
	movl	ds_x1(%rip), %eax	# ds_x1, ds_x1.88_3
# r_draw.c:531: 	|| ds_x1<0
	.loc 1 531 2
	testl	%eax, %eax	# ds_x1.88_3
	js	.L38	#,
# r_draw.c:532: 	|| ds_x2>=SCREENWIDTH  
	.loc 1 532 10
	movl	ds_x2(%rip), %eax	# ds_x2, ds_x2.89_4
# r_draw.c:532: 	|| ds_x2>=SCREENWIDTH  
	.loc 1 532 2
	cmpl	$319, %eax	#, ds_x2.89_4
	jg	.L38	#,
# r_draw.c:533: 	|| (unsigned)ds_y>SCREENHEIGHT)
	.loc 1 533 5
	movl	ds_y(%rip), %eax	# ds_y, ds_y.90_5
# r_draw.c:533: 	|| (unsigned)ds_y>SCREENHEIGHT)
	.loc 1 533 2
	cmpl	$200, %eax	#, ds_y.91_6
	jbe	.L39	#,
.L38:
# r_draw.c:535: 	I_Error( "R_DrawSpan: %i to %i at %i",
	.loc 1 535 2
	movl	ds_y(%rip), %ecx	# ds_y, ds_y.92_7
	movl	ds_x2(%rip), %edx	# ds_x2, ds_x2.93_8
	movl	ds_x1(%rip), %eax	# ds_x1, ds_x1.94_9
	movl	%eax, %esi	# ds_x1.94_9,
	leaq	.LC2(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L39:
# r_draw.c:542:     xfrac = ds_xfrac; 
	.loc 1 542 11
	movl	ds_xfrac(%rip), %eax	# ds_xfrac, tmp115
	movl	%eax, -24(%rbp)	# tmp115, xfrac
# r_draw.c:543:     yfrac = ds_yfrac; 
	.loc 1 543 11
	movl	ds_yfrac(%rip), %eax	# ds_yfrac, tmp116
	movl	%eax, -20(%rbp)	# tmp116, yfrac
# r_draw.c:545:     dest = ylookup[ds_y] + columnofs[ds_x1];
	.loc 1 545 19
	movl	ds_y(%rip), %eax	# ds_y, ds_y.95_10
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp118
	leaq	ylookup(%rip), %rax	#, tmp119
	movq	(%rdx,%rax), %rdx	# ylookup[ds_y.95_10], _11
# r_draw.c:545:     dest = ylookup[ds_y] + columnofs[ds_x1];
	.loc 1 545 37
	movl	ds_x1(%rip), %eax	# ds_x1, ds_x1.96_12
	cltq
	leaq	0(,%rax,4), %rcx	#, tmp121
	leaq	columnofs(%rip), %rax	#, tmp122
	movl	(%rcx,%rax), %eax	# columnofs[ds_x1.96_12], _13
	cltq
# r_draw.c:545:     dest = ylookup[ds_y] + columnofs[ds_x1];
	.loc 1 545 10
	addq	%rdx, %rax	# _11, tmp123
	movq	%rax, -8(%rbp)	# tmp123, dest
# r_draw.c:548:     count = ds_x2 - ds_x1; 
	.loc 1 548 19
	movl	ds_x2(%rip), %edx	# ds_x2, ds_x2.97_15
	movl	ds_x1(%rip), %eax	# ds_x1, ds_x1.98_16
# r_draw.c:548:     count = ds_x2 - ds_x1; 
	.loc 1 548 11
	subl	%eax, %edx	# ds_x1.98_16, tmp124
	movl	%edx, -16(%rbp)	# tmp124, count
.L40:
# r_draw.c:553: 	spot = ((yfrac>>(16-6))&(63*64)) + ((xfrac>>16)&63);
	.loc 1 553 16
	movl	-20(%rbp), %eax	# yfrac, tmp125
	sarl	$10, %eax	#, _17
# r_draw.c:553: 	spot = ((yfrac>>(16-6))&(63*64)) + ((xfrac>>16)&63);
	.loc 1 553 25
	andl	$4032, %eax	#, _17
	movl	%eax, %edx	# _17, _18
# r_draw.c:553: 	spot = ((yfrac>>(16-6))&(63*64)) + ((xfrac>>16)&63);
	.loc 1 553 44
	movl	-24(%rbp), %eax	# xfrac, tmp126
	sarl	$16, %eax	#, _19
# r_draw.c:553: 	spot = ((yfrac>>(16-6))&(63*64)) + ((xfrac>>16)&63);
	.loc 1 553 49
	andl	$63, %eax	#, _20
# r_draw.c:553: 	spot = ((yfrac>>(16-6))&(63*64)) + ((xfrac>>16)&63);
	.loc 1 553 7
	orl	%edx, %eax	# _18, tmp127
	movl	%eax, -12(%rbp)	# tmp127, spot
# r_draw.c:557: 	*dest++ = ds_colormap[ds_source[spot]];
	.loc 1 557 23
	movq	ds_colormap(%rip), %rdx	# ds_colormap, ds_colormap.99_21
# r_draw.c:557: 	*dest++ = ds_colormap[ds_source[spot]];
	.loc 1 557 33
	movq	ds_source(%rip), %rcx	# ds_source, ds_source.100_22
	movl	-12(%rbp), %eax	# spot, tmp128
	cltq
	addq	%rcx, %rax	# ds_source.100_22, _24
	movzbl	(%rax), %eax	# *_24, _25
	movzbl	%al, %eax	# _25, _26
# r_draw.c:557: 	*dest++ = ds_colormap[ds_source[spot]];
	.loc 1 557 23
	leaq	(%rdx,%rax), %rcx	#, _27
# r_draw.c:557: 	*dest++ = ds_colormap[ds_source[spot]];
	.loc 1 557 7
	movq	-8(%rbp), %rax	# dest, dest.101_28
	leaq	1(%rax), %rdx	#, tmp129
	movq	%rdx, -8(%rbp)	# tmp129, dest
# r_draw.c:557: 	*dest++ = ds_colormap[ds_source[spot]];
	.loc 1 557 23
	movzbl	(%rcx), %edx	# *_27, _29
# r_draw.c:557: 	*dest++ = ds_colormap[ds_source[spot]];
	.loc 1 557 10
	movb	%dl, (%rax)	# _29, *dest.101_28
# r_draw.c:560: 	xfrac += ds_xstep; 
	.loc 1 560 8
	movl	ds_xstep(%rip), %eax	# ds_xstep, ds_xstep.102_30
	addl	%eax, -24(%rbp)	# ds_xstep.102_30, xfrac
# r_draw.c:561: 	yfrac += ds_ystep;
	.loc 1 561 8
	movl	ds_ystep(%rip), %eax	# ds_ystep, ds_ystep.103_31
	addl	%eax, -20(%rbp)	# ds_ystep.103_31, yfrac
# r_draw.c:563:     } while (count--); 
	.loc 1 563 19 discriminator 1
	movl	-16(%rbp), %eax	# count, count.104_32
	leal	-1(%rax), %edx	#, tmp130
	movl	%edx, -16(%rbp)	# tmp130, count
# r_draw.c:563:     } while (count--); 
	.loc 1 563 14 discriminator 1
	testl	%eax, %eax	# count.104_32
	jne	.L40	#,
# r_draw.c:564: } 
	.loc 1 564 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5:
	.size	R_DrawSpan, .-R_DrawSpan
	.globl	R_DrawSpanLow
	.type	R_DrawSpanLow, @function
R_DrawSpanLow:
.LFB6:
	.loc 1 645 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# r_draw.c:653:     if (ds_x2 < ds_x1
	.loc 1 653 15
	movl	ds_x2(%rip), %edx	# ds_x2, ds_x2.105_1
	movl	ds_x1(%rip), %eax	# ds_x1, ds_x1.106_2
# r_draw.c:653:     if (ds_x2 < ds_x1
	.loc 1 653 8
	cmpl	%eax, %edx	# ds_x1.106_2, ds_x2.105_1
	jl	.L42	#,
# r_draw.c:654: 	|| ds_x1<0
	.loc 1 654 10
	movl	ds_x1(%rip), %eax	# ds_x1, ds_x1.107_3
# r_draw.c:654: 	|| ds_x1<0
	.loc 1 654 2
	testl	%eax, %eax	# ds_x1.107_3
	js	.L42	#,
# r_draw.c:655: 	|| ds_x2>=SCREENWIDTH  
	.loc 1 655 10
	movl	ds_x2(%rip), %eax	# ds_x2, ds_x2.108_4
# r_draw.c:655: 	|| ds_x2>=SCREENWIDTH  
	.loc 1 655 2
	cmpl	$319, %eax	#, ds_x2.108_4
	jg	.L42	#,
# r_draw.c:656: 	|| (unsigned)ds_y>SCREENHEIGHT)
	.loc 1 656 5
	movl	ds_y(%rip), %eax	# ds_y, ds_y.109_5
# r_draw.c:656: 	|| (unsigned)ds_y>SCREENHEIGHT)
	.loc 1 656 2
	cmpl	$200, %eax	#, ds_y.110_6
	jbe	.L43	#,
.L42:
# r_draw.c:658: 	I_Error( "R_DrawSpan: %i to %i at %i",
	.loc 1 658 2
	movl	ds_y(%rip), %ecx	# ds_y, ds_y.111_7
	movl	ds_x2(%rip), %edx	# ds_x2, ds_x2.112_8
	movl	ds_x1(%rip), %eax	# ds_x1, ds_x1.113_9
	movl	%eax, %esi	# ds_x1.113_9,
	leaq	.LC2(%rip), %rax	#, tmp127
	movq	%rax, %rdi	# tmp127,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L43:
# r_draw.c:664:     xfrac = ds_xfrac; 
	.loc 1 664 11
	movl	ds_xfrac(%rip), %eax	# ds_xfrac, tmp128
	movl	%eax, -24(%rbp)	# tmp128, xfrac
# r_draw.c:665:     yfrac = ds_yfrac; 
	.loc 1 665 11
	movl	ds_yfrac(%rip), %eax	# ds_yfrac, tmp129
	movl	%eax, -20(%rbp)	# tmp129, yfrac
# r_draw.c:668:     ds_x1 <<= 1;
	.loc 1 668 11
	movl	ds_x1(%rip), %eax	# ds_x1, ds_x1.114_10
	addl	%eax, %eax	# _11
	movl	%eax, ds_x1(%rip)	# _11, ds_x1
# r_draw.c:669:     ds_x2 <<= 1;
	.loc 1 669 11
	movl	ds_x2(%rip), %eax	# ds_x2, ds_x2.115_12
	addl	%eax, %eax	# _13
	movl	%eax, ds_x2(%rip)	# _13, ds_x2
# r_draw.c:671:     dest = ylookup[ds_y] + columnofs[ds_x1];
	.loc 1 671 19
	movl	ds_y(%rip), %eax	# ds_y, ds_y.116_14
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp131
	leaq	ylookup(%rip), %rax	#, tmp132
	movq	(%rdx,%rax), %rdx	# ylookup[ds_y.116_14], _15
# r_draw.c:671:     dest = ylookup[ds_y] + columnofs[ds_x1];
	.loc 1 671 37
	movl	ds_x1(%rip), %eax	# ds_x1, ds_x1.117_16
	cltq
	leaq	0(,%rax,4), %rcx	#, tmp134
	leaq	columnofs(%rip), %rax	#, tmp135
	movl	(%rcx,%rax), %eax	# columnofs[ds_x1.117_16], _17
	cltq
# r_draw.c:671:     dest = ylookup[ds_y] + columnofs[ds_x1];
	.loc 1 671 10
	addq	%rdx, %rax	# _15, tmp136
	movq	%rax, -8(%rbp)	# tmp136, dest
# r_draw.c:674:     count = ds_x2 - ds_x1; 
	.loc 1 674 19
	movl	ds_x2(%rip), %edx	# ds_x2, ds_x2.118_19
	movl	ds_x1(%rip), %eax	# ds_x1, ds_x1.119_20
# r_draw.c:674:     count = ds_x2 - ds_x1; 
	.loc 1 674 11
	subl	%eax, %edx	# ds_x1.119_20, tmp137
	movl	%edx, -16(%rbp)	# tmp137, count
.L44:
# r_draw.c:677: 	spot = ((yfrac>>(16-6))&(63*64)) + ((xfrac>>16)&63);
	.loc 1 677 16
	movl	-20(%rbp), %eax	# yfrac, tmp138
	sarl	$10, %eax	#, _21
# r_draw.c:677: 	spot = ((yfrac>>(16-6))&(63*64)) + ((xfrac>>16)&63);
	.loc 1 677 25
	andl	$4032, %eax	#, _21
	movl	%eax, %edx	# _21, _22
# r_draw.c:677: 	spot = ((yfrac>>(16-6))&(63*64)) + ((xfrac>>16)&63);
	.loc 1 677 44
	movl	-24(%rbp), %eax	# xfrac, tmp139
	sarl	$16, %eax	#, _23
# r_draw.c:677: 	spot = ((yfrac>>(16-6))&(63*64)) + ((xfrac>>16)&63);
	.loc 1 677 49
	andl	$63, %eax	#, _24
# r_draw.c:677: 	spot = ((yfrac>>(16-6))&(63*64)) + ((xfrac>>16)&63);
	.loc 1 677 7
	orl	%edx, %eax	# _22, tmp140
	movl	%eax, -12(%rbp)	# tmp140, spot
# r_draw.c:680: 	*dest++ = ds_colormap[ds_source[spot]]; 
	.loc 1 680 23
	movq	ds_colormap(%rip), %rdx	# ds_colormap, ds_colormap.120_25
# r_draw.c:680: 	*dest++ = ds_colormap[ds_source[spot]]; 
	.loc 1 680 33
	movq	ds_source(%rip), %rcx	# ds_source, ds_source.121_26
	movl	-12(%rbp), %eax	# spot, tmp141
	cltq
	addq	%rcx, %rax	# ds_source.121_26, _28
	movzbl	(%rax), %eax	# *_28, _29
	movzbl	%al, %eax	# _29, _30
# r_draw.c:680: 	*dest++ = ds_colormap[ds_source[spot]]; 
	.loc 1 680 23
	leaq	(%rdx,%rax), %rcx	#, _31
# r_draw.c:680: 	*dest++ = ds_colormap[ds_source[spot]]; 
	.loc 1 680 7
	movq	-8(%rbp), %rax	# dest, dest.122_32
	leaq	1(%rax), %rdx	#, tmp142
	movq	%rdx, -8(%rbp)	# tmp142, dest
# r_draw.c:680: 	*dest++ = ds_colormap[ds_source[spot]]; 
	.loc 1 680 23
	movzbl	(%rcx), %edx	# *_31, _33
# r_draw.c:680: 	*dest++ = ds_colormap[ds_source[spot]]; 
	.loc 1 680 10
	movb	%dl, (%rax)	# _33, *dest.122_32
# r_draw.c:681: 	*dest++ = ds_colormap[ds_source[spot]];
	.loc 1 681 23
	movq	ds_colormap(%rip), %rdx	# ds_colormap, ds_colormap.123_34
# r_draw.c:681: 	*dest++ = ds_colormap[ds_source[spot]];
	.loc 1 681 33
	movq	ds_source(%rip), %rcx	# ds_source, ds_source.124_35
	movl	-12(%rbp), %eax	# spot, tmp143
	cltq
	addq	%rcx, %rax	# ds_source.124_35, _37
	movzbl	(%rax), %eax	# *_37, _38
	movzbl	%al, %eax	# _38, _39
# r_draw.c:681: 	*dest++ = ds_colormap[ds_source[spot]];
	.loc 1 681 23
	leaq	(%rdx,%rax), %rcx	#, _40
# r_draw.c:681: 	*dest++ = ds_colormap[ds_source[spot]];
	.loc 1 681 7
	movq	-8(%rbp), %rax	# dest, dest.125_41
	leaq	1(%rax), %rdx	#, tmp144
	movq	%rdx, -8(%rbp)	# tmp144, dest
# r_draw.c:681: 	*dest++ = ds_colormap[ds_source[spot]];
	.loc 1 681 23
	movzbl	(%rcx), %edx	# *_40, _42
# r_draw.c:681: 	*dest++ = ds_colormap[ds_source[spot]];
	.loc 1 681 10
	movb	%dl, (%rax)	# _42, *dest.125_41
# r_draw.c:683: 	xfrac += ds_xstep; 
	.loc 1 683 8
	movl	ds_xstep(%rip), %eax	# ds_xstep, ds_xstep.126_43
	addl	%eax, -24(%rbp)	# ds_xstep.126_43, xfrac
# r_draw.c:684: 	yfrac += ds_ystep; 
	.loc 1 684 8
	movl	ds_ystep(%rip), %eax	# ds_ystep, ds_ystep.127_44
	addl	%eax, -20(%rbp)	# ds_ystep.127_44, yfrac
# r_draw.c:686:     } while (count--); 
	.loc 1 686 19 discriminator 1
	movl	-16(%rbp), %eax	# count, count.128_45
	leal	-1(%rax), %edx	#, tmp145
	movl	%edx, -16(%rbp)	# tmp145, count
# r_draw.c:686:     } while (count--); 
	.loc 1 686 14 discriminator 1
	testl	%eax, %eax	# count.128_45
	jne	.L44	#,
# r_draw.c:687: }
	.loc 1 687 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	R_DrawSpanLow, .-R_DrawSpanLow
	.globl	R_InitBuffer
	.type	R_InitBuffer, @function
R_InitBuffer:
.LFB7:
	.loc 1 700 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# width, width
	movl	%esi, -24(%rbp)	# height, height
# r_draw.c:706:     viewwindowx = (SCREENWIDTH-width) >> 1; 
	.loc 1 706 31
	movl	$320, %eax	#, tmp94
	subl	-20(%rbp), %eax	# width, _1
# r_draw.c:706:     viewwindowx = (SCREENWIDTH-width) >> 1; 
	.loc 1 706 39
	sarl	%eax	# _2
# r_draw.c:706:     viewwindowx = (SCREENWIDTH-width) >> 1; 
	.loc 1 706 17
	movl	%eax, viewwindowx(%rip)	# _2, viewwindowx
# r_draw.c:709:     for (i=0 ; i<width ; i++) 
	.loc 1 709 11
	movl	$0, -4(%rbp)	#, i
# r_draw.c:709:     for (i=0 ; i<width ; i++) 
	.loc 1 709 5
	jmp	.L46	#
.L47:
# r_draw.c:710: 	columnofs[i] = viewwindowx + i;
	.loc 1 710 29
	movl	viewwindowx(%rip), %edx	# viewwindowx, viewwindowx.129_3
	movl	-4(%rbp), %eax	# i, tmp95
	leal	(%rdx,%rax), %ecx	#, _4
# r_draw.c:710: 	columnofs[i] = viewwindowx + i;
	.loc 1 710 15
	movl	-4(%rbp), %eax	# i, tmp97
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp98
	leaq	columnofs(%rip), %rax	#, tmp99
	movl	%ecx, (%rdx,%rax)	# _4, columnofs[i_13]
# r_draw.c:709:     for (i=0 ; i<width ; i++) 
	.loc 1 709 27 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L46:
# r_draw.c:709:     for (i=0 ; i<width ; i++) 
	.loc 1 709 17 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp100
	cmpl	-20(%rbp), %eax	# width, tmp100
	jl	.L47	#,
# r_draw.c:713:     if (width == SCREENWIDTH) 
	.loc 1 713 8
	cmpl	$320, -20(%rbp)	#, width
	jne	.L48	#,
# r_draw.c:714: 	viewwindowy = 0; 
	.loc 1 714 14
	movl	$0, viewwindowy(%rip)	#, viewwindowy
	jmp	.L49	#
.L48:
# r_draw.c:716: 	viewwindowy = (SCREENHEIGHT-SBARHEIGHT-height) >> 1; 
	.loc 1 716 40
	movl	$168, %eax	#, tmp101
	subl	-24(%rbp), %eax	# height, _5
# r_draw.c:716: 	viewwindowy = (SCREENHEIGHT-SBARHEIGHT-height) >> 1; 
	.loc 1 716 49
	sarl	%eax	# _6
# r_draw.c:716: 	viewwindowy = (SCREENHEIGHT-SBARHEIGHT-height) >> 1; 
	.loc 1 716 14
	movl	%eax, viewwindowy(%rip)	# _6, viewwindowy
.L49:
# r_draw.c:719:     for (i=0 ; i<height ; i++) 
	.loc 1 719 11
	movl	$0, -4(%rbp)	#, i
# r_draw.c:719:     for (i=0 ; i<height ; i++) 
	.loc 1 719 5
	jmp	.L50	#
.L51:
# r_draw.c:720: 	ylookup[i] = screens[0] + (i+viewwindowy)*SCREENWIDTH; 
	.loc 1 720 22
	movq	screens(%rip), %rcx	# screens[0], _7
# r_draw.c:720: 	ylookup[i] = screens[0] + (i+viewwindowy)*SCREENWIDTH; 
	.loc 1 720 30
	movl	viewwindowy(%rip), %edx	# viewwindowy, viewwindowy.130_8
	movl	-4(%rbp), %eax	# i, tmp102
	addl	%eax, %edx	# tmp102, _9
# r_draw.c:720: 	ylookup[i] = screens[0] + (i+viewwindowy)*SCREENWIDTH; 
	.loc 1 720 43
	movl	%edx, %eax	# _9, tmp103
	sall	$2, %eax	#, tmp103
	addl	%edx, %eax	# _9, tmp103
	sall	$6, %eax	#, tmp104
	cltq
# r_draw.c:720: 	ylookup[i] = screens[0] + (i+viewwindowy)*SCREENWIDTH; 
	.loc 1 720 26
	addq	%rax, %rcx	# _11, _12
# r_draw.c:720: 	ylookup[i] = screens[0] + (i+viewwindowy)*SCREENWIDTH; 
	.loc 1 720 13
	movl	-4(%rbp), %eax	# i, tmp106
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp107
	leaq	ylookup(%rip), %rax	#, tmp108
	movq	%rcx, (%rdx,%rax)	# _12, ylookup[i_14]
# r_draw.c:719:     for (i=0 ; i<height ; i++) 
	.loc 1 719 28 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L50:
# r_draw.c:719:     for (i=0 ; i<height ; i++) 
	.loc 1 719 17 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp109
	cmpl	-24(%rbp), %eax	# height, tmp109
	jl	.L51	#,
# r_draw.c:721: } 
	.loc 1 721 1
	nop	
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	R_InitBuffer, .-R_InitBuffer
	.section	.rodata
.LC3:
	.string	"brdr_t"
.LC4:
	.string	"brdr_b"
.LC5:
	.string	"brdr_l"
.LC6:
	.string	"brdr_r"
.LC7:
	.string	"brdr_tl"
.LC8:
	.string	"brdr_tr"
.LC9:
	.string	"brdr_bl"
.LC10:
	.string	"brdr_br"
	.text
	.globl	R_FillBackScreen
	.type	R_FillBackScreen, @function
R_FillBackScreen:
.LFB8:
	.loc 1 733 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
# r_draw.c:733: { 
	.loc 1 733 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp162
	movq	%rax, -8(%rbp)	# tmp162, D.7065
	xorl	%eax, %eax	# tmp162
# r_draw.c:741:     char	name1[] = "FLOOR7_2";
	.loc 1 741 10
	movabsq	$3629680651341352006, %rax	#, tmp165
	movq	%rax, -17(%rbp)	# tmp165, name1
	movb	$0, -9(%rbp)	#, name1
# r_draw.c:744:     char	name2[] = "GRNROCK";	
	.loc 1 744 10
	movabsq	$21184631215641159, %rax	#, tmp166
	movq	%rax, -25(%rbp)	# tmp166, name2
# r_draw.c:748:     if (scaledviewwidth == 320)
	.loc 1 748 25
	movl	scaledviewwidth(%rip), %eax	# scaledviewwidth, scaledviewwidth.131_1
# r_draw.c:748:     if (scaledviewwidth == 320)
	.loc 1 748 8
	cmpl	$320, %eax	#, scaledviewwidth.131_1
	je	.L70	#,
# r_draw.c:751:     if ( gamemode == commercial)
	.loc 1 751 19
	movl	gamemode(%rip), %eax	# gamemode, gamemode.132_2
# r_draw.c:751:     if ( gamemode == commercial)
	.loc 1 751 8
	cmpl	$2, %eax	#, gamemode.132_2
	jne	.L55	#,
# r_draw.c:752: 	name = name2;
	.loc 1 752 7
	leaq	-25(%rbp), %rax	#, tmp134
	movq	%rax, -56(%rbp)	# tmp134, name
	jmp	.L56	#
.L55:
# r_draw.c:754: 	name = name1;
	.loc 1 754 7
	leaq	-17(%rbp), %rax	#, tmp135
	movq	%rax, -56(%rbp)	# tmp135, name
.L56:
# r_draw.c:756:     src = W_CacheLumpName (name, PU_CACHE); 
	.loc 1 756 11
	movq	-56(%rbp), %rax	# name, tmp136
	movl	$101, %esi	#,
	movq	%rax, %rdi	# tmp136,
	call	W_CacheLumpName@PLT	#
	movq	%rax, -48(%rbp)	# tmp137, src
# r_draw.c:757:     dest = screens[1]; 
	.loc 1 757 10
	movq	8+screens(%rip), %rax	# screens[1], tmp138
	movq	%rax, -64(%rbp)	# tmp138, dest
# r_draw.c:759:     for (y=0 ; y<SCREENHEIGHT-SBARHEIGHT ; y++) 
	.loc 1 759 11
	movl	$0, -68(%rbp)	#, y
# r_draw.c:759:     for (y=0 ; y<SCREENHEIGHT-SBARHEIGHT ; y++) 
	.loc 1 759 5
	jmp	.L57	#
.L60:
# r_draw.c:761: 	for (x=0 ; x<SCREENWIDTH/64 ; x++) 
	.loc 1 761 8
	movl	$0, -72(%rbp)	#, x
# r_draw.c:761: 	for (x=0 ; x<SCREENWIDTH/64 ; x++) 
	.loc 1 761 2
	jmp	.L58	#
.L59:
# r_draw.c:763: 	    memcpy (dest, src+((y&63)<<6), 64); 
	.loc 1 763 31
	movl	-68(%rbp), %eax	# y, tmp139
	sall	$6, %eax	#, _3
	cltq
	andl	$4032, %eax	#, _4
	movq	%rax, %rdx	# _4, _5
# r_draw.c:763: 	    memcpy (dest, src+((y&63)<<6), 64); 
	.loc 1 763 23
	movq	-48(%rbp), %rax	# src, tmp140
	leaq	(%rdx,%rax), %rcx	#, _6
# r_draw.c:763: 	    memcpy (dest, src+((y&63)<<6), 64); 
	.loc 1 763 6
	movq	-64(%rbp), %rax	# dest, tmp141
	movl	$64, %edx	#,
	movq	%rcx, %rsi	# _6,
	movq	%rax, %rdi	# tmp141,
	call	memcpy@PLT	#
# r_draw.c:764: 	    dest += 64; 
	.loc 1 764 11
	addq	$64, -64(%rbp)	#, dest
# r_draw.c:761: 	for (x=0 ; x<SCREENWIDTH/64 ; x++) 
	.loc 1 761 33 discriminator 3
	addl	$1, -72(%rbp)	#, x
.L58:
# r_draw.c:761: 	for (x=0 ; x<SCREENWIDTH/64 ; x++) 
	.loc 1 761 14 discriminator 1
	cmpl	$4, -72(%rbp)	#, x
	jle	.L59	#,
# r_draw.c:759:     for (y=0 ; y<SCREENHEIGHT-SBARHEIGHT ; y++) 
	.loc 1 759 45 discriminator 2
	addl	$1, -68(%rbp)	#, y
.L57:
# r_draw.c:759:     for (y=0 ; y<SCREENHEIGHT-SBARHEIGHT ; y++) 
	.loc 1 759 17 discriminator 1
	cmpl	$167, -68(%rbp)	#, y
	jle	.L60	#,
# r_draw.c:774:     patch = W_CacheLumpName ("brdr_t",PU_CACHE);
	.loc 1 774 13
	movl	$101, %esi	#,
	leaq	.LC3(%rip), %rax	#, tmp142
	movq	%rax, %rdi	# tmp142,
	call	W_CacheLumpName@PLT	#
	movq	%rax, -40(%rbp)	# tmp143, patch
# r_draw.c:776:     for (x=0 ; x<scaledviewwidth ; x+=8)
	.loc 1 776 11
	movl	$0, -72(%rbp)	#, x
# r_draw.c:776:     for (x=0 ; x<scaledviewwidth ; x+=8)
	.loc 1 776 5
	jmp	.L61	#
.L62:
# r_draw.c:777: 	V_DrawPatch (viewwindowx+x,viewwindowy-8,1,patch);
	.loc 1 777 2
	movl	viewwindowy(%rip), %eax	# viewwindowy, viewwindowy.133_11
	leal	-8(%rax), %esi	#, _12
	movl	viewwindowx(%rip), %edx	# viewwindowx, viewwindowx.134_13
	movl	-72(%rbp), %eax	# x, tmp144
	leal	(%rdx,%rax), %edi	#, _14
	movq	-40(%rbp), %rax	# patch, tmp145
	movq	%rax, %rcx	# tmp145,
	movl	$1, %edx	#,
	call	V_DrawPatch@PLT	#
# r_draw.c:776:     for (x=0 ; x<scaledviewwidth ; x+=8)
	.loc 1 776 37 discriminator 3
	addl	$8, -72(%rbp)	#, x
.L61:
# r_draw.c:776:     for (x=0 ; x<scaledviewwidth ; x+=8)
	.loc 1 776 17 discriminator 1
	movl	scaledviewwidth(%rip), %eax	# scaledviewwidth, scaledviewwidth.135_15
	cmpl	%eax, -72(%rbp)	# scaledviewwidth.135_15, x
	jl	.L62	#,
# r_draw.c:778:     patch = W_CacheLumpName ("brdr_b",PU_CACHE);
	.loc 1 778 13
	movl	$101, %esi	#,
	leaq	.LC4(%rip), %rax	#, tmp146
	movq	%rax, %rdi	# tmp146,
	call	W_CacheLumpName@PLT	#
	movq	%rax, -40(%rbp)	# tmp147, patch
# r_draw.c:780:     for (x=0 ; x<scaledviewwidth ; x+=8)
	.loc 1 780 11
	movl	$0, -72(%rbp)	#, x
# r_draw.c:780:     for (x=0 ; x<scaledviewwidth ; x+=8)
	.loc 1 780 5
	jmp	.L63	#
.L64:
# r_draw.c:781: 	V_DrawPatch (viewwindowx+x,viewwindowy+viewheight,1,patch);
	.loc 1 781 2
	movl	viewwindowy(%rip), %edx	# viewwindowy, viewwindowy.136_16
	movl	viewheight(%rip), %eax	# viewheight, viewheight.137_17
	leal	(%rdx,%rax), %esi	#, _18
	movl	viewwindowx(%rip), %edx	# viewwindowx, viewwindowx.138_19
	movl	-72(%rbp), %eax	# x, tmp148
	leal	(%rdx,%rax), %edi	#, _20
	movq	-40(%rbp), %rax	# patch, tmp149
	movq	%rax, %rcx	# tmp149,
	movl	$1, %edx	#,
	call	V_DrawPatch@PLT	#
# r_draw.c:780:     for (x=0 ; x<scaledviewwidth ; x+=8)
	.loc 1 780 37 discriminator 3
	addl	$8, -72(%rbp)	#, x
.L63:
# r_draw.c:780:     for (x=0 ; x<scaledviewwidth ; x+=8)
	.loc 1 780 17 discriminator 1
	movl	scaledviewwidth(%rip), %eax	# scaledviewwidth, scaledviewwidth.139_21
	cmpl	%eax, -72(%rbp)	# scaledviewwidth.139_21, x
	jl	.L64	#,
# r_draw.c:782:     patch = W_CacheLumpName ("brdr_l",PU_CACHE);
	.loc 1 782 13
	movl	$101, %esi	#,
	leaq	.LC5(%rip), %rax	#, tmp150
	movq	%rax, %rdi	# tmp150,
	call	W_CacheLumpName@PLT	#
	movq	%rax, -40(%rbp)	# tmp151, patch
# r_draw.c:784:     for (y=0 ; y<viewheight ; y+=8)
	.loc 1 784 11
	movl	$0, -68(%rbp)	#, y
# r_draw.c:784:     for (y=0 ; y<viewheight ; y+=8)
	.loc 1 784 5
	jmp	.L65	#
.L66:
# r_draw.c:785: 	V_DrawPatch (viewwindowx-8,viewwindowy+y,1,patch);
	.loc 1 785 2
	movl	viewwindowy(%rip), %edx	# viewwindowy, viewwindowy.140_22
	movl	-68(%rbp), %eax	# y, tmp152
	leal	(%rdx,%rax), %esi	#, _23
	movl	viewwindowx(%rip), %eax	# viewwindowx, viewwindowx.141_24
	leal	-8(%rax), %edi	#, _25
	movq	-40(%rbp), %rax	# patch, tmp153
	movq	%rax, %rcx	# tmp153,
	movl	$1, %edx	#,
	call	V_DrawPatch@PLT	#
# r_draw.c:784:     for (y=0 ; y<viewheight ; y+=8)
	.loc 1 784 32 discriminator 3
	addl	$8, -68(%rbp)	#, y
.L65:
# r_draw.c:784:     for (y=0 ; y<viewheight ; y+=8)
	.loc 1 784 17 discriminator 1
	movl	viewheight(%rip), %eax	# viewheight, viewheight.142_26
	cmpl	%eax, -68(%rbp)	# viewheight.142_26, y
	jl	.L66	#,
# r_draw.c:786:     patch = W_CacheLumpName ("brdr_r",PU_CACHE);
	.loc 1 786 13
	movl	$101, %esi	#,
	leaq	.LC6(%rip), %rax	#, tmp154
	movq	%rax, %rdi	# tmp154,
	call	W_CacheLumpName@PLT	#
	movq	%rax, -40(%rbp)	# tmp155, patch
# r_draw.c:788:     for (y=0 ; y<viewheight ; y+=8)
	.loc 1 788 11
	movl	$0, -68(%rbp)	#, y
# r_draw.c:788:     for (y=0 ; y<viewheight ; y+=8)
	.loc 1 788 5
	jmp	.L67	#
.L68:
# r_draw.c:789: 	V_DrawPatch (viewwindowx+scaledviewwidth,viewwindowy+y,1,patch);
	.loc 1 789 2
	movl	viewwindowy(%rip), %edx	# viewwindowy, viewwindowy.143_27
	movl	-68(%rbp), %eax	# y, tmp156
	leal	(%rdx,%rax), %esi	#, _28
	movl	viewwindowx(%rip), %edx	# viewwindowx, viewwindowx.144_29
	movl	scaledviewwidth(%rip), %eax	# scaledviewwidth, scaledviewwidth.145_30
	leal	(%rdx,%rax), %edi	#, _31
	movq	-40(%rbp), %rax	# patch, tmp157
	movq	%rax, %rcx	# tmp157,
	movl	$1, %edx	#,
	call	V_DrawPatch@PLT	#
# r_draw.c:788:     for (y=0 ; y<viewheight ; y+=8)
	.loc 1 788 32 discriminator 3
	addl	$8, -68(%rbp)	#, y
.L67:
# r_draw.c:788:     for (y=0 ; y<viewheight ; y+=8)
	.loc 1 788 17 discriminator 1
	movl	viewheight(%rip), %eax	# viewheight, viewheight.146_32
	cmpl	%eax, -68(%rbp)	# viewheight.146_32, y
	jl	.L68	#,
# r_draw.c:796: 		 W_CacheLumpName ("brdr_tl",PU_CACHE));
	.loc 1 796 4
	movl	$101, %esi	#,
	leaq	.LC7(%rip), %rax	#, tmp158
	movq	%rax, %rdi	# tmp158,
	call	W_CacheLumpName@PLT	#
	movq	%rax, %rdx	#, _33
# r_draw.c:793:     V_DrawPatch (viewwindowx-8,
	.loc 1 793 5
	movl	viewwindowy(%rip), %eax	# viewwindowy, viewwindowy.147_34
	leal	-8(%rax), %esi	#, _35
	movl	viewwindowx(%rip), %eax	# viewwindowx, viewwindowx.148_36
	subl	$8, %eax	#, _37
	movq	%rdx, %rcx	# _33,
	movl	$1, %edx	#,
	movl	%eax, %edi	# _37,
	call	V_DrawPatch@PLT	#
# r_draw.c:801: 		 W_CacheLumpName ("brdr_tr",PU_CACHE));
	.loc 1 801 4
	movl	$101, %esi	#,
	leaq	.LC8(%rip), %rax	#, tmp159
	movq	%rax, %rdi	# tmp159,
	call	W_CacheLumpName@PLT	#
	movq	%rax, %rdx	#, _38
# r_draw.c:798:     V_DrawPatch (viewwindowx+scaledviewwidth,
	.loc 1 798 5
	movl	viewwindowy(%rip), %eax	# viewwindowy, viewwindowy.149_39
	leal	-8(%rax), %esi	#, _40
	movl	viewwindowx(%rip), %ecx	# viewwindowx, viewwindowx.150_41
	movl	scaledviewwidth(%rip), %eax	# scaledviewwidth, scaledviewwidth.151_42
	addl	%ecx, %eax	# viewwindowx.150_41, _43
	movq	%rdx, %rcx	# _38,
	movl	$1, %edx	#,
	movl	%eax, %edi	# _43,
	call	V_DrawPatch@PLT	#
# r_draw.c:806: 		 W_CacheLumpName ("brdr_bl",PU_CACHE));
	.loc 1 806 4
	movl	$101, %esi	#,
	leaq	.LC9(%rip), %rax	#, tmp160
	movq	%rax, %rdi	# tmp160,
	call	W_CacheLumpName@PLT	#
	movq	%rax, %rdx	#, _44
# r_draw.c:803:     V_DrawPatch (viewwindowx-8,
	.loc 1 803 5
	movl	viewwindowy(%rip), %ecx	# viewwindowy, viewwindowy.152_45
	movl	viewheight(%rip), %eax	# viewheight, viewheight.153_46
	leal	(%rcx,%rax), %esi	#, _47
	movl	viewwindowx(%rip), %eax	# viewwindowx, viewwindowx.154_48
	subl	$8, %eax	#, _49
	movq	%rdx, %rcx	# _44,
	movl	$1, %edx	#,
	movl	%eax, %edi	# _49,
	call	V_DrawPatch@PLT	#
# r_draw.c:811: 		 W_CacheLumpName ("brdr_br",PU_CACHE));
	.loc 1 811 4
	movl	$101, %esi	#,
	leaq	.LC10(%rip), %rax	#, tmp161
	movq	%rax, %rdi	# tmp161,
	call	W_CacheLumpName@PLT	#
	movq	%rax, %rdx	#, _50
# r_draw.c:808:     V_DrawPatch (viewwindowx+scaledviewwidth,
	.loc 1 808 5
	movl	viewwindowy(%rip), %ecx	# viewwindowy, viewwindowy.155_51
	movl	viewheight(%rip), %eax	# viewheight, viewheight.156_52
	leal	(%rcx,%rax), %esi	#, _53
	movl	viewwindowx(%rip), %ecx	# viewwindowx, viewwindowx.157_54
	movl	scaledviewwidth(%rip), %eax	# scaledviewwidth, scaledviewwidth.158_55
	addl	%ecx, %eax	# viewwindowx.157_54, _56
	movq	%rdx, %rcx	# _50,
	movl	$1, %edx	#,
	movl	%eax, %edi	# _56,
	call	V_DrawPatch@PLT	#
	jmp	.L52	#
.L70:
# r_draw.c:749: 	return;
	.loc 1 749 2 discriminator 1
	nop	
.L52:
# r_draw.c:812: } 
	.loc 1 812 1
	movq	-8(%rbp), %rax	# D.7065, tmp163
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp163
	je	.L69	#,
	call	__stack_chk_fail@PLT	#
.L69:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	R_FillBackScreen, .-R_FillBackScreen
	.globl	R_VideoErase
	.type	R_VideoErase, @function
R_VideoErase:
.LFB9:
	.loc 1 822 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# ofs, ofs
	movl	%esi, -8(%rbp)	# count, count
# r_draw.c:828:     memcpy (screens[0]+ofs, screens[1]+ofs, count); 
	.loc 1 828 5
	movl	-8(%rbp), %eax	# count, tmp89
	cltq
# r_draw.c:828:     memcpy (screens[0]+ofs, screens[1]+ofs, count); 
	.loc 1 828 36
	movq	8+screens(%rip), %rcx	# screens[1], _2
# r_draw.c:828:     memcpy (screens[0]+ofs, screens[1]+ofs, count); 
	.loc 1 828 5
	movl	-4(%rbp), %edx	# ofs, _3
# r_draw.c:828:     memcpy (screens[0]+ofs, screens[1]+ofs, count); 
	.loc 1 828 39
	leaq	(%rcx,%rdx), %rsi	#, _4
# r_draw.c:828:     memcpy (screens[0]+ofs, screens[1]+ofs, count); 
	.loc 1 828 20
	movq	screens(%rip), %rcx	# screens[0], _5
# r_draw.c:828:     memcpy (screens[0]+ofs, screens[1]+ofs, count); 
	.loc 1 828 5
	movl	-4(%rbp), %edx	# ofs, _6
# r_draw.c:828:     memcpy (screens[0]+ofs, screens[1]+ofs, count); 
	.loc 1 828 23
	addq	%rdx, %rcx	# _6, _7
# r_draw.c:828:     memcpy (screens[0]+ofs, screens[1]+ofs, count); 
	.loc 1 828 5
	movq	%rax, %rdx	# _1,
	movq	%rcx, %rdi	# _7,
	call	memcpy@PLT	#
# r_draw.c:829: } 
	.loc 1 829 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	R_VideoErase, .-R_VideoErase
	.globl	R_DrawViewBorder
	.type	R_DrawViewBorder, @function
R_DrawViewBorder:
.LFB10:
	.loc 1 845 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# r_draw.c:851:     if (scaledviewwidth == SCREENWIDTH) 
	.loc 1 851 25
	movl	scaledviewwidth(%rip), %eax	# scaledviewwidth, scaledviewwidth.159_1
# r_draw.c:851:     if (scaledviewwidth == SCREENWIDTH) 
	.loc 1 851 8
	cmpl	$320, %eax	#, scaledviewwidth.159_1
	je	.L77	#,
# r_draw.c:854:     top = ((SCREENHEIGHT-SBARHEIGHT)-viewheight)/2; 
	.loc 1 854 37
	movl	viewheight(%rip), %edx	# viewheight, viewheight.160_2
	movl	$168, %eax	#, tmp99
	subl	%edx, %eax	# viewheight.160_2, _3
# r_draw.c:854:     top = ((SCREENHEIGHT-SBARHEIGHT)-viewheight)/2; 
	.loc 1 854 9
	movl	%eax, %edx	# _3, tmp100
	shrl	$31, %edx	#, tmp100
	addl	%edx, %eax	# tmp100, tmp101
	sarl	%eax	# tmp102
	movl	%eax, -8(%rbp)	# tmp102, top
# r_draw.c:855:     side = (SCREENWIDTH-scaledviewwidth)/2; 
	.loc 1 855 24
	movl	scaledviewwidth(%rip), %edx	# scaledviewwidth, scaledviewwidth.161_4
	movl	$320, %eax	#, tmp103
	subl	%edx, %eax	# scaledviewwidth.161_4, _5
# r_draw.c:855:     side = (SCREENWIDTH-scaledviewwidth)/2; 
	.loc 1 855 10
	movl	%eax, %edx	# _5, tmp104
	shrl	$31, %edx	#, tmp104
	addl	%edx, %eax	# tmp104, tmp105
	sarl	%eax	# tmp106
	movl	%eax, -4(%rbp)	# tmp106, side
# r_draw.c:858:     R_VideoErase (0, top*SCREENWIDTH+side); 
	.loc 1 858 25
	movl	-8(%rbp), %edx	# top, tmp107
	movl	%edx, %eax	# tmp107, tmp108
	sall	$2, %eax	#, tmp108
	addl	%edx, %eax	# tmp107, tmp108
	sall	$6, %eax	#, tmp109
	movl	%eax, %edx	# tmp108, _6
# r_draw.c:858:     R_VideoErase (0, top*SCREENWIDTH+side); 
	.loc 1 858 5
	movl	-4(%rbp), %eax	# side, tmp110
	addl	%edx, %eax	# _6, _7
	movl	%eax, %esi	# _7,
	movl	$0, %edi	#,
	call	R_VideoErase	#
# r_draw.c:861:     ofs = (viewheight+top)*SCREENWIDTH-side; 
	.loc 1 861 22
	movl	viewheight(%rip), %edx	# viewheight, viewheight.162_8
	movl	-8(%rbp), %eax	# top, tmp111
	addl	%eax, %edx	# tmp111, _9
# r_draw.c:861:     ofs = (viewheight+top)*SCREENWIDTH-side; 
	.loc 1 861 27
	movl	%edx, %eax	# _9, tmp112
	sall	$2, %eax	#, tmp112
	addl	%edx, %eax	# _9, tmp112
	sall	$6, %eax	#, tmp113
# r_draw.c:861:     ofs = (viewheight+top)*SCREENWIDTH-side; 
	.loc 1 861 9
	subl	-4(%rbp), %eax	# side, tmp115
	movl	%eax, -16(%rbp)	# tmp115, ofs
# r_draw.c:862:     R_VideoErase (ofs, top*SCREENWIDTH+side); 
	.loc 1 862 27
	movl	-8(%rbp), %edx	# top, tmp116
	movl	%edx, %eax	# tmp116, tmp117
	sall	$2, %eax	#, tmp117
	addl	%edx, %eax	# tmp116, tmp117
	sall	$6, %eax	#, tmp118
	movl	%eax, %edx	# tmp117, _11
# r_draw.c:862:     R_VideoErase (ofs, top*SCREENWIDTH+side); 
	.loc 1 862 5
	movl	-4(%rbp), %eax	# side, tmp119
	addl	%eax, %edx	# tmp119, _12
	movl	-16(%rbp), %eax	# ofs, ofs.163_13
	movl	%edx, %esi	# _12,
	movl	%eax, %edi	# ofs.163_13,
	call	R_VideoErase	#
# r_draw.c:865:     ofs = top*SCREENWIDTH + SCREENWIDTH-side; 
	.loc 1 865 27
	movl	-8(%rbp), %eax	# top, tmp120
	leal	1(%rax), %edx	#, _14
	movl	%edx, %eax	# _14, tmp121
	sall	$2, %eax	#, tmp121
	addl	%edx, %eax	# _14, tmp121
	sall	$6, %eax	#, tmp122
# r_draw.c:865:     ofs = top*SCREENWIDTH + SCREENWIDTH-side; 
	.loc 1 865 9
	subl	-4(%rbp), %eax	# side, tmp124
	movl	%eax, -16(%rbp)	# tmp124, ofs
# r_draw.c:866:     side <<= 1;
	.loc 1 866 10
	sall	-4(%rbp)	# side
# r_draw.c:868:     for (i=1 ; i<viewheight ; i++) 
	.loc 1 868 11
	movl	$1, -12(%rbp)	#, i
# r_draw.c:868:     for (i=1 ; i<viewheight ; i++) 
	.loc 1 868 5
	jmp	.L75	#
.L76:
# r_draw.c:870: 	R_VideoErase (ofs, side); 
	.loc 1 870 2
	movl	-16(%rbp), %eax	# ofs, ofs.164_16
	movl	-4(%rbp), %edx	# side, tmp125
	movl	%edx, %esi	# tmp125,
	movl	%eax, %edi	# ofs.164_16,
	call	R_VideoErase	#
# r_draw.c:871: 	ofs += SCREENWIDTH; 
	.loc 1 871 6
	addl	$320, -16(%rbp)	#, ofs
# r_draw.c:868:     for (i=1 ; i<viewheight ; i++) 
	.loc 1 868 32 discriminator 3
	addl	$1, -12(%rbp)	#, i
.L75:
# r_draw.c:868:     for (i=1 ; i<viewheight ; i++) 
	.loc 1 868 17 discriminator 1
	movl	viewheight(%rip), %eax	# viewheight, viewheight.165_17
	cmpl	%eax, -12(%rbp)	# viewheight.165_17, i
	jl	.L76	#,
# r_draw.c:875:     V_MarkRect (0,0,SCREENWIDTH, SCREENHEIGHT-SBARHEIGHT); 
	.loc 1 875 5
	movl	$168, %ecx	#,
	movl	$320, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	V_MarkRect@PLT	#
	jmp	.L72	#
.L77:
# r_draw.c:852: 	return; 
	.loc 1 852 2
	nop	
.L72:
# r_draw.c:876: } 
	.loc 1 876 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	R_DrawViewBorder, .-R_DrawViewBorder
.Letext0:
	.file 2 "/usr/include/stdint.h"
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 4 "doomdef.h"
	.file 5 "doomtype.h"
	.file 6 "m_fixed.h"
	.file 7 "info.h"
	.file 8 "r_defs.h"
	.file 9 "p_pspr.h"
	.file 10 "r_state.h"
	.file 11 "r_main.h"
	.file 12 "r_draw.h"
	.file 13 "v_video.h"
	.file 14 "doomstat.h"
	.file 15 "/usr/include/string.h"
	.file 16 "w_wad.h"
	.file 17 "z_zone.h"
	.file 18 "i_system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2b51
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1a
	.long	.LASF1372
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xa
	.long	0x51
	.long	0x3e
	.uleb128 0xb
	.long	0x43
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.long	0x2e
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x16
	.long	0x4a
	.uleb128 0x9
	.long	.LASF1348
	.byte	0x1c
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x1c
	.byte	0x8
	.uleb128 0xf
	.long	0x4a
	.uleb128 0x10
	.long	.LASF10
	.byte	0x2
	.byte	0x4c
	.byte	0x13
	.long	0x95
	.uleb128 0x10
	.long	.LASF11
	.byte	0x3
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0xc
	.long	0x79
	.byte	0x4
	.byte	0x27
	.long	0xe5
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
	.byte	0
	.uleb128 0x10
	.long	.LASF17
	.byte	0x4
	.byte	0x2f
	.byte	0x3
	.long	0xbb
	.uleb128 0xc
	.long	0x79
	.byte	0x4
	.byte	0xa3
	.long	0x127
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
	.uleb128 0x2
	.long	.LASF23
	.byte	0x5
	.uleb128 0x2
	.long	.LASF24
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.long	0x79
	.byte	0x4
	.byte	0xb5
	.long	0x175
	.uleb128 0x2
	.long	.LASF25
	.byte	0
	.uleb128 0x2
	.long	.LASF26
	.byte	0x1
	.uleb128 0x2
	.long	.LASF27
	.byte	0x2
	.uleb128 0x2
	.long	.LASF28
	.byte	0x3
	.uleb128 0x2
	.long	.LASF29
	.byte	0x4
	.uleb128 0x2
	.long	.LASF30
	.byte	0x5
	.uleb128 0x2
	.long	.LASF31
	.byte	0x6
	.uleb128 0x2
	.long	.LASF32
	.byte	0x7
	.uleb128 0x2
	.long	.LASF33
	.byte	0x8
	.uleb128 0x2
	.long	.LASF34
	.byte	0x9
	.uleb128 0x2
	.long	.LASF35
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.long	0x79
	.byte	0x4
	.byte	0xca
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
	.long	0x79
	.byte	0x4
	.byte	0xd7
	.long	0x1db
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
	.uleb128 0x10
	.long	.LASF49
	.byte	0x5
	.byte	0x24
	.byte	0x17
	.long	0x6b
	.uleb128 0xa
	.long	0x4a
	.long	0x1f7
	.uleb128 0xb
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.long	.LASF50
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.long	.LASF51
	.uleb128 0x10
	.long	.LASF52
	.byte	0x6
	.byte	0x26
	.byte	0xd
	.long	0x8e
	.uleb128 0xc
	.long	0x79
	.byte	0x7
	.byte	0x1f
	.long	0x55f
	.uleb128 0x2
	.long	.LASF53
	.byte	0
	.uleb128 0x2
	.long	.LASF54
	.byte	0x1
	.uleb128 0x2
	.long	.LASF55
	.byte	0x2
	.uleb128 0x2
	.long	.LASF56
	.byte	0x3
	.uleb128 0x2
	.long	.LASF57
	.byte	0x4
	.uleb128 0x2
	.long	.LASF58
	.byte	0x5
	.uleb128 0x2
	.long	.LASF59
	.byte	0x6
	.uleb128 0x2
	.long	.LASF60
	.byte	0x7
	.uleb128 0x2
	.long	.LASF61
	.byte	0x8
	.uleb128 0x2
	.long	.LASF62
	.byte	0x9
	.uleb128 0x2
	.long	.LASF63
	.byte	0xa
	.uleb128 0x2
	.long	.LASF64
	.byte	0xb
	.uleb128 0x2
	.long	.LASF65
	.byte	0xc
	.uleb128 0x2
	.long	.LASF66
	.byte	0xd
	.uleb128 0x2
	.long	.LASF67
	.byte	0xe
	.uleb128 0x2
	.long	.LASF68
	.byte	0xf
	.uleb128 0x2
	.long	.LASF69
	.byte	0x10
	.uleb128 0x2
	.long	.LASF70
	.byte	0x11
	.uleb128 0x2
	.long	.LASF71
	.byte	0x12
	.uleb128 0x2
	.long	.LASF72
	.byte	0x13
	.uleb128 0x2
	.long	.LASF73
	.byte	0x14
	.uleb128 0x2
	.long	.LASF74
	.byte	0x15
	.uleb128 0x2
	.long	.LASF75
	.byte	0x16
	.uleb128 0x2
	.long	.LASF76
	.byte	0x17
	.uleb128 0x2
	.long	.LASF77
	.byte	0x18
	.uleb128 0x2
	.long	.LASF78
	.byte	0x19
	.uleb128 0x2
	.long	.LASF79
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF80
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF81
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF82
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF83
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF84
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF85
	.byte	0x20
	.uleb128 0x2
	.long	.LASF86
	.byte	0x21
	.uleb128 0x2
	.long	.LASF87
	.byte	0x22
	.uleb128 0x2
	.long	.LASF88
	.byte	0x23
	.uleb128 0x2
	.long	.LASF89
	.byte	0x24
	.uleb128 0x2
	.long	.LASF90
	.byte	0x25
	.uleb128 0x2
	.long	.LASF91
	.byte	0x26
	.uleb128 0x2
	.long	.LASF92
	.byte	0x27
	.uleb128 0x2
	.long	.LASF93
	.byte	0x28
	.uleb128 0x2
	.long	.LASF94
	.byte	0x29
	.uleb128 0x2
	.long	.LASF95
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF96
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF97
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF98
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF99
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF100
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF101
	.byte	0x30
	.uleb128 0x2
	.long	.LASF102
	.byte	0x31
	.uleb128 0x2
	.long	.LASF103
	.byte	0x32
	.uleb128 0x2
	.long	.LASF104
	.byte	0x33
	.uleb128 0x2
	.long	.LASF105
	.byte	0x34
	.uleb128 0x2
	.long	.LASF106
	.byte	0x35
	.uleb128 0x2
	.long	.LASF107
	.byte	0x36
	.uleb128 0x2
	.long	.LASF108
	.byte	0x37
	.uleb128 0x2
	.long	.LASF109
	.byte	0x38
	.uleb128 0x2
	.long	.LASF110
	.byte	0x39
	.uleb128 0x2
	.long	.LASF111
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF112
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF113
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF114
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF115
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF116
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF117
	.byte	0x40
	.uleb128 0x2
	.long	.LASF118
	.byte	0x41
	.uleb128 0x2
	.long	.LASF119
	.byte	0x42
	.uleb128 0x2
	.long	.LASF120
	.byte	0x43
	.uleb128 0x2
	.long	.LASF121
	.byte	0x44
	.uleb128 0x2
	.long	.LASF122
	.byte	0x45
	.uleb128 0x2
	.long	.LASF123
	.byte	0x46
	.uleb128 0x2
	.long	.LASF124
	.byte	0x47
	.uleb128 0x2
	.long	.LASF125
	.byte	0x48
	.uleb128 0x2
	.long	.LASF126
	.byte	0x49
	.uleb128 0x2
	.long	.LASF127
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF128
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF129
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF130
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF131
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF132
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF133
	.byte	0x50
	.uleb128 0x2
	.long	.LASF134
	.byte	0x51
	.uleb128 0x2
	.long	.LASF135
	.byte	0x52
	.uleb128 0x2
	.long	.LASF136
	.byte	0x53
	.uleb128 0x2
	.long	.LASF137
	.byte	0x54
	.uleb128 0x2
	.long	.LASF138
	.byte	0x55
	.uleb128 0x2
	.long	.LASF139
	.byte	0x56
	.uleb128 0x2
	.long	.LASF140
	.byte	0x57
	.uleb128 0x2
	.long	.LASF141
	.byte	0x58
	.uleb128 0x2
	.long	.LASF142
	.byte	0x59
	.uleb128 0x2
	.long	.LASF143
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF144
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF145
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF146
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF147
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF148
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF149
	.byte	0x60
	.uleb128 0x2
	.long	.LASF150
	.byte	0x61
	.uleb128 0x2
	.long	.LASF151
	.byte	0x62
	.uleb128 0x2
	.long	.LASF152
	.byte	0x63
	.uleb128 0x2
	.long	.LASF153
	.byte	0x64
	.uleb128 0x2
	.long	.LASF154
	.byte	0x65
	.uleb128 0x2
	.long	.LASF155
	.byte	0x66
	.uleb128 0x2
	.long	.LASF156
	.byte	0x67
	.uleb128 0x2
	.long	.LASF157
	.byte	0x68
	.uleb128 0x2
	.long	.LASF158
	.byte	0x69
	.uleb128 0x2
	.long	.LASF159
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF160
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF161
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF162
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF163
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF164
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF165
	.byte	0x70
	.uleb128 0x2
	.long	.LASF166
	.byte	0x71
	.uleb128 0x2
	.long	.LASF167
	.byte	0x72
	.uleb128 0x2
	.long	.LASF168
	.byte	0x73
	.uleb128 0x2
	.long	.LASF169
	.byte	0x74
	.uleb128 0x2
	.long	.LASF170
	.byte	0x75
	.uleb128 0x2
	.long	.LASF171
	.byte	0x76
	.uleb128 0x2
	.long	.LASF172
	.byte	0x77
	.uleb128 0x2
	.long	.LASF173
	.byte	0x78
	.uleb128 0x2
	.long	.LASF174
	.byte	0x79
	.uleb128 0x2
	.long	.LASF175
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF176
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF177
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF178
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF179
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF180
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF181
	.byte	0x80
	.uleb128 0x2
	.long	.LASF182
	.byte	0x81
	.uleb128 0x2
	.long	.LASF183
	.byte	0x82
	.uleb128 0x2
	.long	.LASF184
	.byte	0x83
	.uleb128 0x2
	.long	.LASF185
	.byte	0x84
	.uleb128 0x2
	.long	.LASF186
	.byte	0x85
	.uleb128 0x2
	.long	.LASF187
	.byte	0x86
	.uleb128 0x2
	.long	.LASF188
	.byte	0x87
	.uleb128 0x2
	.long	.LASF189
	.byte	0x88
	.uleb128 0x2
	.long	.LASF190
	.byte	0x89
	.uleb128 0x2
	.long	.LASF191
	.byte	0x8a
	.byte	0
	.uleb128 0xc
	.long	0x79
	.byte	0x7
	.byte	0xaf
	.long	0x1ee3
	.uleb128 0x2
	.long	.LASF192
	.byte	0
	.uleb128 0x2
	.long	.LASF193
	.byte	0x1
	.uleb128 0x2
	.long	.LASF194
	.byte	0x2
	.uleb128 0x2
	.long	.LASF195
	.byte	0x3
	.uleb128 0x2
	.long	.LASF196
	.byte	0x4
	.uleb128 0x2
	.long	.LASF197
	.byte	0x5
	.uleb128 0x2
	.long	.LASF198
	.byte	0x6
	.uleb128 0x2
	.long	.LASF199
	.byte	0x7
	.uleb128 0x2
	.long	.LASF200
	.byte	0x8
	.uleb128 0x2
	.long	.LASF201
	.byte	0x9
	.uleb128 0x2
	.long	.LASF202
	.byte	0xa
	.uleb128 0x2
	.long	.LASF203
	.byte	0xb
	.uleb128 0x2
	.long	.LASF204
	.byte	0xc
	.uleb128 0x2
	.long	.LASF205
	.byte	0xd
	.uleb128 0x2
	.long	.LASF206
	.byte	0xe
	.uleb128 0x2
	.long	.LASF207
	.byte	0xf
	.uleb128 0x2
	.long	.LASF208
	.byte	0x10
	.uleb128 0x2
	.long	.LASF209
	.byte	0x11
	.uleb128 0x2
	.long	.LASF210
	.byte	0x12
	.uleb128 0x2
	.long	.LASF211
	.byte	0x13
	.uleb128 0x2
	.long	.LASF212
	.byte	0x14
	.uleb128 0x2
	.long	.LASF213
	.byte	0x15
	.uleb128 0x2
	.long	.LASF214
	.byte	0x16
	.uleb128 0x2
	.long	.LASF215
	.byte	0x17
	.uleb128 0x2
	.long	.LASF216
	.byte	0x18
	.uleb128 0x2
	.long	.LASF217
	.byte	0x19
	.uleb128 0x2
	.long	.LASF218
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF219
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF220
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF221
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF222
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF223
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF224
	.byte	0x20
	.uleb128 0x2
	.long	.LASF225
	.byte	0x21
	.uleb128 0x2
	.long	.LASF226
	.byte	0x22
	.uleb128 0x2
	.long	.LASF227
	.byte	0x23
	.uleb128 0x2
	.long	.LASF228
	.byte	0x24
	.uleb128 0x2
	.long	.LASF229
	.byte	0x25
	.uleb128 0x2
	.long	.LASF230
	.byte	0x26
	.uleb128 0x2
	.long	.LASF231
	.byte	0x27
	.uleb128 0x2
	.long	.LASF232
	.byte	0x28
	.uleb128 0x2
	.long	.LASF233
	.byte	0x29
	.uleb128 0x2
	.long	.LASF234
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF235
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF236
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF237
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF238
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF239
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF240
	.byte	0x30
	.uleb128 0x2
	.long	.LASF241
	.byte	0x31
	.uleb128 0x2
	.long	.LASF242
	.byte	0x32
	.uleb128 0x2
	.long	.LASF243
	.byte	0x33
	.uleb128 0x2
	.long	.LASF244
	.byte	0x34
	.uleb128 0x2
	.long	.LASF245
	.byte	0x35
	.uleb128 0x2
	.long	.LASF246
	.byte	0x36
	.uleb128 0x2
	.long	.LASF247
	.byte	0x37
	.uleb128 0x2
	.long	.LASF248
	.byte	0x38
	.uleb128 0x2
	.long	.LASF249
	.byte	0x39
	.uleb128 0x2
	.long	.LASF250
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF251
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF252
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF253
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF254
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF255
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF256
	.byte	0x40
	.uleb128 0x2
	.long	.LASF257
	.byte	0x41
	.uleb128 0x2
	.long	.LASF258
	.byte	0x42
	.uleb128 0x2
	.long	.LASF259
	.byte	0x43
	.uleb128 0x2
	.long	.LASF260
	.byte	0x44
	.uleb128 0x2
	.long	.LASF261
	.byte	0x45
	.uleb128 0x2
	.long	.LASF262
	.byte	0x46
	.uleb128 0x2
	.long	.LASF263
	.byte	0x47
	.uleb128 0x2
	.long	.LASF264
	.byte	0x48
	.uleb128 0x2
	.long	.LASF265
	.byte	0x49
	.uleb128 0x2
	.long	.LASF266
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF267
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF268
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF269
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF270
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF271
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF272
	.byte	0x50
	.uleb128 0x2
	.long	.LASF273
	.byte	0x51
	.uleb128 0x2
	.long	.LASF274
	.byte	0x52
	.uleb128 0x2
	.long	.LASF275
	.byte	0x53
	.uleb128 0x2
	.long	.LASF276
	.byte	0x54
	.uleb128 0x2
	.long	.LASF277
	.byte	0x55
	.uleb128 0x2
	.long	.LASF278
	.byte	0x56
	.uleb128 0x2
	.long	.LASF279
	.byte	0x57
	.uleb128 0x2
	.long	.LASF280
	.byte	0x58
	.uleb128 0x2
	.long	.LASF281
	.byte	0x59
	.uleb128 0x2
	.long	.LASF282
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF283
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF284
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF285
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF286
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF287
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF288
	.byte	0x60
	.uleb128 0x2
	.long	.LASF289
	.byte	0x61
	.uleb128 0x2
	.long	.LASF290
	.byte	0x62
	.uleb128 0x2
	.long	.LASF291
	.byte	0x63
	.uleb128 0x2
	.long	.LASF292
	.byte	0x64
	.uleb128 0x2
	.long	.LASF293
	.byte	0x65
	.uleb128 0x2
	.long	.LASF294
	.byte	0x66
	.uleb128 0x2
	.long	.LASF295
	.byte	0x67
	.uleb128 0x2
	.long	.LASF296
	.byte	0x68
	.uleb128 0x2
	.long	.LASF297
	.byte	0x69
	.uleb128 0x2
	.long	.LASF298
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF299
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF300
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF301
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF302
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF303
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF304
	.byte	0x70
	.uleb128 0x2
	.long	.LASF305
	.byte	0x71
	.uleb128 0x2
	.long	.LASF306
	.byte	0x72
	.uleb128 0x2
	.long	.LASF307
	.byte	0x73
	.uleb128 0x2
	.long	.LASF308
	.byte	0x74
	.uleb128 0x2
	.long	.LASF309
	.byte	0x75
	.uleb128 0x2
	.long	.LASF310
	.byte	0x76
	.uleb128 0x2
	.long	.LASF311
	.byte	0x77
	.uleb128 0x2
	.long	.LASF312
	.byte	0x78
	.uleb128 0x2
	.long	.LASF313
	.byte	0x79
	.uleb128 0x2
	.long	.LASF314
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF315
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF316
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF317
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF318
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF319
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF320
	.byte	0x80
	.uleb128 0x2
	.long	.LASF321
	.byte	0x81
	.uleb128 0x2
	.long	.LASF322
	.byte	0x82
	.uleb128 0x2
	.long	.LASF323
	.byte	0x83
	.uleb128 0x2
	.long	.LASF324
	.byte	0x84
	.uleb128 0x2
	.long	.LASF325
	.byte	0x85
	.uleb128 0x2
	.long	.LASF326
	.byte	0x86
	.uleb128 0x2
	.long	.LASF327
	.byte	0x87
	.uleb128 0x2
	.long	.LASF328
	.byte	0x88
	.uleb128 0x2
	.long	.LASF329
	.byte	0x89
	.uleb128 0x2
	.long	.LASF330
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF331
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF332
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF333
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF334
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF335
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF336
	.byte	0x90
	.uleb128 0x2
	.long	.LASF337
	.byte	0x91
	.uleb128 0x2
	.long	.LASF338
	.byte	0x92
	.uleb128 0x2
	.long	.LASF339
	.byte	0x93
	.uleb128 0x2
	.long	.LASF340
	.byte	0x94
	.uleb128 0x2
	.long	.LASF341
	.byte	0x95
	.uleb128 0x2
	.long	.LASF342
	.byte	0x96
	.uleb128 0x2
	.long	.LASF343
	.byte	0x97
	.uleb128 0x2
	.long	.LASF344
	.byte	0x98
	.uleb128 0x2
	.long	.LASF345
	.byte	0x99
	.uleb128 0x2
	.long	.LASF346
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF347
	.byte	0x9b
	.uleb128 0x2
	.long	.LASF348
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF349
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF350
	.byte	0x9e
	.uleb128 0x2
	.long	.LASF351
	.byte	0x9f
	.uleb128 0x2
	.long	.LASF352
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF353
	.byte	0xa1
	.uleb128 0x2
	.long	.LASF354
	.byte	0xa2
	.uleb128 0x2
	.long	.LASF355
	.byte	0xa3
	.uleb128 0x2
	.long	.LASF356
	.byte	0xa4
	.uleb128 0x2
	.long	.LASF357
	.byte	0xa5
	.uleb128 0x2
	.long	.LASF358
	.byte	0xa6
	.uleb128 0x2
	.long	.LASF359
	.byte	0xa7
	.uleb128 0x2
	.long	.LASF360
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF361
	.byte	0xa9
	.uleb128 0x2
	.long	.LASF362
	.byte	0xaa
	.uleb128 0x2
	.long	.LASF363
	.byte	0xab
	.uleb128 0x2
	.long	.LASF364
	.byte	0xac
	.uleb128 0x2
	.long	.LASF365
	.byte	0xad
	.uleb128 0x2
	.long	.LASF366
	.byte	0xae
	.uleb128 0x2
	.long	.LASF367
	.byte	0xaf
	.uleb128 0x2
	.long	.LASF368
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF369
	.byte	0xb1
	.uleb128 0x2
	.long	.LASF370
	.byte	0xb2
	.uleb128 0x2
	.long	.LASF371
	.byte	0xb3
	.uleb128 0x2
	.long	.LASF372
	.byte	0xb4
	.uleb128 0x2
	.long	.LASF373
	.byte	0xb5
	.uleb128 0x2
	.long	.LASF374
	.byte	0xb6
	.uleb128 0x2
	.long	.LASF375
	.byte	0xb7
	.uleb128 0x2
	.long	.LASF376
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF377
	.byte	0xb9
	.uleb128 0x2
	.long	.LASF378
	.byte	0xba
	.uleb128 0x2
	.long	.LASF379
	.byte	0xbb
	.uleb128 0x2
	.long	.LASF380
	.byte	0xbc
	.uleb128 0x2
	.long	.LASF381
	.byte	0xbd
	.uleb128 0x2
	.long	.LASF382
	.byte	0xbe
	.uleb128 0x2
	.long	.LASF383
	.byte	0xbf
	.uleb128 0x2
	.long	.LASF384
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF385
	.byte	0xc1
	.uleb128 0x2
	.long	.LASF386
	.byte	0xc2
	.uleb128 0x2
	.long	.LASF387
	.byte	0xc3
	.uleb128 0x2
	.long	.LASF388
	.byte	0xc4
	.uleb128 0x2
	.long	.LASF389
	.byte	0xc5
	.uleb128 0x2
	.long	.LASF390
	.byte	0xc6
	.uleb128 0x2
	.long	.LASF391
	.byte	0xc7
	.uleb128 0x2
	.long	.LASF392
	.byte	0xc8
	.uleb128 0x2
	.long	.LASF393
	.byte	0xc9
	.uleb128 0x2
	.long	.LASF394
	.byte	0xca
	.uleb128 0x2
	.long	.LASF395
	.byte	0xcb
	.uleb128 0x2
	.long	.LASF396
	.byte	0xcc
	.uleb128 0x2
	.long	.LASF397
	.byte	0xcd
	.uleb128 0x2
	.long	.LASF398
	.byte	0xce
	.uleb128 0x2
	.long	.LASF399
	.byte	0xcf
	.uleb128 0x2
	.long	.LASF400
	.byte	0xd0
	.uleb128 0x2
	.long	.LASF401
	.byte	0xd1
	.uleb128 0x2
	.long	.LASF402
	.byte	0xd2
	.uleb128 0x2
	.long	.LASF403
	.byte	0xd3
	.uleb128 0x2
	.long	.LASF404
	.byte	0xd4
	.uleb128 0x2
	.long	.LASF405
	.byte	0xd5
	.uleb128 0x2
	.long	.LASF406
	.byte	0xd6
	.uleb128 0x2
	.long	.LASF407
	.byte	0xd7
	.uleb128 0x2
	.long	.LASF408
	.byte	0xd8
	.uleb128 0x2
	.long	.LASF409
	.byte	0xd9
	.uleb128 0x2
	.long	.LASF410
	.byte	0xda
	.uleb128 0x2
	.long	.LASF411
	.byte	0xdb
	.uleb128 0x2
	.long	.LASF412
	.byte	0xdc
	.uleb128 0x2
	.long	.LASF413
	.byte	0xdd
	.uleb128 0x2
	.long	.LASF414
	.byte	0xde
	.uleb128 0x2
	.long	.LASF415
	.byte	0xdf
	.uleb128 0x2
	.long	.LASF416
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF417
	.byte	0xe1
	.uleb128 0x2
	.long	.LASF418
	.byte	0xe2
	.uleb128 0x2
	.long	.LASF419
	.byte	0xe3
	.uleb128 0x2
	.long	.LASF420
	.byte	0xe4
	.uleb128 0x2
	.long	.LASF421
	.byte	0xe5
	.uleb128 0x2
	.long	.LASF422
	.byte	0xe6
	.uleb128 0x2
	.long	.LASF423
	.byte	0xe7
	.uleb128 0x2
	.long	.LASF424
	.byte	0xe8
	.uleb128 0x2
	.long	.LASF425
	.byte	0xe9
	.uleb128 0x2
	.long	.LASF426
	.byte	0xea
	.uleb128 0x2
	.long	.LASF427
	.byte	0xeb
	.uleb128 0x2
	.long	.LASF428
	.byte	0xec
	.uleb128 0x2
	.long	.LASF429
	.byte	0xed
	.uleb128 0x2
	.long	.LASF430
	.byte	0xee
	.uleb128 0x2
	.long	.LASF431
	.byte	0xef
	.uleb128 0x2
	.long	.LASF432
	.byte	0xf0
	.uleb128 0x2
	.long	.LASF433
	.byte	0xf1
	.uleb128 0x2
	.long	.LASF434
	.byte	0xf2
	.uleb128 0x2
	.long	.LASF435
	.byte	0xf3
	.uleb128 0x2
	.long	.LASF436
	.byte	0xf4
	.uleb128 0x2
	.long	.LASF437
	.byte	0xf5
	.uleb128 0x2
	.long	.LASF438
	.byte	0xf6
	.uleb128 0x2
	.long	.LASF439
	.byte	0xf7
	.uleb128 0x2
	.long	.LASF440
	.byte	0xf8
	.uleb128 0x2
	.long	.LASF441
	.byte	0xf9
	.uleb128 0x2
	.long	.LASF442
	.byte	0xfa
	.uleb128 0x2
	.long	.LASF443
	.byte	0xfb
	.uleb128 0x2
	.long	.LASF444
	.byte	0xfc
	.uleb128 0x2
	.long	.LASF445
	.byte	0xfd
	.uleb128 0x2
	.long	.LASF446
	.byte	0xfe
	.uleb128 0x2
	.long	.LASF447
	.byte	0xff
	.uleb128 0x1
	.long	.LASF448
	.value	0x100
	.uleb128 0x1
	.long	.LASF449
	.value	0x101
	.uleb128 0x1
	.long	.LASF450
	.value	0x102
	.uleb128 0x1
	.long	.LASF451
	.value	0x103
	.uleb128 0x1
	.long	.LASF452
	.value	0x104
	.uleb128 0x1
	.long	.LASF453
	.value	0x105
	.uleb128 0x1
	.long	.LASF454
	.value	0x106
	.uleb128 0x1
	.long	.LASF455
	.value	0x107
	.uleb128 0x1
	.long	.LASF456
	.value	0x108
	.uleb128 0x1
	.long	.LASF457
	.value	0x109
	.uleb128 0x1
	.long	.LASF458
	.value	0x10a
	.uleb128 0x1
	.long	.LASF459
	.value	0x10b
	.uleb128 0x1
	.long	.LASF460
	.value	0x10c
	.uleb128 0x1
	.long	.LASF461
	.value	0x10d
	.uleb128 0x1
	.long	.LASF462
	.value	0x10e
	.uleb128 0x1
	.long	.LASF463
	.value	0x10f
	.uleb128 0x1
	.long	.LASF464
	.value	0x110
	.uleb128 0x1
	.long	.LASF465
	.value	0x111
	.uleb128 0x1
	.long	.LASF466
	.value	0x112
	.uleb128 0x1
	.long	.LASF467
	.value	0x113
	.uleb128 0x1
	.long	.LASF468
	.value	0x114
	.uleb128 0x1
	.long	.LASF469
	.value	0x115
	.uleb128 0x1
	.long	.LASF470
	.value	0x116
	.uleb128 0x1
	.long	.LASF471
	.value	0x117
	.uleb128 0x1
	.long	.LASF472
	.value	0x118
	.uleb128 0x1
	.long	.LASF473
	.value	0x119
	.uleb128 0x1
	.long	.LASF474
	.value	0x11a
	.uleb128 0x1
	.long	.LASF475
	.value	0x11b
	.uleb128 0x1
	.long	.LASF476
	.value	0x11c
	.uleb128 0x1
	.long	.LASF477
	.value	0x11d
	.uleb128 0x1
	.long	.LASF478
	.value	0x11e
	.uleb128 0x1
	.long	.LASF479
	.value	0x11f
	.uleb128 0x1
	.long	.LASF480
	.value	0x120
	.uleb128 0x1
	.long	.LASF481
	.value	0x121
	.uleb128 0x1
	.long	.LASF482
	.value	0x122
	.uleb128 0x1
	.long	.LASF483
	.value	0x123
	.uleb128 0x1
	.long	.LASF484
	.value	0x124
	.uleb128 0x1
	.long	.LASF485
	.value	0x125
	.uleb128 0x1
	.long	.LASF486
	.value	0x126
	.uleb128 0x1
	.long	.LASF487
	.value	0x127
	.uleb128 0x1
	.long	.LASF488
	.value	0x128
	.uleb128 0x1
	.long	.LASF489
	.value	0x129
	.uleb128 0x1
	.long	.LASF490
	.value	0x12a
	.uleb128 0x1
	.long	.LASF491
	.value	0x12b
	.uleb128 0x1
	.long	.LASF492
	.value	0x12c
	.uleb128 0x1
	.long	.LASF493
	.value	0x12d
	.uleb128 0x1
	.long	.LASF494
	.value	0x12e
	.uleb128 0x1
	.long	.LASF495
	.value	0x12f
	.uleb128 0x1
	.long	.LASF496
	.value	0x130
	.uleb128 0x1
	.long	.LASF497
	.value	0x131
	.uleb128 0x1
	.long	.LASF498
	.value	0x132
	.uleb128 0x1
	.long	.LASF499
	.value	0x133
	.uleb128 0x1
	.long	.LASF500
	.value	0x134
	.uleb128 0x1
	.long	.LASF501
	.value	0x135
	.uleb128 0x1
	.long	.LASF502
	.value	0x136
	.uleb128 0x1
	.long	.LASF503
	.value	0x137
	.uleb128 0x1
	.long	.LASF504
	.value	0x138
	.uleb128 0x1
	.long	.LASF505
	.value	0x139
	.uleb128 0x1
	.long	.LASF506
	.value	0x13a
	.uleb128 0x1
	.long	.LASF507
	.value	0x13b
	.uleb128 0x1
	.long	.LASF508
	.value	0x13c
	.uleb128 0x1
	.long	.LASF509
	.value	0x13d
	.uleb128 0x1
	.long	.LASF510
	.value	0x13e
	.uleb128 0x1
	.long	.LASF511
	.value	0x13f
	.uleb128 0x1
	.long	.LASF512
	.value	0x140
	.uleb128 0x1
	.long	.LASF513
	.value	0x141
	.uleb128 0x1
	.long	.LASF514
	.value	0x142
	.uleb128 0x1
	.long	.LASF515
	.value	0x143
	.uleb128 0x1
	.long	.LASF516
	.value	0x144
	.uleb128 0x1
	.long	.LASF517
	.value	0x145
	.uleb128 0x1
	.long	.LASF518
	.value	0x146
	.uleb128 0x1
	.long	.LASF519
	.value	0x147
	.uleb128 0x1
	.long	.LASF520
	.value	0x148
	.uleb128 0x1
	.long	.LASF521
	.value	0x149
	.uleb128 0x1
	.long	.LASF522
	.value	0x14a
	.uleb128 0x1
	.long	.LASF523
	.value	0x14b
	.uleb128 0x1
	.long	.LASF524
	.value	0x14c
	.uleb128 0x1
	.long	.LASF525
	.value	0x14d
	.uleb128 0x1
	.long	.LASF526
	.value	0x14e
	.uleb128 0x1
	.long	.LASF527
	.value	0x14f
	.uleb128 0x1
	.long	.LASF528
	.value	0x150
	.uleb128 0x1
	.long	.LASF529
	.value	0x151
	.uleb128 0x1
	.long	.LASF530
	.value	0x152
	.uleb128 0x1
	.long	.LASF531
	.value	0x153
	.uleb128 0x1
	.long	.LASF532
	.value	0x154
	.uleb128 0x1
	.long	.LASF533
	.value	0x155
	.uleb128 0x1
	.long	.LASF534
	.value	0x156
	.uleb128 0x1
	.long	.LASF535
	.value	0x157
	.uleb128 0x1
	.long	.LASF536
	.value	0x158
	.uleb128 0x1
	.long	.LASF537
	.value	0x159
	.uleb128 0x1
	.long	.LASF538
	.value	0x15a
	.uleb128 0x1
	.long	.LASF539
	.value	0x15b
	.uleb128 0x1
	.long	.LASF540
	.value	0x15c
	.uleb128 0x1
	.long	.LASF541
	.value	0x15d
	.uleb128 0x1
	.long	.LASF542
	.value	0x15e
	.uleb128 0x1
	.long	.LASF543
	.value	0x15f
	.uleb128 0x1
	.long	.LASF544
	.value	0x160
	.uleb128 0x1
	.long	.LASF545
	.value	0x161
	.uleb128 0x1
	.long	.LASF546
	.value	0x162
	.uleb128 0x1
	.long	.LASF547
	.value	0x163
	.uleb128 0x1
	.long	.LASF548
	.value	0x164
	.uleb128 0x1
	.long	.LASF549
	.value	0x165
	.uleb128 0x1
	.long	.LASF550
	.value	0x166
	.uleb128 0x1
	.long	.LASF551
	.value	0x167
	.uleb128 0x1
	.long	.LASF552
	.value	0x168
	.uleb128 0x1
	.long	.LASF553
	.value	0x169
	.uleb128 0x1
	.long	.LASF554
	.value	0x16a
	.uleb128 0x1
	.long	.LASF555
	.value	0x16b
	.uleb128 0x1
	.long	.LASF556
	.value	0x16c
	.uleb128 0x1
	.long	.LASF557
	.value	0x16d
	.uleb128 0x1
	.long	.LASF558
	.value	0x16e
	.uleb128 0x1
	.long	.LASF559
	.value	0x16f
	.uleb128 0x1
	.long	.LASF560
	.value	0x170
	.uleb128 0x1
	.long	.LASF561
	.value	0x171
	.uleb128 0x1
	.long	.LASF562
	.value	0x172
	.uleb128 0x1
	.long	.LASF563
	.value	0x173
	.uleb128 0x1
	.long	.LASF564
	.value	0x174
	.uleb128 0x1
	.long	.LASF565
	.value	0x175
	.uleb128 0x1
	.long	.LASF566
	.value	0x176
	.uleb128 0x1
	.long	.LASF567
	.value	0x177
	.uleb128 0x1
	.long	.LASF568
	.value	0x178
	.uleb128 0x1
	.long	.LASF569
	.value	0x179
	.uleb128 0x1
	.long	.LASF570
	.value	0x17a
	.uleb128 0x1
	.long	.LASF571
	.value	0x17b
	.uleb128 0x1
	.long	.LASF572
	.value	0x17c
	.uleb128 0x1
	.long	.LASF573
	.value	0x17d
	.uleb128 0x1
	.long	.LASF574
	.value	0x17e
	.uleb128 0x1
	.long	.LASF575
	.value	0x17f
	.uleb128 0x1
	.long	.LASF576
	.value	0x180
	.uleb128 0x1
	.long	.LASF577
	.value	0x181
	.uleb128 0x1
	.long	.LASF578
	.value	0x182
	.uleb128 0x1
	.long	.LASF579
	.value	0x183
	.uleb128 0x1
	.long	.LASF580
	.value	0x184
	.uleb128 0x1
	.long	.LASF581
	.value	0x185
	.uleb128 0x1
	.long	.LASF582
	.value	0x186
	.uleb128 0x1
	.long	.LASF583
	.value	0x187
	.uleb128 0x1
	.long	.LASF584
	.value	0x188
	.uleb128 0x1
	.long	.LASF585
	.value	0x189
	.uleb128 0x1
	.long	.LASF586
	.value	0x18a
	.uleb128 0x1
	.long	.LASF587
	.value	0x18b
	.uleb128 0x1
	.long	.LASF588
	.value	0x18c
	.uleb128 0x1
	.long	.LASF589
	.value	0x18d
	.uleb128 0x1
	.long	.LASF590
	.value	0x18e
	.uleb128 0x1
	.long	.LASF591
	.value	0x18f
	.uleb128 0x1
	.long	.LASF592
	.value	0x190
	.uleb128 0x1
	.long	.LASF593
	.value	0x191
	.uleb128 0x1
	.long	.LASF594
	.value	0x192
	.uleb128 0x1
	.long	.LASF595
	.value	0x193
	.uleb128 0x1
	.long	.LASF596
	.value	0x194
	.uleb128 0x1
	.long	.LASF597
	.value	0x195
	.uleb128 0x1
	.long	.LASF598
	.value	0x196
	.uleb128 0x1
	.long	.LASF599
	.value	0x197
	.uleb128 0x1
	.long	.LASF600
	.value	0x198
	.uleb128 0x1
	.long	.LASF601
	.value	0x199
	.uleb128 0x1
	.long	.LASF602
	.value	0x19a
	.uleb128 0x1
	.long	.LASF603
	.value	0x19b
	.uleb128 0x1
	.long	.LASF604
	.value	0x19c
	.uleb128 0x1
	.long	.LASF605
	.value	0x19d
	.uleb128 0x1
	.long	.LASF606
	.value	0x19e
	.uleb128 0x1
	.long	.LASF607
	.value	0x19f
	.uleb128 0x1
	.long	.LASF608
	.value	0x1a0
	.uleb128 0x1
	.long	.LASF609
	.value	0x1a1
	.uleb128 0x1
	.long	.LASF610
	.value	0x1a2
	.uleb128 0x1
	.long	.LASF611
	.value	0x1a3
	.uleb128 0x1
	.long	.LASF612
	.value	0x1a4
	.uleb128 0x1
	.long	.LASF613
	.value	0x1a5
	.uleb128 0x1
	.long	.LASF614
	.value	0x1a6
	.uleb128 0x1
	.long	.LASF615
	.value	0x1a7
	.uleb128 0x1
	.long	.LASF616
	.value	0x1a8
	.uleb128 0x1
	.long	.LASF617
	.value	0x1a9
	.uleb128 0x1
	.long	.LASF618
	.value	0x1aa
	.uleb128 0x1
	.long	.LASF619
	.value	0x1ab
	.uleb128 0x1
	.long	.LASF620
	.value	0x1ac
	.uleb128 0x1
	.long	.LASF621
	.value	0x1ad
	.uleb128 0x1
	.long	.LASF622
	.value	0x1ae
	.uleb128 0x1
	.long	.LASF623
	.value	0x1af
	.uleb128 0x1
	.long	.LASF624
	.value	0x1b0
	.uleb128 0x1
	.long	.LASF625
	.value	0x1b1
	.uleb128 0x1
	.long	.LASF626
	.value	0x1b2
	.uleb128 0x1
	.long	.LASF627
	.value	0x1b3
	.uleb128 0x1
	.long	.LASF628
	.value	0x1b4
	.uleb128 0x1
	.long	.LASF629
	.value	0x1b5
	.uleb128 0x1
	.long	.LASF630
	.value	0x1b6
	.uleb128 0x1
	.long	.LASF631
	.value	0x1b7
	.uleb128 0x1
	.long	.LASF632
	.value	0x1b8
	.uleb128 0x1
	.long	.LASF633
	.value	0x1b9
	.uleb128 0x1
	.long	.LASF634
	.value	0x1ba
	.uleb128 0x1
	.long	.LASF635
	.value	0x1bb
	.uleb128 0x1
	.long	.LASF636
	.value	0x1bc
	.uleb128 0x1
	.long	.LASF637
	.value	0x1bd
	.uleb128 0x1
	.long	.LASF638
	.value	0x1be
	.uleb128 0x1
	.long	.LASF639
	.value	0x1bf
	.uleb128 0x1
	.long	.LASF640
	.value	0x1c0
	.uleb128 0x1
	.long	.LASF641
	.value	0x1c1
	.uleb128 0x1
	.long	.LASF642
	.value	0x1c2
	.uleb128 0x1
	.long	.LASF643
	.value	0x1c3
	.uleb128 0x1
	.long	.LASF644
	.value	0x1c4
	.uleb128 0x1
	.long	.LASF645
	.value	0x1c5
	.uleb128 0x1
	.long	.LASF646
	.value	0x1c6
	.uleb128 0x1
	.long	.LASF647
	.value	0x1c7
	.uleb128 0x1
	.long	.LASF648
	.value	0x1c8
	.uleb128 0x1
	.long	.LASF649
	.value	0x1c9
	.uleb128 0x1
	.long	.LASF650
	.value	0x1ca
	.uleb128 0x1
	.long	.LASF651
	.value	0x1cb
	.uleb128 0x1
	.long	.LASF652
	.value	0x1cc
	.uleb128 0x1
	.long	.LASF653
	.value	0x1cd
	.uleb128 0x1
	.long	.LASF654
	.value	0x1ce
	.uleb128 0x1
	.long	.LASF655
	.value	0x1cf
	.uleb128 0x1
	.long	.LASF656
	.value	0x1d0
	.uleb128 0x1
	.long	.LASF657
	.value	0x1d1
	.uleb128 0x1
	.long	.LASF658
	.value	0x1d2
	.uleb128 0x1
	.long	.LASF659
	.value	0x1d3
	.uleb128 0x1
	.long	.LASF660
	.value	0x1d4
	.uleb128 0x1
	.long	.LASF661
	.value	0x1d5
	.uleb128 0x1
	.long	.LASF662
	.value	0x1d6
	.uleb128 0x1
	.long	.LASF663
	.value	0x1d7
	.uleb128 0x1
	.long	.LASF664
	.value	0x1d8
	.uleb128 0x1
	.long	.LASF665
	.value	0x1d9
	.uleb128 0x1
	.long	.LASF666
	.value	0x1da
	.uleb128 0x1
	.long	.LASF667
	.value	0x1db
	.uleb128 0x1
	.long	.LASF668
	.value	0x1dc
	.uleb128 0x1
	.long	.LASF669
	.value	0x1dd
	.uleb128 0x1
	.long	.LASF670
	.value	0x1de
	.uleb128 0x1
	.long	.LASF671
	.value	0x1df
	.uleb128 0x1
	.long	.LASF672
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF673
	.value	0x1e1
	.uleb128 0x1
	.long	.LASF674
	.value	0x1e2
	.uleb128 0x1
	.long	.LASF675
	.value	0x1e3
	.uleb128 0x1
	.long	.LASF676
	.value	0x1e4
	.uleb128 0x1
	.long	.LASF677
	.value	0x1e5
	.uleb128 0x1
	.long	.LASF678
	.value	0x1e6
	.uleb128 0x1
	.long	.LASF679
	.value	0x1e7
	.uleb128 0x1
	.long	.LASF680
	.value	0x1e8
	.uleb128 0x1
	.long	.LASF681
	.value	0x1e9
	.uleb128 0x1
	.long	.LASF682
	.value	0x1ea
	.uleb128 0x1
	.long	.LASF683
	.value	0x1eb
	.uleb128 0x1
	.long	.LASF684
	.value	0x1ec
	.uleb128 0x1
	.long	.LASF685
	.value	0x1ed
	.uleb128 0x1
	.long	.LASF686
	.value	0x1ee
	.uleb128 0x1
	.long	.LASF687
	.value	0x1ef
	.uleb128 0x1
	.long	.LASF688
	.value	0x1f0
	.uleb128 0x1
	.long	.LASF689
	.value	0x1f1
	.uleb128 0x1
	.long	.LASF690
	.value	0x1f2
	.uleb128 0x1
	.long	.LASF691
	.value	0x1f3
	.uleb128 0x1
	.long	.LASF692
	.value	0x1f4
	.uleb128 0x1
	.long	.LASF693
	.value	0x1f5
	.uleb128 0x1
	.long	.LASF694
	.value	0x1f6
	.uleb128 0x1
	.long	.LASF695
	.value	0x1f7
	.uleb128 0x1
	.long	.LASF696
	.value	0x1f8
	.uleb128 0x1
	.long	.LASF697
	.value	0x1f9
	.uleb128 0x1
	.long	.LASF698
	.value	0x1fa
	.uleb128 0x1
	.long	.LASF699
	.value	0x1fb
	.uleb128 0x1
	.long	.LASF700
	.value	0x1fc
	.uleb128 0x1
	.long	.LASF701
	.value	0x1fd
	.uleb128 0x1
	.long	.LASF702
	.value	0x1fe
	.uleb128 0x1
	.long	.LASF703
	.value	0x1ff
	.uleb128 0x1
	.long	.LASF704
	.value	0x200
	.uleb128 0x1
	.long	.LASF705
	.value	0x201
	.uleb128 0x1
	.long	.LASF706
	.value	0x202
	.uleb128 0x1
	.long	.LASF707
	.value	0x203
	.uleb128 0x1
	.long	.LASF708
	.value	0x204
	.uleb128 0x1
	.long	.LASF709
	.value	0x205
	.uleb128 0x1
	.long	.LASF710
	.value	0x206
	.uleb128 0x1
	.long	.LASF711
	.value	0x207
	.uleb128 0x1
	.long	.LASF712
	.value	0x208
	.uleb128 0x1
	.long	.LASF713
	.value	0x209
	.uleb128 0x1
	.long	.LASF714
	.value	0x20a
	.uleb128 0x1
	.long	.LASF715
	.value	0x20b
	.uleb128 0x1
	.long	.LASF716
	.value	0x20c
	.uleb128 0x1
	.long	.LASF717
	.value	0x20d
	.uleb128 0x1
	.long	.LASF718
	.value	0x20e
	.uleb128 0x1
	.long	.LASF719
	.value	0x20f
	.uleb128 0x1
	.long	.LASF720
	.value	0x210
	.uleb128 0x1
	.long	.LASF721
	.value	0x211
	.uleb128 0x1
	.long	.LASF722
	.value	0x212
	.uleb128 0x1
	.long	.LASF723
	.value	0x213
	.uleb128 0x1
	.long	.LASF724
	.value	0x214
	.uleb128 0x1
	.long	.LASF725
	.value	0x215
	.uleb128 0x1
	.long	.LASF726
	.value	0x216
	.uleb128 0x1
	.long	.LASF727
	.value	0x217
	.uleb128 0x1
	.long	.LASF728
	.value	0x218
	.uleb128 0x1
	.long	.LASF729
	.value	0x219
	.uleb128 0x1
	.long	.LASF730
	.value	0x21a
	.uleb128 0x1
	.long	.LASF731
	.value	0x21b
	.uleb128 0x1
	.long	.LASF732
	.value	0x21c
	.uleb128 0x1
	.long	.LASF733
	.value	0x21d
	.uleb128 0x1
	.long	.LASF734
	.value	0x21e
	.uleb128 0x1
	.long	.LASF735
	.value	0x21f
	.uleb128 0x1
	.long	.LASF736
	.value	0x220
	.uleb128 0x1
	.long	.LASF737
	.value	0x221
	.uleb128 0x1
	.long	.LASF738
	.value	0x222
	.uleb128 0x1
	.long	.LASF739
	.value	0x223
	.uleb128 0x1
	.long	.LASF740
	.value	0x224
	.uleb128 0x1
	.long	.LASF741
	.value	0x225
	.uleb128 0x1
	.long	.LASF742
	.value	0x226
	.uleb128 0x1
	.long	.LASF743
	.value	0x227
	.uleb128 0x1
	.long	.LASF744
	.value	0x228
	.uleb128 0x1
	.long	.LASF745
	.value	0x229
	.uleb128 0x1
	.long	.LASF746
	.value	0x22a
	.uleb128 0x1
	.long	.LASF747
	.value	0x22b
	.uleb128 0x1
	.long	.LASF748
	.value	0x22c
	.uleb128 0x1
	.long	.LASF749
	.value	0x22d
	.uleb128 0x1
	.long	.LASF750
	.value	0x22e
	.uleb128 0x1
	.long	.LASF751
	.value	0x22f
	.uleb128 0x1
	.long	.LASF752
	.value	0x230
	.uleb128 0x1
	.long	.LASF753
	.value	0x231
	.uleb128 0x1
	.long	.LASF754
	.value	0x232
	.uleb128 0x1
	.long	.LASF755
	.value	0x233
	.uleb128 0x1
	.long	.LASF756
	.value	0x234
	.uleb128 0x1
	.long	.LASF757
	.value	0x235
	.uleb128 0x1
	.long	.LASF758
	.value	0x236
	.uleb128 0x1
	.long	.LASF759
	.value	0x237
	.uleb128 0x1
	.long	.LASF760
	.value	0x238
	.uleb128 0x1
	.long	.LASF761
	.value	0x239
	.uleb128 0x1
	.long	.LASF762
	.value	0x23a
	.uleb128 0x1
	.long	.LASF763
	.value	0x23b
	.uleb128 0x1
	.long	.LASF764
	.value	0x23c
	.uleb128 0x1
	.long	.LASF765
	.value	0x23d
	.uleb128 0x1
	.long	.LASF766
	.value	0x23e
	.uleb128 0x1
	.long	.LASF767
	.value	0x23f
	.uleb128 0x1
	.long	.LASF768
	.value	0x240
	.uleb128 0x1
	.long	.LASF769
	.value	0x241
	.uleb128 0x1
	.long	.LASF770
	.value	0x242
	.uleb128 0x1
	.long	.LASF771
	.value	0x243
	.uleb128 0x1
	.long	.LASF772
	.value	0x244
	.uleb128 0x1
	.long	.LASF773
	.value	0x245
	.uleb128 0x1
	.long	.LASF774
	.value	0x246
	.uleb128 0x1
	.long	.LASF775
	.value	0x247
	.uleb128 0x1
	.long	.LASF776
	.value	0x248
	.uleb128 0x1
	.long	.LASF777
	.value	0x249
	.uleb128 0x1
	.long	.LASF778
	.value	0x24a
	.uleb128 0x1
	.long	.LASF779
	.value	0x24b
	.uleb128 0x1
	.long	.LASF780
	.value	0x24c
	.uleb128 0x1
	.long	.LASF781
	.value	0x24d
	.uleb128 0x1
	.long	.LASF782
	.value	0x24e
	.uleb128 0x1
	.long	.LASF783
	.value	0x24f
	.uleb128 0x1
	.long	.LASF784
	.value	0x250
	.uleb128 0x1
	.long	.LASF785
	.value	0x251
	.uleb128 0x1
	.long	.LASF786
	.value	0x252
	.uleb128 0x1
	.long	.LASF787
	.value	0x253
	.uleb128 0x1
	.long	.LASF788
	.value	0x254
	.uleb128 0x1
	.long	.LASF789
	.value	0x255
	.uleb128 0x1
	.long	.LASF790
	.value	0x256
	.uleb128 0x1
	.long	.LASF791
	.value	0x257
	.uleb128 0x1
	.long	.LASF792
	.value	0x258
	.uleb128 0x1
	.long	.LASF793
	.value	0x259
	.uleb128 0x1
	.long	.LASF794
	.value	0x25a
	.uleb128 0x1
	.long	.LASF795
	.value	0x25b
	.uleb128 0x1
	.long	.LASF796
	.value	0x25c
	.uleb128 0x1
	.long	.LASF797
	.value	0x25d
	.uleb128 0x1
	.long	.LASF798
	.value	0x25e
	.uleb128 0x1
	.long	.LASF799
	.value	0x25f
	.uleb128 0x1
	.long	.LASF800
	.value	0x260
	.uleb128 0x1
	.long	.LASF801
	.value	0x261
	.uleb128 0x1
	.long	.LASF802
	.value	0x262
	.uleb128 0x1
	.long	.LASF803
	.value	0x263
	.uleb128 0x1
	.long	.LASF804
	.value	0x264
	.uleb128 0x1
	.long	.LASF805
	.value	0x265
	.uleb128 0x1
	.long	.LASF806
	.value	0x266
	.uleb128 0x1
	.long	.LASF807
	.value	0x267
	.uleb128 0x1
	.long	.LASF808
	.value	0x268
	.uleb128 0x1
	.long	.LASF809
	.value	0x269
	.uleb128 0x1
	.long	.LASF810
	.value	0x26a
	.uleb128 0x1
	.long	.LASF811
	.value	0x26b
	.uleb128 0x1
	.long	.LASF812
	.value	0x26c
	.uleb128 0x1
	.long	.LASF813
	.value	0x26d
	.uleb128 0x1
	.long	.LASF814
	.value	0x26e
	.uleb128 0x1
	.long	.LASF815
	.value	0x26f
	.uleb128 0x1
	.long	.LASF816
	.value	0x270
	.uleb128 0x1
	.long	.LASF817
	.value	0x271
	.uleb128 0x1
	.long	.LASF818
	.value	0x272
	.uleb128 0x1
	.long	.LASF819
	.value	0x273
	.uleb128 0x1
	.long	.LASF820
	.value	0x274
	.uleb128 0x1
	.long	.LASF821
	.value	0x275
	.uleb128 0x1
	.long	.LASF822
	.value	0x276
	.uleb128 0x1
	.long	.LASF823
	.value	0x277
	.uleb128 0x1
	.long	.LASF824
	.value	0x278
	.uleb128 0x1
	.long	.LASF825
	.value	0x279
	.uleb128 0x1
	.long	.LASF826
	.value	0x27a
	.uleb128 0x1
	.long	.LASF827
	.value	0x27b
	.uleb128 0x1
	.long	.LASF828
	.value	0x27c
	.uleb128 0x1
	.long	.LASF829
	.value	0x27d
	.uleb128 0x1
	.long	.LASF830
	.value	0x27e
	.uleb128 0x1
	.long	.LASF831
	.value	0x27f
	.uleb128 0x1
	.long	.LASF832
	.value	0x280
	.uleb128 0x1
	.long	.LASF833
	.value	0x281
	.uleb128 0x1
	.long	.LASF834
	.value	0x282
	.uleb128 0x1
	.long	.LASF835
	.value	0x283
	.uleb128 0x1
	.long	.LASF836
	.value	0x284
	.uleb128 0x1
	.long	.LASF837
	.value	0x285
	.uleb128 0x1
	.long	.LASF838
	.value	0x286
	.uleb128 0x1
	.long	.LASF839
	.value	0x287
	.uleb128 0x1
	.long	.LASF840
	.value	0x288
	.uleb128 0x1
	.long	.LASF841
	.value	0x289
	.uleb128 0x1
	.long	.LASF842
	.value	0x28a
	.uleb128 0x1
	.long	.LASF843
	.value	0x28b
	.uleb128 0x1
	.long	.LASF844
	.value	0x28c
	.uleb128 0x1
	.long	.LASF845
	.value	0x28d
	.uleb128 0x1
	.long	.LASF846
	.value	0x28e
	.uleb128 0x1
	.long	.LASF847
	.value	0x28f
	.uleb128 0x1
	.long	.LASF848
	.value	0x290
	.uleb128 0x1
	.long	.LASF849
	.value	0x291
	.uleb128 0x1
	.long	.LASF850
	.value	0x292
	.uleb128 0x1
	.long	.LASF851
	.value	0x293
	.uleb128 0x1
	.long	.LASF852
	.value	0x294
	.uleb128 0x1
	.long	.LASF853
	.value	0x295
	.uleb128 0x1
	.long	.LASF854
	.value	0x296
	.uleb128 0x1
	.long	.LASF855
	.value	0x297
	.uleb128 0x1
	.long	.LASF856
	.value	0x298
	.uleb128 0x1
	.long	.LASF857
	.value	0x299
	.uleb128 0x1
	.long	.LASF858
	.value	0x29a
	.uleb128 0x1
	.long	.LASF859
	.value	0x29b
	.uleb128 0x1
	.long	.LASF860
	.value	0x29c
	.uleb128 0x1
	.long	.LASF861
	.value	0x29d
	.uleb128 0x1
	.long	.LASF862
	.value	0x29e
	.uleb128 0x1
	.long	.LASF863
	.value	0x29f
	.uleb128 0x1
	.long	.LASF864
	.value	0x2a0
	.uleb128 0x1
	.long	.LASF865
	.value	0x2a1
	.uleb128 0x1
	.long	.LASF866
	.value	0x2a2
	.uleb128 0x1
	.long	.LASF867
	.value	0x2a3
	.uleb128 0x1
	.long	.LASF868
	.value	0x2a4
	.uleb128 0x1
	.long	.LASF869
	.value	0x2a5
	.uleb128 0x1
	.long	.LASF870
	.value	0x2a6
	.uleb128 0x1
	.long	.LASF871
	.value	0x2a7
	.uleb128 0x1
	.long	.LASF872
	.value	0x2a8
	.uleb128 0x1
	.long	.LASF873
	.value	0x2a9
	.uleb128 0x1
	.long	.LASF874
	.value	0x2aa
	.uleb128 0x1
	.long	.LASF875
	.value	0x2ab
	.uleb128 0x1
	.long	.LASF876
	.value	0x2ac
	.uleb128 0x1
	.long	.LASF877
	.value	0x2ad
	.uleb128 0x1
	.long	.LASF878
	.value	0x2ae
	.uleb128 0x1
	.long	.LASF879
	.value	0x2af
	.uleb128 0x1
	.long	.LASF880
	.value	0x2b0
	.uleb128 0x1
	.long	.LASF881
	.value	0x2b1
	.uleb128 0x1
	.long	.LASF882
	.value	0x2b2
	.uleb128 0x1
	.long	.LASF883
	.value	0x2b3
	.uleb128 0x1
	.long	.LASF884
	.value	0x2b4
	.uleb128 0x1
	.long	.LASF885
	.value	0x2b5
	.uleb128 0x1
	.long	.LASF886
	.value	0x2b6
	.uleb128 0x1
	.long	.LASF887
	.value	0x2b7
	.uleb128 0x1
	.long	.LASF888
	.value	0x2b8
	.uleb128 0x1
	.long	.LASF889
	.value	0x2b9
	.uleb128 0x1
	.long	.LASF890
	.value	0x2ba
	.uleb128 0x1
	.long	.LASF891
	.value	0x2bb
	.uleb128 0x1
	.long	.LASF892
	.value	0x2bc
	.uleb128 0x1
	.long	.LASF893
	.value	0x2bd
	.uleb128 0x1
	.long	.LASF894
	.value	0x2be
	.uleb128 0x1
	.long	.LASF895
	.value	0x2bf
	.uleb128 0x1
	.long	.LASF896
	.value	0x2c0
	.uleb128 0x1
	.long	.LASF897
	.value	0x2c1
	.uleb128 0x1
	.long	.LASF898
	.value	0x2c2
	.uleb128 0x1
	.long	.LASF899
	.value	0x2c3
	.uleb128 0x1
	.long	.LASF900
	.value	0x2c4
	.uleb128 0x1
	.long	.LASF901
	.value	0x2c5
	.uleb128 0x1
	.long	.LASF902
	.value	0x2c6
	.uleb128 0x1
	.long	.LASF903
	.value	0x2c7
	.uleb128 0x1
	.long	.LASF904
	.value	0x2c8
	.uleb128 0x1
	.long	.LASF905
	.value	0x2c9
	.uleb128 0x1
	.long	.LASF906
	.value	0x2ca
	.uleb128 0x1
	.long	.LASF907
	.value	0x2cb
	.uleb128 0x1
	.long	.LASF908
	.value	0x2cc
	.uleb128 0x1
	.long	.LASF909
	.value	0x2cd
	.uleb128 0x1
	.long	.LASF910
	.value	0x2ce
	.uleb128 0x1
	.long	.LASF911
	.value	0x2cf
	.uleb128 0x1
	.long	.LASF912
	.value	0x2d0
	.uleb128 0x1
	.long	.LASF913
	.value	0x2d1
	.uleb128 0x1
	.long	.LASF914
	.value	0x2d2
	.uleb128 0x1
	.long	.LASF915
	.value	0x2d3
	.uleb128 0x1
	.long	.LASF916
	.value	0x2d4
	.uleb128 0x1
	.long	.LASF917
	.value	0x2d5
	.uleb128 0x1
	.long	.LASF918
	.value	0x2d6
	.uleb128 0x1
	.long	.LASF919
	.value	0x2d7
	.uleb128 0x1
	.long	.LASF920
	.value	0x2d8
	.uleb128 0x1
	.long	.LASF921
	.value	0x2d9
	.uleb128 0x1
	.long	.LASF922
	.value	0x2da
	.uleb128 0x1
	.long	.LASF923
	.value	0x2db
	.uleb128 0x1
	.long	.LASF924
	.value	0x2dc
	.uleb128 0x1
	.long	.LASF925
	.value	0x2dd
	.uleb128 0x1
	.long	.LASF926
	.value	0x2de
	.uleb128 0x1
	.long	.LASF927
	.value	0x2df
	.uleb128 0x1
	.long	.LASF928
	.value	0x2e0
	.uleb128 0x1
	.long	.LASF929
	.value	0x2e1
	.uleb128 0x1
	.long	.LASF930
	.value	0x2e2
	.uleb128 0x1
	.long	.LASF931
	.value	0x2e3
	.uleb128 0x1
	.long	.LASF932
	.value	0x2e4
	.uleb128 0x1
	.long	.LASF933
	.value	0x2e5
	.uleb128 0x1
	.long	.LASF934
	.value	0x2e6
	.uleb128 0x1
	.long	.LASF935
	.value	0x2e7
	.uleb128 0x1
	.long	.LASF936
	.value	0x2e8
	.uleb128 0x1
	.long	.LASF937
	.value	0x2e9
	.uleb128 0x1
	.long	.LASF938
	.value	0x2ea
	.uleb128 0x1
	.long	.LASF939
	.value	0x2eb
	.uleb128 0x1
	.long	.LASF940
	.value	0x2ec
	.uleb128 0x1
	.long	.LASF941
	.value	0x2ed
	.uleb128 0x1
	.long	.LASF942
	.value	0x2ee
	.uleb128 0x1
	.long	.LASF943
	.value	0x2ef
	.uleb128 0x1
	.long	.LASF944
	.value	0x2f0
	.uleb128 0x1
	.long	.LASF945
	.value	0x2f1
	.uleb128 0x1
	.long	.LASF946
	.value	0x2f2
	.uleb128 0x1
	.long	.LASF947
	.value	0x2f3
	.uleb128 0x1
	.long	.LASF948
	.value	0x2f4
	.uleb128 0x1
	.long	.LASF949
	.value	0x2f5
	.uleb128 0x1
	.long	.LASF950
	.value	0x2f6
	.uleb128 0x1
	.long	.LASF951
	.value	0x2f7
	.uleb128 0x1
	.long	.LASF952
	.value	0x2f8
	.uleb128 0x1
	.long	.LASF953
	.value	0x2f9
	.uleb128 0x1
	.long	.LASF954
	.value	0x2fa
	.uleb128 0x1
	.long	.LASF955
	.value	0x2fb
	.uleb128 0x1
	.long	.LASF956
	.value	0x2fc
	.uleb128 0x1
	.long	.LASF957
	.value	0x2fd
	.uleb128 0x1
	.long	.LASF958
	.value	0x2fe
	.uleb128 0x1
	.long	.LASF959
	.value	0x2ff
	.uleb128 0x1
	.long	.LASF960
	.value	0x300
	.uleb128 0x1
	.long	.LASF961
	.value	0x301
	.uleb128 0x1
	.long	.LASF962
	.value	0x302
	.uleb128 0x1
	.long	.LASF963
	.value	0x303
	.uleb128 0x1
	.long	.LASF964
	.value	0x304
	.uleb128 0x1
	.long	.LASF965
	.value	0x305
	.uleb128 0x1
	.long	.LASF966
	.value	0x306
	.uleb128 0x1
	.long	.LASF967
	.value	0x307
	.uleb128 0x1
	.long	.LASF968
	.value	0x308
	.uleb128 0x1
	.long	.LASF969
	.value	0x309
	.uleb128 0x1
	.long	.LASF970
	.value	0x30a
	.uleb128 0x1
	.long	.LASF971
	.value	0x30b
	.uleb128 0x1
	.long	.LASF972
	.value	0x30c
	.uleb128 0x1
	.long	.LASF973
	.value	0x30d
	.uleb128 0x1
	.long	.LASF974
	.value	0x30e
	.uleb128 0x1
	.long	.LASF975
	.value	0x30f
	.uleb128 0x1
	.long	.LASF976
	.value	0x310
	.uleb128 0x1
	.long	.LASF977
	.value	0x311
	.uleb128 0x1
	.long	.LASF978
	.value	0x312
	.uleb128 0x1
	.long	.LASF979
	.value	0x313
	.uleb128 0x1
	.long	.LASF980
	.value	0x314
	.uleb128 0x1
	.long	.LASF981
	.value	0x315
	.uleb128 0x1
	.long	.LASF982
	.value	0x316
	.uleb128 0x1
	.long	.LASF983
	.value	0x317
	.uleb128 0x1
	.long	.LASF984
	.value	0x318
	.uleb128 0x1
	.long	.LASF985
	.value	0x319
	.uleb128 0x1
	.long	.LASF986
	.value	0x31a
	.uleb128 0x1
	.long	.LASF987
	.value	0x31b
	.uleb128 0x1
	.long	.LASF988
	.value	0x31c
	.uleb128 0x1
	.long	.LASF989
	.value	0x31d
	.uleb128 0x1
	.long	.LASF990
	.value	0x31e
	.uleb128 0x1
	.long	.LASF991
	.value	0x31f
	.uleb128 0x1
	.long	.LASF992
	.value	0x320
	.uleb128 0x1
	.long	.LASF993
	.value	0x321
	.uleb128 0x1
	.long	.LASF994
	.value	0x322
	.uleb128 0x1
	.long	.LASF995
	.value	0x323
	.uleb128 0x1
	.long	.LASF996
	.value	0x324
	.uleb128 0x1
	.long	.LASF997
	.value	0x325
	.uleb128 0x1
	.long	.LASF998
	.value	0x326
	.uleb128 0x1
	.long	.LASF999
	.value	0x327
	.uleb128 0x1
	.long	.LASF1000
	.value	0x328
	.uleb128 0x1
	.long	.LASF1001
	.value	0x329
	.uleb128 0x1
	.long	.LASF1002
	.value	0x32a
	.uleb128 0x1
	.long	.LASF1003
	.value	0x32b
	.uleb128 0x1
	.long	.LASF1004
	.value	0x32c
	.uleb128 0x1
	.long	.LASF1005
	.value	0x32d
	.uleb128 0x1
	.long	.LASF1006
	.value	0x32e
	.uleb128 0x1
	.long	.LASF1007
	.value	0x32f
	.uleb128 0x1
	.long	.LASF1008
	.value	0x330
	.uleb128 0x1
	.long	.LASF1009
	.value	0x331
	.uleb128 0x1
	.long	.LASF1010
	.value	0x332
	.uleb128 0x1
	.long	.LASF1011
	.value	0x333
	.uleb128 0x1
	.long	.LASF1012
	.value	0x334
	.uleb128 0x1
	.long	.LASF1013
	.value	0x335
	.uleb128 0x1
	.long	.LASF1014
	.value	0x336
	.uleb128 0x1
	.long	.LASF1015
	.value	0x337
	.uleb128 0x1
	.long	.LASF1016
	.value	0x338
	.uleb128 0x1
	.long	.LASF1017
	.value	0x339
	.uleb128 0x1
	.long	.LASF1018
	.value	0x33a
	.uleb128 0x1
	.long	.LASF1019
	.value	0x33b
	.uleb128 0x1
	.long	.LASF1020
	.value	0x33c
	.uleb128 0x1
	.long	.LASF1021
	.value	0x33d
	.uleb128 0x1
	.long	.LASF1022
	.value	0x33e
	.uleb128 0x1
	.long	.LASF1023
	.value	0x33f
	.uleb128 0x1
	.long	.LASF1024
	.value	0x340
	.uleb128 0x1
	.long	.LASF1025
	.value	0x341
	.uleb128 0x1
	.long	.LASF1026
	.value	0x342
	.uleb128 0x1
	.long	.LASF1027
	.value	0x343
	.uleb128 0x1
	.long	.LASF1028
	.value	0x344
	.uleb128 0x1
	.long	.LASF1029
	.value	0x345
	.uleb128 0x1
	.long	.LASF1030
	.value	0x346
	.uleb128 0x1
	.long	.LASF1031
	.value	0x347
	.uleb128 0x1
	.long	.LASF1032
	.value	0x348
	.uleb128 0x1
	.long	.LASF1033
	.value	0x349
	.uleb128 0x1
	.long	.LASF1034
	.value	0x34a
	.uleb128 0x1
	.long	.LASF1035
	.value	0x34b
	.uleb128 0x1
	.long	.LASF1036
	.value	0x34c
	.uleb128 0x1
	.long	.LASF1037
	.value	0x34d
	.uleb128 0x1
	.long	.LASF1038
	.value	0x34e
	.uleb128 0x1
	.long	.LASF1039
	.value	0x34f
	.uleb128 0x1
	.long	.LASF1040
	.value	0x350
	.uleb128 0x1
	.long	.LASF1041
	.value	0x351
	.uleb128 0x1
	.long	.LASF1042
	.value	0x352
	.uleb128 0x1
	.long	.LASF1043
	.value	0x353
	.uleb128 0x1
	.long	.LASF1044
	.value	0x354
	.uleb128 0x1
	.long	.LASF1045
	.value	0x355
	.uleb128 0x1
	.long	.LASF1046
	.value	0x356
	.uleb128 0x1
	.long	.LASF1047
	.value	0x357
	.uleb128 0x1
	.long	.LASF1048
	.value	0x358
	.uleb128 0x1
	.long	.LASF1049
	.value	0x359
	.uleb128 0x1
	.long	.LASF1050
	.value	0x35a
	.uleb128 0x1
	.long	.LASF1051
	.value	0x35b
	.uleb128 0x1
	.long	.LASF1052
	.value	0x35c
	.uleb128 0x1
	.long	.LASF1053
	.value	0x35d
	.uleb128 0x1
	.long	.LASF1054
	.value	0x35e
	.uleb128 0x1
	.long	.LASF1055
	.value	0x35f
	.uleb128 0x1
	.long	.LASF1056
	.value	0x360
	.uleb128 0x1
	.long	.LASF1057
	.value	0x361
	.uleb128 0x1
	.long	.LASF1058
	.value	0x362
	.uleb128 0x1
	.long	.LASF1059
	.value	0x363
	.uleb128 0x1
	.long	.LASF1060
	.value	0x364
	.uleb128 0x1
	.long	.LASF1061
	.value	0x365
	.uleb128 0x1
	.long	.LASF1062
	.value	0x366
	.uleb128 0x1
	.long	.LASF1063
	.value	0x367
	.uleb128 0x1
	.long	.LASF1064
	.value	0x368
	.uleb128 0x1
	.long	.LASF1065
	.value	0x369
	.uleb128 0x1
	.long	.LASF1066
	.value	0x36a
	.uleb128 0x1
	.long	.LASF1067
	.value	0x36b
	.uleb128 0x1
	.long	.LASF1068
	.value	0x36c
	.uleb128 0x1
	.long	.LASF1069
	.value	0x36d
	.uleb128 0x1
	.long	.LASF1070
	.value	0x36e
	.uleb128 0x1
	.long	.LASF1071
	.value	0x36f
	.uleb128 0x1
	.long	.LASF1072
	.value	0x370
	.uleb128 0x1
	.long	.LASF1073
	.value	0x371
	.uleb128 0x1
	.long	.LASF1074
	.value	0x372
	.uleb128 0x1
	.long	.LASF1075
	.value	0x373
	.uleb128 0x1
	.long	.LASF1076
	.value	0x374
	.uleb128 0x1
	.long	.LASF1077
	.value	0x375
	.uleb128 0x1
	.long	.LASF1078
	.value	0x376
	.uleb128 0x1
	.long	.LASF1079
	.value	0x377
	.uleb128 0x1
	.long	.LASF1080
	.value	0x378
	.uleb128 0x1
	.long	.LASF1081
	.value	0x379
	.uleb128 0x1
	.long	.LASF1082
	.value	0x37a
	.uleb128 0x1
	.long	.LASF1083
	.value	0x37b
	.uleb128 0x1
	.long	.LASF1084
	.value	0x37c
	.uleb128 0x1
	.long	.LASF1085
	.value	0x37d
	.uleb128 0x1
	.long	.LASF1086
	.value	0x37e
	.uleb128 0x1
	.long	.LASF1087
	.value	0x37f
	.uleb128 0x1
	.long	.LASF1088
	.value	0x380
	.uleb128 0x1
	.long	.LASF1089
	.value	0x381
	.uleb128 0x1
	.long	.LASF1090
	.value	0x382
	.uleb128 0x1
	.long	.LASF1091
	.value	0x383
	.uleb128 0x1
	.long	.LASF1092
	.value	0x384
	.uleb128 0x1
	.long	.LASF1093
	.value	0x385
	.uleb128 0x1
	.long	.LASF1094
	.value	0x386
	.uleb128 0x1
	.long	.LASF1095
	.value	0x387
	.uleb128 0x1
	.long	.LASF1096
	.value	0x388
	.uleb128 0x1
	.long	.LASF1097
	.value	0x389
	.uleb128 0x1
	.long	.LASF1098
	.value	0x38a
	.uleb128 0x1
	.long	.LASF1099
	.value	0x38b
	.uleb128 0x1
	.long	.LASF1100
	.value	0x38c
	.uleb128 0x1
	.long	.LASF1101
	.value	0x38d
	.uleb128 0x1
	.long	.LASF1102
	.value	0x38e
	.uleb128 0x1
	.long	.LASF1103
	.value	0x38f
	.uleb128 0x1
	.long	.LASF1104
	.value	0x390
	.uleb128 0x1
	.long	.LASF1105
	.value	0x391
	.uleb128 0x1
	.long	.LASF1106
	.value	0x392
	.uleb128 0x1
	.long	.LASF1107
	.value	0x393
	.uleb128 0x1
	.long	.LASF1108
	.value	0x394
	.uleb128 0x1
	.long	.LASF1109
	.value	0x395
	.uleb128 0x1
	.long	.LASF1110
	.value	0x396
	.uleb128 0x1
	.long	.LASF1111
	.value	0x397
	.uleb128 0x1
	.long	.LASF1112
	.value	0x398
	.uleb128 0x1
	.long	.LASF1113
	.value	0x399
	.uleb128 0x1
	.long	.LASF1114
	.value	0x39a
	.uleb128 0x1
	.long	.LASF1115
	.value	0x39b
	.uleb128 0x1
	.long	.LASF1116
	.value	0x39c
	.uleb128 0x1
	.long	.LASF1117
	.value	0x39d
	.uleb128 0x1
	.long	.LASF1118
	.value	0x39e
	.uleb128 0x1
	.long	.LASF1119
	.value	0x39f
	.uleb128 0x1
	.long	.LASF1120
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF1121
	.value	0x3a1
	.uleb128 0x1
	.long	.LASF1122
	.value	0x3a2
	.uleb128 0x1
	.long	.LASF1123
	.value	0x3a3
	.uleb128 0x1
	.long	.LASF1124
	.value	0x3a4
	.uleb128 0x1
	.long	.LASF1125
	.value	0x3a5
	.uleb128 0x1
	.long	.LASF1126
	.value	0x3a6
	.uleb128 0x1
	.long	.LASF1127
	.value	0x3a7
	.uleb128 0x1
	.long	.LASF1128
	.value	0x3a8
	.uleb128 0x1
	.long	.LASF1129
	.value	0x3a9
	.uleb128 0x1
	.long	.LASF1130
	.value	0x3aa
	.uleb128 0x1
	.long	.LASF1131
	.value	0x3ab
	.uleb128 0x1
	.long	.LASF1132
	.value	0x3ac
	.uleb128 0x1
	.long	.LASF1133
	.value	0x3ad
	.uleb128 0x1
	.long	.LASF1134
	.value	0x3ae
	.uleb128 0x1
	.long	.LASF1135
	.value	0x3af
	.uleb128 0x1
	.long	.LASF1136
	.value	0x3b0
	.uleb128 0x1
	.long	.LASF1137
	.value	0x3b1
	.uleb128 0x1
	.long	.LASF1138
	.value	0x3b2
	.uleb128 0x1
	.long	.LASF1139
	.value	0x3b3
	.uleb128 0x1
	.long	.LASF1140
	.value	0x3b4
	.uleb128 0x1
	.long	.LASF1141
	.value	0x3b5
	.uleb128 0x1
	.long	.LASF1142
	.value	0x3b6
	.uleb128 0x1
	.long	.LASF1143
	.value	0x3b7
	.uleb128 0x1
	.long	.LASF1144
	.value	0x3b8
	.uleb128 0x1
	.long	.LASF1145
	.value	0x3b9
	.uleb128 0x1
	.long	.LASF1146
	.value	0x3ba
	.uleb128 0x1
	.long	.LASF1147
	.value	0x3bb
	.uleb128 0x1
	.long	.LASF1148
	.value	0x3bc
	.uleb128 0x1
	.long	.LASF1149
	.value	0x3bd
	.uleb128 0x1
	.long	.LASF1150
	.value	0x3be
	.uleb128 0x1
	.long	.LASF1151
	.value	0x3bf
	.uleb128 0x1
	.long	.LASF1152
	.value	0x3c0
	.uleb128 0x1
	.long	.LASF1153
	.value	0x3c1
	.uleb128 0x1
	.long	.LASF1154
	.value	0x3c2
	.uleb128 0x1
	.long	.LASF1155
	.value	0x3c3
	.uleb128 0x1
	.long	.LASF1156
	.value	0x3c4
	.uleb128 0x1
	.long	.LASF1157
	.value	0x3c5
	.uleb128 0x1
	.long	.LASF1158
	.value	0x3c6
	.uleb128 0x1
	.long	.LASF1159
	.value	0x3c7
	.byte	0
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.long	0x79
	.byte	0x7
	.value	0x48b
	.byte	0xe
	.long	0x222f
	.uleb128 0x2
	.long	.LASF1160
	.byte	0
	.uleb128 0x2
	.long	.LASF1161
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1162
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1163
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1164
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1165
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1166
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1167
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1168
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1169
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1170
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1171
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1172
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1173
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1174
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1175
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1176
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1177
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1178
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1179
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1180
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1181
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1182
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1183
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1184
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1185
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1186
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1187
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1188
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1189
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1190
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1191
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1192
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1193
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1194
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1195
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1196
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1197
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1198
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1199
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1200
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1201
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1202
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1203
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1204
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1205
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1206
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1207
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1208
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1209
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1210
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1211
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1212
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1213
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1214
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1215
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1216
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1217
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1218
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1219
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1220
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1221
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1222
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1223
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1224
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1225
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1226
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1227
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1228
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1229
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1230
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1231
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1232
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1233
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1234
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1235
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1236
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1237
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1238
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1239
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1240
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1241
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1242
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1243
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1244
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1245
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1246
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1247
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1248
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1249
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1250
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1251
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1252
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1253
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1254
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1255
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1256
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1257
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1258
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1259
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1260
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1261
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1262
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1263
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1264
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1265
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1266
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1267
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1268
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1269
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF1270
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF1271
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF1272
	.byte	0x70
	.uleb128 0x2
	.long	.LASF1273
	.byte	0x71
	.uleb128 0x2
	.long	.LASF1274
	.byte	0x72
	.uleb128 0x2
	.long	.LASF1275
	.byte	0x73
	.uleb128 0x2
	.long	.LASF1276
	.byte	0x74
	.uleb128 0x2
	.long	.LASF1277
	.byte	0x75
	.uleb128 0x2
	.long	.LASF1278
	.byte	0x76
	.uleb128 0x2
	.long	.LASF1279
	.byte	0x77
	.uleb128 0x2
	.long	.LASF1280
	.byte	0x78
	.uleb128 0x2
	.long	.LASF1281
	.byte	0x79
	.uleb128 0x2
	.long	.LASF1282
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF1283
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF1284
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF1285
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF1286
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF1287
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF1288
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1289
	.byte	0x81
	.uleb128 0x2
	.long	.LASF1290
	.byte	0x82
	.uleb128 0x2
	.long	.LASF1291
	.byte	0x83
	.uleb128 0x2
	.long	.LASF1292
	.byte	0x84
	.uleb128 0x2
	.long	.LASF1293
	.byte	0x85
	.uleb128 0x2
	.long	.LASF1294
	.byte	0x86
	.uleb128 0x2
	.long	.LASF1295
	.byte	0x87
	.uleb128 0x2
	.long	.LASF1296
	.byte	0x88
	.uleb128 0x2
	.long	.LASF1297
	.byte	0x89
	.byte	0
	.uleb128 0x17
	.long	.LASF1298
	.value	0x13a
	.byte	0xe
	.long	0x1db
	.uleb128 0x1e
	.byte	0x28
	.byte	0x8
	.value	0x164
	.byte	0x9
	.long	0x2287
	.uleb128 0x11
	.long	.LASF1299
	.value	0x166
	.byte	0xc
	.long	0x87
	.byte	0
	.uleb128 0x11
	.long	.LASF1300
	.value	0x167
	.byte	0xc
	.long	0x87
	.byte	0x2
	.uleb128 0x11
	.long	.LASF1301
	.value	0x168
	.byte	0xc
	.long	0x87
	.byte	0x4
	.uleb128 0x11
	.long	.LASF1302
	.value	0x169
	.byte	0xc
	.long	0x87
	.byte	0x6
	.uleb128 0x11
	.long	.LASF1303
	.value	0x16a
	.byte	0xb
	.long	0x2287
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.long	0x8e
	.long	0x2297
	.uleb128 0xb
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x17
	.long	.LASF1304
	.value	0x16c
	.byte	0x3
	.long	0x223b
	.uleb128 0xf
	.long	0x222f
	.uleb128 0xc
	.long	0x79
	.byte	0x9
	.byte	0x3d
	.long	0x22c6
	.uleb128 0x2
	.long	.LASF1305
	.byte	0
	.uleb128 0x2
	.long	.LASF1306
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1307
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF1308
	.byte	0xa
	.byte	0x34
	.byte	0x16
	.long	0x22a3
	.uleb128 0x3
	.long	.LASF1309
	.byte	0xa
	.byte	0x36
	.byte	0xd
	.long	0x8e
	.uleb128 0x3
	.long	.LASF1310
	.byte	0xa
	.byte	0x37
	.byte	0xd
	.long	0x8e
	.uleb128 0x3
	.long	.LASF1311
	.byte	0xa
	.byte	0x38
	.byte	0xd
	.long	0x8e
	.uleb128 0x3
	.long	.LASF1312
	.byte	0xb
	.byte	0x2b
	.byte	0xd
	.long	0x8e
	.uleb128 0x3
	.long	.LASF1313
	.byte	0xb
	.byte	0x2c
	.byte	0xd
	.long	0x8e
	.uleb128 0x3
	.long	.LASF1314
	.byte	0xb
	.byte	0x31
	.byte	0xd
	.long	0x8e
	.uleb128 0x3
	.long	.LASF1315
	.byte	0xc
	.byte	0x20
	.byte	0x16
	.long	0x22a3
	.uleb128 0x3
	.long	.LASF1316
	.byte	0xc
	.byte	0x21
	.byte	0xd
	.long	0x8e
	.uleb128 0x3
	.long	.LASF1317
	.byte	0xc
	.byte	0x22
	.byte	0xd
	.long	0x8e
	.uleb128 0x3
	.long	.LASF1318
	.byte	0xc
	.byte	0x23
	.byte	0xd
	.long	0x8e
	.uleb128 0x3
	.long	.LASF1319
	.byte	0xc
	.byte	0x24
	.byte	0x11
	.long	0x205
	.uleb128 0x3
	.long	.LASF1320
	.byte	0xc
	.byte	0x25
	.byte	0x11
	.long	0x205
	.uleb128 0x3
	.long	.LASF1321
	.byte	0xc
	.byte	0x28
	.byte	0xf
	.long	0x236e
	.uleb128 0xf
	.long	0x1db
	.uleb128 0x3
	.long	.LASF1322
	.byte	0xc
	.byte	0x40
	.byte	0xd
	.long	0x8e
	.uleb128 0x3
	.long	.LASF1323
	.byte	0xc
	.byte	0x41
	.byte	0xd
	.long	0x8e
	.uleb128 0x3
	.long	.LASF1324
	.byte	0xc
	.byte	0x42
	.byte	0xd
	.long	0x8e
	.uleb128 0x3
	.long	.LASF1325
	.byte	0xc
	.byte	0x44
	.byte	0x16
	.long	0x22a3
	.uleb128 0x3
	.long	.LASF1326
	.byte	0xc
	.byte	0x46
	.byte	0x11
	.long	0x205
	.uleb128 0x3
	.long	.LASF1327
	.byte	0xc
	.byte	0x47
	.byte	0x11
	.long	0x205
	.uleb128 0x3
	.long	.LASF1328
	.byte	0xc
	.byte	0x48
	.byte	0x11
	.long	0x205
	.uleb128 0x3
	.long	.LASF1329
	.byte	0xc
	.byte	0x49
	.byte	0x11
	.long	0x205
	.uleb128 0x3
	.long	.LASF1330
	.byte	0xc
	.byte	0x4c
	.byte	0xf
	.long	0x236e
	.uleb128 0x3
	.long	.LASF1331
	.byte	0xc
	.byte	0x4e
	.byte	0xf
	.long	0x236e
	.uleb128 0x3
	.long	.LASF1332
	.byte	0xc
	.byte	0x4f
	.byte	0xf
	.long	0x236e
	.uleb128 0xa
	.long	0x236e
	.long	0x2407
	.uleb128 0xb
	.long	0x43
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF1333
	.byte	0xd
	.byte	0x2f
	.byte	0xf
	.long	0x23f7
	.uleb128 0x3
	.long	.LASF1334
	.byte	0xe
	.byte	0x3c
	.byte	0x13
	.long	0xe5
	.uleb128 0x12
	.long	.LASF1335
	.byte	0x40
	.byte	0x8
	.long	0x236e
	.uleb128 0x9
	.byte	0x3
	.quad	viewimage
	.uleb128 0x6
	.long	0x22d2
	.byte	0x41
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	viewwidth
	.uleb128 0x6
	.long	0x22de
	.byte	0x42
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	scaledviewwidth
	.uleb128 0x6
	.long	0x22ea
	.byte	0x43
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	viewheight
	.uleb128 0x6
	.long	0x22f6
	.byte	0x44
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	viewwindowx
	.uleb128 0x6
	.long	0x2302
	.byte	0x45
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	viewwindowy
	.uleb128 0xa
	.long	0x236e
	.long	0x249a
	.uleb128 0x18
	.long	0x43
	.value	0x33f
	.byte	0
	.uleb128 0x12
	.long	.LASF1336
	.byte	0x46
	.byte	0x8
	.long	0x2489
	.uleb128 0x9
	.byte	0x3
	.quad	ylookup
	.uleb128 0xa
	.long	0x8e
	.long	0x24c0
	.uleb128 0x18
	.long	0x43
	.value	0x45f
	.byte	0
	.uleb128 0x12
	.long	.LASF1303
	.byte	0x47
	.byte	0x6
	.long	0x24af
	.uleb128 0x9
	.byte	0x3
	.quad	columnofs
	.uleb128 0xa
	.long	0x1db
	.long	0x24eb
	.uleb128 0xb
	.long	0x43
	.byte	0x2
	.uleb128 0xb
	.long	0x43
	.byte	0xff
	.byte	0
	.uleb128 0x12
	.long	.LASF1337
	.byte	0x4d
	.byte	0x7
	.long	0x24d5
	.uleb128 0x9
	.byte	0x3
	.quad	translations
	.uleb128 0x6
	.long	0x231a
	.byte	0x56
	.byte	0x10
	.uleb128 0x9
	.byte	0x3
	.quad	dc_colormap
	.uleb128 0x6
	.long	0x2326
	.byte	0x57
	.byte	0x7
	.uleb128 0x9
	.byte	0x3
	.quad	dc_x
	.uleb128 0x6
	.long	0x2332
	.byte	0x58
	.byte	0x7
	.uleb128 0x9
	.byte	0x3
	.quad	dc_yl
	.uleb128 0x6
	.long	0x233e
	.byte	0x59
	.byte	0x7
	.uleb128 0x9
	.byte	0x3
	.quad	dc_yh
	.uleb128 0x6
	.long	0x234a
	.byte	0x5a
	.byte	0xb
	.uleb128 0x9
	.byte	0x3
	.quad	dc_iscale
	.uleb128 0x6
	.long	0x2356
	.byte	0x5b
	.byte	0xb
	.uleb128 0x9
	.byte	0x3
	.quad	dc_texturemid
	.uleb128 0x6
	.long	0x2362
	.byte	0x5e
	.byte	0x9
	.uleb128 0x9
	.byte	0x3
	.quad	dc_source
	.uleb128 0x12
	.long	.LASF1338
	.byte	0x61
	.byte	0x7
	.long	0x8e
	.uleb128 0x9
	.byte	0x3
	.quad	dccount
	.uleb128 0xa
	.long	0x8e
	.long	0x259c
	.uleb128 0xb
	.long	0x43
	.byte	0x31
	.byte	0
	.uleb128 0x13
	.long	.LASF1339
	.value	0x108
	.byte	0x5
	.long	0x258c
	.uleb128 0x9
	.byte	0x3
	.quad	fuzzoffset
	.uleb128 0x13
	.long	.LASF1340
	.value	0x113
	.byte	0x5
	.long	0x8e
	.uleb128 0x9
	.byte	0x3
	.quad	fuzzpos
	.uleb128 0x7
	.long	0x23eb
	.value	0x17f
	.byte	0x7
	.uleb128 0x9
	.byte	0x3
	.quad	dc_translation
	.uleb128 0x7
	.long	0x23df
	.value	0x180
	.byte	0x7
	.uleb128 0x9
	.byte	0x3
	.quad	translationtables
	.uleb128 0x7
	.long	0x2373
	.value	0x1f5
	.byte	0x7
	.uleb128 0x9
	.byte	0x3
	.quad	ds_y
	.uleb128 0x7
	.long	0x237f
	.value	0x1f6
	.byte	0x7
	.uleb128 0x9
	.byte	0x3
	.quad	ds_x1
	.uleb128 0x7
	.long	0x238b
	.value	0x1f7
	.byte	0x7
	.uleb128 0x9
	.byte	0x3
	.quad	ds_x2
	.uleb128 0x7
	.long	0x2397
	.value	0x1f9
	.byte	0x10
	.uleb128 0x9
	.byte	0x3
	.quad	ds_colormap
	.uleb128 0x7
	.long	0x23a3
	.value	0x1fb
	.byte	0xb
	.uleb128 0x9
	.byte	0x3
	.quad	ds_xfrac
	.uleb128 0x7
	.long	0x23af
	.value	0x1fc
	.byte	0xb
	.uleb128 0x9
	.byte	0x3
	.quad	ds_yfrac
	.uleb128 0x7
	.long	0x23bb
	.value	0x1fd
	.byte	0xb
	.uleb128 0x9
	.byte	0x3
	.quad	ds_xstep
	.uleb128 0x7
	.long	0x23c7
	.value	0x1fe
	.byte	0xb
	.uleb128 0x9
	.byte	0x3
	.quad	ds_ystep
	.uleb128 0x7
	.long	0x23d3
	.value	0x201
	.byte	0x9
	.uleb128 0x9
	.byte	0x3
	.quad	ds_source
	.uleb128 0x13
	.long	.LASF1341
	.value	0x204
	.byte	0x7
	.long	0x8e
	.uleb128 0x9
	.byte	0x3
	.quad	dscount
	.uleb128 0x1f
	.long	.LASF1342
	.byte	0x1
	.value	0x346
	.byte	0x1
	.long	0x26c6
	.uleb128 0x5
	.long	0x8e
	.uleb128 0x5
	.long	0x8e
	.uleb128 0x5
	.long	0x8e
	.uleb128 0x5
	.long	0x8e
	.byte	0
	.uleb128 0x19
	.long	.LASF1343
	.byte	0xd
	.byte	0x48
	.byte	0x1
	.long	0x26e7
	.uleb128 0x5
	.long	0x8e
	.uleb128 0x5
	.long	0x8e
	.uleb128 0x5
	.long	0x8e
	.uleb128 0x5
	.long	0x26e7
	.byte	0
	.uleb128 0xf
	.long	0x2297
	.uleb128 0x14
	.long	.LASF1344
	.byte	0xf
	.byte	0x2b
	.byte	0xe
	.long	0x9c
	.long	0x270c
	.uleb128 0x5
	.long	0x9c
	.uleb128 0x5
	.long	0x270c
	.uleb128 0x5
	.long	0xaf
	.byte	0
	.uleb128 0xf
	.long	0x2711
	.uleb128 0x20
	.uleb128 0x14
	.long	.LASF1345
	.byte	0x10
	.byte	0x4f
	.byte	0x7
	.long	0x9c
	.long	0x272d
	.uleb128 0x5
	.long	0x9e
	.uleb128 0x5
	.long	0x8e
	.byte	0
	.uleb128 0x14
	.long	.LASF1346
	.byte	0x11
	.byte	0x30
	.byte	0x7
	.long	0x9c
	.long	0x274d
	.uleb128 0x5
	.long	0x8e
	.uleb128 0x5
	.long	0x8e
	.uleb128 0x5
	.long	0x9c
	.byte	0
	.uleb128 0x19
	.long	.LASF1347
	.byte	0x12
	.byte	0x59
	.byte	0x6
	.long	0x2760
	.uleb128 0x5
	.long	0x9e
	.uleb128 0x21
	.byte	0
	.uleb128 0xd
	.long	.LASF1350
	.value	0x34c
	.byte	0x6
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x27b9
	.uleb128 0xe
	.string	"top"
	.value	0x34e
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.long	.LASF1349
	.value	0x34f
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.string	"ofs"
	.value	0x350
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xe
	.string	"i"
	.value	0x351
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xd
	.long	.LASF1351
	.value	0x333
	.byte	0x1
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x27f6
	.uleb128 0x22
	.string	"ofs"
	.byte	0x1
	.value	0x334
	.byte	0xc
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.long	.LASF1352
	.value	0x335
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.long	.LASF1353
	.value	0x2dc
	.byte	0x6
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x288d
	.uleb128 0xe
	.string	"src"
	.value	0x2de
	.byte	0xb
	.long	0x236e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.long	.LASF1354
	.value	0x2df
	.byte	0xb
	.long	0x236e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xe
	.string	"x"
	.value	0x2e0
	.byte	0xa
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xe
	.string	"y"
	.value	0x2e1
	.byte	0xa
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x4
	.long	.LASF1355
	.value	0x2e2
	.byte	0xe
	.long	0x26e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.long	.LASF1356
	.value	0x2e5
	.byte	0xa
	.long	0x288d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x4
	.long	.LASF1357
	.value	0x2e8
	.byte	0xa
	.long	0x1e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x4
	.long	.LASF1358
	.value	0x2ea
	.byte	0xb
	.long	0x9e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0xa
	.long	0x4a
	.long	0x289d
	.uleb128 0xb
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0x23
	.long	.LASF1359
	.byte	0x1
	.value	0x2b9
	.byte	0x1
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x28e6
	.uleb128 0x15
	.long	.LASF1299
	.value	0x2ba
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.long	.LASF1300
	.value	0x2bb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"i"
	.value	0x2bd
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.long	.LASF1360
	.value	0x284
	.byte	0x6
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2950
	.uleb128 0x4
	.long	.LASF1361
	.value	0x286
	.byte	0xe
	.long	0x205
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.long	.LASF1362
	.value	0x287
	.byte	0xe
	.long	0x205
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.long	.LASF1354
	.value	0x288
	.byte	0xc
	.long	0x236e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.long	.LASF1352
	.value	0x289
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.long	.LASF1363
	.value	0x28a
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xd
	.long	.LASF1364
	.value	0x209
	.byte	0x6
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x29ba
	.uleb128 0x4
	.long	.LASF1361
	.value	0x20b
	.byte	0xe
	.long	0x205
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.long	.LASF1362
	.value	0x20c
	.byte	0xe
	.long	0x205
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.long	.LASF1354
	.value	0x20d
	.byte	0xc
	.long	0x236e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.long	.LASF1352
	.value	0x20e
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.long	.LASF1363
	.value	0x20f
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xd
	.long	.LASF1365
	.value	0x1cc
	.byte	0x6
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x29e6
	.uleb128 0xe
	.string	"i"
	.value	0x1ce
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.long	.LASF1366
	.value	0x182
	.byte	0x6
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a41
	.uleb128 0x4
	.long	.LASF1352
	.value	0x184
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.long	.LASF1354
	.value	0x185
	.byte	0xc
	.long	0x236e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.long	.LASF1367
	.value	0x186
	.byte	0xe
	.long	0x205
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.long	.LASF1368
	.value	0x187
	.byte	0xe
	.long	0x205
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xd
	.long	.LASF1369
	.value	0x11e
	.byte	0x6
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a9c
	.uleb128 0x4
	.long	.LASF1352
	.value	0x120
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.long	.LASF1354
	.value	0x121
	.byte	0xc
	.long	0x236e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.long	.LASF1367
	.value	0x122
	.byte	0xe
	.long	0x205
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.long	.LASF1368
	.value	0x123
	.byte	0xe
	.long	0x205
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x24
	.long	.LASF1370
	.byte	0x1
	.byte	0xd4
	.byte	0x6
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b01
	.uleb128 0x9
	.long	.LASF1352
	.byte	0xd6
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.long	.LASF1354
	.byte	0xd7
	.byte	0xc
	.long	0x236e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.long	.LASF1371
	.byte	0xd8
	.byte	0xc
	.long	0x236e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.long	.LASF1367
	.byte	0xd9
	.byte	0xe
	.long	0x205
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF1368
	.byte	0xda
	.byte	0xe
	.long	0x205
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x25
	.long	.LASF1373
	.byte	0x1
	.byte	0x6a
	.byte	0x6
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.long	.LASF1352
	.byte	0x6c
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.long	.LASF1354
	.byte	0x6d
	.byte	0xc
	.long	0x236e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.long	.LASF1367
	.byte	0x6e
	.byte	0xe
	.long	0x205
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.long	.LASF1368
	.byte	0x6f
	.byte	0xe
	.long	0x205
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x24
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
	.uleb128 0x25
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
.LASF1309:
	.string	"viewwidth"
.LASF827:
	.string	"S_BSPI_RUN1"
.LASF828:
	.string	"S_BSPI_RUN2"
.LASF829:
	.string	"S_BSPI_RUN3"
.LASF830:
	.string	"S_BSPI_RUN4"
.LASF831:
	.string	"S_BSPI_RUN5"
.LASF832:
	.string	"S_BSPI_RUN6"
.LASF833:
	.string	"S_BSPI_RUN7"
.LASF834:
	.string	"S_BSPI_RUN8"
.LASF835:
	.string	"S_BSPI_RUN9"
.LASF120:
	.string	"SPR_YSKU"
.LASF482:
	.string	"S_FIRE10"
.LASF483:
	.string	"S_FIRE11"
.LASF484:
	.string	"S_FIRE12"
.LASF485:
	.string	"S_FIRE13"
.LASF486:
	.string	"S_FIRE14"
.LASF487:
	.string	"S_FIRE15"
.LASF488:
	.string	"S_FIRE16"
.LASF489:
	.string	"S_FIRE17"
.LASF490:
	.string	"S_FIRE18"
.LASF491:
	.string	"S_FIRE19"
.LASF1294:
	.string	"MT_MISC84"
.LASF1227:
	.string	"MT_MISC20"
.LASF1050:
	.string	"S_MEGA2"
.LASF1051:
	.string	"S_MEGA3"
.LASF1052:
	.string	"S_MEGA4"
.LASF1231:
	.string	"MT_MISC24"
.LASF1232:
	.string	"MT_MISC25"
.LASF1234:
	.string	"MT_MISC26"
.LASF1235:
	.string	"MT_MISC27"
.LASF1236:
	.string	"MT_MISC28"
.LASF1239:
	.string	"MT_MISC29"
.LASF681:
	.string	"S_SARG_PAIN2"
.LASF26:
	.string	"wp_pistol"
.LASF161:
	.string	"SPR_COL1"
.LASF162:
	.string	"SPR_COL2"
.LASF163:
	.string	"SPR_COL3"
.LASF164:
	.string	"SPR_COL4"
.LASF173:
	.string	"SPR_COL5"
.LASF167:
	.string	"SPR_COL6"
.LASF492:
	.string	"S_FIRE20"
.LASF493:
	.string	"S_FIRE21"
.LASF494:
	.string	"S_FIRE22"
.LASF495:
	.string	"S_FIRE23"
.LASF496:
	.string	"S_FIRE24"
.LASF147:
	.string	"SPR_COLU"
.LASF498:
	.string	"S_FIRE26"
.LASF499:
	.string	"S_FIRE27"
.LASF500:
	.string	"S_FIRE28"
.LASF501:
	.string	"S_FIRE29"
.LASF1350:
	.string	"R_DrawViewBorder"
.LASF1240:
	.string	"MT_MISC30"
.LASF1241:
	.string	"MT_MISC31"
.LASF1242:
	.string	"MT_MISC32"
.LASF1243:
	.string	"MT_MISC33"
.LASF843:
	.string	"S_BSPI_PAIN"
.LASF1245:
	.string	"MT_MISC35"
.LASF315:
	.string	"S_BFGEXP"
.LASF39:
	.string	"am_misl"
.LASF1248:
	.string	"MT_MISC38"
.LASF1249:
	.string	"MT_MISC39"
.LASF845:
	.string	"S_BSPI_DIE1"
.LASF1362:
	.string	"yfrac"
.LASF1307:
	.string	"NUMPSPRITES"
.LASF850:
	.string	"S_BSPI_DIE6"
.LASF741:
	.string	"S_BOSS_RAISE1"
.LASF742:
	.string	"S_BOSS_RAISE2"
.LASF1174:
	.string	"MT_HEAD"
.LASF743:
	.string	"S_BOSS_RAISE3"
.LASF502:
	.string	"S_FIRE30"
.LASF647:
	.string	"S_TROO_PAIN"
.LASF936:
	.string	"S_SSWV_DIE1"
.LASF746:
	.string	"S_BOSS_RAISE6"
.LASF938:
	.string	"S_SSWV_DIE3"
.LASF939:
	.string	"S_SSWV_DIE4"
.LASF940:
	.string	"S_SSWV_DIE5"
.LASF115:
	.string	"SPR_BKEY"
.LASF758:
	.string	"S_BOS2_ATK1"
.LASF759:
	.string	"S_BOS2_ATK2"
.LASF760:
	.string	"S_BOS2_ATK3"
.LASF149:
	.string	"SPR_GOR1"
.LASF156:
	.string	"SPR_GOR2"
.LASF157:
	.string	"SPR_GOR3"
.LASF158:
	.string	"SPR_GOR4"
.LASF159:
	.string	"SPR_GOR5"
.LASF1252:
	.string	"MT_MISC42"
.LASF1253:
	.string	"MT_MISC43"
.LASF515:
	.string	"S_SKEL_RUN1"
.LASF516:
	.string	"S_SKEL_RUN2"
.LASF517:
	.string	"S_SKEL_RUN3"
.LASF518:
	.string	"S_SKEL_RUN4"
.LASF519:
	.string	"S_SKEL_RUN5"
.LASF520:
	.string	"S_SKEL_RUN6"
.LASF521:
	.string	"S_SKEL_RUN7"
.LASF522:
	.string	"S_SKEL_RUN8"
.LASF523:
	.string	"S_SKEL_RUN9"
.LASF29:
	.string	"wp_missile"
.LASF1001:
	.string	"S_BEXP2"
.LASF696:
	.string	"S_HEAD_ATK1"
.LASF697:
	.string	"S_HEAD_ATK2"
.LASF698:
	.string	"S_HEAD_ATK3"
.LASF950:
	.string	"S_SSWV_RAISE1"
.LASF951:
	.string	"S_SSWV_RAISE2"
.LASF952:
	.string	"S_SSWV_RAISE3"
.LASF953:
	.string	"S_SSWV_RAISE4"
.LASF954:
	.string	"S_SSWV_RAISE5"
.LASF1169:
	.string	"MT_FATSHOT"
.LASF135:
	.string	"SPR_CELL"
.LASF136:
	.string	"SPR_CELP"
.LASF1116:
	.string	"S_HEARTCOL"
.LASF1033:
	.string	"S_MEDI"
.LASF1040:
	.string	"S_PINV"
.LASF1218:
	.string	"MT_INS"
.LASF1261:
	.string	"MT_MISC51"
.LASF1262:
	.string	"MT_MISC52"
.LASF1216:
	.string	"MT_INV"
.LASF1264:
	.string	"MT_MISC54"
.LASF1130:
	.string	"S_BTORCHSHRT"
.LASF251:
	.string	"S_MISSILEUP"
.LASF1267:
	.string	"MT_MISC57"
.LASF1268:
	.string	"MT_MISC58"
.LASF1269:
	.string	"MT_MISC59"
.LASF428:
	.string	"S_SPOS_RAISE1"
.LASF222:
	.string	"S_SGUNFLASH1"
.LASF223:
	.string	"S_SGUNFLASH2"
.LASF770:
	.string	"S_BOS2_RAISE1"
.LASF771:
	.string	"S_BOS2_RAISE2"
.LASF772:
	.string	"S_BOS2_RAISE3"
.LASF773:
	.string	"S_BOS2_RAISE4"
.LASF774:
	.string	"S_BOS2_RAISE5"
.LASF775:
	.string	"S_BOS2_RAISE6"
.LASF776:
	.string	"S_BOS2_RAISE7"
.LASF535:
	.string	"S_SKEL_PAIN"
.LASF1022:
	.string	"S_RKEY"
.LASF204:
	.string	"S_PISTOLUP"
.LASF890:
	.string	"S_CYBER_DIE8"
.LASF1351:
	.string	"R_VideoErase"
.LASF1270:
	.string	"MT_MISC60"
.LASF1271:
	.string	"MT_MISC61"
.LASF1272:
	.string	"MT_MISC62"
.LASF1273:
	.string	"MT_MISC63"
.LASF1274:
	.string	"MT_MISC64"
.LASF1275:
	.string	"MT_MISC65"
.LASF1276:
	.string	"MT_MISC66"
.LASF1277:
	.string	"MT_MISC67"
.LASF319:
	.string	"S_EXPLODE1"
.LASF320:
	.string	"S_EXPLODE2"
.LASF321:
	.string	"S_EXPLODE3"
.LASF510:
	.string	"S_TRACEEXP1"
.LASF511:
	.string	"S_TRACEEXP2"
.LASF512:
	.string	"S_TRACEEXP3"
.LASF898:
	.string	"S_PAIN_RUN5"
.LASF1000:
	.string	"S_BEXP"
.LASF899:
	.string	"S_PAIN_RUN6"
.LASF1117:
	.string	"S_HEARTCOL2"
.LASF296:
	.string	"S_RBALLX1"
.LASF1300:
	.string	"height"
.LASF1201:
	.string	"MT_TELEPORTMAN"
.LASF1367:
	.string	"frac"
.LASF1280:
	.string	"MT_MISC70"
.LASF80:
	.string	"SPR_IFOG"
.LASF1282:
	.string	"MT_MISC72"
.LASF1283:
	.string	"MT_MISC73"
.LASF1284:
	.string	"MT_MISC74"
.LASF1285:
	.string	"MT_MISC75"
.LASF1286:
	.string	"MT_MISC76"
.LASF1123:
	.string	"S_GREENTORCH2"
.LASF1124:
	.string	"S_GREENTORCH3"
.LASF1125:
	.string	"S_GREENTORCH4"
.LASF964:
	.string	"S_COMMKEEN9"
.LASF613:
	.string	"S_CPOS_PAIN2"
.LASF836:
	.string	"S_BSPI_RUN10"
.LASF837:
	.string	"S_BSPI_RUN11"
.LASF838:
	.string	"S_BSPI_RUN12"
.LASF920:
	.string	"S_SSWV_RUN1"
.LASF921:
	.string	"S_SSWV_RUN2"
.LASF922:
	.string	"S_SSWV_RUN3"
.LASF923:
	.string	"S_SSWV_RUN4"
.LASF924:
	.string	"S_SSWV_RUN5"
.LASF925:
	.string	"S_SSWV_RUN6"
.LASF926:
	.string	"S_SSWV_RUN7"
.LASF927:
	.string	"S_SSWV_RUN8"
.LASF1105:
	.string	"S_SKULLCOL"
.LASF1168:
	.string	"MT_FATSO"
.LASF649:
	.string	"S_TROO_DIE1"
.LASF650:
	.string	"S_TROO_DIE2"
.LASF651:
	.string	"S_TROO_DIE3"
.LASF652:
	.string	"S_TROO_DIE4"
.LASF653:
	.string	"S_TROO_DIE5"
.LASF12:
	.string	"shareware"
.LASF1317:
	.string	"dc_yl"
.LASF1030:
	.string	"S_YSKULL"
.LASF1031:
	.string	"S_YSKULL2"
.LASF133:
	.string	"SPR_ROCK"
.LASF1193:
	.string	"MT_ROCKET"
.LASF1291:
	.string	"MT_MISC81"
.LASF1292:
	.string	"MT_MISC82"
.LASF1293:
	.string	"MT_MISC83"
.LASF608:
	.string	"S_CPOS_ATK1"
.LASF609:
	.string	"S_CPOS_ATK2"
.LASF610:
	.string	"S_CPOS_ATK3"
.LASF611:
	.string	"S_CPOS_ATK4"
.LASF1160:
	.string	"MT_PLAYER"
.LASF145:
	.string	"SPR_SHOT"
.LASF337:
	.string	"S_IFOG2"
.LASF338:
	.string	"S_IFOG3"
.LASF339:
	.string	"S_IFOG4"
.LASF340:
	.string	"S_IFOG5"
.LASF74:
	.string	"SPR_PLSE"
.LASF66:
	.string	"SPR_PLSF"
.LASF65:
	.string	"SPR_PLSG"
.LASF733:
	.string	"S_BOSS_PAIN2"
.LASF433:
	.string	"S_VILE_STND"
.LASF961:
	.string	"S_COMMKEEN6"
.LASF962:
	.string	"S_COMMKEEN7"
.LASF963:
	.string	"S_COMMKEEN8"
.LASF73:
	.string	"SPR_PLSS"
.LASF812:
	.string	"S_SPID_PAIN2"
.LASF186:
	.string	"SPR_POB1"
.LASF187:
	.string	"SPR_POB2"
.LASF1034:
	.string	"S_SOUL"
.LASF1044:
	.string	"S_PSTR"
.LASF876:
	.string	"S_CYBER_ATK1"
.LASF877:
	.string	"S_CYBER_ATK2"
.LASF878:
	.string	"S_CYBER_ATK3"
.LASF879:
	.string	"S_CYBER_ATK4"
.LASF880:
	.string	"S_CYBER_ATK5"
.LASF881:
	.string	"S_CYBER_ATK6"
.LASF1344:
	.string	"memcpy"
.LASF1071:
	.string	"S_BFUG"
.LASF112:
	.string	"SPR_FCAN"
.LASF554:
	.string	"S_FATT_STND"
.LASF991:
	.string	"S_BRAINEXPLODE1"
.LASF992:
	.string	"S_BRAINEXPLODE2"
.LASF993:
	.string	"S_BRAINEXPLODE3"
.LASF275:
	.string	"S_BFGUP"
.LASF117:
	.string	"SPR_YKEY"
.LASF662:
	.string	"S_TROO_RAISE1"
.LASF663:
	.string	"S_TROO_RAISE2"
.LASF664:
	.string	"S_TROO_RAISE3"
.LASF665:
	.string	"S_TROO_RAISE4"
.LASF666:
	.string	"S_TROO_RAISE5"
.LASF1075:
	.string	"S_PLAS"
.LASF957:
	.string	"S_COMMKEEN2"
.LASF958:
	.string	"S_COMMKEEN3"
.LASF959:
	.string	"S_COMMKEEN4"
.LASF960:
	.string	"S_COMMKEEN5"
.LASF341:
	.string	"S_PLAY"
.LASF907:
	.string	"S_PAIN_DIE2"
.LASF908:
	.string	"S_PAIN_DIE3"
.LASF909:
	.string	"S_PAIN_DIE4"
.LASF910:
	.string	"S_PAIN_DIE5"
.LASF911:
	.string	"S_PAIN_DIE6"
.LASF1171:
	.string	"MT_TROOP"
.LASF462:
	.string	"S_VILE_PAIN2"
.LASF590:
	.string	"S_FATT_RAISE1"
.LASF30:
	.string	"wp_plasma"
.LASF592:
	.string	"S_FATT_RAISE3"
.LASF593:
	.string	"S_FATT_RAISE4"
.LASF594:
	.string	"S_FATT_RAISE5"
.LASF595:
	.string	"S_FATT_RAISE6"
.LASF596:
	.string	"S_FATT_RAISE7"
.LASF597:
	.string	"S_FATT_RAISE8"
.LASF306:
	.string	"S_ROCKET"
.LASF1192:
	.string	"MT_HEADSHOT"
.LASF859:
	.string	"S_ARACH_PLAZ"
.LASF1098:
	.string	"S_STALAGTITE"
.LASF700:
	.string	"S_HEAD_PAIN2"
.LASF701:
	.string	"S_HEAD_PAIN3"
.LASF49:
	.string	"byte"
.LASF23:
	.string	"it_redskull"
.LASF1199:
	.string	"MT_TFOG"
.LASF409:
	.string	"S_SPOS_ATK1"
.LASF410:
	.string	"S_SPOS_ATK2"
.LASF411:
	.string	"S_SPOS_ATK3"
.LASF346:
	.string	"S_PLAY_ATK1"
.LASF347:
	.string	"S_PLAY_ATK2"
.LASF100:
	.string	"SPR_APLS"
.LASF1127:
	.string	"S_REDTORCH2"
.LASF1128:
	.string	"S_REDTORCH3"
.LASF1129:
	.string	"S_REDTORCH4"
.LASF636:
	.string	"S_TROO_RUN1"
.LASF637:
	.string	"S_TROO_RUN2"
.LASF638:
	.string	"S_TROO_RUN3"
.LASF639:
	.string	"S_TROO_RUN4"
.LASF640:
	.string	"S_TROO_RUN5"
.LASF641:
	.string	"S_TROO_RUN6"
.LASF642:
	.string	"S_TROO_RUN7"
.LASF643:
	.string	"S_TROO_RUN8"
.LASF91:
	.string	"SPR_CPOS"
.LASF551:
	.string	"S_FATSHOTX1"
.LASF552:
	.string	"S_FATSHOTX2"
.LASF553:
	.string	"S_FATSHOTX3"
.LASF631:
	.string	"S_CPOS_RAISE5"
.LASF632:
	.string	"S_CPOS_RAISE6"
.LASF633:
	.string	"S_CPOS_RAISE7"
.LASF25:
	.string	"wp_fist"
.LASF121:
	.string	"SPR_STIM"
.LASF667:
	.string	"S_SARG_STND"
.LASF892:
	.string	"S_CYBER_DIE10"
.LASF71:
	.string	"SPR_BAL1"
.LASF72:
	.string	"SPR_BAL2"
.LASF94:
	.string	"SPR_BAL7"
.LASF1086:
	.string	"S_HEADSONSTICK"
.LASF543:
	.string	"S_SKEL_RAISE1"
.LASF59:
	.string	"SPR_SHT2"
.LASF197:
	.string	"S_PUNCH1"
.LASF198:
	.string	"S_PUNCH2"
.LASF199:
	.string	"S_PUNCH3"
.LASF200:
	.string	"S_PUNCH4"
.LASF201:
	.string	"S_PUNCH5"
.LASF560:
	.string	"S_FATT_RUN5"
.LASF196:
	.string	"S_PUNCHUP"
.LASF813:
	.string	"S_SPID_DIE1"
.LASF564:
	.string	"S_FATT_RUN9"
.LASF815:
	.string	"S_SPID_DIE3"
.LASF816:
	.string	"S_SPID_DIE4"
.LASF58:
	.string	"SPR_SHTF"
.LASF54:
	.string	"SPR_SHTG"
.LASF335:
	.string	"S_IFOG01"
.LASF336:
	.string	"S_IFOG02"
.LASF821:
	.string	"S_SPID_DIE9"
.LASF1063:
	.string	"S_AMMO"
.LASF1322:
	.string	"ds_y"
.LASF40:
	.string	"NUMAMMO"
.LASF894:
	.string	"S_PAIN_RUN1"
.LASF895:
	.string	"S_PAIN_RUN2"
.LASF896:
	.string	"S_PAIN_RUN3"
.LASF897:
	.string	"S_PAIN_RUN4"
.LASF180:
	.string	"SPR_HDB1"
.LASF181:
	.string	"SPR_HDB2"
.LASF182:
	.string	"SPR_HDB3"
.LASF183:
	.string	"SPR_HDB4"
.LASF184:
	.string	"SPR_HDB5"
.LASF185:
	.string	"SPR_HDB6"
.LASF1161:
	.string	"MT_POSSESSED"
.LASF229:
	.string	"S_DSGUN3"
.LASF230:
	.string	"S_DSGUN4"
.LASF249:
	.string	"S_MISSILE"
.LASF1077:
	.string	"S_SHOT2"
.LASF1144:
	.string	"S_HANGTLOOKDN"
.LASF621:
	.string	"S_CPOS_XDIE1"
.LASF1365:
	.string	"R_InitTranslationTables"
.LASF141:
	.string	"SPR_MGUN"
.LASF1173:
	.string	"MT_SHADOWS"
.LASF524:
	.string	"S_SKEL_RUN10"
.LASF525:
	.string	"S_SKEL_RUN11"
.LASF526:
	.string	"S_SKEL_RUN12"
.LASF192:
	.string	"S_NULL"
.LASF734:
	.string	"S_BOSS_DIE1"
.LASF735:
	.string	"S_BOSS_DIE2"
.LASF736:
	.string	"S_BOSS_DIE3"
.LASF737:
	.string	"S_BOSS_DIE4"
.LASF738:
	.string	"S_BOSS_DIE5"
.LASF739:
	.string	"S_BOSS_DIE6"
.LASF740:
	.string	"S_BOSS_DIE7"
.LASF904:
	.string	"S_PAIN_PAIN"
.LASF273:
	.string	"S_BFG"
.LASF919:
	.string	"S_SSWV_STND2"
.LASF142:
	.string	"SPR_CSAW"
.LASF1054:
	.string	"S_PMAP"
.LASF1060:
	.string	"S_PVIS"
.LASF274:
	.string	"S_BFGDOWN"
.LASF1185:
	.string	"MT_BOSSBRAIN"
.LASF88:
	.string	"SPR_SKEL"
.LASF269:
	.string	"S_PLASMA1"
.LASF270:
	.string	"S_PLASMA2"
.LASF1134:
	.string	"S_GTORCHSHRT"
.LASF1068:
	.string	"S_SHEL"
.LASF825:
	.string	"S_BSPI_STND2"
.LASF4:
	.string	"unsigned char"
.LASF86:
	.string	"SPR_FATB"
.LASF191:
	.string	"NUMSPRITES"
.LASF92:
	.string	"SPR_SARG"
.LASF308:
	.string	"S_BFGSHOT2"
.LASF90:
	.string	"SPR_FATT"
.LASF1035:
	.string	"S_SOUL2"
.LASF1036:
	.string	"S_SOUL3"
.LASF1037:
	.string	"S_SOUL4"
.LASF1038:
	.string	"S_SOUL5"
.LASF1039:
	.string	"S_SOUL6"
.LASF795:
	.string	"S_SPID_RUN1"
.LASF796:
	.string	"S_SPID_RUN2"
.LASF797:
	.string	"S_SPID_RUN3"
.LASF798:
	.string	"S_SPID_RUN4"
.LASF799:
	.string	"S_SPID_RUN5"
.LASF800:
	.string	"S_SPID_RUN6"
.LASF801:
	.string	"S_SPID_RUN7"
.LASF802:
	.string	"S_SPID_RUN8"
.LASF50:
	.string	"float"
.LASF1002:
	.string	"S_BEXP3"
.LASF1003:
	.string	"S_BEXP4"
.LASF1091:
	.string	"S_DEADSTICK"
.LASF1202:
	.string	"MT_EXTRABFG"
.LASF381:
	.string	"S_POSS_DIE1"
.LASF382:
	.string	"S_POSS_DIE2"
.LASF383:
	.string	"S_POSS_DIE3"
.LASF384:
	.string	"S_POSS_DIE4"
.LASF385:
	.string	"S_POSS_DIE5"
.LASF211:
	.string	"S_SGUNDOWN"
.LASF61:
	.string	"SPR_CHGF"
.LASF60:
	.string	"SPR_CHGG"
.LASF862:
	.string	"S_ARACH_PLEX2"
.LASF863:
	.string	"S_ARACH_PLEX3"
.LASF864:
	.string	"S_ARACH_PLEX4"
.LASF865:
	.string	"S_ARACH_PLEX5"
.LASF606:
	.string	"S_CPOS_RUN7"
.LASF171:
	.string	"SPR_CEYE"
.LASF912:
	.string	"S_PAIN_RAISE1"
.LASF913:
	.string	"S_PAIN_RAISE2"
.LASF914:
	.string	"S_PAIN_RAISE3"
.LASF915:
	.string	"S_PAIN_RAISE4"
.LASF916:
	.string	"S_PAIN_RAISE5"
.LASF549:
	.string	"S_FATSHOT1"
.LASF550:
	.string	"S_FATSHOT2"
.LASF128:
	.string	"SPR_SUIT"
.LASF777:
	.string	"S_SKULL_STND"
.LASF811:
	.string	"S_SPID_PAIN"
.LASF1297:
	.string	"NUMMOBJTYPES"
.LASF110:
	.string	"SPR_BAR1"
.LASF224:
	.string	"S_DSGUN"
.LASF1103:
	.string	"S_CANDLESTIK"
.LASF46:
	.string	"pw_allmap"
.LASF1159:
	.string	"NUMSTATES"
.LASF803:
	.string	"S_SPID_RUN9"
.LASF289:
	.string	"S_TBALL1"
.LASF290:
	.string	"S_TBALL2"
.LASF503:
	.string	"S_SMOKE1"
.LASF504:
	.string	"S_SMOKE2"
.LASF505:
	.string	"S_SMOKE3"
.LASF506:
	.string	"S_SMOKE4"
.LASF507:
	.string	"S_SMOKE5"
.LASF726:
	.string	"S_BOSS_RUN6"
.LASF727:
	.string	"S_BOSS_RUN7"
.LASF728:
	.string	"S_BOSS_RUN8"
.LASF93:
	.string	"SPR_HEAD"
.LASF154:
	.string	"SPR_POL1"
.LASF150:
	.string	"SPR_POL2"
.LASF153:
	.string	"SPR_POL3"
.LASF152:
	.string	"SPR_POL4"
.LASF151:
	.string	"SPR_POL5"
.LASF155:
	.string	"SPR_POL6"
.LASF998:
	.string	"S_BAR1"
.LASF1203:
	.string	"MT_MISC0"
.LASF1084:
	.string	"S_DEADTORSO"
.LASF226:
	.string	"S_DSGUNUP"
.LASF635:
	.string	"S_TROO_STND2"
.LASF1155:
	.string	"S_TECH2LAMP"
.LASF1189:
	.string	"MT_SPAWNFIRE"
.LASF1164:
	.string	"MT_FIRE"
.LASF732:
	.string	"S_BOSS_PAIN"
.LASF104:
	.string	"SPR_SSWV"
.LASF1356:
	.string	"name1"
.LASF1357:
	.string	"name2"
.LASF294:
	.string	"S_RBALL1"
.LASF295:
	.string	"S_RBALL2"
.LASF1099:
	.string	"S_TALLGRNCOL"
.LASF1088:
	.string	"S_HEADONASTICK"
.LASF368:
	.string	"S_POSS_RUN1"
.LASF310:
	.string	"S_BFGLAND2"
.LASF311:
	.string	"S_BFGLAND3"
.LASF312:
	.string	"S_BFGLAND4"
.LASF313:
	.string	"S_BFGLAND5"
.LASF314:
	.string	"S_BFGLAND6"
.LASF374:
	.string	"S_POSS_RUN7"
.LASF375:
	.string	"S_POSS_RUN8"
.LASF357:
	.string	"S_PLAY_XDIE1"
.LASF358:
	.string	"S_PLAY_XDIE2"
.LASF359:
	.string	"S_PLAY_XDIE3"
.LASF360:
	.string	"S_PLAY_XDIE4"
.LASF361:
	.string	"S_PLAY_XDIE5"
.LASF362:
	.string	"S_PLAY_XDIE6"
.LASF363:
	.string	"S_PLAY_XDIE7"
.LASF364:
	.string	"S_PLAY_XDIE8"
.LASF365:
	.string	"S_PLAY_XDIE9"
.LASF763:
	.string	"S_BOS2_DIE1"
.LASF764:
	.string	"S_BOS2_DIE2"
.LASF765:
	.string	"S_BOS2_DIE3"
.LASF766:
	.string	"S_BOS2_DIE4"
.LASF767:
	.string	"S_BOS2_DIE5"
.LASF768:
	.string	"S_BOS2_DIE6"
.LASF769:
	.string	"S_BOS2_DIE7"
.LASF689:
	.string	"S_SARG_RAISE2"
.LASF333:
	.string	"S_TFOG10"
.LASF691:
	.string	"S_SARG_RAISE4"
.LASF1315:
	.string	"dc_colormap"
.LASF386:
	.string	"S_POSS_XDIE1"
.LASF387:
	.string	"S_POSS_XDIE2"
.LASF388:
	.string	"S_POSS_XDIE3"
.LASF389:
	.string	"S_POSS_XDIE4"
.LASF390:
	.string	"S_POSS_XDIE5"
.LASF391:
	.string	"S_POSS_XDIE6"
.LASF392:
	.string	"S_POSS_XDIE7"
.LASF36:
	.string	"am_clip"
.LASF394:
	.string	"S_POSS_XDIE9"
.LASF1087:
	.string	"S_GIBS"
.LASF702:
	.string	"S_HEAD_DIE1"
.LASF703:
	.string	"S_HEAD_DIE2"
.LASF704:
	.string	"S_HEAD_DIE3"
.LASF705:
	.string	"S_HEAD_DIE4"
.LASF706:
	.string	"S_HEAD_DIE5"
.LASF707:
	.string	"S_HEAD_DIE6"
.LASF555:
	.string	"S_FATT_STND2"
.LASF1078:
	.string	"S_COLU"
.LASF205:
	.string	"S_PISTOL1"
.LASF206:
	.string	"S_PISTOL2"
.LASF207:
	.string	"S_PISTOL3"
.LASF208:
	.string	"S_PISTOL4"
.LASF544:
	.string	"S_SKEL_RAISE2"
.LASF545:
	.string	"S_SKEL_RAISE3"
.LASF546:
	.string	"S_SKEL_RAISE4"
.LASF547:
	.string	"S_SKEL_RAISE5"
.LASF548:
	.string	"S_SKEL_RAISE6"
.LASF1107:
	.string	"S_BIGTREE"
.LASF1017:
	.string	"S_BON2C"
.LASF1018:
	.string	"S_BON2D"
.LASF323:
	.string	"S_TFOG01"
.LASF324:
	.string	"S_TFOG02"
.LASF143:
	.string	"SPR_LAUN"
.LASF379:
	.string	"S_POSS_PAIN"
.LASF714:
	.string	"S_BRBALL1"
.LASF715:
	.string	"S_BRBALL2"
.LASF1167:
	.string	"MT_SMOKE"
.LASF1181:
	.string	"MT_CYBORG"
.LASF419:
	.string	"S_SPOS_XDIE1"
.LASF420:
	.string	"S_SPOS_XDIE2"
.LASF421:
	.string	"S_SPOS_XDIE3"
.LASF422:
	.string	"S_SPOS_XDIE4"
.LASF423:
	.string	"S_SPOS_XDIE5"
.LASF424:
	.string	"S_SPOS_XDIE6"
.LASF425:
	.string	"S_SPOS_XDIE7"
.LASF426:
	.string	"S_SPOS_XDIE8"
.LASF427:
	.string	"S_SPOS_XDIE9"
.LASF11:
	.string	"size_t"
.LASF1020:
	.string	"S_BKEY"
.LASF44:
	.string	"pw_invisibility"
.LASF1370:
	.string	"R_DrawColumnLow"
.LASF1364:
	.string	"R_DrawSpan"
.LASF108:
	.string	"SPR_ARM1"
.LASF109:
	.string	"SPR_ARM2"
.LASF1163:
	.string	"MT_VILE"
.LASF21:
	.string	"it_blueskull"
.LASF267:
	.string	"S_PLASMADOWN"
.LASF579:
	.string	"S_FATT_PAIN2"
.LASF977:
	.string	"S_BRAINEYESEE"
.LASF514:
	.string	"S_SKEL_STND2"
.LASF867:
	.string	"S_CYBER_STND2"
.LASF711:
	.string	"S_HEAD_RAISE4"
.LASF937:
	.string	"S_SSWV_DIE2"
.LASF13:
	.string	"registered"
.LASF393:
	.string	"S_POSS_XDIE8"
.LASF1067:
	.string	"S_CELP"
.LASF1109:
	.string	"S_EVILEYE"
.LASF1135:
	.string	"S_GTORCHSHRT2"
.LASF1136:
	.string	"S_GTORCHSHRT3"
.LASF1137:
	.string	"S_GTORCHSHRT4"
.LASF1314:
	.string	"centery"
.LASF1311:
	.string	"viewheight"
.LASF568:
	.string	"S_FATT_ATK1"
.LASF102:
	.string	"SPR_CYBR"
.LASF569:
	.string	"S_FATT_ATK2"
.LASF472:
	.string	"S_VILE_DIE10"
.LASF63:
	.string	"SPR_MISF"
.LASF62:
	.string	"SPR_MISG"
.LASF75:
	.string	"SPR_MISL"
.LASF1026:
	.string	"S_BSKULL"
.LASF106:
	.string	"SPR_BBRN"
.LASF447:
	.string	"S_VILE_ATK1"
.LASF448:
	.string	"S_VILE_ATK2"
.LASF449:
	.string	"S_VILE_ATK3"
.LASF450:
	.string	"S_VILE_ATK4"
.LASF451:
	.string	"S_VILE_ATK5"
.LASF452:
	.string	"S_VILE_ATK6"
.LASF453:
	.string	"S_VILE_ATK7"
.LASF194:
	.string	"S_PUNCH"
.LASF455:
	.string	"S_VILE_ATK9"
.LASF177:
	.string	"SPR_SMBT"
.LASF750:
	.string	"S_BOS2_RUN1"
.LASF751:
	.string	"S_BOS2_RUN2"
.LASF752:
	.string	"S_BOS2_RUN3"
.LASF753:
	.string	"S_BOS2_RUN4"
.LASF754:
	.string	"S_BOS2_RUN5"
.LASF755:
	.string	"S_BOS2_RUN6"
.LASF756:
	.string	"S_BOS2_RUN7"
.LASF757:
	.string	"S_BOS2_RUN8"
.LASF168:
	.string	"SPR_TRE1"
.LASF169:
	.string	"SPR_TRE2"
.LASF824:
	.string	"S_BSPI_STND"
.LASF614:
	.string	"S_CPOS_DIE1"
.LASF176:
	.string	"SPR_TRED"
.LASF69:
	.string	"SPR_BLUD"
.LASF570:
	.string	"S_FATT_ATK3"
.LASF571:
	.string	"S_FATT_ATK4"
.LASF572:
	.string	"S_FATT_ATK5"
.LASF573:
	.string	"S_FATT_ATK6"
.LASF574:
	.string	"S_FATT_ATK7"
.LASF575:
	.string	"S_FATT_ATK8"
.LASF576:
	.string	"S_FATT_ATK9"
.LASF79:
	.string	"SPR_TFOG"
.LASF282:
	.string	"S_BLOOD1"
.LASF283:
	.string	"S_BLOOD2"
.LASF284:
	.string	"S_BLOOD3"
.LASF1359:
	.string	"R_InitBuffer"
.LASF1320:
	.string	"dc_texturemid"
.LASF1074:
	.string	"S_LAUN"
.LASF334:
	.string	"S_IFOG"
.LASF82:
	.string	"SPR_POSS"
.LASF87:
	.string	"SPR_FBXP"
.LASF883:
	.string	"S_CYBER_DIE1"
.LASF884:
	.string	"S_CYBER_DIE2"
.LASF885:
	.string	"S_CYBER_DIE3"
.LASF886:
	.string	"S_CYBER_DIE4"
.LASF887:
	.string	"S_CYBER_DIE5"
.LASF888:
	.string	"S_CYBER_DIE6"
.LASF889:
	.string	"S_CYBER_DIE7"
.LASF761:
	.string	"S_BOS2_PAIN"
.LASF891:
	.string	"S_CYBER_DIE9"
.LASF1328:
	.string	"ds_xstep"
.LASF1230:
	.string	"MT_MISC23"
.LASF1304:
	.string	"patch_t"
.LASF1104:
	.string	"S_CANDELABRA"
.LASF444:
	.string	"S_VILE_RUN10"
.LASF445:
	.string	"S_VILE_RUN11"
.LASF446:
	.string	"S_VILE_RUN12"
.LASF1064:
	.string	"S_ROCK"
.LASF213:
	.string	"S_SGUN1"
.LASF214:
	.string	"S_SGUN2"
.LASF215:
	.string	"S_SGUN3"
.LASF216:
	.string	"S_SGUN4"
.LASF217:
	.string	"S_SGUN5"
.LASF218:
	.string	"S_SGUN6"
.LASF219:
	.string	"S_SGUN7"
.LASF220:
	.string	"S_SGUN8"
.LASF221:
	.string	"S_SGUN9"
.LASF210:
	.string	"S_SGUN"
.LASF1100:
	.string	"S_SHRTGRNCOL"
.LASF785:
	.string	"S_SKULL_PAIN"
.LASF1188:
	.string	"MT_SPAWNSHOT"
.LASF1331:
	.string	"translationtables"
.LASF509:
	.string	"S_TRACER2"
.LASF1108:
	.string	"S_TECHPILLAR"
.LASF513:
	.string	"S_SKEL_STND"
.LASF668:
	.string	"S_SARG_STND2"
.LASF16:
	.string	"indetermined"
.LASF414:
	.string	"S_SPOS_DIE1"
.LASF415:
	.string	"S_SPOS_DIE2"
.LASF416:
	.string	"S_SPOS_DIE3"
.LASF417:
	.string	"S_SPOS_DIE4"
.LASF418:
	.string	"S_SPOS_DIE5"
.LASF1143:
	.string	"S_HANGBNOBRAIN"
.LASF677:
	.string	"S_SARG_ATK1"
.LASF678:
	.string	"S_SARG_ATK2"
.LASF679:
	.string	"S_SARG_ATK3"
.LASF268:
	.string	"S_PLASMAUP"
.LASF1024:
	.string	"S_YKEY"
.LASF1329:
	.string	"ds_ystep"
.LASF906:
	.string	"S_PAIN_DIE1"
.LASF1318:
	.string	"dc_yh"
.LASF436:
	.string	"S_VILE_RUN2"
.LASF1154:
	.string	"S_TECHLAMP4"
.LASF600:
	.string	"S_CPOS_RUN1"
.LASF601:
	.string	"S_CPOS_RUN2"
.LASF602:
	.string	"S_CPOS_RUN3"
.LASF603:
	.string	"S_CPOS_RUN4"
.LASF604:
	.string	"S_CPOS_RUN5"
.LASF605:
	.string	"S_CPOS_RUN6"
.LASF139:
	.string	"SPR_BPAK"
.LASF607:
	.string	"S_CPOS_RUN8"
.LASF1004:
	.string	"S_BEXP5"
.LASF369:
	.string	"S_POSS_RUN2"
.LASF370:
	.string	"S_POSS_RUN3"
.LASF371:
	.string	"S_POSS_RUN4"
.LASF688:
	.string	"S_SARG_RAISE1"
.LASF372:
	.string	"S_POSS_RUN5"
.LASF690:
	.string	"S_SARG_RAISE3"
.LASF373:
	.string	"S_POSS_RUN6"
.LASF692:
	.string	"S_SARG_RAISE5"
.LASF693:
	.string	"S_SARG_RAISE6"
.LASF178:
	.string	"SPR_SMGT"
.LASF968:
	.string	"S_KEENPAIN"
.LASF316:
	.string	"S_BFGEXP2"
.LASF317:
	.string	"S_BFGEXP3"
.LASF318:
	.string	"S_BFGEXP4"
.LASF247:
	.string	"S_CHAINFLASH1"
.LASF248:
	.string	"S_CHAINFLASH2"
.LASF203:
	.string	"S_PISTOLDOWN"
.LASF868:
	.string	"S_CYBER_RUN1"
.LASF869:
	.string	"S_CYBER_RUN2"
.LASF870:
	.string	"S_CYBER_RUN3"
.LASF871:
	.string	"S_CYBER_RUN4"
.LASF872:
	.string	"S_CYBER_RUN5"
.LASF873:
	.string	"S_CYBER_RUN6"
.LASF874:
	.string	"S_CYBER_RUN7"
.LASF875:
	.string	"S_CYBER_RUN8"
.LASF1055:
	.string	"S_PMAP2"
.LASF1056:
	.string	"S_PMAP3"
.LASF1057:
	.string	"S_PMAP4"
.LASF1058:
	.string	"S_PMAP5"
.LASF1059:
	.string	"S_PMAP6"
.LASF786:
	.string	"S_SKULL_PAIN2"
.LASF612:
	.string	"S_CPOS_PAIN"
.LASF14:
	.string	"commercial"
.LASF917:
	.string	"S_PAIN_RAISE6"
.LASF1246:
	.string	"MT_MISC36"
.LASF721:
	.string	"S_BOSS_RUN1"
.LASF722:
	.string	"S_BOSS_RUN2"
.LASF723:
	.string	"S_BOSS_RUN3"
.LASF724:
	.string	"S_BOSS_RUN4"
.LASF725:
	.string	"S_BOSS_RUN5"
.LASF243:
	.string	"S_CHAINUP"
.LASF1372:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1106:
	.string	"S_TORCHTREE"
.LASF918:
	.string	"S_SSWV_STND"
.LASF965:
	.string	"S_COMMKEEN10"
.LASF966:
	.string	"S_COMMKEEN11"
.LASF967:
	.string	"S_COMMKEEN12"
.LASF882:
	.string	"S_CYBER_PAIN"
.LASF401:
	.string	"S_SPOS_RUN1"
.LASF160:
	.string	"SPR_SMIT"
.LASF403:
	.string	"S_SPOS_RUN3"
.LASF404:
	.string	"S_SPOS_RUN4"
.LASF405:
	.string	"S_SPOS_RUN5"
.LASF97:
	.string	"SPR_SKUL"
.LASF407:
	.string	"S_SPOS_RUN7"
.LASF408:
	.string	"S_SPOS_RUN8"
.LASF1065:
	.string	"S_BROK"
.LASF1358:
	.string	"name"
.LASF195:
	.string	"S_PUNCHDOWN"
.LASF861:
	.string	"S_ARACH_PLEX"
.LASF1122:
	.string	"S_GREENTORCH"
.LASF33:
	.string	"wp_supershotgun"
.LASF261:
	.string	"S_SAWDOWN"
.LASF1191:
	.string	"MT_TROOPSHOT"
.LASF1176:
	.string	"MT_BRUISERSHOT"
.LASF1296:
	.string	"MT_MISC86"
.LASF1305:
	.string	"ps_weapon"
.LASF1360:
	.string	"R_DrawSpanLow"
.LASF349:
	.string	"S_PLAY_PAIN2"
.LASF1298:
	.string	"lighttable_t"
.LASF744:
	.string	"S_BOSS_RAISE4"
.LASF745:
	.string	"S_BOSS_RAISE5"
.LASF89:
	.string	"SPR_MANF"
.LASF599:
	.string	"S_CPOS_STND2"
.LASF412:
	.string	"S_SPOS_PAIN"
.LASF27:
	.string	"wp_shotgun"
.LASF380:
	.string	"S_POSS_PAIN2"
.LASF1197:
	.string	"MT_PUFF"
.LASF252:
	.string	"S_MISSILE1"
.LASF253:
	.string	"S_MISSILE2"
.LASF254:
	.string	"S_MISSILE3"
.LASF628:
	.string	"S_CPOS_RAISE2"
.LASF629:
	.string	"S_CPOS_RAISE3"
.LASF630:
	.string	"S_CPOS_RAISE4"
.LASF1072:
	.string	"S_MGUN"
.LASF1175:
	.string	"MT_BRUISER"
.LASF138:
	.string	"SPR_SBOX"
.LASF781:
	.string	"S_SKULL_ATK1"
.LASF782:
	.string	"S_SKULL_ATK2"
.LASF783:
	.string	"S_SKULL_ATK3"
.LASF784:
	.string	"S_SKULL_ATK4"
.LASF762:
	.string	"S_BOS2_PAIN2"
.LASF5:
	.string	"short unsigned int"
.LASF1177:
	.string	"MT_KNIGHT"
.LASF7:
	.string	"signed char"
.LASF413:
	.string	"S_SPOS_PAIN2"
.LASF577:
	.string	"S_FATT_ATK10"
.LASF175:
	.string	"SPR_TGRN"
.LASF1222:
	.string	"MT_MEGA"
.LASF77:
	.string	"SPR_BFE1"
.LASF78:
	.string	"SPR_BFE2"
.LASF1319:
	.string	"dc_iscale"
.LASF1256:
	.string	"MT_MISC46"
.LASF1335:
	.string	"viewimage"
.LASF1373:
	.string	"R_DrawColumn"
.LASF1303:
	.string	"columnofs"
.LASF1352:
	.string	"count"
.LASF1184:
	.string	"MT_KEEN"
.LASF978:
	.string	"S_BRAINEYE1"
.LASF634:
	.string	"S_TROO_STND"
.LASF581:
	.string	"S_FATT_DIE2"
.LASF272:
	.string	"S_PLASMAFLASH2"
.LASF325:
	.string	"S_TFOG2"
.LASF326:
	.string	"S_TFOG3"
.LASF327:
	.string	"S_TFOG4"
.LASF328:
	.string	"S_TFOG5"
.LASF329:
	.string	"S_TFOG6"
.LASF330:
	.string	"S_TFOG7"
.LASF331:
	.string	"S_TFOG8"
.LASF332:
	.string	"S_TFOG9"
.LASF747:
	.string	"S_BOSS_RAISE7"
.LASF53:
	.string	"SPR_TROO"
.LASF64:
	.string	"SPR_SAWG"
.LASF1213:
	.string	"MT_MISC10"
.LASF113:
	.string	"SPR_BON1"
.LASF114:
	.string	"SPR_BON2"
.LASF20:
	.string	"it_redcard"
.LASF1101:
	.string	"S_TALLREDCOL"
.LASF1347:
	.string	"I_Error"
.LASF1076:
	.string	"S_SHOT"
.LASF932:
	.string	"S_SSWV_ATK5"
.LASF1081:
	.string	"S_BLOODYTWITCH2"
.LASF1082:
	.string	"S_BLOODYTWITCH3"
.LASF1083:
	.string	"S_BLOODYTWITCH4"
.LASF822:
	.string	"S_SPID_DIE10"
.LASF823:
	.string	"S_SPID_DIE11"
.LASF170:
	.string	"SPR_ELEC"
.LASF970:
	.string	"S_BRAIN"
.LASF1179:
	.string	"MT_SPIDER"
.LASF1053:
	.string	"S_SUIT"
.LASF68:
	.string	"SPR_BFGF"
.LASF67:
	.string	"SPR_BFGG"
.LASF893:
	.string	"S_PAIN_STND"
.LASF309:
	.string	"S_BFGLAND"
.LASF999:
	.string	"S_BAR2"
.LASF1355:
	.string	"patch"
.LASF37:
	.string	"am_shell"
.LASF1345:
	.string	"W_CacheLumpName"
.LASF589:
	.string	"S_FATT_DIE10"
.LASF24:
	.string	"NUMCARDS"
.LASF1126:
	.string	"S_REDTORCH"
.LASF1195:
	.string	"MT_BFG"
.LASF84:
	.string	"SPR_VILE"
.LASF1198:
	.string	"MT_BLOOD"
.LASF202:
	.string	"S_PISTOL"
.LASF1310:
	.string	"scaledviewwidth"
.LASF434:
	.string	"S_VILE_STND2"
.LASF852:
	.string	"S_BSPI_RAISE1"
.LASF853:
	.string	"S_BSPI_RAISE2"
.LASF854:
	.string	"S_BSPI_RAISE3"
.LASF855:
	.string	"S_BSPI_RAISE4"
.LASF856:
	.string	"S_BSPI_RAISE5"
.LASF857:
	.string	"S_BSPI_RAISE6"
.LASF858:
	.string	"S_BSPI_RAISE7"
.LASF1325:
	.string	"ds_colormap"
.LASF9:
	.string	"long int"
.LASF941:
	.string	"S_SSWV_XDIE1"
.LASF942:
	.string	"S_SSWV_XDIE2"
.LASF943:
	.string	"S_SSWV_XDIE3"
.LASF944:
	.string	"S_SSWV_XDIE4"
.LASF945:
	.string	"S_SSWV_XDIE5"
.LASF946:
	.string	"S_SSWV_XDIE6"
.LASF947:
	.string	"S_SSWV_XDIE7"
.LASF948:
	.string	"S_SSWV_XDIE8"
.LASF949:
	.string	"S_SSWV_XDIE9"
.LASF239:
	.string	"S_DSGUNFLASH1"
.LASF240:
	.string	"S_DSGUNFLASH2"
.LASF1229:
	.string	"MT_MISC22"
.LASF497:
	.string	"S_FIRE25"
.LASF591:
	.string	"S_FATT_RAISE2"
.LASF1265:
	.string	"MT_MISC55"
.LASF1326:
	.string	"ds_xfrac"
.LASF22:
	.string	"it_yellowskull"
.LASF1029:
	.string	"S_RSKULL2"
.LASF804:
	.string	"S_SPID_RUN10"
.LASF805:
	.string	"S_SPID_RUN11"
.LASF806:
	.string	"S_SPID_RUN12"
.LASF1348:
	.string	"rcsid"
.LASF1343:
	.string	"V_DrawPatch"
.LASF255:
	.string	"S_MISSILEFLASH1"
.LASF256:
	.string	"S_MISSILEFLASH2"
.LASF257:
	.string	"S_MISSILEFLASH3"
.LASF258:
	.string	"S_MISSILEFLASH4"
.LASF119:
	.string	"SPR_RSKU"
.LASF1340:
	.string	"fuzzpos"
.LASF615:
	.string	"S_CPOS_DIE2"
.LASF616:
	.string	"S_CPOS_DIE3"
.LASF617:
	.string	"S_CPOS_DIE4"
.LASF618:
	.string	"S_CPOS_DIE5"
.LASF619:
	.string	"S_CPOS_DIE6"
.LASF620:
	.string	"S_CPOS_DIE7"
.LASF1061:
	.string	"S_PVIS2"
.LASF10:
	.string	"intptr_t"
.LASF1190:
	.string	"MT_BARREL"
.LASF793:
	.string	"S_SPID_STND"
.LASF565:
	.string	"S_FATT_RUN10"
.LASF566:
	.string	"S_FATT_RUN11"
.LASF567:
	.string	"S_FATT_RUN12"
.LASF1182:
	.string	"MT_PAIN"
.LASF1321:
	.string	"dc_source"
.LASF1119:
	.string	"S_BLUETORCH2"
.LASF1120:
	.string	"S_BLUETORCH3"
.LASF1121:
	.string	"S_BLUETORCH4"
.LASF179:
	.string	"SPR_SMRT"
.LASF280:
	.string	"S_BFGFLASH1"
.LASF281:
	.string	"S_BFGFLASH2"
.LASF1316:
	.string	"dc_x"
.LASF814:
	.string	"S_SPID_DIE2"
.LASF96:
	.string	"SPR_BOS2"
.LASF817:
	.string	"S_SPID_DIE5"
.LASF818:
	.string	"S_SPID_DIE6"
.LASF819:
	.string	"S_SPID_DIE7"
.LASF820:
	.string	"S_SPID_DIE8"
.LASF1363:
	.string	"spot"
.LASF1110:
	.string	"S_EVILEYE2"
.LASF1111:
	.string	"S_EVILEYE3"
.LASF1112:
	.string	"S_EVILEYE4"
.LASF285:
	.string	"S_PUFF1"
.LASF286:
	.string	"S_PUFF2"
.LASF287:
	.string	"S_PUFF3"
.LASF107:
	.string	"SPR_BOSF"
.LASF95:
	.string	"SPR_BOSS"
.LASF1194:
	.string	"MT_PLASMA"
.LASF839:
	.string	"S_BSPI_ATK1"
.LASF840:
	.string	"S_BSPI_ATK2"
.LASF841:
	.string	"S_BSPI_ATK3"
.LASF842:
	.string	"S_BSPI_ATK4"
.LASF1021:
	.string	"S_BKEY2"
.LASF34:
	.string	"NUMWEAPONS"
.LASF826:
	.string	"S_BSPI_SIGHT"
.LASF2:
	.string	"long unsigned int"
.LASF972:
	.string	"S_BRAIN_DIE1"
.LASF973:
	.string	"S_BRAIN_DIE2"
.LASF974:
	.string	"S_BRAIN_DIE3"
.LASF975:
	.string	"S_BRAIN_DIE4"
.LASF307:
	.string	"S_BFGSHOT"
.LASF1113:
	.string	"S_FLOATSKULL"
.LASF463:
	.string	"S_VILE_DIE1"
.LASF464:
	.string	"S_VILE_DIE2"
.LASF465:
	.string	"S_VILE_DIE3"
.LASF466:
	.string	"S_VILE_DIE4"
.LASF467:
	.string	"S_VILE_DIE5"
.LASF468:
	.string	"S_VILE_DIE6"
.LASF469:
	.string	"S_VILE_DIE7"
.LASF470:
	.string	"S_VILE_DIE8"
.LASF471:
	.string	"S_VILE_DIE9"
.LASF148:
	.string	"SPR_SMT2"
.LASF1023:
	.string	"S_RKEY2"
.LASF994:
	.string	"S_ARM1"
.LASF996:
	.string	"S_ARM2"
.LASF1089:
	.string	"S_HEADCANDLES"
.LASF126:
	.string	"SPR_PINS"
.LASF719:
	.string	"S_BOSS_STND"
.LASF699:
	.string	"S_HEAD_PAIN"
.LASF19:
	.string	"it_yellowcard"
.LASF1166:
	.string	"MT_TRACER"
.LASF580:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF582:
	.string	"S_FATT_DIE3"
.LASF583:
	.string	"S_FATT_DIE4"
.LASF584:
	.string	"S_FATT_DIE5"
.LASF585:
	.string	"S_FATT_DIE6"
.LASF586:
	.string	"S_FATT_DIE7"
.LASF587:
	.string	"S_FATT_DIE8"
.LASF588:
	.string	"S_FATT_DIE9"
.LASF655:
	.string	"S_TROO_XDIE2"
.LASF656:
	.string	"S_TROO_XDIE3"
.LASF657:
	.string	"S_TROO_XDIE4"
.LASF658:
	.string	"S_TROO_XDIE5"
.LASF659:
	.string	"S_TROO_XDIE6"
.LASF660:
	.string	"S_TROO_XDIE7"
.LASF661:
	.string	"S_TROO_XDIE8"
.LASF131:
	.string	"SPR_CLIP"
.LASF1102:
	.string	"S_SHRTREDCOL"
.LASF1145:
	.string	"S_HANGTSKULL"
.LASF48:
	.string	"NUMPOWERS"
.LASF930:
	.string	"S_SSWV_ATK3"
.LASF931:
	.string	"S_SSWV_ATK4"
.LASF236:
	.string	"S_DSGUN10"
.LASF43:
	.string	"pw_strength"
.LASF165:
	.string	"SPR_CAND"
.LASF1172:
	.string	"MT_SERGEANT"
.LASF1092:
	.string	"S_LIVESTICK"
.LASF1032:
	.string	"S_STIM"
.LASF38:
	.string	"am_cell"
.LASF18:
	.string	"it_bluecard"
.LASF695:
	.string	"S_HEAD_RUN1"
.LASF350:
	.string	"S_PLAY_DIE1"
.LASF351:
	.string	"S_PLAY_DIE2"
.LASF352:
	.string	"S_PLAY_DIE3"
.LASF353:
	.string	"S_PLAY_DIE4"
.LASF354:
	.string	"S_PLAY_DIE5"
.LASF355:
	.string	"S_PLAY_DIE6"
.LASF356:
	.string	"S_PLAY_DIE7"
.LASF366:
	.string	"S_POSS_STND"
.LASF322:
	.string	"S_TFOG"
.LASF1250:
	.string	"MT_MISC40"
.LASF1251:
	.string	"MT_MISC41"
.LASF682:
	.string	"S_SARG_DIE1"
.LASF683:
	.string	"S_SARG_DIE2"
.LASF684:
	.string	"S_SARG_DIE3"
.LASF685:
	.string	"S_SARG_DIE4"
.LASF983:
	.string	"S_SPAWNFIRE1"
.LASF984:
	.string	"S_SPAWNFIRE2"
.LASF985:
	.string	"S_SPAWNFIRE3"
.LASF986:
	.string	"S_SPAWNFIRE4"
.LASF987:
	.string	"S_SPAWNFIRE5"
.LASF988:
	.string	"S_SPAWNFIRE6"
.LASF989:
	.string	"S_SPAWNFIRE7"
.LASF990:
	.string	"S_SPAWNFIRE8"
.LASF654:
	.string	"S_TROO_XDIE1"
.LASF1361:
	.string	"xfrac"
.LASF1147:
	.string	"S_HANGTNOBRAIN"
.LASF1366:
	.string	"R_DrawTranslatedColumn"
.LASF302:
	.string	"S_PLASEXP2"
.LASF303:
	.string	"S_PLASEXP3"
.LASF304:
	.string	"S_PLASEXP4"
.LASF305:
	.string	"S_PLASEXP5"
.LASF31:
	.string	"wp_bfg"
.LASF1131:
	.string	"S_BTORCHSHRT2"
.LASF1132:
	.string	"S_BTORCHSHRT3"
.LASF1133:
	.string	"S_BTORCHSHRT4"
.LASF435:
	.string	"S_VILE_RUN1"
.LASF225:
	.string	"S_DSGUNDOWN"
.LASF437:
	.string	"S_VILE_RUN3"
.LASF438:
	.string	"S_VILE_RUN4"
.LASF439:
	.string	"S_VILE_RUN5"
.LASF440:
	.string	"S_VILE_RUN6"
.LASF441:
	.string	"S_VILE_RUN7"
.LASF442:
	.string	"S_VILE_RUN8"
.LASF443:
	.string	"S_VILE_RUN9"
.LASF686:
	.string	"S_SARG_DIE5"
.LASF687:
	.string	"S_SARG_DIE6"
.LASF527:
	.string	"S_SKEL_FIST1"
.LASF528:
	.string	"S_SKEL_FIST2"
.LASF529:
	.string	"S_SKEL_FIST3"
.LASF530:
	.string	"S_SKEL_FIST4"
.LASF266:
	.string	"S_PLASMA"
.LASF1045:
	.string	"S_PINS"
.LASF1118:
	.string	"S_BLUETORCH"
.LASF556:
	.string	"S_FATT_RUN1"
.LASF557:
	.string	"S_FATT_RUN2"
.LASF558:
	.string	"S_FATT_RUN3"
.LASF559:
	.string	"S_FATT_RUN4"
.LASF45:
	.string	"pw_ironfeet"
.LASF561:
	.string	"S_FATT_RUN6"
.LASF562:
	.string	"S_FATT_RUN7"
.LASF563:
	.string	"S_FATT_RUN8"
.LASF1094:
	.string	"S_MEAT2"
.LASF1095:
	.string	"S_MEAT3"
.LASF1096:
	.string	"S_MEAT4"
.LASF1097:
	.string	"S_MEAT5"
.LASF209:
	.string	"S_PISTOLFLASH"
.LASF429:
	.string	"S_SPOS_RAISE2"
.LASF430:
	.string	"S_SPOS_RAISE3"
.LASF431:
	.string	"S_SPOS_RAISE4"
.LASF432:
	.string	"S_SPOS_RAISE5"
.LASF122:
	.string	"SPR_MEDI"
.LASF124:
	.string	"SPR_PINV"
.LASF1330:
	.string	"ds_source"
.LASF971:
	.string	"S_BRAIN_PAIN"
.LASF242:
	.string	"S_CHAINDOWN"
.LASF461:
	.string	"S_VILE_PAIN"
.LASF508:
	.string	"S_TRACER"
.LASF1341:
	.string	"dscount"
.LASF928:
	.string	"S_SSWV_ATK1"
.LASF929:
	.string	"S_SSWV_ATK2"
.LASF458:
	.string	"S_VILE_HEAL1"
.LASF459:
	.string	"S_VILE_HEAL2"
.LASF460:
	.string	"S_VILE_HEAL3"
.LASF933:
	.string	"S_SSWV_ATK6"
.LASF116:
	.string	"SPR_RKEY"
.LASF1079:
	.string	"S_STALAG"
.LASF1333:
	.string	"screens"
.LASF1346:
	.string	"Z_Malloc"
.LASF794:
	.string	"S_SPID_STND2"
.LASF1263:
	.string	"MT_MISC53"
.LASF1080:
	.string	"S_BLOODYTWITCH"
.LASF1149:
	.string	"S_SMALLPOOL"
.LASF1266:
	.string	"MT_MISC56"
.LASF578:
	.string	"S_FATT_PAIN"
.LASF342:
	.string	"S_PLAY_RUN1"
.LASF343:
	.string	"S_PLAY_RUN2"
.LASF344:
	.string	"S_PLAY_RUN3"
.LASF345:
	.string	"S_PLAY_RUN4"
.LASF1070:
	.string	"S_BPAK"
.LASF51:
	.string	"double"
.LASF111:
	.string	"SPR_BEXP"
.LASF1027:
	.string	"S_BSKULL2"
.LASF70:
	.string	"SPR_PUFF"
.LASF956:
	.string	"S_COMMKEEN"
.LASF748:
	.string	"S_BOS2_STND"
.LASF76:
	.string	"SPR_BFS1"
.LASF979:
	.string	"S_SPAWN1"
.LASF980:
	.string	"S_SPAWN2"
.LASF981:
	.string	"S_SPAWN3"
.LASF982:
	.string	"S_SPAWN4"
.LASF1152:
	.string	"S_TECHLAMP2"
.LASF1153:
	.string	"S_TECHLAMP3"
.LASF32:
	.string	"wp_chainsaw"
.LASF1180:
	.string	"MT_BABY"
.LASF1353:
	.string	"R_FillBackScreen"
.LASF1093:
	.string	"S_LIVESTICK2"
.LASF1138:
	.string	"S_RTORCHSHRT"
.LASF1226:
	.string	"MT_MISC19"
.LASF98:
	.string	"SPR_SPID"
.LASF694:
	.string	"S_HEAD_STND"
.LASF669:
	.string	"S_SARG_RUN1"
.LASF670:
	.string	"S_SARG_RUN2"
.LASF671:
	.string	"S_SARG_RUN3"
.LASF672:
	.string	"S_SARG_RUN4"
.LASF673:
	.string	"S_SARG_RUN5"
.LASF674:
	.string	"S_SARG_RUN6"
.LASF675:
	.string	"S_SARG_RUN7"
.LASF676:
	.string	"S_SARG_RUN8"
.LASF1204:
	.string	"MT_MISC1"
.LASF1205:
	.string	"MT_MISC2"
.LASF1206:
	.string	"MT_MISC3"
.LASF1207:
	.string	"MT_MISC4"
.LASF1208:
	.string	"MT_MISC5"
.LASF1209:
	.string	"MT_MISC6"
.LASF1210:
	.string	"MT_MISC7"
.LASF1211:
	.string	"MT_MISC8"
.LASF1212:
	.string	"MT_MISC9"
.LASF259:
	.string	"S_SAW"
.LASF127:
	.string	"SPR_MEGA"
.LASF348:
	.string	"S_PLAY_PAIN"
.LASF300:
	.string	"S_PLASBALL2"
.LASF1306:
	.string	"ps_flash"
.LASF1336:
	.string	"ylookup"
.LASF105:
	.string	"SPR_KEEN"
.LASF1338:
	.string	"dccount"
.LASF934:
	.string	"S_SSWV_PAIN"
.LASF1369:
	.string	"R_DrawFuzzColumn"
.LASF969:
	.string	"S_KEENPAIN2"
.LASF47:
	.string	"pw_infrared"
.LASF456:
	.string	"S_VILE_ATK10"
.LASF457:
	.string	"S_VILE_ATK11"
.LASF1302:
	.string	"topoffset"
.LASF935:
	.string	"S_SSWV_PAIN2"
.LASF1290:
	.string	"MT_MISC80"
.LASF1009:
	.string	"S_BON1A"
.LASF1010:
	.string	"S_BON1B"
.LASF1011:
	.string	"S_BON1C"
.LASF1012:
	.string	"S_BON1D"
.LASF1013:
	.string	"S_BON1E"
.LASF1368:
	.string	"fracstep"
.LASF1299:
	.string	"width"
.LASF125:
	.string	"SPR_PSTR"
.LASF1228:
	.string	"MT_MISC21"
.LASF680:
	.string	"S_SARG_PAIN"
.LASF1223:
	.string	"MT_CLIP"
.LASF1323:
	.string	"ds_x1"
.LASF1324:
	.string	"ds_x2"
.LASF140:
	.string	"SPR_BFUG"
.LASF1278:
	.string	"MT_MISC68"
.LASF1005:
	.string	"S_BBAR1"
.LASF1006:
	.string	"S_BBAR2"
.LASF1007:
	.string	"S_BBAR3"
.LASF193:
	.string	"S_LIGHTDONE"
.LASF844:
	.string	"S_BSPI_PAIN2"
.LASF644:
	.string	"S_TROO_ATK1"
.LASF645:
	.string	"S_TROO_ATK2"
.LASF646:
	.string	"S_TROO_ATK3"
.LASF788:
	.string	"S_SKULL_DIE2"
.LASF789:
	.string	"S_SKULL_DIE3"
.LASF790:
	.string	"S_SKULL_DIE4"
.LASF791:
	.string	"S_SKULL_DIE5"
.LASF792:
	.string	"S_SKULL_DIE6"
.LASF144:
	.string	"SPR_PLAS"
.LASF1015:
	.string	"S_BON2A"
.LASF1016:
	.string	"S_BON2B"
.LASF57:
	.string	"SPR_PISF"
.LASF56:
	.string	"SPR_PISG"
.LASF1019:
	.string	"S_BON2E"
.LASF1233:
	.string	"MT_CHAINGUN"
.LASF291:
	.string	"S_TBALLX1"
.LASF292:
	.string	"S_TBALLX2"
.LASF293:
	.string	"S_TBALLX3"
.LASF35:
	.string	"wp_nochange"
.LASF1308:
	.string	"colormaps"
.LASF1170:
	.string	"MT_CHAINGUY"
.LASF787:
	.string	"S_SKULL_DIE1"
.LASF1150:
	.string	"S_BRAINSTEM"
.LASF955:
	.string	"S_KEENSTND"
.LASF81:
	.string	"SPR_PLAY"
.LASF1337:
	.string	"translations"
.LASF1342:
	.string	"V_MarkRect"
.LASF1090:
	.string	"S_HEADCANDLES2"
.LASF1200:
	.string	"MT_IFOG"
.LASF172:
	.string	"SPR_FSKU"
.LASF406:
	.string	"S_SPOS_RUN6"
.LASF262:
	.string	"S_SAWUP"
.LASF995:
	.string	"S_ARM1A"
.LASF598:
	.string	"S_CPOS_STND"
.LASF1069:
	.string	"S_SBOX"
.LASF1244:
	.string	"MT_MISC34"
.LASF301:
	.string	"S_PLASEXP"
.LASF1247:
	.string	"MT_MISC37"
.LASF1085:
	.string	"S_DEADBOTTOM"
.LASF1142:
	.string	"S_HANGNOGUTS"
.LASF1046:
	.string	"S_PINS2"
.LASF1047:
	.string	"S_PINS3"
.LASF1048:
	.string	"S_PINS4"
.LASF900:
	.string	"S_PAIN_ATK1"
.LASF901:
	.string	"S_PAIN_ATK2"
.LASF902:
	.string	"S_PAIN_ATK3"
.LASF903:
	.string	"S_PAIN_ATK4"
.LASF212:
	.string	"S_SGUNUP"
.LASF166:
	.string	"SPR_CBRA"
.LASF1354:
	.string	"dest"
.LASF997:
	.string	"S_ARM2A"
.LASF866:
	.string	"S_CYBER_STND"
.LASF1301:
	.string	"leftoffset"
.LASF1025:
	.string	"S_YKEY2"
.LASF475:
	.string	"S_FIRE3"
.LASF1339:
	.string	"fuzzoffset"
.LASF480:
	.string	"S_FIRE8"
.LASF720:
	.string	"S_BOSS_STND2"
.LASF1332:
	.string	"dc_translation"
.LASF263:
	.string	"S_SAW1"
.LASF264:
	.string	"S_SAW2"
.LASF265:
	.string	"S_SAW3"
.LASF1008:
	.string	"S_BON1"
.LASF1014:
	.string	"S_BON2"
.LASF260:
	.string	"S_SAWB"
.LASF648:
	.string	"S_TROO_PAIN2"
.LASF1186:
	.string	"MT_BOSSSPIT"
.LASF473:
	.string	"S_FIRE1"
.LASF474:
	.string	"S_FIRE2"
.LASF52:
	.string	"fixed_t"
.LASF476:
	.string	"S_FIRE4"
.LASF477:
	.string	"S_FIRE5"
.LASF478:
	.string	"S_FIRE6"
.LASF479:
	.string	"S_FIRE7"
.LASF134:
	.string	"SPR_BROK"
.LASF481:
	.string	"S_FIRE9"
.LASF1254:
	.string	"MT_MISC44"
.LASF1255:
	.string	"MT_MISC45"
.LASF1066:
	.string	"S_CELL"
.LASF1257:
	.string	"MT_MISC47"
.LASF132:
	.string	"SPR_AMMO"
.LASF1258:
	.string	"MT_MISC48"
.LASF1259:
	.string	"MT_MISC49"
.LASF779:
	.string	"S_SKULL_RUN1"
.LASF780:
	.string	"S_SKULL_RUN2"
.LASF1146:
	.string	"S_HANGTLOOKUP"
.LASF241:
	.string	"S_CHAIN"
.LASF271:
	.string	"S_PLASMAFLASH1"
.LASF227:
	.string	"S_DSGUN1"
.LASF228:
	.string	"S_DSGUN2"
.LASF123:
	.string	"SPR_SOUL"
.LASF83:
	.string	"SPR_SPOS"
.LASF231:
	.string	"S_DSGUN5"
.LASF232:
	.string	"S_DSGUN6"
.LASF233:
	.string	"S_DSGUN7"
.LASF234:
	.string	"S_DSGUN8"
.LASF235:
	.string	"S_DSGUN9"
.LASF399:
	.string	"S_SPOS_STND"
.LASF103:
	.string	"SPR_PAIN"
.LASF627:
	.string	"S_CPOS_RAISE1"
.LASF276:
	.string	"S_BFG1"
.LASF277:
	.string	"S_BFG2"
.LASF278:
	.string	"S_BFG3"
.LASF279:
	.string	"S_BFG4"
.LASF237:
	.string	"S_DSNR1"
.LASF238:
	.string	"S_DSNR2"
.LASF778:
	.string	"S_SKULL_STND2"
.LASF1041:
	.string	"S_PINV2"
.LASF1042:
	.string	"S_PINV3"
.LASF1043:
	.string	"S_PINV4"
.LASF1156:
	.string	"S_TECH2LAMP2"
.LASF1157:
	.string	"S_TECH2LAMP3"
.LASF1158:
	.string	"S_TECH2LAMP4"
.LASF55:
	.string	"SPR_PUNG"
.LASF622:
	.string	"S_CPOS_XDIE2"
.LASF623:
	.string	"S_CPOS_XDIE3"
.LASF624:
	.string	"S_CPOS_XDIE4"
.LASF625:
	.string	"S_CPOS_XDIE5"
.LASF626:
	.string	"S_CPOS_XDIE6"
.LASF807:
	.string	"S_SPID_ATK1"
.LASF808:
	.string	"S_SPID_ATK2"
.LASF809:
	.string	"S_SPID_ATK3"
.LASF810:
	.string	"S_SPID_ATK4"
.LASF531:
	.string	"S_SKEL_MISS1"
.LASF532:
	.string	"S_SKEL_MISS2"
.LASF533:
	.string	"S_SKEL_MISS3"
.LASF534:
	.string	"S_SKEL_MISS4"
.LASF288:
	.string	"S_PUFF4"
.LASF1028:
	.string	"S_RSKULL"
.LASF860:
	.string	"S_ARACH_PLAZ2"
.LASF1260:
	.string	"MT_MISC50"
.LASF708:
	.string	"S_HEAD_RAISE1"
.LASF1295:
	.string	"MT_MISC85"
.LASF709:
	.string	"S_HEAD_RAISE2"
.LASF710:
	.string	"S_HEAD_RAISE3"
.LASF118:
	.string	"SPR_BSKU"
.LASF712:
	.string	"S_HEAD_RAISE5"
.LASF713:
	.string	"S_HEAD_RAISE6"
.LASF1238:
	.string	"MT_SUPERSHOTGUN"
.LASF129:
	.string	"SPR_PMAP"
.LASF976:
	.string	"S_BRAINEYE"
.LASF130:
	.string	"SPR_PVIS"
.LASF1196:
	.string	"MT_ARACHPLAZ"
.LASF454:
	.string	"S_VILE_ATK8"
.LASF395:
	.string	"S_POSS_RAISE1"
.LASF396:
	.string	"S_POSS_RAISE2"
.LASF397:
	.string	"S_POSS_RAISE3"
.LASF398:
	.string	"S_POSS_RAISE4"
.LASF1327:
	.string	"ds_yfrac"
.LASF250:
	.string	"S_MISSILEDOWN"
.LASF1371:
	.string	"dest2"
.LASF1114:
	.string	"S_FLOATSKULL2"
.LASF1115:
	.string	"S_FLOATSKULL3"
.LASF1049:
	.string	"S_MEGA"
.LASF729:
	.string	"S_BOSS_ATK1"
.LASF730:
	.string	"S_BOSS_ATK2"
.LASF731:
	.string	"S_BOSS_ATK3"
.LASF188:
	.string	"SPR_BRS1"
.LASF536:
	.string	"S_SKEL_PAIN2"
.LASF1073:
	.string	"S_CSAW"
.LASF42:
	.string	"pw_invulnerability"
.LASF716:
	.string	"S_BRBALLX1"
.LASF717:
	.string	"S_BRBALLX2"
.LASF718:
	.string	"S_BRBALLX3"
.LASF846:
	.string	"S_BSPI_DIE2"
.LASF847:
	.string	"S_BSPI_DIE3"
.LASF848:
	.string	"S_BSPI_DIE4"
.LASF849:
	.string	"S_BSPI_DIE5"
.LASF28:
	.string	"wp_chaingun"
.LASF851:
	.string	"S_BSPI_DIE7"
.LASF402:
	.string	"S_SPOS_RUN2"
.LASF905:
	.string	"S_PAIN_PAIN2"
.LASF540:
	.string	"S_SKEL_DIE4"
.LASF137:
	.string	"SPR_SHEL"
.LASF1279:
	.string	"MT_MISC69"
.LASF189:
	.string	"SPR_TLMP"
.LASF367:
	.string	"S_POSS_STND2"
.LASF1237:
	.string	"MT_SHOTGUN"
.LASF1162:
	.string	"MT_SHOTGUY"
.LASF1151:
	.string	"S_TECHLAMP"
.LASF1183:
	.string	"MT_WOLFSS"
.LASF749:
	.string	"S_BOS2_STND2"
.LASF1312:
	.string	"viewwindowx"
.LASF1313:
	.string	"viewwindowy"
.LASF244:
	.string	"S_CHAIN1"
.LASF245:
	.string	"S_CHAIN2"
.LASF246:
	.string	"S_CHAIN3"
.LASF297:
	.string	"S_RBALLX2"
.LASF298:
	.string	"S_RBALLX3"
.LASF174:
	.string	"SPR_TBLU"
.LASF400:
	.string	"S_SPOS_STND2"
.LASF6:
	.string	"unsigned int"
.LASF41:
	.string	"am_noammo"
.LASF376:
	.string	"S_POSS_ATK1"
.LASF377:
	.string	"S_POSS_ATK2"
.LASF378:
	.string	"S_POSS_ATK3"
.LASF1349:
	.string	"side"
.LASF1281:
	.string	"MT_MISC71"
.LASF1139:
	.string	"S_RTORCHSHRT2"
.LASF1140:
	.string	"S_RTORCHSHRT3"
.LASF1141:
	.string	"S_RTORCHSHRT4"
.LASF8:
	.string	"short int"
.LASF1287:
	.string	"MT_MISC77"
.LASF1288:
	.string	"MT_MISC78"
.LASF1289:
	.string	"MT_MISC79"
.LASF1178:
	.string	"MT_SKULL"
.LASF1165:
	.string	"MT_UNDEAD"
.LASF17:
	.string	"GameMode_t"
.LASF537:
	.string	"S_SKEL_DIE1"
.LASF538:
	.string	"S_SKEL_DIE2"
.LASF539:
	.string	"S_SKEL_DIE3"
.LASF85:
	.string	"SPR_FIRE"
.LASF541:
	.string	"S_SKEL_DIE5"
.LASF542:
	.string	"S_SKEL_DIE6"
.LASF1148:
	.string	"S_COLONGIBS"
.LASF1334:
	.string	"gamemode"
.LASF190:
	.string	"SPR_TLP2"
.LASF299:
	.string	"S_PLASBALL"
.LASF146:
	.string	"SPR_SGN2"
.LASF99:
	.string	"SPR_BSPI"
.LASF101:
	.string	"SPR_APBX"
.LASF15:
	.string	"retail"
.LASF1214:
	.string	"MT_MISC11"
.LASF1215:
	.string	"MT_MISC12"
.LASF1217:
	.string	"MT_MISC13"
.LASF1219:
	.string	"MT_MISC14"
.LASF1220:
	.string	"MT_MISC15"
.LASF1221:
	.string	"MT_MISC16"
.LASF1224:
	.string	"MT_MISC17"
.LASF1225:
	.string	"MT_MISC18"
.LASF1062:
	.string	"S_CLIP"
.LASF1187:
	.string	"MT_BOSSTARGET"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"r_draw.c"
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
