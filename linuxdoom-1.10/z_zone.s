	.file	"z_zone.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "z_zone.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 49
rcsid:
	.string	"$Id: z_zone.c,v 1.4 1997/02/03 16:47:58 b1 Exp $"
	.globl	mainzone
	.bss
	.align 8
	.type	mainzone, @object
	.size	mainzone, 8
mainzone:
	.zero	8
	.text
	.globl	Z_ClearZone
	.type	Z_ClearZone, @function
Z_ClearZone:
.LFB0:
	.file 1 "z_zone.c"
	.loc 1 68 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# zone, zone
# z_zone.c:74: 	block = (memblock_t *)( (byte *)zone + sizeof(memzone_t) );
	.loc 1 74 8
	movq	-24(%rbp), %rax	# zone, tmp92
	addq	$56, %rax	#, tmp91
	movq	%rax, -8(%rbp)	# tmp91, block
# z_zone.c:73: 	zone->blocklist.prev =
	.loc 1 73 23
	movq	-24(%rbp), %rax	# zone, tmp93
	movq	-8(%rbp), %rdx	# block, tmp94
	movq	%rdx, 40(%rax)	# tmp94, zone_8(D)->blocklist.prev
# z_zone.c:73: 	zone->blocklist.prev =
	.loc 1 73 17
	movq	-24(%rbp), %rax	# zone, tmp95
	movq	40(%rax), %rdx	# zone_8(D)->blocklist.prev, _1
# z_zone.c:72:     zone->blocklist.next =
	.loc 1 72 26
	movq	-24(%rbp), %rax	# zone, tmp96
	movq	%rdx, 32(%rax)	# _1, zone_8(D)->blocklist.next
# z_zone.c:76:     zone->blocklist.user = (void *)zone;
	.loc 1 76 26
	movq	-24(%rbp), %rax	# zone, tmp97
	movq	-24(%rbp), %rdx	# zone, tmp98
	movq	%rdx, 16(%rax)	# tmp98, zone_8(D)->blocklist.user
# z_zone.c:77:     zone->blocklist.tag = PU_STATIC;
	.loc 1 77 25
	movq	-24(%rbp), %rax	# zone, tmp99
	movl	$1, 24(%rax)	#, zone_8(D)->blocklist.tag
# z_zone.c:78:     zone->rover = block;
	.loc 1 78 17
	movq	-24(%rbp), %rax	# zone, tmp100
	movq	-8(%rbp), %rdx	# block, tmp101
	movq	%rdx, 48(%rax)	# tmp101, zone_8(D)->rover
# z_zone.c:80:     block->prev = block->next = &zone->blocklist;
	.loc 1 80 33
	movq	-24(%rbp), %rax	# zone, tmp102
	leaq	8(%rax), %rdx	#, _2
# z_zone.c:80:     block->prev = block->next = &zone->blocklist;
	.loc 1 80 31
	movq	-8(%rbp), %rax	# block, tmp103
	movq	%rdx, 24(%rax)	# _2, block_9->next
# z_zone.c:80:     block->prev = block->next = &zone->blocklist;
	.loc 1 80 24
	movq	-8(%rbp), %rax	# block, tmp104
	movq	24(%rax), %rdx	# block_9->next, _3
# z_zone.c:80:     block->prev = block->next = &zone->blocklist;
	.loc 1 80 17
	movq	-8(%rbp), %rax	# block, tmp105
	movq	%rdx, 32(%rax)	# _3, block_9->prev
# z_zone.c:83:     block->user = NULL;	
	.loc 1 83 17
	movq	-8(%rbp), %rax	# block, tmp106
	movq	$0, 8(%rax)	#, block_9->user
# z_zone.c:85:     block->size = zone->size - sizeof(memzone_t);
	.loc 1 85 23
	movq	-24(%rbp), %rax	# zone, tmp107
	movl	(%rax), %eax	# zone_8(D)->size, _4
# z_zone.c:85:     block->size = zone->size - sizeof(memzone_t);
	.loc 1 85 30
	subl	$56, %eax	#, _6
	movl	%eax, %edx	# _6, _7
# z_zone.c:85:     block->size = zone->size - sizeof(memzone_t);
	.loc 1 85 17
	movq	-8(%rbp), %rax	# block, tmp108
	movl	%edx, (%rax)	# _7, block_9->size
# z_zone.c:86: }
	.loc 1 86 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	Z_ClearZone, .-Z_ClearZone
	.globl	Z_Init
	.type	Z_Init, @function
Z_Init:
.LFB1:
	.loc 1 94 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# z_zone.c:94: {
	.loc 1 94 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp110
	movq	%rax, -8(%rbp)	# tmp110, D.3756
	xorl	%eax, %eax	# tmp110
# z_zone.c:98:     mainzone = (memzone_t *)I_ZoneBase (&size);
	.loc 1 98 29
	leaq	-20(%rbp), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	I_ZoneBase@PLT	#
# z_zone.c:98:     mainzone = (memzone_t *)I_ZoneBase (&size);
	.loc 1 98 14 discriminator 1
	movq	%rax, mainzone(%rip)	# _1, mainzone
# z_zone.c:99:     mainzone->size = size;
	.loc 1 99 13
	movq	mainzone(%rip), %rax	# mainzone, mainzone.0_2
# z_zone.c:99:     mainzone->size = size;
	.loc 1 99 20
	movl	-20(%rbp), %edx	# size, size.1_3
	movl	%edx, (%rax)	# size.1_3, mainzone.0_2->size
# z_zone.c:104: 	block = (memblock_t *)( (byte *)mainzone + sizeof(memzone_t) );
	.loc 1 104 43
	movq	mainzone(%rip), %rax	# mainzone, mainzone.2_4
# z_zone.c:104: 	block = (memblock_t *)( (byte *)mainzone + sizeof(memzone_t) );
	.loc 1 104 8
	addq	$56, %rax	#, tmp102
	movq	%rax, -16(%rbp)	# tmp102, block
# z_zone.c:103: 	mainzone->blocklist.prev =
	.loc 1 103 10
	movq	mainzone(%rip), %rax	# mainzone, mainzone.3_5
# z_zone.c:103: 	mainzone->blocklist.prev =
	.loc 1 103 27
	movq	-16(%rbp), %rdx	# block, tmp103
	movq	%rdx, 40(%rax)	# tmp103, mainzone.3_5->blocklist.prev
# z_zone.c:102:     mainzone->blocklist.next =
	.loc 1 102 13
	movq	mainzone(%rip), %rdx	# mainzone, mainzone.4_6
# z_zone.c:103: 	mainzone->blocklist.prev =
	.loc 1 103 21
	movq	40(%rax), %rax	# mainzone.3_5->blocklist.prev, _7
# z_zone.c:102:     mainzone->blocklist.next =
	.loc 1 102 30
	movq	%rax, 32(%rdx)	# _7, mainzone.4_6->blocklist.next
# z_zone.c:106:     mainzone->blocklist.user = (void *)mainzone;
	.loc 1 106 13
	movq	mainzone(%rip), %rax	# mainzone, mainzone.5_8
# z_zone.c:106:     mainzone->blocklist.user = (void *)mainzone;
	.loc 1 106 30
	movq	mainzone(%rip), %rdx	# mainzone, mainzone.6_9
	movq	%rdx, 16(%rax)	# mainzone.6_9, mainzone.5_8->blocklist.user
# z_zone.c:107:     mainzone->blocklist.tag = PU_STATIC;
	.loc 1 107 13
	movq	mainzone(%rip), %rax	# mainzone, mainzone.7_10
# z_zone.c:107:     mainzone->blocklist.tag = PU_STATIC;
	.loc 1 107 29
	movl	$1, 24(%rax)	#, mainzone.7_10->blocklist.tag
# z_zone.c:108:     mainzone->rover = block;
	.loc 1 108 13
	movq	mainzone(%rip), %rax	# mainzone, mainzone.8_11
# z_zone.c:108:     mainzone->rover = block;
	.loc 1 108 21
	movq	-16(%rbp), %rdx	# block, tmp104
	movq	%rdx, 48(%rax)	# tmp104, mainzone.8_11->rover
# z_zone.c:110:     block->prev = block->next = &mainzone->blocklist;
	.loc 1 110 42
	movq	mainzone(%rip), %rax	# mainzone, mainzone.9_12
# z_zone.c:110:     block->prev = block->next = &mainzone->blocklist;
	.loc 1 110 33
	leaq	8(%rax), %rdx	#, _13
# z_zone.c:110:     block->prev = block->next = &mainzone->blocklist;
	.loc 1 110 31
	movq	-16(%rbp), %rax	# block, tmp105
	movq	%rdx, 24(%rax)	# _13, block_24->next
# z_zone.c:110:     block->prev = block->next = &mainzone->blocklist;
	.loc 1 110 24
	movq	-16(%rbp), %rax	# block, tmp106
	movq	24(%rax), %rdx	# block_24->next, _14
# z_zone.c:110:     block->prev = block->next = &mainzone->blocklist;
	.loc 1 110 17
	movq	-16(%rbp), %rax	# block, tmp107
	movq	%rdx, 32(%rax)	# _14, block_24->prev
# z_zone.c:113:     block->user = NULL;
	.loc 1 113 17
	movq	-16(%rbp), %rax	# block, tmp108
	movq	$0, 8(%rax)	#, block_24->user
# z_zone.c:115:     block->size = mainzone->size - sizeof(memzone_t);
	.loc 1 115 27
	movq	mainzone(%rip), %rax	# mainzone, mainzone.10_15
	movl	(%rax), %eax	# mainzone.10_15->size, _16
