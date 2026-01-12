	.file	"p_lights.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "p_lights.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 51
rcsid:
	.string	"$Id: p_lights.c,v 1.5 1997/02/03 22:45:11 b1 Exp $"
	.text
	.globl	T_FireFlicker
	.type	T_FireFlicker, @function
T_FireFlicker:
.LFB0:
	.file 1 "p_lights.c"
	.loc 1 47 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# flick, flick
# p_lights.c:50:     if (--flick->count)
	.loc 1 50 16
	movq	-24(%rbp), %rax	# flick, tmp101
	movl	32(%rax), %eax	# flick_23(D)->count, _1
# p_lights.c:50:     if (--flick->count)
	.loc 1 50 9
	leal	-1(%rax), %edx	#, _2
# p_lights.c:50:     if (--flick->count)
	.loc 1 50 8
	movq	-24(%rbp), %rax	# flick, tmp102
	movl	%edx, 32(%rax)	# _2, flick_23(D)->count
# p_lights.c:50:     if (--flick->count)
	.loc 1 50 16
	movq	-24(%rbp), %rax	# flick, tmp103
	movl	32(%rax), %eax	# flick_23(D)->count, _3
# p_lights.c:50:     if (--flick->count)
	.loc 1 50 8
	testl	%eax, %eax	# _3
	jne	.L6	#,
# p_lights.c:53:     amount = (P_Random()&3)*16;
	.loc 1 53 15
	call	P_Random@PLT	#
# p_lights.c:53:     amount = (P_Random()&3)*16;
	.loc 1 53 25 discriminator 1
	andl	$3, %eax	#, _5
# p_lights.c:53:     amount = (P_Random()&3)*16;
	.loc 1 53 12 discriminator 1
	sall	$4, %eax	#, tmp104
	movl	%eax, -4(%rbp)	# tmp104, amount
# p_lights.c:55:     if (flick->sector->lightlevel - amount < flick->minlight)
	.loc 1 55 14
	movq	-24(%rbp), %rax	# flick, tmp105
	movq	24(%rax), %rax	# flick_23(D)->sector, _6
# p_lights.c:55:     if (flick->sector->lightlevel - amount < flick->minlight)
	.loc 1 55 22
	movzwl	12(%rax), %eax	# _6->lightlevel, _7
	cwtl
# p_lights.c:55:     if (flick->sector->lightlevel - amount < flick->minlight)
	.loc 1 55 35
	subl	-4(%rbp), %eax	# amount, _8
	movl	%eax, %edx	# _8, _9
# p_lights.c:55:     if (flick->sector->lightlevel - amount < flick->minlight)
	.loc 1 55 51
	movq	-24(%rbp), %rax	# flick, tmp106
	movl	40(%rax), %eax	# flick_23(D)->minlight, _10
# p_lights.c:55:     if (flick->sector->lightlevel - amount < flick->minlight)
	.loc 1 55 8
	cmpl	%eax, %edx	# _10, _9
	jge	.L4	#,
# p_lights.c:56: 	flick->sector->lightlevel = flick->minlight;
	.loc 1 56 35
	movq	-24(%rbp), %rax	# flick, tmp107
	movl	40(%rax), %edx	# flick_23(D)->minlight, _11
# p_lights.c:56: 	flick->sector->lightlevel = flick->minlight;
	.loc 1 56 7
	movq	-24(%rbp), %rax	# flick, tmp108
	movq	24(%rax), %rax	# flick_23(D)->sector, _12
# p_lights.c:56: 	flick->sector->lightlevel = flick->minlight;
	.loc 1 56 28
	movw	%dx, 12(%rax)	# _13, _12->lightlevel
	jmp	.L5	#
.L4:
# p_lights.c:58: 	flick->sector->lightlevel = flick->maxlight - amount;
	.loc 1 58 35
	movq	-24(%rbp), %rax	# flick, tmp109
	movl	36(%rax), %eax	# flick_23(D)->maxlight, _14
# p_lights.c:58: 	flick->sector->lightlevel = flick->maxlight - amount;
	.loc 1 58 46
	movl	%eax, %edx	# _14, _15
	movl	-4(%rbp), %eax	# amount, tmp110
	subl	%eax, %edx	# _16, _17
# p_lights.c:58: 	flick->sector->lightlevel = flick->maxlight - amount;
	.loc 1 58 7
	movq	-24(%rbp), %rax	# flick, tmp111
	movq	24(%rax), %rax	# flick_23(D)->sector, _18
# p_lights.c:58: 	flick->sector->lightlevel = flick->maxlight - amount;
	.loc 1 58 28
	movw	%dx, 12(%rax)	# _19, _18->lightlevel
.L5:
# p_lights.c:60:     flick->count = 4;
	.loc 1 60 18
	movq	-24(%rbp), %rax	# flick, tmp112
	movl	$4, 32(%rax)	#, flick_23(D)->count
	jmp	.L1	#
.L6:
# p_lights.c:51: 	return;
	.loc 1 51 2
	nop	
.L1:
# p_lights.c:61: }
	.loc 1 61 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	T_FireFlicker, .-T_FireFlicker
	.globl	P_SpawnFireFlicker
	.type	P_SpawnFireFlicker, @function
P_SpawnFireFlicker:
.LFB1:
	.loc 1 69 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# sector, sector
# p_lights.c:74:     sector->special = 0; 
	.loc 1 74 21
	movq	-24(%rbp), %rax	# sector, tmp89
	movw	$0, 14(%rax)	#, sector_9(D)->special
# p_lights.c:76:     flick = Z_Malloc ( sizeof(*flick), PU_LEVSPEC, 0);
	.loc 1 76 13
	movl	$0, %edx	#,
	movl	$51, %esi	#,
	movl	$48, %edi	#,
	call	Z_Malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp90, flick
# p_lights.c:78:     P_AddThinker (&flick->thinker);
	.loc 1 78 5
	movq	-8(%rbp), %rax	# flick, _1
	movq	%rax, %rdi	# _1,
	call	P_AddThinker@PLT	#
# p_lights.c:80:     flick->thinker.function.acp1 = (actionf_p1) T_FireFlicker;
	.loc 1 80 34
	movq	-8(%rbp), %rax	# flick, tmp91
	leaq	T_FireFlicker(%rip), %rdx	#, tmp92
	movq	%rdx, 16(%rax)	# tmp92, flick_12->thinker.function.acp1
# p_lights.c:81:     flick->sector = sector;
	.loc 1 81 19
	movq	-8(%rbp), %rax	# flick, tmp93
	movq	-24(%rbp), %rdx	# sector, tmp94
	movq	%rdx, 24(%rax)	# tmp94, flick_12->sector
# p_lights.c:82:     flick->maxlight = sector->lightlevel;
	.loc 1 82 29
	movq	-24(%rbp), %rax	# sector, tmp95
	movzwl	12(%rax), %eax	# sector_9(D)->lightlevel, _2
	movswl	%ax, %edx	# _2, _3
# p_lights.c:82:     flick->maxlight = sector->lightlevel;
	.loc 1 82 21
	movq	-8(%rbp), %rax	# flick, tmp96
	movl	%edx, 36(%rax)	# _3, flick_12->maxlight
# p_lights.c:83:     flick->minlight = P_FindMinSurroundingLight(sector,sector->lightlevel)+16;
	.loc 1 83 62
	movq	-24(%rbp), %rax	# sector, tmp97
	movzwl	12(%rax), %eax	# sector_9(D)->lightlevel, _4
# p_lights.c:83:     flick->minlight = P_FindMinSurroundingLight(sector,sector->lightlevel)+16;
	.loc 1 83 23
	movswl	%ax, %edx	# _4, _5
	movq	-24(%rbp), %rax	# sector, tmp98
	movl	%edx, %esi	# _5,
	movq	%rax, %rdi	# tmp98,
	call	P_FindMinSurroundingLight@PLT	#
# p_lights.c:83:     flick->minlight = P_FindMinSurroundingLight(sector,sector->lightlevel)+16;
	.loc 1 83 75 discriminator 1
	leal	16(%rax), %edx	#, _7
# p_lights.c:83:     flick->minlight = P_FindMinSurroundingLight(sector,sector->lightlevel)+16;
	.loc 1 83 21 discriminator 1
	movq	-8(%rbp), %rax	# flick, tmp99
	movl	%edx, 40(%rax)	# _7, flick_12->minlight
# p_lights.c:84:     flick->count = 4;
	.loc 1 84 18
	movq	-8(%rbp), %rax	# flick, tmp100
	movl	$4, 32(%rax)	#, flick_12->count
# p_lights.c:85: }
	.loc 1 85 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	P_SpawnFireFlicker, .-P_SpawnFireFlicker
	.globl	T_LightFlash
	.type	T_LightFlash, @function
T_LightFlash:
.LFB2:
	.loc 1 99 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# flash, flash
# p_lights.c:100:     if (--flash->count)
	.loc 1 100 16
	movq	-8(%rbp), %rax	# flash, tmp103
	movl	32(%rax), %eax	# flash_24(D)->count, _1
# p_lights.c:100:     if (--flash->count)
	.loc 1 100 9
	leal	-1(%rax), %edx	#, _2
# p_lights.c:100:     if (--flash->count)
	.loc 1 100 8
	movq	-8(%rbp), %rax	# flash, tmp104
	movl	%edx, 32(%rax)	# _2, flash_24(D)->count
# p_lights.c:100:     if (--flash->count)
	.loc 1 100 16
	movq	-8(%rbp), %rax	# flash, tmp105
	movl	32(%rax), %eax	# flash_24(D)->count, _3
# p_lights.c:100:     if (--flash->count)
	.loc 1 100 8
	testl	%eax, %eax	# _3
	jne	.L12	#,
# p_lights.c:103:     if (flash->sector->lightlevel == flash->maxlight)
	.loc 1 103 14
	movq	-8(%rbp), %rax	# flash, tmp106
	movq	24(%rax), %rax	# flash_24(D)->sector, _4
# p_lights.c:103:     if (flash->sector->lightlevel == flash->maxlight)
	.loc 1 103 22
	movzwl	12(%rax), %eax	# _4->lightlevel, _5
	movswl	%ax, %edx	# _5, _6
# p_lights.c:103:     if (flash->sector->lightlevel == flash->maxlight)
	.loc 1 103 43
	movq	-8(%rbp), %rax	# flash, tmp107
	movl	36(%rax), %eax	# flash_24(D)->maxlight, _7
# p_lights.c:103:     if (flash->sector->lightlevel == flash->maxlight)
	.loc 1 103 8
	cmpl	%eax, %edx	# _7, _6
	jne	.L11	#,
# p_lights.c:105: 	flash-> sector->lightlevel = flash->minlight;
	.loc 1 105 36
	movq	-8(%rbp), %rax	# flash, tmp108
	movl	40(%rax), %edx	# flash_24(D)->minlight, _8
# p_lights.c:105: 	flash-> sector->lightlevel = flash->minlight;
	.loc 1 105 7
	movq	-8(%rbp), %rax	# flash, tmp109
	movq	24(%rax), %rax	# flash_24(D)->sector, _9
# p_lights.c:105: 	flash-> sector->lightlevel = flash->minlight;
	.loc 1 105 29
	movw	%dx, 12(%rax)	# _10, _9->lightlevel
# p_lights.c:106: 	flash->count = (P_Random()&flash->mintime)+1;
	.loc 1 106 18
	call	P_Random@PLT	#
# p_lights.c:106: 	flash->count = (P_Random()&flash->mintime)+1;
	.loc 1 106 34 discriminator 1
	movq	-8(%rbp), %rdx	# flash, tmp110
	movl	48(%rdx), %edx	# flash_24(D)->mintime, _12
# p_lights.c:106: 	flash->count = (P_Random()&flash->mintime)+1;
	.loc 1 106 28 discriminator 1
	andl	%edx, %eax	# _12, _13
# p_lights.c:106: 	flash->count = (P_Random()&flash->mintime)+1;
	.loc 1 106 44 discriminator 1
	leal	1(%rax), %edx	#, _14
# p_lights.c:106: 	flash->count = (P_Random()&flash->mintime)+1;
	.loc 1 106 15 discriminator 1
	movq	-8(%rbp), %rax	# flash, tmp111
	movl	%edx, 32(%rax)	# _14, flash_24(D)->count
	jmp	.L8	#
.L11:
# p_lights.c:110: 	flash-> sector->lightlevel = flash->maxlight;
	.loc 1 110 36
	movq	-8(%rbp), %rax	# flash, tmp112
	movl	36(%rax), %edx	# flash_24(D)->maxlight, _15
# p_lights.c:110: 	flash-> sector->lightlevel = flash->maxlight;
	.loc 1 110 7
	movq	-8(%rbp), %rax	# flash, tmp113
	movq	24(%rax), %rax	# flash_24(D)->sector, _16
# p_lights.c:110: 	flash-> sector->lightlevel = flash->maxlight;
	.loc 1 110 29
	movw	%dx, 12(%rax)	# _17, _16->lightlevel
# p_lights.c:111: 	flash->count = (P_Random()&flash->maxtime)+1;
	.loc 1 111 18
	call	P_Random@PLT	#
# p_lights.c:111: 	flash->count = (P_Random()&flash->maxtime)+1;
	.loc 1 111 34 discriminator 1
	movq	-8(%rbp), %rdx	# flash, tmp114
	movl	44(%rdx), %edx	# flash_24(D)->maxtime, _19
# p_lights.c:111: 	flash->count = (P_Random()&flash->maxtime)+1;
	.loc 1 111 28 discriminator 1
	andl	%edx, %eax	# _19, _20
# p_lights.c:111: 	flash->count = (P_Random()&flash->maxtime)+1;
	.loc 1 111 44 discriminator 1
	leal	1(%rax), %edx	#, _21
# p_lights.c:111: 	flash->count = (P_Random()&flash->maxtime)+1;
	.loc 1 111 15 discriminator 1
	movq	-8(%rbp), %rax	# flash, tmp115
	movl	%edx, 32(%rax)	# _21, flash_24(D)->count
	jmp	.L8	#
.L12:
# p_lights.c:101: 	return;
	.loc 1 101 2
	nop	
.L8:
# p_lights.c:114: }
	.loc 1 114 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	T_LightFlash, .-T_LightFlash
	.globl	P_SpawnLightFlash
	.type	P_SpawnLightFlash, @function
P_SpawnLightFlash:
.LFB3:
	.loc 1 125 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# sector, sector
# p_lights.c:129:     sector->special = 0;	
	.loc 1 129 21
	movq	-24(%rbp), %rax	# sector, tmp92
	movw	$0, 14(%rax)	#, sector_12(D)->special
# p_lights.c:131:     flash = Z_Malloc ( sizeof(*flash), PU_LEVSPEC, 0);
	.loc 1 131 13
	movl	$0, %edx	#,
	movl	$51, %esi	#,
	movl	$56, %edi	#,
	call	Z_Malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp93, flash
# p_lights.c:133:     P_AddThinker (&flash->thinker);
	.loc 1 133 5
	movq	-8(%rbp), %rax	# flash, _1
	movq	%rax, %rdi	# _1,
	call	P_AddThinker@PLT	#
# p_lights.c:135:     flash->thinker.function.acp1 = (actionf_p1) T_LightFlash;
	.loc 1 135 34
	movq	-8(%rbp), %rax	# flash, tmp94
	leaq	T_LightFlash(%rip), %rdx	#, tmp95
	movq	%rdx, 16(%rax)	# tmp95, flash_15->thinker.function.acp1
# p_lights.c:136:     flash->sector = sector;
	.loc 1 136 19
	movq	-8(%rbp), %rax	# flash, tmp96
	movq	-24(%rbp), %rdx	# sector, tmp97
	movq	%rdx, 24(%rax)	# tmp97, flash_15->sector
# p_lights.c:137:     flash->maxlight = sector->lightlevel;
	.loc 1 137 29
	movq	-24(%rbp), %rax	# sector, tmp98
	movzwl	12(%rax), %eax	# sector_12(D)->lightlevel, _2
	movswl	%ax, %edx	# _2, _3
# p_lights.c:137:     flash->maxlight = sector->lightlevel;
	.loc 1 137 21
	movq	-8(%rbp), %rax	# flash, tmp99
	movl	%edx, 36(%rax)	# _3, flash_15->maxlight
# p_lights.c:139:     flash->minlight = P_FindMinSurroundingLight(sector,sector->lightlevel);
	.loc 1 139 62
	movq	-24(%rbp), %rax	# sector, tmp100
	movzwl	12(%rax), %eax	# sector_12(D)->lightlevel, _4
# p_lights.c:139:     flash->minlight = P_FindMinSurroundingLight(sector,sector->lightlevel);
	.loc 1 139 23
	movswl	%ax, %edx	# _4, _5
	movq	-24(%rbp), %rax	# sector, tmp101
	movl	%edx, %esi	# _5,
	movq	%rax, %rdi	# tmp101,
	call	P_FindMinSurroundingLight@PLT	#
# p_lights.c:139:     flash->minlight = P_FindMinSurroundingLight(sector,sector->lightlevel);
	.loc 1 139 21 discriminator 1
	movq	-8(%rbp), %rdx	# flash, tmp102
	movl	%eax, 40(%rdx)	# _6, flash_15->minlight
# p_lights.c:140:     flash->maxtime = 64;
	.loc 1 140 20
	movq	-8(%rbp), %rax	# flash, tmp103
	movl	$64, 44(%rax)	#, flash_15->maxtime
# p_lights.c:141:     flash->mintime = 7;
	.loc 1 141 20
	movq	-8(%rbp), %rax	# flash, tmp104
	movl	$7, 48(%rax)	#, flash_15->mintime
# p_lights.c:142:     flash->count = (P_Random()&flash->maxtime)+1;
	.loc 1 142 21
	call	P_Random@PLT	#
# p_lights.c:142:     flash->count = (P_Random()&flash->maxtime)+1;
	.loc 1 142 37 discriminator 1
	movq	-8(%rbp), %rdx	# flash, tmp105
	movl	44(%rdx), %edx	# flash_15->maxtime, _8
# p_lights.c:142:     flash->count = (P_Random()&flash->maxtime)+1;
	.loc 1 142 31 discriminator 1
	andl	%edx, %eax	# _8, _9
# p_lights.c:142:     flash->count = (P_Random()&flash->maxtime)+1;
	.loc 1 142 47 discriminator 1
	leal	1(%rax), %edx	#, _10
# p_lights.c:142:     flash->count = (P_Random()&flash->maxtime)+1;
	.loc 1 142 18 discriminator 1
	movq	-8(%rbp), %rax	# flash, tmp106
	movl	%edx, 32(%rax)	# _10, flash_15->count
# p_lights.c:143: }
	.loc 1 143 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3:
	.size	P_SpawnLightFlash, .-P_SpawnLightFlash
	.globl	T_StrobeFlash
	.type	T_StrobeFlash, @function
T_StrobeFlash:
.LFB4:
	.loc 1 156 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# flash, flash
# p_lights.c:157:     if (--flash->count)
	.loc 1 157 16
	movq	-8(%rbp), %rax	# flash, tmp97
	movl	32(%rax), %eax	# flash_18(D)->count, _1
# p_lights.c:157:     if (--flash->count)
	.loc 1 157 9
	leal	-1(%rax), %edx	#, _2
# p_lights.c:157:     if (--flash->count)
	.loc 1 157 8
	movq	-8(%rbp), %rax	# flash, tmp98
	movl	%edx, 32(%rax)	# _2, flash_18(D)->count
# p_lights.c:157:     if (--flash->count)
	.loc 1 157 16
	movq	-8(%rbp), %rax	# flash, tmp99
	movl	32(%rax), %eax	# flash_18(D)->count, _3
# p_lights.c:157:     if (--flash->count)
	.loc 1 157 8
	testl	%eax, %eax	# _3
	jne	.L18	#,
# p_lights.c:160:     if (flash->sector->lightlevel == flash->minlight)
	.loc 1 160 14
	movq	-8(%rbp), %rax	# flash, tmp100
	movq	24(%rax), %rax	# flash_18(D)->sector, _4
# p_lights.c:160:     if (flash->sector->lightlevel == flash->minlight)
	.loc 1 160 22
	movzwl	12(%rax), %eax	# _4->lightlevel, _5
	movswl	%ax, %edx	# _5, _6
# p_lights.c:160:     if (flash->sector->lightlevel == flash->minlight)
	.loc 1 160 43
	movq	-8(%rbp), %rax	# flash, tmp101
	movl	36(%rax), %eax	# flash_18(D)->minlight, _7
# p_lights.c:160:     if (flash->sector->lightlevel == flash->minlight)
	.loc 1 160 8
	cmpl	%eax, %edx	# _7, _6
	jne	.L17	#,
# p_lights.c:162: 	flash-> sector->lightlevel = flash->maxlight;
	.loc 1 162 36
	movq	-8(%rbp), %rax	# flash, tmp102
	movl	40(%rax), %edx	# flash_18(D)->maxlight, _8
# p_lights.c:162: 	flash-> sector->lightlevel = flash->maxlight;
	.loc 1 162 7
	movq	-8(%rbp), %rax	# flash, tmp103
	movq	24(%rax), %rax	# flash_18(D)->sector, _9
# p_lights.c:162: 	flash-> sector->lightlevel = flash->maxlight;
	.loc 1 162 29
	movw	%dx, 12(%rax)	# _10, _9->lightlevel
# p_lights.c:163: 	flash->count = flash->brighttime;
	.loc 1 163 22
	movq	-8(%rbp), %rax	# flash, tmp104
	movl	48(%rax), %edx	# flash_18(D)->brighttime, _11
# p_lights.c:163: 	flash->count = flash->brighttime;
	.loc 1 163 15
	movq	-8(%rbp), %rax	# flash, tmp105
	movl	%edx, 32(%rax)	# _11, flash_18(D)->count
	jmp	.L14	#
.L17:
# p_lights.c:167: 	flash-> sector->lightlevel = flash->minlight;
	.loc 1 167 36
	movq	-8(%rbp), %rax	# flash, tmp106
	movl	36(%rax), %edx	# flash_18(D)->minlight, _12
# p_lights.c:167: 	flash-> sector->lightlevel = flash->minlight;
	.loc 1 167 7
	movq	-8(%rbp), %rax	# flash, tmp107
	movq	24(%rax), %rax	# flash_18(D)->sector, _13
# p_lights.c:167: 	flash-> sector->lightlevel = flash->minlight;
	.loc 1 167 29
	movw	%dx, 12(%rax)	# _14, _13->lightlevel
# p_lights.c:168: 	flash->count =flash->darktime;
	.loc 1 168 21
	movq	-8(%rbp), %rax	# flash, tmp108
	movl	44(%rax), %edx	# flash_18(D)->darktime, _15
# p_lights.c:168: 	flash->count =flash->darktime;
	.loc 1 168 15
	movq	-8(%rbp), %rax	# flash, tmp109
	movl	%edx, 32(%rax)	# _15, flash_18(D)->count
	jmp	.L14	#
.L18:
# p_lights.c:158: 	return;
	.loc 1 158 2
	nop	
.L14:
# p_lights.c:171: }
	.loc 1 171 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4:
	.size	T_StrobeFlash, .-T_StrobeFlash
	.globl	P_SpawnStrobeFlash
	.type	P_SpawnStrobeFlash, @function
P_SpawnStrobeFlash:
.LFB5:
	.loc 1 185 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# sector, sector
	movl	%esi, -28(%rbp)	# fastOrSlow, fastOrSlow
	movl	%edx, -32(%rbp)	# inSync, inSync
# p_lights.c:188:     flash = Z_Malloc ( sizeof(*flash), PU_LEVSPEC, 0);
	.loc 1 188 13
	movl	$0, %edx	#,
	movl	$51, %esi	#,
	movl	$56, %edi	#,
	call	Z_Malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp93, flash
# p_lights.c:190:     P_AddThinker (&flash->thinker);
	.loc 1 190 5
	movq	-8(%rbp), %rax	# flash, _1
	movq	%rax, %rdi	# _1,
	call	P_AddThinker@PLT	#
# p_lights.c:192:     flash->sector = sector;
	.loc 1 192 19
	movq	-8(%rbp), %rax	# flash, tmp94
	movq	-24(%rbp), %rdx	# sector, tmp95
	movq	%rdx, 24(%rax)	# tmp95, flash_16->sector
# p_lights.c:193:     flash->darktime = fastOrSlow;
	.loc 1 193 21
	movq	-8(%rbp), %rax	# flash, tmp96
	movl	-28(%rbp), %edx	# fastOrSlow, tmp97
	movl	%edx, 44(%rax)	# tmp97, flash_16->darktime
# p_lights.c:194:     flash->brighttime = STROBEBRIGHT;
	.loc 1 194 23
	movq	-8(%rbp), %rax	# flash, tmp98
	movl	$5, 48(%rax)	#, flash_16->brighttime
# p_lights.c:195:     flash->thinker.function.acp1 = (actionf_p1) T_StrobeFlash;
	.loc 1 195 34
	movq	-8(%rbp), %rax	# flash, tmp99
	leaq	T_StrobeFlash(%rip), %rdx	#, tmp100
	movq	%rdx, 16(%rax)	# tmp100, flash_16->thinker.function.acp1
# p_lights.c:196:     flash->maxlight = sector->lightlevel;
	.loc 1 196 29
	movq	-24(%rbp), %rax	# sector, tmp101
	movzwl	12(%rax), %eax	# sector_18(D)->lightlevel, _2
	movswl	%ax, %edx	# _2, _3
# p_lights.c:196:     flash->maxlight = sector->lightlevel;
	.loc 1 196 21
	movq	-8(%rbp), %rax	# flash, tmp102
	movl	%edx, 40(%rax)	# _3, flash_16->maxlight
# p_lights.c:197:     flash->minlight = P_FindMinSurroundingLight(sector, sector->lightlevel);
	.loc 1 197 63
	movq	-24(%rbp), %rax	# sector, tmp103
	movzwl	12(%rax), %eax	# sector_18(D)->lightlevel, _4
# p_lights.c:197:     flash->minlight = P_FindMinSurroundingLight(sector, sector->lightlevel);
	.loc 1 197 23
	movswl	%ax, %edx	# _4, _5
	movq	-24(%rbp), %rax	# sector, tmp104
	movl	%edx, %esi	# _5,
	movq	%rax, %rdi	# tmp104,
	call	P_FindMinSurroundingLight@PLT	#
# p_lights.c:197:     flash->minlight = P_FindMinSurroundingLight(sector, sector->lightlevel);
	.loc 1 197 21 discriminator 1
	movq	-8(%rbp), %rdx	# flash, tmp105
	movl	%eax, 36(%rdx)	# _6, flash_16->minlight
# p_lights.c:199:     if (flash->minlight == flash->maxlight)
	.loc 1 199 14
	movq	-8(%rbp), %rax	# flash, tmp106
	movl	36(%rax), %edx	# flash_16->minlight, _7
# p_lights.c:199:     if (flash->minlight == flash->maxlight)
	.loc 1 199 33
	movq	-8(%rbp), %rax	# flash, tmp107
	movl	40(%rax), %eax	# flash_16->maxlight, _8
# p_lights.c:199:     if (flash->minlight == flash->maxlight)
	.loc 1 199 8
	cmpl	%eax, %edx	# _8, _7
	jne	.L20	#,
# p_lights.c:200: 	flash->minlight = 0;
	.loc 1 200 18
	movq	-8(%rbp), %rax	# flash, tmp108
	movl	$0, 36(%rax)	#, flash_16->minlight
.L20:
# p_lights.c:203:     sector->special = 0;	
	.loc 1 203 21
	movq	-24(%rbp), %rax	# sector, tmp109
	movw	$0, 14(%rax)	#, sector_18(D)->special
# p_lights.c:205:     if (!inSync)
	.loc 1 205 8
	cmpl	$0, -32(%rbp)	#, inSync
	jne	.L21	#,
# p_lights.c:206: 	flash->count = (P_Random()&7)+1;
	.loc 1 206 18
	call	P_Random@PLT	#
# p_lights.c:206: 	flash->count = (P_Random()&7)+1;
	.loc 1 206 28 discriminator 1
	andl	$7, %eax	#, _10
# p_lights.c:206: 	flash->count = (P_Random()&7)+1;
	.loc 1 206 31 discriminator 1
	leal	1(%rax), %edx	#, _11
# p_lights.c:206: 	flash->count = (P_Random()&7)+1;
	.loc 1 206 15 discriminator 1
	movq	-8(%rbp), %rax	# flash, tmp110
	movl	%edx, 32(%rax)	# _11, flash_16->count
# p_lights.c:209: }
	.loc 1 209 1
	jmp	.L23	#
.L21:
# p_lights.c:208: 	flash->count = 1;
	.loc 1 208 15
	movq	-8(%rbp), %rax	# flash, tmp111
	movl	$1, 32(%rax)	#, flash_16->count
.L23:
# p_lights.c:209: }
	.loc 1 209 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5:
	.size	P_SpawnStrobeFlash, .-P_SpawnStrobeFlash
	.globl	EV_StartLightStrobing
	.type	EV_StartLightStrobing, @function
EV_StartLightStrobing:
.LFB6:
	.loc 1 216 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# line, line
# p_lights.c:220:     secnum = -1;
	.loc 1 220 12
	movl	$-1, -12(%rbp)	#, secnum
# p_lights.c:221:     while ((secnum = P_FindSectorFromLineTag(line,secnum)) >= 0)
	.loc 1 221 11
	jmp	.L25	#
.L28:
# p_lights.c:223: 	sec = &sectors[secnum];
	.loc 1 223 8
	movq	sectors(%rip), %rax	# sectors, sectors.0_1
# p_lights.c:223: 	sec = &sectors[secnum];
	.loc 1 223 16
	movl	-12(%rbp), %edx	# secnum, tmp86
	movslq	%edx, %rdx	# tmp86, _2
	salq	$7, %rdx	#, _3
# p_lights.c:223: 	sec = &sectors[secnum];
	.loc 1 223 6
	addq	%rdx, %rax	# _3, tmp87
	movq	%rax, -8(%rbp)	# tmp87, sec
# p_lights.c:224: 	if (sec->specialdata)
	.loc 1 224 9
	movq	-8(%rbp), %rax	# sec, tmp88
	movq	104(%rax), %rax	# sec_12->specialdata, _4
# p_lights.c:224: 	if (sec->specialdata)
	.loc 1 224 5
	testq	%rax, %rax	# _4
	jne	.L29	#,
# p_lights.c:227: 	P_SpawnStrobeFlash (sec,SLOWDARK, 0);
	.loc 1 227 2
	movq	-8(%rbp), %rax	# sec, tmp89
	movl	$0, %edx	#,
	movl	$35, %esi	#,
	movq	%rax, %rdi	# tmp89,
	call	P_SpawnStrobeFlash	#
	jmp	.L25	#
.L29:
# p_lights.c:225: 	    continue;
	.loc 1 225 6
	nop	
.L25:
# p_lights.c:221:     while ((secnum = P_FindSectorFromLineTag(line,secnum)) >= 0)
	.loc 1 221 22
	movl	-12(%rbp), %edx	# secnum, tmp90
	movq	-24(%rbp), %rax	# line, tmp91
	movl	%edx, %esi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	P_FindSectorFromLineTag@PLT	#
	movl	%eax, -12(%rbp)	# tmp92, secnum
