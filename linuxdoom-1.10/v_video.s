	.file	"v_video.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "v_video.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 50
rcsid:
	.string	"$Id: v_video.c,v 1.5 1997/02/03 22:45:13 b1 Exp $"
	.globl	screens
	.bss
	.align 32
	.type	screens, @object
	.size	screens, 40
screens:
	.zero	40
	.globl	dirtybox
	.align 16
	.type	dirtybox, @object
	.size	dirtybox, 16
dirtybox:
	.zero	16
	.globl	gammatable
	.data
	.align 32
	.type	gammatable, @object
	.size	gammatable, 1280
gammatable:
	.ascii	"\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022"
	.ascii	"\023\024\025\026\027\030\031\032\033\034\035\036\037 !\"#$%&"
	.ascii	"'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`a"
	.ascii	"bcdefghijklmnopqrstuvwxyz{|}~\177\200\200\201\202\203\204\205"
	.ascii	"\206\207\210\211\212\213\214\215\216\217\220\221\222\223\224"
	.ascii	"\225\226\227\230\231\232\233\234\235\236\237\240\241\242\243"
	.ascii	"\244\245\246\247\250\251\252\253\254\255\256\257\260\261\262"
	.ascii	"\263\264\265\266\267\270\271\272\273\274\275\276\277\300\301"
	.ascii	"\302\303\304\305\306\307\310\311\312\313\314\315\316\317\320"
	.ascii	"\321\322\323\324\325\326\327\330\331\332\333\334\335\336\337"
	.ascii	"\340\341\342\343\344\345\346\347\350\351\352\353\354\355\356"
	.ascii	"\357\360\361\362\363\364\365\366\367\370\371\372\373\374\375"
	.ascii	"\376\377"
	.ascii	"\002\004\005\007\b\n\013\f\016\017\020\022\023\024\025\027\030"
	.ascii	"\031\032\033\035\036\037 !\"$%&'()*,-./012346789:;<=>?@ABCEF"
	.ascii	"GHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\177"
	.ascii	"\200\201\201\202\203\204\205\206\207\210\211\212\213\214\215"
	.ascii	"\216\217\220\221\222\223\224\224\225\226\227\230\231\232\233"
	.ascii	"\234\235\236\237\240\241\242\243\243\244\245\246\247\250\251"
	.ascii	"\252\253\254\255\256\257\257\260\261\262\263\264\265\266\267"
	.ascii	"\270\271\272\272\273\274\275\276\277\300\301\302\303\304\304"
	.ascii	"\305\306\307\310\311\312\313\314\315\315\316\317\320\321\322"
	.ascii	"\323\324\325\326\326\327\330\331\332\333\334\335\336\336\337"
	.ascii	"\340\341\342\343\344\345\346\346\347\350\351\352\353\354\355"
	.ascii	"\355\356\357\360\361\362\363\364\365\365\366\367\370\371\372"
	.ascii	"\373\374\374\375\376\377"
	.ascii	"\004\007\t\013\r\017\021\023\025\026\030\032\033\035\036 !#$"
	.ascii	"&'(*+-./02346789;<=>?ABCDEFHIJKLMNOPRSTUVWXYZ[\\]^_`abdefghi"
	.ascii	"jklmnopqrrstuvwxyz{|}~\177\200\201\202\203\204\205\205\206\207"
	.ascii	"\210\211\212\213\214\215\216\217\220\220\221\222\223\224\225"
	.ascii	"\226\227\230\231\231\232\233\234\235\236\237\240\240\241\242"
	.ascii	"\243\244\245\246\246\247\250\251\252\253\254\254\255\256\257"
	.ascii	"\260\261\262\262\263\264\265\266\267\267\270\271\272\273\274"
	.ascii	"\274\275\276\277\300\301\301\302\303\304\305\305\306\307\310"
	.ascii	"\311\311\312\313\314\315\316\316\317\320\321\322\322\323\324"
	.ascii	"\325\325\326\327\330\331\331\332\333\334\335\335\336\337\340"
	.ascii	"\340\341\342\343\344\344\345\346\347\347\350\351\352\353\353"
	.ascii	"\354\355\356\356\357\360\361\361\362\363\364\364\365\366\367"
	.ascii	"\367\370\371\372\373\373\374\375\376\376\377"
	.ascii	"\b\f\020\023\026\030\033\035\037\"$&()+-/124579:<=?@ACDFGHJK"
	.ascii	"LMOPQRTUVWXZ[\\]^_`bcdefghijklmnopqrstuvwxyz{|}~\177\200\201"
	.ascii	"\202\203\204\205\206\207\207\210\211\212\213\214\215\216\217"
	.ascii	"\217\220\221\222\223\224\225\226\226\227\230\231\232\233\233"
	.ascii	"\234\235\236\237\240\240\241\242\243\244\245\245\246\247\250"
	.ascii	"\251\251\252\253\254\255\255\256\257\260\260\261\262\263\264"
	.ascii	"\264\265\266\267\267\270\271\272\272\273\274\275\275\276\277"
	.ascii	"\300\300\301\302\303\303\304\305\305\306\307\310\310\311\312"
	.ascii	"\312\313\314\315\315\316\317\317\320\321\322\322\323\324\324"
	.ascii	"\325\326\326\327\330\330\331\332\333\333\334\335\335\336\337"
	.ascii	"\337\340\341\341\342\343\343\344\345\345\346\347\347\350\351"
	.ascii	"\351\352\353\353\354\355\355\356\356\357\360\360\361\362\362"
	.ascii	"\363\364\364\365\366\366\367\367\370\371\371\372\373\373\374"
	.ascii	"\375\375\376\376\377"
	.ascii	"\020\027\034 $'*-02579<>@BDEGIKLNPQSTVWYZ\\]^`abdefgijklmnpq"
	.ascii	"rstuvwxyz{|}~\200\200\201\202\203\204\205\206\207\210\211\212"
	.ascii	"\213\214\215\216\217\217\220\221\222\223\224\225\226\226\227"
	.ascii	"\230\231\232\233\233\234\235\236\237\237\240\241\242\243\243"
	.ascii	"\244\245\246\246\247\250\251\251\252\253\254\254\255\256\257"
	.ascii	"\257\260\261\261\262\263\264\264\265\266\266\267\270\270\271"
	.ascii	"\272\273\273\274\275\275\276\277\277\300\301\301\302\303\303"
	.ascii	"\304\304\305\306\306\307\310\310\311\312\312\313\313\314\315"
	.ascii	"\315\316\317\317\320\320\321\322\322\323\323\324\325\325\326"
	.ascii	"\326\327\330\330\331\331\332\333\333\334\334\335\335\336\337"
	.ascii	"\337\340\340\341\341\342\343\343\344\344\345\345\346\346\347"
	.ascii	"\350\350\351\351\352\352\353\353\354\354\355\355\356\357\357"
	.ascii	"\360\360\361\361\362\362\363\363\364\364\365\365\366\366\367"
	.ascii	"\367\370\370\371\371\372\372\373\373\374\374\375\376\376\377"
	.ascii	"\377"
	.globl	usegamma
	.bss
	.align 4
	.type	usegamma, @object
	.size	usegamma, 4
usegamma:
	.zero	4
	.text
	.globl	V_MarkRect
	.type	V_MarkRect, @function
V_MarkRect:
.LFB0:
	.file 1 "v_video.c"
	.loc 1 148 1
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
	movl	%edx, -12(%rbp)	# width, width
	movl	%ecx, -16(%rbp)	# height, height
# v_video.c:149:     M_AddToBox (dirtybox, x, y); 
	.loc 1 149 5
	movl	-8(%rbp), %edx	# y, tmp86
	movl	-4(%rbp), %eax	# x, tmp87
	movl	%eax, %esi	# tmp87,
	leaq	dirtybox(%rip), %rax	#, tmp88
	movq	%rax, %rdi	# tmp88,
	call	M_AddToBox@PLT	#
# v_video.c:150:     M_AddToBox (dirtybox, x+width-1, y+height-1); 
	.loc 1 150 39
	movl	-8(%rbp), %edx	# y, tmp89
	movl	-16(%rbp), %eax	# height, tmp90
	addl	%edx, %eax	# tmp89, _1
# v_video.c:150:     M_AddToBox (dirtybox, x+width-1, y+height-1); 
	.loc 1 150 5
	leal	-1(%rax), %edx	#, _2
# v_video.c:150:     M_AddToBox (dirtybox, x+width-1, y+height-1); 
	.loc 1 150 28
	movl	-4(%rbp), %ecx	# x, tmp91
	movl	-12(%rbp), %eax	# width, tmp92
	addl	%ecx, %eax	# tmp91, _3