# z_zone.c:115:     block->size = mainzone->size - sizeof(memzone_t);
	.loc 1 115 34
	subl	$56, %eax	#, _18
	movl	%eax, %edx	# _18, _19
# z_zone.c:115:     block->size = mainzone->size - sizeof(memzone_t);
	.loc 1 115 17
	movq	-16(%rbp), %rax	# block, tmp109
	movl	%edx, (%rax)	# _19, block_24->size
# z_zone.c:116: }
	.loc 1 116 1
	nop	
	movq	-8(%rbp), %rax	# D.3756, tmp111
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp111
	je	.L3	#,
	call	__stack_chk_fail@PLT	#
.L3:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	Z_Init, .-Z_Init
	.section	.rodata
	.align 8
.LC0:
	.string	"Z_Free: freed a pointer without ZONEID"
	.text
	.globl	Z_Free
	.type	Z_Free, @function
Z_Free:
.LFB2:
	.loc 1 123 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# ptr, ptr
# z_zone.c:127:     block = (memblock_t *) ( (byte *)ptr - sizeof(memblock_t));
	.loc 1 127 11
	movq	-24(%rbp), %rax	# ptr, tmp106
	subq	$40, %rax	#, tmp105
	movq	%rax, -16(%rbp)	# tmp105, block
# z_zone.c:129:     if (block->id != ZONEID)
	.loc 1 129 14
	movq	-16(%rbp), %rax	# block, tmp107
	movl	20(%rax), %eax	# block_29->id, _1
# z_zone.c:129:     if (block->id != ZONEID)
	.loc 1 129 8
	cmpl	$1919505, %eax	#, _1
	je	.L5	#,