# p_lights.c:221:     while ((secnum = P_FindSectorFromLineTag(line,secnum)) >= 0)
	.loc 1 221 60 discriminator 1
	cmpl	$0, -12(%rbp)	#, secnum
	jns	.L28	#,
# p_lights.c:229: }
	.loc 1 229 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	EV_StartLightStrobing, .-EV_StartLightStrobing
	.globl	EV_TurnTagLightsOff
	.type	EV_TurnTagLightsOff, @function
EV_TurnTagLightsOff:
.LFB7:
	.loc 1 237 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# line, line
# p_lights.c:245:     sector = sectors;
	.loc 1 245 12
	movq	sectors(%rip), %rax	# sectors, tmp95
	movq	%rax, -24(%rbp)	# tmp95, sector
# p_lights.c:247:     for (j = 0;j < numsectors; j++, sector++)
	.loc 1 247 12
	movl	$0, -32(%rbp)	#, j
# p_lights.c:247:     for (j = 0;j < numsectors; j++, sector++)
	.loc 1 247 5
	jmp	.L31	#
.L37:
# p_lights.c:249: 	if (sector->tag == line->tag)
	.loc 1 249 12
	movq	-24(%rbp), %rax	# sector, tmp96
	movzwl	16(%rax), %edx	# sector_18->tag, _1
# p_lights.c:249: 	if (sector->tag == line->tag)
	.loc 1 249 25
	movq	-56(%rbp), %rax	# line, tmp97
	movzwl	28(%rax), %eax	# line_25(D)->tag, _2
# p_lights.c:249: 	if (sector->tag == line->tag)
	.loc 1 249 5
	cmpw	%ax, %dx	# _2, _1
	jne	.L32	#,
# p_lights.c:251: 	    min = sector->lightlevel;
	.loc 1 251 18
	movq	-24(%rbp), %rax	# sector, tmp98
	movzwl	12(%rax), %eax	# sector_18->lightlevel, _3
# p_lights.c:251: 	    min = sector->lightlevel;
	.loc 1 251 10
	cwtl
	movl	%eax, -28(%rbp)	# tmp99, min
# p_lights.c:252: 	    for (i = 0;i < sector->linecount; i++)
	.loc 1 252 13
	movl	$0, -36(%rbp)	#, i
# p_lights.c:252: 	    for (i = 0;i < sector->linecount; i++)
	.loc 1 252 6
	jmp	.L33	#
.L36:
# p_lights.c:254: 		templine = sector->lines[i];
	.loc 1 254 20
	movq	-24(%rbp), %rax	# sector, tmp100
	movq	120(%rax), %rax	# sector_18->lines, _4
# p_lights.c:254: 		templine = sector->lines[i];
	.loc 1 254 27
	movl	-36(%rbp), %edx	# i, tmp101
	movslq	%edx, %rdx	# tmp101, _5
	salq	$3, %rdx	#, _6
	addq	%rdx, %rax	# _6, _7
# p_lights.c:254: 		templine = sector->lines[i];
	.loc 1 254 12
	movq	(%rax), %rax	# *_7, tmp102
	movq	%rax, -16(%rbp)	# tmp102, templine
# p_lights.c:255: 		tsec = getNextSector(templine,sector);
	.loc 1 255 10
	movq	-24(%rbp), %rdx	# sector, tmp103
	movq	-16(%rbp), %rax	# templine, tmp104
	movq	%rdx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	getNextSector@PLT	#
	movq	%rax, -8(%rbp)	# tmp105, tsec
# p_lights.c:256: 		if (!tsec)
	.loc 1 256 6
	cmpq	$0, -8(%rbp)	#, tsec
	je	.L38	#,
# p_lights.c:258: 		if (tsec->lightlevel < min)
	.loc 1 258 11
	movq	-8(%rbp), %rax	# tsec, tmp106
	movzwl	12(%rax), %eax	# tsec_31->lightlevel, _8
	cwtl
# p_lights.c:258: 		if (tsec->lightlevel < min)
	.loc 1 258 6
	cmpl	%eax, -28(%rbp)	# _9, min
	jle	.L35	#,
# p_lights.c:259: 		    min = tsec->lightlevel;
	.loc 1 259 17
	movq	-8(%rbp), %rax	# tsec, tmp107
	movzwl	12(%rax), %eax	# tsec_31->lightlevel, _10
# p_lights.c:259: 		    min = tsec->lightlevel;
	.loc 1 259 11
	cwtl
	movl	%eax, -28(%rbp)	# tmp108, min
	jmp	.L35	#
.L38:
# p_lights.c:257: 		    continue;
	.loc 1 257 7
	nop	
.L35:
# p_lights.c:252: 	    for (i = 0;i < sector->linecount; i++)
	.loc 1 252 41 discriminator 2
	addl	$1, -36(%rbp)	#, i
.L33:
# p_lights.c:252: 	    for (i = 0;i < sector->linecount; i++)
	.loc 1 252 27 discriminator 1
	movq	-24(%rbp), %rax	# sector, tmp109
	movl	112(%rax), %eax	# sector_18->linecount, _11
# p_lights.c:252: 	    for (i = 0;i < sector->linecount; i++)
	.loc 1 252 19 discriminator 1
	cmpl	%eax, -36(%rbp)	# _11, i
	jl	.L36	#,
# p_lights.c:261: 	    sector->lightlevel = min;
	.loc 1 261 25
	movl	-28(%rbp), %eax	# min, tmp110
	movl	%eax, %edx	# tmp110, _12
	movq	-24(%rbp), %rax	# sector, tmp111
	movw	%dx, 12(%rax)	# _12, sector_18->lightlevel
.L32:
# p_lights.c:247:     for (j = 0;j < numsectors; j++, sector++)
	.loc 1 247 33 discriminator 2
	addl	$1, -32(%rbp)	#, j
# p_lights.c:247:     for (j = 0;j < numsectors; j++, sector++)
	.loc 1 247 43 discriminator 2
	subq	$-128, -24(%rbp)	#, sector
.L31:
# p_lights.c:247:     for (j = 0;j < numsectors; j++, sector++)
	.loc 1 247 18 discriminator 1
	movl	numsectors(%rip), %eax	# numsectors, numsectors.1_13
	cmpl	%eax, -32(%rbp)	# numsectors.1_13, j
	jl	.L37	#,
# p_lights.c:264: }
	.loc 1 264 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	EV_TurnTagLightsOff, .-EV_TurnTagLightsOff
	.globl	EV_LightTurnOn
	.type	EV_LightTurnOn, @function
EV_LightTurnOn:
.LFB8:
	.loc 1 274 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# line, line
	movl	%esi, -44(%rbp)	# bright, bright
# p_lights.c:281:     sector = sectors;
	.loc 1 281 12
	movq	sectors(%rip), %rax	# sectors, tmp94
	movq	%rax, -24(%rbp)	# tmp94, sector
# p_lights.c:283:     for (i=0;i<numsectors;i++, sector++)
	.loc 1 283 11
	movl	$0, -32(%rbp)	#, i
# p_lights.c:283:     for (i=0;i<numsectors;i++, sector++)
	.loc 1 283 5
	jmp	.L40	#
.L47:
# p_lights.c:285: 	if (sector->tag == line->tag)
	.loc 1 285 12
	movq	-24(%rbp), %rax	# sector, tmp95
	movzwl	16(%rax), %edx	# sector_20->tag, _1
# p_lights.c:285: 	if (sector->tag == line->tag)
	.loc 1 285 25
	movq	-40(%rbp), %rax	# line, tmp96
	movzwl	28(%rax), %eax	# line_29(D)->tag, _2
# p_lights.c:285: 	if (sector->tag == line->tag)
	.loc 1 285 5
	cmpw	%ax, %dx	# _2, _1
	jne	.L41	#,
# p_lights.c:290: 	    if (!bright)
	.loc 1 290 9
	cmpl	$0, -44(%rbp)	#, bright
	jne	.L42	#,
# p_lights.c:292: 		for (j = 0;j < sector->linecount; j++)
	.loc 1 292 10
	movl	$0, -28(%rbp)	#, j
# p_lights.c:292: 		for (j = 0;j < sector->linecount; j++)
	.loc 1 292 3
	jmp	.L43	#
.L46:
# p_lights.c:294: 		    templine = sector->lines[j];
	.loc 1 294 24
	movq	-24(%rbp), %rax	# sector, tmp97
	movq	120(%rax), %rax	# sector_20->lines, _3
# p_lights.c:294: 		    templine = sector->lines[j];
	.loc 1 294 31
	movl	-28(%rbp), %edx	# j, tmp98
	movslq	%edx, %rdx	# tmp98, _4
	salq	$3, %rdx	#, _5
	addq	%rdx, %rax	# _5, _6
# p_lights.c:294: 		    templine = sector->lines[j];
	.loc 1 294 16
	movq	(%rax), %rax	# *_6, tmp99
	movq	%rax, -16(%rbp)	# tmp99, templine
# p_lights.c:295: 		    temp = getNextSector(templine,sector);
	.loc 1 295 14
	movq	-24(%rbp), %rdx	# sector, tmp100
	movq	-16(%rbp), %rax	# templine, tmp101
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	getNextSector@PLT	#
	movq	%rax, -8(%rbp)	# tmp102, temp
# p_lights.c:297: 		    if (!temp)
	.loc 1 297 10
	cmpq	$0, -8(%rbp)	#, temp
	je	.L48	#,
# p_lights.c:300: 		    if (temp->lightlevel > bright)
	.loc 1 300 15
	movq	-8(%rbp), %rax	# temp, tmp103
	movzwl	12(%rax), %eax	# temp_33->lightlevel, _7
	cwtl
# p_lights.c:300: 		    if (temp->lightlevel > bright)
	.loc 1 300 10
	cmpl	%eax, -44(%rbp)	# _8, bright
	jge	.L45	#,
# p_lights.c:301: 			bright = temp->lightlevel;
	.loc 1 301 17
	movq	-8(%rbp), %rax	# temp, tmp104
	movzwl	12(%rax), %eax	# temp_33->lightlevel, _9
# p_lights.c:301: 			bright = temp->lightlevel;
	.loc 1 301 11
	cwtl
	movl	%eax, -44(%rbp)	# tmp105, bright
	jmp	.L45	#
.L48:
# p_lights.c:298: 			continue;
	.loc 1 298 4
	nop	
.L45:
# p_lights.c:292: 		for (j = 0;j < sector->linecount; j++)
	.loc 1 292 38 discriminator 2
	addl	$1, -28(%rbp)	#, j
.L43:
# p_lights.c:292: 		for (j = 0;j < sector->linecount; j++)
	.loc 1 292 24 discriminator 1
	movq	-24(%rbp), %rax	# sector, tmp106
	movl	112(%rax), %eax	# sector_20->linecount, _10
# p_lights.c:292: 		for (j = 0;j < sector->linecount; j++)
	.loc 1 292 16 discriminator 1
	cmpl	%eax, -28(%rbp)	# _10, j
	jl	.L46	#,
.L42:
# p_lights.c:304: 	    sector-> lightlevel = bright;
	.loc 1 304 26
	movl	-44(%rbp), %eax	# bright, tmp107
	movl	%eax, %edx	# tmp107, _11
	movq	-24(%rbp), %rax	# sector, tmp108
	movw	%dx, 12(%rax)	# _11, sector_20->lightlevel
.L41:
# p_lights.c:283:     for (i=0;i<numsectors;i++, sector++)
	.loc 1 283 28 discriminator 2
	addl	$1, -32(%rbp)	#, i
# p_lights.c:283:     for (i=0;i<numsectors;i++, sector++)
	.loc 1 283 38 discriminator 2
	subq	$-128, -24(%rbp)	#, sector
.L40:
# p_lights.c:283:     for (i=0;i<numsectors;i++, sector++)
	.loc 1 283 15 discriminator 1
	movl	numsectors(%rip), %eax	# numsectors, numsectors.2_12
	cmpl	%eax, -32(%rbp)	# numsectors.2_12, i
	jl	.L47	#,
# p_lights.c:307: }
	.loc 1 307 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	EV_LightTurnOn, .-EV_LightTurnOn
	.globl	T_Glow
	.type	T_Glow, @function
T_Glow:
.LFB9:
	.loc 1 315 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# g, g
# p_lights.c:316:     switch(g->direction)
	.loc 1 316 13
	movq	-8(%rbp), %rax	# g, tmp115
	movl	40(%rax), %eax	# g_38(D)->direction, _1
# p_lights.c:316:     switch(g->direction)
	.loc 1 316 5
	cmpl	$-1, %eax	#, _1
	je	.L50	#,
	cmpl	$1, %eax	#, _1
	je	.L51	#,
# p_lights.c:338: }
	.loc 1 338 1
	jmp	.L57	#
.L50:
# p_lights.c:320: 	g->sector->lightlevel -= GLOWSPEED;
	.loc 1 320 3
	movq	-8(%rbp), %rax	# g, tmp116
	movq	24(%rax), %rax	# g_38(D)->sector, _2
# p_lights.c:320: 	g->sector->lightlevel -= GLOWSPEED;
	.loc 1 320 11
	movzwl	12(%rax), %eax	# _2->lightlevel, _3
# p_lights.c:320: 	g->sector->lightlevel -= GLOWSPEED;
	.loc 1 320 24
	leal	-8(%rax), %edx	#, _5
# p_lights.c:320: 	g->sector->lightlevel -= GLOWSPEED;
	.loc 1 320 3
	movq	-8(%rbp), %rax	# g, tmp117
	movq	24(%rax), %rax	# g_38(D)->sector, _6
# p_lights.c:320: 	g->sector->lightlevel -= GLOWSPEED;
	.loc 1 320 24
	movw	%dx, 12(%rax)	# _7, _6->lightlevel
# p_lights.c:321: 	if (g->sector->lightlevel <= g->minlight)
	.loc 1 321 7
	movq	-8(%rbp), %rax	# g, tmp118
	movq	24(%rax), %rax	# g_38(D)->sector, _8
# p_lights.c:321: 	if (g->sector->lightlevel <= g->minlight)
	.loc 1 321 15
	movzwl	12(%rax), %eax	# _8->lightlevel, _9
	movswl	%ax, %edx	# _9, _10
# p_lights.c:321: 	if (g->sector->lightlevel <= g->minlight)
	.loc 1 321 32
	movq	-8(%rbp), %rax	# g, tmp119
	movl	32(%rax), %eax	# g_38(D)->minlight, _11
# p_lights.c:321: 	if (g->sector->lightlevel <= g->minlight)
	.loc 1 321 5
	cmpl	%eax, %edx	# _11, _10
	jg	.L55	#,
# p_lights.c:323: 	    g->sector->lightlevel += GLOWSPEED;
	.loc 1 323 7
	movq	-8(%rbp), %rax	# g, tmp120
	movq	24(%rax), %rax	# g_38(D)->sector, _12
# p_lights.c:323: 	    g->sector->lightlevel += GLOWSPEED;
	.loc 1 323 15
	movzwl	12(%rax), %eax	# _12->lightlevel, _13
# p_lights.c:323: 	    g->sector->lightlevel += GLOWSPEED;
	.loc 1 323 28
	leal	8(%rax), %edx	#, _15
# p_lights.c:323: 	    g->sector->lightlevel += GLOWSPEED;
	.loc 1 323 7
	movq	-8(%rbp), %rax	# g, tmp121
	movq	24(%rax), %rax	# g_38(D)->sector, _16
# p_lights.c:323: 	    g->sector->lightlevel += GLOWSPEED;
	.loc 1 323 28
	movw	%dx, 12(%rax)	# _17, _16->lightlevel
# p_lights.c:324: 	    g->direction = 1;
	.loc 1 324 19
	movq	-8(%rbp), %rax	# g, tmp122
	movl	$1, 40(%rax)	#, g_38(D)->direction
# p_lights.c:326: 	break;
	.loc 1 326 2
	jmp	.L55	#
.L51:
# p_lights.c:330: 	g->sector->lightlevel += GLOWSPEED;
	.loc 1 330 3
	movq	-8(%rbp), %rax	# g, tmp123
	movq	24(%rax), %rax	# g_38(D)->sector, _18
# p_lights.c:330: 	g->sector->lightlevel += GLOWSPEED;
	.loc 1 330 11
	movzwl	12(%rax), %eax	# _18->lightlevel, _19
# p_lights.c:330: 	g->sector->lightlevel += GLOWSPEED;
	.loc 1 330 24
	leal	8(%rax), %edx	#, _21
# p_lights.c:330: 	g->sector->lightlevel += GLOWSPEED;
	.loc 1 330 3
	movq	-8(%rbp), %rax	# g, tmp124
	movq	24(%rax), %rax	# g_38(D)->sector, _22
# p_lights.c:330: 	g->sector->lightlevel += GLOWSPEED;
	.loc 1 330 24
	movw	%dx, 12(%rax)	# _23, _22->lightlevel
# p_lights.c:331: 	if (g->sector->lightlevel >= g->maxlight)
	.loc 1 331 7
	movq	-8(%rbp), %rax	# g, tmp125
	movq	24(%rax), %rax	# g_38(D)->sector, _24
# p_lights.c:331: 	if (g->sector->lightlevel >= g->maxlight)
	.loc 1 331 15
	movzwl	12(%rax), %eax	# _24->lightlevel, _25
	movswl	%ax, %edx	# _25, _26
# p_lights.c:331: 	if (g->sector->lightlevel >= g->maxlight)
	.loc 1 331 32
	movq	-8(%rbp), %rax	# g, tmp126
	movl	36(%rax), %eax	# g_38(D)->maxlight, _27
# p_lights.c:331: 	if (g->sector->lightlevel >= g->maxlight)
	.loc 1 331 5
	cmpl	%eax, %edx	# _27, _26
	jl	.L56	#,
# p_lights.c:333: 	    g->sector->lightlevel -= GLOWSPEED;
	.loc 1 333 7
	movq	-8(%rbp), %rax	# g, tmp127
	movq	24(%rax), %rax	# g_38(D)->sector, _28
# p_lights.c:333: 	    g->sector->lightlevel -= GLOWSPEED;
	.loc 1 333 15
	movzwl	12(%rax), %eax	# _28->lightlevel, _29
# p_lights.c:333: 	    g->sector->lightlevel -= GLOWSPEED;
	.loc 1 333 28
	leal	-8(%rax), %edx	#, _31
# p_lights.c:333: 	    g->sector->lightlevel -= GLOWSPEED;
	.loc 1 333 7
	movq	-8(%rbp), %rax	# g, tmp128
	movq	24(%rax), %rax	# g_38(D)->sector, _32
# p_lights.c:333: 	    g->sector->lightlevel -= GLOWSPEED;
	.loc 1 333 28
	movw	%dx, 12(%rax)	# _33, _32->lightlevel
# p_lights.c:334: 	    g->direction = -1;
	.loc 1 334 19
	movq	-8(%rbp), %rax	# g, tmp129
	movl	$-1, 40(%rax)	#, g_38(D)->direction
# p_lights.c:336: 	break;
	.loc 1 336 2
	jmp	.L56	#
.L55:
# p_lights.c:326: 	break;
	.loc 1 326 2
	nop	
	jmp	.L57	#
.L56:
# p_lights.c:336: 	break;
	.loc 1 336 2
	nop	
.L57:
# p_lights.c:338: }
	.loc 1 338 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	T_Glow, .-T_Glow
	.globl	P_SpawnGlowingLight
	.type	P_SpawnGlowingLight, @function
P_SpawnGlowingLight:
.LFB10:
	.loc 1 342 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# sector, sector
# p_lights.c:345:     g = Z_Malloc( sizeof(*g), PU_LEVSPEC, 0);
	.loc 1 345 9
	movl	$0, %edx	#,
	movl	$51, %esi	#,
	movl	$48, %edi	#,
	call	Z_Malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp88, g
# p_lights.c:347:     P_AddThinker(&g->thinker);
	.loc 1 347 5
	movq	-8(%rbp), %rax	# g, _1
	movq	%rax, %rdi	# _1,
	call	P_AddThinker@PLT	#
# p_lights.c:349:     g->sector = sector;
	.loc 1 349 15
	movq	-8(%rbp), %rax	# g, tmp89
	movq	-24(%rbp), %rdx	# sector, tmp90
	movq	%rdx, 24(%rax)	# tmp90, g_9->sector
# p_lights.c:350:     g->minlight = P_FindMinSurroundingLight(sector,sector->lightlevel);
	.loc 1 350 58
	movq	-24(%rbp), %rax	# sector, tmp91
	movzwl	12(%rax), %eax	# sector_11(D)->lightlevel, _2
# p_lights.c:350:     g->minlight = P_FindMinSurroundingLight(sector,sector->lightlevel);
	.loc 1 350 19
	movswl	%ax, %edx	# _2, _3
	movq	-24(%rbp), %rax	# sector, tmp92
	movl	%edx, %esi	# _3,
	movq	%rax, %rdi	# tmp92,
	call	P_FindMinSurroundingLight@PLT	#
# p_lights.c:350:     g->minlight = P_FindMinSurroundingLight(sector,sector->lightlevel);
	.loc 1 350 17 discriminator 1
	movq	-8(%rbp), %rdx	# g, tmp93
	movl	%eax, 32(%rdx)	# _4, g_9->minlight
# p_lights.c:351:     g->maxlight = sector->lightlevel;
	.loc 1 351 25
	movq	-24(%rbp), %rax	# sector, tmp94
	movzwl	12(%rax), %eax	# sector_11(D)->lightlevel, _5
	movswl	%ax, %edx	# _5, _6
# p_lights.c:351:     g->maxlight = sector->lightlevel;
	.loc 1 351 17
	movq	-8(%rbp), %rax	# g, tmp95
	movl	%edx, 36(%rax)	# _6, g_9->maxlight
# p_lights.c:352:     g->thinker.function.acp1 = (actionf_p1) T_Glow;
	.loc 1 352 30
	movq	-8(%rbp), %rax	# g, tmp96
	leaq	T_Glow(%rip), %rdx	#, tmp97
	movq	%rdx, 16(%rax)	# tmp97, g_9->thinker.function.acp1
# p_lights.c:353:     g->direction = -1;
	.loc 1 353 18
	movq	-8(%rbp), %rax	# g, tmp98
	movl	$-1, 40(%rax)	#, g_9->direction
# p_lights.c:355:     sector->special = 0;
	.loc 1 355 21
	movq	-24(%rbp), %rax	# sector, tmp99
	movw	$0, 14(%rax)	#, sector_11(D)->special
# p_lights.c:356: }
	.loc 1 356 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	P_SpawnGlowingLight, .-P_SpawnGlowingLight