# v_video.c:150:     M_AddToBox (dirtybox, x+width-1, y+height-1); 
	.loc 1 150 5
	subl	$1, %eax	#, _4
	movl	%eax, %esi	# _4,
	leaq	dirtybox(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	M_AddToBox@PLT	#
# v_video.c:151: } 
	.loc 1 151 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	V_MarkRect, .-V_MarkRect
	.section	.rodata
.LC0:
	.string	"Bad V_CopyRect"
	.text
	.globl	V_CopyRect
	.type	V_CopyRect, @function
V_CopyRect:
.LFB1:
	.loc 1 167 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# srcx, srcx
	movl	%esi, -24(%rbp)	# srcy, srcy
	movl	%edx, -28(%rbp)	# srcscrn, srcscrn
	movl	%ecx, -32(%rbp)	# width, width
	movl	%r8d, -36(%rbp)	# height, height
	movl	%r9d, -40(%rbp)	# destx, destx
# v_video.c:172:     if (srcx<0
	.loc 1 172 8
	cmpl	$0, -20(%rbp)	#, srcx
	js	.L3	#,
# v_video.c:173: 	||srcx+width >SCREENWIDTH
	.loc 1 173 8
	movl	-20(%rbp), %edx	# srcx, tmp99
	movl	-32(%rbp), %eax	# width, tmp100
	addl	%edx, %eax	# tmp99, _1
# v_video.c:173: 	||srcx+width >SCREENWIDTH
	.loc 1 173 2
	cmpl	$320, %eax	#, _1
	jg	.L3	#,
# v_video.c:174: 	|| srcy<0
	.loc 1 174 2
	cmpl	$0, -24(%rbp)	#, srcy
	js	.L3	#,
# v_video.c:175: 	|| srcy+height>SCREENHEIGHT 
	.loc 1 175 9
	movl	-24(%rbp), %edx	# srcy, tmp101
	movl	-36(%rbp), %eax	# height, tmp102
	addl	%edx, %eax	# tmp101, _2
# v_video.c:175: 	|| srcy+height>SCREENHEIGHT 
	.loc 1 175 2
	cmpl	$200, %eax	#, _2
	jg	.L3	#,
# v_video.c:176: 	||destx<0||destx+width >SCREENWIDTH
	.loc 1 176 2
	cmpl	$0, -40(%rbp)	#, destx
	js	.L3	#,
# v_video.c:176: 	||destx<0||destx+width >SCREENWIDTH
	.loc 1 176 18 discriminator 1
	movl	-40(%rbp), %edx	# destx, tmp103
	movl	-32(%rbp), %eax	# width, tmp104
	addl	%edx, %eax	# tmp103, _3
# v_video.c:176: 	||destx<0||destx+width >SCREENWIDTH
	.loc 1 176 11 discriminator 1
	cmpl	$320, %eax	#, _3
	jg	.L3	#,
# v_video.c:177: 	|| desty<0
	.loc 1 177 2
	cmpl	$0, 16(%rbp)	#, desty
	js	.L3	#,
# v_video.c:178: 	|| desty+height>SCREENHEIGHT 
	.loc 1 178 10
	movl	16(%rbp), %edx	# desty, tmp105
	movl	-36(%rbp), %eax	# height, tmp106
	addl	%edx, %eax	# tmp105, _4
# v_video.c:178: 	|| desty+height>SCREENHEIGHT 
	.loc 1 178 2
	cmpl	$200, %eax	#, _4
	jg	.L3	#,
# v_video.c:179: 	|| (unsigned)srcscrn>4
	.loc 1 179 5
	movl	-28(%rbp), %eax	# srcscrn, srcscrn.0_5
# v_video.c:179: 	|| (unsigned)srcscrn>4
	.loc 1 179 2
	cmpl	$4, %eax	#, srcscrn.0_5
	ja	.L3	#,
# v_video.c:180: 	|| (unsigned)destscrn>4)
	.loc 1 180 5
	movl	24(%rbp), %eax	# destscrn, destscrn.1_6
# v_video.c:180: 	|| (unsigned)destscrn>4)
	.loc 1 180 2
	cmpl	$4, %eax	#, destscrn.1_6
	jbe	.L4	#,
.L3:
# v_video.c:182: 	I_Error ("Bad V_CopyRect");
	.loc 1 182 2
	leaq	.LC0(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L4:
# v_video.c:185:     V_MarkRect (destx, desty, width, height); 
	.loc 1 185 5
	movl	-36(%rbp), %ecx	# height, tmp108
	movl	-32(%rbp), %edx	# width, tmp109
	movl	16(%rbp), %esi	# desty, tmp110
	movl	-40(%rbp), %eax	# destx, tmp111
	movl	%eax, %edi	# tmp111,
	call	V_MarkRect	#
# v_video.c:187:     src = screens[srcscrn]+SCREENWIDTH*srcy+srcx; 
	.loc 1 187 18
	movl	-28(%rbp), %eax	# srcscrn, tmp113
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp114
	leaq	screens(%rip), %rax	#, tmp115
	movq	(%rdx,%rax), %rcx	# screens[srcscrn_29(D)], _7
# v_video.c:187:     src = screens[srcscrn]+SCREENWIDTH*srcy+srcx; 
	.loc 1 187 39
	movl	-24(%rbp), %edx	# srcy, tmp116
	movl	%edx, %eax	# tmp116, tmp117
	sall	$2, %eax	#, tmp117
	addl	%edx, %eax	# tmp116, tmp117
	sall	$6, %eax	#, tmp118
	movslq	%eax, %rdx	# _8, _9
# v_video.c:187:     src = screens[srcscrn]+SCREENWIDTH*srcy+srcx; 
	.loc 1 187 44
	movl	-20(%rbp), %eax	# srcx, tmp119
	cltq
	addq	%rdx, %rax	# _9, _11
# v_video.c:187:     src = screens[srcscrn]+SCREENWIDTH*srcy+srcx; 
	.loc 1 187 9
	addq	%rcx, %rax	# _7, tmp120
	movq	%rax, -16(%rbp)	# tmp120, src
# v_video.c:188:     dest = screens[destscrn]+SCREENWIDTH*desty+destx; 
	.loc 1 188 19
	movl	24(%rbp), %eax	# destscrn, tmp122
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp123
	leaq	screens(%rip), %rax	#, tmp124
	movq	(%rdx,%rax), %rcx	# screens[destscrn_30(D)], _12
# v_video.c:188:     dest = screens[destscrn]+SCREENWIDTH*desty+destx; 
	.loc 1 188 41
	movl	16(%rbp), %edx	# desty, tmp125
	movl	%edx, %eax	# tmp125, tmp126
	sall	$2, %eax	#, tmp126
	addl	%edx, %eax	# tmp125, tmp126
	sall	$6, %eax	#, tmp127
	movslq	%eax, %rdx	# _13, _14
# v_video.c:188:     dest = screens[destscrn]+SCREENWIDTH*desty+destx; 
	.loc 1 188 47
	movl	-40(%rbp), %eax	# destx, tmp128
	cltq
	addq	%rdx, %rax	# _14, _16
# v_video.c:188:     dest = screens[destscrn]+SCREENWIDTH*desty+destx; 
	.loc 1 188 10
	addq	%rcx, %rax	# _12, tmp129
	movq	%rax, -8(%rbp)	# tmp129, dest
# v_video.c:190:     for ( ; height>0 ; height--) 
	.loc 1 190 5
	jmp	.L5	#
.L6:
# v_video.c:192: 	memcpy (dest, src, width); 
	.loc 1 192 2
	movl	-32(%rbp), %eax	# width, tmp130
	movslq	%eax, %rdx	# tmp130, _17
	movq	-16(%rbp), %rcx	# src, tmp131
	movq	-8(%rbp), %rax	# dest, tmp132
	movq	%rcx, %rsi	# tmp131,
	movq	%rax, %rdi	# tmp132,
	call	memcpy@PLT	#
# v_video.c:193: 	src += SCREENWIDTH; 
	.loc 1 193 6
	addq	$320, -16(%rbp)	#, src
# v_video.c:194: 	dest += SCREENWIDTH; 
	.loc 1 194 7
	addq	$320, -8(%rbp)	#, dest
# v_video.c:190:     for ( ; height>0 ; height--) 
	.loc 1 190 30 discriminator 2
	subl	$1, -36(%rbp)	#, height
.L5:
# v_video.c:190:     for ( ; height>0 ; height--) 
	.loc 1 190 19 discriminator 1
	cmpl	$0, -36(%rbp)	#, height
	jg	.L6	#,
# v_video.c:196: } 
	.loc 1 196 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	V_CopyRect, .-V_CopyRect
	.section	.rodata
.LC1:
	.string	"Patch at %d,%d exceeds LFB\n"
	.align 8
.LC2:
	.string	"V_DrawPatch: bad patch (ignored)\n"
	.text
	.globl	V_DrawPatch
	.type	V_DrawPatch, @function
V_DrawPatch:
.LFB2:
	.loc 1 209 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movl	%edi, -52(%rbp)	# x, x
	movl	%esi, -56(%rbp)	# y, y
	movl	%edx, -60(%rbp)	# scrn, scrn
	movq	%rcx, -72(%rbp)	# patch, patch
# v_video.c:219:     y -= SHORT(patch->topoffset); 
	.loc 1 219 10
	movq	-72(%rbp), %rax	# patch, tmp119
	movzwl	6(%rax), %eax	# patch_51(D)->topoffset, _1
	cwtl
# v_video.c:219:     y -= SHORT(patch->topoffset); 
	.loc 1 219 7
	subl	%eax, -56(%rbp)	# _2, y
# v_video.c:220:     x -= SHORT(patch->leftoffset); 
	.loc 1 220 10
	movq	-72(%rbp), %rax	# patch, tmp120
	movzwl	4(%rax), %eax	# patch_51(D)->leftoffset, _3
	cwtl
# v_video.c:220:     x -= SHORT(patch->leftoffset); 
	.loc 1 220 7
	subl	%eax, -52(%rbp)	# _4, x
# v_video.c:222:     if (x<0
	.loc 1 222 8
	cmpl	$0, -52(%rbp)	#, x
	js	.L8	#,
# v_video.c:223: 	||x+SHORT(patch->width) >SCREENWIDTH
	.loc 1 223 6
	movq	-72(%rbp), %rax	# patch, tmp121
	movzwl	(%rax), %eax	# patch_51(D)->width, _5
	movswl	%ax, %edx	# _5, _6
# v_video.c:223: 	||x+SHORT(patch->width) >SCREENWIDTH
	.loc 1 223 5
	movl	-52(%rbp), %eax	# x, tmp122
	addl	%edx, %eax	# _6, _7
# v_video.c:223: 	||x+SHORT(patch->width) >SCREENWIDTH
	.loc 1 223 2
	cmpl	$320, %eax	#, _7
	jg	.L8	#,
# v_video.c:224: 	|| y<0
	.loc 1 224 2
	cmpl	$0, -56(%rbp)	#, y
	js	.L8	#,
# v_video.c:225: 	|| y+SHORT(patch->height)>SCREENHEIGHT 
	.loc 1 225 7
	movq	-72(%rbp), %rax	# patch, tmp123
	movzwl	2(%rax), %eax	# patch_51(D)->height, _8
	movswl	%ax, %edx	# _8, _9
# v_video.c:225: 	|| y+SHORT(patch->height)>SCREENHEIGHT 
	.loc 1 225 6
	movl	-56(%rbp), %eax	# y, tmp124
	addl	%edx, %eax	# _9, _10
# v_video.c:225: 	|| y+SHORT(patch->height)>SCREENHEIGHT 
	.loc 1 225 2
	cmpl	$200, %eax	#, _10
	jg	.L8	#,
# v_video.c:226: 	|| (unsigned)scrn>4)
	.loc 1 226 5
	movl	-60(%rbp), %eax	# scrn, scrn.2_11
# v_video.c:226: 	|| (unsigned)scrn>4)
	.loc 1 226 2
	cmpl	$4, %eax	#, scrn.2_11
	jbe	.L9	#,
.L8:
# v_video.c:228:       fprintf( stderr, "Patch at %d,%d exceeds LFB\n", x,y );
	.loc 1 228 7
	movq	stderr(%rip), %rax	# stderr, stderr.3_12
	movl	-56(%rbp), %ecx	# y, tmp125
	movl	-52(%rbp), %edx	# x, tmp126
	leaq	.LC1(%rip), %rsi	#, tmp127
	movq	%rax, %rdi	# stderr.3_12,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
# v_video.c:230:       fprintf( stderr, "V_DrawPatch: bad patch (ignored)\n");
	.loc 1 230 7
	movq	stderr(%rip), %rax	# stderr, stderr.4_13
	movq	%rax, %rcx	# stderr.4_13,
	movl	$33, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC2(%rip), %rax	#, tmp128
	movq	%rax, %rdi	# tmp128,
	call	fwrite@PLT	#
# v_video.c:231:       return;
	.loc 1 231 7
	jmp	.L7	#
.L9:
# v_video.c:235:     if (!scrn)
	.loc 1 235 8
	cmpl	$0, -60(%rbp)	#, scrn
	jne	.L11	#,
# v_video.c:236: 	V_MarkRect (x, y, SHORT(patch->width), SHORT(patch->height)); 
	.loc 1 236 41
	movq	-72(%rbp), %rax	# patch, tmp129
	movzwl	2(%rax), %eax	# patch_51(D)->height, _14
# v_video.c:236: 	V_MarkRect (x, y, SHORT(patch->width), SHORT(patch->height)); 
	.loc 1 236 2
	movswl	%ax, %ecx	# _14, _15
# v_video.c:236: 	V_MarkRect (x, y, SHORT(patch->width), SHORT(patch->height)); 
	.loc 1 236 20
	movq	-72(%rbp), %rax	# patch, tmp130
	movzwl	(%rax), %eax	# patch_51(D)->width, _16
# v_video.c:236: 	V_MarkRect (x, y, SHORT(patch->width), SHORT(patch->height)); 
	.loc 1 236 2
	movswl	%ax, %edx	# _16, _17
	movl	-56(%rbp), %esi	# y, tmp131
	movl	-52(%rbp), %eax	# x, tmp132
	movl	%eax, %edi	# tmp132,
	call	V_MarkRect	#
.L11:
# v_video.c:238:     col = 0; 
	.loc 1 238 9
	movl	$0, -40(%rbp)	#, col
# v_video.c:239:     desttop = screens[scrn]+y*SCREENWIDTH+x; 
	.loc 1 239 22
	movl	-60(%rbp), %eax	# scrn, tmp134
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp135
	leaq	screens(%rip), %rax	#, tmp136
	movq	(%rdx,%rax), %rcx	# screens[scrn_56(D)], _18
# v_video.c:239:     desttop = screens[scrn]+y*SCREENWIDTH+x; 
	.loc 1 239 30
	movl	-56(%rbp), %edx	# y, tmp137
	movl	%edx, %eax	# tmp137, tmp138
	sall	$2, %eax	#, tmp138
	addl	%edx, %eax	# tmp137, tmp138
	sall	$6, %eax	#, tmp139
	movslq	%eax, %rdx	# _19, _20
# v_video.c:239:     desttop = screens[scrn]+y*SCREENWIDTH+x; 
	.loc 1 239 42
	movl	-52(%rbp), %eax	# x, tmp140
	cltq
	addq	%rdx, %rax	# _20, _22
# v_video.c:239:     desttop = screens[scrn]+y*SCREENWIDTH+x; 
	.loc 1 239 13
	addq	%rcx, %rax	# _18, tmp141
	movq	%rax, -24(%rbp)	# tmp141, desttop
# v_video.c:241:     w = SHORT(patch->width); 
	.loc 1 241 9
	movq	-72(%rbp), %rax	# patch, tmp142
	movzwl	(%rax), %eax	# patch_51(D)->width, _23
# v_video.c:241:     w = SHORT(patch->width); 
	.loc 1 241 7
	cwtl
	movl	%eax, -36(%rbp)	# tmp143, w
# v_video.c:243:     for ( ; col<w ; x++, col++, desttop++)
	.loc 1 243 5
	jmp	.L12	#
.L17:
# v_video.c:245: 	column = (column_t *)((byte *)patch + LONG(patch->columnofs[col])); 
	.loc 1 245 40
	movq	-72(%rbp), %rax	# patch, tmp144
	movl	-40(%rbp), %edx	# col, tmp146
	movslq	%edx, %rdx	# tmp146, tmp145
	movl	8(%rax,%rdx,4), %eax	# patch_51(D)->columnofs[col_40], _24
	movslq	%eax, %rdx	# _24, _25
# v_video.c:245: 	column = (column_t *)((byte *)patch + LONG(patch->columnofs[col])); 
	.loc 1 245 9
	movq	-72(%rbp), %rax	# patch, tmp150
	addq	%rdx, %rax	# _25, tmp149
	movq	%rax, -32(%rbp)	# tmp149, column
# v_video.c:248: 	while (column->topdelta != 0xff ) 
	.loc 1 248 8
	jmp	.L13	#
.L16:
# v_video.c:250: 	    source = (byte *)column + 3; 
	.loc 1 250 13
	movq	-32(%rbp), %rax	# column, tmp154
	addq	$3, %rax	#, tmp153
	movq	%rax, -8(%rbp)	# tmp153, source
# v_video.c:251: 	    dest = desttop + column->topdelta*SCREENWIDTH; 
	.loc 1 251 29
	movq	-32(%rbp), %rax	# column, tmp155
	movzbl	(%rax), %eax	# column_41->topdelta, _26
	movzbl	%al, %edx	# _26, _27
# v_video.c:251: 	    dest = desttop + column->topdelta*SCREENWIDTH; 
	.loc 1 251 39
	movl	%edx, %eax	# _27, tmp156
	sall	$2, %eax	#, tmp156
	addl	%edx, %eax	# _27, tmp156
	sall	$6, %eax	#, tmp157
	movslq	%eax, %rdx	# _28, _29
# v_video.c:251: 	    dest = desttop + column->topdelta*SCREENWIDTH; 
	.loc 1 251 11
	movq	-24(%rbp), %rax	# desttop, tmp161
	addq	%rdx, %rax	# _29, tmp160
	movq	%rax, -16(%rbp)	# tmp160, dest
# v_video.c:252: 	    count = column->length; 
	.loc 1 252 20
	movq	-32(%rbp), %rax	# column, tmp162
	movzbl	1(%rax), %eax	# column_41->length, _30
# v_video.c:252: 	    count = column->length; 
	.loc 1 252 12
	movzbl	%al, %eax	# _30, tmp163
	movl	%eax, -44(%rbp)	# tmp163, count
# v_video.c:254: 	    while (count--) 
	.loc 1 254 12
	jmp	.L14	#
.L15:
# v_video.c:256: 		*dest = *source++; 
	.loc 1 256 18
	movq	-8(%rbp), %rax	# source, source.5_31
	leaq	1(%rax), %rdx	#, tmp164
	movq	%rdx, -8(%rbp)	# tmp164, source
# v_video.c:256: 		*dest = *source++; 
	.loc 1 256 11
	movzbl	(%rax), %edx	# *source.5_31, _32
# v_video.c:256: 		*dest = *source++; 
	.loc 1 256 9
	movq	-16(%rbp), %rax	# dest, tmp165
	movb	%dl, (%rax)	# _32, *dest_43
# v_video.c:257: 		dest += SCREENWIDTH; 
	.loc 1 257 8
	addq	$320, -16(%rbp)	#, dest
.L14:
# v_video.c:254: 	    while (count--) 
	.loc 1 254 18
	movl	-44(%rbp), %eax	# count, count.6_33
	leal	-1(%rax), %edx	#, tmp166
	movl	%edx, -44(%rbp)	# tmp166, count
# v_video.c:254: 	    while (count--) 
	.loc 1 254 13
	testl	%eax, %eax	# count.6_33
	jne	.L15	#,
# v_video.c:259: 	    column = (column_t *)(  (byte *)column + column->length 
	.loc 1 259 53
	movq	-32(%rbp), %rax	# column, tmp167
	movzbl	1(%rax), %eax	# column_41->length, _34
	movzbl	%al, %eax	# _34, _35
# v_video.c:260: 				    + 4 ); 
	.loc 1 260 9
	addq	$4, %rax	#, _36
# v_video.c:259: 	    column = (column_t *)(  (byte *)column + column->length 
	.loc 1 259 13
	addq	%rax, -32(%rbp)	# _36, column
.L13:
# v_video.c:248: 	while (column->topdelta != 0xff ) 
	.loc 1 248 15
	movq	-32(%rbp), %rax	# column, tmp168
	movzbl	(%rax), %eax	# column_41->topdelta, _37
# v_video.c:248: 	while (column->topdelta != 0xff ) 
	.loc 1 248 26
	cmpb	$-1, %al	#, _37
	jne	.L16	#,
# v_video.c:243:     for ( ; col<w ; x++, col++, desttop++)
	.loc 1 243 22
	addl	$1, -52(%rbp)	#, x
# v_video.c:243:     for ( ; col<w ; x++, col++, desttop++)
	.loc 1 243 29
	addl	$1, -40(%rbp)	#, col
# v_video.c:243:     for ( ; col<w ; x++, col++, desttop++)
	.loc 1 243 40
	addq	$1, -24(%rbp)	#, desttop
.L12:
# v_video.c:243:     for ( ; col<w ; x++, col++, desttop++)
	.loc 1 243 16 discriminator 1
	movl	-40(%rbp), %eax	# col, tmp169
	cmpl	-36(%rbp), %eax	# w, tmp169
	jl	.L17	#,
.L7:
# v_video.c:263: } 
	.loc 1 263 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	V_DrawPatch, .-V_DrawPatch
	.section	.rodata
	.align 8
.LC3:
	.string	"Patch origin %d,%d exceeds LFB\n"
	.align 8
.LC4:
	.string	"Bad V_DrawPatch in V_DrawPatchFlipped"
	.text
	.globl	V_DrawPatchFlipped
	.type	V_DrawPatchFlipped, @function
V_DrawPatchFlipped:
.LFB3:
	.loc 1 276 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movl	%edi, -52(%rbp)	# x, x
	movl	%esi, -56(%rbp)	# y, y
	movl	%edx, -60(%rbp)	# scrn, scrn
	movq	%rcx, -72(%rbp)	# patch, patch
# v_video.c:286:     y -= SHORT(patch->topoffset); 
	.loc 1 286 10
	movq	-72(%rbp), %rax	# patch, tmp120
	movzwl	6(%rax), %eax	# patch_52(D)->topoffset, _1
	cwtl
# v_video.c:286:     y -= SHORT(patch->topoffset); 
	.loc 1 286 7
	subl	%eax, -56(%rbp)	# _2, y
# v_video.c:287:     x -= SHORT(patch->leftoffset); 
	.loc 1 287 10
	movq	-72(%rbp), %rax	# patch, tmp121
	movzwl	4(%rax), %eax	# patch_52(D)->leftoffset, _3
	cwtl
# v_video.c:287:     x -= SHORT(patch->leftoffset); 
	.loc 1 287 7
	subl	%eax, -52(%rbp)	# _4, x
# v_video.c:289:     if (x<0
	.loc 1 289 8
	cmpl	$0, -52(%rbp)	#, x
	js	.L19	#,
# v_video.c:290: 	||x+SHORT(patch->width) >SCREENWIDTH
	.loc 1 290 6
	movq	-72(%rbp), %rax	# patch, tmp122
	movzwl	(%rax), %eax	# patch_52(D)->width, _5
	movswl	%ax, %edx	# _5, _6
# v_video.c:290: 	||x+SHORT(patch->width) >SCREENWIDTH
	.loc 1 290 5
	movl	-52(%rbp), %eax	# x, tmp123
	addl	%edx, %eax	# _6, _7
# v_video.c:290: 	||x+SHORT(patch->width) >SCREENWIDTH
	.loc 1 290 2
	cmpl	$320, %eax	#, _7
	jg	.L19	#,
# v_video.c:291: 	|| y<0
	.loc 1 291 2
	cmpl	$0, -56(%rbp)	#, y
	js	.L19	#,
# v_video.c:292: 	|| y+SHORT(patch->height)>SCREENHEIGHT 
	.loc 1 292 7
	movq	-72(%rbp), %rax	# patch, tmp124
	movzwl	2(%rax), %eax	# patch_52(D)->height, _8
	movswl	%ax, %edx	# _8, _9
# v_video.c:292: 	|| y+SHORT(patch->height)>SCREENHEIGHT 
	.loc 1 292 6
	movl	-56(%rbp), %eax	# y, tmp125
	addl	%edx, %eax	# _9, _10
# v_video.c:292: 	|| y+SHORT(patch->height)>SCREENHEIGHT 
	.loc 1 292 2
	cmpl	$200, %eax	#, _10
	jg	.L19	#,
# v_video.c:293: 	|| (unsigned)scrn>4)
	.loc 1 293 5
	movl	-60(%rbp), %eax	# scrn, scrn.7_11
# v_video.c:293: 	|| (unsigned)scrn>4)
	.loc 1 293 2
	cmpl	$4, %eax	#, scrn.7_11
	jbe	.L20	#,
.L19:
# v_video.c:295:       fprintf( stderr, "Patch origin %d,%d exceeds LFB\n", x,y );
	.loc 1 295 7
	movq	stderr(%rip), %rax	# stderr, stderr.8_12
	movl	-56(%rbp), %ecx	# y, tmp126
	movl	-52(%rbp), %edx	# x, tmp127
	leaq	.LC3(%rip), %rsi	#, tmp128
	movq	%rax, %rdi	# stderr.8_12,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
# v_video.c:296:       I_Error ("Bad V_DrawPatch in V_DrawPatchFlipped");
	.loc 1 296 7
	leaq	.LC4(%rip), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L20:
# v_video.c:300:     if (!scrn)
	.loc 1 300 8
	cmpl	$0, -60(%rbp)	#, scrn
	jne	.L21	#,
# v_video.c:301: 	V_MarkRect (x, y, SHORT(patch->width), SHORT(patch->height)); 
	.loc 1 301 41
	movq	-72(%rbp), %rax	# patch, tmp130
	movzwl	2(%rax), %eax	# patch_52(D)->height, _13
# v_video.c:301: 	V_MarkRect (x, y, SHORT(patch->width), SHORT(patch->height)); 
	.loc 1 301 2
	movswl	%ax, %ecx	# _13, _14
# v_video.c:301: 	V_MarkRect (x, y, SHORT(patch->width), SHORT(patch->height)); 
	.loc 1 301 20
	movq	-72(%rbp), %rax	# patch, tmp131
	movzwl	(%rax), %eax	# patch_52(D)->width, _15
# v_video.c:301: 	V_MarkRect (x, y, SHORT(patch->width), SHORT(patch->height)); 
	.loc 1 301 2
	movswl	%ax, %edx	# _15, _16
	movl	-56(%rbp), %esi	# y, tmp132
	movl	-52(%rbp), %eax	# x, tmp133
	movl	%eax, %edi	# tmp133,
	call	V_MarkRect	#
.L21:
# v_video.c:303:     col = 0; 
	.loc 1 303 9
	movl	$0, -40(%rbp)	#, col
# v_video.c:304:     desttop = screens[scrn]+y*SCREENWIDTH+x; 
	.loc 1 304 22
	movl	-60(%rbp), %eax	# scrn, tmp135
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp136
	leaq	screens(%rip), %rax	#, tmp137
	movq	(%rdx,%rax), %rcx	# screens[scrn_57(D)], _17
# v_video.c:304:     desttop = screens[scrn]+y*SCREENWIDTH+x; 
	.loc 1 304 30
	movl	-56(%rbp), %edx	# y, tmp138
	movl	%edx, %eax	# tmp138, tmp139
	sall	$2, %eax	#, tmp139
	addl	%edx, %eax	# tmp138, tmp139
	sall	$6, %eax	#, tmp140
	movslq	%eax, %rdx	# _18, _19
# v_video.c:304:     desttop = screens[scrn]+y*SCREENWIDTH+x; 
	.loc 1 304 42
	movl	-52(%rbp), %eax	# x, tmp141
	cltq
	addq	%rdx, %rax	# _19, _21
# v_video.c:304:     desttop = screens[scrn]+y*SCREENWIDTH+x; 
	.loc 1 304 13
	addq	%rcx, %rax	# _17, tmp142
	movq	%rax, -24(%rbp)	# tmp142, desttop
# v_video.c:306:     w = SHORT(patch->width); 
	.loc 1 306 9
	movq	-72(%rbp), %rax	# patch, tmp143
	movzwl	(%rax), %eax	# patch_52(D)->width, _22
# v_video.c:306:     w = SHORT(patch->width); 
	.loc 1 306 7
	cwtl
	movl	%eax, -36(%rbp)	# tmp144, w
# v_video.c:308:     for ( ; col<w ; x++, col++, desttop++) 
	.loc 1 308 5
	jmp	.L22	#
.L27:
# v_video.c:310: 	column = (column_t *)((byte *)patch + LONG(patch->columnofs[w-1-col])); 
	.loc 1 310 40
	movl	-36(%rbp), %eax	# w, tmp145
	subl	$1, %eax	#, _23
	subl	-40(%rbp), %eax	# col, _23
	movl	%eax, %edx	# _23, _24
	movq	-72(%rbp), %rax	# patch, tmp146
	movslq	%edx, %rdx	# _24, tmp147
	movl	8(%rax,%rdx,4), %eax	# patch_52(D)->columnofs[_24], _25
	movslq	%eax, %rdx	# _25, _26
# v_video.c:310: 	column = (column_t *)((byte *)patch + LONG(patch->columnofs[w-1-col])); 
	.loc 1 310 9
	movq	-72(%rbp), %rax	# patch, tmp151
	addq	%rdx, %rax	# _26, tmp150
	movq	%rax, -32(%rbp)	# tmp150, column
# v_video.c:313: 	while (column->topdelta != 0xff ) 
	.loc 1 313 8
	jmp	.L23	#
.L26:
# v_video.c:315: 	    source = (byte *)column + 3; 
	.loc 1 315 13
	movq	-32(%rbp), %rax	# column, tmp155
	addq	$3, %rax	#, tmp154
	movq	%rax, -8(%rbp)	# tmp154, source
# v_video.c:316: 	    dest = desttop + column->topdelta*SCREENWIDTH; 
	.loc 1 316 29
	movq	-32(%rbp), %rax	# column, tmp156
	movzbl	(%rax), %eax	# column_42->topdelta, _27
	movzbl	%al, %edx	# _27, _28
# v_video.c:316: 	    dest = desttop + column->topdelta*SCREENWIDTH; 
	.loc 1 316 39
	movl	%edx, %eax	# _28, tmp157
	sall	$2, %eax	#, tmp157
	addl	%edx, %eax	# _28, tmp157
	sall	$6, %eax	#, tmp158
	movslq	%eax, %rdx	# _29, _30
# v_video.c:316: 	    dest = desttop + column->topdelta*SCREENWIDTH; 
	.loc 1 316 11
	movq	-24(%rbp), %rax	# desttop, tmp162
	addq	%rdx, %rax	# _30, tmp161
	movq	%rax, -16(%rbp)	# tmp161, dest
# v_video.c:317: 	    count = column->length; 
	.loc 1 317 20
	movq	-32(%rbp), %rax	# column, tmp163
	movzbl	1(%rax), %eax	# column_42->length, _31
# v_video.c:317: 	    count = column->length; 
	.loc 1 317 12
	movzbl	%al, %eax	# _31, tmp164
	movl	%eax, -44(%rbp)	# tmp164, count
# v_video.c:319: 	    while (count--) 
	.loc 1 319 12
	jmp	.L24	#
.L25:
# v_video.c:321: 		*dest = *source++; 
	.loc 1 321 18
	movq	-8(%rbp), %rax	# source, source.9_32
	leaq	1(%rax), %rdx	#, tmp165
	movq	%rdx, -8(%rbp)	# tmp165, source
# v_video.c:321: 		*dest = *source++; 
	.loc 1 321 11
	movzbl	(%rax), %edx	# *source.9_32, _33
# v_video.c:321: 		*dest = *source++; 
	.loc 1 321 9
	movq	-16(%rbp), %rax	# dest, tmp166
	movb	%dl, (%rax)	# _33, *dest_44
# v_video.c:322: 		dest += SCREENWIDTH; 
	.loc 1 322 8
	addq	$320, -16(%rbp)	#, dest
.L24:
# v_video.c:319: 	    while (count--) 
	.loc 1 319 18
	movl	-44(%rbp), %eax	# count, count.10_34
	leal	-1(%rax), %edx	#, tmp167
	movl	%edx, -44(%rbp)	# tmp167, count
# v_video.c:319: 	    while (count--) 
	.loc 1 319 13
	testl	%eax, %eax	# count.10_34
	jne	.L25	#,
# v_video.c:324: 	    column = (column_t *)(  (byte *)column + column->length 
	.loc 1 324 53
	movq	-32(%rbp), %rax	# column, tmp168
	movzbl	1(%rax), %eax	# column_42->length, _35
	movzbl	%al, %eax	# _35, _36
# v_video.c:325: 				    + 4 ); 
	.loc 1 325 9
	addq	$4, %rax	#, _37
# v_video.c:324: 	    column = (column_t *)(  (byte *)column + column->length 
	.loc 1 324 13
	addq	%rax, -32(%rbp)	# _37, column
.L23:
# v_video.c:313: 	while (column->topdelta != 0xff ) 
	.loc 1 313 15
	movq	-32(%rbp), %rax	# column, tmp169
	movzbl	(%rax), %eax	# column_42->topdelta, _38
# v_video.c:313: 	while (column->topdelta != 0xff ) 
	.loc 1 313 26
	cmpb	$-1, %al	#, _38
	jne	.L26	#,
# v_video.c:308:     for ( ; col<w ; x++, col++, desttop++) 
	.loc 1 308 22
	addl	$1, -52(%rbp)	#, x
# v_video.c:308:     for ( ; col<w ; x++, col++, desttop++) 
	.loc 1 308 29
	addl	$1, -40(%rbp)	#, col
# v_video.c:308:     for ( ; col<w ; x++, col++, desttop++) 
	.loc 1 308 40
	addq	$1, -24(%rbp)	#, desttop
.L22:
# v_video.c:308:     for ( ; col<w ; x++, col++, desttop++) 
	.loc 1 308 16 discriminator 1
	movl	-40(%rbp), %eax	# col, tmp170
	cmpl	-36(%rbp), %eax	# w, tmp170
	jl	.L27	#,
# v_video.c:328: } 
	.loc 1 328 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3:
	.size	V_DrawPatchFlipped, .-V_DrawPatchFlipped
	.globl	V_DrawPatchDirect
	.type	V_DrawPatchDirect, @function
V_DrawPatchDirect:
.LFB4:
	.loc 1 342 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -4(%rbp)	# x, x
	movl	%esi, -8(%rbp)	# y, y
	movl	%edx, -12(%rbp)	# scrn, scrn
	movq	%rcx, -24(%rbp)	# patch, patch
# v_video.c:343:     V_DrawPatch (x,y,scrn, patch); 
	.loc 1 343 5
	movq	-24(%rbp), %rcx	# patch, tmp82
	movl	-12(%rbp), %edx	# scrn, tmp83
	movl	-8(%rbp), %esi	# y, tmp84
	movl	-4(%rbp), %eax	# x, tmp85
	movl	%eax, %edi	# tmp85,
	call	V_DrawPatch	#
# v_video.c:396: } 
	.loc 1 396 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4:
	.size	V_DrawPatchDirect, .-V_DrawPatchDirect
	.section	.rodata
.LC5:
	.string	"Bad V_DrawBlock"
	.text
	.globl	V_DrawBlock
	.type	V_DrawBlock, @function
V_DrawBlock:
.LFB5:
	.loc 1 412 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# x, x
	movl	%esi, -24(%rbp)	# y, y
	movl	%edx, -28(%rbp)	# scrn, scrn
	movl	%ecx, -32(%rbp)	# width, width
	movl	%r8d, -36(%rbp)	# height, height
	movq	%r9, -48(%rbp)	# src, src
# v_video.c:416:     if (x<0
	.loc 1 416 8
	cmpl	$0, -20(%rbp)	#, x
	js	.L30	#,
# v_video.c:417: 	||x+width >SCREENWIDTH
	.loc 1 417 5
	movl	-20(%rbp), %edx	# x, tmp93
	movl	-32(%rbp), %eax	# width, tmp94
	addl	%edx, %eax	# tmp93, _1
# v_video.c:417: 	||x+width >SCREENWIDTH
	.loc 1 417 2
	cmpl	$320, %eax	#, _1
	jg	.L30	#,
# v_video.c:418: 	|| y<0
	.loc 1 418 2
	cmpl	$0, -24(%rbp)	#, y
	js	.L30	#,
# v_video.c:419: 	|| y+height>SCREENHEIGHT 
	.loc 1 419 6
	movl	-24(%rbp), %edx	# y, tmp95
	movl	-36(%rbp), %eax	# height, tmp96
	addl	%edx, %eax	# tmp95, _2
# v_video.c:419: 	|| y+height>SCREENHEIGHT 
	.loc 1 419 2
	cmpl	$200, %eax	#, _2
	jg	.L30	#,
# v_video.c:420: 	|| (unsigned)scrn>4 )
	.loc 1 420 5
	movl	-28(%rbp), %eax	# scrn, scrn.11_3
# v_video.c:420: 	|| (unsigned)scrn>4 )
	.loc 1 420 2
	cmpl	$4, %eax	#, scrn.11_3
	jbe	.L31	#,
.L30:
# v_video.c:422: 	I_Error ("Bad V_DrawBlock");
	.loc 1 422 2
	leaq	.LC5(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L31:
# v_video.c:426:     V_MarkRect (x, y, width, height); 
	.loc 1 426 5
	movl	-36(%rbp), %ecx	# height, tmp98
	movl	-32(%rbp), %edx	# width, tmp99
	movl	-24(%rbp), %esi	# y, tmp100
	movl	-20(%rbp), %eax	# x, tmp101
	movl	%eax, %edi	# tmp101,
	call	V_MarkRect	#
# v_video.c:428:     dest = screens[scrn] + y*SCREENWIDTH+x; 
	.loc 1 428 19
	movl	-28(%rbp), %eax	# scrn, tmp103
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp104
	leaq	screens(%rip), %rax	#, tmp105
	movq	(%rdx,%rax), %rcx	# screens[scrn_21(D)], _4
# v_video.c:428:     dest = screens[scrn] + y*SCREENWIDTH+x; 
	.loc 1 428 29
	movl	-24(%rbp), %edx	# y, tmp106
	movl	%edx, %eax	# tmp106, tmp107
	sall	$2, %eax	#, tmp107
	addl	%edx, %eax	# tmp106, tmp107
	sall	$6, %eax	#, tmp108
	movslq	%eax, %rdx	# _5, _6
# v_video.c:428:     dest = screens[scrn] + y*SCREENWIDTH+x; 
	.loc 1 428 41
	movl	-20(%rbp), %eax	# x, tmp109
	cltq
	addq	%rdx, %rax	# _6, _8
# v_video.c:428:     dest = screens[scrn] + y*SCREENWIDTH+x; 
	.loc 1 428 10
	addq	%rcx, %rax	# _4, tmp110
	movq	%rax, -8(%rbp)	# tmp110, dest
# v_video.c:430:     while (height--) 
	.loc 1 430 11
	jmp	.L32	#
.L33:
# v_video.c:432: 	memcpy (dest, src, width); 
	.loc 1 432 2
	movl	-32(%rbp), %eax	# width, tmp111
	movslq	%eax, %rdx	# tmp111, _9
	movq	-48(%rbp), %rcx	# src, tmp112
	movq	-8(%rbp), %rax	# dest, tmp113
	movq	%rcx, %rsi	# tmp112,
	movq	%rax, %rdi	# tmp113,
	call	memcpy@PLT	#
# v_video.c:433: 	src += width; 
	.loc 1 433 6
	movl	-32(%rbp), %eax	# width, tmp114
	cltq
	addq	%rax, -48(%rbp)	# _10, src
# v_video.c:434: 	dest += SCREENWIDTH; 
	.loc 1 434 7
	addq	$320, -8(%rbp)	#, dest
.L32:
# v_video.c:430:     while (height--) 
	.loc 1 430 18
	movl	-36(%rbp), %eax	# height, height.12_11
	leal	-1(%rax), %edx	#, tmp115
	movl	%edx, -36(%rbp)	# tmp115, height
# v_video.c:430:     while (height--) 
	.loc 1 430 12
	testl	%eax, %eax	# height.12_11
	jne	.L33	#,
# v_video.c:436: } 
	.loc 1 436 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5:
	.size	V_DrawBlock, .-V_DrawBlock
	.globl	V_GetBlock
	.type	V_GetBlock, @function
V_GetBlock:
.LFB6:
	.loc 1 452 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# x, x
	movl	%esi, -24(%rbp)	# y, y
	movl	%edx, -28(%rbp)	# scrn, scrn
	movl	%ecx, -32(%rbp)	# width, width
	movl	%r8d, -36(%rbp)	# height, height
	movq	%r9, -48(%rbp)	# dest, dest
# v_video.c:456:     if (x<0
	.loc 1 456 8
	cmpl	$0, -20(%rbp)	#, x
	js	.L35	#,
# v_video.c:457: 	||x+width >SCREENWIDTH
	.loc 1 457 5
	movl	-20(%rbp), %edx	# x, tmp93
	movl	-32(%rbp), %eax	# width, tmp94
	addl	%edx, %eax	# tmp93, _1
# v_video.c:457: 	||x+width >SCREENWIDTH
	.loc 1 457 2
	cmpl	$320, %eax	#, _1
	jg	.L35	#,
# v_video.c:458: 	|| y<0
	.loc 1 458 2
	cmpl	$0, -24(%rbp)	#, y
	js	.L35	#,
# v_video.c:459: 	|| y+height>SCREENHEIGHT 
	.loc 1 459 6
	movl	-24(%rbp), %edx	# y, tmp95
	movl	-36(%rbp), %eax	# height, tmp96
	addl	%edx, %eax	# tmp95, _2
# v_video.c:459: 	|| y+height>SCREENHEIGHT 
	.loc 1 459 2
	cmpl	$200, %eax	#, _2
	jg	.L35	#,
# v_video.c:460: 	|| (unsigned)scrn>4 )
	.loc 1 460 5
	movl	-28(%rbp), %eax	# scrn, scrn.13_3
# v_video.c:460: 	|| (unsigned)scrn>4 )
	.loc 1 460 2
	cmpl	$4, %eax	#, scrn.13_3
	jbe	.L36	#,
.L35:
# v_video.c:462: 	I_Error ("Bad V_DrawBlock");
	.loc 1 462 2
	leaq	.LC5(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L36:
# v_video.c:466:     src = screens[scrn] + y*SCREENWIDTH+x; 
	.loc 1 466 18
	movl	-28(%rbp), %eax	# scrn, tmp99
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp100
	leaq	screens(%rip), %rax	#, tmp101
	movq	(%rdx,%rax), %rcx	# screens[scrn_21(D)], _4
# v_video.c:466:     src = screens[scrn] + y*SCREENWIDTH+x; 
	.loc 1 466 28
	movl	-24(%rbp), %edx	# y, tmp102
	movl	%edx, %eax	# tmp102, tmp103
	sall	$2, %eax	#, tmp103
	addl	%edx, %eax	# tmp102, tmp103
	sall	$6, %eax	#, tmp104
	movslq	%eax, %rdx	# _5, _6
# v_video.c:466:     src = screens[scrn] + y*SCREENWIDTH+x; 
	.loc 1 466 40
	movl	-20(%rbp), %eax	# x, tmp105
	cltq
	addq	%rdx, %rax	# _6, _8
# v_video.c:466:     src = screens[scrn] + y*SCREENWIDTH+x; 
	.loc 1 466 9
	addq	%rcx, %rax	# _4, tmp106
	movq	%rax, -8(%rbp)	# tmp106, src
# v_video.c:468:     while (height--) 
	.loc 1 468 11
	jmp	.L37	#
.L38:
# v_video.c:470: 	memcpy (dest, src, width); 
	.loc 1 470 2
	movl	-32(%rbp), %eax	# width, tmp107
	movslq	%eax, %rdx	# tmp107, _9
	movq	-8(%rbp), %rcx	# src, tmp108
	movq	-48(%rbp), %rax	# dest, tmp109
	movq	%rcx, %rsi	# tmp108,
	movq	%rax, %rdi	# tmp109,
	call	memcpy@PLT	#
# v_video.c:471: 	src += SCREENWIDTH; 
	.loc 1 471 6
	addq	$320, -8(%rbp)	#, src
# v_video.c:472: 	dest += width; 
	.loc 1 472 7
	movl	-32(%rbp), %eax	# width, tmp110
	cltq
	addq	%rax, -48(%rbp)	# _10, dest
.L37:
# v_video.c:468:     while (height--) 
	.loc 1 468 18
	movl	-36(%rbp), %eax	# height, height.14_11
	leal	-1(%rax), %edx	#, tmp111
	movl	%edx, -36(%rbp)	# tmp111, height
# v_video.c:468:     while (height--) 
	.loc 1 468 12
	testl	%eax, %eax	# height.14_11
	jne	.L38	#,
# v_video.c:474: } 
	.loc 1 474 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	V_GetBlock, .-V_GetBlock
	.globl	V_Init
	.type	V_Init, @function
V_Init:
.LFB7:
	.loc 1 483 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# v_video.c:489:     base = I_AllocLow (SCREENWIDTH*SCREENHEIGHT*4);
	.loc 1 489 12
	movl	$256000, %edi	#,
	call	I_AllocLow@PLT	#
	movq	%rax, -8(%rbp)	# tmp85, base
# v_video.c:491:     for (i=0 ; i<4 ; i++)
	.loc 1 491 11
	movl	$0, -12(%rbp)	#, i
# v_video.c:491:     for (i=0 ; i<4 ; i++)
	.loc 1 491 5
	jmp	.L40	#
.L41:
# v_video.c:492: 	screens[i] = base + i*SCREENWIDTH*SCREENHEIGHT;
	.loc 1 492 35
	movl	-12(%rbp), %eax	# i, tmp86
	imull	$64000, %eax, %eax	#, tmp86, _1
	movslq	%eax, %rdx	# _1, _2
# v_video.c:492: 	screens[i] = base + i*SCREENWIDTH*SCREENHEIGHT;
	.loc 1 492 20
	movq	-8(%rbp), %rax	# base, tmp87
	leaq	(%rdx,%rax), %rcx	#, _3
# v_video.c:492: 	screens[i] = base + i*SCREENWIDTH*SCREENHEIGHT;
	.loc 1 492 13
	movl	-12(%rbp), %eax	# i, tmp89
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp90
	leaq	screens(%rip), %rax	#, tmp91
	movq	%rcx, (%rdx,%rax)	# _3, screens[i_4]
# v_video.c:491:     for (i=0 ; i<4 ; i++)
	.loc 1 491 23 discriminator 3
	addl	$1, -12(%rbp)	#, i
.L40:
# v_video.c:491:     for (i=0 ; i<4 ; i++)
	.loc 1 491 17 discriminator 1
	cmpl	$3, -12(%rbp)	#, i
	jle	.L41	#,
# v_video.c:493: }
	.loc 1 493 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	V_Init, .-V_Init
.Letext0:
	.file 2 "doomtype.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "m_fixed.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 8 "doomdef.h"
	.file 9 "info.h"
	.file 10 "r_defs.h"
	.file 11 "p_pspr.h"
	.file 12 "/usr/include/stdio.h"
	.file 13 "v_video.h"
	.file 14 "i_system.h"
	.file 15 "/usr/include/string.h"
	.file 16 "m_bbox.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x29e2
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x20
	.long	.LASF1371
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xb
	.long	0x51
	.long	0x3e
	.uleb128 0xa
	.long	0x43
	.byte	0x31
	.byte	0
	.uleb128 0x19
	.long	0x2e
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x19
	.long	0x4a
	.uleb128 0xc
	.long	.LASF1349
	.byte	0x1c
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x10
	.long	.LASF10
	.byte	0x2
	.byte	0x24
	.byte	0x17
	.long	0x7e
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.long	.LASF6
	.uleb128 0x21
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.long	.LASF7
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x10
	.long	.LASF11
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0xa1
	.uleb128 0x10
	.long	.LASF12
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0xa1
	.uleb128 0x22
	.byte	0x8
	.uleb128 0x4
	.long	0x4a
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.long	.LASF13
	.uleb128 0x7
	.byte	0x8
	.byte	0x4
	.long	.LASF14
	.uleb128 0x10
	.long	.LASF15
	.byte	0x4
	.byte	0x26
	.byte	0xd
	.long	0x8c
	.uleb128 0x4
	.long	0xd5
	.uleb128 0x10
	.long	.LASF16
	.byte	0x5
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x23
	.long	.LASF1372
	.byte	0xd8
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.long	0x25c
	.uleb128 0x3
	.long	.LASF17
	.byte	0x33
	.byte	0x7
	.long	0x8c
	.byte	0
	.uleb128 0x3
	.long	.LASF18
	.byte	0x36
	.byte	0x9
	.long	0xc2
	.byte	0x8
	.uleb128 0x3
	.long	.LASF19
	.byte	0x37
	.byte	0x9
	.long	0xc2
	.byte	0x10
	.uleb128 0x3
	.long	.LASF20
	.byte	0x38
	.byte	0x9
	.long	0xc2
	.byte	0x18
	.uleb128 0x3
	.long	.LASF21
	.byte	0x39
	.byte	0x9
	.long	0xc2
	.byte	0x20
	.uleb128 0x3
	.long	.LASF22
	.byte	0x3a
	.byte	0x9
	.long	0xc2
	.byte	0x28
	.uleb128 0x3
	.long	.LASF23
	.byte	0x3b
	.byte	0x9
	.long	0xc2
	.byte	0x30
	.uleb128 0x3
	.long	.LASF24
	.byte	0x3c
	.byte	0x9
	.long	0xc2
	.byte	0x38
	.uleb128 0x3
	.long	.LASF25
	.byte	0x3d
	.byte	0x9
	.long	0xc2
	.byte	0x40
	.uleb128 0x3
	.long	.LASF26
	.byte	0x40
	.byte	0x9
	.long	0xc2
	.byte	0x48
	.uleb128 0x3
	.long	.LASF27
	.byte	0x41
	.byte	0x9
	.long	0xc2
	.byte	0x50
	.uleb128 0x3
	.long	.LASF28
	.byte	0x42
	.byte	0x9
	.long	0xc2
	.byte	0x58
	.uleb128 0x3
	.long	.LASF29
	.byte	0x44
	.byte	0x16
	.long	0x275
	.byte	0x60
	.uleb128 0x3
	.long	.LASF30
	.byte	0x46
	.byte	0x14
	.long	0x27a
	.byte	0x68
	.uleb128 0x3
	.long	.LASF31
	.byte	0x48
	.byte	0x7
	.long	0x8c
	.byte	0x70
	.uleb128 0x3
	.long	.LASF32
	.byte	0x49
	.byte	0x7
	.long	0x8c
	.byte	0x74
	.uleb128 0x3
	.long	.LASF33
	.byte	0x4a
	.byte	0xb
	.long	0xa8
	.byte	0x78
	.uleb128 0x3
	.long	.LASF34
	.byte	0x4d
	.byte	0x12
	.long	0x93
	.byte	0x80
	.uleb128 0x3
	.long	.LASF35
	.byte	0x4e
	.byte	0xf
	.long	0x9a
	.byte	0x82
	.uleb128 0x3
	.long	.LASF36
	.byte	0x4f
	.byte	0x8
	.long	0x27f
	.byte	0x83
	.uleb128 0x3
	.long	.LASF37
	.byte	0x51
	.byte	0xf
	.long	0x28f
	.byte	0x88
	.uleb128 0x3
	.long	.LASF38
	.byte	0x59
	.byte	0xd
	.long	0xb4
	.byte	0x90
	.uleb128 0x3
	.long	.LASF39
	.byte	0x5b
	.byte	0x17
	.long	0x299
	.byte	0x98
	.uleb128 0x3
	.long	.LASF40
	.byte	0x5c
	.byte	0x19
	.long	0x2a3
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF41
	.byte	0x5d
	.byte	0x14
	.long	0x27a
	.byte	0xa8
	.uleb128 0x3
	.long	.LASF42
	.byte	0x5e
	.byte	0x9
	.long	0xc0
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF43
	.byte	0x5f
	.byte	0xa
	.long	0xe6
	.byte	0xb8
	.uleb128 0x3
	.long	.LASF44
	.byte	0x60
	.byte	0x7
	.long	0x8c
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF45
	.byte	0x62
	.byte	0x8
	.long	0x2a8
	.byte	0xc4
	.byte	0
	.uleb128 0x10
	.long	.LASF46
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.long	0xf2
	.uleb128 0x24
	.long	.LASF1373
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0x15
	.long	.LASF47
	.uleb128 0x4
	.long	0x270
	.uleb128 0x4
	.long	0xf2
	.uleb128 0xb
	.long	0x4a
	.long	0x28f
	.uleb128 0xa
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x268
	.uleb128 0x15
	.long	.LASF48
	.uleb128 0x4
	.long	0x294
	.uleb128 0x15
	.long	.LASF49
	.uleb128 0x4
	.long	0x29e
	.uleb128 0xb
	.long	0x4a
	.long	0x2b8
	.uleb128 0xa
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.long	0x51
	.uleb128 0x1a
	.long	0x2b8
	.uleb128 0x4
	.long	0x25c
	.uleb128 0x1a
	.long	0x2c2
	.uleb128 0x11
	.long	.LASF1339
	.byte	0xc
	.byte	0x97
	.byte	0xe
	.long	0x2c2
	.uleb128 0xd
	.long	0x6b
	.byte	0x8
	.byte	0xa3
	.long	0x30e
	.uleb128 0x2
	.long	.LASF50
	.byte	0
	.uleb128 0x2
	.long	.LASF51
	.byte	0x1
	.uleb128 0x2
	.long	.LASF52
	.byte	0x2
	.uleb128 0x2
	.long	.LASF53
	.byte	0x3
	.uleb128 0x2
	.long	.LASF54
	.byte	0x4
	.uleb128 0x2
	.long	.LASF55
	.byte	0x5
	.uleb128 0x2
	.long	.LASF56
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.long	0x6b
	.byte	0x8
	.byte	0xb5
	.long	0x35c
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
	.uleb128 0x2
	.long	.LASF64
	.byte	0x7
	.uleb128 0x2
	.long	.LASF65
	.byte	0x8
	.uleb128 0x2
	.long	.LASF66
	.byte	0x9
	.uleb128 0x2
	.long	.LASF67
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.long	0x6b
	.byte	0x8
	.byte	0xca
	.long	0x38c
	.uleb128 0x2
	.long	.LASF68
	.byte	0
	.uleb128 0x2
	.long	.LASF69
	.byte	0x1
	.uleb128 0x2
	.long	.LASF70
	.byte	0x2
	.uleb128 0x2
	.long	.LASF71
	.byte	0x3
	.uleb128 0x2
	.long	.LASF72
	.byte	0x4
	.uleb128 0x2
	.long	.LASF73
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.long	0x6b
	.byte	0x8
	.byte	0xd7
	.long	0x3c2
	.uleb128 0x2
	.long	.LASF74
	.byte	0
	.uleb128 0x2
	.long	.LASF75
	.byte	0x1
	.uleb128 0x2
	.long	.LASF76
	.byte	0x2
	.uleb128 0x2
	.long	.LASF77
	.byte	0x3
	.uleb128 0x2
	.long	.LASF78
	.byte	0x4
	.uleb128 0x2
	.long	.LASF79
	.byte	0x5
	.uleb128 0x2
	.long	.LASF80
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.long	0x6b
	.byte	0x9
	.byte	0x1f
	.long	0x710
	.uleb128 0x2
	.long	.LASF81
	.byte	0
	.uleb128 0x2
	.long	.LASF82
	.byte	0x1
	.uleb128 0x2
	.long	.LASF83
	.byte	0x2
	.uleb128 0x2
	.long	.LASF84
	.byte	0x3
	.uleb128 0x2
	.long	.LASF85
	.byte	0x4
	.uleb128 0x2
	.long	.LASF86
	.byte	0x5
	.uleb128 0x2
	.long	.LASF87
	.byte	0x6
	.uleb128 0x2
	.long	.LASF88
	.byte	0x7
	.uleb128 0x2
	.long	.LASF89
	.byte	0x8
	.uleb128 0x2
	.long	.LASF90
	.byte	0x9
	.uleb128 0x2
	.long	.LASF91
	.byte	0xa
	.uleb128 0x2
	.long	.LASF92
	.byte	0xb
	.uleb128 0x2
	.long	.LASF93
	.byte	0xc
	.uleb128 0x2
	.long	.LASF94
	.byte	0xd
	.uleb128 0x2
	.long	.LASF95
	.byte	0xe
	.uleb128 0x2
	.long	.LASF96
	.byte	0xf
	.uleb128 0x2
	.long	.LASF97
	.byte	0x10
	.uleb128 0x2
	.long	.LASF98
	.byte	0x11
	.uleb128 0x2
	.long	.LASF99
	.byte	0x12
	.uleb128 0x2
	.long	.LASF100
	.byte	0x13
	.uleb128 0x2
	.long	.LASF101
	.byte	0x14
	.uleb128 0x2
	.long	.LASF102
	.byte	0x15
	.uleb128 0x2
	.long	.LASF103
	.byte	0x16
	.uleb128 0x2
	.long	.LASF104
	.byte	0x17
	.uleb128 0x2
	.long	.LASF105
	.byte	0x18
	.uleb128 0x2
	.long	.LASF106
	.byte	0x19
	.uleb128 0x2
	.long	.LASF107
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF108
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF109
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF110
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF111
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF112
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF113
	.byte	0x20
	.uleb128 0x2
	.long	.LASF114
	.byte	0x21
	.uleb128 0x2
	.long	.LASF115
	.byte	0x22
	.uleb128 0x2
	.long	.LASF116
	.byte	0x23
	.uleb128 0x2
	.long	.LASF117
	.byte	0x24
	.uleb128 0x2
	.long	.LASF118
	.byte	0x25
	.uleb128 0x2
	.long	.LASF119
	.byte	0x26
	.uleb128 0x2
	.long	.LASF120
	.byte	0x27
	.uleb128 0x2
	.long	.LASF121
	.byte	0x28
	.uleb128 0x2
	.long	.LASF122
	.byte	0x29
	.uleb128 0x2
	.long	.LASF123
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF124
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF125
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF126
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF127
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF128
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF129
	.byte	0x30
	.uleb128 0x2
	.long	.LASF130
	.byte	0x31
	.uleb128 0x2
	.long	.LASF131
	.byte	0x32
	.uleb128 0x2
	.long	.LASF132
	.byte	0x33
	.uleb128 0x2
	.long	.LASF133
	.byte	0x34
	.uleb128 0x2
	.long	.LASF134
	.byte	0x35
	.uleb128 0x2
	.long	.LASF135
	.byte	0x36
	.uleb128 0x2
	.long	.LASF136
	.byte	0x37
	.uleb128 0x2
	.long	.LASF137
	.byte	0x38
	.uleb128 0x2
	.long	.LASF138
	.byte	0x39
	.uleb128 0x2
	.long	.LASF139
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF140
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF141
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF142
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF143
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF144
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF145
	.byte	0x40
	.uleb128 0x2
	.long	.LASF146
	.byte	0x41
	.uleb128 0x2
	.long	.LASF147
	.byte	0x42
	.uleb128 0x2
	.long	.LASF148
	.byte	0x43
	.uleb128 0x2
	.long	.LASF149
	.byte	0x44
	.uleb128 0x2
	.long	.LASF150
	.byte	0x45
	.uleb128 0x2
	.long	.LASF151
	.byte	0x46
	.uleb128 0x2
	.long	.LASF152
	.byte	0x47
	.uleb128 0x2
	.long	.LASF153
	.byte	0x48
	.uleb128 0x2
	.long	.LASF154
	.byte	0x49
	.uleb128 0x2
	.long	.LASF155
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF156
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF157
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF158
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF159
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF160
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF161
	.byte	0x50
	.uleb128 0x2
	.long	.LASF162
	.byte	0x51
	.uleb128 0x2
	.long	.LASF163
	.byte	0x52
	.uleb128 0x2
	.long	.LASF164
	.byte	0x53
	.uleb128 0x2
	.long	.LASF165
	.byte	0x54
	.uleb128 0x2
	.long	.LASF166
	.byte	0x55
	.uleb128 0x2
	.long	.LASF167
	.byte	0x56
	.uleb128 0x2
	.long	.LASF168
	.byte	0x57
	.uleb128 0x2
	.long	.LASF169
	.byte	0x58
	.uleb128 0x2
	.long	.LASF170
	.byte	0x59
	.uleb128 0x2
	.long	.LASF171
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF172
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF173
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF174
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF175
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF176
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF177
	.byte	0x60
	.uleb128 0x2
	.long	.LASF178
	.byte	0x61
	.uleb128 0x2
	.long	.LASF179
	.byte	0x62
	.uleb128 0x2
	.long	.LASF180
	.byte	0x63
	.uleb128 0x2
	.long	.LASF181
	.byte	0x64
	.uleb128 0x2
	.long	.LASF182
	.byte	0x65
	.uleb128 0x2
	.long	.LASF183
	.byte	0x66
	.uleb128 0x2
	.long	.LASF184
	.byte	0x67
	.uleb128 0x2
	.long	.LASF185
	.byte	0x68
	.uleb128 0x2
	.long	.LASF186
	.byte	0x69
	.uleb128 0x2
	.long	.LASF187
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF188
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF189
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF190
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF191
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF192
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF193
	.byte	0x70
	.uleb128 0x2
	.long	.LASF194
	.byte	0x71
	.uleb128 0x2
	.long	.LASF195
	.byte	0x72
	.uleb128 0x2
	.long	.LASF196
	.byte	0x73
	.uleb128 0x2
	.long	.LASF197
	.byte	0x74
	.uleb128 0x2
	.long	.LASF198
	.byte	0x75
	.uleb128 0x2
	.long	.LASF199
	.byte	0x76
	.uleb128 0x2
	.long	.LASF200
	.byte	0x77
	.uleb128 0x2
	.long	.LASF201
	.byte	0x78
	.uleb128 0x2
	.long	.LASF202
	.byte	0x79
	.uleb128 0x2
	.long	.LASF203
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF204
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF205
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF206
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF207
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF208
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF209
	.byte	0x80
	.uleb128 0x2
	.long	.LASF210
	.byte	0x81
	.uleb128 0x2
	.long	.LASF211
	.byte	0x82
	.uleb128 0x2
	.long	.LASF212
	.byte	0x83
	.uleb128 0x2
	.long	.LASF213
	.byte	0x84
	.uleb128 0x2
	.long	.LASF214
	.byte	0x85
	.uleb128 0x2
	.long	.LASF215
	.byte	0x86
	.uleb128 0x2
	.long	.LASF216
	.byte	0x87
	.uleb128 0x2
	.long	.LASF217
	.byte	0x88
	.uleb128 0x2
	.long	.LASF218
	.byte	0x89
	.uleb128 0x2
	.long	.LASF219
	.byte	0x8a
	.byte	0
	.uleb128 0xd
	.long	0x6b
	.byte	0x9
	.byte	0xaf
	.long	0x2094
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
	.uleb128 0x25
	.byte	0x7
	.byte	0x4
	.long	0x6b
	.byte	0x9
	.value	0x48b
	.byte	0xe
	.long	0x23e0
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
	.uleb128 0xb
	.long	0x8c
	.long	0x23f0
	.uleb128 0xa
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x1b
	.byte	0x2
	.value	0x11d
	.long	0x2413
	.uleb128 0xe
	.long	.LASF1326
	.value	0x11f
	.byte	0xb
	.long	0x72
	.byte	0
	.uleb128 0xe
	.long	.LASF1327
	.value	0x120
	.byte	0xb
	.long	0x72
	.byte	0x1
	.byte	0
	.uleb128 0x16
	.long	.LASF1328
	.value	0x121
	.byte	0x3
	.long	0x23f0
	.uleb128 0x16
	.long	.LASF1329
	.value	0x124
	.byte	0x10
	.long	0x2413
	.uleb128 0x1b
	.byte	0x28
	.value	0x164
	.long	0x2475
	.uleb128 0xe
	.long	.LASF1330
	.value	0x166
	.byte	0xc
	.long	0x85
	.byte	0
	.uleb128 0xe
	.long	.LASF1331
	.value	0x167
	.byte	0xc
	.long	0x85
	.byte	0x2
	.uleb128 0xe
	.long	.LASF1332
	.value	0x168
	.byte	0xc
	.long	0x85
	.byte	0x4
	.uleb128 0xe
	.long	.LASF1333
	.value	0x169
	.byte	0xc
	.long	0x85
	.byte	0x6
	.uleb128 0xe
	.long	.LASF1334
	.value	0x16a
	.byte	0xb
	.long	0x2475
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0x8c
	.long	0x2485
	.uleb128 0xa
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x16
	.long	.LASF1335
	.value	0x16c
	.byte	0x3
	.long	0x242b
	.uleb128 0xd
	.long	0x6b
	.byte	0xb
	.byte	0x3d
	.long	0x24af
	.uleb128 0x2
	.long	.LASF1336
	.byte	0
	.uleb128 0x2
	.long	.LASF1337
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1338
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	0x72
	.uleb128 0xb
	.long	0x24af
	.long	0x24c4
	.uleb128 0xa
	.long	0x43
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.long	.LASF1340
	.byte	0xd
	.byte	0x2f
	.byte	0xf
	.long	0x24b4
	.uleb128 0x11
	.long	.LASF1341
	.byte	0xd
	.byte	0x31
	.byte	0xd
	.long	0x23e0
	.uleb128 0xb
	.long	0x72
	.long	0x24f2
	.uleb128 0xa
	.long	0x43
	.byte	0x4
	.uleb128 0xa
	.long	0x43
	.byte	0xff
	.byte	0
	.uleb128 0x11
	.long	.LASF1342
	.byte	0xd
	.byte	0x33
	.byte	0xd
	.long	0x24dc
	.uleb128 0x11
	.long	.LASF1343
	.byte	0xd
	.byte	0x34
	.byte	0xc
	.long	0x8c
	.uleb128 0x17
	.long	0x24c4
	.byte	0x2c
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	screens
	.uleb128 0x17
	.long	0x24d0
	.byte	0x2e
	.byte	0x8
	.uleb128 0x9
	.byte	0x3
	.quad	dirtybox
	.uleb128 0x26
	.long	0x24f2
	.byte	0x1
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	gammatable
	.uleb128 0x17
	.long	0x24fe
	.byte	0x89
	.byte	0x5
	.uleb128 0x9
	.byte	0x3
	.quad	usegamma
	.uleb128 0x1c
	.long	.LASF1344
	.byte	0xe
	.byte	0x54
	.byte	0x7
	.long	0x24af
	.long	0x2564
	.uleb128 0x8
	.long	0x8c
	.byte	0
	.uleb128 0x27
	.long	.LASF1345
	.byte	0xc
	.value	0x165
	.byte	0xc
	.long	0x8c
	.long	0x2581
	.uleb128 0x8
	.long	0x2c7
	.uleb128 0x8
	.long	0x2bd
	.uleb128 0x1d
	.byte	0
	.uleb128 0x1c
	.long	.LASF1346
	.byte	0xf
	.byte	0x2b
	.byte	0xe
	.long	0xc0
	.long	0x25a1
	.uleb128 0x8
	.long	0xc0
	.uleb128 0x8
	.long	0x25a1
	.uleb128 0x8
	.long	0xe6
	.byte	0
	.uleb128 0x4
	.long	0x25a6
	.uleb128 0x28
	.uleb128 0x1e
	.long	.LASF1347
	.byte	0xe
	.byte	0x59
	.byte	0x6
	.long	0x25ba
	.uleb128 0x8
	.long	0xc2
	.uleb128 0x1d
	.byte	0
	.uleb128 0x1e
	.long	.LASF1348
	.byte	0x10
	.byte	0x2c
	.byte	0x1
	.long	0x25d6
	.uleb128 0x8
	.long	0xe1
	.uleb128 0x8
	.long	0xd5
	.uleb128 0x8
	.long	0xd5
	.byte	0
	.uleb128 0x12
	.long	.LASF1351
	.value	0x1e2
	.byte	0x6
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x2611
	.uleb128 0x13
	.string	"i"
	.value	0x1e4
	.byte	0xa
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.long	.LASF1350
	.value	0x1e5
	.byte	0xb
	.long	0x24af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF1352
	.value	0x1bd
	.byte	0x1
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2695
	.uleb128 0x9
	.string	"x"
	.value	0x1be
	.byte	0x8
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"y"
	.value	0x1bf
	.byte	0x8
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.long	.LASF1353
	.value	0x1c0
	.byte	0x8
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.long	.LASF1330
	.value	0x1c1
	.byte	0x8
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.long	.LASF1331
	.value	0x1c2
	.byte	0x8
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.long	.LASF1354
	.value	0x1c3
	.byte	0xa
	.long	0x24af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.string	"src"
	.value	0x1c5
	.byte	0xb
	.long	0x24af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF1355
	.value	0x195
	.byte	0x1
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2719
	.uleb128 0x9
	.string	"x"
	.value	0x196
	.byte	0x8
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"y"
	.value	0x197
	.byte	0x8
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.long	.LASF1353
	.value	0x198
	.byte	0x8
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.long	.LASF1330
	.value	0x199
	.byte	0x8
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.long	.LASF1331
	.value	0x19a
	.byte	0x8
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.string	"src"
	.value	0x19b
	.byte	0xa
	.long	0x24af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.long	.LASF1354
	.value	0x19d
	.byte	0xb
	.long	0x24af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF1356
	.value	0x151
	.byte	0x1
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x2770
	.uleb128 0x9
	.string	"x"
	.value	0x152
	.byte	0x8
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"y"
	.value	0x153
	.byte	0x8
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.long	.LASF1353
	.value	0x154
	.byte	0x8
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.long	.LASF1357
	.value	0x155
	.byte	0xc
	.long	0x2770
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x4
	.long	0x2485
	.uleb128 0x12
	.long	.LASF1358
	.value	0x10f
	.byte	0x1
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x2837
	.uleb128 0x9
	.string	"x"
	.value	0x110
	.byte	0x8
	.long	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x9
	.string	"y"
	.value	0x111
	.byte	0x8
	.long	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x6
	.long	.LASF1353
	.value	0x112
	.byte	0x8
	.long	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x6
	.long	.LASF1357
	.value	0x113
	.byte	0xc
	.long	0x2770
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xf
	.long	.LASF1359
	.value	0x116
	.byte	0xa
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x13
	.string	"col"
	.value	0x117
	.byte	0xa
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.long	.LASF1360
	.value	0x118
	.byte	0xf
	.long	0x2837
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.long	.LASF1361
	.value	0x119
	.byte	0xb
	.long	0x24af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.long	.LASF1354
	.value	0x11a
	.byte	0xb
	.long	0x24af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.long	.LASF1362
	.value	0x11b
	.byte	0xb
	.long	0x24af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"w"
	.value	0x11c
	.byte	0xa
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x4
	.long	0x241f
	.uleb128 0x1f
	.long	.LASF1363
	.byte	0xcc
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x28ef
	.uleb128 0x14
	.string	"x"
	.byte	0xcd
	.long	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x14
	.string	"y"
	.byte	0xce
	.long	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.long	.LASF1353
	.byte	0xcf
	.byte	0x8
	.long	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x5
	.long	.LASF1357
	.byte	0xd0
	.byte	0xc
	.long	0x2770
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xc
	.long	.LASF1359
	.byte	0xd3
	.byte	0xa
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x18
	.string	"col"
	.byte	0xd4
	.byte	0xa
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.long	.LASF1360
	.byte	0xd5
	.byte	0xf
	.long	0x2837
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.long	.LASF1361
	.byte	0xd6
	.byte	0xb
	.long	0x24af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.long	.LASF1354
	.byte	0xd7
	.byte	0xb
	.long	0x24af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.long	.LASF1362
	.byte	0xd8
	.byte	0xb
	.long	0x24af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"w"
	.byte	0xd9
	.byte	0xa
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x1f
	.long	.LASF1364
	.byte	0x9e
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x2998
	.uleb128 0x5
	.long	.LASF1365
	.byte	0x9f
	.byte	0x8
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.long	.LASF1366
	.byte	0xa0
	.byte	0x8
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF1367
	.byte	0xa1
	.byte	0x8
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.long	.LASF1330
	.byte	0xa2
	.byte	0x8
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.long	.LASF1331
	.byte	0xa3
	.byte	0x8
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.long	.LASF1368
	.byte	0xa4
	.byte	0x8
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.long	.LASF1369
	.byte	0xa5
	.byte	0x8
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.long	.LASF1370
	.byte	0xa6
	.byte	0x8
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"src"
	.byte	0xa8
	.byte	0xb
	.long	0x24af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.long	.LASF1354
	.byte	0xa9
	.byte	0xb
	.long	0x24af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF1374
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.string	"x"
	.byte	0x90
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.string	"y"
	.byte	0x91
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.long	.LASF1330
	.byte	0x92
	.byte	0x8
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.long	.LASF1331
	.byte	0x93
	.byte	0x8
	.long	0x8c
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
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
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
	.uleb128 0xf
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0x1d
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x28
	.uleb128 0x26
	.byte	0
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
.LASF855:
	.string	"S_BSPI_RUN1"
.LASF856:
	.string	"S_BSPI_RUN2"
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
.LASF148:
	.string	"SPR_YSKU"
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
.LASF45:
	.string	"_unused2"
.LASF519:
	.string	"S_FIRE19"
.LASF1322:
	.string	"MT_MISC84"
.LASF1255:
	.string	"MT_MISC20"
.LASF1078:
	.string	"S_MEGA2"
.LASF31:
	.string	"_fileno"
.LASF1080:
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
.LASF709:
	.string	"S_SARG_PAIN2"
.LASF58:
	.string	"wp_pistol"
.LASF189:
	.string	"SPR_COL1"
.LASF190:
	.string	"SPR_COL2"
.LASF191:
	.string	"SPR_COL3"
.LASF192:
	.string	"SPR_COL4"
.LASF201:
	.string	"SPR_COL5"
.LASF195:
	.string	"SPR_COL6"
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
.LASF175:
	.string	"SPR_COLU"
.LASF526:
	.string	"S_FIRE26"
.LASF527:
	.string	"S_FIRE27"
.LASF528:
	.string	"S_FIRE28"
.LASF529:
	.string	"S_FIRE29"
.LASF1268:
	.string	"MT_MISC30"
.LASF1269:
	.string	"MT_MISC31"
.LASF1270:
	.string	"MT_MISC32"
.LASF1271:
	.string	"MT_MISC33"
.LASF871:
	.string	"S_BSPI_PAIN"
.LASF1273:
	.string	"MT_MISC35"
.LASF343:
	.string	"S_BFGEXP"
.LASF71:
	.string	"am_misl"
.LASF1276:
	.string	"MT_MISC38"
.LASF1277:
	.string	"MT_MISC39"
.LASF873:
	.string	"S_BSPI_DIE1"
.LASF1338:
	.string	"NUMPSPRITES"
.LASF878:
	.string	"S_BSPI_DIE6"
.LASF574:
	.string	"S_SKEL_RAISE4"
.LASF769:
	.string	"S_BOSS_RAISE1"
.LASF770:
	.string	"S_BOSS_RAISE2"
.LASF1202:
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
.LASF143:
	.string	"SPR_BKEY"
.LASF786:
	.string	"S_BOS2_ATK1"
.LASF787:
	.string	"S_BOS2_ATK2"
.LASF788:
	.string	"S_BOS2_ATK3"
.LASF177:
	.string	"SPR_GOR1"
.LASF184:
	.string	"SPR_GOR2"
.LASF36:
	.string	"_shortbuf"
.LASF186:
	.string	"SPR_GOR4"
.LASF187:
	.string	"SPR_GOR5"
.LASF1280:
	.string	"MT_MISC42"
.LASF1281:
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
.LASF61:
	.string	"wp_missile"
.LASF1029:
	.string	"S_BEXP2"
.LASF724:
	.string	"S_HEAD_ATK1"
.LASF725:
	.string	"S_HEAD_ATK2"
.LASF726:
	.string	"S_HEAD_ATK3"
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
.LASF1197:
	.string	"MT_FATSHOT"
.LASF163:
	.string	"SPR_CELL"
.LASF164:
	.string	"SPR_CELP"
.LASF1144:
	.string	"S_HEARTCOL"
.LASF1061:
	.string	"S_MEDI"
.LASF1068:
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
.LASF1158:
	.string	"S_BTORCHSHRT"
.LASF279:
	.string	"S_MISSILEUP"
.LASF1295:
	.string	"MT_MISC57"
.LASF1296:
	.string	"MT_MISC58"
.LASF1297:
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
.LASF17:
	.string	"_flags"
.LASF804:
	.string	"S_BOS2_RAISE7"
.LASF563:
	.string	"S_SKEL_PAIN"
.LASF1050:
	.string	"S_RKEY"
.LASF1327:
	.string	"length"
.LASF232:
	.string	"S_PISTOLUP"
.LASF918:
	.string	"S_CYBER_DIE8"
.LASF1350:
	.string	"base"
.LASF11:
	.string	"__off_t"
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
.LASF1145:
	.string	"S_HEARTCOL2"
.LASF324:
	.string	"S_RBALLX1"
.LASF1331:
	.string	"height"
.LASF1229:
	.string	"MT_TELEPORTMAN"
.LASF37:
	.string	"_lock"
.LASF1308:
	.string	"MT_MISC70"
.LASF108:
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
.LASF1196:
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
.LASF1058:
	.string	"S_YSKULL"
.LASF1059:
	.string	"S_YSKULL2"
.LASF161:
	.string	"SPR_ROCK"
.LASF1221:
	.string	"MT_ROCKET"
.LASF1319:
	.string	"MT_MISC81"
.LASF1320:
	.string	"MT_MISC82"
.LASF1321:
	.string	"MT_MISC83"
.LASF636:
	.string	"S_CPOS_ATK1"
.LASF637:
	.string	"S_CPOS_ATK2"
.LASF638:
	.string	"S_CPOS_ATK3"
.LASF639:
	.string	"S_CPOS_ATK4"
.LASF1188:
	.string	"MT_PLAYER"
.LASF173:
	.string	"SPR_SHOT"
.LASF365:
	.string	"S_IFOG2"
.LASF366:
	.string	"S_IFOG3"
.LASF367:
	.string	"S_IFOG4"
.LASF368:
	.string	"S_IFOG5"
.LASF102:
	.string	"SPR_PLSE"
.LASF94:
	.string	"SPR_PLSF"
.LASF93:
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
.LASF101:
	.string	"SPR_PLSS"
.LASF840:
	.string	"S_SPID_PAIN2"
.LASF1356:
	.string	"V_DrawPatchDirect"
.LASF214:
	.string	"SPR_POB1"
.LASF215:
	.string	"SPR_POB2"
.LASF1062:
	.string	"S_SOUL"
.LASF1355:
	.string	"V_DrawBlock"
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
.LASF1346:
	.string	"memcpy"
.LASF1099:
	.string	"S_BFUG"
.LASF140:
	.string	"SPR_FCAN"
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
.LASF1362:
	.string	"source"
.LASF145:
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
.LASF1199:
	.string	"MT_TROOP"
.LASF490:
	.string	"S_VILE_PAIN2"
.LASF618:
	.string	"S_FATT_RAISE1"
.LASF62:
	.string	"wp_plasma"
.LASF620:
	.string	"S_FATT_RAISE3"
.LASF621:
	.string	"S_FATT_RAISE4"
.LASF622:
	.string	"S_FATT_RAISE5"
.LASF623:
	.string	"S_FATT_RAISE6"
.LASF23:
	.string	"_IO_write_end"
.LASF625:
	.string	"S_FATT_RAISE8"
.LASF334:
	.string	"S_ROCKET"
.LASF1220:
	.string	"MT_HEADSHOT"
.LASF887:
	.string	"S_ARACH_PLAZ"
.LASF1126:
	.string	"S_STALAGTITE"
.LASF728:
	.string	"S_HEAD_PAIN2"
.LASF729:
	.string	"S_HEAD_PAIN3"
.LASF10:
	.string	"byte"
.LASF55:
	.string	"it_redskull"
.LASF1227:
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
.LASF128:
	.string	"SPR_APLS"
.LASF1155:
	.string	"S_REDTORCH2"
.LASF1156:
	.string	"S_REDTORCH3"
.LASF1157:
	.string	"S_REDTORCH4"
.LASF1364:
	.string	"V_CopyRect"
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
.LASF119:
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
.LASF57:
	.string	"wp_fist"
.LASF149:
	.string	"SPR_STIM"
.LASF695:
	.string	"S_SARG_STND"
.LASF920:
	.string	"S_CYBER_DIE10"
.LASF99:
	.string	"SPR_BAL1"
.LASF100:
	.string	"SPR_BAL2"
.LASF122:
	.string	"SPR_BAL7"
.LASF1114:
	.string	"S_HEADSONSTICK"
.LASF571:
	.string	"S_SKEL_RAISE1"
.LASF87:
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
.LASF86:
	.string	"SPR_SHTF"
.LASF82:
	.string	"SPR_SHTG"
.LASF363:
	.string	"S_IFOG01"
.LASF364:
	.string	"S_IFOG02"
.LASF849:
	.string	"S_SPID_DIE9"
.LASF1091:
	.string	"S_AMMO"
.LASF1344:
	.string	"I_AllocLow"
.LASF72:
	.string	"NUMAMMO"
.LASF922:
	.string	"S_PAIN_RUN1"
.LASF923:
	.string	"S_PAIN_RUN2"
.LASF924:
	.string	"S_PAIN_RUN3"
.LASF925:
	.string	"S_PAIN_RUN4"
.LASF208:
	.string	"SPR_HDB1"
.LASF209:
	.string	"SPR_HDB2"
.LASF210:
	.string	"SPR_HDB3"
.LASF211:
	.string	"SPR_HDB4"
.LASF212:
	.string	"SPR_HDB5"
.LASF213:
	.string	"SPR_HDB6"
.LASF1189:
	.string	"MT_POSSESSED"
.LASF257:
	.string	"S_DSGUN3"
.LASF258:
	.string	"S_DSGUN4"
.LASF277:
	.string	"S_MISSILE"
.LASF1105:
	.string	"S_SHOT2"
.LASF1172:
	.string	"S_HANGTLOOKDN"
.LASF649:
	.string	"S_CPOS_XDIE1"
.LASF169:
	.string	"SPR_MGUN"
.LASF1201:
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
.LASF947:
	.string	"S_SSWV_STND2"
.LASF170:
	.string	"SPR_CSAW"
.LASF1082:
	.string	"S_PMAP"
.LASF30:
	.string	"_chain"
.LASF1088:
	.string	"S_PVIS"
.LASF302:
	.string	"S_BFGDOWN"
.LASF1213:
	.string	"MT_BOSSBRAIN"
.LASF116:
	.string	"SPR_SKEL"
.LASF297:
	.string	"S_PLASMA1"
.LASF298:
	.string	"S_PLASMA2"
.LASF1162:
	.string	"S_GTORCHSHRT"
.LASF1096:
	.string	"S_SHEL"
.LASF853:
	.string	"S_BSPI_STND2"
.LASF5:
	.string	"unsigned char"
.LASF114:
	.string	"SPR_FATB"
.LASF1342:
	.string	"gammatable"
.LASF219:
	.string	"NUMSPRITES"
.LASF336:
	.string	"S_BFGSHOT2"
.LASF118:
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
.LASF1373:
	.string	"_IO_lock_t"
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
.LASF13:
	.string	"float"
.LASF1030:
	.string	"S_BEXP3"
.LASF1031:
	.string	"S_BEXP4"
.LASF1119:
	.string	"S_DEADSTICK"
.LASF1230:
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
.LASF89:
	.string	"SPR_CHGF"
.LASF88:
	.string	"SPR_CHGG"
.LASF890:
	.string	"S_ARACH_PLEX2"
.LASF891:
	.string	"S_ARACH_PLEX3"
.LASF892:
	.string	"S_ARACH_PLEX4"
.LASF893:
	.string	"S_ARACH_PLEX5"
.LASF634:
	.string	"S_CPOS_RUN7"
.LASF199:
	.string	"SPR_CEYE"
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
.LASF156:
	.string	"SPR_SUIT"
.LASF805:
	.string	"S_SKULL_STND"
.LASF839:
	.string	"S_SPID_PAIN"
.LASF1325:
	.string	"NUMMOBJTYPES"
.LASF138:
	.string	"SPR_BAR1"
.LASF252:
	.string	"S_DSGUN"
.LASF1131:
	.string	"S_CANDLESTIK"
.LASF78:
	.string	"pw_allmap"
.LASF1187:
	.string	"NUMSTATES"
.LASF831:
	.string	"S_SPID_RUN9"
.LASF317:
	.string	"S_TBALL1"
.LASF318:
	.string	"S_TBALL2"
.LASF531:
	.string	"S_SMOKE1"
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
.LASF121:
	.string	"SPR_HEAD"
.LASF182:
	.string	"SPR_POL1"
.LASF178:
	.string	"SPR_POL2"
.LASF181:
	.string	"SPR_POL3"
.LASF180:
	.string	"SPR_POL4"
.LASF179:
	.string	"SPR_POL5"
.LASF183:
	.string	"SPR_POL6"
.LASF1026:
	.string	"S_BAR1"
.LASF1124:
	.string	"S_MEAT4"
.LASF518:
	.string	"S_FIRE18"
.LASF1231:
	.string	"MT_MISC0"
.LASF1112:
	.string	"S_DEADTORSO"
.LASF254:
	.string	"S_DSGUNUP"
.LASF663:
	.string	"S_TROO_STND2"
.LASF1360:
	.string	"column"
.LASF1183:
	.string	"S_TECH2LAMP"
.LASF1217:
	.string	"MT_SPAWNFIRE"
.LASF1192:
	.string	"MT_FIRE"
.LASF760:
	.string	"S_BOSS_PAIN"
.LASF132:
	.string	"SPR_SSWV"
.LASF22:
	.string	"_IO_write_ptr"
.LASF1169:
	.string	"S_RTORCHSHRT4"
.LASF322:
	.string	"S_RBALL1"
.LASF323:
	.string	"S_RBALL2"
.LASF1127:
	.string	"S_TALLGRNCOL"
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
.LASF1329:
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
.LASF717:
	.string	"S_SARG_RAISE2"
.LASF361:
	.string	"S_TFOG10"
.LASF719:
	.string	"S_SARG_RAISE4"
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
.LASF68:
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
.LASF735:
	.string	"S_HEAD_DIE6"
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
.LASF46:
	.string	"FILE"
.LASF575:
	.string	"S_SKEL_RAISE5"
.LASF576:
	.string	"S_SKEL_RAISE6"
.LASF1135:
	.string	"S_BIGTREE"
.LASF1045:
	.string	"S_BON2C"
.LASF1046:
	.string	"S_BON2D"
.LASF351:
	.string	"S_TFOG01"
.LASF352:
	.string	"S_TFOG02"
.LASF171:
	.string	"SPR_LAUN"
.LASF407:
	.string	"S_POSS_PAIN"
.LASF742:
	.string	"S_BRBALL1"
.LASF743:
	.string	"S_BRBALL2"
.LASF1195:
	.string	"MT_SMOKE"
.LASF1209:
	.string	"MT_CYBORG"
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
.LASF16:
	.string	"size_t"
.LASF1048:
	.string	"S_BKEY"
.LASF76:
	.string	"pw_invisibility"
.LASF136:
	.string	"SPR_ARM1"
.LASF137:
	.string	"SPR_ARM2"
.LASF1191:
	.string	"MT_VILE"
.LASF53:
	.string	"it_blueskull"
.LASF295:
	.string	"S_PLASMADOWN"
.LASF607:
	.string	"S_FATT_PAIN2"
.LASF1005:
	.string	"S_BRAINEYESEE"
.LASF542:
	.string	"S_SKEL_STND2"
.LASF895:
	.string	"S_CYBER_STND2"
.LASF739:
	.string	"S_HEAD_RAISE4"
.LASF965:
	.string	"S_SSWV_DIE2"
.LASF421:
	.string	"S_POSS_XDIE8"
.LASF1095:
	.string	"S_CELP"
.LASF1137:
	.string	"S_EVILEYE"
.LASF1163:
	.string	"S_GTORCHSHRT2"
.LASF1164:
	.string	"S_GTORCHSHRT3"
.LASF1165:
	.string	"S_GTORCHSHRT4"
.LASF26:
	.string	"_IO_save_base"
.LASF596:
	.string	"S_FATT_ATK1"
.LASF130:
	.string	"SPR_CYBR"
.LASF597:
	.string	"S_FATT_ATK2"
.LASF500:
	.string	"S_VILE_DIE10"
.LASF91:
	.string	"SPR_MISF"
.LASF90:
	.string	"SPR_MISG"
.LASF103:
	.string	"SPR_MISL"
.LASF1054:
	.string	"S_BSKULL"
.LASF134:
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
.LASF205:
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
.LASF196:
	.string	"SPR_TRE1"
.LASF197:
	.string	"SPR_TRE2"
.LASF852:
	.string	"S_BSPI_STND"
.LASF642:
	.string	"S_CPOS_DIE1"
.LASF204:
	.string	"SPR_TRED"
.LASF97:
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
.LASF107:
	.string	"SPR_TFOG"
.LASF310:
	.string	"S_BLOOD1"
.LASF311:
	.string	"S_BLOOD2"
.LASF312:
	.string	"S_BLOOD3"
.LASF40:
	.string	"_wide_data"
.LASF1102:
	.string	"S_LAUN"
.LASF362:
	.string	"S_IFOG"
.LASF110:
	.string	"SPR_POSS"
.LASF115:
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
.LASF1258:
	.string	"MT_MISC23"
.LASF1335:
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
.LASF238:
	.string	"S_SGUN"
.LASF1128:
	.string	"S_SHRTGRNCOL"
.LASF813:
	.string	"S_SKULL_PAIN"
.LASF1216:
	.string	"MT_SPAWNSHOT"
.LASF1341:
	.string	"dirtybox"
.LASF537:
	.string	"S_TRACER2"
.LASF1136:
	.string	"S_TECHPILLAR"
.LASF541:
	.string	"S_SKEL_STND"
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
.LASF1345:
	.string	"fprintf"
.LASF1052:
	.string	"S_YKEY"
.LASF934:
	.string	"S_PAIN_DIE1"
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
.LASF632:
	.string	"S_CPOS_RUN5"
.LASF633:
	.string	"S_CPOS_RUN6"
.LASF167:
	.string	"SPR_BPAK"
.LASF635:
	.string	"S_CPOS_RUN8"
.LASF1032:
	.string	"S_BEXP5"
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
.LASF718:
	.string	"S_SARG_RAISE3"
.LASF401:
	.string	"S_POSS_RUN6"
.LASF720:
	.string	"S_SARG_RAISE5"
.LASF721:
	.string	"S_SARG_RAISE6"
.LASF206:
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
.LASF814:
	.string	"S_SKULL_PAIN2"
.LASF640:
	.string	"S_CPOS_PAIN"
.LASF120:
	.string	"SPR_SARG"
.LASF945:
	.string	"S_PAIN_RAISE6"
.LASF1274:
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
.LASF1371:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1134:
	.string	"S_TORCHTREE"
.LASF946:
	.string	"S_SSWV_STND"
.LASF993:
	.string	"S_COMMKEEN10"
.LASF994:
	.string	"S_COMMKEEN11"
.LASF995:
	.string	"S_COMMKEEN12"
.LASF910:
	.string	"S_CYBER_PAIN"
.LASF1339:
	.string	"stderr"
.LASF429:
	.string	"S_SPOS_RUN1"
.LASF188:
	.string	"SPR_SMIT"
.LASF431:
	.string	"S_SPOS_RUN3"
.LASF432:
	.string	"S_SPOS_RUN4"
.LASF433:
	.string	"S_SPOS_RUN5"
.LASF125:
	.string	"SPR_SKUL"
.LASF435:
	.string	"S_SPOS_RUN7"
.LASF436:
	.string	"S_SPOS_RUN8"
.LASF1093:
	.string	"S_BROK"
.LASF223:
	.string	"S_PUNCHDOWN"
.LASF889:
	.string	"S_ARACH_PLEX"
.LASF1150:
	.string	"S_GREENTORCH"
.LASF65:
	.string	"wp_supershotgun"
.LASF289:
	.string	"S_SAWDOWN"
.LASF28:
	.string	"_IO_save_end"
.LASF1219:
	.string	"MT_TROOPSHOT"
.LASF1326:
	.string	"topdelta"
.LASF1204:
	.string	"MT_BRUISERSHOT"
.LASF1324:
	.string	"MT_MISC86"
.LASF1336:
	.string	"ps_weapon"
.LASF377:
	.string	"S_PLAY_PAIN2"
.LASF772:
	.string	"S_BOSS_RAISE4"
.LASF773:
	.string	"S_BOSS_RAISE5"
.LASF117:
	.string	"SPR_MANF"
.LASF627:
	.string	"S_CPOS_STND2"
.LASF440:
	.string	"S_SPOS_PAIN"
.LASF59:
	.string	"wp_shotgun"
.LASF408:
	.string	"S_POSS_PAIN2"
.LASF1225:
	.string	"MT_PUFF"
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
.LASF1100:
	.string	"S_MGUN"
.LASF1203:
	.string	"MT_BRUISER"
.LASF166:
	.string	"SPR_SBOX"
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
.LASF7:
	.string	"short unsigned int"
.LASF1205:
	.string	"MT_KNIGHT"
.LASF8:
	.string	"signed char"
.LASF441:
	.string	"S_SPOS_PAIN2"
.LASF605:
	.string	"S_FATT_ATK10"
.LASF1278:
	.string	"MT_MISC40"
.LASF203:
	.string	"SPR_TGRN"
.LASF1250:
	.string	"MT_MEGA"
.LASF105:
	.string	"SPR_BFE1"
.LASF106:
	.string	"SPR_BFE2"
.LASF1361:
	.string	"desttop"
.LASF1284:
	.string	"MT_MISC46"
.LASF1334:
	.string	"columnofs"
.LASF1359:
	.string	"count"
.LASF1212:
	.string	"MT_KEEN"
.LASF1006:
	.string	"S_BRAINEYE1"
.LASF662:
	.string	"S_TROO_STND"
.LASF609:
	.string	"S_FATT_DIE2"
.LASF300:
	.string	"S_PLASMAFLASH2"
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
.LASF81:
	.string	"SPR_TROO"
.LASF12:
	.string	"__off64_t"
.LASF92:
	.string	"SPR_SAWG"
.LASF141:
	.string	"SPR_BON1"
.LASF20:
	.string	"_IO_read_base"
.LASF38:
	.string	"_offset"
.LASF52:
	.string	"it_redcard"
.LASF1129:
	.string	"S_TALLREDCOL"
.LASF1347:
	.string	"I_Error"
.LASF25:
	.string	"_IO_buf_end"
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
.LASF198:
	.string	"SPR_ELEC"
.LASF998:
	.string	"S_BRAIN"
.LASF1207:
	.string	"MT_SPIDER"
.LASF1081:
	.string	"S_SUIT"
.LASF96:
	.string	"SPR_BFGF"
.LASF95:
	.string	"SPR_BFGG"
.LASF44:
	.string	"_mode"
.LASF921:
	.string	"S_PAIN_STND"
.LASF21:
	.string	"_IO_write_base"
.LASF337:
	.string	"S_BFGLAND"
.LASF1027:
	.string	"S_BAR2"
.LASF1357:
	.string	"patch"
.LASF69:
	.string	"am_shell"
.LASF1358:
	.string	"V_DrawPatchFlipped"
.LASF617:
	.string	"S_FATT_DIE10"
.LASF56:
	.string	"NUMCARDS"
.LASF1154:
	.string	"S_REDTORCH"
.LASF1223:
	.string	"MT_BFG"
.LASF112:
	.string	"SPR_VILE"
.LASF1226:
	.string	"MT_BLOOD"
.LASF230:
	.string	"S_PISTOL"
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
.LASF1257:
	.string	"MT_MISC22"
.LASF525:
	.string	"S_FIRE25"
.LASF619:
	.string	"S_FATT_RAISE2"
.LASF1293:
	.string	"MT_MISC55"
.LASF54:
	.string	"it_yellowskull"
.LASF1057:
	.string	"S_RSKULL2"
.LASF624:
	.string	"S_FATT_RAISE7"
.LASF832:
	.string	"S_SPID_RUN10"
.LASF833:
	.string	"S_SPID_RUN11"
.LASF834:
	.string	"S_SPID_RUN12"
.LASF47:
	.string	"_IO_marker"
.LASF1349:
	.string	"rcsid"
.LASF1363:
	.string	"V_DrawPatch"
.LASF1353:
	.string	"scrn"
.LASF283:
	.string	"S_MISSILEFLASH1"
.LASF284:
	.string	"S_MISSILEFLASH2"
.LASF285:
	.string	"S_MISSILEFLASH3"
.LASF286:
	.string	"S_MISSILEFLASH4"
.LASF147:
	.string	"SPR_RSKU"
.LASF643:
	.string	"S_CPOS_DIE2"
.LASF644:
	.string	"S_CPOS_DIE3"
.LASF645:
	.string	"S_CPOS_DIE4"
.LASF646:
	.string	"S_CPOS_DIE5"
.LASF647:
	.string	"S_CPOS_DIE6"
.LASF648:
	.string	"S_CPOS_DIE7"
.LASF1343:
	.string	"usegamma"
.LASF1089:
	.string	"S_PVIS2"
.LASF1218:
	.string	"MT_BARREL"
.LASF821:
	.string	"S_SPID_STND"
.LASF593:
	.string	"S_FATT_RUN10"
.LASF594:
	.string	"S_FATT_RUN11"
.LASF595:
	.string	"S_FATT_RUN12"
.LASF1210:
	.string	"MT_PAIN"
.LASF48:
	.string	"_IO_codecvt"
.LASF1147:
	.string	"S_BLUETORCH2"
.LASF1148:
	.string	"S_BLUETORCH3"
.LASF1149:
	.string	"S_BLUETORCH4"
.LASF207:
	.string	"SPR_SMRT"
.LASF308:
	.string	"S_BFGFLASH1"
.LASF309:
	.string	"S_BFGFLASH2"
.LASF842:
	.string	"S_SPID_DIE2"
.LASF124:
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
.LASF135:
	.string	"SPR_BOSF"
.LASF1367:
	.string	"srcscrn"
.LASF123:
	.string	"SPR_BOSS"
.LASF1222:
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
.LASF66:
	.string	"NUMWEAPONS"
.LASF854:
	.string	"S_BSPI_SIGHT"
.LASF2:
	.string	"long unsigned int"
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
.LASF176:
	.string	"SPR_SMT2"
.LASF1051:
	.string	"S_RKEY2"
.LASF1022:
	.string	"S_ARM1"
.LASF1024:
	.string	"S_ARM2"
.LASF1117:
	.string	"S_HEADCANDLES"
.LASF154:
	.string	"SPR_PINS"
.LASF747:
	.string	"S_BOSS_STND"
.LASF727:
	.string	"S_HEAD_PAIN"
.LASF51:
	.string	"it_yellowcard"
.LASF1194:
	.string	"MT_TRACER"
.LASF1352:
	.string	"V_GetBlock"
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
.LASF159:
	.string	"SPR_CLIP"
.LASF1130:
	.string	"S_SHRTREDCOL"
.LASF1348:
	.string	"M_AddToBox"
.LASF1173:
	.string	"S_HANGTSKULL"
.LASF24:
	.string	"_IO_buf_base"
.LASF80:
	.string	"NUMPOWERS"
.LASF958:
	.string	"S_SSWV_ATK3"
.LASF959:
	.string	"S_SSWV_ATK4"
.LASF264:
	.string	"S_DSGUN10"
.LASF75:
	.string	"pw_strength"
.LASF193:
	.string	"SPR_CAND"
.LASF1200:
	.string	"MT_SERGEANT"
.LASF1120:
	.string	"S_LIVESTICK"
.LASF19:
	.string	"_IO_read_end"
.LASF1060:
	.string	"S_STIM"
.LASF70:
	.string	"am_cell"
.LASF50:
	.string	"it_bluecard"
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
.LASF1372:
	.string	"_IO_FILE"
.LASF383:
	.string	"S_PLAY_DIE6"
.LASF384:
	.string	"S_PLAY_DIE7"
.LASF394:
	.string	"S_POSS_STND"
.LASF350:
	.string	"S_TFOG"
.LASF49:
	.string	"_IO_wide_data"
.LASF1279:
	.string	"MT_MISC41"
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
.LASF1175:
	.string	"S_HANGTNOBRAIN"
.LASF330:
	.string	"S_PLASEXP2"
.LASF331:
	.string	"S_PLASEXP3"
.LASF332:
	.string	"S_PLASEXP4"
.LASF333:
	.string	"S_PLASEXP5"
.LASF63:
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
.LASF1328:
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
.LASF77:
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
.LASF43:
	.string	"__pad5"
.LASF1125:
	.string	"S_MEAT5"
.LASF237:
	.string	"S_PISTOLFLASH"
.LASF457:
	.string	"S_SPOS_RAISE2"
.LASF458:
	.string	"S_SPOS_RAISE3"
.LASF459:
	.string	"S_SPOS_RAISE4"
.LASF460:
	.string	"S_SPOS_RAISE5"
.LASF150:
	.string	"SPR_MEDI"
.LASF152:
	.string	"SPR_PINV"
.LASF999:
	.string	"S_BRAIN_PAIN"
.LASF270:
	.string	"S_CHAINDOWN"
.LASF489:
	.string	"S_VILE_PAIN"
.LASF536:
	.string	"S_TRACER"
.LASF29:
	.string	"_markers"
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
.LASF144:
	.string	"SPR_RKEY"
.LASF1107:
	.string	"S_STALAG"
.LASF1340:
	.string	"screens"
.LASF822:
	.string	"S_SPID_STND2"
.LASF1291:
	.string	"MT_MISC53"
.LASF39:
	.string	"_codecvt"
.LASF1108:
	.string	"S_BLOODYTWITCH"
.LASF1177:
	.string	"S_SMALLPOOL"
.LASF1294:
	.string	"MT_MISC56"
.LASF606:
	.string	"S_FATT_PAIN"
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
.LASF14:
	.string	"double"
.LASF139:
	.string	"SPR_BEXP"
.LASF1055:
	.string	"S_BSKULL2"
.LASF98:
	.string	"SPR_PUFF"
.LASF984:
	.string	"S_COMMKEEN"
.LASF776:
	.string	"S_BOS2_STND"
.LASF104:
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
.LASF64:
	.string	"wp_chainsaw"
.LASF1208:
	.string	"MT_BABY"
.LASF1121:
	.string	"S_LIVESTICK2"
.LASF1166:
	.string	"S_RTORCHSHRT"
.LASF1254:
	.string	"MT_MISC19"
.LASF126:
	.string	"SPR_SPID"
.LASF722:
	.string	"S_HEAD_STND"
.LASF697:
	.string	"S_SARG_RUN1"
.LASF698:
	.string	"S_SARG_RUN2"
.LASF699:
	.string	"S_SARG_RUN3"
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
.LASF287:
	.string	"S_SAW"
.LASF155:
	.string	"SPR_MEGA"
.LASF376:
	.string	"S_PLAY_PAIN"
.LASF328:
	.string	"S_PLASBALL2"
.LASF1337:
	.string	"ps_flash"
.LASF133:
	.string	"SPR_KEEN"
.LASF962:
	.string	"S_SSWV_PAIN"
.LASF997:
	.string	"S_KEENPAIN2"
.LASF79:
	.string	"pw_infrared"
.LASF484:
	.string	"S_VILE_ATK10"
.LASF485:
	.string	"S_VILE_ATK11"
.LASF1333:
	.string	"topoffset"
.LASF963:
	.string	"S_SSWV_PAIN2"
.LASF1318:
	.string	"MT_MISC80"
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
.LASF1330:
	.string	"width"
.LASF153:
	.string	"SPR_PSTR"
.LASF1256:
	.string	"MT_MISC21"
.LASF708:
	.string	"S_SARG_PAIN"
.LASF142:
	.string	"SPR_BON2"
.LASF1251:
	.string	"MT_CLIP"
.LASF1370:
	.string	"destscrn"
.LASF168:
	.string	"SPR_BFUG"
.LASF1306:
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
.LASF172:
	.string	"SPR_PLAS"
.LASF1043:
	.string	"S_BON2A"
.LASF1044:
	.string	"S_BON2B"
.LASF85:
	.string	"SPR_PISF"
.LASF84:
	.string	"SPR_PISG"
.LASF1047:
	.string	"S_BON2E"
.LASF1261:
	.string	"MT_CHAINGUN"
.LASF319:
	.string	"S_TBALLX1"
.LASF320:
	.string	"S_TBALLX2"
.LASF321:
	.string	"S_TBALLX3"
.LASF67:
	.string	"wp_nochange"
.LASF382:
	.string	"S_PLAY_DIE5"
.LASF1198:
	.string	"MT_CHAINGUY"
.LASF1079:
	.string	"S_MEGA3"
.LASF815:
	.string	"S_SKULL_DIE1"
.LASF1178:
	.string	"S_BRAINSTEM"
.LASF983:
	.string	"S_KEENSTND"
.LASF109:
	.string	"SPR_PLAY"
.LASF42:
	.string	"_freeres_buf"
.LASF1365:
	.string	"srcx"
.LASF1366:
	.string	"srcy"
.LASF1374:
	.string	"V_MarkRect"
.LASF1118:
	.string	"S_HEADCANDLES2"
.LASF1228:
	.string	"MT_IFOG"
.LASF34:
	.string	"_cur_column"
.LASF200:
	.string	"SPR_FSKU"
.LASF434:
	.string	"S_SPOS_RUN6"
.LASF290:
	.string	"S_SAWUP"
.LASF1023:
	.string	"S_ARM1A"
.LASF626:
	.string	"S_CPOS_STND"
.LASF1097:
	.string	"S_SBOX"
.LASF1272:
	.string	"MT_MISC34"
.LASF329:
	.string	"S_PLASEXP"
.LASF1275:
	.string	"MT_MISC37"
.LASF1113:
	.string	"S_DEADBOTTOM"
.LASF1170:
	.string	"S_HANGNOGUTS"
.LASF185:
	.string	"SPR_GOR3"
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
.LASF194:
	.string	"SPR_CBRA"
.LASF1354:
	.string	"dest"
.LASF1025:
	.string	"S_ARM2A"
.LASF894:
	.string	"S_CYBER_STND"
.LASF1332:
	.string	"leftoffset"
.LASF1053:
	.string	"S_YKEY2"
.LASF503:
	.string	"S_FIRE3"
.LASF27:
	.string	"_IO_backup_base"
.LASF508:
	.string	"S_FIRE8"
.LASF748:
	.string	"S_BOSS_STND2"
.LASF18:
	.string	"_IO_read_ptr"
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
.LASF288:
	.string	"S_SAWB"
.LASF676:
	.string	"S_TROO_PAIN2"
.LASF41:
	.string	"_freeres_list"
.LASF1214:
	.string	"MT_BOSSSPIT"
.LASF501:
	.string	"S_FIRE1"
.LASF502:
	.string	"S_FIRE2"
.LASF15:
	.string	"fixed_t"
.LASF504:
	.string	"S_FIRE4"
.LASF505:
	.string	"S_FIRE5"
.LASF506:
	.string	"S_FIRE6"
.LASF507:
	.string	"S_FIRE7"
.LASF162:
	.string	"SPR_BROK"
.LASF509:
	.string	"S_FIRE9"
.LASF1282:
	.string	"MT_MISC44"
.LASF1283:
	.string	"MT_MISC45"
.LASF1094:
	.string	"S_CELL"
.LASF1285:
	.string	"MT_MISC47"
.LASF160:
	.string	"SPR_AMMO"
.LASF1286:
	.string	"MT_MISC48"
.LASF1287:
	.string	"MT_MISC49"
.LASF807:
	.string	"S_SKULL_RUN1"
.LASF808:
	.string	"S_SKULL_RUN2"
.LASF1174:
	.string	"S_HANGTLOOKUP"
.LASF269:
	.string	"S_CHAIN"
.LASF299:
	.string	"S_PLASMAFLASH1"
.LASF255:
	.string	"S_DSGUN1"
.LASF256:
	.string	"S_DSGUN2"
.LASF151:
	.string	"SPR_SOUL"
.LASF111:
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
.LASF131:
	.string	"SPR_PAIN"
.LASF655:
	.string	"S_CPOS_RAISE1"
.LASF33:
	.string	"_old_offset"
.LASF304:
	.string	"S_BFG1"
.LASF305:
	.string	"S_BFG2"
.LASF306:
	.string	"S_BFG3"
.LASF307:
	.string	"S_BFG4"
.LASF265:
	.string	"S_DSNR1"
.LASF266:
	.string	"S_DSNR2"
.LASF806:
	.string	"S_SKULL_STND2"
.LASF1069:
	.string	"S_PINV2"
.LASF1070:
	.string	"S_PINV3"
.LASF1071:
	.string	"S_PINV4"
.LASF1184:
	.string	"S_TECH2LAMP2"
.LASF1185:
	.string	"S_TECH2LAMP3"
.LASF1186:
	.string	"S_TECH2LAMP4"
.LASF83:
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
.LASF32:
	.string	"_flags2"
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
.LASF1288:
	.string	"MT_MISC50"
.LASF736:
	.string	"S_HEAD_RAISE1"
.LASF1323:
	.string	"MT_MISC85"
.LASF737:
	.string	"S_HEAD_RAISE2"
.LASF738:
	.string	"S_HEAD_RAISE3"
.LASF146:
	.string	"SPR_BSKU"
.LASF740:
	.string	"S_HEAD_RAISE5"
.LASF741:
	.string	"S_HEAD_RAISE6"
.LASF1266:
	.string	"MT_SUPERSHOTGUN"
.LASF157:
	.string	"SPR_PMAP"
.LASF1004:
	.string	"S_BRAINEYE"
.LASF158:
	.string	"SPR_PVIS"
.LASF1224:
	.string	"MT_ARACHPLAZ"
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
.LASF1351:
	.string	"V_Init"
.LASF1142:
	.string	"S_FLOATSKULL2"
.LASF1143:
	.string	"S_FLOATSKULL3"
.LASF1077:
	.string	"S_MEGA"
.LASF757:
	.string	"S_BOSS_ATK1"
.LASF758:
	.string	"S_BOSS_ATK2"
.LASF759:
	.string	"S_BOSS_ATK3"
.LASF216:
	.string	"SPR_BRS1"
.LASF564:
	.string	"S_SKEL_PAIN2"
.LASF1101:
	.string	"S_CSAW"
.LASF74:
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
.LASF60:
	.string	"wp_chaingun"
.LASF879:
	.string	"S_BSPI_DIE7"
.LASF803:
	.string	"S_BOS2_RAISE6"
.LASF430:
	.string	"S_SPOS_RUN2"
.LASF933:
	.string	"S_PAIN_PAIN2"
.LASF568:
	.string	"S_SKEL_DIE4"
.LASF165:
	.string	"SPR_SHEL"
.LASF1307:
	.string	"MT_MISC69"
.LASF217:
	.string	"SPR_TLMP"
.LASF1368:
	.string	"destx"
.LASF1369:
	.string	"desty"
.LASF395:
	.string	"S_POSS_STND2"
.LASF1265:
	.string	"MT_SHOTGUN"
.LASF1190:
	.string	"MT_SHOTGUY"
.LASF1179:
	.string	"S_TECHLAMP"
.LASF1211:
	.string	"MT_WOLFSS"
.LASF777:
	.string	"S_BOS2_STND2"
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
.LASF202:
	.string	"SPR_TBLU"
.LASF428:
	.string	"S_SPOS_STND2"
.LASF4:
	.string	"unsigned int"
.LASF73:
	.string	"am_noammo"
.LASF404:
	.string	"S_POSS_ATK1"
.LASF405:
	.string	"S_POSS_ATK2"
.LASF406:
	.string	"S_POSS_ATK3"
.LASF1309:
	.string	"MT_MISC71"
.LASF1167:
	.string	"S_RTORCHSHRT2"
.LASF1168:
	.string	"S_RTORCHSHRT3"
.LASF838:
	.string	"S_SPID_ATK4"
.LASF6:
	.string	"short int"
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
.LASF35:
	.string	"_vtable_offset"
.LASF565:
	.string	"S_SKEL_DIE1"
.LASF566:
	.string	"S_SKEL_DIE2"
.LASF567:
	.string	"S_SKEL_DIE3"
.LASF113:
	.string	"SPR_FIRE"
.LASF569:
	.string	"S_SKEL_DIE5"
.LASF570:
	.string	"S_SKEL_DIE6"
.LASF1176:
	.string	"S_COLONGIBS"
.LASF218:
	.string	"SPR_TLP2"
.LASF327:
	.string	"S_PLASBALL"
.LASF174:
	.string	"SPR_SGN2"
.LASF127:
	.string	"SPR_BSPI"
.LASF129:
	.string	"SPR_APBX"
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
.LASF1090:
	.string	"S_CLIP"
.LASF1215:
	.string	"MT_BOSSTARGET"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"v_video.c"
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