# z_zone.c:130: 	I_Error ("Z_Free: freed a pointer without ZONEID");
	.loc 1 130 2
	leaq	.LC0(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L5:
# z_zone.c:132:     if (block->user > (void **)0x100)
	.loc 1 132 14
	movq	-16(%rbp), %rax	# block, tmp109
	movq	8(%rax), %rax	# block_29->user, _2
# z_zone.c:132:     if (block->user > (void **)0x100)
	.loc 1 132 8
	cmpq	$256, %rax	#, _2
	jbe	.L6	#,
# z_zone.c:138: 	*block->user = 0;
	.loc 1 138 8
	movq	-16(%rbp), %rax	# block, tmp110
	movq	8(%rax), %rax	# block_29->user, _3
# z_zone.c:138: 	*block->user = 0;
	.loc 1 138 15
	movq	$0, (%rax)	#, *_3
.L6:
# z_zone.c:142:     block->user = NULL;	
	.loc 1 142 17
	movq	-16(%rbp), %rax	# block, tmp111
	movq	$0, 8(%rax)	#, block_29->user
# z_zone.c:143:     block->tag = 0;
	.loc 1 143 16
	movq	-16(%rbp), %rax	# block, tmp112
	movl	$0, 16(%rax)	#, block_29->tag
# z_zone.c:144:     block->id = 0;
	.loc 1 144 15
	movq	-16(%rbp), %rax	# block, tmp113
	movl	$0, 20(%rax)	#, block_29->id
# z_zone.c:146:     other = block->prev;
	.loc 1 146 11
	movq	-16(%rbp), %rax	# block, tmp114
	movq	32(%rax), %rax	# block_29->prev, tmp115
	movq	%rax, -8(%rbp)	# tmp115, other
# z_zone.c:148:     if (!other->user)
	.loc 1 148 15
	movq	-8(%rbp), %rax	# other, tmp116
	movq	8(%rax), %rax	# other_36->user, _4
# z_zone.c:148:     if (!other->user)
	.loc 1 148 8
	testq	%rax, %rax	# _4
	jne	.L7	#,
# z_zone.c:151: 	other->size += block->size;
	.loc 1 151 7
	movq	-8(%rbp), %rax	# other, tmp117
	movl	(%rax), %edx	# other_36->size, _5
# z_zone.c:151: 	other->size += block->size;
	.loc 1 151 22
	movq	-16(%rbp), %rax	# block, tmp118
	movl	(%rax), %eax	# block_29->size, _6
# z_zone.c:151: 	other->size += block->size;
	.loc 1 151 14
	addl	%eax, %edx	# _6, _7
	movq	-8(%rbp), %rax	# other, tmp119
	movl	%edx, (%rax)	# _7, other_36->size
# z_zone.c:152: 	other->next = block->next;
	.loc 1 152 21
	movq	-16(%rbp), %rax	# block, tmp120
	movq	24(%rax), %rdx	# block_29->next, _8
# z_zone.c:152: 	other->next = block->next;
	.loc 1 152 14
	movq	-8(%rbp), %rax	# other, tmp121
	movq	%rdx, 24(%rax)	# _8, other_36->next
# z_zone.c:153: 	other->next->prev = other;
	.loc 1 153 7
	movq	-8(%rbp), %rax	# other, tmp122
	movq	24(%rax), %rax	# other_36->next, _9
# z_zone.c:153: 	other->next->prev = other;
	.loc 1 153 20
	movq	-8(%rbp), %rdx	# other, tmp123
	movq	%rdx, 32(%rax)	# tmp123, _9->prev
# z_zone.c:155: 	if (block == mainzone->rover)
	.loc 1 155 23
	movq	mainzone(%rip), %rax	# mainzone, mainzone.11_10
	movq	48(%rax), %rax	# mainzone.11_10->rover, _11
# z_zone.c:155: 	if (block == mainzone->rover)
	.loc 1 155 5
	cmpq	%rax, -16(%rbp)	# _11, block
	jne	.L8	#,
# z_zone.c:156: 	    mainzone->rover = other;
	.loc 1 156 14
	movq	mainzone(%rip), %rax	# mainzone, mainzone.12_12
# z_zone.c:156: 	    mainzone->rover = other;
	.loc 1 156 22
	movq	-8(%rbp), %rdx	# other, tmp124
	movq	%rdx, 48(%rax)	# tmp124, mainzone.12_12->rover
.L8:
# z_zone.c:158: 	block = other;
	.loc 1 158 8
	movq	-8(%rbp), %rax	# other, tmp125
	movq	%rax, -16(%rbp)	# tmp125, block
.L7:
# z_zone.c:161:     other = block->next;
	.loc 1 161 11
	movq	-16(%rbp), %rax	# block, tmp126
	movq	24(%rax), %rax	# block_22->next, tmp127
	movq	%rax, -8(%rbp)	# tmp127, other
# z_zone.c:162:     if (!other->user)
	.loc 1 162 15
	movq	-8(%rbp), %rax	# other, tmp128
	movq	8(%rax), %rax	# other_42->user, _13
# z_zone.c:162:     if (!other->user)
	.loc 1 162 8
	testq	%rax, %rax	# _13
	jne	.L10	#,
# z_zone.c:165: 	block->size += other->size;
	.loc 1 165 7
	movq	-16(%rbp), %rax	# block, tmp129
	movl	(%rax), %edx	# block_22->size, _14
# z_zone.c:165: 	block->size += other->size;
	.loc 1 165 22
	movq	-8(%rbp), %rax	# other, tmp130
	movl	(%rax), %eax	# other_42->size, _15
# z_zone.c:165: 	block->size += other->size;
	.loc 1 165 14
	addl	%eax, %edx	# _15, _16
	movq	-16(%rbp), %rax	# block, tmp131
	movl	%edx, (%rax)	# _16, block_22->size
# z_zone.c:166: 	block->next = other->next;
	.loc 1 166 21
	movq	-8(%rbp), %rax	# other, tmp132
	movq	24(%rax), %rdx	# other_42->next, _17
# z_zone.c:166: 	block->next = other->next;
	.loc 1 166 14
	movq	-16(%rbp), %rax	# block, tmp133
	movq	%rdx, 24(%rax)	# _17, block_22->next
# z_zone.c:167: 	block->next->prev = block;
	.loc 1 167 7
	movq	-16(%rbp), %rax	# block, tmp134
	movq	24(%rax), %rax	# block_22->next, _18
# z_zone.c:167: 	block->next->prev = block;
	.loc 1 167 20
	movq	-16(%rbp), %rdx	# block, tmp135
	movq	%rdx, 32(%rax)	# tmp135, _18->prev
# z_zone.c:169: 	if (other == mainzone->rover)
	.loc 1 169 23
	movq	mainzone(%rip), %rax	# mainzone, mainzone.13_19
	movq	48(%rax), %rax	# mainzone.13_19->rover, _20
# z_zone.c:169: 	if (other == mainzone->rover)
	.loc 1 169 5
	cmpq	%rax, -8(%rbp)	# _20, other
	jne	.L10	#,
# z_zone.c:170: 	    mainzone->rover = block;
	.loc 1 170 14
	movq	mainzone(%rip), %rax	# mainzone, mainzone.14_21
# z_zone.c:170: 	    mainzone->rover = block;
	.loc 1 170 22
	movq	-16(%rbp), %rdx	# block, tmp136
	movq	%rdx, 48(%rax)	# tmp136, mainzone.14_21->rover
.L10:
# z_zone.c:172: }
	.loc 1 172 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	Z_Free, .-Z_Free
	.section	.rodata
	.align 8
.LC1:
	.string	"Z_Malloc: failed on allocation of %i bytes"
	.align 8
.LC2:
	.string	"Z_Malloc: an owner is required for purgable blocks"
	.text
	.globl	Z_Malloc
	.type	Z_Malloc, @function
Z_Malloc:
.LFB3:
	.loc 1 188 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -52(%rbp)	# size, size
	movl	%esi, -56(%rbp)	# tag, tag
	movq	%rdx, -64(%rbp)	# user, user
# z_zone.c:195:     size = (size + 3) & ~3;
	.loc 1 195 18
	movl	-52(%rbp), %eax	# size, tmp102
	addl	$3, %eax	#, _1
# z_zone.c:195:     size = (size + 3) & ~3;
	.loc 1 195 10
	andl	$-4, %eax	#, tmp103
	movl	%eax, -52(%rbp)	# tmp103, size
# z_zone.c:203:     size += sizeof(memblock_t);
	.loc 1 203 10
	movl	-52(%rbp), %eax	# size, size.15_2
	addl	$40, %eax	#, _3
	movl	%eax, -52(%rbp)	# _3, size
# z_zone.c:207:     base = mainzone->rover;
	.loc 1 207 20
	movq	mainzone(%rip), %rax	# mainzone, mainzone.16_4
# z_zone.c:207:     base = mainzone->rover;
	.loc 1 207 10
	movq	48(%rax), %rax	# mainzone.16_4->rover, tmp104
	movq	%rax, -24(%rbp)	# tmp104, base
# z_zone.c:209:     if (!base->prev->user)
	.loc 1 209 14
	movq	-24(%rbp), %rax	# base, tmp105
	movq	32(%rax), %rax	# base_34->prev, _5
# z_zone.c:209:     if (!base->prev->user)
	.loc 1 209 20
	movq	8(%rax), %rax	# _5->user, _6
# z_zone.c:209:     if (!base->prev->user)
	.loc 1 209 8
	testq	%rax, %rax	# _6
	jne	.L12	#,
# z_zone.c:210: 	base = base->prev;
	.loc 1 210 7
	movq	-24(%rbp), %rax	# base, tmp106
	movq	32(%rax), %rax	# base_34->prev, tmp107
	movq	%rax, -24(%rbp)	# tmp107, base
.L12:
# z_zone.c:212:     rover = base;
	.loc 1 212 11
	movq	-24(%rbp), %rax	# base, tmp108
	movq	%rax, -32(%rbp)	# tmp108, rover
# z_zone.c:213:     start = base->prev;
	.loc 1 213 11
	movq	-24(%rbp), %rax	# base, tmp109
	movq	32(%rax), %rax	# base_21->prev, tmp110
	movq	%rax, -16(%rbp)	# tmp110, start
.L13:
# z_zone.c:217: 	if (rover == start)
	.loc 1 217 5
	movq	-32(%rbp), %rax	# rover, tmp111
	cmpq	-16(%rbp), %rax	# start, tmp111
	jne	.L14	#,
# z_zone.c:220: 	    I_Error ("Z_Malloc: failed on allocation of %i bytes", size);
	.loc 1 220 6
	movl	-52(%rbp), %eax	# size, tmp112
	movl	%eax, %esi	# tmp112,
	leaq	.LC1(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L14:
# z_zone.c:223: 	if (rover->user)
	.loc 1 223 11
	movq	-32(%rbp), %rax	# rover, tmp114
	movq	8(%rax), %rax	# rover_19->user, _7
# z_zone.c:223: 	if (rover->user)
	.loc 1 223 5
	testq	%rax, %rax	# _7
	je	.L15	#,
# z_zone.c:225: 	    if (rover->tag < PU_PURGELEVEL)
	.loc 1 225 15
	movq	-32(%rbp), %rax	# rover, tmp115
	movl	16(%rax), %eax	# rover_19->tag, _8
# z_zone.c:225: 	    if (rover->tag < PU_PURGELEVEL)
	.loc 1 225 9
	cmpl	$99, %eax	#, _8
	jg	.L16	#,
# z_zone.c:229: 		base = rover = rover->next;
	.loc 1 229 16
	movq	-32(%rbp), %rax	# rover, tmp116
	movq	24(%rax), %rax	# rover_19->next, tmp117
	movq	%rax, -32(%rbp)	# tmp117, rover
# z_zone.c:229: 		base = rover = rover->next;
	.loc 1 229 8
	movq	-32(%rbp), %rax	# rover, tmp118
	movq	%rax, -24(%rbp)	# tmp118, base
	jmp	.L17	#
.L16:
# z_zone.c:236: 		base = base->prev;
	.loc 1 236 8
	movq	-24(%rbp), %rax	# base, tmp119
	movq	32(%rax), %rax	# base_22->prev, tmp120
	movq	%rax, -24(%rbp)	# tmp120, base
# z_zone.c:237: 		Z_Free ((byte *)rover+sizeof(memblock_t));
	.loc 1 237 3
	movq	-32(%rbp), %rax	# rover, tmp121
	addq	$40, %rax	#, _9
	movq	%rax, %rdi	# _9,
	call	Z_Free	#
# z_zone.c:238: 		base = base->next;
	.loc 1 238 8
	movq	-24(%rbp), %rax	# base, tmp122
	movq	24(%rax), %rax	# base_40->next, tmp123
	movq	%rax, -24(%rbp)	# tmp123, base
# z_zone.c:239: 		rover = base->next;
	.loc 1 239 9
	movq	-24(%rbp), %rax	# base, tmp124
	movq	24(%rax), %rax	# base_42->next, tmp125
	movq	%rax, -32(%rbp)	# tmp125, rover
	jmp	.L17	#
.L15:
# z_zone.c:243: 	    rover = rover->next;
	.loc 1 243 12
	movq	-32(%rbp), %rax	# rover, tmp126
	movq	24(%rax), %rax	# rover_19->next, tmp127
	movq	%rax, -32(%rbp)	# tmp127, rover
.L17:
# z_zone.c:244:     } while (base->user || base->size < size);
	.loc 1 244 18
	movq	-24(%rbp), %rax	# base, tmp128
	movq	8(%rax), %rax	# base_23->user, _10
# z_zone.c:244:     } while (base->user || base->size < size);
	.loc 1 244 25
	testq	%rax, %rax	# _10
	jne	.L13	#,
# z_zone.c:244:     } while (base->user || base->size < size);
	.loc 1 244 32 discriminator 1
	movq	-24(%rbp), %rax	# base, tmp129
	movl	(%rax), %eax	# base_23->size, _11
# z_zone.c:244:     } while (base->user || base->size < size);
	.loc 1 244 25 discriminator 1
	cmpl	%eax, -52(%rbp)	# _11, size
	jg	.L13	#,
# z_zone.c:248:     extra = base->size - size;
	.loc 1 248 17
	movq	-24(%rbp), %rax	# base, tmp130
	movl	(%rax), %eax	# base_23->size, _12
# z_zone.c:248:     extra = base->size - size;
	.loc 1 248 11
	subl	-52(%rbp), %eax	# size, tmp132
	movl	%eax, -36(%rbp)	# tmp132, extra
# z_zone.c:250:     if (extra >  MINFRAGMENT)
	.loc 1 250 8
	cmpl	$64, -36(%rbp)	#, extra
	jle	.L19	#,
# z_zone.c:253: 	newblock = (memblock_t *) ((byte *)base + size );
	.loc 1 253 13
	movl	-52(%rbp), %eax	# size, tmp133
	movslq	%eax, %rdx	# tmp133, _13
# z_zone.c:253: 	newblock = (memblock_t *) ((byte *)base + size );
	.loc 1 253 11
	movq	-24(%rbp), %rax	# base, tmp137
	addq	%rdx, %rax	# _13, tmp136
	movq	%rax, -8(%rbp)	# tmp136, newblock
# z_zone.c:254: 	newblock->size = extra;
	.loc 1 254 17
	movq	-8(%rbp), %rax	# newblock, tmp138
	movl	-36(%rbp), %edx	# extra, tmp139
	movl	%edx, (%rax)	# tmp139, newblock_47->size
# z_zone.c:257: 	newblock->user = NULL;	
	.loc 1 257 17
	movq	-8(%rbp), %rax	# newblock, tmp140
	movq	$0, 8(%rax)	#, newblock_47->user
# z_zone.c:258: 	newblock->tag = 0;
	.loc 1 258 16
	movq	-8(%rbp), %rax	# newblock, tmp141
	movl	$0, 16(%rax)	#, newblock_47->tag
# z_zone.c:259: 	newblock->prev = base;
	.loc 1 259 17
	movq	-8(%rbp), %rax	# newblock, tmp142
	movq	-24(%rbp), %rdx	# base, tmp143
	movq	%rdx, 32(%rax)	# tmp143, newblock_47->prev
# z_zone.c:260: 	newblock->next = base->next;
	.loc 1 260 23
	movq	-24(%rbp), %rax	# base, tmp144
	movq	24(%rax), %rdx	# base_23->next, _14
# z_zone.c:260: 	newblock->next = base->next;
	.loc 1 260 17
	movq	-8(%rbp), %rax	# newblock, tmp145
	movq	%rdx, 24(%rax)	# _14, newblock_47->next
# z_zone.c:261: 	newblock->next->prev = newblock;
	.loc 1 261 10
	movq	-8(%rbp), %rax	# newblock, tmp146
	movq	24(%rax), %rax	# newblock_47->next, _15
# z_zone.c:261: 	newblock->next->prev = newblock;
	.loc 1 261 23
	movq	-8(%rbp), %rdx	# newblock, tmp147
	movq	%rdx, 32(%rax)	# tmp147, _15->prev
# z_zone.c:263: 	base->next = newblock;
	.loc 1 263 13
	movq	-24(%rbp), %rax	# base, tmp148
	movq	-8(%rbp), %rdx	# newblock, tmp149
	movq	%rdx, 24(%rax)	# tmp149, base_23->next
# z_zone.c:264: 	base->size = size;
	.loc 1 264 13
	movq	-24(%rbp), %rax	# base, tmp150
	movl	-52(%rbp), %edx	# size, tmp151
	movl	%edx, (%rax)	# tmp151, base_23->size
.L19:
# z_zone.c:267:     if (user)
	.loc 1 267 8
	cmpq	$0, -64(%rbp)	#, user
	je	.L20	#,
# z_zone.c:270: 	base->user = user;			
	.loc 1 270 13
	movq	-24(%rbp), %rax	# base, tmp152
	movq	-64(%rbp), %rdx	# user, tmp153
	movq	%rdx, 8(%rax)	# tmp153, base_23->user
# z_zone.c:271: 	*(void **)user = (void *) ((byte *)base + sizeof(memblock_t));
	.loc 1 271 19
	movq	-24(%rbp), %rax	# base, tmp154
	leaq	40(%rax), %rdx	#, _16
# z_zone.c:271: 	*(void **)user = (void *) ((byte *)base + sizeof(memblock_t));
	.loc 1 271 17
	movq	-64(%rbp), %rax	# user, tmp155
	movq	%rdx, (%rax)	# _16, MEM[(void * *)user_56(D)]
	jmp	.L21	#
.L20:
# z_zone.c:275: 	if (tag >= PU_PURGELEVEL)
	.loc 1 275 5
	cmpl	$99, -56(%rbp)	#, tag
	jle	.L22	#,
# z_zone.c:276: 	    I_Error ("Z_Malloc: an owner is required for purgable blocks");
	.loc 1 276 6
	leaq	.LC2(%rip), %rax	#, tmp156
	movq	%rax, %rdi	# tmp156,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L22:
# z_zone.c:279: 	base->user = (void *)2;		
	.loc 1 279 13
	movq	-24(%rbp), %rax	# base, tmp157
	movq	$2, 8(%rax)	#, base_23->user
.L21:
# z_zone.c:281:     base->tag = tag;
	.loc 1 281 15
	movq	-24(%rbp), %rax	# base, tmp158
	movl	-56(%rbp), %edx	# tag, tmp159
	movl	%edx, 16(%rax)	# tmp159, base_23->tag
# z_zone.c:284:     mainzone->rover = base->next;	
	.loc 1 284 13
	movq	mainzone(%rip), %rax	# mainzone, mainzone.17_17
# z_zone.c:284:     mainzone->rover = base->next;	
	.loc 1 284 27
	movq	-24(%rbp), %rdx	# base, tmp160
	movq	24(%rdx), %rdx	# base_23->next, _18
# z_zone.c:284:     mainzone->rover = base->next;	
	.loc 1 284 21
	movq	%rdx, 48(%rax)	# _18, mainzone.17_17->rover
# z_zone.c:286:     base->id = ZONEID;
	.loc 1 286 14
	movq	-24(%rbp), %rax	# base, tmp161
	movl	$1919505, 20(%rax)	#, base_23->id
# z_zone.c:288:     return (void *) ((byte *)base + sizeof(memblock_t));
	.loc 1 288 12
	movq	-24(%rbp), %rax	# base, tmp162
	addq	$40, %rax	#, _65
# z_zone.c:289: }
	.loc 1 289 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3:
	.size	Z_Malloc, .-Z_Malloc
	.globl	Z_FreeTags
	.type	Z_FreeTags, @function
Z_FreeTags:
.LFB4:
	.loc 1 300 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# lowtag, lowtag
	movl	%esi, -24(%rbp)	# hightag, hightag
# z_zone.c:304:     for (block = mainzone->blocklist.next ;
	.loc 1 304 26
	movq	mainzone(%rip), %rax	# mainzone, mainzone.18_1
# z_zone.c:304:     for (block = mainzone->blocklist.next ;
	.loc 1 304 16
	movq	32(%rax), %rax	# mainzone.18_1->blocklist.next, tmp89
	movq	%rax, -16(%rbp)	# tmp89, block
# z_zone.c:304:     for (block = mainzone->blocklist.next ;
	.loc 1 304 5
	jmp	.L25	#
.L28:
# z_zone.c:309: 	next = block->next;
	.loc 1 309 7
	movq	-16(%rbp), %rax	# block, tmp90
	movq	24(%rax), %rax	# block_8->next, tmp91
	movq	%rax, -8(%rbp)	# tmp91, next
# z_zone.c:312: 	if (!block->user)
	.loc 1 312 12
	movq	-16(%rbp), %rax	# block, tmp92
	movq	8(%rax), %rax	# block_8->user, _2
# z_zone.c:312: 	if (!block->user)
	.loc 1 312 5
	testq	%rax, %rax	# _2
	je	.L29	#,
# z_zone.c:315: 	if (block->tag >= lowtag && block->tag <= hightag)
	.loc 1 315 11
	movq	-16(%rbp), %rax	# block, tmp93
	movl	16(%rax), %eax	# block_8->tag, _3
# z_zone.c:315: 	if (block->tag >= lowtag && block->tag <= hightag)
	.loc 1 315 5
	cmpl	%eax, -20(%rbp)	# _3, lowtag
	jg	.L27	#,
# z_zone.c:315: 	if (block->tag >= lowtag && block->tag <= hightag)
	.loc 1 315 35 discriminator 1
	movq	-16(%rbp), %rax	# block, tmp94
	movl	16(%rax), %eax	# block_8->tag, _4
# z_zone.c:315: 	if (block->tag >= lowtag && block->tag <= hightag)
	.loc 1 315 27 discriminator 1
	cmpl	%eax, -24(%rbp)	# _4, hightag
	jl	.L27	#,
# z_zone.c:316: 	    Z_Free ( (byte *)block+sizeof(memblock_t));
	.loc 1 316 6
	movq	-16(%rbp), %rax	# block, tmp95
	addq	$40, %rax	#, _5
	movq	%rax, %rdi	# _5,
	call	Z_Free	#
	jmp	.L27	#
.L29:
# z_zone.c:313: 	    continue;
	.loc 1 313 6
	nop	
.L27:
# z_zone.c:306: 	 block = next)
	.loc 1 306 9
	movq	-8(%rbp), %rax	# next, tmp96
	movq	%rax, -16(%rbp)	# tmp96, block
.L25:
# z_zone.c:305: 	 block != &mainzone->blocklist ;
	.loc 1 305 21
	movq	mainzone(%rip), %rax	# mainzone, mainzone.19_6
# z_zone.c:305: 	 block != &mainzone->blocklist ;
	.loc 1 305 12
	addq	$8, %rax	#, _7
# z_zone.c:305: 	 block != &mainzone->blocklist ;
	.loc 1 305 9
	cmpq	%rax, -16(%rbp)	# _7, block
	jne	.L28	#,
# z_zone.c:318: }
	.loc 1 318 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4:
	.size	Z_FreeTags, .-Z_FreeTags
	.section	.rodata
.LC3:
	.string	"zone size: %i  location: %p\n"
.LC4:
	.string	"tag range: %i to %i\n"
	.align 8
.LC5:
	.string	"block:%p    size:%7i    user:%p    tag:%3i\n"
	.align 8
.LC6:
	.string	"ERROR: block size does not touch the next block"
	.align 8
.LC7:
	.string	"ERROR: next block doesn't have proper back link"
	.align 8
.LC8:
	.string	"ERROR: two consecutive free blocks"
	.text
	.globl	Z_DumpHeap
	.type	Z_DumpHeap, @function
Z_DumpHeap:
.LFB5:
	.loc 1 330 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# lowtag, lowtag
	movl	%esi, -24(%rbp)	# hightag, hightag
# z_zone.c:333:     printf ("zone size: %i  location: %p\n",
	.loc 1 333 5
	movq	mainzone(%rip), %rdx	# mainzone, mainzone.20_1
# z_zone.c:334: 	    mainzone->size,mainzone);
	.loc 1 334 14
	movq	mainzone(%rip), %rax	# mainzone, mainzone.21_2
# z_zone.c:333:     printf ("zone size: %i  location: %p\n",
	.loc 1 333 5
	movl	(%rax), %eax	# mainzone.21_2->size, _3
	movl	%eax, %esi	# _3,
	leaq	.LC3(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	movl	$0, %eax	#,
	call	printf@PLT	#
# z_zone.c:336:     printf ("tag range: %i to %i\n",
	.loc 1 336 5
	movl	-24(%rbp), %edx	# hightag, tmp104
	movl	-20(%rbp), %eax	# lowtag, tmp105
	movl	%eax, %esi	# tmp105,
	leaq	.LC4(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	movl	$0, %eax	#,
	call	printf@PLT	#
# z_zone.c:339:     for (block = mainzone->blocklist.next ; ; block = block->next)
	.loc 1 339 26
	movq	mainzone(%rip), %rax	# mainzone, mainzone.22_4
# z_zone.c:339:     for (block = mainzone->blocklist.next ; ; block = block->next)
	.loc 1 339 16
	movq	32(%rax), %rax	# mainzone.22_4->blocklist.next, tmp107
	movq	%rax, -8(%rbp)	# tmp107, block
.L37:
# z_zone.c:341: 	if (block->tag >= lowtag && block->tag <= hightag)
	.loc 1 341 11
	movq	-8(%rbp), %rax	# block, tmp108
	movl	16(%rax), %eax	# block_22->tag, _5
# z_zone.c:341: 	if (block->tag >= lowtag && block->tag <= hightag)
	.loc 1 341 5
	cmpl	%eax, -20(%rbp)	# _5, lowtag
	jg	.L31	#,
# z_zone.c:341: 	if (block->tag >= lowtag && block->tag <= hightag)
	.loc 1 341 35 discriminator 1
	movq	-8(%rbp), %rax	# block, tmp109
	movl	16(%rax), %eax	# block_22->tag, _6
# z_zone.c:341: 	if (block->tag >= lowtag && block->tag <= hightag)
	.loc 1 341 27 discriminator 1
	cmpl	%eax, -24(%rbp)	# _6, hightag
	jl	.L31	#,
# z_zone.c:342: 	    printf ("block:%p    size:%7i    user:%p    tag:%3i\n",
	.loc 1 342 6
	movq	-8(%rbp), %rax	# block, tmp110
	movl	16(%rax), %esi	# block_22->tag, _7
	movq	-8(%rbp), %rax	# block, tmp111
	movq	8(%rax), %rcx	# block_22->user, _8
	movq	-8(%rbp), %rax	# block, tmp112
	movl	(%rax), %edx	# block_22->size, _9
	movq	-8(%rbp), %rax	# block, tmp113
	movl	%esi, %r8d	# _7,
	movq	%rax, %rsi	# tmp113,
	leaq	.LC5(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	movl	$0, %eax	#,
	call	printf@PLT	#
.L31:
# z_zone.c:345: 	if (block->next == &mainzone->blocklist)
	.loc 1 345 11
	movq	-8(%rbp), %rax	# block, tmp115
	movq	24(%rax), %rdx	# block_22->next, _10
# z_zone.c:345: 	if (block->next == &mainzone->blocklist)
	.loc 1 345 30
	movq	mainzone(%rip), %rax	# mainzone, mainzone.23_11
# z_zone.c:345: 	if (block->next == &mainzone->blocklist)
	.loc 1 345 21
	addq	$8, %rax	#, _12
# z_zone.c:345: 	if (block->next == &mainzone->blocklist)
	.loc 1 345 5
	cmpq	%rax, %rdx	# _12, _10
	je	.L39	#,
# z_zone.c:351: 	if ( (byte *)block + block->size != (byte *)block->next)
	.loc 1 351 28
	movq	-8(%rbp), %rax	# block, tmp116
	movl	(%rax), %eax	# block_22->size, _13
	movslq	%eax, %rdx	# _13, _14
# z_zone.c:351: 	if ( (byte *)block + block->size != (byte *)block->next)
	.loc 1 351 21
	movq	-8(%rbp), %rax	# block, tmp117
	addq	%rax, %rdx	# tmp117, _15
# z_zone.c:351: 	if ( (byte *)block + block->size != (byte *)block->next)
	.loc 1 351 51
	movq	-8(%rbp), %rax	# block, tmp118
	movq	24(%rax), %rax	# block_22->next, _16
# z_zone.c:351: 	if ( (byte *)block + block->size != (byte *)block->next)
	.loc 1 351 5
	cmpq	%rax, %rdx	# _16, _15
	je	.L34	#,
# z_zone.c:352: 	    printf ("ERROR: block size does not touch the next block\n");
	.loc 1 352 6
	leaq	.LC6(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	puts@PLT	#
.L34:
# z_zone.c:354: 	if ( block->next->prev != block)
	.loc 1 354 12
	movq	-8(%rbp), %rax	# block, tmp120
	movq	24(%rax), %rax	# block_22->next, _17
# z_zone.c:354: 	if ( block->next->prev != block)
	.loc 1 354 18
	movq	32(%rax), %rax	# _17->prev, _18
# z_zone.c:354: 	if ( block->next->prev != block)
	.loc 1 354 5
	cmpq	%rax, -8(%rbp)	# _18, block
	je	.L35	#,
# z_zone.c:355: 	    printf ("ERROR: next block doesn't have proper back link\n");
	.loc 1 355 6
	leaq	.LC7(%rip), %rax	#, tmp121
	movq	%rax, %rdi	# tmp121,
	call	puts@PLT	#
.L35:
# z_zone.c:357: 	if (!block->user && !block->next->user)
	.loc 1 357 12
	movq	-8(%rbp), %rax	# block, tmp122
	movq	8(%rax), %rax	# block_22->user, _19
# z_zone.c:357: 	if (!block->user && !block->next->user)
	.loc 1 357 5
	testq	%rax, %rax	# _19
	jne	.L36	#,
# z_zone.c:357: 	if (!block->user && !block->next->user)
	.loc 1 357 28 discriminator 1
	movq	-8(%rbp), %rax	# block, tmp123
	movq	24(%rax), %rax	# block_22->next, _20
# z_zone.c:357: 	if (!block->user && !block->next->user)
	.loc 1 357 34 discriminator 1
	movq	8(%rax), %rax	# _20->user, _21
# z_zone.c:357: 	if (!block->user && !block->next->user)
	.loc 1 357 19 discriminator 1
	testq	%rax, %rax	# _21
	jne	.L36	#,
# z_zone.c:358: 	    printf ("ERROR: two consecutive free blocks\n");
	.loc 1 358 6
	leaq	.LC8(%rip), %rax	#, tmp124
	movq	%rax, %rdi	# tmp124,
	call	puts@PLT	#
.L36:
# z_zone.c:339:     for (block = mainzone->blocklist.next ; ; block = block->next)
	.loc 1 339 53
	movq	-8(%rbp), %rax	# block, tmp125
	movq	24(%rax), %rax	# block_22->next, tmp126
	movq	%rax, -8(%rbp)	# tmp126, block
# z_zone.c:341: 	if (block->tag >= lowtag && block->tag <= hightag)
	.loc 1 341 5
	jmp	.L37	#
.L39:
# z_zone.c:348: 	    break;
	.loc 1 348 6
	nop	
# z_zone.c:360: }
	.loc 1 360 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5:
	.size	Z_DumpHeap, .-Z_DumpHeap
	.section	.rodata
	.align 8
.LC9:
	.string	"ERROR: block size does not touch the next block\n"
	.align 8
.LC10:
	.string	"ERROR: next block doesn't have proper back link\n"
	.align 8
.LC11:
	.string	"ERROR: two consecutive free blocks\n"
	.text
	.globl	Z_FileDumpHeap
	.type	Z_FileDumpHeap, @function
Z_FileDumpHeap:
.LFB6:
	.loc 1 367 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
# z_zone.c:370:     fprintf (f,"zone size: %i  location: %p\n",mainzone->size,mainzone);
	.loc 1 370 5
	movq	mainzone(%rip), %rcx	# mainzone, mainzone.24_1
# z_zone.c:370:     fprintf (f,"zone size: %i  location: %p\n",mainzone->size,mainzone);
	.loc 1 370 56
	movq	mainzone(%rip), %rax	# mainzone, mainzone.25_2
# z_zone.c:370:     fprintf (f,"zone size: %i  location: %p\n",mainzone->size,mainzone);
	.loc 1 370 5
	movl	(%rax), %edx	# mainzone.25_2->size, _3
	movq	-24(%rbp), %rax	# f, tmp101
	leaq	.LC3(%rip), %rsi	#, tmp102
	movq	%rax, %rdi	# tmp101,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
# z_zone.c:372:     for (block = mainzone->blocklist.next ; ; block = block->next)
	.loc 1 372 26
	movq	mainzone(%rip), %rax	# mainzone, mainzone.26_4
# z_zone.c:372:     for (block = mainzone->blocklist.next ; ; block = block->next)
	.loc 1 372 16
	movq	32(%rax), %rax	# mainzone.26_4->blocklist.next, tmp103
	movq	%rax, -8(%rbp)	# tmp103, block
.L46:
# z_zone.c:374: 	fprintf (f,"block:%p    size:%7i    user:%p    tag:%3i\n",
	.loc 1 374 2
	movq	-8(%rbp), %rax	# block, tmp104
	movl	16(%rax), %edi	# block_20->tag, _5
	movq	-8(%rbp), %rax	# block, tmp105
	movq	8(%rax), %rsi	# block_20->user, _6
	movq	-8(%rbp), %rax	# block, tmp106
	movl	(%rax), %ecx	# block_20->size, _7
	movq	-8(%rbp), %rdx	# block, tmp107
	movq	-24(%rbp), %rax	# f, tmp108
	movl	%edi, %r9d	# _5,
	movq	%rsi, %r8	# _6,
	leaq	.LC5(%rip), %rsi	#, tmp109
	movq	%rax, %rdi	# tmp108,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
# z_zone.c:377: 	if (block->next == &mainzone->blocklist)
	.loc 1 377 11
	movq	-8(%rbp), %rax	# block, tmp110
	movq	24(%rax), %rdx	# block_20->next, _8
# z_zone.c:377: 	if (block->next == &mainzone->blocklist)
	.loc 1 377 30
	movq	mainzone(%rip), %rax	# mainzone, mainzone.27_9
# z_zone.c:377: 	if (block->next == &mainzone->blocklist)
	.loc 1 377 21
	addq	$8, %rax	#, _10
# z_zone.c:377: 	if (block->next == &mainzone->blocklist)
	.loc 1 377 5
	cmpq	%rax, %rdx	# _10, _8
	je	.L48	#,
# z_zone.c:383: 	if ( (byte *)block + block->size != (byte *)block->next)
	.loc 1 383 28
	movq	-8(%rbp), %rax	# block, tmp111
	movl	(%rax), %eax	# block_20->size, _11
	movslq	%eax, %rdx	# _11, _12
# z_zone.c:383: 	if ( (byte *)block + block->size != (byte *)block->next)
	.loc 1 383 21
	movq	-8(%rbp), %rax	# block, tmp112
	addq	%rax, %rdx	# tmp112, _13
# z_zone.c:383: 	if ( (byte *)block + block->size != (byte *)block->next)
	.loc 1 383 51
	movq	-8(%rbp), %rax	# block, tmp113
	movq	24(%rax), %rax	# block_20->next, _14
# z_zone.c:383: 	if ( (byte *)block + block->size != (byte *)block->next)
	.loc 1 383 5
	cmpq	%rax, %rdx	# _14, _13
	je	.L43	#,
# z_zone.c:384: 	    fprintf (f,"ERROR: block size does not touch the next block\n");
	.loc 1 384 6
	movq	-24(%rbp), %rax	# f, tmp114
	movq	%rax, %rcx	# tmp114,
	movl	$48, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC9(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	fwrite@PLT	#
.L43:
# z_zone.c:386: 	if ( block->next->prev != block)
	.loc 1 386 12
	movq	-8(%rbp), %rax	# block, tmp116
	movq	24(%rax), %rax	# block_20->next, _15
# z_zone.c:386: 	if ( block->next->prev != block)
	.loc 1 386 18
	movq	32(%rax), %rax	# _15->prev, _16
# z_zone.c:386: 	if ( block->next->prev != block)
	.loc 1 386 5
	cmpq	%rax, -8(%rbp)	# _16, block
	je	.L44	#,
# z_zone.c:387: 	    fprintf (f,"ERROR: next block doesn't have proper back link\n");
	.loc 1 387 6
	movq	-24(%rbp), %rax	# f, tmp117
	movq	%rax, %rcx	# tmp117,
	movl	$48, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC10(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	fwrite@PLT	#
.L44:
# z_zone.c:389: 	if (!block->user && !block->next->user)
	.loc 1 389 12
	movq	-8(%rbp), %rax	# block, tmp119
	movq	8(%rax), %rax	# block_20->user, _17
# z_zone.c:389: 	if (!block->user && !block->next->user)
	.loc 1 389 5
	testq	%rax, %rax	# _17
	jne	.L45	#,
# z_zone.c:389: 	if (!block->user && !block->next->user)
	.loc 1 389 28 discriminator 1
	movq	-8(%rbp), %rax	# block, tmp120
	movq	24(%rax), %rax	# block_20->next, _18
# z_zone.c:389: 	if (!block->user && !block->next->user)
	.loc 1 389 34 discriminator 1
	movq	8(%rax), %rax	# _18->user, _19
# z_zone.c:389: 	if (!block->user && !block->next->user)
	.loc 1 389 19 discriminator 1
	testq	%rax, %rax	# _19
	jne	.L45	#,
# z_zone.c:390: 	    fprintf (f,"ERROR: two consecutive free blocks\n");
	.loc 1 390 6
	movq	-24(%rbp), %rax	# f, tmp121
	movq	%rax, %rcx	# tmp121,
	movl	$35, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC11(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	call	fwrite@PLT	#
.L45:
# z_zone.c:372:     for (block = mainzone->blocklist.next ; ; block = block->next)
	.loc 1 372 53
	movq	-8(%rbp), %rax	# block, tmp123
	movq	24(%rax), %rax	# block_20->next, tmp124
	movq	%rax, -8(%rbp)	# tmp124, block
# z_zone.c:374: 	fprintf (f,"block:%p    size:%7i    user:%p    tag:%3i\n",
	.loc 1 374 2
	jmp	.L46	#
.L48:
# z_zone.c:380: 	    break;
	.loc 1 380 6
	nop	
# z_zone.c:392: }
	.loc 1 392 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	Z_FileDumpHeap, .-Z_FileDumpHeap
	.section	.rodata
	.align 8
.LC12:
	.string	"Z_CheckHeap: block size does not touch the next block\n"
	.align 8
.LC13:
	.string	"Z_CheckHeap: next block doesn't have proper back link\n"
	.align 8
.LC14:
	.string	"Z_CheckHeap: two consecutive free blocks\n"
	.text
	.globl	Z_CheckHeap
	.type	Z_CheckHeap, @function
Z_CheckHeap:
.LFB7:
	.loc 1 400 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# z_zone.c:403:     for (block = mainzone->blocklist.next ; ; block = block->next)
	.loc 1 403 26
	movq	mainzone(%rip), %rax	# mainzone, mainzone.28_1
# z_zone.c:403:     for (block = mainzone->blocklist.next ; ; block = block->next)
	.loc 1 403 16
	movq	32(%rax), %rax	# mainzone.28_1->blocklist.next, tmp95
	movq	%rax, -8(%rbp)	# tmp95, block
.L55:
# z_zone.c:405: 	if (block->next == &mainzone->blocklist)
	.loc 1 405 11
	movq	-8(%rbp), %rax	# block, tmp96
	movq	24(%rax), %rdx	# block_14->next, _2
# z_zone.c:405: 	if (block->next == &mainzone->blocklist)
	.loc 1 405 30
	movq	mainzone(%rip), %rax	# mainzone, mainzone.29_3
# z_zone.c:405: 	if (block->next == &mainzone->blocklist)
	.loc 1 405 21
	addq	$8, %rax	#, _4
# z_zone.c:405: 	if (block->next == &mainzone->blocklist)
	.loc 1 405 5
	cmpq	%rax, %rdx	# _4, _2
	je	.L57	#,
# z_zone.c:411: 	if ( (byte *)block + block->size != (byte *)block->next)
	.loc 1 411 28
	movq	-8(%rbp), %rax	# block, tmp97
	movl	(%rax), %eax	# block_14->size, _5
	movslq	%eax, %rdx	# _5, _6
# z_zone.c:411: 	if ( (byte *)block + block->size != (byte *)block->next)
	.loc 1 411 21
	movq	-8(%rbp), %rax	# block, tmp98
	addq	%rax, %rdx	# tmp98, _7
# z_zone.c:411: 	if ( (byte *)block + block->size != (byte *)block->next)
	.loc 1 411 51
	movq	-8(%rbp), %rax	# block, tmp99
	movq	24(%rax), %rax	# block_14->next, _8
# z_zone.c:411: 	if ( (byte *)block + block->size != (byte *)block->next)
	.loc 1 411 5
	cmpq	%rax, %rdx	# _8, _7
	je	.L52	#,
# z_zone.c:412: 	    I_Error ("Z_CheckHeap: block size does not touch the next block\n");
	.loc 1 412 6
	leaq	.LC12(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L52:
# z_zone.c:414: 	if ( block->next->prev != block)
	.loc 1 414 12
	movq	-8(%rbp), %rax	# block, tmp101
	movq	24(%rax), %rax	# block_14->next, _9
# z_zone.c:414: 	if ( block->next->prev != block)
	.loc 1 414 18
	movq	32(%rax), %rax	# _9->prev, _10
# z_zone.c:414: 	if ( block->next->prev != block)
	.loc 1 414 5
	cmpq	%rax, -8(%rbp)	# _10, block
	je	.L53	#,
# z_zone.c:415: 	    I_Error ("Z_CheckHeap: next block doesn't have proper back link\n");
	.loc 1 415 6
	leaq	.LC13(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L53:
# z_zone.c:417: 	if (!block->user && !block->next->user)
	.loc 1 417 12
	movq	-8(%rbp), %rax	# block, tmp103
	movq	8(%rax), %rax	# block_14->user, _11
# z_zone.c:417: 	if (!block->user && !block->next->user)
	.loc 1 417 5
	testq	%rax, %rax	# _11
	jne	.L54	#,
# z_zone.c:417: 	if (!block->user && !block->next->user)
	.loc 1 417 28 discriminator 1
	movq	-8(%rbp), %rax	# block, tmp104
	movq	24(%rax), %rax	# block_14->next, _12
# z_zone.c:417: 	if (!block->user && !block->next->user)
	.loc 1 417 34 discriminator 1
	movq	8(%rax), %rax	# _12->user, _13
# z_zone.c:417: 	if (!block->user && !block->next->user)
	.loc 1 417 19 discriminator 1
	testq	%rax, %rax	# _13
	jne	.L54	#,
# z_zone.c:418: 	    I_Error ("Z_CheckHeap: two consecutive free blocks\n");
	.loc 1 418 6
	leaq	.LC14(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L54:
# z_zone.c:403:     for (block = mainzone->blocklist.next ; ; block = block->next)
	.loc 1 403 53
	movq	-8(%rbp), %rax	# block, tmp106
	movq	24(%rax), %rax	# block_14->next, tmp107
	movq	%rax, -8(%rbp)	# tmp107, block
# z_zone.c:405: 	if (block->next == &mainzone->blocklist)
	.loc 1 405 5
	jmp	.L55	#
.L57:
# z_zone.c:408: 	    break;
	.loc 1 408 6
	nop	
# z_zone.c:420: }
	.loc 1 420 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	Z_CheckHeap, .-Z_CheckHeap
	.section	.rodata
	.align 8
.LC15:
	.string	"Z_ChangeTag: freed a pointer without ZONEID"
	.align 8
.LC16:
	.string	"Z_ChangeTag: an owner is required for purgable blocks"
	.text
	.globl	Z_ChangeTag2
	.type	Z_ChangeTag2, @function
Z_ChangeTag2:
.LFB8:
	.loc 1 432 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# ptr, ptr
	movl	%esi, -28(%rbp)	# tag, tag
# z_zone.c:435:     block = (memblock_t *) ( (byte *)ptr - sizeof(memblock_t));
	.loc 1 435 11
	movq	-24(%rbp), %rax	# ptr, tmp89
	subq	$40, %rax	#, tmp88
	movq	%rax, -8(%rbp)	# tmp88, block
# z_zone.c:437:     if (block->id != ZONEID)
	.loc 1 437 14
	movq	-8(%rbp), %rax	# block, tmp90
	movl	20(%rax), %eax	# block_8->id, _1
# z_zone.c:437:     if (block->id != ZONEID)
	.loc 1 437 8
	cmpl	$1919505, %eax	#, _1
	je	.L59	#,
# z_zone.c:438: 	I_Error ("Z_ChangeTag: freed a pointer without ZONEID");
	.loc 1 438 2
	leaq	.LC15(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L59:
# z_zone.c:440:     if (tag >= PU_PURGELEVEL && (unsigned)block->user < 0x100)
	.loc 1 440 8
	cmpl	$99, -28(%rbp)	#, tag
	jle	.L60	#,
# z_zone.c:440:     if (tag >= PU_PURGELEVEL && (unsigned)block->user < 0x100)
	.loc 1 440 48 discriminator 1
	movq	-8(%rbp), %rax	# block, tmp92
	movq	8(%rax), %rax	# block_8->user, _2
# z_zone.c:440:     if (tag >= PU_PURGELEVEL && (unsigned)block->user < 0x100)
	.loc 1 440 30 discriminator 1
	cmpl	$255, %eax	#, _4
	ja	.L60	#,
# z_zone.c:441: 	I_Error ("Z_ChangeTag: an owner is required for purgable blocks");
	.loc 1 441 2
	leaq	.LC16(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L60:
# z_zone.c:443:     block->tag = tag;
	.loc 1 443 16
	movq	-8(%rbp), %rax	# block, tmp94
	movl	-28(%rbp), %edx	# tag, tmp95
	movl	%edx, 16(%rax)	# tmp95, block_8->tag
# z_zone.c:444: }
	.loc 1 444 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	Z_ChangeTag2, .-Z_ChangeTag2
	.globl	Z_FreeMemory
	.type	Z_FreeMemory, @function
Z_FreeMemory:
.LFB9:
	.loc 1 452 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# z_zone.c:456:     free = 0;
	.loc 1 456 10
	movl	$0, -12(%rbp)	#, free
# z_zone.c:458:     for (block = mainzone->blocklist.next ;
	.loc 1 458 26
	movq	mainzone(%rip), %rax	# mainzone, mainzone.30_1
# z_zone.c:458:     for (block = mainzone->blocklist.next ;
	.loc 1 458 16
	movq	32(%rax), %rax	# mainzone.30_1->blocklist.next, tmp90
	movq	%rax, -8(%rbp)	# tmp90, block
# z_zone.c:458:     for (block = mainzone->blocklist.next ;
	.loc 1 458 5
	jmp	.L62	#
.L65:
# z_zone.c:462: 	if (!block->user || block->tag >= PU_PURGELEVEL)
	.loc 1 462 12
	movq	-8(%rbp), %rax	# block, tmp91
	movq	8(%rax), %rax	# block_7->user, _2
# z_zone.c:462: 	if (!block->user || block->tag >= PU_PURGELEVEL)
	.loc 1 462 5
	testq	%rax, %rax	# _2
	je	.L63	#,
# z_zone.c:462: 	if (!block->user || block->tag >= PU_PURGELEVEL)
	.loc 1 462 27 discriminator 1
	movq	-8(%rbp), %rax	# block, tmp92
	movl	16(%rax), %eax	# block_7->tag, _3
# z_zone.c:462: 	if (!block->user || block->tag >= PU_PURGELEVEL)
	.loc 1 462 19 discriminator 1
	cmpl	$99, %eax	#, _3
	jle	.L64	#,
.L63:
# z_zone.c:463: 	    free += block->size;
	.loc 1 463 19
	movq	-8(%rbp), %rax	# block, tmp93
	movl	(%rax), %eax	# block_7->size, _4
# z_zone.c:463: 	    free += block->size;
	.loc 1 463 11
	addl	%eax, -12(%rbp)	# _4, free
.L64:
# z_zone.c:460: 	 block = block->next)
	.loc 1 460 9
	movq	-8(%rbp), %rax	# block, tmp94
	movq	24(%rax), %rax	# block_7->next, tmp95
	movq	%rax, -8(%rbp)	# tmp95, block
.L62:
# z_zone.c:459: 	 block != &mainzone->blocklist;
	.loc 1 459 21
	movq	mainzone(%rip), %rax	# mainzone, mainzone.31_5
# z_zone.c:459: 	 block != &mainzone->blocklist;
	.loc 1 459 12
	addq	$8, %rax	#, _6
# z_zone.c:459: 	 block != &mainzone->blocklist;
	.loc 1 459 9
	cmpq	%rax, -8(%rbp)	# _6, block
	jne	.L65	#,
# z_zone.c:465:     return free;
	.loc 1 465 12
	movl	-12(%rbp), %eax	# free, _13
# z_zone.c:466: }
	.loc 1 466 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	Z_FreeMemory, .-Z_FreeMemory
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "z_zone.h"
	.file 7 "doomtype.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "i_system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x6dc
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x17
	.long	.LASF80
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
	.uleb128 0x10
	.long	0x2e
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x10
	.long	0x4a
	.uleb128 0x3
	.long	.LASF60
	.byte	0x19
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x6
	.long	.LASF10
	.byte	0x2
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x18
	.byte	0x8
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x19
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x6
	.long	.LASF11
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0xa3
	.uleb128 0x6
	.long	.LASF12
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0xa3
	.uleb128 0x2
	.long	0x4a
	.uleb128 0x11
	.long	.LASF46
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x24e
	.uleb128 0x1
	.long	.LASF13
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x9c
	.byte	0
	.uleb128 0x1
	.long	.LASF14
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0xc2
	.byte	0x8
	.uleb128 0x1
	.long	.LASF15
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0xc2
	.byte	0x10
	.uleb128 0x1
	.long	.LASF16
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0xc2
	.byte	0x18
	.uleb128 0x1
	.long	.LASF17
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0xc2
	.byte	0x20
	.uleb128 0x1
	.long	.LASF18
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0xc2
	.byte	0x28
	.uleb128 0x1
	.long	.LASF19
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0xc2
	.byte	0x30
	.uleb128 0x1
	.long	.LASF20
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0xc2
	.byte	0x38
	.uleb128 0x1
	.long	.LASF21
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0xc2
	.byte	0x40
	.uleb128 0x1
	.long	.LASF22
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0xc2
	.byte	0x48
	.uleb128 0x1
	.long	.LASF23
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0xc2
	.byte	0x50
	.uleb128 0x1
	.long	.LASF24
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0xc2
	.byte	0x58
	.uleb128 0x1
	.long	.LASF25
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x267
	.byte	0x60
	.uleb128 0x1
	.long	.LASF26
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x26c
	.byte	0x68
	.uleb128 0x1
	.long	.LASF27
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x9c
	.byte	0x70
	.uleb128 0x1
	.long	.LASF28
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x9c
	.byte	0x74
	.uleb128 0x1
	.long	.LASF29
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0xaa
	.byte	0x78
	.uleb128 0x1
	.long	.LASF30
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x87
	.byte	0x80
	.uleb128 0x1
	.long	.LASF31
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x8e
	.byte	0x82
	.uleb128 0x1
	.long	.LASF32
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x271
	.byte	0x83
	.uleb128 0x1
	.long	.LASF33
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x281
	.byte	0x88
	.uleb128 0x1
	.long	.LASF34
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0xb6
	.byte	0x90
	.uleb128 0x1
	.long	.LASF35
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x28b
	.byte	0x98
	.uleb128 0x1
	.long	.LASF36
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x295
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF37
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x26c
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF38
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x7e
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF39
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x6b
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF40
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x9c
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF41
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x29a
	.byte	0xc4
	.byte	0
	.uleb128 0x6
	.long	.LASF42
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xc7
	.uleb128 0x1a
	.long	.LASF81
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF43
	.uleb128 0x2
	.long	0x262
	.uleb128 0x2
	.long	0xc7
	.uleb128 0xa
	.long	0x4a
	.long	0x281
	.uleb128 0xb
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	0x25a
	.uleb128 0xc
	.long	.LASF44
	.uleb128 0x2
	.long	0x286
	.uleb128 0xc
	.long	.LASF45
	.uleb128 0x2
	.long	0x290
	.uleb128 0xa
	.long	0x4a
	.long	0x2aa
	.uleb128 0xb
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	0x51
	.uleb128 0x12
	.long	0x2aa
	.uleb128 0x2
	.long	0x24e
	.uleb128 0x12
	.long	0x2b4
	.uleb128 0x11
	.long	.LASF47
	.byte	0x28
	.byte	0x6
	.byte	0x3a
	.byte	0x10
	.long	0x315
	.uleb128 0x1
	.long	.LASF48
	.byte	0x6
	.byte	0x3c
	.byte	0xb
	.long	0x9c
	.byte	0
	.uleb128 0x1
	.long	.LASF49
	.byte	0x6
	.byte	0x3d
	.byte	0xd
	.long	0x315
	.byte	0x8
	.uleb128 0x13
	.string	"tag"
	.byte	0x3e
	.long	0x9c
	.byte	0x10
	.uleb128 0x13
	.string	"id"
	.byte	0x3f
	.long	0x9c
	.byte	0x14
	.uleb128 0x1
	.long	.LASF50
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.long	0x31a
	.byte	0x18
	.uleb128 0x1
	.long	.LASF51
	.byte	0x6
	.byte	0x41
	.byte	0x18
	.long	0x31a
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	0x7e
	.uleb128 0x2
	.long	0x2be
	.uleb128 0x6
	.long	.LASF52
	.byte	0x6
	.byte	0x42
	.byte	0x3
	.long	0x2be
	.uleb128 0x6
	.long	.LASF53
	.byte	0x7
	.byte	0x24
	.byte	0x17
	.long	0x80
	.uleb128 0x1b
	.byte	0x38
	.byte	0x1
	.byte	0x2e
	.byte	0x9
	.long	0x368
	.uleb128 0x1
	.long	.LASF48
	.byte	0x1
	.byte	0x31
	.byte	0xa
	.long	0x9c
	.byte	0
	.uleb128 0x1
	.long	.LASF54
	.byte	0x1
	.byte	0x34
	.byte	0x10
	.long	0x31f
	.byte	0x8
	.uleb128 0x1
	.long	.LASF55
	.byte	0x1
	.byte	0x36
	.byte	0x11
	.long	0x368
	.byte	0x30
	.byte	0
	.uleb128 0x2
	.long	0x31f
	.uleb128 0x6
	.long	.LASF56
	.byte	0x1
	.byte	0x38
	.byte	0x3
	.long	0x337
	.uleb128 0x1c
	.long	.LASF82
	.byte	0x1
	.byte	0x3c
	.byte	0xc
	.long	0x38f
	.uleb128 0x9
	.byte	0x3
	.quad	mainzone
	.uleb128 0x2
	.long	0x36d
	.uleb128 0x14
	.long	.LASF57
	.value	0x165
	.long	0x9c
	.long	0x3af
	.uleb128 0x7
	.long	0x2b9
	.uleb128 0x7
	.long	0x2af
	.uleb128 0xd
	.byte	0
	.uleb128 0x14
	.long	.LASF58
	.value	0x16b
	.long	0x9c
	.long	0x3c5
	.uleb128 0x7
	.long	0x2aa
	.uleb128 0xd
	.byte	0
	.uleb128 0x1d
	.long	.LASF83
	.byte	0x9
	.byte	0x59
	.byte	0x6
	.long	0x3d8
	.uleb128 0x7
	.long	0xc2
	.uleb128 0xd
	.byte	0
	.uleb128 0x1e
	.long	.LASF59
	.byte	0x9
	.byte	0x28
	.byte	0x7
	.long	0x3ee
	.long	0x3ee
	.uleb128 0x7
	.long	0x3f3
	.byte	0
	.uleb128 0x2
	.long	0x32b
	.uleb128 0x2
	.long	0x9c
	.uleb128 0x1f
	.long	.LASF70
	.byte	0x1
	.value	0x1c3
	.byte	0x5
	.long	0x9c
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x43a
	.uleb128 0x5
	.long	.LASF61
	.value	0x1c5
	.byte	0x12
	.long	0x368
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.long	.LASF62
	.value	0x1c6
	.byte	0xb
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x8
	.long	.LASF63
	.value	0x1ad
	.byte	0x1
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x486
	.uleb128 0xe
	.string	"ptr"
	.value	0x1ae
	.byte	0xa
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"tag"
	.value	0x1af
	.byte	0x8
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.long	.LASF61
	.value	0x1b1
	.byte	0x11
	.long	0x368
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.long	.LASF64
	.value	0x18f
	.byte	0x6
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b4
	.uleb128 0x5
	.long	.LASF61
	.value	0x191
	.byte	0x11
	.long	0x368
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.long	.LASF65
	.value	0x16e
	.byte	0x6
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ef
	.uleb128 0xe
	.string	"f"
	.value	0x16e
	.byte	0x1c
	.long	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF61
	.value	0x170
	.byte	0x11
	.long	0x368
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.long	.LASF66
	.value	0x147
	.byte	0x1
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x539
	.uleb128 0x9
	.long	.LASF67
	.value	0x148
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.long	.LASF68
	.value	0x149
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF61
	.value	0x14b
	.byte	0x11
	.long	0x368
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.long	.LASF69
	.value	0x129
	.byte	0x1
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x592
	.uleb128 0x9
	.long	.LASF67
	.value	0x12a
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.long	.LASF68
	.value	0x12b
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF61
	.value	0x12d
	.byte	0x11
	.long	0x368
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.long	.LASF50
	.value	0x12e
	.byte	0x11
	.long	0x368
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF71
	.byte	0x1
	.byte	0xb8
	.byte	0x1
	.long	0x7e
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x628
	.uleb128 0xf
	.long	.LASF48
	.byte	0xb9
	.byte	0x8
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x15
	.string	"tag"
	.byte	0xba
	.byte	0x8
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xf
	.long	.LASF49
	.byte	0xbb
	.byte	0xa
	.long	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3
	.long	.LASF72
	.byte	0xbd
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.long	.LASF73
	.byte	0xbe
	.byte	0x11
	.long	0x368
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.long	.LASF55
	.byte	0xbf
	.byte	0x11
	.long	0x368
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.long	.LASF74
	.byte	0xc0
	.byte	0x11
	.long	0x368
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.long	.LASF75
	.byte	0xc1
	.byte	0x11
	.long	0x368
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x16
	.long	.LASF76
	.byte	0x7a
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x66f
	.uleb128 0x15
	.string	"ptr"
	.byte	0x7a
	.byte	0x14
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF61
	.byte	0x7c
	.byte	0x12
	.long	0x368
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.long	.LASF77
	.byte	0x7d
	.byte	0x12
	.long	0x368
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.long	.LASF78
	.byte	0x5d
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a8
	.uleb128 0x3
	.long	.LASF61
	.byte	0x5f
	.byte	0x11
	.long	0x368
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.long	.LASF48
	.byte	0x60
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x21
	.long	.LASF84
	.byte	0x1
	.byte	0x43
	.byte	0x6
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.long	.LASF79
	.byte	0x43
	.byte	0x1e
	.long	0x38f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF61
	.byte	0x45
	.byte	0x12
	.long	0x368
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x13
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
	.uleb128 0x1c
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
.LASF58:
	.string	"printf"
.LASF11:
	.string	"__off_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF26:
	.string	"_chain"
.LASF10:
	.string	"size_t"
.LASF32:
	.string	"_shortbuf"
.LASF51:
	.string	"prev"
.LASF20:
	.string	"_IO_buf_base"
.LASF74:
	.string	"newblock"
.LASF50:
	.string	"next"
.LASF35:
	.string	"_codecvt"
.LASF7:
	.string	"signed char"
.LASF77:
	.string	"other"
.LASF47:
	.string	"memblock_s"
.LASF52:
	.string	"memblock_t"
.LASF27:
	.string	"_fileno"
.LASF59:
	.string	"I_ZoneBase"
.LASF15:
	.string	"_IO_read_end"
.LASF9:
	.string	"long int"
.LASF67:
	.string	"lowtag"
.LASF80:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF13:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF44:
	.string	"_IO_codecvt"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF56:
	.string	"memzone_t"
.LASF53:
	.string	"byte"
.LASF63:
	.string	"Z_ChangeTag2"
.LASF83:
	.string	"I_Error"
.LASF43:
	.string	"_IO_marker"
.LASF61:
	.string	"block"
.LASF4:
	.string	"unsigned int"
.LASF38:
	.string	"_freeres_buf"
.LASF57:
	.string	"fprintf"
.LASF2:
	.string	"long unsigned int"
.LASF78:
	.string	"Z_Init"
.LASF18:
	.string	"_IO_write_ptr"
.LASF55:
	.string	"rover"
.LASF48:
	.string	"size"
.LASF6:
	.string	"short unsigned int"
.LASF69:
	.string	"Z_FreeTags"
.LASF76:
	.string	"Z_Free"
.LASF22:
	.string	"_IO_save_base"
.LASF68:
	.string	"hightag"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF75:
	.string	"base"
.LASF65:
	.string	"Z_FileDumpHeap"
.LASF19:
	.string	"_IO_write_end"
.LASF81:
	.string	"_IO_lock_t"
.LASF46:
	.string	"_IO_FILE"
.LASF71:
	.string	"Z_Malloc"
.LASF25:
	.string	"_markers"
.LASF84:
	.string	"Z_ClearZone"
.LASF49:
	.string	"user"
.LASF5:
	.string	"unsigned char"
.LASF70:
	.string	"Z_FreeMemory"
.LASF8:
	.string	"short int"
.LASF45:
	.string	"_IO_wide_data"
.LASF31:
	.string	"_vtable_offset"
.LASF42:
	.string	"FILE"
.LASF54:
	.string	"blocklist"
.LASF60:
	.string	"rcsid"
.LASF3:
	.string	"char"
.LASF64:
	.string	"Z_CheckHeap"
.LASF12:
	.string	"__off64_t"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF62:
	.string	"free"
.LASF66:
	.string	"Z_DumpHeap"
.LASF39:
	.string	"__pad5"
.LASF82:
	.string	"mainzone"
.LASF41:
	.string	"_unused2"
.LASF23:
	.string	"_IO_backup_base"
.LASF37:
	.string	"_freeres_list"
.LASF72:
	.string	"extra"
.LASF36:
	.string	"_wide_data"
.LASF79:
	.string	"zone"
.LASF73:
	.string	"start"
.LASF17:
	.string	"_IO_write_base"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"z_zone.c"
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