.Letext0:
	.file 2 "doomtype.h"
	.file 3 "doomdef.h"
	.file 4 "m_fixed.h"
	.file 5 "tables.h"
	.file 6 "d_think.h"
	.file 7 "doomdata.h"
	.file 8 "info.h"
	.file 9 "p_mobj.h"
	.file 10 "r_defs.h"
	.file 11 "d_player.h"
	.file 12 "p_pspr.h"
	.file 13 "d_ticcmd.h"
	.file 14 "r_state.h"
	.file 15 "p_spec.h"
	.file 16 "z_zone.h"
	.file 17 "p_local.h"
	.file 18 "m_random.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x319f
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1f
	.long	.LASF1468
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xd
	.long	0x51
	.long	0x3e
	.uleb128 0xe
	.long	0x43
	.byte	0x32
	.byte	0
	.uleb128 0x19
	.long	0x2e
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x19
	.long	0x4a
	.uleb128 0xc
	.long	.LASF1446
	.byte	0x1a
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x20
	.byte	0x8
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x21
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x6
	.long	0x4a
	.uleb128 0xf
	.long	0x6b
	.byte	0x2
	.byte	0x22
	.byte	0xe
	.long	0xbc
	.uleb128 0x2
	.long	.LASF10
	.byte	0
	.uleb128 0x2
	.long	.LASF11
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF12
	.byte	0x2
	.byte	0x22
	.byte	0x1c
	.long	0xa3
	.uleb128 0x5
	.long	.LASF13
	.byte	0x2
	.byte	0x24
	.byte	0x17
	.long	0x74
	.uleb128 0xf
	.long	0x6b
	.byte	0x3
	.byte	0xb5
	.byte	0x1
	.long	0x123
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
	.uleb128 0x2
	.long	.LASF21
	.byte	0x7
	.uleb128 0x2
	.long	.LASF22
	.byte	0x8
	.uleb128 0x2
	.long	.LASF23
	.byte	0x9
	.uleb128 0x2
	.long	.LASF24
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	.LASF25
	.byte	0x3
	.byte	0xc5
	.byte	0x3
	.long	0xd4
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.long	.LASF26
	.uleb128 0x9
	.byte	0x8
	.byte	0x4
	.long	.LASF27
	.uleb128 0x5
	.long	.LASF28
	.byte	0x4
	.byte	0x26
	.byte	0xd
	.long	0x90
	.uleb128 0x5
	.long	.LASF29
	.byte	0x5
	.byte	0x4e
	.byte	0x12
	.long	0x6b
	.uleb128 0x5
	.long	.LASF30
	.byte	0x6
	.byte	0x29
	.byte	0x11
	.long	0x161
	.uleb128 0x6
	.long	0x166
	.uleb128 0x22
	.long	0x16d
	.uleb128 0x23
	.byte	0
	.uleb128 0x5
	.long	.LASF31
	.byte	0x6
	.byte	0x2a
	.byte	0x11
	.long	0x179
	.uleb128 0x6
	.long	0x17e
	.uleb128 0x1a
	.long	0x189
	.uleb128 0x8
	.long	0x72
	.byte	0
	.uleb128 0x5
	.long	.LASF32
	.byte	0x6
	.byte	0x2b
	.byte	0x11
	.long	0x195
	.uleb128 0x6
	.long	0x19a
	.uleb128 0x1a
	.long	0x1aa
	.uleb128 0x8
	.long	0x72
	.uleb128 0x8
	.long	0x72
	.byte	0
	.uleb128 0x24
	.byte	0x8
	.byte	0x6
	.byte	0x2d
	.byte	0x9
	.long	0x1d4
	.uleb128 0x1b
	.long	.LASF33
	.byte	0x2f
	.long	0x16d
	.uleb128 0x25
	.string	"acv"
	.byte	0x6
	.byte	0x30
	.byte	0xd
	.long	0x155
	.uleb128 0x1b
	.long	.LASF34
	.byte	0x31
	.long	0x189
	.byte	0
	.uleb128 0x5
	.long	.LASF35
	.byte	0x6
	.byte	0x33
	.byte	0x3
	.long	0x1aa
	.uleb128 0x5
	.long	.LASF36
	.byte	0x6
	.byte	0x3c
	.byte	0x14
	.long	0x1d4
	.uleb128 0x12
	.long	.LASF1325
	.byte	0x18
	.byte	0x6
	.byte	0x40
	.long	0x220
	.uleb128 0x3
	.long	.LASF37
	.byte	0x6
	.byte	0x42
	.byte	0x17
	.long	0x220
	.byte	0
	.uleb128 0x3
	.long	.LASF38
	.byte	0x6
	.byte	0x43
	.byte	0x17
	.long	0x220
	.byte	0x8
	.uleb128 0x3
	.long	.LASF39
	.byte	0x6
	.byte	0x44
	.byte	0xe
	.long	0x1e0
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	0x1ec
	.uleb128 0x5
	.long	.LASF40
	.byte	0x6
	.byte	0x46
	.byte	0x3
	.long	0x1ec
	.uleb128 0xd
	.long	0x89
	.long	0x241
	.uleb128 0xe
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0xa
	.byte	0x7
	.byte	0xcb
	.long	0x287
	.uleb128 0x7
	.string	"x"
	.byte	0x7
	.byte	0xcd
	.byte	0xc
	.long	0x89
	.byte	0
	.uleb128 0x7
	.string	"y"
	.byte	0x7
	.byte	0xce
	.byte	0xc
	.long	0x89
	.byte	0x2
	.uleb128 0x3
	.long	.LASF41
	.byte	0x7
	.byte	0xcf
	.byte	0xc
	.long	0x89
	.byte	0x4
	.uleb128 0x3
	.long	.LASF42
	.byte	0x7
	.byte	0xd0
	.byte	0xc
	.long	0x89
	.byte	0x6
	.uleb128 0x3
	.long	.LASF43
	.byte	0x7
	.byte	0xd1
	.byte	0xc
	.long	0x89
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF44
	.byte	0x7
	.byte	0xd2
	.byte	0x3
	.long	0x241
	.uleb128 0xf
	.long	0x6b
	.byte	0x8
	.byte	0x1f
	.byte	0x1
	.long	0x5e2
	.uleb128 0x2
	.long	.LASF45
	.byte	0
	.uleb128 0x2
	.long	.LASF46
	.byte	0x1
	.uleb128 0x2
	.long	.LASF47
	.byte	0x2
	.uleb128 0x2
	.long	.LASF48
	.byte	0x3
	.uleb128 0x2
	.long	.LASF49
	.byte	0x4
	.uleb128 0x2
	.long	.LASF50
	.byte	0x5
	.uleb128 0x2
	.long	.LASF51
	.byte	0x6
	.uleb128 0x2
	.long	.LASF52
	.byte	0x7
	.uleb128 0x2
	.long	.LASF53
	.byte	0x8
	.uleb128 0x2
	.long	.LASF54
	.byte	0x9
	.uleb128 0x2
	.long	.LASF55
	.byte	0xa
	.uleb128 0x2
	.long	.LASF56
	.byte	0xb
	.uleb128 0x2
	.long	.LASF57
	.byte	0xc
	.uleb128 0x2
	.long	.LASF58
	.byte	0xd
	.uleb128 0x2
	.long	.LASF59
	.byte	0xe
	.uleb128 0x2
	.long	.LASF60
	.byte	0xf
	.uleb128 0x2
	.long	.LASF61
	.byte	0x10
	.uleb128 0x2
	.long	.LASF62
	.byte	0x11
	.uleb128 0x2
	.long	.LASF63
	.byte	0x12
	.uleb128 0x2
	.long	.LASF64
	.byte	0x13
	.uleb128 0x2
	.long	.LASF65
	.byte	0x14
	.uleb128 0x2
	.long	.LASF66
	.byte	0x15
	.uleb128 0x2
	.long	.LASF67
	.byte	0x16
	.uleb128 0x2
	.long	.LASF68
	.byte	0x17
	.uleb128 0x2
	.long	.LASF69
	.byte	0x18
	.uleb128 0x2
	.long	.LASF70
	.byte	0x19
	.uleb128 0x2
	.long	.LASF71
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF72
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF73
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF74
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF75
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF76
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF77
	.byte	0x20
	.uleb128 0x2
	.long	.LASF78
	.byte	0x21
	.uleb128 0x2
	.long	.LASF79
	.byte	0x22
	.uleb128 0x2
	.long	.LASF80
	.byte	0x23
	.uleb128 0x2
	.long	.LASF81
	.byte	0x24
	.uleb128 0x2
	.long	.LASF82
	.byte	0x25
	.uleb128 0x2
	.long	.LASF83
	.byte	0x26
	.uleb128 0x2
	.long	.LASF84
	.byte	0x27
	.uleb128 0x2
	.long	.LASF85
	.byte	0x28
	.uleb128 0x2
	.long	.LASF86
	.byte	0x29
	.uleb128 0x2
	.long	.LASF87
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF88
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF89
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF90
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF91
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF92
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF93
	.byte	0x30
	.uleb128 0x2
	.long	.LASF94
	.byte	0x31
	.uleb128 0x2
	.long	.LASF95
	.byte	0x32
	.uleb128 0x2
	.long	.LASF96
	.byte	0x33
	.uleb128 0x2
	.long	.LASF97
	.byte	0x34
	.uleb128 0x2
	.long	.LASF98
	.byte	0x35
	.uleb128 0x2
	.long	.LASF99
	.byte	0x36
	.uleb128 0x2
	.long	.LASF100
	.byte	0x37
	.uleb128 0x2
	.long	.LASF101
	.byte	0x38
	.uleb128 0x2
	.long	.LASF102
	.byte	0x39
	.uleb128 0x2
	.long	.LASF103
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF104
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF105
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF106
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF107
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF108
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF109
	.byte	0x40
	.uleb128 0x2
	.long	.LASF110
	.byte	0x41
	.uleb128 0x2
	.long	.LASF111
	.byte	0x42
	.uleb128 0x2
	.long	.LASF112
	.byte	0x43
	.uleb128 0x2
	.long	.LASF113
	.byte	0x44
	.uleb128 0x2
	.long	.LASF114
	.byte	0x45
	.uleb128 0x2
	.long	.LASF115
	.byte	0x46
	.uleb128 0x2
	.long	.LASF116
	.byte	0x47
	.uleb128 0x2
	.long	.LASF117
	.byte	0x48
	.uleb128 0x2
	.long	.LASF118
	.byte	0x49
	.uleb128 0x2
	.long	.LASF119
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF120
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF121
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF122
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF123
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF124
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF125
	.byte	0x50
	.uleb128 0x2
	.long	.LASF126
	.byte	0x51
	.uleb128 0x2
	.long	.LASF127
	.byte	0x52
	.uleb128 0x2
	.long	.LASF128
	.byte	0x53
	.uleb128 0x2
	.long	.LASF129
	.byte	0x54
	.uleb128 0x2
	.long	.LASF130
	.byte	0x55
	.uleb128 0x2
	.long	.LASF131
	.byte	0x56
	.uleb128 0x2
	.long	.LASF132
	.byte	0x57
	.uleb128 0x2
	.long	.LASF133
	.byte	0x58
	.uleb128 0x2
	.long	.LASF134
	.byte	0x59
	.uleb128 0x2
	.long	.LASF135
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF136
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF137
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF138
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF139
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF140
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF141
	.byte	0x60
	.uleb128 0x2
	.long	.LASF142
	.byte	0x61
	.uleb128 0x2
	.long	.LASF143
	.byte	0x62
	.uleb128 0x2
	.long	.LASF144
	.byte	0x63
	.uleb128 0x2
	.long	.LASF145
	.byte	0x64
	.uleb128 0x2
	.long	.LASF146
	.byte	0x65
	.uleb128 0x2
	.long	.LASF147
	.byte	0x66
	.uleb128 0x2
	.long	.LASF148
	.byte	0x67
	.uleb128 0x2
	.long	.LASF149
	.byte	0x68
	.uleb128 0x2
	.long	.LASF150
	.byte	0x69
	.uleb128 0x2
	.long	.LASF151
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF152
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF153
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF154
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF155
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF156
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF157
	.byte	0x70
	.uleb128 0x2
	.long	.LASF158
	.byte	0x71
	.uleb128 0x2
	.long	.LASF159
	.byte	0x72
	.uleb128 0x2
	.long	.LASF160
	.byte	0x73
	.uleb128 0x2
	.long	.LASF161
	.byte	0x74
	.uleb128 0x2
	.long	.LASF162
	.byte	0x75
	.uleb128 0x2
	.long	.LASF163
	.byte	0x76
	.uleb128 0x2
	.long	.LASF164
	.byte	0x77
	.uleb128 0x2
	.long	.LASF165
	.byte	0x78
	.uleb128 0x2
	.long	.LASF166
	.byte	0x79
	.uleb128 0x2
	.long	.LASF167
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF168
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF169
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF170
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF171
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF172
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF173
	.byte	0x80
	.uleb128 0x2
	.long	.LASF174
	.byte	0x81
	.uleb128 0x2
	.long	.LASF175
	.byte	0x82
	.uleb128 0x2
	.long	.LASF176
	.byte	0x83
	.uleb128 0x2
	.long	.LASF177
	.byte	0x84
	.uleb128 0x2
	.long	.LASF178
	.byte	0x85
	.uleb128 0x2
	.long	.LASF179
	.byte	0x86
	.uleb128 0x2
	.long	.LASF180
	.byte	0x87
	.uleb128 0x2
	.long	.LASF181
	.byte	0x88
	.uleb128 0x2
	.long	.LASF182
	.byte	0x89
	.uleb128 0x2
	.long	.LASF183
	.byte	0x8a
	.byte	0
	.uleb128 0x5
	.long	.LASF184
	.byte	0x8
	.byte	0xac
	.byte	0x3
	.long	0x293
	.uleb128 0xf
	.long	0x6b
	.byte	0x8
	.byte	0xaf
	.byte	0x1
	.long	0x1f73
	.uleb128 0x2
	.long	.LASF185
	.byte	0
	.uleb128 0x2
	.long	.LASF186
	.byte	0x1
	.uleb128 0x2
	.long	.LASF187
	.byte	0x2
	.uleb128 0x2
	.long	.LASF188
	.byte	0x3
	.uleb128 0x2
	.long	.LASF189
	.byte	0x4
	.uleb128 0x2
	.long	.LASF190
	.byte	0x5
	.uleb128 0x2
	.long	.LASF191
	.byte	0x6
	.uleb128 0x2
	.long	.LASF192
	.byte	0x7
	.uleb128 0x2
	.long	.LASF193
	.byte	0x8
	.uleb128 0x2
	.long	.LASF194
	.byte	0x9
	.uleb128 0x2
	.long	.LASF195
	.byte	0xa
	.uleb128 0x2
	.long	.LASF196
	.byte	0xb
	.uleb128 0x2
	.long	.LASF197
	.byte	0xc
	.uleb128 0x2
	.long	.LASF198
	.byte	0xd
	.uleb128 0x2
	.long	.LASF199
	.byte	0xe
	.uleb128 0x2
	.long	.LASF200
	.byte	0xf
	.uleb128 0x2
	.long	.LASF201
	.byte	0x10
	.uleb128 0x2
	.long	.LASF202
	.byte	0x11
	.uleb128 0x2
	.long	.LASF203
	.byte	0x12
	.uleb128 0x2
	.long	.LASF204
	.byte	0x13
	.uleb128 0x2
	.long	.LASF205
	.byte	0x14
	.uleb128 0x2
	.long	.LASF206
	.byte	0x15
	.uleb128 0x2
	.long	.LASF207
	.byte	0x16
	.uleb128 0x2
	.long	.LASF208
	.byte	0x17
	.uleb128 0x2
	.long	.LASF209
	.byte	0x18
	.uleb128 0x2
	.long	.LASF210
	.byte	0x19
	.uleb128 0x2
	.long	.LASF211
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF212
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF213
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF214
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF215
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF216
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF217
	.byte	0x20
	.uleb128 0x2
	.long	.LASF218
	.byte	0x21
	.uleb128 0x2
	.long	.LASF219
	.byte	0x22
	.uleb128 0x2
	.long	.LASF220
	.byte	0x23
	.uleb128 0x2
	.long	.LASF221
	.byte	0x24
	.uleb128 0x2
	.long	.LASF222
	.byte	0x25
	.uleb128 0x2
	.long	.LASF223
	.byte	0x26
	.uleb128 0x2
	.long	.LASF224
	.byte	0x27
	.uleb128 0x2
	.long	.LASF225
	.byte	0x28
	.uleb128 0x2
	.long	.LASF226
	.byte	0x29
	.uleb128 0x2
	.long	.LASF227
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF228
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF229
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF230
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF231
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF232
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF233
	.byte	0x30
	.uleb128 0x2
	.long	.LASF234
	.byte	0x31
	.uleb128 0x2
	.long	.LASF235
	.byte	0x32
	.uleb128 0x2
	.long	.LASF236
	.byte	0x33
	.uleb128 0x2
	.long	.LASF237
	.byte	0x34
	.uleb128 0x2
	.long	.LASF238
	.byte	0x35
	.uleb128 0x2
	.long	.LASF239
	.byte	0x36
	.uleb128 0x2
	.long	.LASF240
	.byte	0x37
	.uleb128 0x2
	.long	.LASF241
	.byte	0x38
	.uleb128 0x2
	.long	.LASF242
	.byte	0x39
	.uleb128 0x2
	.long	.LASF243
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF244
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF245
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF246
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF247
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF248
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF249
	.byte	0x40
	.uleb128 0x2
	.long	.LASF250
	.byte	0x41
	.uleb128 0x2
	.long	.LASF251
	.byte	0x42
	.uleb128 0x2
	.long	.LASF252
	.byte	0x43
	.uleb128 0x2
	.long	.LASF253
	.byte	0x44
	.uleb128 0x2
	.long	.LASF254
	.byte	0x45
	.uleb128 0x2
	.long	.LASF255
	.byte	0x46
	.uleb128 0x2
	.long	.LASF256
	.byte	0x47
	.uleb128 0x2
	.long	.LASF257
	.byte	0x48
	.uleb128 0x2
	.long	.LASF258
	.byte	0x49
	.uleb128 0x2
	.long	.LASF259
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF260
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF261
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF262
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF263
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF264
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF265
	.byte	0x50
	.uleb128 0x2
	.long	.LASF266
	.byte	0x51
	.uleb128 0x2
	.long	.LASF267
	.byte	0x52
	.uleb128 0x2
	.long	.LASF268
	.byte	0x53
	.uleb128 0x2
	.long	.LASF269
	.byte	0x54
	.uleb128 0x2
	.long	.LASF270
	.byte	0x55
	.uleb128 0x2
	.long	.LASF271
	.byte	0x56
	.uleb128 0x2
	.long	.LASF272
	.byte	0x57
	.uleb128 0x2
	.long	.LASF273
	.byte	0x58
	.uleb128 0x2
	.long	.LASF274
	.byte	0x59
	.uleb128 0x2
	.long	.LASF275
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF276
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF277
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF278
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF279
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF280
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF281
	.byte	0x60
	.uleb128 0x2
	.long	.LASF282
	.byte	0x61
	.uleb128 0x2
	.long	.LASF283
	.byte	0x62
	.uleb128 0x2
	.long	.LASF284
	.byte	0x63
	.uleb128 0x2
	.long	.LASF285
	.byte	0x64
	.uleb128 0x2
	.long	.LASF286
	.byte	0x65
	.uleb128 0x2
	.long	.LASF287
	.byte	0x66
	.uleb128 0x2
	.long	.LASF288
	.byte	0x67
	.uleb128 0x2
	.long	.LASF289
	.byte	0x68
	.uleb128 0x2
	.long	.LASF290
	.byte	0x69
	.uleb128 0x2
	.long	.LASF291
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF292
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF293
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF294
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF295
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF296
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF297
	.byte	0x70
	.uleb128 0x2
	.long	.LASF298
	.byte	0x71
	.uleb128 0x2
	.long	.LASF299
	.byte	0x72
	.uleb128 0x2
	.long	.LASF300
	.byte	0x73
	.uleb128 0x2
	.long	.LASF301
	.byte	0x74
	.uleb128 0x2
	.long	.LASF302
	.byte	0x75
	.uleb128 0x2
	.long	.LASF303
	.byte	0x76
	.uleb128 0x2
	.long	.LASF304
	.byte	0x77
	.uleb128 0x2
	.long	.LASF305
	.byte	0x78
	.uleb128 0x2
	.long	.LASF306
	.byte	0x79
	.uleb128 0x2
	.long	.LASF307
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF308
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF309
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF310
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF311
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF312
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF313
	.byte	0x80
	.uleb128 0x2
	.long	.LASF314
	.byte	0x81
	.uleb128 0x2
	.long	.LASF315
	.byte	0x82
	.uleb128 0x2
	.long	.LASF316
	.byte	0x83
	.uleb128 0x2
	.long	.LASF317
	.byte	0x84
	.uleb128 0x2
	.long	.LASF318
	.byte	0x85
	.uleb128 0x2
	.long	.LASF319
	.byte	0x86
	.uleb128 0x2
	.long	.LASF320
	.byte	0x87
	.uleb128 0x2
	.long	.LASF321
	.byte	0x88
	.uleb128 0x2
	.long	.LASF322
	.byte	0x89
	.uleb128 0x2
	.long	.LASF323
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF324
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF325
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF326
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF327
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF328
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF329
	.byte	0x90
	.uleb128 0x2
	.long	.LASF330
	.byte	0x91
	.uleb128 0x2
	.long	.LASF331
	.byte	0x92
	.uleb128 0x2
	.long	.LASF332
	.byte	0x93
	.uleb128 0x2
	.long	.LASF333
	.byte	0x94
	.uleb128 0x2
	.long	.LASF334
	.byte	0x95
	.uleb128 0x2
	.long	.LASF335
	.byte	0x96
	.uleb128 0x2
	.long	.LASF336
	.byte	0x97
	.uleb128 0x2
	.long	.LASF337
	.byte	0x98
	.uleb128 0x2
	.long	.LASF338
	.byte	0x99
	.uleb128 0x2
	.long	.LASF339
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF340
	.byte	0x9b
	.uleb128 0x2
	.long	.LASF341
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF342
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF343
	.byte	0x9e
	.uleb128 0x2
	.long	.LASF344
	.byte	0x9f
	.uleb128 0x2
	.long	.LASF345
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF346
	.byte	0xa1
	.uleb128 0x2
	.long	.LASF347
	.byte	0xa2
	.uleb128 0x2
	.long	.LASF348
	.byte	0xa3
	.uleb128 0x2
	.long	.LASF349
	.byte	0xa4
	.uleb128 0x2
	.long	.LASF350
	.byte	0xa5
	.uleb128 0x2
	.long	.LASF351
	.byte	0xa6
	.uleb128 0x2
	.long	.LASF352
	.byte	0xa7
	.uleb128 0x2
	.long	.LASF353
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF354
	.byte	0xa9
	.uleb128 0x2
	.long	.LASF355
	.byte	0xaa
	.uleb128 0x2
	.long	.LASF356
	.byte	0xab
	.uleb128 0x2
	.long	.LASF357
	.byte	0xac
	.uleb128 0x2
	.long	.LASF358
	.byte	0xad
	.uleb128 0x2
	.long	.LASF359
	.byte	0xae
	.uleb128 0x2
	.long	.LASF360
	.byte	0xaf
	.uleb128 0x2
	.long	.LASF361
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF362
	.byte	0xb1
	.uleb128 0x2
	.long	.LASF363
	.byte	0xb2
	.uleb128 0x2
	.long	.LASF364
	.byte	0xb3
	.uleb128 0x2
	.long	.LASF365
	.byte	0xb4
	.uleb128 0x2
	.long	.LASF366
	.byte	0xb5
	.uleb128 0x2
	.long	.LASF367
	.byte	0xb6
	.uleb128 0x2
	.long	.LASF368
	.byte	0xb7
	.uleb128 0x2
	.long	.LASF369
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF370
	.byte	0xb9
	.uleb128 0x2
	.long	.LASF371
	.byte	0xba
	.uleb128 0x2
	.long	.LASF372
	.byte	0xbb
	.uleb128 0x2
	.long	.LASF373
	.byte	0xbc
	.uleb128 0x2
	.long	.LASF374
	.byte	0xbd
	.uleb128 0x2
	.long	.LASF375
	.byte	0xbe
	.uleb128 0x2
	.long	.LASF376
	.byte	0xbf
	.uleb128 0x2
	.long	.LASF377
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF378
	.byte	0xc1
	.uleb128 0x2
	.long	.LASF379
	.byte	0xc2
	.uleb128 0x2
	.long	.LASF380
	.byte	0xc3
	.uleb128 0x2
	.long	.LASF381
	.byte	0xc4
	.uleb128 0x2
	.long	.LASF382
	.byte	0xc5
	.uleb128 0x2
	.long	.LASF383
	.byte	0xc6
	.uleb128 0x2
	.long	.LASF384
	.byte	0xc7
	.uleb128 0x2
	.long	.LASF385
	.byte	0xc8
	.uleb128 0x2
	.long	.LASF386
	.byte	0xc9
	.uleb128 0x2
	.long	.LASF387
	.byte	0xca
	.uleb128 0x2
	.long	.LASF388
	.byte	0xcb
	.uleb128 0x2
	.long	.LASF389
	.byte	0xcc
	.uleb128 0x2
	.long	.LASF390
	.byte	0xcd
	.uleb128 0x2
	.long	.LASF391
	.byte	0xce
	.uleb128 0x2
	.long	.LASF392
	.byte	0xcf
	.uleb128 0x2
	.long	.LASF393
	.byte	0xd0
	.uleb128 0x2
	.long	.LASF394
	.byte	0xd1
	.uleb128 0x2
	.long	.LASF395
	.byte	0xd2
	.uleb128 0x2
	.long	.LASF396
	.byte	0xd3
	.uleb128 0x2
	.long	.LASF397
	.byte	0xd4
	.uleb128 0x2
	.long	.LASF398
	.byte	0xd5
	.uleb128 0x2
	.long	.LASF399
	.byte	0xd6
	.uleb128 0x2
	.long	.LASF400
	.byte	0xd7
	.uleb128 0x2
	.long	.LASF401
	.byte	0xd8
	.uleb128 0x2
	.long	.LASF402
	.byte	0xd9
	.uleb128 0x2
	.long	.LASF403
	.byte	0xda
	.uleb128 0x2
	.long	.LASF404
	.byte	0xdb
	.uleb128 0x2
	.long	.LASF405
	.byte	0xdc
	.uleb128 0x2
	.long	.LASF406
	.byte	0xdd
	.uleb128 0x2
	.long	.LASF407
	.byte	0xde
	.uleb128 0x2
	.long	.LASF408
	.byte	0xdf
	.uleb128 0x2
	.long	.LASF409
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF410
	.byte	0xe1
	.uleb128 0x2
	.long	.LASF411
	.byte	0xe2
	.uleb128 0x2
	.long	.LASF412
	.byte	0xe3
	.uleb128 0x2
	.long	.LASF413
	.byte	0xe4
	.uleb128 0x2
	.long	.LASF414
	.byte	0xe5
	.uleb128 0x2
	.long	.LASF415
	.byte	0xe6
	.uleb128 0x2
	.long	.LASF416
	.byte	0xe7
	.uleb128 0x2
	.long	.LASF417
	.byte	0xe8
	.uleb128 0x2
	.long	.LASF418
	.byte	0xe9
	.uleb128 0x2
	.long	.LASF419
	.byte	0xea
	.uleb128 0x2
	.long	.LASF420
	.byte	0xeb
	.uleb128 0x2
	.long	.LASF421
	.byte	0xec
	.uleb128 0x2
	.long	.LASF422
	.byte	0xed
	.uleb128 0x2
	.long	.LASF423
	.byte	0xee
	.uleb128 0x2
	.long	.LASF424
	.byte	0xef
	.uleb128 0x2
	.long	.LASF425
	.byte	0xf0
	.uleb128 0x2
	.long	.LASF426
	.byte	0xf1
	.uleb128 0x2
	.long	.LASF427
	.byte	0xf2
	.uleb128 0x2
	.long	.LASF428
	.byte	0xf3
	.uleb128 0x2
	.long	.LASF429
	.byte	0xf4
	.uleb128 0x2
	.long	.LASF430
	.byte	0xf5
	.uleb128 0x2
	.long	.LASF431
	.byte	0xf6
	.uleb128 0x2
	.long	.LASF432
	.byte	0xf7
	.uleb128 0x2
	.long	.LASF433
	.byte	0xf8
	.uleb128 0x2
	.long	.LASF434
	.byte	0xf9
	.uleb128 0x2
	.long	.LASF435
	.byte	0xfa
	.uleb128 0x2
	.long	.LASF436
	.byte	0xfb
	.uleb128 0x2
	.long	.LASF437
	.byte	0xfc
	.uleb128 0x2
	.long	.LASF438
	.byte	0xfd
	.uleb128 0x2
	.long	.LASF439
	.byte	0xfe
	.uleb128 0x2
	.long	.LASF440
	.byte	0xff
	.uleb128 0x1
	.long	.LASF441
	.value	0x100
	.uleb128 0x1
	.long	.LASF442
	.value	0x101
	.uleb128 0x1
	.long	.LASF443
	.value	0x102
	.uleb128 0x1
	.long	.LASF444
	.value	0x103
	.uleb128 0x1
	.long	.LASF445
	.value	0x104
	.uleb128 0x1
	.long	.LASF446
	.value	0x105
	.uleb128 0x1
	.long	.LASF447
	.value	0x106
	.uleb128 0x1
	.long	.LASF448
	.value	0x107
	.uleb128 0x1
	.long	.LASF449
	.value	0x108
	.uleb128 0x1
	.long	.LASF450
	.value	0x109
	.uleb128 0x1
	.long	.LASF451
	.value	0x10a
	.uleb128 0x1
	.long	.LASF452
	.value	0x10b
	.uleb128 0x1
	.long	.LASF453
	.value	0x10c
	.uleb128 0x1
	.long	.LASF454
	.value	0x10d
	.uleb128 0x1
	.long	.LASF455
	.value	0x10e
	.uleb128 0x1
	.long	.LASF456
	.value	0x10f
	.uleb128 0x1
	.long	.LASF457
	.value	0x110
	.uleb128 0x1
	.long	.LASF458
	.value	0x111
	.uleb128 0x1
	.long	.LASF459
	.value	0x112
	.uleb128 0x1
	.long	.LASF460
	.value	0x113
	.uleb128 0x1
	.long	.LASF461
	.value	0x114
	.uleb128 0x1
	.long	.LASF462
	.value	0x115
	.uleb128 0x1
	.long	.LASF463
	.value	0x116
	.uleb128 0x1
	.long	.LASF464
	.value	0x117
	.uleb128 0x1
	.long	.LASF465
	.value	0x118
	.uleb128 0x1
	.long	.LASF466
	.value	0x119
	.uleb128 0x1
	.long	.LASF467
	.value	0x11a
	.uleb128 0x1
	.long	.LASF468
	.value	0x11b
	.uleb128 0x1
	.long	.LASF469
	.value	0x11c
	.uleb128 0x1
	.long	.LASF470
	.value	0x11d
	.uleb128 0x1
	.long	.LASF471
	.value	0x11e
	.uleb128 0x1
	.long	.LASF472
	.value	0x11f
	.uleb128 0x1
	.long	.LASF473
	.value	0x120
	.uleb128 0x1
	.long	.LASF474
	.value	0x121
	.uleb128 0x1
	.long	.LASF475
	.value	0x122
	.uleb128 0x1
	.long	.LASF476
	.value	0x123
	.uleb128 0x1
	.long	.LASF477
	.value	0x124
	.uleb128 0x1
	.long	.LASF478
	.value	0x125
	.uleb128 0x1
	.long	.LASF479
	.value	0x126
	.uleb128 0x1
	.long	.LASF480
	.value	0x127
	.uleb128 0x1
	.long	.LASF481
	.value	0x128
	.uleb128 0x1
	.long	.LASF482
	.value	0x129
	.uleb128 0x1
	.long	.LASF483
	.value	0x12a
	.uleb128 0x1
	.long	.LASF484
	.value	0x12b
	.uleb128 0x1
	.long	.LASF485
	.value	0x12c
	.uleb128 0x1
	.long	.LASF486
	.value	0x12d
	.uleb128 0x1
	.long	.LASF487
	.value	0x12e
	.uleb128 0x1
	.long	.LASF488
	.value	0x12f
	.uleb128 0x1
	.long	.LASF489
	.value	0x130
	.uleb128 0x1
	.long	.LASF490
	.value	0x131
	.uleb128 0x1
	.long	.LASF491
	.value	0x132
	.uleb128 0x1
	.long	.LASF492
	.value	0x133
	.uleb128 0x1
	.long	.LASF493
	.value	0x134
	.uleb128 0x1
	.long	.LASF494
	.value	0x135
	.uleb128 0x1
	.long	.LASF495
	.value	0x136
	.uleb128 0x1
	.long	.LASF496
	.value	0x137
	.uleb128 0x1
	.long	.LASF497
	.value	0x138
	.uleb128 0x1
	.long	.LASF498
	.value	0x139
	.uleb128 0x1
	.long	.LASF499
	.value	0x13a
	.uleb128 0x1
	.long	.LASF500
	.value	0x13b
	.uleb128 0x1
	.long	.LASF501
	.value	0x13c
	.uleb128 0x1
	.long	.LASF502
	.value	0x13d
	.uleb128 0x1
	.long	.LASF503
	.value	0x13e
	.uleb128 0x1
	.long	.LASF504
	.value	0x13f
	.uleb128 0x1
	.long	.LASF505
	.value	0x140
	.uleb128 0x1
	.long	.LASF506
	.value	0x141
	.uleb128 0x1
	.long	.LASF507
	.value	0x142
	.uleb128 0x1
	.long	.LASF508
	.value	0x143
	.uleb128 0x1
	.long	.LASF509
	.value	0x144
	.uleb128 0x1
	.long	.LASF510
	.value	0x145
	.uleb128 0x1
	.long	.LASF511
	.value	0x146
	.uleb128 0x1
	.long	.LASF512
	.value	0x147
	.uleb128 0x1
	.long	.LASF513
	.value	0x148
	.uleb128 0x1
	.long	.LASF514
	.value	0x149
	.uleb128 0x1
	.long	.LASF515
	.value	0x14a
	.uleb128 0x1
	.long	.LASF516
	.value	0x14b
	.uleb128 0x1
	.long	.LASF517
	.value	0x14c
	.uleb128 0x1
	.long	.LASF518
	.value	0x14d
	.uleb128 0x1
	.long	.LASF519
	.value	0x14e
	.uleb128 0x1
	.long	.LASF520
	.value	0x14f
	.uleb128 0x1
	.long	.LASF521
	.value	0x150
	.uleb128 0x1
	.long	.LASF522
	.value	0x151
	.uleb128 0x1
	.long	.LASF523
	.value	0x152
	.uleb128 0x1
	.long	.LASF524
	.value	0x153
	.uleb128 0x1
	.long	.LASF525
	.value	0x154
	.uleb128 0x1
	.long	.LASF526
	.value	0x155
	.uleb128 0x1
	.long	.LASF527
	.value	0x156
	.uleb128 0x1
	.long	.LASF528
	.value	0x157
	.uleb128 0x1
	.long	.LASF529
	.value	0x158
	.uleb128 0x1
	.long	.LASF530
	.value	0x159
	.uleb128 0x1
	.long	.LASF531
	.value	0x15a
	.uleb128 0x1
	.long	.LASF532
	.value	0x15b
	.uleb128 0x1
	.long	.LASF533
	.value	0x15c
	.uleb128 0x1
	.long	.LASF534
	.value	0x15d
	.uleb128 0x1
	.long	.LASF535
	.value	0x15e
	.uleb128 0x1
	.long	.LASF536
	.value	0x15f
	.uleb128 0x1
	.long	.LASF537
	.value	0x160
	.uleb128 0x1
	.long	.LASF538
	.value	0x161
	.uleb128 0x1
	.long	.LASF539
	.value	0x162
	.uleb128 0x1
	.long	.LASF540
	.value	0x163
	.uleb128 0x1
	.long	.LASF541
	.value	0x164
	.uleb128 0x1
	.long	.LASF542
	.value	0x165
	.uleb128 0x1
	.long	.LASF543
	.value	0x166
	.uleb128 0x1
	.long	.LASF544
	.value	0x167
	.uleb128 0x1
	.long	.LASF545
	.value	0x168
	.uleb128 0x1
	.long	.LASF546
	.value	0x169
	.uleb128 0x1
	.long	.LASF547
	.value	0x16a
	.uleb128 0x1
	.long	.LASF548
	.value	0x16b
	.uleb128 0x1
	.long	.LASF549
	.value	0x16c
	.uleb128 0x1
	.long	.LASF550
	.value	0x16d
	.uleb128 0x1
	.long	.LASF551
	.value	0x16e
	.uleb128 0x1
	.long	.LASF552
	.value	0x16f
	.uleb128 0x1
	.long	.LASF553
	.value	0x170
	.uleb128 0x1
	.long	.LASF554
	.value	0x171
	.uleb128 0x1
	.long	.LASF555
	.value	0x172
	.uleb128 0x1
	.long	.LASF556
	.value	0x173
	.uleb128 0x1
	.long	.LASF557
	.value	0x174
	.uleb128 0x1
	.long	.LASF558
	.value	0x175
	.uleb128 0x1
	.long	.LASF559
	.value	0x176
	.uleb128 0x1
	.long	.LASF560
	.value	0x177
	.uleb128 0x1
	.long	.LASF561
	.value	0x178
	.uleb128 0x1
	.long	.LASF562
	.value	0x179
	.uleb128 0x1
	.long	.LASF563
	.value	0x17a
	.uleb128 0x1
	.long	.LASF564
	.value	0x17b
	.uleb128 0x1
	.long	.LASF565
	.value	0x17c
	.uleb128 0x1
	.long	.LASF566
	.value	0x17d
	.uleb128 0x1
	.long	.LASF567
	.value	0x17e
	.uleb128 0x1
	.long	.LASF568
	.value	0x17f
	.uleb128 0x1
	.long	.LASF569
	.value	0x180
	.uleb128 0x1
	.long	.LASF570
	.value	0x181
	.uleb128 0x1
	.long	.LASF571
	.value	0x182
	.uleb128 0x1
	.long	.LASF572
	.value	0x183
	.uleb128 0x1
	.long	.LASF573
	.value	0x184
	.uleb128 0x1
	.long	.LASF574
	.value	0x185
	.uleb128 0x1
	.long	.LASF575
	.value	0x186
	.uleb128 0x1
	.long	.LASF576
	.value	0x187
	.uleb128 0x1
	.long	.LASF577
	.value	0x188
	.uleb128 0x1
	.long	.LASF578
	.value	0x189
	.uleb128 0x1
	.long	.LASF579
	.value	0x18a
	.uleb128 0x1
	.long	.LASF580
	.value	0x18b
	.uleb128 0x1
	.long	.LASF581
	.value	0x18c
	.uleb128 0x1
	.long	.LASF582
	.value	0x18d
	.uleb128 0x1
	.long	.LASF583
	.value	0x18e
	.uleb128 0x1
	.long	.LASF584
	.value	0x18f
	.uleb128 0x1
	.long	.LASF585
	.value	0x190
	.uleb128 0x1
	.long	.LASF586
	.value	0x191
	.uleb128 0x1
	.long	.LASF587
	.value	0x192
	.uleb128 0x1
	.long	.LASF588
	.value	0x193
	.uleb128 0x1
	.long	.LASF589
	.value	0x194
	.uleb128 0x1
	.long	.LASF590
	.value	0x195
	.uleb128 0x1
	.long	.LASF591
	.value	0x196
	.uleb128 0x1
	.long	.LASF592
	.value	0x197
	.uleb128 0x1
	.long	.LASF593
	.value	0x198
	.uleb128 0x1
	.long	.LASF594
	.value	0x199
	.uleb128 0x1
	.long	.LASF595
	.value	0x19a
	.uleb128 0x1
	.long	.LASF596
	.value	0x19b
	.uleb128 0x1
	.long	.LASF597
	.value	0x19c
	.uleb128 0x1
	.long	.LASF598
	.value	0x19d
	.uleb128 0x1
	.long	.LASF599
	.value	0x19e
	.uleb128 0x1
	.long	.LASF600
	.value	0x19f
	.uleb128 0x1
	.long	.LASF601
	.value	0x1a0
	.uleb128 0x1
	.long	.LASF602
	.value	0x1a1
	.uleb128 0x1
	.long	.LASF603
	.value	0x1a2
	.uleb128 0x1
	.long	.LASF604
	.value	0x1a3
	.uleb128 0x1
	.long	.LASF605
	.value	0x1a4
	.uleb128 0x1
	.long	.LASF606
	.value	0x1a5
	.uleb128 0x1
	.long	.LASF607
	.value	0x1a6
	.uleb128 0x1
	.long	.LASF608
	.value	0x1a7
	.uleb128 0x1
	.long	.LASF609
	.value	0x1a8
	.uleb128 0x1
	.long	.LASF610
	.value	0x1a9
	.uleb128 0x1
	.long	.LASF611
	.value	0x1aa
	.uleb128 0x1
	.long	.LASF612
	.value	0x1ab
	.uleb128 0x1
	.long	.LASF613
	.value	0x1ac
	.uleb128 0x1
	.long	.LASF614
	.value	0x1ad
	.uleb128 0x1
	.long	.LASF615
	.value	0x1ae
	.uleb128 0x1
	.long	.LASF616
	.value	0x1af
	.uleb128 0x1
	.long	.LASF617
	.value	0x1b0
	.uleb128 0x1
	.long	.LASF618
	.value	0x1b1
	.uleb128 0x1
	.long	.LASF619
	.value	0x1b2
	.uleb128 0x1
	.long	.LASF620
	.value	0x1b3
	.uleb128 0x1
	.long	.LASF621
	.value	0x1b4
	.uleb128 0x1
	.long	.LASF622
	.value	0x1b5
	.uleb128 0x1
	.long	.LASF623
	.value	0x1b6
	.uleb128 0x1
	.long	.LASF624
	.value	0x1b7
	.uleb128 0x1
	.long	.LASF625
	.value	0x1b8
	.uleb128 0x1
	.long	.LASF626
	.value	0x1b9
	.uleb128 0x1
	.long	.LASF627
	.value	0x1ba
	.uleb128 0x1
	.long	.LASF628
	.value	0x1bb
	.uleb128 0x1
	.long	.LASF629
	.value	0x1bc
	.uleb128 0x1
	.long	.LASF630
	.value	0x1bd
	.uleb128 0x1
	.long	.LASF631
	.value	0x1be
	.uleb128 0x1
	.long	.LASF632
	.value	0x1bf
	.uleb128 0x1
	.long	.LASF633
	.value	0x1c0
	.uleb128 0x1
	.long	.LASF634
	.value	0x1c1
	.uleb128 0x1
	.long	.LASF635
	.value	0x1c2
	.uleb128 0x1
	.long	.LASF636
	.value	0x1c3
	.uleb128 0x1
	.long	.LASF637
	.value	0x1c4
	.uleb128 0x1
	.long	.LASF638
	.value	0x1c5
	.uleb128 0x1
	.long	.LASF639
	.value	0x1c6
	.uleb128 0x1
	.long	.LASF640
	.value	0x1c7
	.uleb128 0x1
	.long	.LASF641
	.value	0x1c8
	.uleb128 0x1
	.long	.LASF642
	.value	0x1c9
	.uleb128 0x1
	.long	.LASF643
	.value	0x1ca
	.uleb128 0x1
	.long	.LASF644
	.value	0x1cb
	.uleb128 0x1
	.long	.LASF645
	.value	0x1cc
	.uleb128 0x1
	.long	.LASF646
	.value	0x1cd
	.uleb128 0x1
	.long	.LASF647
	.value	0x1ce
	.uleb128 0x1
	.long	.LASF648
	.value	0x1cf
	.uleb128 0x1
	.long	.LASF649
	.value	0x1d0
	.uleb128 0x1
	.long	.LASF650
	.value	0x1d1
	.uleb128 0x1
	.long	.LASF651
	.value	0x1d2
	.uleb128 0x1
	.long	.LASF652
	.value	0x1d3
	.uleb128 0x1
	.long	.LASF653
	.value	0x1d4
	.uleb128 0x1
	.long	.LASF654
	.value	0x1d5
	.uleb128 0x1
	.long	.LASF655
	.value	0x1d6
	.uleb128 0x1
	.long	.LASF656
	.value	0x1d7
	.uleb128 0x1
	.long	.LASF657
	.value	0x1d8
	.uleb128 0x1
	.long	.LASF658
	.value	0x1d9
	.uleb128 0x1
	.long	.LASF659
	.value	0x1da
	.uleb128 0x1
	.long	.LASF660
	.value	0x1db
	.uleb128 0x1
	.long	.LASF661
	.value	0x1dc
	.uleb128 0x1
	.long	.LASF662
	.value	0x1dd
	.uleb128 0x1
	.long	.LASF663
	.value	0x1de
	.uleb128 0x1
	.long	.LASF664
	.value	0x1df
	.uleb128 0x1
	.long	.LASF665
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF666
	.value	0x1e1
	.uleb128 0x1
	.long	.LASF667
	.value	0x1e2
	.uleb128 0x1
	.long	.LASF668
	.value	0x1e3
	.uleb128 0x1
	.long	.LASF669
	.value	0x1e4
	.uleb128 0x1
	.long	.LASF670
	.value	0x1e5
	.uleb128 0x1
	.long	.LASF671
	.value	0x1e6
	.uleb128 0x1
	.long	.LASF672
	.value	0x1e7
	.uleb128 0x1
	.long	.LASF673
	.value	0x1e8
	.uleb128 0x1
	.long	.LASF674
	.value	0x1e9
	.uleb128 0x1
	.long	.LASF675
	.value	0x1ea
	.uleb128 0x1
	.long	.LASF676
	.value	0x1eb
	.uleb128 0x1
	.long	.LASF677
	.value	0x1ec
	.uleb128 0x1
	.long	.LASF678
	.value	0x1ed
	.uleb128 0x1
	.long	.LASF679
	.value	0x1ee
	.uleb128 0x1
	.long	.LASF680
	.value	0x1ef
	.uleb128 0x1
	.long	.LASF681
	.value	0x1f0
	.uleb128 0x1
	.long	.LASF682
	.value	0x1f1
	.uleb128 0x1
	.long	.LASF683
	.value	0x1f2
	.uleb128 0x1
	.long	.LASF684
	.value	0x1f3
	.uleb128 0x1
	.long	.LASF685
	.value	0x1f4
	.uleb128 0x1
	.long	.LASF686
	.value	0x1f5
	.uleb128 0x1
	.long	.LASF687
	.value	0x1f6
	.uleb128 0x1
	.long	.LASF688
	.value	0x1f7
	.uleb128 0x1
	.long	.LASF689
	.value	0x1f8
	.uleb128 0x1
	.long	.LASF690
	.value	0x1f9
	.uleb128 0x1
	.long	.LASF691
	.value	0x1fa
	.uleb128 0x1
	.long	.LASF692
	.value	0x1fb
	.uleb128 0x1
	.long	.LASF693
	.value	0x1fc
	.uleb128 0x1
	.long	.LASF694
	.value	0x1fd
	.uleb128 0x1
	.long	.LASF695
	.value	0x1fe
	.uleb128 0x1
	.long	.LASF696
	.value	0x1ff
	.uleb128 0x1
	.long	.LASF697
	.value	0x200
	.uleb128 0x1
	.long	.LASF698
	.value	0x201
	.uleb128 0x1
	.long	.LASF699
	.value	0x202
	.uleb128 0x1
	.long	.LASF700
	.value	0x203
	.uleb128 0x1
	.long	.LASF701
	.value	0x204
	.uleb128 0x1
	.long	.LASF702
	.value	0x205
	.uleb128 0x1
	.long	.LASF703
	.value	0x206
	.uleb128 0x1
	.long	.LASF704
	.value	0x207
	.uleb128 0x1
	.long	.LASF705
	.value	0x208
	.uleb128 0x1
	.long	.LASF706
	.value	0x209
	.uleb128 0x1
	.long	.LASF707
	.value	0x20a
	.uleb128 0x1
	.long	.LASF708
	.value	0x20b
	.uleb128 0x1
	.long	.LASF709
	.value	0x20c
	.uleb128 0x1
	.long	.LASF710
	.value	0x20d
	.uleb128 0x1
	.long	.LASF711
	.value	0x20e
	.uleb128 0x1
	.long	.LASF712
	.value	0x20f
	.uleb128 0x1
	.long	.LASF713
	.value	0x210
	.uleb128 0x1
	.long	.LASF714
	.value	0x211
	.uleb128 0x1
	.long	.LASF715
	.value	0x212
	.uleb128 0x1
	.long	.LASF716
	.value	0x213
	.uleb128 0x1
	.long	.LASF717
	.value	0x214
	.uleb128 0x1
	.long	.LASF718
	.value	0x215
	.uleb128 0x1
	.long	.LASF719
	.value	0x216
	.uleb128 0x1
	.long	.LASF720
	.value	0x217
	.uleb128 0x1
	.long	.LASF721
	.value	0x218
	.uleb128 0x1
	.long	.LASF722
	.value	0x219
	.uleb128 0x1
	.long	.LASF723
	.value	0x21a
	.uleb128 0x1
	.long	.LASF724
	.value	0x21b
	.uleb128 0x1
	.long	.LASF725
	.value	0x21c
	.uleb128 0x1
	.long	.LASF726
	.value	0x21d
	.uleb128 0x1
	.long	.LASF727
	.value	0x21e
	.uleb128 0x1
	.long	.LASF728
	.value	0x21f
	.uleb128 0x1
	.long	.LASF729
	.value	0x220
	.uleb128 0x1
	.long	.LASF730
	.value	0x221
	.uleb128 0x1
	.long	.LASF731
	.value	0x222
	.uleb128 0x1
	.long	.LASF732
	.value	0x223
	.uleb128 0x1
	.long	.LASF733
	.value	0x224
	.uleb128 0x1
	.long	.LASF734
	.value	0x225
	.uleb128 0x1
	.long	.LASF735
	.value	0x226
	.uleb128 0x1
	.long	.LASF736
	.value	0x227
	.uleb128 0x1
	.long	.LASF737
	.value	0x228
	.uleb128 0x1
	.long	.LASF738
	.value	0x229
	.uleb128 0x1
	.long	.LASF739
	.value	0x22a
	.uleb128 0x1
	.long	.LASF740
	.value	0x22b
	.uleb128 0x1
	.long	.LASF741
	.value	0x22c
	.uleb128 0x1
	.long	.LASF742
	.value	0x22d
	.uleb128 0x1
	.long	.LASF743
	.value	0x22e
	.uleb128 0x1
	.long	.LASF744
	.value	0x22f
	.uleb128 0x1
	.long	.LASF745
	.value	0x230
	.uleb128 0x1
	.long	.LASF746
	.value	0x231
	.uleb128 0x1
	.long	.LASF747
	.value	0x232
	.uleb128 0x1
	.long	.LASF748
	.value	0x233
	.uleb128 0x1
	.long	.LASF749
	.value	0x234
	.uleb128 0x1
	.long	.LASF750
	.value	0x235
	.uleb128 0x1
	.long	.LASF751
	.value	0x236
	.uleb128 0x1
	.long	.LASF752
	.value	0x237
	.uleb128 0x1
	.long	.LASF753
	.value	0x238
	.uleb128 0x1
	.long	.LASF754
	.value	0x239
	.uleb128 0x1
	.long	.LASF755
	.value	0x23a
	.uleb128 0x1
	.long	.LASF756
	.value	0x23b
	.uleb128 0x1
	.long	.LASF757
	.value	0x23c
	.uleb128 0x1
	.long	.LASF758
	.value	0x23d
	.uleb128 0x1
	.long	.LASF759
	.value	0x23e
	.uleb128 0x1
	.long	.LASF760
	.value	0x23f
	.uleb128 0x1
	.long	.LASF761
	.value	0x240
	.uleb128 0x1
	.long	.LASF762
	.value	0x241
	.uleb128 0x1
	.long	.LASF763
	.value	0x242
	.uleb128 0x1
	.long	.LASF764
	.value	0x243
	.uleb128 0x1
	.long	.LASF765
	.value	0x244
	.uleb128 0x1
	.long	.LASF766
	.value	0x245
	.uleb128 0x1
	.long	.LASF767
	.value	0x246
	.uleb128 0x1
	.long	.LASF768
	.value	0x247
	.uleb128 0x1
	.long	.LASF769
	.value	0x248
	.uleb128 0x1
	.long	.LASF770
	.value	0x249
	.uleb128 0x1
	.long	.LASF771
	.value	0x24a
	.uleb128 0x1
	.long	.LASF772
	.value	0x24b
	.uleb128 0x1
	.long	.LASF773
	.value	0x24c
	.uleb128 0x1
	.long	.LASF774
	.value	0x24d
	.uleb128 0x1
	.long	.LASF775
	.value	0x24e
	.uleb128 0x1
	.long	.LASF776
	.value	0x24f
	.uleb128 0x1
	.long	.LASF777
	.value	0x250
	.uleb128 0x1
	.long	.LASF778
	.value	0x251
	.uleb128 0x1
	.long	.LASF779
	.value	0x252
	.uleb128 0x1
	.long	.LASF780
	.value	0x253
	.uleb128 0x1
	.long	.LASF781
	.value	0x254
	.uleb128 0x1
	.long	.LASF782
	.value	0x255
	.uleb128 0x1
	.long	.LASF783
	.value	0x256
	.uleb128 0x1
	.long	.LASF784
	.value	0x257
	.uleb128 0x1
	.long	.LASF785
	.value	0x258
	.uleb128 0x1
	.long	.LASF786
	.value	0x259
	.uleb128 0x1
	.long	.LASF787
	.value	0x25a
	.uleb128 0x1
	.long	.LASF788
	.value	0x25b
	.uleb128 0x1
	.long	.LASF789
	.value	0x25c
	.uleb128 0x1
	.long	.LASF790
	.value	0x25d
	.uleb128 0x1
	.long	.LASF791
	.value	0x25e
	.uleb128 0x1
	.long	.LASF792
	.value	0x25f
	.uleb128 0x1
	.long	.LASF793
	.value	0x260
	.uleb128 0x1
	.long	.LASF794
	.value	0x261
	.uleb128 0x1
	.long	.LASF795
	.value	0x262
	.uleb128 0x1
	.long	.LASF796
	.value	0x263
	.uleb128 0x1
	.long	.LASF797
	.value	0x264
	.uleb128 0x1
	.long	.LASF798
	.value	0x265
	.uleb128 0x1
	.long	.LASF799
	.value	0x266
	.uleb128 0x1
	.long	.LASF800
	.value	0x267
	.uleb128 0x1
	.long	.LASF801
	.value	0x268
	.uleb128 0x1
	.long	.LASF802
	.value	0x269
	.uleb128 0x1
	.long	.LASF803
	.value	0x26a
	.uleb128 0x1
	.long	.LASF804
	.value	0x26b
	.uleb128 0x1
	.long	.LASF805
	.value	0x26c
	.uleb128 0x1
	.long	.LASF806
	.value	0x26d
	.uleb128 0x1
	.long	.LASF807
	.value	0x26e
	.uleb128 0x1
	.long	.LASF808
	.value	0x26f
	.uleb128 0x1
	.long	.LASF809
	.value	0x270
	.uleb128 0x1
	.long	.LASF810
	.value	0x271
	.uleb128 0x1
	.long	.LASF811
	.value	0x272
	.uleb128 0x1
	.long	.LASF812
	.value	0x273
	.uleb128 0x1
	.long	.LASF813
	.value	0x274
	.uleb128 0x1
	.long	.LASF814
	.value	0x275
	.uleb128 0x1
	.long	.LASF815
	.value	0x276
	.uleb128 0x1
	.long	.LASF816
	.value	0x277
	.uleb128 0x1
	.long	.LASF817
	.value	0x278
	.uleb128 0x1
	.long	.LASF818
	.value	0x279
	.uleb128 0x1
	.long	.LASF819
	.value	0x27a
	.uleb128 0x1
	.long	.LASF820
	.value	0x27b
	.uleb128 0x1
	.long	.LASF821
	.value	0x27c
	.uleb128 0x1
	.long	.LASF822
	.value	0x27d
	.uleb128 0x1
	.long	.LASF823
	.value	0x27e
	.uleb128 0x1
	.long	.LASF824
	.value	0x27f
	.uleb128 0x1
	.long	.LASF825
	.value	0x280
	.uleb128 0x1
	.long	.LASF826
	.value	0x281
	.uleb128 0x1
	.long	.LASF827
	.value	0x282
	.uleb128 0x1
	.long	.LASF828
	.value	0x283
	.uleb128 0x1
	.long	.LASF829
	.value	0x284
	.uleb128 0x1
	.long	.LASF830
	.value	0x285
	.uleb128 0x1
	.long	.LASF831
	.value	0x286
	.uleb128 0x1
	.long	.LASF832
	.value	0x287
	.uleb128 0x1
	.long	.LASF833
	.value	0x288
	.uleb128 0x1
	.long	.LASF834
	.value	0x289
	.uleb128 0x1
	.long	.LASF835
	.value	0x28a
	.uleb128 0x1
	.long	.LASF836
	.value	0x28b
	.uleb128 0x1
	.long	.LASF837
	.value	0x28c
	.uleb128 0x1
	.long	.LASF838
	.value	0x28d
	.uleb128 0x1
	.long	.LASF839
	.value	0x28e
	.uleb128 0x1
	.long	.LASF840
	.value	0x28f
	.uleb128 0x1
	.long	.LASF841
	.value	0x290
	.uleb128 0x1
	.long	.LASF842
	.value	0x291
	.uleb128 0x1
	.long	.LASF843
	.value	0x292
	.uleb128 0x1
	.long	.LASF844
	.value	0x293
	.uleb128 0x1
	.long	.LASF845
	.value	0x294
	.uleb128 0x1
	.long	.LASF846
	.value	0x295
	.uleb128 0x1
	.long	.LASF847
	.value	0x296
	.uleb128 0x1
	.long	.LASF848
	.value	0x297
	.uleb128 0x1
	.long	.LASF849
	.value	0x298
	.uleb128 0x1
	.long	.LASF850
	.value	0x299
	.uleb128 0x1
	.long	.LASF851
	.value	0x29a
	.uleb128 0x1
	.long	.LASF852
	.value	0x29b
	.uleb128 0x1
	.long	.LASF853
	.value	0x29c
	.uleb128 0x1
	.long	.LASF854
	.value	0x29d
	.uleb128 0x1
	.long	.LASF855
	.value	0x29e
	.uleb128 0x1
	.long	.LASF856
	.value	0x29f
	.uleb128 0x1
	.long	.LASF857
	.value	0x2a0
	.uleb128 0x1
	.long	.LASF858
	.value	0x2a1
	.uleb128 0x1
	.long	.LASF859
	.value	0x2a2
	.uleb128 0x1
	.long	.LASF860
	.value	0x2a3
	.uleb128 0x1
	.long	.LASF861
	.value	0x2a4
	.uleb128 0x1
	.long	.LASF862
	.value	0x2a5
	.uleb128 0x1
	.long	.LASF863
	.value	0x2a6
	.uleb128 0x1
	.long	.LASF864
	.value	0x2a7
	.uleb128 0x1
	.long	.LASF865
	.value	0x2a8
	.uleb128 0x1
	.long	.LASF866
	.value	0x2a9
	.uleb128 0x1
	.long	.LASF867
	.value	0x2aa
	.uleb128 0x1
	.long	.LASF868
	.value	0x2ab
	.uleb128 0x1
	.long	.LASF869
	.value	0x2ac
	.uleb128 0x1
	.long	.LASF870
	.value	0x2ad
	.uleb128 0x1
	.long	.LASF871
	.value	0x2ae
	.uleb128 0x1
	.long	.LASF872
	.value	0x2af
	.uleb128 0x1
	.long	.LASF873
	.value	0x2b0
	.uleb128 0x1
	.long	.LASF874
	.value	0x2b1
	.uleb128 0x1
	.long	.LASF875
	.value	0x2b2
	.uleb128 0x1
	.long	.LASF876
	.value	0x2b3
	.uleb128 0x1
	.long	.LASF877
	.value	0x2b4
	.uleb128 0x1
	.long	.LASF878
	.value	0x2b5
	.uleb128 0x1
	.long	.LASF879
	.value	0x2b6
	.uleb128 0x1
	.long	.LASF880
	.value	0x2b7
	.uleb128 0x1
	.long	.LASF881
	.value	0x2b8
	.uleb128 0x1
	.long	.LASF882
	.value	0x2b9
	.uleb128 0x1
	.long	.LASF883
	.value	0x2ba
	.uleb128 0x1
	.long	.LASF884
	.value	0x2bb
	.uleb128 0x1
	.long	.LASF885
	.value	0x2bc
	.uleb128 0x1
	.long	.LASF886
	.value	0x2bd
	.uleb128 0x1
	.long	.LASF887
	.value	0x2be
	.uleb128 0x1
	.long	.LASF888
	.value	0x2bf
	.uleb128 0x1
	.long	.LASF889
	.value	0x2c0
	.uleb128 0x1
	.long	.LASF890
	.value	0x2c1
	.uleb128 0x1
	.long	.LASF891
	.value	0x2c2
	.uleb128 0x1
	.long	.LASF892
	.value	0x2c3
	.uleb128 0x1
	.long	.LASF893
	.value	0x2c4
	.uleb128 0x1
	.long	.LASF894
	.value	0x2c5
	.uleb128 0x1
	.long	.LASF895
	.value	0x2c6
	.uleb128 0x1
	.long	.LASF896
	.value	0x2c7
	.uleb128 0x1
	.long	.LASF897
	.value	0x2c8
	.uleb128 0x1
	.long	.LASF898
	.value	0x2c9
	.uleb128 0x1
	.long	.LASF899
	.value	0x2ca
	.uleb128 0x1
	.long	.LASF900
	.value	0x2cb
	.uleb128 0x1
	.long	.LASF901
	.value	0x2cc
	.uleb128 0x1
	.long	.LASF902
	.value	0x2cd
	.uleb128 0x1
	.long	.LASF903
	.value	0x2ce
	.uleb128 0x1
	.long	.LASF904
	.value	0x2cf
	.uleb128 0x1
	.long	.LASF905
	.value	0x2d0
	.uleb128 0x1
	.long	.LASF906
	.value	0x2d1
	.uleb128 0x1
	.long	.LASF907
	.value	0x2d2
	.uleb128 0x1
	.long	.LASF908
	.value	0x2d3
	.uleb128 0x1
	.long	.LASF909
	.value	0x2d4
	.uleb128 0x1
	.long	.LASF910
	.value	0x2d5
	.uleb128 0x1
	.long	.LASF911
	.value	0x2d6
	.uleb128 0x1
	.long	.LASF912
	.value	0x2d7
	.uleb128 0x1
	.long	.LASF913
	.value	0x2d8
	.uleb128 0x1
	.long	.LASF914
	.value	0x2d9
	.uleb128 0x1
	.long	.LASF915
	.value	0x2da
	.uleb128 0x1
	.long	.LASF916
	.value	0x2db
	.uleb128 0x1
	.long	.LASF917
	.value	0x2dc
	.uleb128 0x1
	.long	.LASF918
	.value	0x2dd
	.uleb128 0x1
	.long	.LASF919
	.value	0x2de
	.uleb128 0x1
	.long	.LASF920
	.value	0x2df
	.uleb128 0x1
	.long	.LASF921
	.value	0x2e0
	.uleb128 0x1
	.long	.LASF922
	.value	0x2e1
	.uleb128 0x1
	.long	.LASF923
	.value	0x2e2
	.uleb128 0x1
	.long	.LASF924
	.value	0x2e3
	.uleb128 0x1
	.long	.LASF925
	.value	0x2e4
	.uleb128 0x1
	.long	.LASF926
	.value	0x2e5
	.uleb128 0x1
	.long	.LASF927
	.value	0x2e6
	.uleb128 0x1
	.long	.LASF928
	.value	0x2e7
	.uleb128 0x1
	.long	.LASF929
	.value	0x2e8
	.uleb128 0x1
	.long	.LASF930
	.value	0x2e9
	.uleb128 0x1
	.long	.LASF931
	.value	0x2ea
	.uleb128 0x1
	.long	.LASF932
	.value	0x2eb
	.uleb128 0x1
	.long	.LASF933
	.value	0x2ec
	.uleb128 0x1
	.long	.LASF934
	.value	0x2ed
	.uleb128 0x1
	.long	.LASF935
	.value	0x2ee
	.uleb128 0x1
	.long	.LASF936
	.value	0x2ef
	.uleb128 0x1
	.long	.LASF937
	.value	0x2f0
	.uleb128 0x1
	.long	.LASF938
	.value	0x2f1
	.uleb128 0x1
	.long	.LASF939
	.value	0x2f2
	.uleb128 0x1
	.long	.LASF940
	.value	0x2f3
	.uleb128 0x1
	.long	.LASF941
	.value	0x2f4
	.uleb128 0x1
	.long	.LASF942
	.value	0x2f5
	.uleb128 0x1
	.long	.LASF943
	.value	0x2f6
	.uleb128 0x1
	.long	.LASF944
	.value	0x2f7
	.uleb128 0x1
	.long	.LASF945
	.value	0x2f8
	.uleb128 0x1
	.long	.LASF946
	.value	0x2f9
	.uleb128 0x1
	.long	.LASF947
	.value	0x2fa
	.uleb128 0x1
	.long	.LASF948
	.value	0x2fb
	.uleb128 0x1
	.long	.LASF949
	.value	0x2fc
	.uleb128 0x1
	.long	.LASF950
	.value	0x2fd
	.uleb128 0x1
	.long	.LASF951
	.value	0x2fe
	.uleb128 0x1
	.long	.LASF952
	.value	0x2ff
	.uleb128 0x1
	.long	.LASF953
	.value	0x300
	.uleb128 0x1
	.long	.LASF954
	.value	0x301
	.uleb128 0x1
	.long	.LASF955
	.value	0x302
	.uleb128 0x1
	.long	.LASF956
	.value	0x303
	.uleb128 0x1
	.long	.LASF957
	.value	0x304
	.uleb128 0x1
	.long	.LASF958
	.value	0x305
	.uleb128 0x1
	.long	.LASF959
	.value	0x306
	.uleb128 0x1
	.long	.LASF960
	.value	0x307
	.uleb128 0x1
	.long	.LASF961
	.value	0x308
	.uleb128 0x1
	.long	.LASF962
	.value	0x309
	.uleb128 0x1
	.long	.LASF963
	.value	0x30a
	.uleb128 0x1
	.long	.LASF964
	.value	0x30b
	.uleb128 0x1
	.long	.LASF965
	.value	0x30c
	.uleb128 0x1
	.long	.LASF966
	.value	0x30d
	.uleb128 0x1
	.long	.LASF967
	.value	0x30e
	.uleb128 0x1
	.long	.LASF968
	.value	0x30f
	.uleb128 0x1
	.long	.LASF969
	.value	0x310
	.uleb128 0x1
	.long	.LASF970
	.value	0x311
	.uleb128 0x1
	.long	.LASF971
	.value	0x312
	.uleb128 0x1
	.long	.LASF972
	.value	0x313
	.uleb128 0x1
	.long	.LASF973
	.value	0x314
	.uleb128 0x1
	.long	.LASF974
	.value	0x315
	.uleb128 0x1
	.long	.LASF975
	.value	0x316
	.uleb128 0x1
	.long	.LASF976
	.value	0x317
	.uleb128 0x1
	.long	.LASF977
	.value	0x318
	.uleb128 0x1
	.long	.LASF978
	.value	0x319
	.uleb128 0x1
	.long	.LASF979
	.value	0x31a
	.uleb128 0x1
	.long	.LASF980
	.value	0x31b
	.uleb128 0x1
	.long	.LASF981
	.value	0x31c
	.uleb128 0x1
	.long	.LASF982
	.value	0x31d
	.uleb128 0x1
	.long	.LASF983
	.value	0x31e
	.uleb128 0x1
	.long	.LASF984
	.value	0x31f
	.uleb128 0x1
	.long	.LASF985
	.value	0x320
	.uleb128 0x1
	.long	.LASF986
	.value	0x321
	.uleb128 0x1
	.long	.LASF987
	.value	0x322
	.uleb128 0x1
	.long	.LASF988
	.value	0x323
	.uleb128 0x1
	.long	.LASF989
	.value	0x324
	.uleb128 0x1
	.long	.LASF990
	.value	0x325
	.uleb128 0x1
	.long	.LASF991
	.value	0x326
	.uleb128 0x1
	.long	.LASF992
	.value	0x327
	.uleb128 0x1
	.long	.LASF993
	.value	0x328
	.uleb128 0x1
	.long	.LASF994
	.value	0x329
	.uleb128 0x1
	.long	.LASF995
	.value	0x32a
	.uleb128 0x1
	.long	.LASF996
	.value	0x32b
	.uleb128 0x1
	.long	.LASF997
	.value	0x32c
	.uleb128 0x1
	.long	.LASF998
	.value	0x32d
	.uleb128 0x1
	.long	.LASF999
	.value	0x32e
	.uleb128 0x1
	.long	.LASF1000
	.value	0x32f
	.uleb128 0x1
	.long	.LASF1001
	.value	0x330
	.uleb128 0x1
	.long	.LASF1002
	.value	0x331
	.uleb128 0x1
	.long	.LASF1003
	.value	0x332
	.uleb128 0x1
	.long	.LASF1004
	.value	0x333
	.uleb128 0x1
	.long	.LASF1005
	.value	0x334
	.uleb128 0x1
	.long	.LASF1006
	.value	0x335
	.uleb128 0x1
	.long	.LASF1007
	.value	0x336
	.uleb128 0x1
	.long	.LASF1008
	.value	0x337
	.uleb128 0x1
	.long	.LASF1009
	.value	0x338
	.uleb128 0x1
	.long	.LASF1010
	.value	0x339
	.uleb128 0x1
	.long	.LASF1011
	.value	0x33a
	.uleb128 0x1
	.long	.LASF1012
	.value	0x33b
	.uleb128 0x1
	.long	.LASF1013
	.value	0x33c
	.uleb128 0x1
	.long	.LASF1014
	.value	0x33d
	.uleb128 0x1
	.long	.LASF1015
	.value	0x33e
	.uleb128 0x1
	.long	.LASF1016
	.value	0x33f
	.uleb128 0x1
	.long	.LASF1017
	.value	0x340
	.uleb128 0x1
	.long	.LASF1018
	.value	0x341
	.uleb128 0x1
	.long	.LASF1019
	.value	0x342
	.uleb128 0x1
	.long	.LASF1020
	.value	0x343
	.uleb128 0x1
	.long	.LASF1021
	.value	0x344
	.uleb128 0x1
	.long	.LASF1022
	.value	0x345
	.uleb128 0x1
	.long	.LASF1023
	.value	0x346
	.uleb128 0x1
	.long	.LASF1024
	.value	0x347
	.uleb128 0x1
	.long	.LASF1025
	.value	0x348
	.uleb128 0x1
	.long	.LASF1026
	.value	0x349
	.uleb128 0x1
	.long	.LASF1027
	.value	0x34a
	.uleb128 0x1
	.long	.LASF1028
	.value	0x34b
	.uleb128 0x1
	.long	.LASF1029
	.value	0x34c
	.uleb128 0x1
	.long	.LASF1030
	.value	0x34d
	.uleb128 0x1
	.long	.LASF1031
	.value	0x34e
	.uleb128 0x1
	.long	.LASF1032
	.value	0x34f
	.uleb128 0x1
	.long	.LASF1033
	.value	0x350
	.uleb128 0x1
	.long	.LASF1034
	.value	0x351
	.uleb128 0x1
	.long	.LASF1035
	.value	0x352
	.uleb128 0x1
	.long	.LASF1036
	.value	0x353
	.uleb128 0x1
	.long	.LASF1037
	.value	0x354
	.uleb128 0x1
	.long	.LASF1038
	.value	0x355
	.uleb128 0x1
	.long	.LASF1039
	.value	0x356
	.uleb128 0x1
	.long	.LASF1040
	.value	0x357
	.uleb128 0x1
	.long	.LASF1041
	.value	0x358
	.uleb128 0x1
	.long	.LASF1042
	.value	0x359
	.uleb128 0x1
	.long	.LASF1043
	.value	0x35a
	.uleb128 0x1
	.long	.LASF1044
	.value	0x35b
	.uleb128 0x1
	.long	.LASF1045
	.value	0x35c
	.uleb128 0x1
	.long	.LASF1046
	.value	0x35d
	.uleb128 0x1
	.long	.LASF1047
	.value	0x35e
	.uleb128 0x1
	.long	.LASF1048
	.value	0x35f
	.uleb128 0x1
	.long	.LASF1049
	.value	0x360
	.uleb128 0x1
	.long	.LASF1050
	.value	0x361
	.uleb128 0x1
	.long	.LASF1051
	.value	0x362
	.uleb128 0x1
	.long	.LASF1052
	.value	0x363
	.uleb128 0x1
	.long	.LASF1053
	.value	0x364
	.uleb128 0x1
	.long	.LASF1054
	.value	0x365
	.uleb128 0x1
	.long	.LASF1055
	.value	0x366
	.uleb128 0x1
	.long	.LASF1056
	.value	0x367
	.uleb128 0x1
	.long	.LASF1057
	.value	0x368
	.uleb128 0x1
	.long	.LASF1058
	.value	0x369
	.uleb128 0x1
	.long	.LASF1059
	.value	0x36a
	.uleb128 0x1
	.long	.LASF1060
	.value	0x36b
	.uleb128 0x1
	.long	.LASF1061
	.value	0x36c
	.uleb128 0x1
	.long	.LASF1062
	.value	0x36d
	.uleb128 0x1
	.long	.LASF1063
	.value	0x36e
	.uleb128 0x1
	.long	.LASF1064
	.value	0x36f
	.uleb128 0x1
	.long	.LASF1065
	.value	0x370
	.uleb128 0x1
	.long	.LASF1066
	.value	0x371
	.uleb128 0x1
	.long	.LASF1067
	.value	0x372
	.uleb128 0x1
	.long	.LASF1068
	.value	0x373
	.uleb128 0x1
	.long	.LASF1069
	.value	0x374
	.uleb128 0x1
	.long	.LASF1070
	.value	0x375
	.uleb128 0x1
	.long	.LASF1071
	.value	0x376
	.uleb128 0x1
	.long	.LASF1072
	.value	0x377
	.uleb128 0x1
	.long	.LASF1073
	.value	0x378
	.uleb128 0x1
	.long	.LASF1074
	.value	0x379
	.uleb128 0x1
	.long	.LASF1075
	.value	0x37a
	.uleb128 0x1
	.long	.LASF1076
	.value	0x37b
	.uleb128 0x1
	.long	.LASF1077
	.value	0x37c
	.uleb128 0x1
	.long	.LASF1078
	.value	0x37d
	.uleb128 0x1
	.long	.LASF1079
	.value	0x37e
	.uleb128 0x1
	.long	.LASF1080
	.value	0x37f
	.uleb128 0x1
	.long	.LASF1081
	.value	0x380
	.uleb128 0x1
	.long	.LASF1082
	.value	0x381
	.uleb128 0x1
	.long	.LASF1083
	.value	0x382
	.uleb128 0x1
	.long	.LASF1084
	.value	0x383
	.uleb128 0x1
	.long	.LASF1085
	.value	0x384
	.uleb128 0x1
	.long	.LASF1086
	.value	0x385
	.uleb128 0x1
	.long	.LASF1087
	.value	0x386
	.uleb128 0x1
	.long	.LASF1088
	.value	0x387
	.uleb128 0x1
	.long	.LASF1089
	.value	0x388
	.uleb128 0x1
	.long	.LASF1090
	.value	0x389
	.uleb128 0x1
	.long	.LASF1091
	.value	0x38a
	.uleb128 0x1
	.long	.LASF1092
	.value	0x38b
	.uleb128 0x1
	.long	.LASF1093
	.value	0x38c
	.uleb128 0x1
	.long	.LASF1094
	.value	0x38d
	.uleb128 0x1
	.long	.LASF1095
	.value	0x38e
	.uleb128 0x1
	.long	.LASF1096
	.value	0x38f
	.uleb128 0x1
	.long	.LASF1097
	.value	0x390
	.uleb128 0x1
	.long	.LASF1098
	.value	0x391
	.uleb128 0x1
	.long	.LASF1099
	.value	0x392
	.uleb128 0x1
	.long	.LASF1100
	.value	0x393
	.uleb128 0x1
	.long	.LASF1101
	.value	0x394
	.uleb128 0x1
	.long	.LASF1102
	.value	0x395
	.uleb128 0x1
	.long	.LASF1103
	.value	0x396
	.uleb128 0x1
	.long	.LASF1104
	.value	0x397
	.uleb128 0x1
	.long	.LASF1105
	.value	0x398
	.uleb128 0x1
	.long	.LASF1106
	.value	0x399
	.uleb128 0x1
	.long	.LASF1107
	.value	0x39a
	.uleb128 0x1
	.long	.LASF1108
	.value	0x39b
	.uleb128 0x1
	.long	.LASF1109
	.value	0x39c
	.uleb128 0x1
	.long	.LASF1110
	.value	0x39d
	.uleb128 0x1
	.long	.LASF1111
	.value	0x39e
	.uleb128 0x1
	.long	.LASF1112
	.value	0x39f
	.uleb128 0x1
	.long	.LASF1113
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF1114
	.value	0x3a1
	.uleb128 0x1
	.long	.LASF1115
	.value	0x3a2
	.uleb128 0x1
	.long	.LASF1116
	.value	0x3a3
	.uleb128 0x1
	.long	.LASF1117
	.value	0x3a4
	.uleb128 0x1
	.long	.LASF1118
	.value	0x3a5
	.uleb128 0x1
	.long	.LASF1119
	.value	0x3a6
	.uleb128 0x1
	.long	.LASF1120
	.value	0x3a7
	.uleb128 0x1
	.long	.LASF1121
	.value	0x3a8
	.uleb128 0x1
	.long	.LASF1122
	.value	0x3a9
	.uleb128 0x1
	.long	.LASF1123
	.value	0x3aa
	.uleb128 0x1
	.long	.LASF1124
	.value	0x3ab
	.uleb128 0x1
	.long	.LASF1125
	.value	0x3ac
	.uleb128 0x1
	.long	.LASF1126
	.value	0x3ad
	.uleb128 0x1
	.long	.LASF1127
	.value	0x3ae
	.uleb128 0x1
	.long	.LASF1128
	.value	0x3af
	.uleb128 0x1
	.long	.LASF1129
	.value	0x3b0
	.uleb128 0x1
	.long	.LASF1130
	.value	0x3b1
	.uleb128 0x1
	.long	.LASF1131
	.value	0x3b2
	.uleb128 0x1
	.long	.LASF1132
	.value	0x3b3
	.uleb128 0x1
	.long	.LASF1133
	.value	0x3b4
	.uleb128 0x1
	.long	.LASF1134
	.value	0x3b5
	.uleb128 0x1
	.long	.LASF1135
	.value	0x3b6
	.uleb128 0x1
	.long	.LASF1136
	.value	0x3b7
	.uleb128 0x1
	.long	.LASF1137
	.value	0x3b8
	.uleb128 0x1
	.long	.LASF1138
	.value	0x3b9
	.uleb128 0x1
	.long	.LASF1139
	.value	0x3ba
	.uleb128 0x1
	.long	.LASF1140
	.value	0x3bb
	.uleb128 0x1
	.long	.LASF1141
	.value	0x3bc
	.uleb128 0x1
	.long	.LASF1142
	.value	0x3bd
	.uleb128 0x1
	.long	.LASF1143
	.value	0x3be
	.uleb128 0x1
	.long	.LASF1144
	.value	0x3bf
	.uleb128 0x1
	.long	.LASF1145
	.value	0x3c0
	.uleb128 0x1
	.long	.LASF1146
	.value	0x3c1
	.uleb128 0x1
	.long	.LASF1147
	.value	0x3c2
	.uleb128 0x1
	.long	.LASF1148
	.value	0x3c3
	.uleb128 0x1
	.long	.LASF1149
	.value	0x3c4
	.uleb128 0x1
	.long	.LASF1150
	.value	0x3c5
	.uleb128 0x1
	.long	.LASF1151
	.value	0x3c6
	.uleb128 0x1
	.long	.LASF1152
	.value	0x3c7
	.byte	0
	.uleb128 0x11
	.long	.LASF1153
	.byte	0x8
	.value	0x478
	.long	0x5ee
	.uleb128 0x1c
	.byte	0x38
	.value	0x47b
	.long	0x1fea
	.uleb128 0x4
	.long	.LASF1154
	.byte	0x8
	.value	0x47d
	.byte	0xf
	.long	0x5e2
	.byte	0
	.uleb128 0x4
	.long	.LASF1155
	.byte	0x8
	.value	0x47e
	.byte	0xa
	.long	0x97
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1156
	.byte	0x8
	.value	0x47f
	.byte	0xa
	.long	0x97
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1157
	.byte	0x8
	.value	0x481
	.byte	0xf
	.long	0x1d4
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1158
	.byte	0x8
	.value	0x482
	.byte	0x10
	.long	0x1f73
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1159
	.byte	0x8
	.value	0x483
	.byte	0xa
	.long	0x97
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1160
	.byte	0x8
	.value	0x483
	.byte	0x11
	.long	0x97
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.long	.LASF1161
	.byte	0x8
	.value	0x484
	.long	0x1f7f
	.uleb128 0x26
	.byte	0x7
	.byte	0x4
	.long	0x6b
	.byte	0x8
	.value	0x48b
	.byte	0xe
	.long	0x2342
	.uleb128 0x2
	.long	.LASF1162
	.byte	0
	.uleb128 0x2
	.long	.LASF1163
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1164
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1165
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1166
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1167
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1168
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1169
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1170
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1171
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1172
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1173
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1174
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1175
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1176
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1177
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1178
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1179
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1180
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1181
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1182
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1183
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1184
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1185
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1186
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1187
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1188
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1189
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1190
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1191
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1192
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1193
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1194
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1195
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1196
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1197
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1198
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1199
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1200
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1201
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1202
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1203
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1204
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1205
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1206
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1207
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1208
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1209
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1210
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1211
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1212
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1213
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1214
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1215
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1216
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1217
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1218
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1219
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1220
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1221
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1222
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1223
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1224
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1225
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1226
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1227
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1228
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1229
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1230
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1231
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1232
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1233
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1234
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1235
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1236
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1237
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1238
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1239
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1240
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1241
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1242
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1243
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1244
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1245
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1246
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1247
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1248
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1249
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1250
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1251
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1252
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1253
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1254
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1255
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1256
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1257
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1258
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1259
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1260
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1261
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1262
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1263
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1264
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1265
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1266
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1267
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1268
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1269
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1270
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1271
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF1272
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF1273
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF1274
	.byte	0x70
	.uleb128 0x2
	.long	.LASF1275
	.byte	0x71
	.uleb128 0x2
	.long	.LASF1276
	.byte	0x72
	.uleb128 0x2
	.long	.LASF1277
	.byte	0x73
	.uleb128 0x2
	.long	.LASF1278
	.byte	0x74
	.uleb128 0x2
	.long	.LASF1279
	.byte	0x75
	.uleb128 0x2
	.long	.LASF1280
	.byte	0x76
	.uleb128 0x2
	.long	.LASF1281
	.byte	0x77
	.uleb128 0x2
	.long	.LASF1282
	.byte	0x78
	.uleb128 0x2
	.long	.LASF1283
	.byte	0x79
	.uleb128 0x2
	.long	.LASF1284
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF1285
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF1286
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF1287
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF1288
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF1289
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF1290
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1291
	.byte	0x81
	.uleb128 0x2
	.long	.LASF1292
	.byte	0x82
	.uleb128 0x2
	.long	.LASF1293
	.byte	0x83
	.uleb128 0x2
	.long	.LASF1294
	.byte	0x84
	.uleb128 0x2
	.long	.LASF1295
	.byte	0x85
	.uleb128 0x2
	.long	.LASF1296
	.byte	0x86
	.uleb128 0x2
	.long	.LASF1297
	.byte	0x87
	.uleb128 0x2
	.long	.LASF1298
	.byte	0x88
	.uleb128 0x2
	.long	.LASF1299
	.byte	0x89
	.byte	0
	.uleb128 0x11
	.long	.LASF1300
	.byte	0x8
	.value	0x517
	.long	0x1ff6
	.uleb128 0x1c
	.byte	0x5c
	.value	0x519
	.long	0x2499
	.uleb128 0x4
	.long	.LASF1301
	.byte	0x8
	.value	0x51b
	.byte	0x9
	.long	0x90
	.byte	0
	.uleb128 0x4
	.long	.LASF1302
	.byte	0x8
	.value	0x51c
	.byte	0x9
	.long	0x90
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1303
	.byte	0x8
	.value	0x51d
	.byte	0x9
	.long	0x90
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1304
	.byte	0x8
	.value	0x51e
	.byte	0x9
	.long	0x90
	.byte	0xc
	.uleb128 0x4
	.long	.LASF1305
	.byte	0x8
	.value	0x51f
	.byte	0x9
	.long	0x90
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1306
	.byte	0x8
	.value	0x520
	.byte	0x9
	.long	0x90
	.byte	0x14
	.uleb128 0x4
	.long	.LASF1307
	.byte	0x8
	.value	0x521
	.byte	0x9
	.long	0x90
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1308
	.byte	0x8
	.value	0x522
	.byte	0x9
	.long	0x90
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF1309
	.byte	0x8
	.value	0x523
	.byte	0x9
	.long	0x90
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1310
	.byte	0x8
	.value	0x524
	.byte	0x9
	.long	0x90
	.byte	0x24
	.uleb128 0x4
	.long	.LASF1311
	.byte	0x8
	.value	0x525
	.byte	0x9
	.long	0x90
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1312
	.byte	0x8
	.value	0x526
	.byte	0x9
	.long	0x90
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1313
	.byte	0x8
	.value	0x527
	.byte	0x9
	.long	0x90
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1314
	.byte	0x8
	.value	0x528
	.byte	0x9
	.long	0x90
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1315
	.byte	0x8
	.value	0x529
	.byte	0x9
	.long	0x90
	.byte	0x38
	.uleb128 0x4
	.long	.LASF1316
	.byte	0x8
	.value	0x52a
	.byte	0x9
	.long	0x90
	.byte	0x3c
	.uleb128 0x4
	.long	.LASF1317
	.byte	0x8
	.value	0x52b
	.byte	0x9
	.long	0x90
	.byte	0x40
	.uleb128 0x4
	.long	.LASF1318
	.byte	0x8
	.value	0x52c
	.byte	0x9
	.long	0x90
	.byte	0x44
	.uleb128 0x4
	.long	.LASF1319
	.byte	0x8
	.value	0x52d
	.byte	0x9
	.long	0x90
	.byte	0x48
	.uleb128 0x4
	.long	.LASF1320
	.byte	0x8
	.value	0x52e
	.byte	0x9
	.long	0x90
	.byte	0x4c
	.uleb128 0x4
	.long	.LASF1321
	.byte	0x8
	.value	0x52f
	.byte	0x9
	.long	0x90
	.byte	0x50
	.uleb128 0x4
	.long	.LASF1322
	.byte	0x8
	.value	0x530
	.byte	0x9
	.long	0x90
	.byte	0x54
	.uleb128 0x4
	.long	.LASF1323
	.byte	0x8
	.value	0x531
	.byte	0x9
	.long	0x90
	.byte	0x58
	.byte	0
	.uleb128 0x11
	.long	.LASF1324
	.byte	0x8
	.value	0x533
	.long	0x234e
	.uleb128 0x12
	.long	.LASF1326
	.byte	0xe0
	.byte	0x9
	.byte	0xcf
	.long	0x267c
	.uleb128 0x3
	.long	.LASF1327
	.byte	0x9
	.byte	0xd2
	.byte	0x10
	.long	0x225
	.byte	0
	.uleb128 0x7
	.string	"x"
	.byte	0x9
	.byte	0xd5
	.byte	0xe
	.long	0x13d
	.byte	0x18
	.uleb128 0x7
	.string	"y"
	.byte	0x9
	.byte	0xd6
	.byte	0xe
	.long	0x13d
	.byte	0x1c
	.uleb128 0x7
	.string	"z"
	.byte	0x9
	.byte	0xd7
	.byte	0xe
	.long	0x13d
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1328
	.byte	0x9
	.byte	0xda
	.byte	0x14
	.long	0x267c
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1329
	.byte	0x9
	.byte	0xdb
	.byte	0x14
	.long	0x267c
	.byte	0x30
	.uleb128 0x3
	.long	.LASF41
	.byte	0x9
	.byte	0xde
	.byte	0xe
	.long	0x149
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1154
	.byte	0x9
	.byte	0xdf
	.byte	0x12
	.long	0x5e2
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1155
	.byte	0x9
	.byte	0xe0
	.byte	0xb
	.long	0x90
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1330
	.byte	0x9
	.byte	0xe4
	.byte	0x14
	.long	0x267c
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1331
	.byte	0x9
	.byte	0xe5
	.byte	0x14
	.long	0x267c
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1332
	.byte	0x9
	.byte	0xe7
	.byte	0x19
	.long	0x26b5
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1333
	.byte	0x9
	.byte	0xea
	.byte	0xe
	.long	0x13d
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1334
	.byte	0x9
	.byte	0xeb
	.byte	0xe
	.long	0x13d
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1317
	.byte	0x9
	.byte	0xee
	.byte	0xe
	.long	0x13d
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1318
	.byte	0x9
	.byte	0xef
	.byte	0xe
	.long	0x13d
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1335
	.byte	0x9
	.byte	0xf2
	.byte	0xe
	.long	0x13d
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1336
	.byte	0x9
	.byte	0xf3
	.byte	0xe
	.long	0x13d
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1337
	.byte	0x9
	.byte	0xf4
	.byte	0xe
	.long	0x13d
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1338
	.byte	0x9
	.byte	0xf7
	.byte	0xb
	.long	0x90
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF42
	.byte	0x9
	.byte	0xf9
	.byte	0x11
	.long	0x2342
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1339
	.byte	0x9
	.byte	0xfa
	.byte	0x12
	.long	0x26ba
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1156
	.byte	0x9
	.byte	0xfc
	.byte	0xb
	.long	0x90
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1340
	.byte	0x9
	.byte	0xfd
	.byte	0xf
	.long	0x26bf
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1322
	.byte	0x9
	.byte	0xfe
	.byte	0xb
	.long	0x90
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1341
	.byte	0x9
	.byte	0xff
	.byte	0xb
	.long	0x90
	.byte	0xa4
	.uleb128 0x4
	.long	.LASF1342
	.byte	0x9
	.value	0x102
	.byte	0xb
	.long	0x90
	.byte	0xa8
	.uleb128 0x4
	.long	.LASF1343
	.byte	0x9
	.value	0x103
	.byte	0xb
	.long	0x90
	.byte	0xac
	.uleb128 0x4
	.long	.LASF1344
	.byte	0x9
	.value	0x107
	.byte	0x14
	.long	0x267c
	.byte	0xb0
	.uleb128 0x4
	.long	.LASF1306
	.byte	0x9
	.value	0x10b
	.byte	0xb
	.long	0x90
	.byte	0xb8
	.uleb128 0x4
	.long	.LASF1345
	.byte	0x9
	.value	0x10f
	.byte	0xb
	.long	0x90
	.byte	0xbc
	.uleb128 0x4
	.long	.LASF1346
	.byte	0x9
	.value	0x113
	.byte	0x16
	.long	0x2899
	.byte	0xc0
	.uleb128 0x4
	.long	.LASF1347
	.byte	0x9
	.value	0x116
	.byte	0xb
	.long	0x90
	.byte	0xc8
	.uleb128 0x4
	.long	.LASF1348
	.byte	0x9
	.value	0x119
	.byte	0x11
	.long	0x287
	.byte	0xcc
	.uleb128 0x4
	.long	.LASF1349
	.byte	0x9
	.value	0x11c
	.byte	0x14
	.long	0x267c
	.byte	0xd8
	.byte	0
	.uleb128 0x6
	.long	0x24a5
	.uleb128 0x12
	.long	.LASF1350
	.byte	0x10
	.byte	0xa
	.byte	0xe3
	.long	0x26b5
	.uleb128 0x3
	.long	.LASF1351
	.byte	0xa
	.byte	0xe5
	.byte	0xf
	.long	0x2adb
	.byte	0
	.uleb128 0x3
	.long	.LASF1352
	.byte	0xa
	.byte	0xe6
	.byte	0xb
	.long	0x89
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1353
	.byte	0xa
	.byte	0xe7
	.byte	0xb
	.long	0x89
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.long	0x2681
	.uleb128 0x6
	.long	0x2499
	.uleb128 0x6
	.long	0x1fea
	.uleb128 0x27
	.long	.LASF1354
	.value	0x140
	.byte	0xb
	.byte	0x53
	.byte	0x10
	.long	0x2899
	.uleb128 0x7
	.string	"mo"
	.byte	0xb
	.byte	0x55
	.byte	0xe
	.long	0x29f1
	.byte	0
	.uleb128 0x3
	.long	.LASF1355
	.byte	0xb
	.byte	0x56
	.byte	0x13
	.long	0x2c00
	.byte	0x8
	.uleb128 0x7
	.string	"cmd"
	.byte	0xb
	.byte	0x57
	.byte	0xf
	.long	0x2bd5
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1356
	.byte	0xb
	.byte	0x5c
	.byte	0xe
	.long	0x13d
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1357
	.byte	0xb
	.byte	0x5e
	.byte	0xe
	.long	0x13d
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1358
	.byte	0xb
	.byte	0x60
	.byte	0x16
	.long	0x13d
	.byte	0x1c
	.uleb128 0x7
	.string	"bob"
	.byte	0xb
	.byte	0x62
	.byte	0x16
	.long	0x13d
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1341
	.byte	0xb
	.byte	0x66
	.byte	0xb
	.long	0x90
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1359
	.byte	0xb
	.byte	0x67
	.byte	0xb
	.long	0x90
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1360
	.byte	0xb
	.byte	0x69
	.byte	0xb
	.long	0x90
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1361
	.byte	0xb
	.byte	0x6c
	.byte	0xb
	.long	0x2c0c
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1362
	.byte	0xb
	.byte	0x6d
	.byte	0xe
	.long	0x2c1c
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1363
	.byte	0xb
	.byte	0x6e
	.byte	0xe
	.long	0xbc
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1364
	.byte	0xb
	.byte	0x71
	.byte	0xb
	.long	0x29f6
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1365
	.byte	0xb
	.byte	0x72
	.byte	0x12
	.long	0x123
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1366
	.byte	0xb
	.byte	0x75
	.byte	0x12
	.long	0x123
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1367
	.byte	0xb
	.byte	0x77
	.byte	0xe
	.long	0x2c2c
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1368
	.byte	0xb
	.byte	0x78
	.byte	0xb
	.long	0x29f6
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1369
	.byte	0xb
	.byte	0x79
	.byte	0xb
	.long	0x29f6
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1370
	.byte	0xb
	.byte	0x7c
	.byte	0xb
	.long	0x90
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1371
	.byte	0xb
	.byte	0x7d
	.byte	0xb
	.long	0x90
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1372
	.byte	0xb
	.byte	0x81
	.byte	0xb
	.long	0x90
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1373
	.byte	0xb
	.byte	0x84
	.byte	0xb
	.long	0x90
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1374
	.byte	0xb
	.byte	0x87
	.byte	0xb
	.long	0x90
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1375
	.byte	0xb
	.byte	0x88
	.byte	0xb
	.long	0x90
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1376
	.byte	0xb
	.byte	0x89
	.byte	0xb
	.long	0x90
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1377
	.byte	0xb
	.byte	0x8c
	.byte	0xc
	.long	0x9e
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1378
	.byte	0xb
	.byte	0x8f
	.byte	0xb
	.long	0x90
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1379
	.byte	0xb
	.byte	0x90
	.byte	0xb
	.long	0x90
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1380
	.byte	0xb
	.byte	0x93
	.byte	0xe
	.long	0x29f1
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1381
	.byte	0xb
	.byte	0x96
	.byte	0xb
	.long	0x90
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1382
	.byte	0xb
	.byte	0x9a
	.byte	0xb
	.long	0x90
	.byte	0xfc
	.uleb128 0x15
	.long	.LASF1383
	.byte	0x9e
	.byte	0xb
	.long	0x90
	.value	0x100
	.uleb128 0x15
	.long	.LASF1384
	.byte	0xa1
	.byte	0xf
	.long	0x2c3c
	.value	0x108
	.uleb128 0x15
	.long	.LASF1385
	.byte	0xa4
	.byte	0xe
	.long	0xbc
	.value	0x138
	.byte	0
	.uleb128 0x6
	.long	0x26c4
	.uleb128 0x11
	.long	.LASF1386
	.byte	0x9
	.value	0x11e
	.long	0x24a5
	.uleb128 0xa
	.byte	0x8
	.byte	0xa
	.byte	0x47
	.long	0x28c9
	.uleb128 0x7
	.string	"x"
	.byte	0xa
	.byte	0x49
	.byte	0xd
	.long	0x13d
	.byte	0
	.uleb128 0x7
	.string	"y"
	.byte	0xa
	.byte	0x4a
	.byte	0xd
	.long	0x13d
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF1387
	.byte	0xa
	.byte	0x4c
	.byte	0x3
	.long	0x28aa
	.uleb128 0xa
	.byte	0x28
	.byte	0xa
	.byte	0x58
	.long	0x290c
	.uleb128 0x3
	.long	.LASF1327
	.byte	0xa
	.byte	0x5a
	.byte	0x10
	.long	0x225
	.byte	0
	.uleb128 0x7
	.string	"x"
	.byte	0xa
	.byte	0x5b
	.byte	0xe
	.long	0x13d
	.byte	0x18
	.uleb128 0x7
	.string	"y"
	.byte	0xa
	.byte	0x5c
	.byte	0xe
	.long	0x13d
	.byte	0x1c
	.uleb128 0x7
	.string	"z"
	.byte	0xa
	.byte	0x5d
	.byte	0xe
	.long	0x13d
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.long	.LASF1388
	.byte	0xa
	.byte	0x5f
	.byte	0x3
	.long	0x28d5
	.uleb128 0xa
	.byte	0x80
	.byte	0xa
	.byte	0x65
	.long	0x29f1
	.uleb128 0x3
	.long	.LASF1389
	.byte	0xa
	.byte	0x67
	.byte	0xd
	.long	0x13d
	.byte	0
	.uleb128 0x3
	.long	.LASF1390
	.byte	0xa
	.byte	0x68
	.byte	0xd
	.long	0x13d
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1391
	.byte	0xa
	.byte	0x69
	.byte	0xb
	.long	0x89
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1392
	.byte	0xa
	.byte	0x6a
	.byte	0xb
	.long	0x89
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1393
	.byte	0xa
	.byte	0x6b
	.byte	0xb
	.long	0x89
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1394
	.byte	0xa
	.byte	0x6c
	.byte	0xb
	.long	0x89
	.byte	0xe
	.uleb128 0x7
	.string	"tag"
	.byte	0xa
	.byte	0x6d
	.byte	0xb
	.long	0x89
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1395
	.byte	0xa
	.byte	0x70
	.byte	0xa
	.long	0x90
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1396
	.byte	0xa
	.byte	0x73
	.byte	0xd
	.long	0x29f1
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1397
	.byte	0xa
	.byte	0x76
	.byte	0xa
	.long	0x29f6
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1398
	.byte	0xa
	.byte	0x79
	.byte	0x11
	.long	0x290c
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1338
	.byte	0xa
	.byte	0x7c
	.byte	0xa
	.long	0x90
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1399
	.byte	0xa
	.byte	0x7f
	.byte	0xd
	.long	0x29f1
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1400
	.byte	0xa
	.byte	0x82
	.byte	0xb
	.long	0x72
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1401
	.byte	0xa
	.byte	0x84
	.byte	0xb
	.long	0x90
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1402
	.byte	0xa
	.byte	0x85
	.byte	0x15
	.long	0x2ac5
	.byte	0x78
	.byte	0
	.uleb128 0x6
	.long	0x289e
	.uleb128 0xd
	.long	0x90
	.long	0x2a06
	.uleb128 0xe
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.long	.LASF1403
	.byte	0x58
	.byte	0xa
	.byte	0xb3
	.long	0x2ac5
	.uleb128 0x7
	.string	"v1"
	.byte	0xa
	.byte	0xb6
	.byte	0xf
	.long	0x2b11
	.byte	0
	.uleb128 0x7
	.string	"v2"
	.byte	0xa
	.byte	0xb7
	.byte	0xf
	.long	0x2b11
	.byte	0x8
	.uleb128 0x7
	.string	"dx"
	.byte	0xa
	.byte	0xba
	.byte	0xd
	.long	0x13d
	.byte	0x10
	.uleb128 0x7
	.string	"dy"
	.byte	0xa
	.byte	0xbb
	.byte	0xd
	.long	0x13d
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1322
	.byte	0xa
	.byte	0xbe
	.byte	0xb
	.long	0x89
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1394
	.byte	0xa
	.byte	0xbf
	.byte	0xb
	.long	0x89
	.byte	0x1a
	.uleb128 0x7
	.string	"tag"
	.byte	0xa
	.byte	0xc0
	.byte	0xb
	.long	0x89
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1404
	.byte	0xa
	.byte	0xc4
	.byte	0xb
	.long	0x231
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1405
	.byte	0xa
	.byte	0xc8
	.byte	0xd
	.long	0x2b16
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1406
	.byte	0xa
	.byte	0xcb
	.byte	0x11
	.long	0x2b05
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1407
	.byte	0xa
	.byte	0xcf
	.byte	0xf
	.long	0x2adb
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1408
	.byte	0xa
	.byte	0xd0
	.byte	0xf
	.long	0x2adb
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1338
	.byte	0xa
	.byte	0xd3
	.byte	0xa
	.long	0x90
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1400
	.byte	0xa
	.byte	0xd6
	.byte	0xb
	.long	0x72
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.long	0x2aca
	.uleb128 0x6
	.long	0x2a06
	.uleb128 0x5
	.long	.LASF1409
	.byte	0xa
	.byte	0x87
	.byte	0x3
	.long	0x2918
	.uleb128 0x6
	.long	0x2acf
	.uleb128 0xf
	.long	0x6b
	.byte	0xa
	.byte	0xa9
	.byte	0x1
	.long	0x2b05
	.uleb128 0x2
	.long	.LASF1410
	.byte	0
	.uleb128 0x2
	.long	.LASF1411
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1412
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1413
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF1414
	.byte	0xa
	.byte	0xaf
	.byte	0x3
	.long	0x2ae0
	.uleb128 0x6
	.long	0x28c9
	.uleb128 0xd
	.long	0x13d
	.long	0x2b26
	.uleb128 0xe
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF1415
	.byte	0xa
	.byte	0xd7
	.byte	0x3
	.long	0x2a06
	.uleb128 0x6
	.long	0x2b26
	.uleb128 0xa
	.byte	0x18
	.byte	0xc
	.byte	0x44
	.long	0x2b72
	.uleb128 0x3
	.long	.LASF1340
	.byte	0xc
	.byte	0x46
	.byte	0xe
	.long	0x26bf
	.byte	0
	.uleb128 0x3
	.long	.LASF1156
	.byte	0xc
	.byte	0x47
	.byte	0xa
	.long	0x90
	.byte	0x8
	.uleb128 0x7
	.string	"sx"
	.byte	0xc
	.byte	0x48
	.byte	0xd
	.long	0x13d
	.byte	0xc
	.uleb128 0x7
	.string	"sy"
	.byte	0xc
	.byte	0x49
	.byte	0xd
	.long	0x13d
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1416
	.byte	0xc
	.byte	0x4b
	.byte	0x3
	.long	0x2b37
	.uleb128 0xa
	.byte	0x8
	.byte	0xd
	.byte	0x24
	.long	0x2bd5
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
	.long	0x89
	.byte	0x2
	.uleb128 0x3
	.long	.LASF1420
	.byte	0xd
	.byte	0x29
	.byte	0xb
	.long	0x89
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1421
	.byte	0xd
	.byte	0x2a
	.byte	0xa
	.long	0xc8
	.byte	0x6
	.uleb128 0x3
	.long	.LASF1422
	.byte	0xd
	.byte	0x2b
	.byte	0xa
	.long	0xc8
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF1423
	.byte	0xd
	.byte	0x2c
	.byte	0x3
	.long	0x2b7e
	.uleb128 0xf
	.long	0x6b
	.byte	0xb
	.byte	0x36
	.byte	0x1
	.long	0x2c00
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
	.uleb128 0x5
	.long	.LASF1427
	.byte	0xb
	.byte	0x3e
	.byte	0x3
	.long	0x2be1
	.uleb128 0xd
	.long	0x90
	.long	0x2c1c
	.uleb128 0xe
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.long	0xbc
	.long	0x2c2c
	.uleb128 0xe
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.long	0xbc
	.long	0x2c3c
	.uleb128 0xe
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	0x2b72
	.long	0x2c4c
	.uleb128 0xe
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.long	.LASF1428
	.byte	0x54
	.byte	0xd
	.long	0x90
	.uleb128 0x1d
	.long	.LASF1429
	.byte	0x55
	.byte	0x12
	.long	0x2adb
	.uleb128 0xa
	.byte	0x30
	.byte	0xf
	.byte	0x7c
	.long	0x2cac
	.uleb128 0x3
	.long	.LASF1327
	.byte	0xf
	.byte	0x7e
	.byte	0xf
	.long	0x225
	.byte	0
	.uleb128 0x3
	.long	.LASF1351
	.byte	0xf
	.byte	0x7f
	.byte	0xf
	.long	0x2adb
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1430
	.byte	0xf
	.byte	0x80
	.byte	0xa
	.long	0x90
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1431
	.byte	0xf
	.byte	0x81
	.byte	0xa
	.long	0x90
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1432
	.byte	0xf
	.byte	0x82
	.byte	0xa
	.long	0x90
	.byte	0x28
	.byte	0
	.uleb128 0x5
	.long	.LASF1433
	.byte	0xf
	.byte	0x84
	.byte	0x3
	.long	0x2c62
	.uleb128 0xa
	.byte	0x38
	.byte	0xf
	.byte	0x88
	.long	0x2d1c
	.uleb128 0x3
	.long	.LASF1327
	.byte	0xf
	.byte	0x8a
	.byte	0xf
	.long	0x225
	.byte	0
	.uleb128 0x3
	.long	.LASF1351
	.byte	0xf
	.byte	0x8b
	.byte	0xf
	.long	0x2adb
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1430
	.byte	0xf
	.byte	0x8c
	.byte	0xa
	.long	0x90
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1431
	.byte	0xf
	.byte	0x8d
	.byte	0xa
	.long	0x90
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1432
	.byte	0xf
	.byte	0x8e
	.byte	0xa
	.long	0x90
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1434
	.byte	0xf
	.byte	0x8f
	.byte	0xa
	.long	0x90
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1435
	.byte	0xf
	.byte	0x90
	.byte	0xa
	.long	0x90
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.long	.LASF1436
	.byte	0xf
	.byte	0x92
	.byte	0x3
	.long	0x2cb8
	.uleb128 0xa
	.byte	0x38
	.byte	0xf
	.byte	0x96
	.long	0x2d8c
	.uleb128 0x3
	.long	.LASF1327
	.byte	0xf
	.byte	0x98
	.byte	0xf
	.long	0x225
	.byte	0
	.uleb128 0x3
	.long	.LASF1351
	.byte	0xf
	.byte	0x99
	.byte	0xf
	.long	0x2adb
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1430
	.byte	0xf
	.byte	0x9a
	.byte	0xa
	.long	0x90
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1432
	.byte	0xf
	.byte	0x9b
	.byte	0xa
	.long	0x90
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1431
	.byte	0xf
	.byte	0x9c
	.byte	0xa
	.long	0x90
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1437
	.byte	0xf
	.byte	0x9d
	.byte	0xa
	.long	0x90
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1438
	.byte	0xf
	.byte	0x9e
	.byte	0xa
	.long	0x90
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.long	.LASF1439
	.byte	0xf
	.byte	0xa0
	.byte	0x3
	.long	0x2d28
	.uleb128 0xa
	.byte	0x30
	.byte	0xf
	.byte	0xa5
	.long	0x2de2
	.uleb128 0x3
	.long	.LASF1327
	.byte	0xf
	.byte	0xa7
	.byte	0xf
	.long	0x225
	.byte	0
	.uleb128 0x3
	.long	.LASF1351
	.byte	0xf
	.byte	0xa8
	.byte	0xf
	.long	0x2adb
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1432
	.byte	0xf
	.byte	0xa9
	.byte	0xa
	.long	0x90
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1431
	.byte	0xf
	.byte	0xaa
	.byte	0xa
	.long	0x90
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1440
	.byte	0xf
	.byte	0xab
	.byte	0xa
	.long	0x90
	.byte	0x28
	.byte	0
	.uleb128 0x5
	.long	.LASF1441
	.byte	0xf
	.byte	0xad
	.byte	0x3
	.long	0x2d98
	.uleb128 0x13
	.long	.LASF1442
	.byte	0xf
	.byte	0x6d
	.byte	0x1
	.long	0x2adb
	.long	0x2e09
	.uleb128 0x8
	.long	0x2b32
	.uleb128 0x8
	.long	0x2adb
	.byte	0
	.uleb128 0x13
	.long	.LASF1443
	.byte	0xf
	.byte	0x63
	.byte	0x1
	.long	0x90
	.long	0x2e24
	.uleb128 0x8
	.long	0x2b32
	.uleb128 0x8
	.long	0x90
	.byte	0
	.uleb128 0x13
	.long	.LASF1444
	.byte	0xf
	.byte	0x68
	.byte	0x1
	.long	0x90
	.long	0x2e3f
	.uleb128 0x8
	.long	0x2adb
	.uleb128 0x8
	.long	0x90
	.byte	0
	.uleb128 0x28
	.long	.LASF1469
	.byte	0x11
	.byte	0x4a
	.byte	0x6
	.long	0x2e51
	.uleb128 0x8
	.long	0x2e51
	.byte	0
	.uleb128 0x6
	.long	0x225
	.uleb128 0x13
	.long	.LASF1445
	.byte	0x10
	.byte	0x30
	.byte	0x7
	.long	0x72
	.long	0x2e76
	.uleb128 0x8
	.long	0x90
	.uleb128 0x8
	.long	0x90
	.uleb128 0x8
	.long	0x72
	.byte	0
	.uleb128 0x29
	.long	.LASF1470
	.byte	0x12
	.byte	0x24
	.byte	0x5
	.long	0x90
	.uleb128 0x1e
	.long	.LASF1447
	.value	0x155
	.byte	0x6
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ebd
	.uleb128 0x16
	.long	.LASF1351
	.value	0x155
	.byte	0x24
	.long	0x2adb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"g"
	.value	0x157
	.byte	0xd
	.long	0x2ebd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	0x2de2
	.uleb128 0x2a
	.long	.LASF1448
	.byte	0x1
	.value	0x13a
	.byte	0x6
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ef0
	.uleb128 0x2b
	.string	"g"
	.byte	0x1
	.value	0x13a
	.byte	0x15
	.long	0x2ebd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF1449
	.value	0x10f
	.byte	0x1
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f74
	.uleb128 0x16
	.long	.LASF1450
	.value	0x110
	.byte	0xb
	.long	0x2b32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.long	.LASF1451
	.value	0x111
	.byte	0x8
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x17
	.string	"i"
	.value	0x113
	.byte	0xa
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"j"
	.value	0x114
	.byte	0xa
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.long	.LASF1351
	.value	0x115
	.byte	0xf
	.long	0x2adb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF1452
	.value	0x116
	.byte	0xf
	.long	0x2adb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF1453
	.value	0x117
	.byte	0xd
	.long	0x2b32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x10
	.long	.LASF1454
	.byte	0xec
	.byte	0x6
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ff1
	.uleb128 0xb
	.long	.LASF1450
	.byte	0xec
	.byte	0x22
	.long	0x2b32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.string	"i"
	.byte	0xee
	.byte	0xb
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.string	"j"
	.byte	0xef
	.byte	0xb
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"min"
	.byte	0xf0
	.byte	0xb
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.long	.LASF1351
	.byte	0xf1
	.byte	0x10
	.long	0x2adb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.long	.LASF1455
	.byte	0xf2
	.byte	0x10
	.long	0x2adb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.long	.LASF1453
	.byte	0xf3
	.byte	0xe
	.long	0x2b32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x10
	.long	.LASF1456
	.byte	0xd7
	.byte	0x6
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x3039
	.uleb128 0xb
	.long	.LASF1450
	.byte	0xd7
	.byte	0x24
	.long	0x2b32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.long	.LASF1457
	.byte	0xd9
	.byte	0xa
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.string	"sec"
	.byte	0xda
	.byte	0xf
	.long	0x2adb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.long	.LASF1458
	.byte	0xb5
	.byte	0x1
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x308f
	.uleb128 0xb
	.long	.LASF1351
	.byte	0xb6
	.byte	0xd
	.long	0x2adb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF1459
	.byte	0xb7
	.byte	0x8
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.long	.LASF1460
	.byte	0xb8
	.byte	0x8
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.long	.LASF1461
	.byte	0xba
	.byte	0xf
	.long	0x308f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	0x2d8c
	.uleb128 0x2c
	.long	.LASF1462
	.byte	0x1
	.byte	0x9b
	.byte	0x6
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x30c1
	.uleb128 0xb
	.long	.LASF1461
	.byte	0x9b
	.byte	0x20
	.long	0x308f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.long	.LASF1463
	.byte	0x7c
	.byte	0x6
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x30fb
	.uleb128 0xb
	.long	.LASF1351
	.byte	0x7c
	.byte	0x23
	.long	0x2adb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.long	.LASF1461
	.byte	0x7e
	.byte	0x13
	.long	0x30fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	0x2d1c
	.uleb128 0x10
	.long	.LASF1464
	.byte	0x62
	.byte	0x6
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x312c
	.uleb128 0xb
	.long	.LASF1461
	.byte	0x62
	.byte	0x22
	.long	0x30fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.long	.LASF1465
	.byte	0x44
	.byte	0x6
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x3166
	.uleb128 0xb
	.long	.LASF1351
	.byte	0x44
	.byte	0x24
	.long	0x2adb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.long	.LASF1466
	.byte	0x46
	.byte	0x14
	.long	0x3166
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	0x2cac
	.uleb128 0x2d
	.long	.LASF1471
	.byte	0x1
	.byte	0x2e
	.byte	0x6
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.long	.LASF1466
	.byte	0x2e
	.byte	0x24
	.long	0x3166
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.long	.LASF1467
	.byte	0x30
	.byte	0x9
	.long	0x90
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x15
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
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
	.sleb128 14
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
.LASF822:
	.string	"S_BSPI_RUN3"
.LASF823:
	.string	"S_BSPI_RUN4"
.LASF824:
	.string	"S_BSPI_RUN5"
.LASF825:
	.string	"S_BSPI_RUN6"
.LASF826:
	.string	"S_BSPI_RUN7"
.LASF827:
	.string	"S_BSPI_RUN8"
.LASF828:
	.string	"S_BSPI_RUN9"
.LASF112:
	.string	"SPR_YSKU"
.LASF1380:
	.string	"attacker"
.LASF475:
	.string	"S_FIRE10"
.LASF476:
	.string	"S_FIRE11"
.LASF477:
	.string	"S_FIRE12"
.LASF478:
	.string	"S_FIRE13"
.LASF479:
	.string	"S_FIRE14"
.LASF480:
	.string	"S_FIRE15"
.LASF481:
	.string	"S_FIRE16"
.LASF482:
	.string	"S_FIRE17"
.LASF483:
	.string	"S_FIRE18"
.LASF484:
	.string	"S_FIRE19"
.LASF1296:
	.string	"MT_MISC84"
.LASF1229:
	.string	"MT_MISC20"
.LASF1043:
	.string	"S_MEGA2"
.LASF1044:
	.string	"S_MEGA3"
.LASF1045:
	.string	"S_MEGA4"
.LASF1233:
	.string	"MT_MISC24"
.LASF1234:
	.string	"MT_MISC25"
.LASF1236:
	.string	"MT_MISC26"
.LASF1237:
	.string	"MT_MISC27"
.LASF1238:
	.string	"MT_MISC28"
.LASF1241:
	.string	"MT_MISC29"
.LASF674:
	.string	"S_SARG_PAIN2"
.LASF1345:
	.string	"threshold"
.LASF15:
	.string	"wp_pistol"
.LASF153:
	.string	"SPR_COL1"
.LASF154:
	.string	"SPR_COL2"
.LASF155:
	.string	"SPR_COL3"
.LASF156:
	.string	"SPR_COL4"
.LASF165:
	.string	"SPR_COL5"
.LASF159:
	.string	"SPR_COL6"
.LASF485:
	.string	"S_FIRE20"
.LASF486:
	.string	"S_FIRE21"
.LASF487:
	.string	"S_FIRE22"
.LASF488:
	.string	"S_FIRE23"
.LASF489:
	.string	"S_FIRE24"
.LASF139:
	.string	"SPR_COLU"
.LASF491:
	.string	"S_FIRE26"
.LASF492:
	.string	"S_FIRE27"
.LASF493:
	.string	"S_FIRE28"
.LASF494:
	.string	"S_FIRE29"
.LASF1242:
	.string	"MT_MISC30"
.LASF1157:
	.string	"action"
.LASF1244:
	.string	"MT_MISC32"
.LASF1245:
	.string	"MT_MISC33"
.LASF836:
	.string	"S_BSPI_PAIN"
.LASF1247:
	.string	"MT_MISC35"
.LASF308:
	.string	"S_BFGEXP"
.LASF1249:
	.string	"MT_MISC37"
.LASF1250:
	.string	"MT_MISC38"
.LASF1251:
	.string	"MT_MISC39"
.LASF1391:
	.string	"floorpic"
.LASF838:
	.string	"S_BSPI_DIE1"
.LASF843:
	.string	"S_BSPI_DIE6"
.LASF1412:
	.string	"ST_POSITIVE"
.LASF1356:
	.string	"viewz"
.LASF734:
	.string	"S_BOSS_RAISE1"
.LASF735:
	.string	"S_BOSS_RAISE2"
.LASF1176:
	.string	"MT_HEAD"
.LASF736:
	.string	"S_BOSS_RAISE3"
.LASF495:
	.string	"S_FIRE30"
.LASF640:
	.string	"S_TROO_PAIN"
.LASF929:
	.string	"S_SSWV_DIE1"
.LASF739:
	.string	"S_BOSS_RAISE6"
.LASF931:
	.string	"S_SSWV_DIE3"
.LASF932:
	.string	"S_SSWV_DIE4"
.LASF933:
	.string	"S_SSWV_DIE5"
.LASF107:
	.string	"SPR_BKEY"
.LASF1436:
	.string	"lightflash_t"
.LASF751:
	.string	"S_BOS2_ATK1"
.LASF752:
	.string	"S_BOS2_ATK2"
.LASF753:
	.string	"S_BOS2_ATK3"
.LASF141:
	.string	"SPR_GOR1"
.LASF148:
	.string	"SPR_GOR2"
.LASF149:
	.string	"SPR_GOR3"
.LASF150:
	.string	"SPR_GOR4"
.LASF151:
	.string	"SPR_GOR5"
.LASF1254:
	.string	"MT_MISC42"
.LASF1255:
	.string	"MT_MISC43"
.LASF508:
	.string	"S_SKEL_RUN1"
.LASF509:
	.string	"S_SKEL_RUN2"
.LASF510:
	.string	"S_SKEL_RUN3"
.LASF511:
	.string	"S_SKEL_RUN4"
.LASF512:
	.string	"S_SKEL_RUN5"
.LASF513:
	.string	"S_SKEL_RUN6"
.LASF514:
	.string	"S_SKEL_RUN7"
.LASF515:
	.string	"S_SKEL_RUN8"
.LASF516:
	.string	"S_SKEL_RUN9"
.LASF18:
	.string	"wp_missile"
.LASF994:
	.string	"S_BEXP2"
.LASF1304:
	.string	"seestate"
.LASF689:
	.string	"S_HEAD_ATK1"
.LASF690:
	.string	"S_HEAD_ATK2"
.LASF691:
	.string	"S_HEAD_ATK3"
.LASF1406:
	.string	"slopetype"
.LASF943:
	.string	"S_SSWV_RAISE1"
.LASF944:
	.string	"S_SSWV_RAISE2"
.LASF945:
	.string	"S_SSWV_RAISE3"
.LASF946:
	.string	"S_SSWV_RAISE4"
.LASF947:
	.string	"S_SSWV_RAISE5"
.LASF41:
	.string	"angle"
.LASF1171:
	.string	"MT_FATSHOT"
.LASF127:
	.string	"SPR_CELL"
.LASF128:
	.string	"SPR_CELP"
.LASF1109:
	.string	"S_HEARTCOL"
.LASF1352:
	.string	"numlines"
.LASF1026:
	.string	"S_MEDI"
.LASF1033:
	.string	"S_PINV"
.LASF1220:
	.string	"MT_INS"
.LASF1263:
	.string	"MT_MISC51"
.LASF1264:
	.string	"MT_MISC52"
.LASF1218:
	.string	"MT_INV"
.LASF1266:
	.string	"MT_MISC54"
.LASF1123:
	.string	"S_BTORCHSHRT"
.LASF244:
	.string	"S_MISSILEUP"
.LASF1269:
	.string	"MT_MISC57"
.LASF1270:
	.string	"MT_MISC58"
.LASF1271:
	.string	"MT_MISC59"
.LASF421:
	.string	"S_SPOS_RAISE1"
.LASF215:
	.string	"S_SGUNFLASH1"
.LASF216:
	.string	"S_SGUNFLASH2"
.LASF763:
	.string	"S_BOS2_RAISE1"
.LASF764:
	.string	"S_BOS2_RAISE2"
.LASF765:
	.string	"S_BOS2_RAISE3"
.LASF766:
	.string	"S_BOS2_RAISE4"
.LASF767:
	.string	"S_BOS2_RAISE5"
.LASF768:
	.string	"S_BOS2_RAISE6"
.LASF769:
	.string	"S_BOS2_RAISE7"
.LASF528:
	.string	"S_SKEL_PAIN"
.LASF1015:
	.string	"S_RKEY"
.LASF38:
	.string	"next"
.LASF197:
	.string	"S_PISTOLUP"
.LASF883:
	.string	"S_CYBER_DIE8"
.LASF1272:
	.string	"MT_MISC60"
.LASF1273:
	.string	"MT_MISC61"
.LASF1274:
	.string	"MT_MISC62"
.LASF1275:
	.string	"MT_MISC63"
.LASF1276:
	.string	"MT_MISC64"
.LASF1277:
	.string	"MT_MISC65"
.LASF1278:
	.string	"MT_MISC66"
.LASF1279:
	.string	"MT_MISC67"
.LASF312:
	.string	"S_EXPLODE1"
.LASF313:
	.string	"S_EXPLODE2"
.LASF314:
	.string	"S_EXPLODE3"
.LASF503:
	.string	"S_TRACEEXP1"
.LASF504:
	.string	"S_TRACEEXP2"
.LASF505:
	.string	"S_TRACEEXP3"
.LASF891:
	.string	"S_PAIN_RUN5"
.LASF993:
	.string	"S_BEXP"
.LASF892:
	.string	"S_PAIN_RUN6"
.LASF1381:
	.string	"extralight"
.LASF1110:
	.string	"S_HEARTCOL2"
.LASF289:
	.string	"S_RBALLX1"
.LASF1318:
	.string	"height"
.LASF1203:
	.string	"MT_TELEPORTMAN"
.LASF1282:
	.string	"MT_MISC70"
.LASF72:
	.string	"SPR_IFOG"
.LASF1284:
	.string	"MT_MISC72"
.LASF1285:
	.string	"MT_MISC73"
.LASF1286:
	.string	"MT_MISC74"
.LASF1287:
	.string	"MT_MISC75"
.LASF1288:
	.string	"MT_MISC76"
.LASF1116:
	.string	"S_GREENTORCH2"
.LASF1117:
	.string	"S_GREENTORCH3"
.LASF1118:
	.string	"S_GREENTORCH4"
.LASF957:
	.string	"S_COMMKEEN9"
.LASF606:
	.string	"S_CPOS_PAIN2"
.LASF829:
	.string	"S_BSPI_RUN10"
.LASF830:
	.string	"S_BSPI_RUN11"
.LASF831:
	.string	"S_BSPI_RUN12"
.LASF913:
	.string	"S_SSWV_RUN1"
.LASF914:
	.string	"S_SSWV_RUN2"
.LASF915:
	.string	"S_SSWV_RUN3"
.LASF916:
	.string	"S_SSWV_RUN4"
.LASF917:
	.string	"S_SSWV_RUN5"
.LASF918:
	.string	"S_SSWV_RUN6"
.LASF919:
	.string	"S_SSWV_RUN7"
.LASF920:
	.string	"S_SSWV_RUN8"
.LASF1098:
	.string	"S_SKULLCOL"
.LASF1170:
	.string	"MT_FATSO"
.LASF642:
	.string	"S_TROO_DIE1"
.LASF643:
	.string	"S_TROO_DIE2"
.LASF644:
	.string	"S_TROO_DIE3"
.LASF645:
	.string	"S_TROO_DIE4"
.LASF646:
	.string	"S_TROO_DIE5"
.LASF1023:
	.string	"S_YSKULL"
.LASF1024:
	.string	"S_YSKULL2"
.LASF125:
	.string	"SPR_ROCK"
.LASF1195:
	.string	"MT_ROCKET"
.LASF1293:
	.string	"MT_MISC81"
.LASF1294:
	.string	"MT_MISC82"
.LASF1295:
	.string	"MT_MISC83"
.LASF601:
	.string	"S_CPOS_ATK1"
.LASF602:
	.string	"S_CPOS_ATK2"
.LASF603:
	.string	"S_CPOS_ATK3"
.LASF604:
	.string	"S_CPOS_ATK4"
.LASF1162:
	.string	"MT_PLAYER"
.LASF137:
	.string	"SPR_SHOT"
.LASF330:
	.string	"S_IFOG2"
.LASF331:
	.string	"S_IFOG3"
.LASF332:
	.string	"S_IFOG4"
.LASF333:
	.string	"S_IFOG5"
.LASF66:
	.string	"SPR_PLSE"
.LASF58:
	.string	"SPR_PLSF"
.LASF57:
	.string	"SPR_PLSG"
.LASF726:
	.string	"S_BOSS_PAIN2"
.LASF426:
	.string	"S_VILE_STND"
.LASF954:
	.string	"S_COMMKEEN6"
.LASF955:
	.string	"S_COMMKEEN7"
.LASF1428:
	.string	"numsectors"
.LASF956:
	.string	"S_COMMKEEN8"
.LASF65:
	.string	"SPR_PLSS"
.LASF805:
	.string	"S_SPID_PAIN2"
.LASF1319:
	.string	"mass"
.LASF178:
	.string	"SPR_POB1"
.LASF179:
	.string	"SPR_POB2"
.LASF1027:
	.string	"S_SOUL"
.LASF1037:
	.string	"S_PSTR"
.LASF869:
	.string	"S_CYBER_ATK1"
.LASF870:
	.string	"S_CYBER_ATK2"
.LASF871:
	.string	"S_CYBER_ATK3"
.LASF872:
	.string	"S_CYBER_ATK4"
.LASF873:
	.string	"S_CYBER_ATK5"
.LASF874:
	.string	"S_CYBER_ATK6"
.LASF1064:
	.string	"S_BFUG"
.LASF104:
	.string	"SPR_FCAN"
.LASF1415:
	.string	"line_t"
.LASF547:
	.string	"S_FATT_STND"
.LASF984:
	.string	"S_BRAINEXPLODE1"
.LASF985:
	.string	"S_BRAINEXPLODE2"
.LASF986:
	.string	"S_BRAINEXPLODE3"
.LASF268:
	.string	"S_BFGUP"
.LASF109:
	.string	"SPR_YKEY"
.LASF655:
	.string	"S_TROO_RAISE1"
.LASF656:
	.string	"S_TROO_RAISE2"
.LASF657:
	.string	"S_TROO_RAISE3"
.LASF658:
	.string	"S_TROO_RAISE4"
.LASF659:
	.string	"S_TROO_RAISE5"
.LASF1068:
	.string	"S_PLAS"
.LASF950:
	.string	"S_COMMKEEN2"
.LASF951:
	.string	"S_COMMKEEN3"
.LASF952:
	.string	"S_COMMKEEN4"
.LASF953:
	.string	"S_COMMKEEN5"
.LASF334:
	.string	"S_PLAY"
.LASF900:
	.string	"S_PAIN_DIE2"
.LASF901:
	.string	"S_PAIN_DIE3"
.LASF902:
	.string	"S_PAIN_DIE4"
.LASF903:
	.string	"S_PAIN_DIE5"
.LASF904:
	.string	"S_PAIN_DIE6"
.LASF1173:
	.string	"MT_TROOP"
.LASF455:
	.string	"S_VILE_PAIN2"
.LASF583:
	.string	"S_FATT_RAISE1"
.LASF19:
	.string	"wp_plasma"
.LASF585:
	.string	"S_FATT_RAISE3"
.LASF586:
	.string	"S_FATT_RAISE4"
.LASF587:
	.string	"S_FATT_RAISE5"
.LASF588:
	.string	"S_FATT_RAISE6"
.LASF589:
	.string	"S_FATT_RAISE7"
.LASF590:
	.string	"S_FATT_RAISE8"
.LASF299:
	.string	"S_ROCKET"
.LASF1194:
	.string	"MT_HEADSHOT"
.LASF1453:
	.string	"templine"
.LASF1401:
	.string	"linecount"
.LASF1404:
	.string	"sidenum"
.LASF852:
	.string	"S_ARACH_PLAZ"
.LASF1091:
	.string	"S_STALAGTITE"
.LASF693:
	.string	"S_HEAD_PAIN2"
.LASF694:
	.string	"S_HEAD_PAIN3"
.LASF13:
	.string	"byte"
.LASF1302:
	.string	"spawnstate"
.LASF1441:
	.string	"glow_t"
.LASF1201:
	.string	"MT_TFOG"
.LASF402:
	.string	"S_SPOS_ATK1"
.LASF403:
	.string	"S_SPOS_ATK2"
.LASF404:
	.string	"S_SPOS_ATK3"
.LASF339:
	.string	"S_PLAY_ATK1"
.LASF340:
	.string	"S_PLAY_ATK2"
.LASF92:
	.string	"SPR_APLS"
.LASF1373:
	.string	"refire"
.LASF1120:
	.string	"S_REDTORCH2"
.LASF1121:
	.string	"S_REDTORCH3"
.LASF1122:
	.string	"S_REDTORCH4"
.LASF629:
	.string	"S_TROO_RUN1"
.LASF630:
	.string	"S_TROO_RUN2"
.LASF631:
	.string	"S_TROO_RUN3"
.LASF632:
	.string	"S_TROO_RUN4"
.LASF633:
	.string	"S_TROO_RUN5"
.LASF634:
	.string	"S_TROO_RUN6"
.LASF635:
	.string	"S_TROO_RUN7"
.LASF636:
	.string	"S_TROO_RUN8"
.LASF83:
	.string	"SPR_CPOS"
.LASF544:
	.string	"S_FATSHOTX1"
.LASF545:
	.string	"S_FATSHOTX2"
.LASF546:
	.string	"S_FATSHOTX3"
.LASF624:
	.string	"S_CPOS_RAISE5"
.LASF625:
	.string	"S_CPOS_RAISE6"
.LASF626:
	.string	"S_CPOS_RAISE7"
.LASF14:
	.string	"wp_fist"
.LASF1312:
	.string	"missilestate"
.LASF113:
	.string	"SPR_STIM"
.LASF660:
	.string	"S_SARG_STND"
.LASF885:
	.string	"S_CYBER_DIE10"
.LASF63:
	.string	"SPR_BAL1"
.LASF64:
	.string	"SPR_BAL2"
.LASF86:
	.string	"SPR_BAL7"
.LASF1339:
	.string	"info"
.LASF1079:
	.string	"S_HEADSONSTICK"
.LASF1334:
	.string	"ceilingz"
.LASF536:
	.string	"S_SKEL_RAISE1"
.LASF51:
	.string	"SPR_SHT2"
.LASF190:
	.string	"S_PUNCH1"
.LASF191:
	.string	"S_PUNCH2"
.LASF192:
	.string	"S_PUNCH3"
.LASF193:
	.string	"S_PUNCH4"
.LASF194:
	.string	"S_PUNCH5"
.LASF189:
	.string	"S_PUNCHUP"
.LASF1461:
	.string	"flash"
.LASF806:
	.string	"S_SPID_DIE1"
.LASF557:
	.string	"S_FATT_RUN9"
.LASF808:
	.string	"S_SPID_DIE3"
.LASF809:
	.string	"S_SPID_DIE4"
.LASF50:
	.string	"SPR_SHTF"
.LASF46:
	.string	"SPR_SHTG"
.LASF328:
	.string	"S_IFOG01"
.LASF329:
	.string	"S_IFOG02"
.LASF814:
	.string	"S_SPID_DIE9"
.LASF1056:
	.string	"S_AMMO"
.LASF887:
	.string	"S_PAIN_RUN1"
.LASF888:
	.string	"S_PAIN_RUN2"
.LASF889:
	.string	"S_PAIN_RUN3"
.LASF890:
	.string	"S_PAIN_RUN4"
.LASF172:
	.string	"SPR_HDB1"
.LASF173:
	.string	"SPR_HDB2"
.LASF174:
	.string	"SPR_HDB3"
.LASF175:
	.string	"SPR_HDB4"
.LASF176:
	.string	"SPR_HDB5"
.LASF177:
	.string	"SPR_HDB6"
.LASF1163:
	.string	"MT_POSSESSED"
.LASF222:
	.string	"S_DSGUN3"
.LASF223:
	.string	"S_DSGUN4"
.LASF42:
	.string	"type"
.LASF242:
	.string	"S_MISSILE"
.LASF1070:
	.string	"S_SHOT2"
.LASF1137:
	.string	"S_HANGTLOOKDN"
.LASF1342:
	.string	"movedir"
.LASF614:
	.string	"S_CPOS_XDIE1"
.LASF35:
	.string	"actionf_t"
.LASF30:
	.string	"actionf_v"
.LASF133:
	.string	"SPR_MGUN"
.LASF1175:
	.string	"MT_SHADOWS"
.LASF517:
	.string	"S_SKEL_RUN10"
.LASF518:
	.string	"S_SKEL_RUN11"
.LASF519:
	.string	"S_SKEL_RUN12"
.LASF185:
	.string	"S_NULL"
.LASF1452:
	.string	"temp"
.LASF727:
	.string	"S_BOSS_DIE1"
.LASF728:
	.string	"S_BOSS_DIE2"
.LASF729:
	.string	"S_BOSS_DIE3"
.LASF730:
	.string	"S_BOSS_DIE4"
.LASF731:
	.string	"S_BOSS_DIE5"
.LASF732:
	.string	"S_BOSS_DIE6"
.LASF733:
	.string	"S_BOSS_DIE7"
.LASF897:
	.string	"S_PAIN_PAIN"
.LASF266:
	.string	"S_BFG"
.LASF1310:
	.string	"painsound"
.LASF1394:
	.string	"special"
.LASF912:
	.string	"S_SSWV_STND2"
.LASF134:
	.string	"SPR_CSAW"
.LASF1047:
	.string	"S_PMAP"
.LASF1053:
	.string	"S_PVIS"
.LASF1457:
	.string	"secnum"
.LASF267:
	.string	"S_BFGDOWN"
.LASF1187:
	.string	"MT_BOSSBRAIN"
.LASF80:
	.string	"SPR_SKEL"
.LASF262:
	.string	"S_PLASMA1"
.LASF263:
	.string	"S_PLASMA2"
.LASF1127:
	.string	"S_GTORCHSHRT"
.LASF1353:
	.string	"firstline"
.LASF1061:
	.string	"S_SHEL"
.LASF818:
	.string	"S_BSPI_STND2"
.LASF5:
	.string	"unsigned char"
.LASF78:
	.string	"SPR_FATB"
.LASF183:
	.string	"NUMSPRITES"
.LASF301:
	.string	"S_BFGSHOT2"
.LASF82:
	.string	"SPR_FATT"
.LASF1028:
	.string	"S_SOUL2"
.LASF1029:
	.string	"S_SOUL3"
.LASF1030:
	.string	"S_SOUL4"
.LASF1031:
	.string	"S_SOUL5"
.LASF1032:
	.string	"S_SOUL6"
.LASF788:
	.string	"S_SPID_RUN1"
.LASF789:
	.string	"S_SPID_RUN2"
.LASF790:
	.string	"S_SPID_RUN3"
.LASF791:
	.string	"S_SPID_RUN4"
.LASF792:
	.string	"S_SPID_RUN5"
.LASF793:
	.string	"S_SPID_RUN6"
.LASF794:
	.string	"S_SPID_RUN7"
.LASF795:
	.string	"S_SPID_RUN8"
.LASF26:
	.string	"float"
.LASF995:
	.string	"S_BEXP3"
.LASF996:
	.string	"S_BEXP4"
.LASF1084:
	.string	"S_DEADSTICK"
.LASF1382:
	.string	"fixedcolormap"
.LASF1367:
	.string	"weaponowned"
.LASF1204:
	.string	"MT_EXTRABFG"
.LASF374:
	.string	"S_POSS_DIE1"
.LASF375:
	.string	"S_POSS_DIE2"
.LASF376:
	.string	"S_POSS_DIE3"
.LASF377:
	.string	"S_POSS_DIE4"
.LASF378:
	.string	"S_POSS_DIE5"
.LASF204:
	.string	"S_SGUNDOWN"
.LASF53:
	.string	"SPR_CHGF"
.LASF52:
	.string	"SPR_CHGG"
.LASF1433:
	.string	"fireflicker_t"
.LASF597:
	.string	"S_CPOS_RUN5"
.LASF856:
	.string	"S_ARACH_PLEX3"
.LASF598:
	.string	"S_CPOS_RUN6"
.LASF858:
	.string	"S_ARACH_PLEX5"
.LASF599:
	.string	"S_CPOS_RUN7"
.LASF1344:
	.string	"target"
.LASF163:
	.string	"SPR_CEYE"
.LASF1442:
	.string	"getNextSector"
.LASF1410:
	.string	"ST_HORIZONTAL"
.LASF905:
	.string	"S_PAIN_RAISE1"
.LASF906:
	.string	"S_PAIN_RAISE2"
.LASF907:
	.string	"S_PAIN_RAISE3"
.LASF908:
	.string	"S_PAIN_RAISE4"
.LASF909:
	.string	"S_PAIN_RAISE5"
.LASF542:
	.string	"S_FATSHOT1"
.LASF543:
	.string	"S_FATSHOT2"
.LASF1411:
	.string	"ST_VERTICAL"
.LASF120:
	.string	"SPR_SUIT"
.LASF770:
	.string	"S_SKULL_STND"
.LASF804:
	.string	"S_SPID_PAIN"
.LASF1299:
	.string	"NUMMOBJTYPES"
.LASF102:
	.string	"SPR_BAR1"
.LASF217:
	.string	"S_DSGUN"
.LASF1096:
	.string	"S_CANDLESTIK"
.LASF1152:
	.string	"NUMSTATES"
.LASF796:
	.string	"S_SPID_RUN9"
.LASF282:
	.string	"S_TBALL1"
.LASF283:
	.string	"S_TBALL2"
.LASF496:
	.string	"S_SMOKE1"
.LASF497:
	.string	"S_SMOKE2"
.LASF498:
	.string	"S_SMOKE3"
.LASF499:
	.string	"S_SMOKE4"
.LASF500:
	.string	"S_SMOKE5"
.LASF719:
	.string	"S_BOSS_RUN6"
.LASF720:
	.string	"S_BOSS_RUN7"
.LASF721:
	.string	"S_BOSS_RUN8"
.LASF85:
	.string	"SPR_HEAD"
.LASF1331:
	.string	"bprev"
.LASF146:
	.string	"SPR_POL1"
.LASF142:
	.string	"SPR_POL2"
.LASF145:
	.string	"SPR_POL3"
.LASF144:
	.string	"SPR_POL4"
.LASF143:
	.string	"SPR_POL5"
.LASF147:
	.string	"SPR_POL6"
.LASF991:
	.string	"S_BAR1"
.LASF1205:
	.string	"MT_MISC0"
.LASF1077:
	.string	"S_DEADTORSO"
.LASF219:
	.string	"S_DSGUNUP"
.LASF1469:
	.string	"P_AddThinker"
.LASF628:
	.string	"S_TROO_STND2"
.LASF1148:
	.string	"S_TECH2LAMP"
.LASF1191:
	.string	"MT_SPAWNFIRE"
.LASF1166:
	.string	"MT_FIRE"
.LASF1158:
	.string	"nextstate"
.LASF725:
	.string	"S_BOSS_PAIN"
.LASF96:
	.string	"SPR_SSWV"
.LASF1443:
	.string	"P_FindSectorFromLineTag"
.LASF287:
	.string	"S_RBALL1"
.LASF288:
	.string	"S_RBALL2"
.LASF1092:
	.string	"S_TALLGRNCOL"
.LASF1347:
	.string	"lastlook"
.LASF1427:
	.string	"playerstate_t"
.LASF1081:
	.string	"S_HEADONASTICK"
.LASF361:
	.string	"S_POSS_RUN1"
.LASF303:
	.string	"S_BFGLAND2"
.LASF304:
	.string	"S_BFGLAND3"
.LASF305:
	.string	"S_BFGLAND4"
.LASF306:
	.string	"S_BFGLAND5"
.LASF307:
	.string	"S_BFGLAND6"
.LASF367:
	.string	"S_POSS_RUN7"
.LASF368:
	.string	"S_POSS_RUN8"
.LASF350:
	.string	"S_PLAY_XDIE1"
.LASF351:
	.string	"S_PLAY_XDIE2"
.LASF352:
	.string	"S_PLAY_XDIE3"
.LASF353:
	.string	"S_PLAY_XDIE4"
.LASF354:
	.string	"S_PLAY_XDIE5"
.LASF355:
	.string	"S_PLAY_XDIE6"
.LASF356:
	.string	"S_PLAY_XDIE7"
.LASF357:
	.string	"S_PLAY_XDIE8"
.LASF358:
	.string	"S_PLAY_XDIE9"
.LASF756:
	.string	"S_BOS2_DIE1"
.LASF757:
	.string	"S_BOS2_DIE2"
.LASF758:
	.string	"S_BOS2_DIE3"
.LASF759:
	.string	"S_BOS2_DIE4"
.LASF760:
	.string	"S_BOS2_DIE5"
.LASF761:
	.string	"S_BOS2_DIE6"
.LASF762:
	.string	"S_BOS2_DIE7"
.LASF1322:
	.string	"flags"
.LASF682:
	.string	"S_SARG_RAISE2"
.LASF683:
	.string	"S_SARG_RAISE3"
.LASF326:
	.string	"S_TFOG10"
.LASF684:
	.string	"S_SARG_RAISE4"
.LASF379:
	.string	"S_POSS_XDIE1"
.LASF380:
	.string	"S_POSS_XDIE2"
.LASF381:
	.string	"S_POSS_XDIE3"
.LASF382:
	.string	"S_POSS_XDIE4"
.LASF383:
	.string	"S_POSS_XDIE5"
.LASF384:
	.string	"S_POSS_XDIE6"
.LASF385:
	.string	"S_POSS_XDIE7"
.LASF386:
	.string	"S_POSS_XDIE8"
.LASF387:
	.string	"S_POSS_XDIE9"
.LASF1080:
	.string	"S_GIBS"
.LASF695:
	.string	"S_HEAD_DIE1"
.LASF696:
	.string	"S_HEAD_DIE2"
.LASF697:
	.string	"S_HEAD_DIE3"
.LASF698:
	.string	"S_HEAD_DIE4"
.LASF699:
	.string	"S_HEAD_DIE5"
.LASF700:
	.string	"S_HEAD_DIE6"
.LASF548:
	.string	"S_FATT_STND2"
.LASF1071:
	.string	"S_COLU"
.LASF198:
	.string	"S_PISTOL1"
.LASF199:
	.string	"S_PISTOL2"
.LASF200:
	.string	"S_PISTOL3"
.LASF201:
	.string	"S_PISTOL4"
.LASF537:
	.string	"S_SKEL_RAISE2"
.LASF538:
	.string	"S_SKEL_RAISE3"
.LASF539:
	.string	"S_SKEL_RAISE4"
.LASF540:
	.string	"S_SKEL_RAISE5"
.LASF541:
	.string	"S_SKEL_RAISE6"
.LASF1100:
	.string	"S_BIGTREE"
.LASF1413:
	.string	"ST_NEGATIVE"
.LASF1010:
	.string	"S_BON2C"
.LASF1011:
	.string	"S_BON2D"
.LASF316:
	.string	"S_TFOG01"
.LASF317:
	.string	"S_TFOG02"
.LASF135:
	.string	"SPR_LAUN"
.LASF372:
	.string	"S_POSS_PAIN"
.LASF707:
	.string	"S_BRBALL1"
.LASF708:
	.string	"S_BRBALL2"
.LASF1169:
	.string	"MT_SMOKE"
.LASF1183:
	.string	"MT_CYBORG"
.LASF1320:
	.string	"damage"
.LASF412:
	.string	"S_SPOS_XDIE1"
.LASF413:
	.string	"S_SPOS_XDIE2"
.LASF414:
	.string	"S_SPOS_XDIE3"
.LASF415:
	.string	"S_SPOS_XDIE4"
.LASF416:
	.string	"S_SPOS_XDIE5"
.LASF417:
	.string	"S_SPOS_XDIE6"
.LASF418:
	.string	"S_SPOS_XDIE7"
.LASF419:
	.string	"S_SPOS_XDIE8"
.LASF420:
	.string	"S_SPOS_XDIE9"
.LASF1326:
	.string	"mobj_s"
.LASF1386:
	.string	"mobj_t"
.LASF1013:
	.string	"S_BKEY"
.LASF1439:
	.string	"strobe_t"
.LASF100:
	.string	"SPR_ARM1"
.LASF101:
	.string	"SPR_ARM2"
.LASF1165:
	.string	"MT_VILE"
.LASF1398:
	.string	"soundorg"
.LASF260:
	.string	"S_PLASMADOWN"
.LASF1459:
	.string	"fastOrSlow"
.LASF572:
	.string	"S_FATT_PAIN2"
.LASF970:
	.string	"S_BRAINEYESEE"
.LASF1414:
	.string	"slopetype_t"
.LASF507:
	.string	"S_SKEL_STND2"
.LASF860:
	.string	"S_CYBER_STND2"
.LASF1161:
	.string	"state_t"
.LASF704:
	.string	"S_HEAD_RAISE4"
.LASF930:
	.string	"S_SSWV_DIE2"
.LASF1456:
	.string	"EV_StartLightStrobing"
.LASF1059:
	.string	"S_CELL"
.LASF1060:
	.string	"S_CELP"
.LASF1102:
	.string	"S_EVILEYE"
.LASF1128:
	.string	"S_GTORCHSHRT2"
.LASF1129:
	.string	"S_GTORCHSHRT3"
.LASF1130:
	.string	"S_GTORCHSHRT4"
.LASF1444:
	.string	"P_FindMinSurroundingLight"
.LASF1357:
	.string	"viewheight"
.LASF1451:
	.string	"bright"
.LASF1330:
	.string	"bnext"
.LASF561:
	.string	"S_FATT_ATK1"
.LASF94:
	.string	"SPR_CYBR"
.LASF562:
	.string	"S_FATT_ATK2"
.LASF465:
	.string	"S_VILE_DIE10"
.LASF55:
	.string	"SPR_MISF"
.LASF54:
	.string	"SPR_MISG"
.LASF67:
	.string	"SPR_MISL"
.LASF1019:
	.string	"S_BSKULL"
.LASF98:
	.string	"SPR_BBRN"
.LASF440:
	.string	"S_VILE_ATK1"
.LASF441:
	.string	"S_VILE_ATK2"
.LASF442:
	.string	"S_VILE_ATK3"
.LASF443:
	.string	"S_VILE_ATK4"
.LASF444:
	.string	"S_VILE_ATK5"
.LASF445:
	.string	"S_VILE_ATK6"
.LASF446:
	.string	"S_VILE_ATK7"
.LASF187:
	.string	"S_PUNCH"
.LASF448:
	.string	"S_VILE_ATK9"
.LASF169:
	.string	"SPR_SMBT"
.LASF743:
	.string	"S_BOS2_RUN1"
.LASF744:
	.string	"S_BOS2_RUN2"
.LASF745:
	.string	"S_BOS2_RUN3"
.LASF746:
	.string	"S_BOS2_RUN4"
.LASF747:
	.string	"S_BOS2_RUN5"
.LASF748:
	.string	"S_BOS2_RUN6"
.LASF749:
	.string	"S_BOS2_RUN7"
.LASF750:
	.string	"S_BOS2_RUN8"
.LASF1393:
	.string	"lightlevel"
.LASF160:
	.string	"SPR_TRE1"
.LASF161:
	.string	"SPR_TRE2"
.LASF817:
	.string	"S_BSPI_STND"
.LASF1311:
	.string	"meleestate"
.LASF1368:
	.string	"ammo"
.LASF607:
	.string	"S_CPOS_DIE1"
.LASF168:
	.string	"SPR_TRED"
.LASF61:
	.string	"SPR_BLUD"
.LASF563:
	.string	"S_FATT_ATK3"
.LASF564:
	.string	"S_FATT_ATK4"
.LASF565:
	.string	"S_FATT_ATK5"
.LASF566:
	.string	"S_FATT_ATK6"
.LASF567:
	.string	"S_FATT_ATK7"
.LASF568:
	.string	"S_FATT_ATK8"
.LASF569:
	.string	"S_FATT_ATK9"
.LASF71:
	.string	"SPR_TFOG"
.LASF275:
	.string	"S_BLOOD1"
.LASF276:
	.string	"S_BLOOD2"
.LASF277:
	.string	"S_BLOOD3"
.LASF1159:
	.string	"misc1"
.LASF1160:
	.string	"misc2"
.LASF1419:
	.string	"angleturn"
.LASF1067:
	.string	"S_LAUN"
.LASF327:
	.string	"S_IFOG"
.LASF74:
	.string	"SPR_POSS"
.LASF79:
	.string	"SPR_FBXP"
.LASF876:
	.string	"S_CYBER_DIE1"
.LASF877:
	.string	"S_CYBER_DIE2"
.LASF878:
	.string	"S_CYBER_DIE3"
.LASF879:
	.string	"S_CYBER_DIE4"
.LASF880:
	.string	"S_CYBER_DIE5"
.LASF881:
	.string	"S_CYBER_DIE6"
.LASF882:
	.string	"S_CYBER_DIE7"
.LASF754:
	.string	"S_BOS2_PAIN"
.LASF884:
	.string	"S_CYBER_DIE9"
.LASF1348:
	.string	"spawnpoint"
.LASF1154:
	.string	"sprite"
.LASF1232:
	.string	"MT_MISC23"
.LASF1097:
	.string	"S_CANDELABRA"
.LASF437:
	.string	"S_VILE_RUN10"
.LASF438:
	.string	"S_VILE_RUN11"
.LASF439:
	.string	"S_VILE_RUN12"
.LASF1057:
	.string	"S_ROCK"
.LASF206:
	.string	"S_SGUN1"
.LASF207:
	.string	"S_SGUN2"
.LASF208:
	.string	"S_SGUN3"
.LASF209:
	.string	"S_SGUN4"
.LASF210:
	.string	"S_SGUN5"
.LASF211:
	.string	"S_SGUN6"
.LASF212:
	.string	"S_SGUN7"
.LASF213:
	.string	"S_SGUN8"
.LASF214:
	.string	"S_SGUN9"
.LASF1301:
	.string	"doomednum"
.LASF203:
	.string	"S_SGUN"
.LASF1093:
	.string	"S_SHRTGRNCOL"
.LASF778:
	.string	"S_SKULL_PAIN"
.LASF1190:
	.string	"MT_SPAWNSHOT"
.LASF502:
	.string	"S_TRACER2"
.LASF1101:
	.string	"S_TECHPILLAR"
.LASF506:
	.string	"S_SKEL_STND"
.LASF661:
	.string	"S_SARG_STND2"
.LASF407:
	.string	"S_SPOS_DIE1"
.LASF408:
	.string	"S_SPOS_DIE2"
.LASF409:
	.string	"S_SPOS_DIE3"
.LASF410:
	.string	"S_SPOS_DIE4"
.LASF411:
	.string	"S_SPOS_DIE5"
.LASF1426:
	.string	"PST_REBORN"
.LASF1136:
	.string	"S_HANGBNOBRAIN"
.LASF1455:
	.string	"tsec"
.LASF670:
	.string	"S_SARG_ATK1"
.LASF671:
	.string	"S_SARG_ATK2"
.LASF672:
	.string	"S_SARG_ATK3"
.LASF261:
	.string	"S_PLASMAUP"
.LASF1156:
	.string	"tics"
.LASF1471:
	.string	"T_FireFlicker"
.LASF1017:
	.string	"S_YKEY"
.LASF1316:
	.string	"speed"
.LASF230:
	.string	"S_DSNR1"
.LASF899:
	.string	"S_PAIN_DIE1"
.LASF429:
	.string	"S_VILE_RUN2"
.LASF1147:
	.string	"S_TECHLAMP4"
.LASF593:
	.string	"S_CPOS_RUN1"
.LASF594:
	.string	"S_CPOS_RUN2"
.LASF595:
	.string	"S_CPOS_RUN3"
.LASF596:
	.string	"S_CPOS_RUN4"
.LASF31:
	.string	"actionf_p1"
.LASF32:
	.string	"actionf_p2"
.LASF131:
	.string	"SPR_BPAK"
.LASF600:
	.string	"S_CPOS_RUN8"
.LASF997:
	.string	"S_BEXP5"
.LASF44:
	.string	"mapthing_t"
.LASF362:
	.string	"S_POSS_RUN2"
.LASF363:
	.string	"S_POSS_RUN3"
.LASF364:
	.string	"S_POSS_RUN4"
.LASF681:
	.string	"S_SARG_RAISE1"
.LASF365:
	.string	"S_POSS_RUN5"
.LASF33:
	.string	"acp1"
.LASF34:
	.string	"acp2"
.LASF685:
	.string	"S_SARG_RAISE5"
.LASF686:
	.string	"S_SARG_RAISE6"
.LASF1265:
	.string	"MT_MISC53"
.LASF170:
	.string	"SPR_SMGT"
.LASF961:
	.string	"S_KEENPAIN"
.LASF309:
	.string	"S_BFGEXP2"
.LASF310:
	.string	"S_BFGEXP3"
.LASF311:
	.string	"S_BFGEXP4"
.LASF240:
	.string	"S_CHAINFLASH1"
.LASF241:
	.string	"S_CHAINFLASH2"
.LASF1450:
	.string	"line"
.LASF861:
	.string	"S_CYBER_RUN1"
.LASF862:
	.string	"S_CYBER_RUN2"
.LASF863:
	.string	"S_CYBER_RUN3"
.LASF864:
	.string	"S_CYBER_RUN4"
.LASF865:
	.string	"S_CYBER_RUN5"
.LASF866:
	.string	"S_CYBER_RUN6"
.LASF867:
	.string	"S_CYBER_RUN7"
.LASF868:
	.string	"S_CYBER_RUN8"
.LASF1305:
	.string	"seesound"
.LASF1048:
	.string	"S_PMAP2"
.LASF1049:
	.string	"S_PMAP3"
.LASF1050:
	.string	"S_PMAP4"
.LASF1051:
	.string	"S_PMAP5"
.LASF1052:
	.string	"S_PMAP6"
.LASF1379:
	.string	"bonuscount"
.LASF779:
	.string	"S_SKULL_PAIN2"
.LASF1309:
	.string	"painchance"
.LASF605:
	.string	"S_CPOS_PAIN"
.LASF1390:
	.string	"ceilingheight"
.LASF84:
	.string	"SPR_SARG"
.LASF910:
	.string	"S_PAIN_RAISE6"
.LASF1400:
	.string	"specialdata"
.LASF1248:
	.string	"MT_MISC36"
.LASF714:
	.string	"S_BOSS_RUN1"
.LASF715:
	.string	"S_BOSS_RUN2"
.LASF716:
	.string	"S_BOSS_RUN3"
.LASF717:
	.string	"S_BOSS_RUN4"
.LASF718:
	.string	"S_BOSS_RUN5"
.LASF236:
	.string	"S_CHAINUP"
.LASF1468:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1374:
	.string	"killcount"
.LASF855:
	.string	"S_ARACH_PLEX2"
.LASF1099:
	.string	"S_TORCHTREE"
.LASF911:
	.string	"S_SSWV_STND"
.LASF857:
	.string	"S_ARACH_PLEX4"
.LASF958:
	.string	"S_COMMKEEN10"
.LASF959:
	.string	"S_COMMKEEN11"
.LASF960:
	.string	"S_COMMKEEN12"
.LASF875:
	.string	"S_CYBER_PAIN"
.LASF394:
	.string	"S_SPOS_RUN1"
.LASF152:
	.string	"SPR_SMIT"
.LASF12:
	.string	"boolean"
.LASF397:
	.string	"S_SPOS_RUN4"
.LASF398:
	.string	"S_SPOS_RUN5"
.LASF89:
	.string	"SPR_SKUL"
.LASF400:
	.string	"S_SPOS_RUN7"
.LASF401:
	.string	"S_SPOS_RUN8"
.LASF1058:
	.string	"S_BROK"
.LASF1303:
	.string	"spawnhealth"
.LASF188:
	.string	"S_PUNCHDOWN"
.LASF854:
	.string	"S_ARACH_PLEX"
.LASF1115:
	.string	"S_GREENTORCH"
.LASF22:
	.string	"wp_supershotgun"
.LASF254:
	.string	"S_SAWDOWN"
.LASF1153:
	.string	"statenum_t"
.LASF1193:
	.string	"MT_TROOPSHOT"
.LASF1178:
	.string	"MT_BRUISERSHOT"
.LASF1423:
	.string	"ticcmd_t"
.LASF1298:
	.string	"MT_MISC86"
.LASF342:
	.string	"S_PLAY_PAIN2"
.LASF737:
	.string	"S_BOSS_RAISE4"
.LASF738:
	.string	"S_BOSS_RAISE5"
.LASF1155:
	.string	"frame"
.LASF81:
	.string	"SPR_MANF"
.LASF592:
	.string	"S_CPOS_STND2"
.LASF405:
	.string	"S_SPOS_PAIN"
.LASF16:
	.string	"wp_shotgun"
.LASF373:
	.string	"S_POSS_PAIN2"
.LASF1199:
	.string	"MT_PUFF"
.LASF245:
	.string	"S_MISSILE1"
.LASF246:
	.string	"S_MISSILE2"
.LASF247:
	.string	"S_MISSILE3"
.LASF621:
	.string	"S_CPOS_RAISE2"
.LASF622:
	.string	"S_CPOS_RAISE3"
.LASF623:
	.string	"S_CPOS_RAISE4"
.LASF1384:
	.string	"psprites"
.LASF1065:
	.string	"S_MGUN"
.LASF1177:
	.string	"MT_BRUISER"
.LASF130:
	.string	"SPR_SBOX"
.LASF1376:
	.string	"secretcount"
.LASF1300:
	.string	"mobjtype_t"
.LASF1314:
	.string	"xdeathstate"
.LASF1361:
	.string	"powers"
.LASF774:
	.string	"S_SKULL_ATK1"
.LASF775:
	.string	"S_SKULL_ATK2"
.LASF776:
	.string	"S_SKULL_ATK3"
.LASF777:
	.string	"S_SKULL_ATK4"
.LASF755:
	.string	"S_BOS2_PAIN2"
.LASF6:
	.string	"short unsigned int"
.LASF1179:
	.string	"MT_KNIGHT"
.LASF7:
	.string	"signed char"
.LASF1418:
	.string	"sidemove"
.LASF1321:
	.string	"activesound"
.LASF406:
	.string	"S_SPOS_PAIN2"
.LASF570:
	.string	"S_FATT_ATK10"
.LASF167:
	.string	"SPR_TGRN"
.LASF1224:
	.string	"MT_MEGA"
.LASF69:
	.string	"SPR_BFE1"
.LASF70:
	.string	"SPR_BFE2"
.LASF1399:
	.string	"thinglist"
.LASF1430:
	.string	"count"
.LASF1186:
	.string	"MT_KEEN"
.LASF1434:
	.string	"maxtime"
.LASF1397:
	.string	"blockbox"
.LASF971:
	.string	"S_BRAINEYE1"
.LASF627:
	.string	"S_TROO_STND"
.LASF574:
	.string	"S_FATT_DIE2"
.LASF265:
	.string	"S_PLASMAFLASH2"
.LASF25:
	.string	"weapontype_t"
.LASF1421:
	.string	"chatchar"
.LASF318:
	.string	"S_TFOG2"
.LASF319:
	.string	"S_TFOG3"
.LASF320:
	.string	"S_TFOG4"
.LASF321:
	.string	"S_TFOG5"
.LASF322:
	.string	"S_TFOG6"
.LASF323:
	.string	"S_TFOG7"
.LASF324:
	.string	"S_TFOG8"
.LASF325:
	.string	"S_TFOG9"
.LASF740:
	.string	"S_BOSS_RAISE7"
.LASF1370:
	.string	"attackdown"
.LASF45:
	.string	"SPR_TROO"
.LASF56:
	.string	"SPR_SAWG"
.LASF1470:
	.string	"P_Random"
.LASF105:
	.string	"SPR_BON1"
.LASF106:
	.string	"SPR_BON2"
.LASF1094:
	.string	"S_TALLREDCOL"
.LASF1340:
	.string	"state"
.LASF1069:
	.string	"S_SHOT"
.LASF925:
	.string	"S_SSWV_ATK5"
.LASF1074:
	.string	"S_BLOODYTWITCH2"
.LASF1075:
	.string	"S_BLOODYTWITCH3"
.LASF1076:
	.string	"S_BLOODYTWITCH4"
.LASF815:
	.string	"S_SPID_DIE10"
.LASF816:
	.string	"S_SPID_DIE11"
.LASF1362:
	.string	"cards"
.LASF162:
	.string	"SPR_ELEC"
.LASF963:
	.string	"S_BRAIN"
.LASF1181:
	.string	"MT_SPIDER"
.LASF1046:
	.string	"S_SUIT"
.LASF60:
	.string	"SPR_BFGF"
.LASF59:
	.string	"SPR_BFGG"
.LASF886:
	.string	"S_PAIN_STND"
.LASF302:
	.string	"S_BFGLAND"
.LASF992:
	.string	"S_BAR2"
.LASF1366:
	.string	"pendingweapon"
.LASF39:
	.string	"function"
.LASF1463:
	.string	"P_SpawnLightFlash"
.LASF1338:
	.string	"validcount"
.LASF1377:
	.string	"message"
.LASF582:
	.string	"S_FATT_DIE10"
.LASF1119:
	.string	"S_REDTORCH"
.LASF1431:
	.string	"maxlight"
.LASF1197:
	.string	"MT_BFG"
.LASF366:
	.string	"S_POSS_RUN6"
.LASF1462:
	.string	"T_StrobeFlash"
.LASF76:
	.string	"SPR_VILE"
.LASF1200:
	.string	"MT_BLOOD"
.LASF195:
	.string	"S_PISTOL"
.LASF11:
	.string	"true"
.LASF427:
	.string	"S_VILE_STND2"
.LASF845:
	.string	"S_BSPI_RAISE1"
.LASF846:
	.string	"S_BSPI_RAISE2"
.LASF847:
	.string	"S_BSPI_RAISE3"
.LASF848:
	.string	"S_BSPI_RAISE4"
.LASF849:
	.string	"S_BSPI_RAISE5"
.LASF850:
	.string	"S_BSPI_RAISE6"
.LASF851:
	.string	"S_BSPI_RAISE7"
.LASF1335:
	.string	"momx"
.LASF1336:
	.string	"momy"
.LASF9:
	.string	"long int"
.LASF934:
	.string	"S_SSWV_XDIE1"
.LASF935:
	.string	"S_SSWV_XDIE2"
.LASF936:
	.string	"S_SSWV_XDIE3"
.LASF937:
	.string	"S_SSWV_XDIE4"
.LASF938:
	.string	"S_SSWV_XDIE5"
.LASF939:
	.string	"S_SSWV_XDIE6"
.LASF940:
	.string	"S_SSWV_XDIE7"
.LASF941:
	.string	"S_SSWV_XDIE8"
.LASF942:
	.string	"S_SSWV_XDIE9"
.LASF232:
	.string	"S_DSGUNFLASH1"
.LASF233:
	.string	"S_DSGUNFLASH2"
.LASF1231:
	.string	"MT_MISC22"
.LASF1385:
	.string	"didsecret"
.LASF490:
	.string	"S_FIRE25"
.LASF584:
	.string	"S_FATT_RAISE2"
.LASF1267:
	.string	"MT_MISC55"
.LASF1358:
	.string	"deltaviewheight"
.LASF1022:
	.string	"S_RSKULL2"
.LASF1349:
	.string	"tracer"
.LASF797:
	.string	"S_SPID_RUN10"
.LASF798:
	.string	"S_SPID_RUN11"
.LASF799:
	.string	"S_SPID_RUN12"
.LASF1446:
	.string	"rcsid"
.LASF1323:
	.string	"raisestate"
.LASF248:
	.string	"S_MISSILEFLASH1"
.LASF249:
	.string	"S_MISSILEFLASH2"
.LASF250:
	.string	"S_MISSILEFLASH3"
.LASF251:
	.string	"S_MISSILEFLASH4"
.LASF111:
	.string	"SPR_RSKU"
.LASF36:
	.string	"think_t"
.LASF608:
	.string	"S_CPOS_DIE2"
.LASF609:
	.string	"S_CPOS_DIE3"
.LASF610:
	.string	"S_CPOS_DIE4"
.LASF611:
	.string	"S_CPOS_DIE5"
.LASF612:
	.string	"S_CPOS_DIE6"
.LASF613:
	.string	"S_CPOS_DIE7"
.LASF1458:
	.string	"P_SpawnStrobeFlash"
.LASF1054:
	.string	"S_PVIS2"
.LASF1448:
	.string	"T_Glow"
.LASF1192:
	.string	"MT_BARREL"
.LASF786:
	.string	"S_SPID_STND"
.LASF558:
	.string	"S_FATT_RUN10"
.LASF559:
	.string	"S_FATT_RUN11"
.LASF560:
	.string	"S_FATT_RUN12"
.LASF1184:
	.string	"MT_PAIN"
.LASF1112:
	.string	"S_BLUETORCH2"
.LASF1324:
	.string	"mobjinfo_t"
.LASF1113:
	.string	"S_BLUETORCH3"
.LASF1114:
	.string	"S_BLUETORCH4"
.LASF171:
	.string	"SPR_SMRT"
.LASF273:
	.string	"S_BFGFLASH1"
.LASF274:
	.string	"S_BFGFLASH2"
.LASF807:
	.string	"S_SPID_DIE2"
.LASF88:
	.string	"SPR_BOS2"
.LASF810:
	.string	"S_SPID_DIE5"
.LASF811:
	.string	"S_SPID_DIE6"
.LASF812:
	.string	"S_SPID_DIE7"
.LASF813:
	.string	"S_SPID_DIE8"
.LASF1103:
	.string	"S_EVILEYE2"
.LASF1104:
	.string	"S_EVILEYE3"
.LASF1105:
	.string	"S_EVILEYE4"
.LASF278:
	.string	"S_PUFF1"
.LASF279:
	.string	"S_PUFF2"
.LASF280:
	.string	"S_PUFF3"
.LASF99:
	.string	"SPR_BOSF"
.LASF1402:
	.string	"lines"
.LASF87:
	.string	"SPR_BOSS"
.LASF1196:
	.string	"MT_PLASMA"
.LASF832:
	.string	"S_BSPI_ATK1"
.LASF833:
	.string	"S_BSPI_ATK2"
.LASF834:
	.string	"S_BSPI_ATK3"
.LASF835:
	.string	"S_BSPI_ATK4"
.LASF1014:
	.string	"S_BKEY2"
.LASF23:
	.string	"NUMWEAPONS"
.LASF819:
	.string	"S_BSPI_SIGHT"
.LASF2:
	.string	"long unsigned int"
.LASF821:
	.string	"S_BSPI_RUN2"
.LASF965:
	.string	"S_BRAIN_DIE1"
.LASF966:
	.string	"S_BRAIN_DIE2"
.LASF967:
	.string	"S_BRAIN_DIE3"
.LASF968:
	.string	"S_BRAIN_DIE4"
.LASF300:
	.string	"S_BFGSHOT"
.LASF1106:
	.string	"S_FLOATSKULL"
.LASF456:
	.string	"S_VILE_DIE1"
.LASF457:
	.string	"S_VILE_DIE2"
.LASF458:
	.string	"S_VILE_DIE3"
.LASF459:
	.string	"S_VILE_DIE4"
.LASF460:
	.string	"S_VILE_DIE5"
.LASF461:
	.string	"S_VILE_DIE6"
.LASF462:
	.string	"S_VILE_DIE7"
.LASF463:
	.string	"S_VILE_DIE8"
.LASF464:
	.string	"S_VILE_DIE9"
.LASF1378:
	.string	"damagecount"
.LASF140:
	.string	"SPR_SMT2"
.LASF1016:
	.string	"S_RKEY2"
.LASF987:
	.string	"S_ARM1"
.LASF989:
	.string	"S_ARM2"
.LASF1082:
	.string	"S_HEADCANDLES"
.LASF118:
	.string	"SPR_PINS"
.LASF712:
	.string	"S_BOSS_STND"
.LASF1465:
	.string	"P_SpawnFireFlicker"
.LASF692:
	.string	"S_HEAD_PAIN"
.LASF1168:
	.string	"MT_TRACER"
.LASF573:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF575:
	.string	"S_FATT_DIE3"
.LASF576:
	.string	"S_FATT_DIE4"
.LASF577:
	.string	"S_FATT_DIE5"
.LASF578:
	.string	"S_FATT_DIE6"
.LASF579:
	.string	"S_FATT_DIE7"
.LASF580:
	.string	"S_FATT_DIE8"
.LASF581:
	.string	"S_FATT_DIE9"
.LASF648:
	.string	"S_TROO_XDIE2"
.LASF649:
	.string	"S_TROO_XDIE3"
.LASF650:
	.string	"S_TROO_XDIE4"
.LASF651:
	.string	"S_TROO_XDIE5"
.LASF652:
	.string	"S_TROO_XDIE6"
.LASF653:
	.string	"S_TROO_XDIE7"
.LASF654:
	.string	"S_TROO_XDIE8"
.LASF123:
	.string	"SPR_CLIP"
.LASF1095:
	.string	"S_SHRTREDCOL"
.LASF1138:
	.string	"S_HANGTSKULL"
.LASF923:
	.string	"S_SSWV_ATK3"
.LASF924:
	.string	"S_SSWV_ATK4"
.LASF229:
	.string	"S_DSGUN10"
.LASF196:
	.string	"S_PISTOLDOWN"
.LASF157:
	.string	"SPR_CAND"
.LASF1437:
	.string	"darktime"
.LASF1174:
	.string	"MT_SERGEANT"
.LASF1085:
	.string	"S_LIVESTICK"
.LASF1025:
	.string	"S_STIM"
.LASF1466:
	.string	"flick"
.LASF1333:
	.string	"floorz"
.LASF688:
	.string	"S_HEAD_RUN1"
.LASF343:
	.string	"S_PLAY_DIE1"
.LASF344:
	.string	"S_PLAY_DIE2"
.LASF345:
	.string	"S_PLAY_DIE3"
.LASF346:
	.string	"S_PLAY_DIE4"
.LASF347:
	.string	"S_PLAY_DIE5"
.LASF348:
	.string	"S_PLAY_DIE6"
.LASF349:
	.string	"S_PLAY_DIE7"
.LASF359:
	.string	"S_POSS_STND"
.LASF1447:
	.string	"P_SpawnGlowingLight"
.LASF315:
	.string	"S_TFOG"
.LASF1252:
	.string	"MT_MISC40"
.LASF1253:
	.string	"MT_MISC41"
.LASF1350:
	.string	"subsector_s"
.LASF675:
	.string	"S_SARG_DIE1"
.LASF676:
	.string	"S_SARG_DIE2"
.LASF677:
	.string	"S_SARG_DIE3"
.LASF678:
	.string	"S_SARG_DIE4"
.LASF976:
	.string	"S_SPAWNFIRE1"
.LASF977:
	.string	"S_SPAWNFIRE2"
.LASF978:
	.string	"S_SPAWNFIRE3"
.LASF979:
	.string	"S_SPAWNFIRE4"
.LASF980:
	.string	"S_SPAWNFIRE5"
.LASF981:
	.string	"S_SPAWNFIRE6"
.LASF982:
	.string	"S_SPAWNFIRE7"
.LASF983:
	.string	"S_SPAWNFIRE8"
.LASF647:
	.string	"S_TROO_XDIE1"
.LASF1420:
	.string	"consistancy"
.LASF1351:
	.string	"sector"
.LASF1140:
	.string	"S_HANGTNOBRAIN"
.LASF295:
	.string	"S_PLASEXP2"
.LASF296:
	.string	"S_PLASEXP3"
.LASF297:
	.string	"S_PLASEXP4"
.LASF298:
	.string	"S_PLASEXP5"
.LASF20:
	.string	"wp_bfg"
.LASF1124:
	.string	"S_BTORCHSHRT2"
.LASF1125:
	.string	"S_BTORCHSHRT3"
.LASF1126:
	.string	"S_BTORCHSHRT4"
.LASF428:
	.string	"S_VILE_RUN1"
.LASF218:
	.string	"S_DSGUNDOWN"
.LASF430:
	.string	"S_VILE_RUN3"
.LASF431:
	.string	"S_VILE_RUN4"
.LASF432:
	.string	"S_VILE_RUN5"
.LASF433:
	.string	"S_VILE_RUN6"
.LASF434:
	.string	"S_VILE_RUN7"
.LASF435:
	.string	"S_VILE_RUN8"
.LASF436:
	.string	"S_VILE_RUN9"
.LASF679:
	.string	"S_SARG_DIE5"
.LASF680:
	.string	"S_SARG_DIE6"
.LASF1327:
	.string	"thinker"
.LASF1467:
	.string	"amount"
.LASF520:
	.string	"S_SKEL_FIST1"
.LASF521:
	.string	"S_SKEL_FIST2"
.LASF522:
	.string	"S_SKEL_FIST3"
.LASF523:
	.string	"S_SKEL_FIST4"
.LASF259:
	.string	"S_PLASMA"
.LASF1038:
	.string	"S_PINS"
.LASF1449:
	.string	"EV_LightTurnOn"
.LASF1429:
	.string	"sectors"
.LASF1111:
	.string	"S_BLUETORCH"
.LASF549:
	.string	"S_FATT_RUN1"
.LASF550:
	.string	"S_FATT_RUN2"
.LASF551:
	.string	"S_FATT_RUN3"
.LASF552:
	.string	"S_FATT_RUN4"
.LASF553:
	.string	"S_FATT_RUN5"
.LASF554:
	.string	"S_FATT_RUN6"
.LASF555:
	.string	"S_FATT_RUN7"
.LASF556:
	.string	"S_FATT_RUN8"
.LASF1087:
	.string	"S_MEAT2"
.LASF1088:
	.string	"S_MEAT3"
.LASF1089:
	.string	"S_MEAT4"
.LASF1090:
	.string	"S_MEAT5"
.LASF202:
	.string	"S_PISTOLFLASH"
.LASF1389:
	.string	"floorheight"
.LASF422:
	.string	"S_SPOS_RAISE2"
.LASF423:
	.string	"S_SPOS_RAISE3"
.LASF424:
	.string	"S_SPOS_RAISE4"
.LASF425:
	.string	"S_SPOS_RAISE5"
.LASF114:
	.string	"SPR_MEDI"
.LASF116:
	.string	"SPR_PINV"
.LASF964:
	.string	"S_BRAIN_PAIN"
.LASF235:
	.string	"S_CHAINDOWN"
.LASF454:
	.string	"S_VILE_PAIN"
.LASF501:
	.string	"S_TRACER"
.LASF921:
	.string	"S_SSWV_ATK1"
.LASF922:
	.string	"S_SSWV_ATK2"
.LASF451:
	.string	"S_VILE_HEAL1"
.LASF452:
	.string	"S_VILE_HEAL2"
.LASF453:
	.string	"S_VILE_HEAL3"
.LASF926:
	.string	"S_SSWV_ATK6"
.LASF1343:
	.string	"movecount"
.LASF108:
	.string	"SPR_RKEY"
.LASF1072:
	.string	"S_STALAG"
.LASF1445:
	.string	"Z_Malloc"
.LASF787:
	.string	"S_SPID_STND2"
.LASF29:
	.string	"angle_t"
.LASF1392:
	.string	"ceilingpic"
.LASF1073:
	.string	"S_BLOODYTWITCH"
.LASF1142:
	.string	"S_SMALLPOOL"
.LASF1416:
	.string	"pspdef_t"
.LASF1268:
	.string	"MT_MISC56"
.LASF571:
	.string	"S_FATT_PAIN"
.LASF335:
	.string	"S_PLAY_RUN1"
.LASF336:
	.string	"S_PLAY_RUN2"
.LASF337:
	.string	"S_PLAY_RUN3"
.LASF338:
	.string	"S_PLAY_RUN4"
.LASF1063:
	.string	"S_BPAK"
.LASF27:
	.string	"double"
.LASF103:
	.string	"SPR_BEXP"
.LASF1354:
	.string	"player_s"
.LASF1020:
	.string	"S_BSKULL2"
.LASF62:
	.string	"SPR_PUFF"
.LASF949:
	.string	"S_COMMKEEN"
.LASF1371:
	.string	"usedown"
.LASF741:
	.string	"S_BOS2_STND"
.LASF68:
	.string	"SPR_BFS1"
.LASF972:
	.string	"S_SPAWN1"
.LASF973:
	.string	"S_SPAWN2"
.LASF974:
	.string	"S_SPAWN3"
.LASF975:
	.string	"S_SPAWN4"
.LASF1145:
	.string	"S_TECHLAMP2"
.LASF1146:
	.string	"S_TECHLAMP3"
.LASF21:
	.string	"wp_chainsaw"
.LASF1182:
	.string	"MT_BABY"
.LASF1369:
	.string	"maxammo"
.LASF1086:
	.string	"S_LIVESTICK2"
.LASF1131:
	.string	"S_RTORCHSHRT"
.LASF1228:
	.string	"MT_MISC19"
.LASF90:
	.string	"SPR_SPID"
.LASF687:
	.string	"S_HEAD_STND"
.LASF662:
	.string	"S_SARG_RUN1"
.LASF663:
	.string	"S_SARG_RUN2"
.LASF665:
	.string	"S_SARG_RUN4"
.LASF666:
	.string	"S_SARG_RUN5"
.LASF667:
	.string	"S_SARG_RUN6"
.LASF668:
	.string	"S_SARG_RUN7"
.LASF669:
	.string	"S_SARG_RUN8"
.LASF1206:
	.string	"MT_MISC1"
.LASF1207:
	.string	"MT_MISC2"
.LASF1208:
	.string	"MT_MISC3"
.LASF1209:
	.string	"MT_MISC4"
.LASF1210:
	.string	"MT_MISC5"
.LASF1211:
	.string	"MT_MISC6"
.LASF1212:
	.string	"MT_MISC7"
.LASF1213:
	.string	"MT_MISC8"
.LASF1214:
	.string	"MT_MISC9"
.LASF252:
	.string	"S_SAW"
.LASF119:
	.string	"SPR_MEGA"
.LASF341:
	.string	"S_PLAY_PAIN"
.LASF293:
	.string	"S_PLASBALL2"
.LASF1355:
	.string	"playerstate"
.LASF97:
	.string	"SPR_KEEN"
.LASF927:
	.string	"S_SSWV_PAIN"
.LASF1308:
	.string	"painstate"
.LASF962:
	.string	"S_KEENPAIN2"
.LASF449:
	.string	"S_VILE_ATK10"
.LASF450:
	.string	"S_VILE_ATK11"
.LASF928:
	.string	"S_SSWV_PAIN2"
.LASF1292:
	.string	"MT_MISC80"
.LASF1315:
	.string	"deathsound"
.LASF1002:
	.string	"S_BON1A"
.LASF1003:
	.string	"S_BON1B"
.LASF1004:
	.string	"S_BON1C"
.LASF1005:
	.string	"S_BON1D"
.LASF1006:
	.string	"S_BON1E"
.LASF1409:
	.string	"sector_t"
.LASF117:
	.string	"SPR_PSTR"
.LASF1230:
	.string	"MT_MISC21"
.LASF673:
	.string	"S_SARG_PAIN"
.LASF1225:
	.string	"MT_CLIP"
.LASF132:
	.string	"SPR_BFUG"
.LASF1280:
	.string	"MT_MISC68"
.LASF998:
	.string	"S_BBAR1"
.LASF999:
	.string	"S_BBAR2"
.LASF1000:
	.string	"S_BBAR3"
.LASF186:
	.string	"S_LIGHTDONE"
.LASF837:
	.string	"S_BSPI_PAIN2"
.LASF1363:
	.string	"backpack"
.LASF1464:
	.string	"T_LightFlash"
.LASF637:
	.string	"S_TROO_ATK1"
.LASF638:
	.string	"S_TROO_ATK2"
.LASF639:
	.string	"S_TROO_ATK3"
.LASF781:
	.string	"S_SKULL_DIE2"
.LASF782:
	.string	"S_SKULL_DIE3"
.LASF783:
	.string	"S_SKULL_DIE4"
.LASF784:
	.string	"S_SKULL_DIE5"
.LASF785:
	.string	"S_SKULL_DIE6"
.LASF136:
	.string	"SPR_PLAS"
.LASF1008:
	.string	"S_BON2A"
.LASF1009:
	.string	"S_BON2B"
.LASF49:
	.string	"SPR_PISF"
.LASF48:
	.string	"SPR_PISG"
.LASF1012:
	.string	"S_BON2E"
.LASF1235:
	.string	"MT_CHAINGUN"
.LASF284:
	.string	"S_TBALLX1"
.LASF285:
	.string	"S_TBALLX2"
.LASF286:
	.string	"S_TBALLX3"
.LASF24:
	.string	"wp_nochange"
.LASF1172:
	.string	"MT_CHAINGUY"
.LASF1388:
	.string	"degenmobj_t"
.LASF1417:
	.string	"forwardmove"
.LASF780:
	.string	"S_SKULL_DIE1"
.LASF1425:
	.string	"PST_DEAD"
.LASF1143:
	.string	"S_BRAINSTEM"
.LASF948:
	.string	"S_KEENSTND"
.LASF73:
	.string	"SPR_PLAY"
.LASF1365:
	.string	"readyweapon"
.LASF1432:
	.string	"minlight"
.LASF1083:
	.string	"S_HEADCANDLES2"
.LASF1202:
	.string	"MT_IFOG"
.LASF164:
	.string	"SPR_FSKU"
.LASF399:
	.string	"S_SPOS_RUN6"
.LASF255:
	.string	"S_SAWUP"
.LASF988:
	.string	"S_ARM1A"
.LASF591:
	.string	"S_CPOS_STND"
.LASF1243:
	.string	"MT_MISC31"
.LASF1337:
	.string	"momz"
.LASF1062:
	.string	"S_SBOX"
.LASF1395:
	.string	"soundtraversed"
.LASF1246:
	.string	"MT_MISC34"
.LASF1405:
	.string	"bbox"
.LASF1460:
	.string	"inSync"
.LASF294:
	.string	"S_PLASEXP"
.LASF1078:
	.string	"S_DEADBOTTOM"
.LASF1135:
	.string	"S_HANGNOGUTS"
.LASF1307:
	.string	"attacksound"
.LASF1039:
	.string	"S_PINS2"
.LASF1040:
	.string	"S_PINS3"
.LASF1041:
	.string	"S_PINS4"
.LASF893:
	.string	"S_PAIN_ATK1"
.LASF894:
	.string	"S_PAIN_ATK2"
.LASF895:
	.string	"S_PAIN_ATK3"
.LASF896:
	.string	"S_PAIN_ATK4"
.LASF205:
	.string	"S_SGUNUP"
.LASF1407:
	.string	"frontsector"
.LASF1435:
	.string	"mintime"
.LASF158:
	.string	"SPR_CBRA"
.LASF1313:
	.string	"deathstate"
.LASF990:
	.string	"S_ARM2A"
.LASF859:
	.string	"S_CYBER_STND"
.LASF1018:
	.string	"S_YKEY2"
.LASF468:
	.string	"S_FIRE3"
.LASF1306:
	.string	"reactiontime"
.LASF473:
	.string	"S_FIRE8"
.LASF713:
	.string	"S_BOSS_STND2"
.LASF1329:
	.string	"sprev"
.LASF256:
	.string	"S_SAW1"
.LASF257:
	.string	"S_SAW2"
.LASF258:
	.string	"S_SAW3"
.LASF1001:
	.string	"S_BON1"
.LASF1007:
	.string	"S_BON2"
.LASF1346:
	.string	"player"
.LASF253:
	.string	"S_SAWB"
.LASF641:
	.string	"S_TROO_PAIN2"
.LASF1188:
	.string	"MT_BOSSSPIT"
.LASF466:
	.string	"S_FIRE1"
.LASF467:
	.string	"S_FIRE2"
.LASF28:
	.string	"fixed_t"
.LASF469:
	.string	"S_FIRE4"
.LASF470:
	.string	"S_FIRE5"
.LASF471:
	.string	"S_FIRE6"
.LASF472:
	.string	"S_FIRE7"
.LASF126:
	.string	"SPR_BROK"
.LASF474:
	.string	"S_FIRE9"
.LASF1256:
	.string	"MT_MISC44"
.LASF1257:
	.string	"MT_MISC45"
.LASF1258:
	.string	"MT_MISC46"
.LASF1259:
	.string	"MT_MISC47"
.LASF124:
	.string	"SPR_AMMO"
.LASF1260:
	.string	"MT_MISC48"
.LASF1261:
	.string	"MT_MISC49"
.LASF772:
	.string	"S_SKULL_RUN1"
.LASF773:
	.string	"S_SKULL_RUN2"
.LASF1139:
	.string	"S_HANGTLOOKUP"
.LASF1440:
	.string	"direction"
.LASF234:
	.string	"S_CHAIN"
.LASF264:
	.string	"S_PLASMAFLASH1"
.LASF220:
	.string	"S_DSGUN1"
.LASF221:
	.string	"S_DSGUN2"
.LASF115:
	.string	"SPR_SOUL"
.LASF75:
	.string	"SPR_SPOS"
.LASF224:
	.string	"S_DSGUN5"
.LASF225:
	.string	"S_DSGUN6"
.LASF226:
	.string	"S_DSGUN7"
.LASF227:
	.string	"S_DSGUN8"
.LASF228:
	.string	"S_DSGUN9"
.LASF392:
	.string	"S_SPOS_STND"
.LASF95:
	.string	"SPR_PAIN"
.LASF620:
	.string	"S_CPOS_RAISE1"
.LASF1364:
	.string	"frags"
.LASF1359:
	.string	"armorpoints"
.LASF1422:
	.string	"buttons"
.LASF269:
	.string	"S_BFG1"
.LASF270:
	.string	"S_BFG2"
.LASF271:
	.string	"S_BFG3"
.LASF272:
	.string	"S_BFG4"
.LASF184:
	.string	"spritenum_t"
.LASF231:
	.string	"S_DSNR2"
.LASF771:
	.string	"S_SKULL_STND2"
.LASF1034:
	.string	"S_PINV2"
.LASF1035:
	.string	"S_PINV3"
.LASF664:
	.string	"S_SARG_RUN3"
.LASF1149:
	.string	"S_TECH2LAMP2"
.LASF1150:
	.string	"S_TECH2LAMP3"
.LASF1151:
	.string	"S_TECH2LAMP4"
.LASF1403:
	.string	"line_s"
.LASF47:
	.string	"SPR_PUNG"
.LASF615:
	.string	"S_CPOS_XDIE2"
.LASF616:
	.string	"S_CPOS_XDIE3"
.LASF617:
	.string	"S_CPOS_XDIE4"
.LASF618:
	.string	"S_CPOS_XDIE5"
.LASF619:
	.string	"S_CPOS_XDIE6"
.LASF800:
	.string	"S_SPID_ATK1"
.LASF801:
	.string	"S_SPID_ATK2"
.LASF802:
	.string	"S_SPID_ATK3"
.LASF803:
	.string	"S_SPID_ATK4"
.LASF524:
	.string	"S_SKEL_MISS1"
.LASF525:
	.string	"S_SKEL_MISS2"
.LASF526:
	.string	"S_SKEL_MISS3"
.LASF527:
	.string	"S_SKEL_MISS4"
.LASF281:
	.string	"S_PUFF4"
.LASF1021:
	.string	"S_RSKULL"
.LASF853:
	.string	"S_ARACH_PLAZ2"
.LASF1262:
	.string	"MT_MISC50"
.LASF701:
	.string	"S_HEAD_RAISE1"
.LASF1297:
	.string	"MT_MISC85"
.LASF702:
	.string	"S_HEAD_RAISE2"
.LASF703:
	.string	"S_HEAD_RAISE3"
.LASF1372:
	.string	"cheats"
.LASF110:
	.string	"SPR_BSKU"
.LASF705:
	.string	"S_HEAD_RAISE5"
.LASF706:
	.string	"S_HEAD_RAISE6"
.LASF1438:
	.string	"brighttime"
.LASF1240:
	.string	"MT_SUPERSHOTGUN"
.LASF121:
	.string	"SPR_PMAP"
.LASF969:
	.string	"S_BRAINEYE"
.LASF122:
	.string	"SPR_PVIS"
.LASF1424:
	.string	"PST_LIVE"
.LASF1198:
	.string	"MT_ARACHPLAZ"
.LASF447:
	.string	"S_VILE_ATK8"
.LASF388:
	.string	"S_POSS_RAISE1"
.LASF389:
	.string	"S_POSS_RAISE2"
.LASF390:
	.string	"S_POSS_RAISE3"
.LASF391:
	.string	"S_POSS_RAISE4"
.LASF243:
	.string	"S_MISSILEDOWN"
.LASF1107:
	.string	"S_FLOATSKULL2"
.LASF1108:
	.string	"S_FLOATSKULL3"
.LASF1042:
	.string	"S_MEGA"
.LASF722:
	.string	"S_BOSS_ATK1"
.LASF723:
	.string	"S_BOSS_ATK2"
.LASF724:
	.string	"S_BOSS_ATK3"
.LASF1332:
	.string	"subsector"
.LASF180:
	.string	"SPR_BRS1"
.LASF1387:
	.string	"vertex_t"
.LASF529:
	.string	"S_SKEL_PAIN2"
.LASF1066:
	.string	"S_CSAW"
.LASF709:
	.string	"S_BRBALLX1"
.LASF710:
	.string	"S_BRBALLX2"
.LASF711:
	.string	"S_BRBALLX3"
.LASF839:
	.string	"S_BSPI_DIE2"
.LASF840:
	.string	"S_BSPI_DIE3"
.LASF841:
	.string	"S_BSPI_DIE4"
.LASF842:
	.string	"S_BSPI_DIE5"
.LASF17:
	.string	"wp_chaingun"
.LASF844:
	.string	"S_BSPI_DIE7"
.LASF395:
	.string	"S_SPOS_RUN2"
.LASF1408:
	.string	"backsector"
.LASF396:
	.string	"S_SPOS_RUN3"
.LASF898:
	.string	"S_PAIN_PAIN2"
.LASF533:
	.string	"S_SKEL_DIE4"
.LASF129:
	.string	"SPR_SHEL"
.LASF1281:
	.string	"MT_MISC69"
.LASF1360:
	.string	"armortype"
.LASF10:
	.string	"false"
.LASF181:
	.string	"SPR_TLMP"
.LASF360:
	.string	"S_POSS_STND2"
.LASF1239:
	.string	"MT_SHOTGUN"
.LASF1164:
	.string	"MT_SHOTGUY"
.LASF1375:
	.string	"itemcount"
.LASF1144:
	.string	"S_TECHLAMP"
.LASF1185:
	.string	"MT_WOLFSS"
.LASF742:
	.string	"S_BOS2_STND2"
.LASF1396:
	.string	"soundtarget"
.LASF237:
	.string	"S_CHAIN1"
.LASF238:
	.string	"S_CHAIN2"
.LASF239:
	.string	"S_CHAIN3"
.LASF290:
	.string	"S_RBALLX2"
.LASF291:
	.string	"S_RBALLX3"
.LASF166:
	.string	"SPR_TBLU"
.LASF393:
	.string	"S_SPOS_STND2"
.LASF4:
	.string	"unsigned int"
.LASF1454:
	.string	"EV_TurnTagLightsOff"
.LASF1328:
	.string	"snext"
.LASF1325:
	.string	"thinker_s"
.LASF40:
	.string	"thinker_t"
.LASF369:
	.string	"S_POSS_ATK1"
.LASF370:
	.string	"S_POSS_ATK2"
.LASF371:
	.string	"S_POSS_ATK3"
.LASF1283:
	.string	"MT_MISC71"
.LASF1132:
	.string	"S_RTORCHSHRT2"
.LASF1133:
	.string	"S_RTORCHSHRT3"
.LASF1134:
	.string	"S_RTORCHSHRT4"
.LASF1036:
	.string	"S_PINV4"
.LASF8:
	.string	"short int"
.LASF820:
	.string	"S_BSPI_RUN1"
.LASF1289:
	.string	"MT_MISC77"
.LASF1290:
	.string	"MT_MISC78"
.LASF1291:
	.string	"MT_MISC79"
.LASF1180:
	.string	"MT_SKULL"
.LASF1167:
	.string	"MT_UNDEAD"
.LASF37:
	.string	"prev"
.LASF530:
	.string	"S_SKEL_DIE1"
.LASF531:
	.string	"S_SKEL_DIE2"
.LASF532:
	.string	"S_SKEL_DIE3"
.LASF77:
	.string	"SPR_FIRE"
.LASF534:
	.string	"S_SKEL_DIE5"
.LASF535:
	.string	"S_SKEL_DIE6"
.LASF1141:
	.string	"S_COLONGIBS"
.LASF182:
	.string	"SPR_TLP2"
.LASF292:
	.string	"S_PLASBALL"
.LASF138:
	.string	"SPR_SGN2"
.LASF43:
	.string	"options"
.LASF91:
	.string	"SPR_BSPI"
.LASF93:
	.string	"SPR_APBX"
.LASF1383:
	.string	"colormap"
.LASF1215:
	.string	"MT_MISC10"
.LASF1216:
	.string	"MT_MISC11"
.LASF1217:
	.string	"MT_MISC12"
.LASF1219:
	.string	"MT_MISC13"
.LASF1221:
	.string	"MT_MISC14"
.LASF1222:
	.string	"MT_MISC15"
.LASF1223:
	.string	"MT_MISC16"
.LASF1226:
	.string	"MT_MISC17"
.LASF1227:
	.string	"MT_MISC18"
.LASF1055:
	.string	"S_CLIP"
.LASF1317:
	.string	"radius"
.LASF1341:
	.string	"health"
.LASF1189:
	.string	"MT_BOSSTARGET"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"p_lights.c"
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
