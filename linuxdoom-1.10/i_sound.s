	.file	"i_sound.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "i_sound.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 49
rcsid:
	.string	"$Id: i_unix.c,v 1.5 1997/02/03 22:45:10 b1 Exp $"
	.globl	sndserver
	.bss
	.align 8
	.type	sndserver, @object
	.size	sndserver, 8
sndserver:
	.zero	8
	.globl	sndserver_filename
	.section	.rodata
.LC0:
	.string	"./sndserver "
	.section	.data.rel.local,"aw"
	.align 8
	.type	sndserver_filename, @object
	.size	sndserver_filename, 8
sndserver_filename:
	.quad	.LC0
	.local	flag
	.comm	flag,4,4
	.globl	lengths
	.bss
	.align 32
	.type	lengths, @object
	.size	lengths, 436
lengths:
	.zero	436
	.globl	audio_fd
	.align 4
	.type	audio_fd, @object
	.size	audio_fd, 4
audio_fd:
	.zero	4
	.globl	mixbuffer
	.align 32
	.type	mixbuffer, @object
	.size	mixbuffer, 4096
mixbuffer:
	.zero	4096
	.globl	channelstep
	.align 32
	.type	channelstep, @object
	.size	channelstep, 32
channelstep:
	.zero	32
	.globl	channelstepremainder
	.align 32
	.type	channelstepremainder, @object
	.size	channelstepremainder, 32
channelstepremainder:
	.zero	32
	.globl	channels
	.align 32
	.type	channels, @object
	.size	channels, 64
channels:
	.zero	64
	.globl	channelsend
	.align 32
	.type	channelsend, @object
	.size	channelsend, 64
channelsend:
	.zero	64
	.globl	channelstart
	.align 32
	.type	channelstart, @object
	.size	channelstart, 32
channelstart:
	.zero	32
	.globl	channelhandles
	.align 32
	.type	channelhandles, @object
	.size	channelhandles, 32
channelhandles:
	.zero	32
	.globl	channelids
	.align 32
	.type	channelids, @object
	.size	channelids, 32
channelids:
	.zero	32
	.globl	steptable
	.align 32
	.type	steptable, @object
	.size	steptable, 1024
steptable:
	.zero	1024
	.globl	vol_lookup
	.align 32
	.type	vol_lookup, @object
	.size	vol_lookup, 131072
vol_lookup:
	.zero	131072
	.globl	channelleftvol_lookup
	.align 32
	.type	channelleftvol_lookup, @object
	.size	channelleftvol_lookup, 64
channelleftvol_lookup:
	.zero	64
	.globl	channelrightvol_lookup
	.align 32
	.type	channelrightvol_lookup, @object
	.size	channelrightvol_lookup, 64
channelrightvol_lookup:
	.zero	64
	.section	.rodata
.LC1:
	.string	"ioctl(dsp,%d,arg) failed\n"
.LC2:
	.string	"errno=%d\n"
	.text
	.globl	myioctl
	.type	myioctl, @function
myioctl:
.LFB6:
	.file 1 "i_sound.c"
	.loc 1 165 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# fd, fd
	movl	%esi, -24(%rbp)	# command, command
	movq	%rdx, -32(%rbp)	# arg, arg
# i_sound.c:168:     rc = ioctl(fd, command, arg);  
	.loc 1 168 10
	movl	-24(%rbp), %eax	# command, tmp87
	movslq	%eax, %rcx	# tmp87, _1
	movq	-32(%rbp), %rdx	# arg, tmp88
	movl	-20(%rbp), %eax	# fd, tmp89
	movq	%rcx, %rsi	# _1,
	movl	%eax, %edi	# tmp89,
	movl	$0, %eax	#,
	call	ioctl@PLT	#
	movl	%eax, -4(%rbp)	# tmp90, rc
# i_sound.c:169:     if (rc < 0)
	.loc 1 169 8
	cmpl	$0, -4(%rbp)	#, rc
	jns	.L3	#,
# i_sound.c:171: 	fprintf(stderr, "ioctl(dsp,%d,arg) failed\n", command);
	.loc 1 171 2
	movq	stderr(%rip), %rax	# stderr, stderr.0_2
	movl	-24(%rbp), %edx	# command, tmp91
	leaq	.LC1(%rip), %rcx	#, tmp92
	movq	%rcx, %rsi	# tmp92,
	movq	%rax, %rdi	# stderr.0_2,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
# i_sound.c:172: 	fprintf(stderr, "errno=%d\n", errno);
	.loc 1 172 32
	call	__errno_location@PLT	#
# i_sound.c:172: 	fprintf(stderr, "errno=%d\n", errno);
	.loc 1 172 2 discriminator 1
	movl	(%rax), %edx	# *_3, _4
	movq	stderr(%rip), %rax	# stderr, stderr.1_5
	leaq	.LC2(%rip), %rcx	#, tmp93
	movq	%rcx, %rsi	# tmp93,
	movq	%rax, %rdi	# stderr.1_5,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
# i_sound.c:173: 	exit(-1);
	.loc 1 173 2
	movl	$-1, %edi	#,
	call	exit@PLT	#
.L3:
# i_sound.c:175: }
	.loc 1 175 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	myioctl, .-myioctl
	.section	.rodata
.LC3:
	.string	"ds%s"
.LC4:
	.string	"dspistol"
	.text
	.globl	getsfx
	.type	getsfx, @function
getsfx:
.LFB7:
	.loc 1 189 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# sfxname, sfxname
	movq	%rsi, -80(%rbp)	# len, len
# i_sound.c:189: {
	.loc 1 189 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp123
	movq	%rax, -8(%rbp)	# tmp123, D.8750
	xorl	%eax, %eax	# tmp123
# i_sound.c:201:     sprintf(name, "ds%s", sfxname);
	.loc 1 201 5
	movq	-72(%rbp), %rdx	# sfxname, tmp92
	leaq	-32(%rbp), %rax	#, tmp93
	leaq	.LC3(%rip), %rcx	#, tmp94
	movq	%rcx, %rsi	# tmp94,
	movq	%rax, %rdi	# tmp93,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# i_sound.c:213:     if ( W_CheckNumForName(name) == -1 )
	.loc 1 213 10
	leaq	-32(%rbp), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	W_CheckNumForName@PLT	#
# i_sound.c:213:     if ( W_CheckNumForName(name) == -1 )
	.loc 1 213 8 discriminator 1
	cmpl	$-1, %eax	#, _1
	jne	.L5	#,
# i_sound.c:214:       sfxlump = W_GetNumForName("dspistol");
	.loc 1 214 17
	leaq	.LC4(%rip), %rax	#, tmp96
	movq	%rax, %rdi	# tmp96,
	call	W_GetNumForName@PLT	#
	movl	%eax, -60(%rbp)	# tmp97, sfxlump
	jmp	.L6	#
.L5:
# i_sound.c:216:       sfxlump = W_GetNumForName(name);
	.loc 1 216 17
	leaq	-32(%rbp), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	W_GetNumForName@PLT	#
	movl	%eax, -60(%rbp)	# tmp99, sfxlump
.L6:
# i_sound.c:218:     size = W_LumpLength( sfxlump );
	.loc 1 218 12
	movl	-60(%rbp), %eax	# sfxlump, tmp100
	movl	%eax, %edi	# tmp100,
	call	W_LumpLength@PLT	#
	movl	%eax, -56(%rbp)	# tmp101, size
# i_sound.c:226:     sfx = (unsigned char*)W_CacheLumpNum( sfxlump, PU_STATIC );
	.loc 1 226 27
	movl	-60(%rbp), %eax	# sfxlump, tmp102
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp102,
	call	W_CacheLumpNum@PLT	#
	movq	%rax, -48(%rbp)	# tmp103, sfx
# i_sound.c:230:     paddedsize = ((size-8 + (SAMPLECOUNT-1)) / SAMPLECOUNT) * SAMPLECOUNT;
	.loc 1 230 27
	movl	-56(%rbp), %eax	# size, tmp104
	addl	$503, %eax	#, _2
# i_sound.c:230:     paddedsize = ((size-8 + (SAMPLECOUNT-1)) / SAMPLECOUNT) * SAMPLECOUNT;
	.loc 1 230 46
	leal	511(%rax), %edx	#, tmp106
	testl	%eax, %eax	# tmp105
	cmovs	%edx, %eax	# tmp106,, tmp105
	sarl	$9, %eax	#, tmp107
# i_sound.c:230:     paddedsize = ((size-8 + (SAMPLECOUNT-1)) / SAMPLECOUNT) * SAMPLECOUNT;
	.loc 1 230 16
	sall	$9, %eax	#, tmp108
	movl	%eax, -52(%rbp)	# tmp108, paddedsize
# i_sound.c:233:     paddedsfx = (unsigned char*)Z_Malloc( paddedsize+8, PU_STATIC, 0 );
	.loc 1 233 33
	movl	-52(%rbp), %eax	# paddedsize, tmp109
	addl	$8, %eax	#, _4
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# _4,
	call	Z_Malloc@PLT	#
	movq	%rax, -40(%rbp)	# tmp110, paddedsfx
# i_sound.c:239:     memcpy(  paddedsfx, sfx, size );
	.loc 1 239 5
	movl	-56(%rbp), %eax	# size, tmp111
	movslq	%eax, %rdx	# tmp111, _5
	movq	-48(%rbp), %rcx	# sfx, tmp112
	movq	-40(%rbp), %rax	# paddedsfx, tmp113
	movq	%rcx, %rsi	# tmp112,
	movq	%rax, %rdi	# tmp113,
	call	memcpy@PLT	#
# i_sound.c:240:     for (i=size ; i<paddedsize+8 ; i++)
	.loc 1 240 11
	movl	-56(%rbp), %eax	# size, tmp114
	movl	%eax, -64(%rbp)	# tmp114, i
# i_sound.c:240:     for (i=size ; i<paddedsize+8 ; i++)
	.loc 1 240 5
	jmp	.L7	#
.L8:
# i_sound.c:241:         paddedsfx[i] = 128;
	.loc 1 241 18
	movl	-64(%rbp), %eax	# i, tmp115
	movslq	%eax, %rdx	# tmp115, _6
	movq	-40(%rbp), %rax	# paddedsfx, tmp116
	addq	%rdx, %rax	# _6, _7
# i_sound.c:241:         paddedsfx[i] = 128;
	.loc 1 241 22
	movb	$-128, (%rax)	#, *_7
# i_sound.c:240:     for (i=size ; i<paddedsize+8 ; i++)
	.loc 1 240 37 discriminator 3
	addl	$1, -64(%rbp)	#, i
.L7:
# i_sound.c:240:     for (i=size ; i<paddedsize+8 ; i++)
	.loc 1 240 20 discriminator 1
	movl	-52(%rbp), %eax	# paddedsize, tmp117
	addl	$7, %eax	#, _8
	cmpl	%eax, -64(%rbp)	# _8, i
	jle	.L8	#,
# i_sound.c:244:     Z_Free( sfx );
	.loc 1 244 5
	movq	-48(%rbp), %rax	# sfx, tmp118
	movq	%rax, %rdi	# tmp118,
	call	Z_Free@PLT	#
# i_sound.c:247:     *len = paddedsize;
	.loc 1 247 10
	movq	-80(%rbp), %rax	# len, tmp119
	movl	-52(%rbp), %edx	# paddedsize, tmp120
	movl	%edx, (%rax)	# tmp120, *len_31(D)
# i_sound.c:250:     return (void *) (paddedsfx + 8);
	.loc 1 250 12
	movq	-40(%rbp), %rax	# paddedsfx, tmp121
	addq	$8, %rax	#, _33
# i_sound.c:251: }
	.loc 1 251 1
	movq	-8(%rbp), %rdx	# D.8750, tmp124
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp124
	je	.L10	#,
	call	__stack_chk_fail@PLT	#
.L10:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	getsfx, .-getsfx
	.section	.rodata
.LC5:
	.string	"rightvol out of bounds"
.LC6:
	.string	"leftvol out of bounds"
	.text
	.globl	addsfx
	.type	addsfx, @function
addsfx:
.LFB8:
	.loc 1 270 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# sfxid, sfxid
	movl	%esi, -40(%rbp)	# volume, volume
	movl	%edx, -44(%rbp)	# step, step
	movl	%ecx, -48(%rbp)	# seperation, seperation
# i_sound.c:274:     int		rc = -1;
	.loc 1 274 10
	movl	$-1, -12(%rbp)	#, rc
# i_sound.c:276:     int		oldest = gametic;
	.loc 1 276 10
	movl	gametic(%rip), %eax	# gametic, tmp108
	movl	%eax, -24(%rbp)	# tmp108, oldest
# i_sound.c:277:     int		oldestnum = 0;
	.loc 1 277 10
	movl	$0, -20(%rbp)	#, oldestnum
# i_sound.c:285:     if ( sfxid == sfx_sawup
	.loc 1 285 8
	cmpl	$10, -36(%rbp)	#, sfxid
	je	.L12	#,
# i_sound.c:286: 	 || sfxid == sfx_sawidl
	.loc 1 286 3
	cmpl	$11, -36(%rbp)	#, sfxid
	je	.L12	#,
# i_sound.c:287: 	 || sfxid == sfx_sawful
	.loc 1 287 3
	cmpl	$12, -36(%rbp)	#, sfxid
	je	.L12	#,
# i_sound.c:288: 	 || sfxid == sfx_sawhit
	.loc 1 288 3
	cmpl	$13, -36(%rbp)	#, sfxid
	je	.L12	#,
# i_sound.c:289: 	 || sfxid == sfx_stnmov
	.loc 1 289 3
	cmpl	$22, -36(%rbp)	#, sfxid
	je	.L12	#,
# i_sound.c:290: 	 || sfxid == sfx_pistol	 )
	.loc 1 290 3
	cmpl	$1, -36(%rbp)	#, sfxid
	jne	.L13	#,
.L12:
# i_sound.c:293: 	for (i=0 ; i<NUM_CHANNELS ; i++)
	.loc 1 293 8
	movl	$0, -28(%rbp)	#, i
# i_sound.c:293: 	for (i=0 ; i<NUM_CHANNELS ; i++)
	.loc 1 293 2
	jmp	.L14	#
.L16:
# i_sound.c:296: 	    if ( (channels[i])
	.loc 1 296 20
	movl	-28(%rbp), %eax	# i, tmp110
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp111
	leaq	channels(%rip), %rax	#, tmp112
	movq	(%rdx,%rax), %rax	# channels[i_26], _1
# i_sound.c:296: 	    if ( (channels[i])
	.loc 1 296 9
	testq	%rax, %rax	# _1
	je	.L15	#,
# i_sound.c:297: 		 && (channelids[i] == sfxid) )
	.loc 1 297 18
	movl	-28(%rbp), %eax	# i, tmp114
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp115
	leaq	channelids(%rip), %rax	#, tmp116
	movl	(%rdx,%rax), %eax	# channelids[i_26], _2
# i_sound.c:297: 		 && (channelids[i] == sfxid) )
	.loc 1 297 4
	cmpl	%eax, -36(%rbp)	# _2, sfxid
	jne	.L15	#,
# i_sound.c:300: 		channels[i] = 0;
	.loc 1 300 15
	movl	-28(%rbp), %eax	# i, tmp118
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp119
	leaq	channels(%rip), %rax	#, tmp120
	movq	$0, (%rdx,%rax)	#, channels[i_26]
# i_sound.c:303: 		break;
	.loc 1 303 3
	jmp	.L13	#
.L15:
# i_sound.c:293: 	for (i=0 ; i<NUM_CHANNELS ; i++)
	.loc 1 293 31 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L14:
# i_sound.c:293: 	for (i=0 ; i<NUM_CHANNELS ; i++)
	.loc 1 293 14 discriminator 1
	cmpl	$7, -28(%rbp)	#, i
	jle	.L16	#,
.L13:
# i_sound.c:309:     for (i=0; (i<NUM_CHANNELS) && (channels[i]); i++)
	.loc 1 309 11
	movl	$0, -28(%rbp)	#, i
# i_sound.c:309:     for (i=0; (i<NUM_CHANNELS) && (channels[i]); i++)
	.loc 1 309 5
	jmp	.L17	#
.L20:
# i_sound.c:311: 	if (channelstart[i] < oldest)
	.loc 1 311 18
	movl	-28(%rbp), %eax	# i, tmp122
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp123
	leaq	channelstart(%rip), %rax	#, tmp124
	movl	(%rdx,%rax), %eax	# channelstart[i_27], _3
# i_sound.c:311: 	if (channelstart[i] < oldest)
	.loc 1 311 5
	cmpl	%eax, -24(%rbp)	# _3, oldest
	jle	.L18	#,
# i_sound.c:313: 	    oldestnum = i;
	.loc 1 313 16
	movl	-28(%rbp), %eax	# i, tmp125
	movl	%eax, -20(%rbp)	# tmp125, oldestnum
# i_sound.c:314: 	    oldest = channelstart[i];
	.loc 1 314 13
	movl	-28(%rbp), %eax	# i, tmp127
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp128
	leaq	channelstart(%rip), %rax	#, tmp129
	movl	(%rdx,%rax), %eax	# channelstart[i_27], tmp130
	movl	%eax, -24(%rbp)	# tmp130, oldest
.L18:
# i_sound.c:309:     for (i=0; (i<NUM_CHANNELS) && (channels[i]); i++)
	.loc 1 309 51 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L17:
# i_sound.c:309:     for (i=0; (i<NUM_CHANNELS) && (channels[i]); i++)
	.loc 1 309 32 discriminator 1
	cmpl	$7, -28(%rbp)	#, i
	jg	.L19	#,
# i_sound.c:309:     for (i=0; (i<NUM_CHANNELS) && (channels[i]); i++)
	.loc 1 309 44 discriminator 3
	movl	-28(%rbp), %eax	# i, tmp132
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp133
	leaq	channels(%rip), %rax	#, tmp134
	movq	(%rdx,%rax), %rax	# channels[i_27], _4
# i_sound.c:309:     for (i=0; (i<NUM_CHANNELS) && (channels[i]); i++)
	.loc 1 309 32 discriminator 3
	testq	%rax, %rax	# _4
	jne	.L20	#,
.L19:
# i_sound.c:322:     if (i == NUM_CHANNELS)
	.loc 1 322 8
	cmpl	$8, -28(%rbp)	#, i
	jne	.L21	#,
# i_sound.c:323: 	slot = oldestnum;
	.loc 1 323 7
	movl	-20(%rbp), %eax	# oldestnum, tmp135
	movl	%eax, -16(%rbp)	# tmp135, slot
	jmp	.L22	#
.L21:
# i_sound.c:325: 	slot = i;
	.loc 1 325 7
	movl	-28(%rbp), %eax	# i, tmp136
	movl	%eax, -16(%rbp)	# tmp136, slot
.L22:
# i_sound.c:330:     channels[slot] = (unsigned char *) S_sfx[sfxid].data;
	.loc 1 330 52
	movl	-36(%rbp), %eax	# sfxid, tmp138
	movslq	%eax, %rdx	# tmp138, tmp137
	movq	%rdx, %rax	# tmp137, tmp140
	addq	%rax, %rax	# tmp140
	addq	%rdx, %rax	# tmp137, tmp140
	salq	$4, %rax	#, tmp141
	movq	%rax, %rdx	# tmp140, tmp139
	leaq	32+S_sfx(%rip), %rax	#, tmp142
	movq	(%rdx,%rax), %rax	# S_sfx[sfxid_41(D)].data, _5
# i_sound.c:330:     channels[slot] = (unsigned char *) S_sfx[sfxid].data;
	.loc 1 330 20
	movl	-16(%rbp), %edx	# slot, tmp144
	movslq	%edx, %rdx	# tmp144, tmp143
	leaq	0(,%rdx,8), %rcx	#, tmp145
	leaq	channels(%rip), %rdx	#, tmp146
	movq	%rax, (%rcx,%rdx)	# _5, channels[slot_32]
# i_sound.c:332:     channelsend[slot] = channels[slot] + lengths[sfxid];
	.loc 1 332 33
	movl	-16(%rbp), %eax	# slot, tmp148
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp149
	leaq	channels(%rip), %rax	#, tmp150
	movq	(%rdx,%rax), %rdx	# channels[slot_32], _6
# i_sound.c:332:     channelsend[slot] = channels[slot] + lengths[sfxid];
	.loc 1 332 49
	movl	-36(%rbp), %eax	# sfxid, tmp152
	cltq
	leaq	0(,%rax,4), %rcx	#, tmp153
	leaq	lengths(%rip), %rax	#, tmp154
	movl	(%rcx,%rax), %eax	# lengths[sfxid_41(D)], _7
	cltq
# i_sound.c:332:     channelsend[slot] = channels[slot] + lengths[sfxid];
	.loc 1 332 40
	leaq	(%rdx,%rax), %rcx	#, _9
# i_sound.c:332:     channelsend[slot] = channels[slot] + lengths[sfxid];
	.loc 1 332 23
	movl	-16(%rbp), %eax	# slot, tmp156
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp157
	leaq	channelsend(%rip), %rax	#, tmp158
	movq	%rcx, (%rdx,%rax)	# _9, channelsend[slot_32]
# i_sound.c:335:     if (!handlenums)
	.loc 1 335 9
	movzwl	handlenums.0(%rip), %eax	# handlenums, handlenums.2_10
# i_sound.c:335:     if (!handlenums)
	.loc 1 335 8
	testw	%ax, %ax	# handlenums.2_10
	jne	.L23	#,
# i_sound.c:336: 	handlenums = 100;
	.loc 1 336 13
	movw	$100, handlenums.0(%rip)	#, handlenums
.L23:
# i_sound.c:340:     channelhandles[slot] = rc = handlenums++;
	.loc 1 340 43
	movzwl	handlenums.0(%rip), %eax	# handlenums, handlenums.3_11
	leal	1(%rax), %edx	#, _13
	movw	%dx, handlenums.0(%rip)	# _13, handlenums
# i_sound.c:340:     channelhandles[slot] = rc = handlenums++;
	.loc 1 340 31
	movzwl	%ax, %eax	# handlenums.3_11, tmp159
	movl	%eax, -12(%rbp)	# tmp159, rc
# i_sound.c:340:     channelhandles[slot] = rc = handlenums++;
	.loc 1 340 26
	movl	-16(%rbp), %eax	# slot, tmp161
	cltq
	leaq	0(,%rax,4), %rcx	#, tmp162
	leaq	channelhandles(%rip), %rdx	#, tmp163
	movl	-12(%rbp), %eax	# rc, tmp164
	movl	%eax, (%rcx,%rdx)	# tmp164, channelhandles[slot_32]
# i_sound.c:344:     channelstep[slot] = step;
	.loc 1 344 23
	movl	-44(%rbp), %eax	# step, step.5_14
	movl	-16(%rbp), %edx	# slot, tmp166
	movslq	%edx, %rdx	# tmp166, tmp165
	leaq	0(,%rdx,4), %rcx	#, tmp167
	leaq	channelstep(%rip), %rdx	#, tmp168
	movl	%eax, (%rcx,%rdx)	# step.5_14, channelstep[slot_32]
# i_sound.c:346:     channelstepremainder[slot] = 0;
	.loc 1 346 32
	movl	-16(%rbp), %eax	# slot, tmp170
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp171
	leaq	channelstepremainder(%rip), %rax	#, tmp172
	movl	$0, (%rdx,%rax)	#, channelstepremainder[slot_32]
# i_sound.c:348:     channelstart[slot] = gametic;
	.loc 1 348 24
	movl	gametic(%rip), %eax	# gametic, gametic.6_15
	movl	-16(%rbp), %edx	# slot, tmp174
	movslq	%edx, %rdx	# tmp174, tmp173
	leaq	0(,%rdx,4), %rcx	#, tmp175
	leaq	channelstart(%rip), %rdx	#, tmp176
	movl	%eax, (%rcx,%rdx)	# gametic.6_15, channelstart[slot_32]
# i_sound.c:352:     seperation += 1;
	.loc 1 352 16
	addl	$1, -48(%rbp)	#, seperation
# i_sound.c:358: 	volume - ((volume*seperation*seperation) >> 16); ///(256*256);
	.loc 1 358 19
	movl	-40(%rbp), %eax	# volume, tmp177
	imull	-48(%rbp), %eax	# seperation, _16
# i_sound.c:358: 	volume - ((volume*seperation*seperation) >> 16); ///(256*256);
	.loc 1 358 30
	imull	-48(%rbp), %eax	# seperation, _17
# i_sound.c:358: 	volume - ((volume*seperation*seperation) >> 16); ///(256*256);
	.loc 1 358 43
	sarl	$16, %eax	#, _17
	movl	%eax, %edx	# _17, _18
# i_sound.c:357:     leftvol =
	.loc 1 357 13
	movl	-40(%rbp), %eax	# volume, tmp181
	subl	%edx, %eax	# _18, tmp180
	movl	%eax, -8(%rbp)	# tmp180, leftvol
# i_sound.c:359:     seperation = seperation - 257;
	.loc 1 359 16
	subl	$257, -48(%rbp)	#, seperation
# i_sound.c:361: 	volume - ((volume*seperation*seperation) >> 16);	
	.loc 1 361 19
	movl	-40(%rbp), %eax	# volume, tmp182
	imull	-48(%rbp), %eax	# seperation, _19
# i_sound.c:361: 	volume - ((volume*seperation*seperation) >> 16);	
	.loc 1 361 30
	imull	-48(%rbp), %eax	# seperation, _20
# i_sound.c:361: 	volume - ((volume*seperation*seperation) >> 16);	
	.loc 1 361 43
	sarl	$16, %eax	#, _20
	movl	%eax, %edx	# _20, _21
# i_sound.c:360:     rightvol =
	.loc 1 360 14
	movl	-40(%rbp), %eax	# volume, tmp186
	subl	%edx, %eax	# _21, tmp185
	movl	%eax, -4(%rbp)	# tmp185, rightvol
# i_sound.c:364:     if (rightvol < 0 || rightvol > 127)
	.loc 1 364 8
	cmpl	$0, -4(%rbp)	#, rightvol
	js	.L24	#,
# i_sound.c:364:     if (rightvol < 0 || rightvol > 127)
	.loc 1 364 22 discriminator 1
	cmpl	$127, -4(%rbp)	#, rightvol
	jle	.L25	#,
.L24:
# i_sound.c:365: 	I_Error("rightvol out of bounds");
	.loc 1 365 2
	leaq	.LC5(%rip), %rax	#, tmp187
	movq	%rax, %rdi	# tmp187,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L25:
# i_sound.c:367:     if (leftvol < 0 || leftvol > 127)
	.loc 1 367 8
	cmpl	$0, -8(%rbp)	#, leftvol
	js	.L26	#,
# i_sound.c:367:     if (leftvol < 0 || leftvol > 127)
	.loc 1 367 21 discriminator 1
	cmpl	$127, -8(%rbp)	#, leftvol
	jle	.L27	#,
.L26:
# i_sound.c:368: 	I_Error("leftvol out of bounds");
	.loc 1 368 2
	leaq	.LC6(%rip), %rax	#, tmp188
	movq	%rax, %rdi	# tmp188,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L27:
# i_sound.c:372:     channelleftvol_lookup[slot] = &vol_lookup[leftvol*256];
	.loc 1 372 54
	movl	-8(%rbp), %eax	# leftvol, tmp189
	sall	$8, %eax	#, _22
# i_sound.c:372:     channelleftvol_lookup[slot] = &vol_lookup[leftvol*256];
	.loc 1 372 35
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp191
	leaq	vol_lookup(%rip), %rax	#, tmp192
	leaq	(%rdx,%rax), %rcx	#, _23
# i_sound.c:372:     channelleftvol_lookup[slot] = &vol_lookup[leftvol*256];
	.loc 1 372 33
	movl	-16(%rbp), %eax	# slot, tmp194
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp195
	leaq	channelleftvol_lookup(%rip), %rax	#, tmp196
	movq	%rcx, (%rdx,%rax)	# _23, channelleftvol_lookup[slot_32]
# i_sound.c:373:     channelrightvol_lookup[slot] = &vol_lookup[rightvol*256];
	.loc 1 373 56
	movl	-4(%rbp), %eax	# rightvol, tmp197
	sall	$8, %eax	#, _24
# i_sound.c:373:     channelrightvol_lookup[slot] = &vol_lookup[rightvol*256];
	.loc 1 373 36
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp199
	leaq	vol_lookup(%rip), %rax	#, tmp200
	leaq	(%rdx,%rax), %rcx	#, _25
# i_sound.c:373:     channelrightvol_lookup[slot] = &vol_lookup[rightvol*256];
	.loc 1 373 34
	movl	-16(%rbp), %eax	# slot, tmp202
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp203
	leaq	channelrightvol_lookup(%rip), %rax	#, tmp204
	movq	%rcx, (%rdx,%rax)	# _25, channelrightvol_lookup[slot_32]
# i_sound.c:377:     channelids[slot] = sfxid;
	.loc 1 377 22
	movl	-16(%rbp), %eax	# slot, tmp206
	cltq
	leaq	0(,%rax,4), %rcx	#, tmp207
	leaq	channelids(%rip), %rdx	#, tmp208
	movl	-36(%rbp), %eax	# sfxid, tmp209
	movl	%eax, (%rcx,%rdx)	# tmp209, channelids[slot_32]
# i_sound.c:380:     return rc;
	.loc 1 380 12
	movl	-12(%rbp), %eax	# rc, _72
# i_sound.c:381: }
	.loc 1 381 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	addsfx, .-addsfx
	.globl	I_SetChannels
	.type	I_SetChannels, @function
I_SetChannels:
.LFB9:
	.loc 1 397 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# i_sound.c:404:   int*	steptablemid = steptable + 128;
	.loc 1 404 8
	leaq	512+steptable(%rip), %rax	#, tmp96
	movq	%rax, -8(%rbp)	# tmp96, steptablemid
# i_sound.c:414:   for (i=-128 ; i<128 ; i++)
	.loc 1 414 9
	movl	$-128, -16(%rbp)	#, i
# i_sound.c:414:   for (i=-128 ; i<128 ; i++)
	.loc 1 414 3
	jmp	.L30	#
.L31:
# i_sound.c:415:     steptablemid[i] = (int)(pow(2.0, (i/64.0))*65536.0);
	.loc 1 415 29
	pxor	%xmm0, %xmm0	# _1
	cvtsi2sdl	-16(%rbp), %xmm0	# i, _1
	movsd	.LC7(%rip), %xmm1	#, tmp97
	divsd	%xmm1, %xmm0	# tmp97, _2
	movq	.LC8(%rip), %rax	#, tmp98
	movapd	%xmm0, %xmm1	# _2,
	movq	%rax, %xmm0	# tmp98,
	call	pow@PLT	#
# i_sound.c:415:     steptablemid[i] = (int)(pow(2.0, (i/64.0))*65536.0);
	.loc 1 415 47 discriminator 1
	movsd	.LC9(%rip), %xmm1	#, tmp99
	mulsd	%xmm1, %xmm0	# tmp99, _4
# i_sound.c:415:     steptablemid[i] = (int)(pow(2.0, (i/64.0))*65536.0);
	.loc 1 415 17 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp100
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-8(%rbp), %rax	# steptablemid, tmp101
	addq	%rax, %rdx	# tmp101, _7
# i_sound.c:415:     steptablemid[i] = (int)(pow(2.0, (i/64.0))*65536.0);
	.loc 1 415 23 discriminator 1
	cvttsd2sil	%xmm0, %eax	# _4, _8
# i_sound.c:415:     steptablemid[i] = (int)(pow(2.0, (i/64.0))*65536.0);
	.loc 1 415 21 discriminator 1
	movl	%eax, (%rdx)	# _8, *_7
# i_sound.c:414:   for (i=-128 ; i<128 ; i++)
	.loc 1 414 26 discriminator 3
	addl	$1, -16(%rbp)	#, i
.L30:
# i_sound.c:414:   for (i=-128 ; i<128 ; i++)
	.loc 1 414 18 discriminator 1
	cmpl	$127, -16(%rbp)	#, i
	jle	.L31	#,
# i_sound.c:421:   for (i=0 ; i<128 ; i++)
	.loc 1 421 9
	movl	$0, -16(%rbp)	#, i
# i_sound.c:421:   for (i=0 ; i<128 ; i++)
	.loc 1 421 3
	jmp	.L32	#
.L35:
# i_sound.c:422:     for (j=0 ; j<256 ; j++)
	.loc 1 422 11
	movl	$0, -12(%rbp)	#, j
# i_sound.c:422:     for (j=0 ; j<256 ; j++)
	.loc 1 422 5
	jmp	.L33	#
.L34:
# i_sound.c:423:       vol_lookup[i*256+j] = (i*(j-128)*256)/127;
	.loc 1 423 34
	movl	-12(%rbp), %eax	# j, tmp102
	addl	$-128, %eax	#, _9
# i_sound.c:423:       vol_lookup[i*256+j] = (i*(j-128)*256)/127;
	.loc 1 423 31
	imull	-16(%rbp), %eax	# i, _10
# i_sound.c:423:       vol_lookup[i*256+j] = (i*(j-128)*256)/127;
	.loc 1 423 39
	sall	$8, %eax	#, _11
# i_sound.c:423:       vol_lookup[i*256+j] = (i*(j-128)*256)/127;
	.loc 1 423 19
	movl	-16(%rbp), %edx	# i, tmp103
	movl	%edx, %ecx	# tmp103, tmp103
	sall	$8, %ecx	#, tmp103
# i_sound.c:423:       vol_lookup[i*256+j] = (i*(j-128)*256)/127;
	.loc 1 423 23
	movl	-12(%rbp), %edx	# j, tmp104
	leal	(%rcx,%rdx), %esi	#, _13
# i_sound.c:423:       vol_lookup[i*256+j] = (i*(j-128)*256)/127;
	.loc 1 423 44
	movslq	%eax, %rdx	# _11, tmp105
	imulq	$-2130574327, %rdx, %rdx	#, tmp105, tmp106
	shrq	$32, %rdx	#, tmp107
	addl	%eax, %edx	# _11, tmp108
	sarl	$6, %edx	#, tmp109
	sarl	$31, %eax	#, tmp110
	movl	%edx, %ecx	# tmp109, tmp109
	subl	%eax, %ecx	# tmp110, tmp109
# i_sound.c:423:       vol_lookup[i*256+j] = (i*(j-128)*256)/127;
	.loc 1 423 27
	movslq	%esi, %rax	# _13, tmp111
	leaq	0(,%rax,4), %rdx	#, tmp112
	leaq	vol_lookup(%rip), %rax	#, tmp113
	movl	%ecx, (%rdx,%rax)	# _14, vol_lookup[_13]
# i_sound.c:422:     for (j=0 ; j<256 ; j++)
	.loc 1 422 25 discriminator 3
	addl	$1, -12(%rbp)	#, j
.L33:
# i_sound.c:422:     for (j=0 ; j<256 ; j++)
	.loc 1 422 17 discriminator 1
	cmpl	$255, -12(%rbp)	#, j
	jle	.L34	#,
# i_sound.c:421:   for (i=0 ; i<128 ; i++)
	.loc 1 421 23 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L32:
# i_sound.c:421:   for (i=0 ; i<128 ; i++)
	.loc 1 421 15 discriminator 1
	cmpl	$127, -16(%rbp)	#, i
	jle	.L35	#,
# i_sound.c:424: }	
	.loc 1 424 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	I_SetChannels, .-I_SetChannels
	.globl	I_SetSfxVolume
	.type	I_SetSfxVolume, @function
I_SetSfxVolume:
.LFB10:
	.loc 1 428 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# volume, volume
# i_sound.c:434:   snd_SfxVolume = volume;
	.loc 1 434 17
	movl	-4(%rbp), %eax	# volume, tmp82
	movl	%eax, snd_SfxVolume(%rip)	# tmp82, snd_SfxVolume
# i_sound.c:435: }
	.loc 1 435 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	I_SetSfxVolume, .-I_SetSfxVolume
	.globl	I_SetMusicVolume
	.type	I_SetMusicVolume, @function
I_SetMusicVolume:
.LFB11:
	.loc 1 439 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# volume, volume
# i_sound.c:441:   snd_MusicVolume = volume;
	.loc 1 441 19
	movl	-4(%rbp), %eax	# volume, tmp82
	movl	%eax, snd_MusicVolume(%rip)	# tmp82, snd_MusicVolume
# i_sound.c:444: }
	.loc 1 444 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	I_SetMusicVolume, .-I_SetMusicVolume
	.globl	I_GetSfxLumpNum
	.type	I_GetSfxLumpNum, @function
I_GetSfxLumpNum:
.LFB12:
	.loc 1 452 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# sfx, sfx
# i_sound.c:452: {
	.loc 1 452 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp90
	movq	%rax, -8(%rbp)	# tmp90, D.8756
	xorl	%eax, %eax	# tmp90
# i_sound.c:454:     sprintf(namebuf, "ds%s", sfx->name);
	.loc 1 454 5
	movq	-40(%rbp), %rax	# sfx, tmp85
	movq	(%rax), %rdx	# sfx_3(D)->name, _1
	leaq	-17(%rbp), %rax	#, tmp86
	leaq	.LC3(%rip), %rcx	#, tmp87
	movq	%rcx, %rsi	# tmp87,
	movq	%rax, %rdi	# tmp86,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# i_sound.c:455:     return W_GetNumForName(namebuf);
	.loc 1 455 12
	leaq	-17(%rbp), %rax	#, tmp88
	movq	%rax, %rdi	# tmp88,
	call	W_GetNumForName@PLT	#
# i_sound.c:456: }
	.loc 1 456 1
	movq	-8(%rbp), %rdx	# D.8756, tmp91
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp91
	je	.L40	#,
	call	__stack_chk_fail@PLT	#
.L40:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	I_GetSfxLumpNum, .-I_GetSfxLumpNum
	.section	.rodata
.LC10:
	.string	"p%2.2x%2.2x%2.2x%2.2x\n"
	.text
	.globl	I_StartSound
	.type	I_StartSound, @function
I_StartSound:
.LFB13:
	.loc 1 477 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -4(%rbp)	# id, id
	movl	%esi, -8(%rbp)	# vol, vol
	movl	%edx, -12(%rbp)	# sep, sep
	movl	%ecx, -16(%rbp)	# pitch, pitch
	movl	%r8d, -20(%rbp)	# priority, priority
# i_sound.c:480:   priority = 0;
	.loc 1 480 12
	movl	$0, -20(%rbp)	#, priority
# i_sound.c:483:     if (sndserver)
	.loc 1 483 9
	movq	sndserver(%rip), %rax	# sndserver, sndserver.7_1
# i_sound.c:483:     if (sndserver)
	.loc 1 483 8
	testq	%rax, %rax	# sndserver.7_1
	je	.L42	#,
# i_sound.c:485: 	fprintf(sndserver, "p%2.2x%2.2x%2.2x%2.2x\n", id, pitch, vol, sep);
	.loc 1 485 2
	movq	sndserver(%rip), %rax	# sndserver, sndserver.8_2
	movl	-12(%rbp), %edi	# sep, tmp87
	movl	-8(%rbp), %esi	# vol, tmp88
	movl	-16(%rbp), %ecx	# pitch, tmp89
	movl	-4(%rbp), %edx	# id, tmp90
	movl	%edi, %r9d	# tmp87,
	movl	%esi, %r8d	# tmp88,
	leaq	.LC10(%rip), %rsi	#, tmp91
	movq	%rax, %rdi	# sndserver.8_2,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
# i_sound.c:486: 	fflush(sndserver);
	.loc 1 486 2
	movq	sndserver(%rip), %rax	# sndserver, sndserver.9_3
	movq	%rax, %rdi	# sndserver.9_3,
	call	fflush@PLT	#
.L42:
# i_sound.c:489:     return id;
	.loc 1 489 12
	movl	-4(%rbp), %eax	# id, _13
# i_sound.c:501: }
	.loc 1 501 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE13:
	.size	I_StartSound, .-I_StartSound
	.globl	I_StopSound
	.type	I_StopSound, @function
I_StopSound:
.LFB14:
	.loc 1 506 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# handle, handle
# i_sound.c:513:   handle = 0;
	.loc 1 513 10
	movl	$0, -4(%rbp)	#, handle
# i_sound.c:514: }
	.loc 1 514 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE14:
	.size	I_StopSound, .-I_StopSound
	.globl	I_SoundIsPlaying
	.type	I_SoundIsPlaying, @function
I_SoundIsPlaying:
.LFB15:
	.loc 1 518 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# handle, handle
# i_sound.c:520:     return gametic < handle;
	.loc 1 520 20
	movl	gametic(%rip), %eax	# gametic, gametic.10_1
	cmpl	%eax, -4(%rbp)	# gametic.10_1, handle
	setg	%al	#, _2
	movzbl	%al, %eax	# _2, _5
# i_sound.c:521: }
	.loc 1 521 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE15:
	.size	I_SoundIsPlaying, .-I_SoundIsPlaying
	.globl	I_UpdateSound
	.type	I_UpdateSound, @function
I_UpdateSound:
.LFB16:
	.loc 1 540 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
# i_sound.c:565:     leftout = mixbuffer;
	.loc 1 565 13
	leaq	mixbuffer(%rip), %rax	#, tmp119
	movq	%rax, -48(%rbp)	# tmp119, leftout
# i_sound.c:566:     rightout = mixbuffer+1;
	.loc 1 566 14
	leaq	2+mixbuffer(%rip), %rax	#, tmp120
	movq	%rax, -40(%rbp)	# tmp120, rightout
# i_sound.c:567:     step = 2;
	.loc 1 567 10
	movl	$2, -52(%rbp)	#, step
# i_sound.c:571:     leftend = mixbuffer + SAMPLECOUNT*step;
	.loc 1 571 38
	movl	-52(%rbp), %eax	# step, tmp121
	sall	$9, %eax	#, _1
	cltq
# i_sound.c:571:     leftend = mixbuffer + SAMPLECOUNT*step;
	.loc 1 571 25
	leaq	(%rax,%rax), %rdx	#, _3
# i_sound.c:571:     leftend = mixbuffer + SAMPLECOUNT*step;
	.loc 1 571 13
	leaq	mixbuffer(%rip), %rax	#, tmp122
	addq	%rdx, %rax	# _3, tmp123
	movq	%rax, -32(%rbp)	# tmp123, leftend
# i_sound.c:576:     while (leftout != leftend)
	.loc 1 576 11
	jmp	.L48	#
.L58:
# i_sound.c:579: 	dl = 0;
	.loc 1 579 5
	movl	$0, %r12d	#, dl
# i_sound.c:580: 	dr = 0;
	.loc 1 580 5
	movl	$0, %ebx	#, dr
# i_sound.c:585: 	for ( chan = 0; chan < NUM_CHANNELS; chan++ )
	.loc 1 585 13
	movl	$0, -56(%rbp)	#, chan
# i_sound.c:585: 	for ( chan = 0; chan < NUM_CHANNELS; chan++ )
	.loc 1 585 2
	jmp	.L49	#
.L51:
# i_sound.c:588: 	    if (channels[ chan ])
	.loc 1 588 18
	movl	-56(%rbp), %eax	# chan, tmp125
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp126
	leaq	channels(%rip), %rax	#, tmp127
	movq	(%rdx,%rax), %rax	# channels[chan_41], _4
# i_sound.c:588: 	    if (channels[ chan ])
	.loc 1 588 9
	testq	%rax, %rax	# _4
	je	.L50	#,
# i_sound.c:591: 		sample = *channels[ chan ];
	.loc 1 591 21
	movl	-56(%rbp), %eax	# chan, tmp129
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp130
	leaq	channels(%rip), %rax	#, tmp131
	movq	(%rdx,%rax), %rax	# channels[chan_41], _5
# i_sound.c:591: 		sample = *channels[ chan ];
	.loc 1 591 12
	movzbl	(%rax), %eax	# *_5, _6
# i_sound.c:591: 		sample = *channels[ chan ];
	.loc 1 591 10
	movzbl	%al, %r13d	# _6, sample
# i_sound.c:596: 		dl += channelleftvol_lookup[ chan ][sample];
	.loc 1 596 30
	movl	-56(%rbp), %eax	# chan, tmp133
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp134
	leaq	channelleftvol_lookup(%rip), %rax	#, tmp135
	movq	(%rdx,%rax), %rax	# channelleftvol_lookup[chan_41], _7
# i_sound.c:596: 		dl += channelleftvol_lookup[ chan ][sample];
	.loc 1 596 38
	movl	%r13d, %edx	# sample, _8
	salq	$2, %rdx	#, _9
	addq	%rdx, %rax	# _9, _10
	movl	(%rax), %eax	# *_10, _11
# i_sound.c:596: 		dl += channelleftvol_lookup[ chan ][sample];
	.loc 1 596 6
	addl	%eax, %r12d	# _11, dl
# i_sound.c:597: 		dr += channelrightvol_lookup[ chan ][sample];
	.loc 1 597 31
	movl	-56(%rbp), %eax	# chan, tmp137
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp138
	leaq	channelrightvol_lookup(%rip), %rax	#, tmp139
	movq	(%rdx,%rax), %rax	# channelrightvol_lookup[chan_41], _12
# i_sound.c:597: 		dr += channelrightvol_lookup[ chan ][sample];
	.loc 1 597 39
	movl	%r13d, %edx	# sample, _13
	salq	$2, %rdx	#, _14
	addq	%rdx, %rax	# _14, _15
	movl	(%rax), %eax	# *_15, _16
# i_sound.c:597: 		dr += channelrightvol_lookup[ chan ][sample];
	.loc 1 597 6
	addl	%eax, %ebx	# _16, dr
# i_sound.c:599: 		channelstepremainder[ chan ] += channelstep[ chan ];
	.loc 1 599 23
	movl	-56(%rbp), %eax	# chan, tmp141
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp142
	leaq	channelstepremainder(%rip), %rax	#, tmp143
	movl	(%rdx,%rax), %edx	# channelstepremainder[chan_41], _17
# i_sound.c:599: 		channelstepremainder[ chan ] += channelstep[ chan ];
	.loc 1 599 46
	movl	-56(%rbp), %eax	# chan, tmp145
	cltq
	leaq	0(,%rax,4), %rcx	#, tmp146
	leaq	channelstep(%rip), %rax	#, tmp147
	movl	(%rcx,%rax), %eax	# channelstep[chan_41], _18
# i_sound.c:599: 		channelstepremainder[ chan ] += channelstep[ chan ];
	.loc 1 599 32
	leal	(%rdx,%rax), %ecx	#, _19
	movl	-56(%rbp), %eax	# chan, tmp149
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp150
	leaq	channelstepremainder(%rip), %rax	#, tmp151
	movl	%ecx, (%rdx,%rax)	# _19, channelstepremainder[chan_41]
# i_sound.c:601: 		channels[ chan ] += channelstepremainder[ chan ] >> 16;
	.loc 1 601 11
	movl	-56(%rbp), %eax	# chan, tmp153
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp154
	leaq	channels(%rip), %rax	#, tmp155
	movq	(%rdx,%rax), %rax	# channels[chan_41], _20
# i_sound.c:601: 		channels[ chan ] += channelstepremainder[ chan ] >> 16;
	.loc 1 601 43
	movl	-56(%rbp), %edx	# chan, tmp157
	movslq	%edx, %rdx	# tmp157, tmp156
	leaq	0(,%rdx,4), %rcx	#, tmp158
	leaq	channelstepremainder(%rip), %rdx	#, tmp159
	movl	(%rcx,%rdx), %edx	# channelstepremainder[chan_41], _21
# i_sound.c:601: 		channels[ chan ] += channelstepremainder[ chan ] >> 16;
	.loc 1 601 52
	shrl	$16, %edx	#, _22
	movl	%edx, %edx	# _22, _23
# i_sound.c:601: 		channels[ chan ] += channelstepremainder[ chan ] >> 16;
	.loc 1 601 20
	leaq	(%rax,%rdx), %rcx	#, _24
	movl	-56(%rbp), %eax	# chan, tmp161
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp162
	leaq	channels(%rip), %rax	#, tmp163
	movq	%rcx, (%rdx,%rax)	# _24, channels[chan_41]
# i_sound.c:603: 		channelstepremainder[ chan ] &= 65536-1;
	.loc 1 603 23
	movl	-56(%rbp), %eax	# chan, tmp165
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp166
	leaq	channelstepremainder(%rip), %rax	#, tmp167
	movl	(%rdx,%rax), %eax	# channelstepremainder[chan_41], _25
# i_sound.c:603: 		channelstepremainder[ chan ] &= 65536-1;
	.loc 1 603 32
	movzwl	%ax, %eax	# _25, _26
	movl	-56(%rbp), %edx	# chan, tmp169
	movslq	%edx, %rdx	# tmp169, tmp168
	leaq	0(,%rdx,4), %rcx	#, tmp170
	leaq	channelstepremainder(%rip), %rdx	#, tmp171
	movl	%eax, (%rcx,%rdx)	# _26, channelstepremainder[chan_41]
# i_sound.c:606: 		if (channels[ chan ] >= channelsend[ chan ])
	.loc 1 606 15
	movl	-56(%rbp), %eax	# chan, tmp173
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp174
	leaq	channels(%rip), %rax	#, tmp175
	movq	(%rdx,%rax), %rdx	# channels[chan_41], _27
# i_sound.c:606: 		if (channels[ chan ] >= channelsend[ chan ])
	.loc 1 606 38
	movl	-56(%rbp), %eax	# chan, tmp177
	cltq
	leaq	0(,%rax,8), %rcx	#, tmp178
	leaq	channelsend(%rip), %rax	#, tmp179
	movq	(%rcx,%rax), %rax	# channelsend[chan_41], _28
# i_sound.c:606: 		if (channels[ chan ] >= channelsend[ chan ])
	.loc 1 606 6
	cmpq	%rax, %rdx	# _28, _27
	jb	.L50	#,
# i_sound.c:607: 		    channels[ chan ] = 0;
	.loc 1 607 24
	movl	-56(%rbp), %eax	# chan, tmp181
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp182
	leaq	channels(%rip), %rax	#, tmp183
	movq	$0, (%rdx,%rax)	#, channels[chan_41]
.L50:
# i_sound.c:585: 	for ( chan = 0; chan < NUM_CHANNELS; chan++ )
	.loc 1 585 43 discriminator 2
	addl	$1, -56(%rbp)	#, chan
.L49:
# i_sound.c:585: 	for ( chan = 0; chan < NUM_CHANNELS; chan++ )
	.loc 1 585 23 discriminator 1
	cmpl	$7, -56(%rbp)	#, chan
	jle	.L51	#,
# i_sound.c:617: 	if (dl > 0x7fff)
	.loc 1 617 5
	cmpl	$32767, %r12d	#, dl
	jle	.L52	#,
# i_sound.c:618: 	    *leftout = 0x7fff;
	.loc 1 618 15
	movq	-48(%rbp), %rax	# leftout, tmp184
	movw	$32767, (%rax)	#, *leftout_39
	jmp	.L53	#
.L52:
# i_sound.c:619: 	else if (dl < -0x8000)
	.loc 1 619 10
	cmpl	$-32768, %r12d	#, dl
	jge	.L54	#,
# i_sound.c:620: 	    *leftout = -0x8000;
	.loc 1 620 15
	movq	-48(%rbp), %rax	# leftout, tmp185
	movw	$-32768, (%rax)	#, *leftout_39
	jmp	.L53	#
.L54:
# i_sound.c:622: 	    *leftout = dl;
	.loc 1 622 15
	movl	%r12d, %edx	# dl, _29
	movq	-48(%rbp), %rax	# leftout, tmp186
	movw	%dx, (%rax)	# _29, *leftout_39
.L53:
# i_sound.c:625: 	if (dr > 0x7fff)
	.loc 1 625 5
	cmpl	$32767, %ebx	#, dr
	jle	.L55	#,
# i_sound.c:626: 	    *rightout = 0x7fff;
	.loc 1 626 16
	movq	-40(%rbp), %rax	# rightout, tmp187
	movw	$32767, (%rax)	#, *rightout_40
	jmp	.L56	#
.L55:
# i_sound.c:627: 	else if (dr < -0x8000)
	.loc 1 627 10
	cmpl	$-32768, %ebx	#, dr
	jge	.L57	#,
# i_sound.c:628: 	    *rightout = -0x8000;
	.loc 1 628 16
	movq	-40(%rbp), %rax	# rightout, tmp188
	movw	$-32768, (%rax)	#, *rightout_40
	jmp	.L56	#
.L57:
# i_sound.c:630: 	    *rightout = dr;
	.loc 1 630 16
	movl	%ebx, %edx	# dr, _30
	movq	-40(%rbp), %rax	# rightout, tmp189
	movw	%dx, (%rax)	# _30, *rightout_40
.L56:
# i_sound.c:633: 	leftout += step;
	.loc 1 633 10
	movl	-52(%rbp), %eax	# step, tmp190
	cltq
	addq	%rax, %rax	# _32
	addq	%rax, -48(%rbp)	# _32, leftout
# i_sound.c:634: 	rightout += step;
	.loc 1 634 11
	movl	-52(%rbp), %eax	# step, tmp191
	cltq
	addq	%rax, %rax	# _34
	addq	%rax, -40(%rbp)	# _34, rightout
.L48:
# i_sound.c:576:     while (leftout != leftend)
	.loc 1 576 20
	movq	-48(%rbp), %rax	# leftout, tmp192
	cmpq	-32(%rbp), %rax	# leftend, tmp192
	jne	.L58	#,
# i_sound.c:654: }
	.loc 1 654 1
	nop	
	nop	
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE16:
	.size	I_UpdateSound, .-I_UpdateSound
	.globl	I_SubmitSound
	.type	I_SubmitSound, @function
I_SubmitSound:
.LFB17:
	.loc 1 667 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# i_sound.c:669:   write(audio_fd, mixbuffer, SAMPLECOUNT*BUFMUL);
	.loc 1 669 3
	movl	audio_fd(%rip), %eax	# audio_fd, audio_fd.11_1
	movl	$2048, %edx	#,
	leaq	mixbuffer(%rip), %rcx	#, tmp83
	movq	%rcx, %rsi	# tmp83,
	movl	%eax, %edi	# audio_fd.11_1,
	call	write@PLT	#
# i_sound.c:670: }
	.loc 1 670 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE17:
	.size	I_SubmitSound, .-I_SubmitSound
	.globl	I_UpdateSoundParams
	.type	I_UpdateSoundParams, @function
I_UpdateSoundParams:
.LFB18:
	.loc 1 680 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# handle, handle
	movl	%esi, -8(%rbp)	# vol, vol
	movl	%edx, -12(%rbp)	# sep, sep
	movl	%ecx, -16(%rbp)	# pitch, pitch
# i_sound.c:687:   handle = vol = sep = pitch = 0;
	.loc 1 687 30
	movl	$0, -16(%rbp)	#, pitch
# i_sound.c:687:   handle = vol = sep = pitch = 0;
	.loc 1 687 22
	movl	-16(%rbp), %eax	# pitch, tmp82
	movl	%eax, -12(%rbp)	# tmp82, sep
# i_sound.c:687:   handle = vol = sep = pitch = 0;
	.loc 1 687 16
	movl	-12(%rbp), %eax	# sep, tmp83
	movl	%eax, -8(%rbp)	# tmp83, vol
# i_sound.c:687:   handle = vol = sep = pitch = 0;
	.loc 1 687 10
	movl	-8(%rbp), %eax	# vol, tmp84
	movl	%eax, -4(%rbp)	# tmp84, handle
# i_sound.c:688: }
	.loc 1 688 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE18:
	.size	I_UpdateSoundParams, .-I_UpdateSoundParams
	.section	.rodata
.LC11:
	.string	"q\n"
	.text
	.globl	I_ShutdownSound
	.type	I_ShutdownSound, @function
I_ShutdownSound:
.LFB19:
	.loc 1 694 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# i_sound.c:696:   if (sndserver)
	.loc 1 696 7
	movq	sndserver(%rip), %rax	# sndserver, sndserver.12_1
# i_sound.c:696:   if (sndserver)
	.loc 1 696 6
	testq	%rax, %rax	# sndserver.12_1
	je	.L64	#,
# i_sound.c:699:     fprintf(sndserver, "q\n");
	.loc 1 699 5
	movq	sndserver(%rip), %rax	# sndserver, sndserver.13_2
	movq	%rax, %rcx	# sndserver.13_2,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC11(%rip), %rax	#, tmp85
	movq	%rax, %rdi	# tmp85,
	call	fwrite@PLT	#
# i_sound.c:700:     fflush(sndserver);
	.loc 1 700 5
	movq	sndserver(%rip), %rax	# sndserver, sndserver.14_3
	movq	%rax, %rdi	# sndserver.14_3,
	call	fflush@PLT	#
# i_sound.c:729:   return;
	.loc 1 729 3
	nop	
.L64:
	nop	
# i_sound.c:730: }
	.loc 1 730 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE19:
	.size	I_ShutdownSound, .-I_ShutdownSound
	.section	.rodata
.LC12:
	.string	"DOOMWADDIR"
.LC13:
	.string	"%s/%s"
.LC14:
	.string	"%s"
.LC15:
	.string	"w"
	.align 8
.LC16:
	.string	"Could not start sound server [%s]\n"
	.text
	.globl	I_InitSound
	.type	I_InitSound, @function
I_InitSound:
.LFB20:
	.loc 1 739 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$280, %rsp	#,
	.cfi_offset 3, -24
# i_sound.c:739: { 
	.loc 1 739 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp108
	movq	%rax, -24(%rbp)	# tmp108, D.8759
	xorl	%eax, %eax	# tmp108
# i_sound.c:743:   if (getenv("DOOMWADDIR"))
	.loc 1 743 7
	leaq	.LC12(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	getenv@PLT	#
# i_sound.c:743:   if (getenv("DOOMWADDIR"))
	.loc 1 743 6 discriminator 1
	testq	%rax, %rax	# _1
	je	.L66	#,
# i_sound.c:744:     sprintf(buffer, "%s/%s",
	.loc 1 744 5
	movq	sndserver_filename(%rip), %rbx	# sndserver_filename, sndserver_filename.15_2
	leaq	.LC12(%rip), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	call	getenv@PLT	#
	movq	%rax, %rdx	#, _3
# i_sound.c:744:     sprintf(buffer, "%s/%s",
	.loc 1 744 5 is_stmt 0 discriminator 1
	leaq	-288(%rbp), %rax	#, tmp93
	movq	%rbx, %rcx	# sndserver_filename.15_2,
	leaq	.LC13(%rip), %rsi	#, tmp94
	movq	%rax, %rdi	# tmp93,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
	jmp	.L67	#
.L66:
# i_sound.c:748:     sprintf(buffer, "%s", sndserver_filename);
	.loc 1 748 5 is_stmt 1
	movq	sndserver_filename(%rip), %rdx	# sndserver_filename, sndserver_filename.16_4
	leaq	-288(%rbp), %rax	#, tmp95
	leaq	.LC14(%rip), %rcx	#, tmp96
	movq	%rcx, %rsi	# tmp96,
	movq	%rax, %rdi	# tmp95,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
.L67:
# i_sound.c:751:   if ( !access(buffer, X_OK) )
	.loc 1 751 9
	leaq	-288(%rbp), %rax	#, tmp97
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp97,
	call	access@PLT	#
# i_sound.c:751:   if ( !access(buffer, X_OK) )
	.loc 1 751 6 discriminator 1
	testl	%eax, %eax	# _5
	jne	.L68	#,
# i_sound.c:753:     strcat(buffer, " -quiet");
	.loc 1 753 5
	leaq	-288(%rbp), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	strlen@PLT	#
	movq	%rax, %rdx	# tmp101, _17
# i_sound.c:753:     strcat(buffer, " -quiet");
	.loc 1 753 5 is_stmt 0 discriminator 1
	leaq	-288(%rbp), %rax	#, tmp102
	addq	%rdx, %rax	# _17, _18
	movabsq	$32762600914758944, %rbx	#, tmp111
	movq	%rbx, (%rax)	# tmp111, MEM <char[1:8]> [(void *)_18]
# i_sound.c:754:     sndserver = popen(buffer, "w");
	.loc 1 754 17 is_stmt 1
	leaq	-288(%rbp), %rax	#, tmp103
	leaq	.LC15(%rip), %rdx	#, tmp104
	movq	%rdx, %rsi	# tmp104,
	movq	%rax, %rdi	# tmp103,
	call	popen@PLT	#
# i_sound.c:754:     sndserver = popen(buffer, "w");
	.loc 1 754 15 discriminator 1
	movq	%rax, sndserver(%rip)	# _6, sndserver
# i_sound.c:825: }
	.loc 1 825 1
	jmp	.L71	#
.L68:
# i_sound.c:757:     fprintf(stderr, "Could not start sound server [%s]\n", buffer);
	.loc 1 757 5
	movq	stderr(%rip), %rax	# stderr, stderr.17_7
	leaq	-288(%rbp), %rdx	#, tmp106
	leaq	.LC16(%rip), %rcx	#, tmp107
	movq	%rcx, %rsi	# tmp107,
	movq	%rax, %rdi	# stderr.17_7,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
.L71:
# i_sound.c:825: }
	.loc 1 825 1
	nop	
	movq	-24(%rbp), %rax	# D.8759, tmp109
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp109
	je	.L70	#,
	call	__stack_chk_fail@PLT	#
.L70:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE20:
	.size	I_InitSound, .-I_InitSound
	.globl	I_InitMusic
	.type	I_InitMusic, @function
I_InitMusic:
.LFB21:
	.loc 1 835 25
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# i_sound.c:835: void I_InitMusic(void)		{ }
	.loc 1 835 27
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE21:
	.size	I_InitMusic, .-I_InitMusic
	.globl	I_ShutdownMusic
	.type	I_ShutdownMusic, @function
I_ShutdownMusic:
.LFB22:
	.loc 1 836 28
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# i_sound.c:836: void I_ShutdownMusic(void)	{ }
	.loc 1 836 30
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE22:
	.size	I_ShutdownMusic, .-I_ShutdownMusic
	.local	looping
	.comm	looping,4,4
	.data
	.align 4
	.type	musicdies, @object
	.size	musicdies, 4
musicdies:
	.long	-1
	.text
	.globl	I_PlaySong
	.type	I_PlaySong, @function
I_PlaySong:
.LFB23:
	.loc 1 842 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# handle, handle
	movl	%esi, -8(%rbp)	# looping, looping
# i_sound.c:844:   handle = looping = 0;
	.loc 1 844 20
	movl	$0, -8(%rbp)	#, looping
# i_sound.c:844:   handle = looping = 0;
	.loc 1 844 10
	movl	-8(%rbp), %eax	# looping, tmp84
	movl	%eax, -4(%rbp)	# tmp84, handle
# i_sound.c:845:   musicdies = gametic + TICRATE*30;
	.loc 1 845 23
	movl	gametic(%rip), %eax	# gametic, gametic.18_1
	addl	$1050, %eax	#, _2
# i_sound.c:845:   musicdies = gametic + TICRATE*30;
	.loc 1 845 13
	movl	%eax, musicdies(%rip)	# _2, musicdies
# i_sound.c:846: }
	.loc 1 846 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE23:
	.size	I_PlaySong, .-I_PlaySong
	.globl	I_PauseSong
	.type	I_PauseSong, @function
I_PauseSong:
.LFB24:
	.loc 1 849 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# handle, handle
# i_sound.c:851:   handle = 0;
	.loc 1 851 10
	movl	$0, -4(%rbp)	#, handle
# i_sound.c:852: }
	.loc 1 852 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE24:
	.size	I_PauseSong, .-I_PauseSong
	.globl	I_ResumeSong
	.type	I_ResumeSong, @function
I_ResumeSong:
.LFB25:
	.loc 1 855 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# handle, handle
# i_sound.c:857:   handle = 0;
	.loc 1 857 10
	movl	$0, -4(%rbp)	#, handle
# i_sound.c:858: }
	.loc 1 858 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE25:
	.size	I_ResumeSong, .-I_ResumeSong
	.globl	I_StopSong
	.type	I_StopSong, @function
I_StopSong:
.LFB26:
	.loc 1 861 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# handle, handle
# i_sound.c:863:   handle = 0;
	.loc 1 863 10
	movl	$0, -4(%rbp)	#, handle
# i_sound.c:865:   looping = 0;
	.loc 1 865 11
	movl	$0, looping(%rip)	#, looping
# i_sound.c:866:   musicdies = 0;
	.loc 1 866 13
	movl	$0, musicdies(%rip)	#, musicdies
# i_sound.c:867: }
	.loc 1 867 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE26:
	.size	I_StopSong, .-I_StopSong
	.globl	I_UnRegisterSong
	.type	I_UnRegisterSong, @function
I_UnRegisterSong:
.LFB27:
	.loc 1 870 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# handle, handle
# i_sound.c:872:   handle = 0;
	.loc 1 872 10
	movl	$0, -4(%rbp)	#, handle
# i_sound.c:873: }
	.loc 1 873 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE27:
	.size	I_UnRegisterSong, .-I_UnRegisterSong
	.globl	I_RegisterSong
	.type	I_RegisterSong, @function
I_RegisterSong:
.LFB28:
	.loc 1 876 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# data, data
# i_sound.c:878:   data = NULL;
	.loc 1 878 8
	movq	$0, -8(%rbp)	#, data
# i_sound.c:880:   return 1;
	.loc 1 880 10
	movl	$1, %eax	#, _2
# i_sound.c:881: }
	.loc 1 881 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE28:
	.size	I_RegisterSong, .-I_RegisterSong
	.globl	I_QrySongPlaying
	.type	I_QrySongPlaying, @function
I_QrySongPlaying:
.LFB29:
	.loc 1 885 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# handle, handle
# i_sound.c:887:   handle = 0;
	.loc 1 887 10
	movl	$0, -4(%rbp)	#, handle
# i_sound.c:888:   return looping || musicdies > gametic;
	.loc 1 888 10
	movl	looping(%rip), %eax	# looping, looping.20_1
# i_sound.c:888:   return looping || musicdies > gametic;
	.loc 1 888 18
	testl	%eax, %eax	# looping.20_1
	jne	.L82	#,
# i_sound.c:888:   return looping || musicdies > gametic;
	.loc 1 888 31 discriminator 2
	movl	musicdies(%rip), %edx	# musicdies, musicdies.21_2
	movl	gametic(%rip), %eax	# gametic, gametic.22_3
# i_sound.c:888:   return looping || musicdies > gametic;
	.loc 1 888 18 discriminator 2
	cmpl	%eax, %edx	# gametic.22_3, musicdies.21_2
	jle	.L83	#,
.L82:
# i_sound.c:888:   return looping || musicdies > gametic;
	.loc 1 888 18 is_stmt 0 discriminator 3
	movl	$1, %eax	#, iftmp.19_4
# i_sound.c:888:   return looping || musicdies > gametic;
	.loc 1 888 18
	jmp	.L85	#
.L83:
# i_sound.c:888:   return looping || musicdies > gametic;
	.loc 1 888 18 discriminator 4
	movl	$0, %eax	#, iftmp.19_4
.L85:
# i_sound.c:889: }
	.loc 1 889 1 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE29:
	.size	I_QrySongPlaying, .-I_QrySongPlaying
	.local	itimer
	.comm	itimer,4,4
	.data
	.align 4
	.type	sig, @object
	.size	sig, 4
sig:
	.long	14
	.text
	.globl	I_HandleSoundTimer
	.type	I_HandleSoundTimer, @function
I_HandleSoundTimer:
.LFB30:
	.loc 1 918 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# ignore, ignore
# i_sound.c:923:   if ( flag )
	.loc 1 923 8
	movl	flag(%rip), %eax	# flag, flag.23_1
# i_sound.c:923:   if ( flag )
	.loc 1 923 6
	testl	%eax, %eax	# flag.23_1
	je	.L90	#,
# i_sound.c:927:     write(audio_fd, mixbuffer, SAMPLECOUNT*BUFMUL);
	.loc 1 927 5
	movl	audio_fd(%rip), %eax	# audio_fd, audio_fd.24_2
	movl	$2048, %edx	#,
	leaq	mixbuffer(%rip), %rcx	#, tmp84
	movq	%rcx, %rsi	# tmp84,
	movl	%eax, %edi	# audio_fd.24_2,
	call	write@PLT	#
# i_sound.c:930:     flag = 0;
	.loc 1 930 10
	movl	$0, flag(%rip)	#, flag
# i_sound.c:936:   ignore = 0;
	.loc 1 936 10
	movl	$0, -4(%rbp)	#, ignore
# i_sound.c:937:   return;
	.loc 1 937 3
	jmp	.L86	#
.L90:
# i_sound.c:933:     return;
	.loc 1 933 5
	nop	
.L86:
# i_sound.c:938: }
	.loc 1 938 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE30:
	.size	I_HandleSoundTimer, .-I_HandleSoundTimer
	.section	.rodata
	.align 8
.LC17:
	.string	"I_SoundSetTimer: interrupt n.a.\n"
	.text
	.globl	I_SoundSetTimer
	.type	I_SoundSetTimer, @function
I_SoundSetTimer:
.LFB31:
	.loc 1 942 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$416, %rsp	#,
	movl	%edi, -404(%rbp)	# duration_of_tick, duration_of_tick
# i_sound.c:942: {
	.loc 1 942 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp99
	movq	%rax, -8(%rbp)	# tmp99, D.8765
	xorl	%eax, %eax	# tmp99
# i_sound.c:955:   act.sa_handler = I_HandleSoundTimer;
	.loc 1 955 18
	leaq	I_HandleSoundTimer(%rip), %rax	#, tmp89
	movq	%rax, -320(%rbp)	# tmp89, act.__sigaction_handler.sa_handler
# i_sound.c:959:   act.sa_flags = SA_RESTART;
	.loc 1 959 16
	movl	$268435456, -184(%rbp)	#, act.sa_flags
# i_sound.c:961:   sigaction( sig, &act, &oact );
	.loc 1 961 3
	movl	sig(%rip), %eax	# sig, sig.25_1
	leaq	-160(%rbp), %rdx	#, tmp90
	leaq	-320(%rbp), %rcx	#, tmp91
	movq	%rcx, %rsi	# tmp91,
	movl	%eax, %edi	# sig.25_1,
	call	sigaction@PLT	#
# i_sound.c:963:   value.it_interval.tv_sec    = 0;
	.loc 1 963 31
	movq	$0, -384(%rbp)	#, value.it_interval.tv_sec
# i_sound.c:964:   value.it_interval.tv_usec   = duration_of_tick;
	.loc 1 964 31
	movl	-404(%rbp), %eax	# duration_of_tick, tmp92
	cltq
	movq	%rax, -376(%rbp)	# _2, value.it_interval.tv_usec
# i_sound.c:965:   value.it_value.tv_sec       = 0;
	.loc 1 965 31
	movq	$0, -368(%rbp)	#, value.it_value.tv_sec
# i_sound.c:966:   value.it_value.tv_usec      = duration_of_tick;
	.loc 1 966 31
	movl	-404(%rbp), %eax	# duration_of_tick, tmp93
	cltq
	movq	%rax, -360(%rbp)	# _3, value.it_value.tv_usec
# i_sound.c:969:   res = setitimer( itimer, &value, &ovalue );
	.loc 1 969 9
	movl	itimer(%rip), %eax	# itimer, itimer.26_4
	leaq	-352(%rbp), %rdx	#, tmp94
	leaq	-384(%rbp), %rcx	#, tmp95
	movq	%rcx, %rsi	# tmp95,
	movl	%eax, %edi	# itimer.26_4,
	call	setitimer@PLT	#
	movl	%eax, -388(%rbp)	# tmp96, res
# i_sound.c:972:   if ( res == -1 )
	.loc 1 972 6
	cmpl	$-1, -388(%rbp)	#, res
	jne	.L92	#,
# i_sound.c:973:     fprintf( stderr, "I_SoundSetTimer: interrupt n.a.\n");
	.loc 1 973 5
	movq	stderr(%rip), %rax	# stderr, stderr.27_5
	movq	%rax, %rcx	# stderr.27_5,
	movl	$32, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC17(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	fwrite@PLT	#
.L92:
# i_sound.c:975:   return res;
	.loc 1 975 10
	movl	-388(%rbp), %eax	# res, _19
# i_sound.c:976: }
	.loc 1 976 1
	movq	-8(%rbp), %rdx	# D.8765, tmp100
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp100
	je	.L94	#,
	call	__stack_chk_fail@PLT	#
.L94:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE31:
	.size	I_SoundSetTimer, .-I_SoundSetTimer
	.section	.rodata
	.align 8
.LC18:
	.string	"I_SoundDelTimer: failed to remove interrupt. Doh!\n"
	.text
	.globl	I_SoundDelTimer
	.type	I_SoundDelTimer, @function
I_SoundDelTimer:
.LFB32:
	.loc 1 981 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# i_sound.c:983:   if ( I_SoundSetTimer( 0 ) == -1)
	.loc 1 983 8
	movl	$0, %edi	#,
	call	I_SoundSetTimer	#
# i_sound.c:983:   if ( I_SoundSetTimer( 0 ) == -1)
	.loc 1 983 6 discriminator 1
	cmpl	$-1, %eax	#, _1
	jne	.L97	#,
# i_sound.c:984:     fprintf( stderr, "I_SoundDelTimer: failed to remove interrupt. Doh!\n");
	.loc 1 984 5
	movq	stderr(%rip), %rax	# stderr, stderr.28_2
	movq	%rax, %rcx	# stderr.28_2,
	movl	$50, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC18(%rip), %rax	#, tmp84
	movq	%rax, %rdi	# tmp84,
	call	fwrite@PLT	#
.L97:
# i_sound.c:985: }
	.loc 1 985 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE32:
	.size	I_SoundDelTimer, .-I_SoundDelTimer
	.local	handlenums.0
	.comm	handlenums.0,2,2
	.section	.rodata
	.align 8
.LC7:
	.long	0
	.long	1078984704
	.align 8
.LC8:
	.long	0
	.long	1073741824
	.align 8
.LC9:
	.long	0
	.long	1089470464
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h"
	.file 9 "/usr/include/x86_64-linux-gnu/sys/time.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/__sigval_t.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h"
	.file 12 "/usr/include/signal.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/sigaction.h"
	.file 14 "doomdef.h"
	.file 15 "i_sound.h"
	.file 16 "info.h"
	.file 17 "p_pspr.h"
	.file 18 "doomstat.h"
	.file 19 "sounds.h"
	.file 20 "/usr/include/unistd.h"
	.file 21 "/usr/include/stdlib.h"
	.file 22 "i_system.h"
	.file 23 "z_zone.h"
	.file 24 "/usr/include/string.h"
	.file 25 "w_wad.h"
	.file 26 "/usr/include/x86_64-linux-gnu/sys/ioctl.h"
	.file 27 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.file 28 "/usr/include/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x37c2
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x29
	.long	.LASF1614
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
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.long	0x2e
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x19
	.long	0x4a
	.uleb128 0x13
	.long	.LASF1522
	.byte	0x19
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x8
	.long	.LASF9
	.byte	0x2
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2a
	.byte	0x8
	.uleb128 0xd
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0xd
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0xd
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2b
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.long	.LASF10
	.byte	0x3
	.byte	0x2a
	.byte	0x16
	.long	0x77
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x8
	.long	.LASF12
	.byte	0x3
	.byte	0x92
	.byte	0x19
	.long	0x77
	.uleb128 0x8
	.long	.LASF13
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0xaf
	.uleb128 0x8
	.long	.LASF14
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0xaf
	.uleb128 0x8
	.long	.LASF15
	.byte	0x3
	.byte	0x9a
	.byte	0x19
	.long	0x9c
	.uleb128 0x8
	.long	.LASF16
	.byte	0x3
	.byte	0x9c
	.byte	0x1b
	.long	0xaf
	.uleb128 0x8
	.long	.LASF17
	.byte	0x3
	.byte	0xa0
	.byte	0x1a
	.long	0xaf
	.uleb128 0x8
	.long	.LASF18
	.byte	0x3
	.byte	0xa2
	.byte	0x1f
	.long	0xaf
	.uleb128 0x8
	.long	.LASF19
	.byte	0x3
	.byte	0xc2
	.byte	0x1b
	.long	0xaf
	.uleb128 0x6
	.long	0x4a
	.uleb128 0x18
	.long	.LASF57
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.long	0x2a1
	.uleb128 0x3
	.long	.LASF20
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x9c
	.byte	0
	.uleb128 0x3
	.long	.LASF21
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0x116
	.byte	0x8
	.uleb128 0x3
	.long	.LASF22
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0x116
	.byte	0x10
	.uleb128 0x3
	.long	.LASF23
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0x116
	.byte	0x18
	.uleb128 0x3
	.long	.LASF24
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0x116
	.byte	0x20
	.uleb128 0x3
	.long	.LASF25
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0x116
	.byte	0x28
	.uleb128 0x3
	.long	.LASF26
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0x116
	.byte	0x30
	.uleb128 0x3
	.long	.LASF27
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0x116
	.byte	0x38
	.uleb128 0x3
	.long	.LASF28
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0x116
	.byte	0x40
	.uleb128 0x3
	.long	.LASF29
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0x116
	.byte	0x48
	.uleb128 0x3
	.long	.LASF30
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0x116
	.byte	0x50
	.uleb128 0x3
	.long	.LASF31
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0x116
	.byte	0x58
	.uleb128 0x3
	.long	.LASF32
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x2ba
	.byte	0x60
	.uleb128 0x3
	.long	.LASF33
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x2bf
	.byte	0x68
	.uleb128 0x3
	.long	.LASF34
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x9c
	.byte	0x70
	.uleb128 0x3
	.long	.LASF35
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x9c
	.byte	0x74
	.uleb128 0x3
	.long	.LASF36
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0xc2
	.byte	0x78
	.uleb128 0x3
	.long	.LASF37
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x87
	.byte	0x80
	.uleb128 0x3
	.long	.LASF38
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x8e
	.byte	0x82
	.uleb128 0x3
	.long	.LASF39
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x2c4
	.byte	0x83
	.uleb128 0x3
	.long	.LASF40
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x2d4
	.byte	0x88
	.uleb128 0x3
	.long	.LASF41
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0xce
	.byte	0x90
	.uleb128 0x3
	.long	.LASF42
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x2de
	.byte	0x98
	.uleb128 0x3
	.long	.LASF43
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x2e8
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF44
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x2bf
	.byte	0xa8
	.uleb128 0x3
	.long	.LASF45
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x7e
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF46
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x6b
	.byte	0xb8
	.uleb128 0x3
	.long	.LASF47
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x9c
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF48
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x2ed
	.byte	0xc4
	.byte	0
	.uleb128 0x8
	.long	.LASF49
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0x11b
	.uleb128 0x2c
	.long	.LASF1615
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0x1c
	.long	.LASF50
	.uleb128 0x6
	.long	0x2b5
	.uleb128 0x6
	.long	0x11b
	.uleb128 0x9
	.long	0x4a
	.long	0x2d4
	.uleb128 0xb
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x2ad
	.uleb128 0x1c
	.long	.LASF51
	.uleb128 0x6
	.long	0x2d9
	.uleb128 0x1c
	.long	.LASF52
	.uleb128 0x6
	.long	0x2e3
	.uleb128 0x9
	.long	0x4a
	.long	0x2fd
	.uleb128 0xb
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.long	0x51
	.uleb128 0x15
	.long	0x2fd
	.uleb128 0x8
	.long	.LASF53
	.byte	0x6
	.byte	0x4e
	.byte	0x13
	.long	0x10a
	.uleb128 0x6
	.long	0x2a1
	.uleb128 0x15
	.long	0x313
	.uleb128 0x14
	.long	.LASF146
	.byte	0x6
	.byte	0x97
	.byte	0xe
	.long	0x313
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.long	.LASF54
	.uleb128 0xe
	.byte	0x80
	.byte	0x7
	.byte	0x5
	.byte	0x9
	.long	0x347
	.uleb128 0x3
	.long	.LASF55
	.byte	0x7
	.byte	0x7
	.byte	0x15
	.long	0x347
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x43
	.long	0x357
	.uleb128 0xb
	.long	0x43
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.long	.LASF56
	.byte	0x7
	.byte	0x8
	.byte	0x3
	.long	0x330
	.uleb128 0x18
	.long	.LASF58
	.byte	0x10
	.byte	0x8
	.byte	0x8
	.long	0x38a
	.uleb128 0x3
	.long	.LASF59
	.byte	0x8
	.byte	0xe
	.byte	0xc
	.long	0xf2
	.byte	0
	.uleb128 0x3
	.long	.LASF60
	.byte	0x8
	.byte	0xf
	.byte	0x11
	.long	0xfe
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.long	.LASF61
	.uleb128 0x6
	.long	0x396
	.uleb128 0x2d
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.long	.LASF62
	.uleb128 0xd
	.byte	0x8
	.byte	0x4
	.long	.LASF63
	.uleb128 0x2e
	.long	.LASF1616
	.byte	0x7
	.byte	0x4
	.long	0x77
	.byte	0x9
	.byte	0x72
	.byte	0x6
	.long	0x3ca
	.uleb128 0x2
	.long	.LASF64
	.byte	0
	.uleb128 0x2
	.long	.LASF65
	.byte	0x1
	.uleb128 0x2
	.long	.LASF66
	.byte	0x2
	.byte	0
	.uleb128 0x18
	.long	.LASF67
	.byte	0x20
	.byte	0x9
	.byte	0x82
	.long	0x3f1
	.uleb128 0x3
	.long	.LASF68
	.byte	0x9
	.byte	0x85
	.byte	0x14
	.long	0x363
	.byte	0
	.uleb128 0x3
	.long	.LASF69
	.byte	0x9
	.byte	0x87
	.byte	0x14
	.long	0x363
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.long	0x3ca
	.uleb128 0x8
	.long	.LASF70
	.byte	0x9
	.byte	0x8f
	.byte	0xd
	.long	0x9c
	.uleb128 0x2f
	.long	.LASF1617
	.byte	0x8
	.byte	0xa
	.byte	0x18
	.byte	0x7
	.long	0x428
	.uleb128 0xc
	.long	.LASF71
	.byte	0xa
	.byte	0x1a
	.byte	0x7
	.long	0x9c
	.uleb128 0xc
	.long	.LASF72
	.byte	0xa
	.byte	0x1b
	.byte	0x9
	.long	0x7e
	.byte	0
	.uleb128 0x8
	.long	.LASF73
	.byte	0xa
	.byte	0x1e
	.byte	0x16
	.long	0x402
	.uleb128 0xe
	.byte	0x8
	.byte	0xb
	.byte	0x38
	.byte	0x2
	.long	0x458
	.uleb128 0x3
	.long	.LASF74
	.byte	0xb
	.byte	0x3a
	.byte	0xe
	.long	0xda
	.byte	0
	.uleb128 0x3
	.long	.LASF75
	.byte	0xb
	.byte	0x3b
	.byte	0xe
	.long	0xb6
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x10
	.byte	0xb
	.byte	0x3f
	.byte	0x2
	.long	0x489
	.uleb128 0x3
	.long	.LASF76
	.byte	0xb
	.byte	0x41
	.byte	0xa
	.long	0x9c
	.byte	0
	.uleb128 0x3
	.long	.LASF77
	.byte	0xb
	.byte	0x42
	.byte	0xa
	.long	0x9c
	.byte	0x4
	.uleb128 0x3
	.long	.LASF78
	.byte	0xb
	.byte	0x43
	.byte	0x11
	.long	0x428
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x10
	.byte	0xb
	.byte	0x47
	.byte	0x2
	.long	0x4ba
	.uleb128 0x3
	.long	.LASF74
	.byte	0xb
	.byte	0x49
	.byte	0xe
	.long	0xda
	.byte	0
	.uleb128 0x3
	.long	.LASF75
	.byte	0xb
	.byte	0x4a
	.byte	0xe
	.long	0xb6
	.byte	0x4
	.uleb128 0x3
	.long	.LASF78
	.byte	0xb
	.byte	0x4b
	.byte	0x11
	.long	0x428
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x20
	.byte	0xb
	.byte	0x4f
	.byte	0x2
	.long	0x505
	.uleb128 0x3
	.long	.LASF74
	.byte	0xb
	.byte	0x51
	.byte	0xe
	.long	0xda
	.byte	0
	.uleb128 0x3
	.long	.LASF75
	.byte	0xb
	.byte	0x52
	.byte	0xe
	.long	0xb6
	.byte	0x4
	.uleb128 0x3
	.long	.LASF79
	.byte	0xb
	.byte	0x53
	.byte	0xa
	.long	0x9c
	.byte	0x8
	.uleb128 0x3
	.long	.LASF80
	.byte	0xb
	.byte	0x54
	.byte	0x13
	.long	0xe6
	.byte	0x10
	.uleb128 0x3
	.long	.LASF81
	.byte	0xb
	.byte	0x55
	.byte	0x13
	.long	0xe6
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.byte	0x10
	.byte	0xb
	.byte	0x61
	.byte	0x3
	.long	0x529
	.uleb128 0x3
	.long	.LASF82
	.byte	0xb
	.byte	0x63
	.byte	0xd
	.long	0x7e
	.byte	0
	.uleb128 0x3
	.long	.LASF83
	.byte	0xb
	.byte	0x64
	.byte	0xd
	.long	0x7e
	.byte	0x8
	.byte	0
	.uleb128 0x1d
	.byte	0x10
	.byte	0xb
	.byte	0x5e
	.byte	0x6
	.long	0x54b
	.uleb128 0xc
	.long	.LASF84
	.byte	0xb
	.byte	0x65
	.byte	0x7
	.long	0x505
	.uleb128 0xc
	.long	.LASF85
	.byte	0xb
	.byte	0x67
	.byte	0xe
	.long	0xa3
	.byte	0
	.uleb128 0xe
	.byte	0x20
	.byte	0xb
	.byte	0x59
	.byte	0x2
	.long	0x57c
	.uleb128 0x3
	.long	.LASF86
	.byte	0xb
	.byte	0x5b
	.byte	0xc
	.long	0x7e
	.byte	0
	.uleb128 0x3
	.long	.LASF87
	.byte	0xb
	.byte	0x5d
	.byte	0x10
	.long	0x95
	.byte	0x8
	.uleb128 0x3
	.long	.LASF88
	.byte	0xb
	.byte	0x68
	.byte	0xa
	.long	0x529
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x10
	.byte	0xb
	.byte	0x6c
	.byte	0x2
	.long	0x5a0
	.uleb128 0x3
	.long	.LASF89
	.byte	0xb
	.byte	0x6e
	.byte	0x15
	.long	0xaf
	.byte	0
	.uleb128 0x3
	.long	.LASF90
	.byte	0xb
	.byte	0x6f
	.byte	0xa
	.long	0x9c
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x10
	.byte	0xb
	.byte	0x74
	.byte	0x2
	.long	0x5d1
	.uleb128 0x3
	.long	.LASF91
	.byte	0xb
	.byte	0x76
	.byte	0xc
	.long	0x7e
	.byte	0
	.uleb128 0x3
	.long	.LASF92
	.byte	0xb
	.byte	0x77
	.byte	0xa
	.long	0x9c
	.byte	0x8
	.uleb128 0x3
	.long	.LASF93
	.byte	0xb
	.byte	0x78
	.byte	0x13
	.long	0x77
	.byte	0xc
	.byte	0
	.uleb128 0x1d
	.byte	0x70
	.byte	0xb
	.byte	0x33
	.byte	0x5
	.long	0x63b
	.uleb128 0xc
	.long	.LASF94
	.byte	0xb
	.byte	0x35
	.byte	0x6
	.long	0x63b
	.uleb128 0xc
	.long	.LASF95
	.byte	0xb
	.byte	0x3c
	.byte	0x6
	.long	0x434
	.uleb128 0xc
	.long	.LASF96
	.byte	0xb
	.byte	0x44
	.byte	0x6
	.long	0x458
	.uleb128 0x30
	.string	"_rt"
	.byte	0xb
	.byte	0x4c
	.byte	0x6
	.long	0x489
	.uleb128 0xc
	.long	.LASF97
	.byte	0xb
	.byte	0x56
	.byte	0x6
	.long	0x4ba
	.uleb128 0xc
	.long	.LASF98
	.byte	0xb
	.byte	0x69
	.byte	0x6
	.long	0x54b
	.uleb128 0xc
	.long	.LASF99
	.byte	0xb
	.byte	0x70
	.byte	0x6
	.long	0x57c
	.uleb128 0xc
	.long	.LASF100
	.byte	0xb
	.byte	0x79
	.byte	0x6
	.long	0x5a0
	.byte	0
	.uleb128 0x9
	.long	0x9c
	.long	0x64b
	.uleb128 0xb
	.long	0x43
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.byte	0x80
	.byte	0xb
	.byte	0x24
	.byte	0x9
	.long	0x696
	.uleb128 0x3
	.long	.LASF101
	.byte	0xb
	.byte	0x26
	.byte	0x9
	.long	0x9c
	.byte	0
	.uleb128 0x3
	.long	.LASF102
	.byte	0xb
	.byte	0x28
	.byte	0x9
	.long	0x9c
	.byte	0x4
	.uleb128 0x3
	.long	.LASF103
	.byte	0xb
	.byte	0x2a
	.byte	0x9
	.long	0x9c
	.byte	0x8
	.uleb128 0x3
	.long	.LASF104
	.byte	0xb
	.byte	0x30
	.byte	0x9
	.long	0x9c
	.byte	0xc
	.uleb128 0x3
	.long	.LASF105
	.byte	0xb
	.byte	0x7b
	.byte	0x9
	.long	0x5d1
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	.LASF106
	.byte	0xb
	.byte	0x7c
	.byte	0x5
	.long	0x64b
	.uleb128 0x8
	.long	.LASF107
	.byte	0xc
	.byte	0x48
	.byte	0x10
	.long	0x6ae
	.uleb128 0x6
	.long	0x6b3
	.uleb128 0x21
	.long	0x6be
	.uleb128 0x4
	.long	0x9c
	.byte	0
	.uleb128 0x1d
	.byte	0x8
	.byte	0xd
	.byte	0x1f
	.byte	0x5
	.long	0x6e0
	.uleb128 0xc
	.long	.LASF108
	.byte	0xd
	.byte	0x22
	.byte	0x11
	.long	0x6a2
	.uleb128 0xc
	.long	.LASF109
	.byte	0xd
	.byte	0x24
	.byte	0x9
	.long	0x6fa
	.byte	0
	.uleb128 0x21
	.long	0x6f5
	.uleb128 0x4
	.long	0x9c
	.uleb128 0x4
	.long	0x6f5
	.uleb128 0x4
	.long	0x7e
	.byte	0
	.uleb128 0x6
	.long	0x696
	.uleb128 0x6
	.long	0x6e0
	.uleb128 0x18
	.long	.LASF110
	.byte	0x98
	.byte	0xd
	.byte	0x1b
	.long	0x740
	.uleb128 0x3
	.long	.LASF111
	.byte	0xd
	.byte	0x26
	.byte	0x5
	.long	0x6be
	.byte	0
	.uleb128 0x3
	.long	.LASF112
	.byte	0xd
	.byte	0x2e
	.byte	0x10
	.long	0x357
	.byte	0x8
	.uleb128 0x3
	.long	.LASF113
	.byte	0xd
	.byte	0x31
	.byte	0x9
	.long	0x9c
	.byte	0x88
	.uleb128 0x3
	.long	.LASF114
	.byte	0xd
	.byte	0x34
	.byte	0xc
	.long	0x746
	.byte	0x90
	.byte	0
	.uleb128 0x19
	.long	0x6ff
	.uleb128 0x31
	.uleb128 0x6
	.long	0x745
	.uleb128 0x12
	.long	0x77
	.byte	0xe
	.byte	0xa3
	.long	0x781
	.uleb128 0x2
	.long	.LASF115
	.byte	0
	.uleb128 0x2
	.long	.LASF116
	.byte	0x1
	.uleb128 0x2
	.long	.LASF117
	.byte	0x2
	.uleb128 0x2
	.long	.LASF118
	.byte	0x3
	.uleb128 0x2
	.long	.LASF119
	.byte	0x4
	.uleb128 0x2
	.long	.LASF120
	.byte	0x5
	.uleb128 0x2
	.long	.LASF121
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.long	0x77
	.byte	0xe
	.byte	0xb5
	.long	0x7cf
	.uleb128 0x2
	.long	.LASF122
	.byte	0
	.uleb128 0x2
	.long	.LASF123
	.byte	0x1
	.uleb128 0x2
	.long	.LASF124
	.byte	0x2
	.uleb128 0x2
	.long	.LASF125
	.byte	0x3
	.uleb128 0x2
	.long	.LASF126
	.byte	0x4
	.uleb128 0x2
	.long	.LASF127
	.byte	0x5
	.uleb128 0x2
	.long	.LASF128
	.byte	0x6
	.uleb128 0x2
	.long	.LASF129
	.byte	0x7
	.uleb128 0x2
	.long	.LASF130
	.byte	0x8
	.uleb128 0x2
	.long	.LASF131
	.byte	0x9
	.uleb128 0x2
	.long	.LASF132
	.byte	0xa
	.byte	0
	.uleb128 0x12
	.long	0x77
	.byte	0xe
	.byte	0xca
	.long	0x7ff
	.uleb128 0x2
	.long	.LASF133
	.byte	0
	.uleb128 0x2
	.long	.LASF134
	.byte	0x1
	.uleb128 0x2
	.long	.LASF135
	.byte	0x2
	.uleb128 0x2
	.long	.LASF136
	.byte	0x3
	.uleb128 0x2
	.long	.LASF137
	.byte	0x4
	.uleb128 0x2
	.long	.LASF138
	.byte	0x5
	.byte	0
	.uleb128 0x12
	.long	0x77
	.byte	0xe
	.byte	0xd7
	.long	0x835
	.uleb128 0x2
	.long	.LASF139
	.byte	0
	.uleb128 0x2
	.long	.LASF140
	.byte	0x1
	.uleb128 0x2
	.long	.LASF141
	.byte	0x2
	.uleb128 0x2
	.long	.LASF142
	.byte	0x3
	.uleb128 0x2
	.long	.LASF143
	.byte	0x4
	.uleb128 0x2
	.long	.LASF144
	.byte	0x5
	.uleb128 0x2
	.long	.LASF145
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.long	.LASF147
	.byte	0xf
	.byte	0x1f
	.byte	0xe
	.long	0x313
	.uleb128 0x14
	.long	.LASF148
	.byte	0xf
	.byte	0x20
	.byte	0xe
	.long	0x116
	.uleb128 0x12
	.long	0x77
	.byte	0x10
	.byte	0x1f
	.long	0xb9b
	.uleb128 0x2
	.long	.LASF149
	.byte	0
	.uleb128 0x2
	.long	.LASF150
	.byte	0x1
	.uleb128 0x2
	.long	.LASF151
	.byte	0x2
	.uleb128 0x2
	.long	.LASF152
	.byte	0x3
	.uleb128 0x2
	.long	.LASF153
	.byte	0x4
	.uleb128 0x2
	.long	.LASF154
	.byte	0x5
	.uleb128 0x2
	.long	.LASF155
	.byte	0x6
	.uleb128 0x2
	.long	.LASF156
	.byte	0x7
	.uleb128 0x2
	.long	.LASF157
	.byte	0x8
	.uleb128 0x2
	.long	.LASF158
	.byte	0x9
	.uleb128 0x2
	.long	.LASF159
	.byte	0xa
	.uleb128 0x2
	.long	.LASF160
	.byte	0xb
	.uleb128 0x2
	.long	.LASF161
	.byte	0xc
	.uleb128 0x2
	.long	.LASF162
	.byte	0xd
	.uleb128 0x2
	.long	.LASF163
	.byte	0xe
	.uleb128 0x2
	.long	.LASF164
	.byte	0xf
	.uleb128 0x2
	.long	.LASF165
	.byte	0x10
	.uleb128 0x2
	.long	.LASF166
	.byte	0x11
	.uleb128 0x2
	.long	.LASF167
	.byte	0x12
	.uleb128 0x2
	.long	.LASF168
	.byte	0x13
	.uleb128 0x2
	.long	.LASF169
	.byte	0x14
	.uleb128 0x2
	.long	.LASF170
	.byte	0x15
	.uleb128 0x2
	.long	.LASF171
	.byte	0x16
	.uleb128 0x2
	.long	.LASF172
	.byte	0x17
	.uleb128 0x2
	.long	.LASF173
	.byte	0x18
	.uleb128 0x2
	.long	.LASF174
	.byte	0x19
	.uleb128 0x2
	.long	.LASF175
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF176
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF177
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF178
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF179
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF180
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF181
	.byte	0x20
	.uleb128 0x2
	.long	.LASF182
	.byte	0x21
	.uleb128 0x2
	.long	.LASF183
	.byte	0x22
	.uleb128 0x2
	.long	.LASF184
	.byte	0x23
	.uleb128 0x2
	.long	.LASF185
	.byte	0x24
	.uleb128 0x2
	.long	.LASF186
	.byte	0x25
	.uleb128 0x2
	.long	.LASF187
	.byte	0x26
	.uleb128 0x2
	.long	.LASF188
	.byte	0x27
	.uleb128 0x2
	.long	.LASF189
	.byte	0x28
	.uleb128 0x2
	.long	.LASF190
	.byte	0x29
	.uleb128 0x2
	.long	.LASF191
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF192
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF193
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF194
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF195
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF196
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF197
	.byte	0x30
	.uleb128 0x2
	.long	.LASF198
	.byte	0x31
	.uleb128 0x2
	.long	.LASF199
	.byte	0x32
	.uleb128 0x2
	.long	.LASF200
	.byte	0x33
	.uleb128 0x2
	.long	.LASF201
	.byte	0x34
	.uleb128 0x2
	.long	.LASF202
	.byte	0x35
	.uleb128 0x2
	.long	.LASF203
	.byte	0x36
	.uleb128 0x2
	.long	.LASF204
	.byte	0x37
	.uleb128 0x2
	.long	.LASF205
	.byte	0x38
	.uleb128 0x2
	.long	.LASF206
	.byte	0x39
	.uleb128 0x2
	.long	.LASF207
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF208
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF209
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF210
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF211
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF212
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF213
	.byte	0x40
	.uleb128 0x2
	.long	.LASF214
	.byte	0x41
	.uleb128 0x2
	.long	.LASF215
	.byte	0x42
	.uleb128 0x2
	.long	.LASF216
	.byte	0x43
	.uleb128 0x2
	.long	.LASF217
	.byte	0x44
	.uleb128 0x2
	.long	.LASF218
	.byte	0x45
	.uleb128 0x2
	.long	.LASF219
	.byte	0x46
	.uleb128 0x2
	.long	.LASF220
	.byte	0x47
	.uleb128 0x2
	.long	.LASF221
	.byte	0x48
	.uleb128 0x2
	.long	.LASF222
	.byte	0x49
	.uleb128 0x2
	.long	.LASF223
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF224
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF225
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF226
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF227
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF228
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF229
	.byte	0x50
	.uleb128 0x2
	.long	.LASF230
	.byte	0x51
	.uleb128 0x2
	.long	.LASF231
	.byte	0x52
	.uleb128 0x2
	.long	.LASF232
	.byte	0x53
	.uleb128 0x2
	.long	.LASF233
	.byte	0x54
	.uleb128 0x2
	.long	.LASF234
	.byte	0x55
	.uleb128 0x2
	.long	.LASF235
	.byte	0x56
	.uleb128 0x2
	.long	.LASF236
	.byte	0x57
	.uleb128 0x2
	.long	.LASF237
	.byte	0x58
	.uleb128 0x2
	.long	.LASF238
	.byte	0x59
	.uleb128 0x2
	.long	.LASF239
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF240
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF241
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF242
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF243
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF244
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF245
	.byte	0x60
	.uleb128 0x2
	.long	.LASF246
	.byte	0x61
	.uleb128 0x2
	.long	.LASF247
	.byte	0x62
	.uleb128 0x2
	.long	.LASF248
	.byte	0x63
	.uleb128 0x2
	.long	.LASF249
	.byte	0x64
	.uleb128 0x2
	.long	.LASF250
	.byte	0x65
	.uleb128 0x2
	.long	.LASF251
	.byte	0x66
	.uleb128 0x2
	.long	.LASF252
	.byte	0x67
	.uleb128 0x2
	.long	.LASF253
	.byte	0x68
	.uleb128 0x2
	.long	.LASF254
	.byte	0x69
	.uleb128 0x2
	.long	.LASF255
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF256
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF257
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF258
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF259
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF260
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF261
	.byte	0x70
	.uleb128 0x2
	.long	.LASF262
	.byte	0x71
	.uleb128 0x2
	.long	.LASF263
	.byte	0x72
	.uleb128 0x2
	.long	.LASF264
	.byte	0x73
	.uleb128 0x2
	.long	.LASF265
	.byte	0x74
	.uleb128 0x2
	.long	.LASF266
	.byte	0x75
	.uleb128 0x2
	.long	.LASF267
	.byte	0x76
	.uleb128 0x2
	.long	.LASF268
	.byte	0x77
	.uleb128 0x2
	.long	.LASF269
	.byte	0x78
	.uleb128 0x2
	.long	.LASF270
	.byte	0x79
	.uleb128 0x2
	.long	.LASF271
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF272
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF273
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF274
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF275
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF276
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF277
	.byte	0x80
	.uleb128 0x2
	.long	.LASF278
	.byte	0x81
	.uleb128 0x2
	.long	.LASF279
	.byte	0x82
	.uleb128 0x2
	.long	.LASF280
	.byte	0x83
	.uleb128 0x2
	.long	.LASF281
	.byte	0x84
	.uleb128 0x2
	.long	.LASF282
	.byte	0x85
	.uleb128 0x2
	.long	.LASF283
	.byte	0x86
	.uleb128 0x2
	.long	.LASF284
	.byte	0x87
	.uleb128 0x2
	.long	.LASF285
	.byte	0x88
	.uleb128 0x2
	.long	.LASF286
	.byte	0x89
	.uleb128 0x2
	.long	.LASF287
	.byte	0x8a
	.byte	0
	.uleb128 0x12
	.long	0x77
	.byte	0x10
	.byte	0xaf
	.long	0x251f
	.uleb128 0x2
	.long	.LASF288
	.byte	0
	.uleb128 0x2
	.long	.LASF289
	.byte	0x1
	.uleb128 0x2
	.long	.LASF290
	.byte	0x2
	.uleb128 0x2
	.long	.LASF291
	.byte	0x3
	.uleb128 0x2
	.long	.LASF292
	.byte	0x4
	.uleb128 0x2
	.long	.LASF293
	.byte	0x5
	.uleb128 0x2
	.long	.LASF294
	.byte	0x6
	.uleb128 0x2
	.long	.LASF295
	.byte	0x7
	.uleb128 0x2
	.long	.LASF296
	.byte	0x8
	.uleb128 0x2
	.long	.LASF297
	.byte	0x9
	.uleb128 0x2
	.long	.LASF298
	.byte	0xa
	.uleb128 0x2
	.long	.LASF299
	.byte	0xb
	.uleb128 0x2
	.long	.LASF300
	.byte	0xc
	.uleb128 0x2
	.long	.LASF301
	.byte	0xd
	.uleb128 0x2
	.long	.LASF302
	.byte	0xe
	.uleb128 0x2
	.long	.LASF303
	.byte	0xf
	.uleb128 0x2
	.long	.LASF304
	.byte	0x10
	.uleb128 0x2
	.long	.LASF305
	.byte	0x11
	.uleb128 0x2
	.long	.LASF306
	.byte	0x12
	.uleb128 0x2
	.long	.LASF307
	.byte	0x13
	.uleb128 0x2
	.long	.LASF308
	.byte	0x14
	.uleb128 0x2
	.long	.LASF309
	.byte	0x15
	.uleb128 0x2
	.long	.LASF310
	.byte	0x16
	.uleb128 0x2
	.long	.LASF311
	.byte	0x17
	.uleb128 0x2
	.long	.LASF312
	.byte	0x18
	.uleb128 0x2
	.long	.LASF313
	.byte	0x19
	.uleb128 0x2
	.long	.LASF314
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF315
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF316
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF317
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF318
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF319
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF320
	.byte	0x20
	.uleb128 0x2
	.long	.LASF321
	.byte	0x21
	.uleb128 0x2
	.long	.LASF322
	.byte	0x22
	.uleb128 0x2
	.long	.LASF323
	.byte	0x23
	.uleb128 0x2
	.long	.LASF324
	.byte	0x24
	.uleb128 0x2
	.long	.LASF325
	.byte	0x25
	.uleb128 0x2
	.long	.LASF326
	.byte	0x26
	.uleb128 0x2
	.long	.LASF327
	.byte	0x27
	.uleb128 0x2
	.long	.LASF328
	.byte	0x28
	.uleb128 0x2
	.long	.LASF329
	.byte	0x29
	.uleb128 0x2
	.long	.LASF330
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF331
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF332
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF333
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF334
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF335
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF336
	.byte	0x30
	.uleb128 0x2
	.long	.LASF337
	.byte	0x31
	.uleb128 0x2
	.long	.LASF338
	.byte	0x32
	.uleb128 0x2
	.long	.LASF339
	.byte	0x33
	.uleb128 0x2
	.long	.LASF340
	.byte	0x34
	.uleb128 0x2
	.long	.LASF341
	.byte	0x35
	.uleb128 0x2
	.long	.LASF342
	.byte	0x36
	.uleb128 0x2
	.long	.LASF343
	.byte	0x37
	.uleb128 0x2
	.long	.LASF344
	.byte	0x38
	.uleb128 0x2
	.long	.LASF345
	.byte	0x39
	.uleb128 0x2
	.long	.LASF346
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF347
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF348
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF349
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF350
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF351
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF352
	.byte	0x40
	.uleb128 0x2
	.long	.LASF353
	.byte	0x41
	.uleb128 0x2
	.long	.LASF354
	.byte	0x42
	.uleb128 0x2
	.long	.LASF355
	.byte	0x43
	.uleb128 0x2
	.long	.LASF356
	.byte	0x44
	.uleb128 0x2
	.long	.LASF357
	.byte	0x45
	.uleb128 0x2
	.long	.LASF358
	.byte	0x46
	.uleb128 0x2
	.long	.LASF359
	.byte	0x47
	.uleb128 0x2
	.long	.LASF360
	.byte	0x48
	.uleb128 0x2
	.long	.LASF361
	.byte	0x49
	.uleb128 0x2
	.long	.LASF362
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF363
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF364
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF365
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF366
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF367
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF368
	.byte	0x50
	.uleb128 0x2
	.long	.LASF369
	.byte	0x51
	.uleb128 0x2
	.long	.LASF370
	.byte	0x52
	.uleb128 0x2
	.long	.LASF371
	.byte	0x53
	.uleb128 0x2
	.long	.LASF372
	.byte	0x54
	.uleb128 0x2
	.long	.LASF373
	.byte	0x55
	.uleb128 0x2
	.long	.LASF374
	.byte	0x56
	.uleb128 0x2
	.long	.LASF375
	.byte	0x57
	.uleb128 0x2
	.long	.LASF376
	.byte	0x58
	.uleb128 0x2
	.long	.LASF377
	.byte	0x59
	.uleb128 0x2
	.long	.LASF378
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF379
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF380
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF381
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF382
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF383
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF384
	.byte	0x60
	.uleb128 0x2
	.long	.LASF385
	.byte	0x61
	.uleb128 0x2
	.long	.LASF386
	.byte	0x62
	.uleb128 0x2
	.long	.LASF387
	.byte	0x63
	.uleb128 0x2
	.long	.LASF388
	.byte	0x64
	.uleb128 0x2
	.long	.LASF389
	.byte	0x65
	.uleb128 0x2
	.long	.LASF390
	.byte	0x66
	.uleb128 0x2
	.long	.LASF391
	.byte	0x67
	.uleb128 0x2
	.long	.LASF392
	.byte	0x68
	.uleb128 0x2
	.long	.LASF393
	.byte	0x69
	.uleb128 0x2
	.long	.LASF394
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF395
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF396
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF397
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF398
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF399
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF400
	.byte	0x70
	.uleb128 0x2
	.long	.LASF401
	.byte	0x71
	.uleb128 0x2
	.long	.LASF402
	.byte	0x72
	.uleb128 0x2
	.long	.LASF403
	.byte	0x73
	.uleb128 0x2
	.long	.LASF404
	.byte	0x74
	.uleb128 0x2
	.long	.LASF405
	.byte	0x75
	.uleb128 0x2
	.long	.LASF406
	.byte	0x76
	.uleb128 0x2
	.long	.LASF407
	.byte	0x77
	.uleb128 0x2
	.long	.LASF408
	.byte	0x78
	.uleb128 0x2
	.long	.LASF409
	.byte	0x79
	.uleb128 0x2
	.long	.LASF410
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF411
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF412
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF413
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF414
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF415
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF416
	.byte	0x80
	.uleb128 0x2
	.long	.LASF417
	.byte	0x81
	.uleb128 0x2
	.long	.LASF418
	.byte	0x82
	.uleb128 0x2
	.long	.LASF419
	.byte	0x83
	.uleb128 0x2
	.long	.LASF420
	.byte	0x84
	.uleb128 0x2
	.long	.LASF421
	.byte	0x85
	.uleb128 0x2
	.long	.LASF422
	.byte	0x86
	.uleb128 0x2
	.long	.LASF423
	.byte	0x87
	.uleb128 0x2
	.long	.LASF424
	.byte	0x88
	.uleb128 0x2
	.long	.LASF425
	.byte	0x89
	.uleb128 0x2
	.long	.LASF426
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF427
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF428
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF429
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF430
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF431
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF432
	.byte	0x90
	.uleb128 0x2
	.long	.LASF433
	.byte	0x91
	.uleb128 0x2
	.long	.LASF434
	.byte	0x92
	.uleb128 0x2
	.long	.LASF435
	.byte	0x93
	.uleb128 0x2
	.long	.LASF436
	.byte	0x94
	.uleb128 0x2
	.long	.LASF437
	.byte	0x95
	.uleb128 0x2
	.long	.LASF438
	.byte	0x96
	.uleb128 0x2
	.long	.LASF439
	.byte	0x97
	.uleb128 0x2
	.long	.LASF440
	.byte	0x98
	.uleb128 0x2
	.long	.LASF441
	.byte	0x99
	.uleb128 0x2
	.long	.LASF442
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF443
	.byte	0x9b
	.uleb128 0x2
	.long	.LASF444
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF445
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF446
	.byte	0x9e
	.uleb128 0x2
	.long	.LASF447
	.byte	0x9f
	.uleb128 0x2
	.long	.LASF448
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF449
	.byte	0xa1
	.uleb128 0x2
	.long	.LASF450
	.byte	0xa2
	.uleb128 0x2
	.long	.LASF451
	.byte	0xa3
	.uleb128 0x2
	.long	.LASF452
	.byte	0xa4
	.uleb128 0x2
	.long	.LASF453
	.byte	0xa5
	.uleb128 0x2
	.long	.LASF454
	.byte	0xa6
	.uleb128 0x2
	.long	.LASF455
	.byte	0xa7
	.uleb128 0x2
	.long	.LASF456
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF457
	.byte	0xa9
	.uleb128 0x2
	.long	.LASF458
	.byte	0xaa
	.uleb128 0x2
	.long	.LASF459
	.byte	0xab
	.uleb128 0x2
	.long	.LASF460
	.byte	0xac
	.uleb128 0x2
	.long	.LASF461
	.byte	0xad
	.uleb128 0x2
	.long	.LASF462
	.byte	0xae
	.uleb128 0x2
	.long	.LASF463
	.byte	0xaf
	.uleb128 0x2
	.long	.LASF464
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF465
	.byte	0xb1
	.uleb128 0x2
	.long	.LASF466
	.byte	0xb2
	.uleb128 0x2
	.long	.LASF467
	.byte	0xb3
	.uleb128 0x2
	.long	.LASF468
	.byte	0xb4
	.uleb128 0x2
	.long	.LASF469
	.byte	0xb5
	.uleb128 0x2
	.long	.LASF470
	.byte	0xb6
	.uleb128 0x2
	.long	.LASF471
	.byte	0xb7
	.uleb128 0x2
	.long	.LASF472
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF473
	.byte	0xb9
	.uleb128 0x2
	.long	.LASF474
	.byte	0xba
	.uleb128 0x2
	.long	.LASF475
	.byte	0xbb
	.uleb128 0x2
	.long	.LASF476
	.byte	0xbc
	.uleb128 0x2
	.long	.LASF477
	.byte	0xbd
	.uleb128 0x2
	.long	.LASF478
	.byte	0xbe
	.uleb128 0x2
	.long	.LASF479
	.byte	0xbf
	.uleb128 0x2
	.long	.LASF480
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF481
	.byte	0xc1
	.uleb128 0x2
	.long	.LASF482
	.byte	0xc2
	.uleb128 0x2
	.long	.LASF483
	.byte	0xc3
	.uleb128 0x2
	.long	.LASF484
	.byte	0xc4
	.uleb128 0x2
	.long	.LASF485
	.byte	0xc5
	.uleb128 0x2
	.long	.LASF486
	.byte	0xc6
	.uleb128 0x2
	.long	.LASF487
	.byte	0xc7
	.uleb128 0x2
	.long	.LASF488
	.byte	0xc8
	.uleb128 0x2
	.long	.LASF489
	.byte	0xc9
	.uleb128 0x2
	.long	.LASF490
	.byte	0xca
	.uleb128 0x2
	.long	.LASF491
	.byte	0xcb
	.uleb128 0x2
	.long	.LASF492
	.byte	0xcc
	.uleb128 0x2
	.long	.LASF493
	.byte	0xcd
	.uleb128 0x2
	.long	.LASF494
	.byte	0xce
	.uleb128 0x2
	.long	.LASF495
	.byte	0xcf
	.uleb128 0x2
	.long	.LASF496
	.byte	0xd0
	.uleb128 0x2
	.long	.LASF497
	.byte	0xd1
	.uleb128 0x2
	.long	.LASF498
	.byte	0xd2
	.uleb128 0x2
	.long	.LASF499
	.byte	0xd3
	.uleb128 0x2
	.long	.LASF500
	.byte	0xd4
	.uleb128 0x2
	.long	.LASF501
	.byte	0xd5
	.uleb128 0x2
	.long	.LASF502
	.byte	0xd6
	.uleb128 0x2
	.long	.LASF503
	.byte	0xd7
	.uleb128 0x2
	.long	.LASF504
	.byte	0xd8
	.uleb128 0x2
	.long	.LASF505
	.byte	0xd9
	.uleb128 0x2
	.long	.LASF506
	.byte	0xda
	.uleb128 0x2
	.long	.LASF507
	.byte	0xdb
	.uleb128 0x2
	.long	.LASF508
	.byte	0xdc
	.uleb128 0x2
	.long	.LASF509
	.byte	0xdd
	.uleb128 0x2
	.long	.LASF510
	.byte	0xde
	.uleb128 0x2
	.long	.LASF511
	.byte	0xdf
	.uleb128 0x2
	.long	.LASF512
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF513
	.byte	0xe1
	.uleb128 0x2
	.long	.LASF514
	.byte	0xe2
	.uleb128 0x2
	.long	.LASF515
	.byte	0xe3
	.uleb128 0x2
	.long	.LASF516
	.byte	0xe4
	.uleb128 0x2
	.long	.LASF517
	.byte	0xe5
	.uleb128 0x2
	.long	.LASF518
	.byte	0xe6
	.uleb128 0x2
	.long	.LASF519
	.byte	0xe7
	.uleb128 0x2
	.long	.LASF520
	.byte	0xe8
	.uleb128 0x2
	.long	.LASF521
	.byte	0xe9
	.uleb128 0x2
	.long	.LASF522
	.byte	0xea
	.uleb128 0x2
	.long	.LASF523
	.byte	0xeb
	.uleb128 0x2
	.long	.LASF524
	.byte	0xec
	.uleb128 0x2
	.long	.LASF525
	.byte	0xed
	.uleb128 0x2
	.long	.LASF526
	.byte	0xee
	.uleb128 0x2
	.long	.LASF527
	.byte	0xef
	.uleb128 0x2
	.long	.LASF528
	.byte	0xf0
	.uleb128 0x2
	.long	.LASF529
	.byte	0xf1
	.uleb128 0x2
	.long	.LASF530
	.byte	0xf2
	.uleb128 0x2
	.long	.LASF531
	.byte	0xf3
	.uleb128 0x2
	.long	.LASF532
	.byte	0xf4
	.uleb128 0x2
	.long	.LASF533
	.byte	0xf5
	.uleb128 0x2
	.long	.LASF534
	.byte	0xf6
	.uleb128 0x2
	.long	.LASF535
	.byte	0xf7
	.uleb128 0x2
	.long	.LASF536
	.byte	0xf8
	.uleb128 0x2
	.long	.LASF537
	.byte	0xf9
	.uleb128 0x2
	.long	.LASF538
	.byte	0xfa
	.uleb128 0x2
	.long	.LASF539
	.byte	0xfb
	.uleb128 0x2
	.long	.LASF540
	.byte	0xfc
	.uleb128 0x2
	.long	.LASF541
	.byte	0xfd
	.uleb128 0x2
	.long	.LASF542
	.byte	0xfe
	.uleb128 0x2
	.long	.LASF543
	.byte	0xff
	.uleb128 0x1
	.long	.LASF544
	.value	0x100
	.uleb128 0x1
	.long	.LASF545
	.value	0x101
	.uleb128 0x1
	.long	.LASF546
	.value	0x102
	.uleb128 0x1
	.long	.LASF547
	.value	0x103
	.uleb128 0x1
	.long	.LASF548
	.value	0x104
	.uleb128 0x1
	.long	.LASF549
	.value	0x105
	.uleb128 0x1
	.long	.LASF550
	.value	0x106
	.uleb128 0x1
	.long	.LASF551
	.value	0x107
	.uleb128 0x1
	.long	.LASF552
	.value	0x108
	.uleb128 0x1
	.long	.LASF553
	.value	0x109
	.uleb128 0x1
	.long	.LASF554
	.value	0x10a
	.uleb128 0x1
	.long	.LASF555
	.value	0x10b
	.uleb128 0x1
	.long	.LASF556
	.value	0x10c
	.uleb128 0x1
	.long	.LASF557
	.value	0x10d
	.uleb128 0x1
	.long	.LASF558
	.value	0x10e
	.uleb128 0x1
	.long	.LASF559
	.value	0x10f
	.uleb128 0x1
	.long	.LASF560
	.value	0x110
	.uleb128 0x1
	.long	.LASF561
	.value	0x111
	.uleb128 0x1
	.long	.LASF562
	.value	0x112
	.uleb128 0x1
	.long	.LASF563
	.value	0x113
	.uleb128 0x1
	.long	.LASF564
	.value	0x114
	.uleb128 0x1
	.long	.LASF565
	.value	0x115
	.uleb128 0x1
	.long	.LASF566
	.value	0x116
	.uleb128 0x1
	.long	.LASF567
	.value	0x117
	.uleb128 0x1
	.long	.LASF568
	.value	0x118
	.uleb128 0x1
	.long	.LASF569
	.value	0x119
	.uleb128 0x1
	.long	.LASF570
	.value	0x11a
	.uleb128 0x1
	.long	.LASF571
	.value	0x11b
	.uleb128 0x1
	.long	.LASF572
	.value	0x11c
	.uleb128 0x1
	.long	.LASF573
	.value	0x11d
	.uleb128 0x1
	.long	.LASF574
	.value	0x11e
	.uleb128 0x1
	.long	.LASF575
	.value	0x11f
	.uleb128 0x1
	.long	.LASF576
	.value	0x120
	.uleb128 0x1
	.long	.LASF577
	.value	0x121
	.uleb128 0x1
	.long	.LASF578
	.value	0x122
	.uleb128 0x1
	.long	.LASF579
	.value	0x123
	.uleb128 0x1
	.long	.LASF580
	.value	0x124
	.uleb128 0x1
	.long	.LASF581
	.value	0x125
	.uleb128 0x1
	.long	.LASF582
	.value	0x126
	.uleb128 0x1
	.long	.LASF583
	.value	0x127
	.uleb128 0x1
	.long	.LASF584
	.value	0x128
	.uleb128 0x1
	.long	.LASF585
	.value	0x129
	.uleb128 0x1
	.long	.LASF586
	.value	0x12a
	.uleb128 0x1
	.long	.LASF587
	.value	0x12b
	.uleb128 0x1
	.long	.LASF588
	.value	0x12c
	.uleb128 0x1
	.long	.LASF589
	.value	0x12d
	.uleb128 0x1
	.long	.LASF590
	.value	0x12e
	.uleb128 0x1
	.long	.LASF591
	.value	0x12f
	.uleb128 0x1
	.long	.LASF592
	.value	0x130
	.uleb128 0x1
	.long	.LASF593
	.value	0x131
	.uleb128 0x1
	.long	.LASF594
	.value	0x132
	.uleb128 0x1
	.long	.LASF595
	.value	0x133
	.uleb128 0x1
	.long	.LASF596
	.value	0x134
	.uleb128 0x1
	.long	.LASF597
	.value	0x135
	.uleb128 0x1
	.long	.LASF598
	.value	0x136
	.uleb128 0x1
	.long	.LASF599
	.value	0x137
	.uleb128 0x1
	.long	.LASF600
	.value	0x138
	.uleb128 0x1
	.long	.LASF601
	.value	0x139
	.uleb128 0x1
	.long	.LASF602
	.value	0x13a
	.uleb128 0x1
	.long	.LASF603
	.value	0x13b
	.uleb128 0x1
	.long	.LASF604
	.value	0x13c
	.uleb128 0x1
	.long	.LASF605
	.value	0x13d
	.uleb128 0x1
	.long	.LASF606
	.value	0x13e
	.uleb128 0x1
	.long	.LASF607
	.value	0x13f
	.uleb128 0x1
	.long	.LASF608
	.value	0x140
	.uleb128 0x1
	.long	.LASF609
	.value	0x141
	.uleb128 0x1
	.long	.LASF610
	.value	0x142
	.uleb128 0x1
	.long	.LASF611
	.value	0x143
	.uleb128 0x1
	.long	.LASF612
	.value	0x144
	.uleb128 0x1
	.long	.LASF613
	.value	0x145
	.uleb128 0x1
	.long	.LASF614
	.value	0x146
	.uleb128 0x1
	.long	.LASF615
	.value	0x147
	.uleb128 0x1
	.long	.LASF616
	.value	0x148
	.uleb128 0x1
	.long	.LASF617
	.value	0x149
	.uleb128 0x1
	.long	.LASF618
	.value	0x14a
	.uleb128 0x1
	.long	.LASF619
	.value	0x14b
	.uleb128 0x1
	.long	.LASF620
	.value	0x14c
	.uleb128 0x1
	.long	.LASF621
	.value	0x14d
	.uleb128 0x1
	.long	.LASF622
	.value	0x14e
	.uleb128 0x1
	.long	.LASF623
	.value	0x14f
	.uleb128 0x1
	.long	.LASF624
	.value	0x150
	.uleb128 0x1
	.long	.LASF625
	.value	0x151
	.uleb128 0x1
	.long	.LASF626
	.value	0x152
	.uleb128 0x1
	.long	.LASF627
	.value	0x153
	.uleb128 0x1
	.long	.LASF628
	.value	0x154
	.uleb128 0x1
	.long	.LASF629
	.value	0x155
	.uleb128 0x1
	.long	.LASF630
	.value	0x156
	.uleb128 0x1
	.long	.LASF631
	.value	0x157
	.uleb128 0x1
	.long	.LASF632
	.value	0x158
	.uleb128 0x1
	.long	.LASF633
	.value	0x159
	.uleb128 0x1
	.long	.LASF634
	.value	0x15a
	.uleb128 0x1
	.long	.LASF635
	.value	0x15b
	.uleb128 0x1
	.long	.LASF636
	.value	0x15c
	.uleb128 0x1
	.long	.LASF637
	.value	0x15d
	.uleb128 0x1
	.long	.LASF638
	.value	0x15e
	.uleb128 0x1
	.long	.LASF639
	.value	0x15f
	.uleb128 0x1
	.long	.LASF640
	.value	0x160
	.uleb128 0x1
	.long	.LASF641
	.value	0x161
	.uleb128 0x1
	.long	.LASF642
	.value	0x162
	.uleb128 0x1
	.long	.LASF643
	.value	0x163
	.uleb128 0x1
	.long	.LASF644
	.value	0x164
	.uleb128 0x1
	.long	.LASF645
	.value	0x165
	.uleb128 0x1
	.long	.LASF646
	.value	0x166
	.uleb128 0x1
	.long	.LASF647
	.value	0x167
	.uleb128 0x1
	.long	.LASF648
	.value	0x168
	.uleb128 0x1
	.long	.LASF649
	.value	0x169
	.uleb128 0x1
	.long	.LASF650
	.value	0x16a
	.uleb128 0x1
	.long	.LASF651
	.value	0x16b
	.uleb128 0x1
	.long	.LASF652
	.value	0x16c
	.uleb128 0x1
	.long	.LASF653
	.value	0x16d
	.uleb128 0x1
	.long	.LASF654
	.value	0x16e
	.uleb128 0x1
	.long	.LASF655
	.value	0x16f
	.uleb128 0x1
	.long	.LASF656
	.value	0x170
	.uleb128 0x1
	.long	.LASF657
	.value	0x171
	.uleb128 0x1
	.long	.LASF658
	.value	0x172
	.uleb128 0x1
	.long	.LASF659
	.value	0x173
	.uleb128 0x1
	.long	.LASF660
	.value	0x174
	.uleb128 0x1
	.long	.LASF661
	.value	0x175
	.uleb128 0x1
	.long	.LASF662
	.value	0x176
	.uleb128 0x1
	.long	.LASF663
	.value	0x177
	.uleb128 0x1
	.long	.LASF664
	.value	0x178
	.uleb128 0x1
	.long	.LASF665
	.value	0x179
	.uleb128 0x1
	.long	.LASF666
	.value	0x17a
	.uleb128 0x1
	.long	.LASF667
	.value	0x17b
	.uleb128 0x1
	.long	.LASF668
	.value	0x17c
	.uleb128 0x1
	.long	.LASF669
	.value	0x17d
	.uleb128 0x1
	.long	.LASF670
	.value	0x17e
	.uleb128 0x1
	.long	.LASF671
	.value	0x17f
	.uleb128 0x1
	.long	.LASF672
	.value	0x180
	.uleb128 0x1
	.long	.LASF673
	.value	0x181
	.uleb128 0x1
	.long	.LASF674
	.value	0x182
	.uleb128 0x1
	.long	.LASF675
	.value	0x183
	.uleb128 0x1
	.long	.LASF676
	.value	0x184
	.uleb128 0x1
	.long	.LASF677
	.value	0x185
	.uleb128 0x1
	.long	.LASF678
	.value	0x186
	.uleb128 0x1
	.long	.LASF679
	.value	0x187
	.uleb128 0x1
	.long	.LASF680
	.value	0x188
	.uleb128 0x1
	.long	.LASF681
	.value	0x189
	.uleb128 0x1
	.long	.LASF682
	.value	0x18a
	.uleb128 0x1
	.long	.LASF683
	.value	0x18b
	.uleb128 0x1
	.long	.LASF684
	.value	0x18c
	.uleb128 0x1
	.long	.LASF685
	.value	0x18d
	.uleb128 0x1
	.long	.LASF686
	.value	0x18e
	.uleb128 0x1
	.long	.LASF687
	.value	0x18f
	.uleb128 0x1
	.long	.LASF688
	.value	0x190
	.uleb128 0x1
	.long	.LASF689
	.value	0x191
	.uleb128 0x1
	.long	.LASF690
	.value	0x192
	.uleb128 0x1
	.long	.LASF691
	.value	0x193
	.uleb128 0x1
	.long	.LASF692
	.value	0x194
	.uleb128 0x1
	.long	.LASF693
	.value	0x195
	.uleb128 0x1
	.long	.LASF694
	.value	0x196
	.uleb128 0x1
	.long	.LASF695
	.value	0x197
	.uleb128 0x1
	.long	.LASF696
	.value	0x198
	.uleb128 0x1
	.long	.LASF697
	.value	0x199
	.uleb128 0x1
	.long	.LASF698
	.value	0x19a
	.uleb128 0x1
	.long	.LASF699
	.value	0x19b
	.uleb128 0x1
	.long	.LASF700
	.value	0x19c
	.uleb128 0x1
	.long	.LASF701
	.value	0x19d
	.uleb128 0x1
	.long	.LASF702
	.value	0x19e
	.uleb128 0x1
	.long	.LASF703
	.value	0x19f
	.uleb128 0x1
	.long	.LASF704
	.value	0x1a0
	.uleb128 0x1
	.long	.LASF705
	.value	0x1a1
	.uleb128 0x1
	.long	.LASF706
	.value	0x1a2
	.uleb128 0x1
	.long	.LASF707
	.value	0x1a3
	.uleb128 0x1
	.long	.LASF708
	.value	0x1a4
	.uleb128 0x1
	.long	.LASF709
	.value	0x1a5
	.uleb128 0x1
	.long	.LASF710
	.value	0x1a6
	.uleb128 0x1
	.long	.LASF711
	.value	0x1a7
	.uleb128 0x1
	.long	.LASF712
	.value	0x1a8
	.uleb128 0x1
	.long	.LASF713
	.value	0x1a9
	.uleb128 0x1
	.long	.LASF714
	.value	0x1aa
	.uleb128 0x1
	.long	.LASF715
	.value	0x1ab
	.uleb128 0x1
	.long	.LASF716
	.value	0x1ac
	.uleb128 0x1
	.long	.LASF717
	.value	0x1ad
	.uleb128 0x1
	.long	.LASF718
	.value	0x1ae
	.uleb128 0x1
	.long	.LASF719
	.value	0x1af
	.uleb128 0x1
	.long	.LASF720
	.value	0x1b0
	.uleb128 0x1
	.long	.LASF721
	.value	0x1b1
	.uleb128 0x1
	.long	.LASF722
	.value	0x1b2
	.uleb128 0x1
	.long	.LASF723
	.value	0x1b3
	.uleb128 0x1
	.long	.LASF724
	.value	0x1b4
	.uleb128 0x1
	.long	.LASF725
	.value	0x1b5
	.uleb128 0x1
	.long	.LASF726
	.value	0x1b6
	.uleb128 0x1
	.long	.LASF727
	.value	0x1b7
	.uleb128 0x1
	.long	.LASF728
	.value	0x1b8
	.uleb128 0x1
	.long	.LASF729
	.value	0x1b9
	.uleb128 0x1
	.long	.LASF730
	.value	0x1ba
	.uleb128 0x1
	.long	.LASF731
	.value	0x1bb
	.uleb128 0x1
	.long	.LASF732
	.value	0x1bc
	.uleb128 0x1
	.long	.LASF733
	.value	0x1bd
	.uleb128 0x1
	.long	.LASF734
	.value	0x1be
	.uleb128 0x1
	.long	.LASF735
	.value	0x1bf
	.uleb128 0x1
	.long	.LASF736
	.value	0x1c0
	.uleb128 0x1
	.long	.LASF737
	.value	0x1c1
	.uleb128 0x1
	.long	.LASF738
	.value	0x1c2
	.uleb128 0x1
	.long	.LASF739
	.value	0x1c3
	.uleb128 0x1
	.long	.LASF740
	.value	0x1c4
	.uleb128 0x1
	.long	.LASF741
	.value	0x1c5
	.uleb128 0x1
	.long	.LASF742
	.value	0x1c6
	.uleb128 0x1
	.long	.LASF743
	.value	0x1c7
	.uleb128 0x1
	.long	.LASF744
	.value	0x1c8
	.uleb128 0x1
	.long	.LASF745
	.value	0x1c9
	.uleb128 0x1
	.long	.LASF746
	.value	0x1ca
	.uleb128 0x1
	.long	.LASF747
	.value	0x1cb
	.uleb128 0x1
	.long	.LASF748
	.value	0x1cc
	.uleb128 0x1
	.long	.LASF749
	.value	0x1cd
	.uleb128 0x1
	.long	.LASF750
	.value	0x1ce
	.uleb128 0x1
	.long	.LASF751
	.value	0x1cf
	.uleb128 0x1
	.long	.LASF752
	.value	0x1d0
	.uleb128 0x1
	.long	.LASF753
	.value	0x1d1
	.uleb128 0x1
	.long	.LASF754
	.value	0x1d2
	.uleb128 0x1
	.long	.LASF755
	.value	0x1d3
	.uleb128 0x1
	.long	.LASF756
	.value	0x1d4
	.uleb128 0x1
	.long	.LASF757
	.value	0x1d5
	.uleb128 0x1
	.long	.LASF758
	.value	0x1d6
	.uleb128 0x1
	.long	.LASF759
	.value	0x1d7
	.uleb128 0x1
	.long	.LASF760
	.value	0x1d8
	.uleb128 0x1
	.long	.LASF761
	.value	0x1d9
	.uleb128 0x1
	.long	.LASF762
	.value	0x1da
	.uleb128 0x1
	.long	.LASF763
	.value	0x1db
	.uleb128 0x1
	.long	.LASF764
	.value	0x1dc
	.uleb128 0x1
	.long	.LASF765
	.value	0x1dd
	.uleb128 0x1
	.long	.LASF766
	.value	0x1de
	.uleb128 0x1
	.long	.LASF767
	.value	0x1df
	.uleb128 0x1
	.long	.LASF768
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF769
	.value	0x1e1
	.uleb128 0x1
	.long	.LASF770
	.value	0x1e2
	.uleb128 0x1
	.long	.LASF771
	.value	0x1e3
	.uleb128 0x1
	.long	.LASF772
	.value	0x1e4
	.uleb128 0x1
	.long	.LASF773
	.value	0x1e5
	.uleb128 0x1
	.long	.LASF774
	.value	0x1e6
	.uleb128 0x1
	.long	.LASF775
	.value	0x1e7
	.uleb128 0x1
	.long	.LASF776
	.value	0x1e8
	.uleb128 0x1
	.long	.LASF777
	.value	0x1e9
	.uleb128 0x1
	.long	.LASF778
	.value	0x1ea
	.uleb128 0x1
	.long	.LASF779
	.value	0x1eb
	.uleb128 0x1
	.long	.LASF780
	.value	0x1ec
	.uleb128 0x1
	.long	.LASF781
	.value	0x1ed
	.uleb128 0x1
	.long	.LASF782
	.value	0x1ee
	.uleb128 0x1
	.long	.LASF783
	.value	0x1ef
	.uleb128 0x1
	.long	.LASF784
	.value	0x1f0
	.uleb128 0x1
	.long	.LASF785
	.value	0x1f1
	.uleb128 0x1
	.long	.LASF786
	.value	0x1f2
	.uleb128 0x1
	.long	.LASF787
	.value	0x1f3
	.uleb128 0x1
	.long	.LASF788
	.value	0x1f4
	.uleb128 0x1
	.long	.LASF789
	.value	0x1f5
	.uleb128 0x1
	.long	.LASF790
	.value	0x1f6
	.uleb128 0x1
	.long	.LASF791
	.value	0x1f7
	.uleb128 0x1
	.long	.LASF792
	.value	0x1f8
	.uleb128 0x1
	.long	.LASF793
	.value	0x1f9
	.uleb128 0x1
	.long	.LASF794
	.value	0x1fa
	.uleb128 0x1
	.long	.LASF795
	.value	0x1fb
	.uleb128 0x1
	.long	.LASF796
	.value	0x1fc
	.uleb128 0x1
	.long	.LASF797
	.value	0x1fd
	.uleb128 0x1
	.long	.LASF798
	.value	0x1fe
	.uleb128 0x1
	.long	.LASF799
	.value	0x1ff
	.uleb128 0x1
	.long	.LASF800
	.value	0x200
	.uleb128 0x1
	.long	.LASF801
	.value	0x201
	.uleb128 0x1
	.long	.LASF802
	.value	0x202
	.uleb128 0x1
	.long	.LASF803
	.value	0x203
	.uleb128 0x1
	.long	.LASF804
	.value	0x204
	.uleb128 0x1
	.long	.LASF805
	.value	0x205
	.uleb128 0x1
	.long	.LASF806
	.value	0x206
	.uleb128 0x1
	.long	.LASF807
	.value	0x207
	.uleb128 0x1
	.long	.LASF808
	.value	0x208
	.uleb128 0x1
	.long	.LASF809
	.value	0x209
	.uleb128 0x1
	.long	.LASF810
	.value	0x20a
	.uleb128 0x1
	.long	.LASF811
	.value	0x20b
	.uleb128 0x1
	.long	.LASF812
	.value	0x20c
	.uleb128 0x1
	.long	.LASF813
	.value	0x20d
	.uleb128 0x1
	.long	.LASF814
	.value	0x20e
	.uleb128 0x1
	.long	.LASF815
	.value	0x20f
	.uleb128 0x1
	.long	.LASF816
	.value	0x210
	.uleb128 0x1
	.long	.LASF817
	.value	0x211
	.uleb128 0x1
	.long	.LASF818
	.value	0x212
	.uleb128 0x1
	.long	.LASF819
	.value	0x213
	.uleb128 0x1
	.long	.LASF820
	.value	0x214
	.uleb128 0x1
	.long	.LASF821
	.value	0x215
	.uleb128 0x1
	.long	.LASF822
	.value	0x216
	.uleb128 0x1
	.long	.LASF823
	.value	0x217
	.uleb128 0x1
	.long	.LASF824
	.value	0x218
	.uleb128 0x1
	.long	.LASF825
	.value	0x219
	.uleb128 0x1
	.long	.LASF826
	.value	0x21a
	.uleb128 0x1
	.long	.LASF827
	.value	0x21b
	.uleb128 0x1
	.long	.LASF828
	.value	0x21c
	.uleb128 0x1
	.long	.LASF829
	.value	0x21d
	.uleb128 0x1
	.long	.LASF830
	.value	0x21e
	.uleb128 0x1
	.long	.LASF831
	.value	0x21f
	.uleb128 0x1
	.long	.LASF832
	.value	0x220
	.uleb128 0x1
	.long	.LASF833
	.value	0x221
	.uleb128 0x1
	.long	.LASF834
	.value	0x222
	.uleb128 0x1
	.long	.LASF835
	.value	0x223
	.uleb128 0x1
	.long	.LASF836
	.value	0x224
	.uleb128 0x1
	.long	.LASF837
	.value	0x225
	.uleb128 0x1
	.long	.LASF838
	.value	0x226
	.uleb128 0x1
	.long	.LASF839
	.value	0x227
	.uleb128 0x1
	.long	.LASF840
	.value	0x228
	.uleb128 0x1
	.long	.LASF841
	.value	0x229
	.uleb128 0x1
	.long	.LASF842
	.value	0x22a
	.uleb128 0x1
	.long	.LASF843
	.value	0x22b
	.uleb128 0x1
	.long	.LASF844
	.value	0x22c
	.uleb128 0x1
	.long	.LASF845
	.value	0x22d
	.uleb128 0x1
	.long	.LASF846
	.value	0x22e
	.uleb128 0x1
	.long	.LASF847
	.value	0x22f
	.uleb128 0x1
	.long	.LASF848
	.value	0x230
	.uleb128 0x1
	.long	.LASF849
	.value	0x231
	.uleb128 0x1
	.long	.LASF850
	.value	0x232
	.uleb128 0x1
	.long	.LASF851
	.value	0x233
	.uleb128 0x1
	.long	.LASF852
	.value	0x234
	.uleb128 0x1
	.long	.LASF853
	.value	0x235
	.uleb128 0x1
	.long	.LASF854
	.value	0x236
	.uleb128 0x1
	.long	.LASF855
	.value	0x237
	.uleb128 0x1
	.long	.LASF856
	.value	0x238
	.uleb128 0x1
	.long	.LASF857
	.value	0x239
	.uleb128 0x1
	.long	.LASF858
	.value	0x23a
	.uleb128 0x1
	.long	.LASF859
	.value	0x23b
	.uleb128 0x1
	.long	.LASF860
	.value	0x23c
	.uleb128 0x1
	.long	.LASF861
	.value	0x23d
	.uleb128 0x1
	.long	.LASF862
	.value	0x23e
	.uleb128 0x1
	.long	.LASF863
	.value	0x23f
	.uleb128 0x1
	.long	.LASF864
	.value	0x240
	.uleb128 0x1
	.long	.LASF865
	.value	0x241
	.uleb128 0x1
	.long	.LASF866
	.value	0x242
	.uleb128 0x1
	.long	.LASF867
	.value	0x243
	.uleb128 0x1
	.long	.LASF868
	.value	0x244
	.uleb128 0x1
	.long	.LASF869
	.value	0x245
	.uleb128 0x1
	.long	.LASF870
	.value	0x246
	.uleb128 0x1
	.long	.LASF871
	.value	0x247
	.uleb128 0x1
	.long	.LASF872
	.value	0x248
	.uleb128 0x1
	.long	.LASF873
	.value	0x249
	.uleb128 0x1
	.long	.LASF874
	.value	0x24a
	.uleb128 0x1
	.long	.LASF875
	.value	0x24b
	.uleb128 0x1
	.long	.LASF876
	.value	0x24c
	.uleb128 0x1
	.long	.LASF877
	.value	0x24d
	.uleb128 0x1
	.long	.LASF878
	.value	0x24e
	.uleb128 0x1
	.long	.LASF879
	.value	0x24f
	.uleb128 0x1
	.long	.LASF880
	.value	0x250
	.uleb128 0x1
	.long	.LASF881
	.value	0x251
	.uleb128 0x1
	.long	.LASF882
	.value	0x252
	.uleb128 0x1
	.long	.LASF883
	.value	0x253
	.uleb128 0x1
	.long	.LASF884
	.value	0x254
	.uleb128 0x1
	.long	.LASF885
	.value	0x255
	.uleb128 0x1
	.long	.LASF886
	.value	0x256
	.uleb128 0x1
	.long	.LASF887
	.value	0x257
	.uleb128 0x1
	.long	.LASF888
	.value	0x258
	.uleb128 0x1
	.long	.LASF889
	.value	0x259
	.uleb128 0x1
	.long	.LASF890
	.value	0x25a
	.uleb128 0x1
	.long	.LASF891
	.value	0x25b
	.uleb128 0x1
	.long	.LASF892
	.value	0x25c
	.uleb128 0x1
	.long	.LASF893
	.value	0x25d
	.uleb128 0x1
	.long	.LASF894
	.value	0x25e
	.uleb128 0x1
	.long	.LASF895
	.value	0x25f
	.uleb128 0x1
	.long	.LASF896
	.value	0x260
	.uleb128 0x1
	.long	.LASF897
	.value	0x261
	.uleb128 0x1
	.long	.LASF898
	.value	0x262
	.uleb128 0x1
	.long	.LASF899
	.value	0x263
	.uleb128 0x1
	.long	.LASF900
	.value	0x264
	.uleb128 0x1
	.long	.LASF901
	.value	0x265
	.uleb128 0x1
	.long	.LASF902
	.value	0x266
	.uleb128 0x1
	.long	.LASF903
	.value	0x267
	.uleb128 0x1
	.long	.LASF904
	.value	0x268
	.uleb128 0x1
	.long	.LASF905
	.value	0x269
	.uleb128 0x1
	.long	.LASF906
	.value	0x26a
	.uleb128 0x1
	.long	.LASF907
	.value	0x26b
	.uleb128 0x1
	.long	.LASF908
	.value	0x26c
	.uleb128 0x1
	.long	.LASF909
	.value	0x26d
	.uleb128 0x1
	.long	.LASF910
	.value	0x26e
	.uleb128 0x1
	.long	.LASF911
	.value	0x26f
	.uleb128 0x1
	.long	.LASF912
	.value	0x270
	.uleb128 0x1
	.long	.LASF913
	.value	0x271
	.uleb128 0x1
	.long	.LASF914
	.value	0x272
	.uleb128 0x1
	.long	.LASF915
	.value	0x273
	.uleb128 0x1
	.long	.LASF916
	.value	0x274
	.uleb128 0x1
	.long	.LASF917
	.value	0x275
	.uleb128 0x1
	.long	.LASF918
	.value	0x276
	.uleb128 0x1
	.long	.LASF919
	.value	0x277
	.uleb128 0x1
	.long	.LASF920
	.value	0x278
	.uleb128 0x1
	.long	.LASF921
	.value	0x279
	.uleb128 0x1
	.long	.LASF922
	.value	0x27a
	.uleb128 0x1
	.long	.LASF923
	.value	0x27b
	.uleb128 0x1
	.long	.LASF924
	.value	0x27c
	.uleb128 0x1
	.long	.LASF925
	.value	0x27d
	.uleb128 0x1
	.long	.LASF926
	.value	0x27e
	.uleb128 0x1
	.long	.LASF927
	.value	0x27f
	.uleb128 0x1
	.long	.LASF928
	.value	0x280
	.uleb128 0x1
	.long	.LASF929
	.value	0x281
	.uleb128 0x1
	.long	.LASF930
	.value	0x282
	.uleb128 0x1
	.long	.LASF931
	.value	0x283
	.uleb128 0x1
	.long	.LASF932
	.value	0x284
	.uleb128 0x1
	.long	.LASF933
	.value	0x285
	.uleb128 0x1
	.long	.LASF934
	.value	0x286
	.uleb128 0x1
	.long	.LASF935
	.value	0x287
	.uleb128 0x1
	.long	.LASF936
	.value	0x288
	.uleb128 0x1
	.long	.LASF937
	.value	0x289
	.uleb128 0x1
	.long	.LASF938
	.value	0x28a
	.uleb128 0x1
	.long	.LASF939
	.value	0x28b
	.uleb128 0x1
	.long	.LASF940
	.value	0x28c
	.uleb128 0x1
	.long	.LASF941
	.value	0x28d
	.uleb128 0x1
	.long	.LASF942
	.value	0x28e
	.uleb128 0x1
	.long	.LASF943
	.value	0x28f
	.uleb128 0x1
	.long	.LASF944
	.value	0x290
	.uleb128 0x1
	.long	.LASF945
	.value	0x291
	.uleb128 0x1
	.long	.LASF946
	.value	0x292
	.uleb128 0x1
	.long	.LASF947
	.value	0x293
	.uleb128 0x1
	.long	.LASF948
	.value	0x294
	.uleb128 0x1
	.long	.LASF949
	.value	0x295
	.uleb128 0x1
	.long	.LASF950
	.value	0x296
	.uleb128 0x1
	.long	.LASF951
	.value	0x297
	.uleb128 0x1
	.long	.LASF952
	.value	0x298
	.uleb128 0x1
	.long	.LASF953
	.value	0x299
	.uleb128 0x1
	.long	.LASF954
	.value	0x29a
	.uleb128 0x1
	.long	.LASF955
	.value	0x29b
	.uleb128 0x1
	.long	.LASF956
	.value	0x29c
	.uleb128 0x1
	.long	.LASF957
	.value	0x29d
	.uleb128 0x1
	.long	.LASF958
	.value	0x29e
	.uleb128 0x1
	.long	.LASF959
	.value	0x29f
	.uleb128 0x1
	.long	.LASF960
	.value	0x2a0
	.uleb128 0x1
	.long	.LASF961
	.value	0x2a1
	.uleb128 0x1
	.long	.LASF962
	.value	0x2a2
	.uleb128 0x1
	.long	.LASF963
	.value	0x2a3
	.uleb128 0x1
	.long	.LASF964
	.value	0x2a4
	.uleb128 0x1
	.long	.LASF965
	.value	0x2a5
	.uleb128 0x1
	.long	.LASF966
	.value	0x2a6
	.uleb128 0x1
	.long	.LASF967
	.value	0x2a7
	.uleb128 0x1
	.long	.LASF968
	.value	0x2a8
	.uleb128 0x1
	.long	.LASF969
	.value	0x2a9
	.uleb128 0x1
	.long	.LASF970
	.value	0x2aa
	.uleb128 0x1
	.long	.LASF971
	.value	0x2ab
	.uleb128 0x1
	.long	.LASF972
	.value	0x2ac
	.uleb128 0x1
	.long	.LASF973
	.value	0x2ad
	.uleb128 0x1
	.long	.LASF974
	.value	0x2ae
	.uleb128 0x1
	.long	.LASF975
	.value	0x2af
	.uleb128 0x1
	.long	.LASF976
	.value	0x2b0
	.uleb128 0x1
	.long	.LASF977
	.value	0x2b1
	.uleb128 0x1
	.long	.LASF978
	.value	0x2b2
	.uleb128 0x1
	.long	.LASF979
	.value	0x2b3
	.uleb128 0x1
	.long	.LASF980
	.value	0x2b4
	.uleb128 0x1
	.long	.LASF981
	.value	0x2b5
	.uleb128 0x1
	.long	.LASF982
	.value	0x2b6
	.uleb128 0x1
	.long	.LASF983
	.value	0x2b7
	.uleb128 0x1
	.long	.LASF984
	.value	0x2b8
	.uleb128 0x1
	.long	.LASF985
	.value	0x2b9
	.uleb128 0x1
	.long	.LASF986
	.value	0x2ba
	.uleb128 0x1
	.long	.LASF987
	.value	0x2bb
	.uleb128 0x1
	.long	.LASF988
	.value	0x2bc
	.uleb128 0x1
	.long	.LASF989
	.value	0x2bd
	.uleb128 0x1
	.long	.LASF990
	.value	0x2be
	.uleb128 0x1
	.long	.LASF991
	.value	0x2bf
	.uleb128 0x1
	.long	.LASF992
	.value	0x2c0
	.uleb128 0x1
	.long	.LASF993
	.value	0x2c1
	.uleb128 0x1
	.long	.LASF994
	.value	0x2c2
	.uleb128 0x1
	.long	.LASF995
	.value	0x2c3
	.uleb128 0x1
	.long	.LASF996
	.value	0x2c4
	.uleb128 0x1
	.long	.LASF997
	.value	0x2c5
	.uleb128 0x1
	.long	.LASF998
	.value	0x2c6
	.uleb128 0x1
	.long	.LASF999
	.value	0x2c7
	.uleb128 0x1
	.long	.LASF1000
	.value	0x2c8
	.uleb128 0x1
	.long	.LASF1001
	.value	0x2c9
	.uleb128 0x1
	.long	.LASF1002
	.value	0x2ca
	.uleb128 0x1
	.long	.LASF1003
	.value	0x2cb
	.uleb128 0x1
	.long	.LASF1004
	.value	0x2cc
	.uleb128 0x1
	.long	.LASF1005
	.value	0x2cd
	.uleb128 0x1
	.long	.LASF1006
	.value	0x2ce
	.uleb128 0x1
	.long	.LASF1007
	.value	0x2cf
	.uleb128 0x1
	.long	.LASF1008
	.value	0x2d0
	.uleb128 0x1
	.long	.LASF1009
	.value	0x2d1
	.uleb128 0x1
	.long	.LASF1010
	.value	0x2d2
	.uleb128 0x1
	.long	.LASF1011
	.value	0x2d3
	.uleb128 0x1
	.long	.LASF1012
	.value	0x2d4
	.uleb128 0x1
	.long	.LASF1013
	.value	0x2d5
	.uleb128 0x1
	.long	.LASF1014
	.value	0x2d6
	.uleb128 0x1
	.long	.LASF1015
	.value	0x2d7
	.uleb128 0x1
	.long	.LASF1016
	.value	0x2d8
	.uleb128 0x1
	.long	.LASF1017
	.value	0x2d9
	.uleb128 0x1
	.long	.LASF1018
	.value	0x2da
	.uleb128 0x1
	.long	.LASF1019
	.value	0x2db
	.uleb128 0x1
	.long	.LASF1020
	.value	0x2dc
	.uleb128 0x1
	.long	.LASF1021
	.value	0x2dd
	.uleb128 0x1
	.long	.LASF1022
	.value	0x2de
	.uleb128 0x1
	.long	.LASF1023
	.value	0x2df
	.uleb128 0x1
	.long	.LASF1024
	.value	0x2e0
	.uleb128 0x1
	.long	.LASF1025
	.value	0x2e1
	.uleb128 0x1
	.long	.LASF1026
	.value	0x2e2
	.uleb128 0x1
	.long	.LASF1027
	.value	0x2e3
	.uleb128 0x1
	.long	.LASF1028
	.value	0x2e4
	.uleb128 0x1
	.long	.LASF1029
	.value	0x2e5
	.uleb128 0x1
	.long	.LASF1030
	.value	0x2e6
	.uleb128 0x1
	.long	.LASF1031
	.value	0x2e7
	.uleb128 0x1
	.long	.LASF1032
	.value	0x2e8
	.uleb128 0x1
	.long	.LASF1033
	.value	0x2e9
	.uleb128 0x1
	.long	.LASF1034
	.value	0x2ea
	.uleb128 0x1
	.long	.LASF1035
	.value	0x2eb
	.uleb128 0x1
	.long	.LASF1036
	.value	0x2ec
	.uleb128 0x1
	.long	.LASF1037
	.value	0x2ed
	.uleb128 0x1
	.long	.LASF1038
	.value	0x2ee
	.uleb128 0x1
	.long	.LASF1039
	.value	0x2ef
	.uleb128 0x1
	.long	.LASF1040
	.value	0x2f0
	.uleb128 0x1
	.long	.LASF1041
	.value	0x2f1
	.uleb128 0x1
	.long	.LASF1042
	.value	0x2f2
	.uleb128 0x1
	.long	.LASF1043
	.value	0x2f3
	.uleb128 0x1
	.long	.LASF1044
	.value	0x2f4
	.uleb128 0x1
	.long	.LASF1045
	.value	0x2f5
	.uleb128 0x1
	.long	.LASF1046
	.value	0x2f6
	.uleb128 0x1
	.long	.LASF1047
	.value	0x2f7
	.uleb128 0x1
	.long	.LASF1048
	.value	0x2f8
	.uleb128 0x1
	.long	.LASF1049
	.value	0x2f9
	.uleb128 0x1
	.long	.LASF1050
	.value	0x2fa
	.uleb128 0x1
	.long	.LASF1051
	.value	0x2fb
	.uleb128 0x1
	.long	.LASF1052
	.value	0x2fc
	.uleb128 0x1
	.long	.LASF1053
	.value	0x2fd
	.uleb128 0x1
	.long	.LASF1054
	.value	0x2fe
	.uleb128 0x1
	.long	.LASF1055
	.value	0x2ff
	.uleb128 0x1
	.long	.LASF1056
	.value	0x300
	.uleb128 0x1
	.long	.LASF1057
	.value	0x301
	.uleb128 0x1
	.long	.LASF1058
	.value	0x302
	.uleb128 0x1
	.long	.LASF1059
	.value	0x303
	.uleb128 0x1
	.long	.LASF1060
	.value	0x304
	.uleb128 0x1
	.long	.LASF1061
	.value	0x305
	.uleb128 0x1
	.long	.LASF1062
	.value	0x306
	.uleb128 0x1
	.long	.LASF1063
	.value	0x307
	.uleb128 0x1
	.long	.LASF1064
	.value	0x308
	.uleb128 0x1
	.long	.LASF1065
	.value	0x309
	.uleb128 0x1
	.long	.LASF1066
	.value	0x30a
	.uleb128 0x1
	.long	.LASF1067
	.value	0x30b
	.uleb128 0x1
	.long	.LASF1068
	.value	0x30c
	.uleb128 0x1
	.long	.LASF1069
	.value	0x30d
	.uleb128 0x1
	.long	.LASF1070
	.value	0x30e
	.uleb128 0x1
	.long	.LASF1071
	.value	0x30f
	.uleb128 0x1
	.long	.LASF1072
	.value	0x310
	.uleb128 0x1
	.long	.LASF1073
	.value	0x311
	.uleb128 0x1
	.long	.LASF1074
	.value	0x312
	.uleb128 0x1
	.long	.LASF1075
	.value	0x313
	.uleb128 0x1
	.long	.LASF1076
	.value	0x314
	.uleb128 0x1
	.long	.LASF1077
	.value	0x315
	.uleb128 0x1
	.long	.LASF1078
	.value	0x316
	.uleb128 0x1
	.long	.LASF1079
	.value	0x317
	.uleb128 0x1
	.long	.LASF1080
	.value	0x318
	.uleb128 0x1
	.long	.LASF1081
	.value	0x319
	.uleb128 0x1
	.long	.LASF1082
	.value	0x31a
	.uleb128 0x1
	.long	.LASF1083
	.value	0x31b
	.uleb128 0x1
	.long	.LASF1084
	.value	0x31c
	.uleb128 0x1
	.long	.LASF1085
	.value	0x31d
	.uleb128 0x1
	.long	.LASF1086
	.value	0x31e
	.uleb128 0x1
	.long	.LASF1087
	.value	0x31f
	.uleb128 0x1
	.long	.LASF1088
	.value	0x320
	.uleb128 0x1
	.long	.LASF1089
	.value	0x321
	.uleb128 0x1
	.long	.LASF1090
	.value	0x322
	.uleb128 0x1
	.long	.LASF1091
	.value	0x323
	.uleb128 0x1
	.long	.LASF1092
	.value	0x324
	.uleb128 0x1
	.long	.LASF1093
	.value	0x325
	.uleb128 0x1
	.long	.LASF1094
	.value	0x326
	.uleb128 0x1
	.long	.LASF1095
	.value	0x327
	.uleb128 0x1
	.long	.LASF1096
	.value	0x328
	.uleb128 0x1
	.long	.LASF1097
	.value	0x329
	.uleb128 0x1
	.long	.LASF1098
	.value	0x32a
	.uleb128 0x1
	.long	.LASF1099
	.value	0x32b
	.uleb128 0x1
	.long	.LASF1100
	.value	0x32c
	.uleb128 0x1
	.long	.LASF1101
	.value	0x32d
	.uleb128 0x1
	.long	.LASF1102
	.value	0x32e
	.uleb128 0x1
	.long	.LASF1103
	.value	0x32f
	.uleb128 0x1
	.long	.LASF1104
	.value	0x330
	.uleb128 0x1
	.long	.LASF1105
	.value	0x331
	.uleb128 0x1
	.long	.LASF1106
	.value	0x332
	.uleb128 0x1
	.long	.LASF1107
	.value	0x333
	.uleb128 0x1
	.long	.LASF1108
	.value	0x334
	.uleb128 0x1
	.long	.LASF1109
	.value	0x335
	.uleb128 0x1
	.long	.LASF1110
	.value	0x336
	.uleb128 0x1
	.long	.LASF1111
	.value	0x337
	.uleb128 0x1
	.long	.LASF1112
	.value	0x338
	.uleb128 0x1
	.long	.LASF1113
	.value	0x339
	.uleb128 0x1
	.long	.LASF1114
	.value	0x33a
	.uleb128 0x1
	.long	.LASF1115
	.value	0x33b
	.uleb128 0x1
	.long	.LASF1116
	.value	0x33c
	.uleb128 0x1
	.long	.LASF1117
	.value	0x33d
	.uleb128 0x1
	.long	.LASF1118
	.value	0x33e
	.uleb128 0x1
	.long	.LASF1119
	.value	0x33f
	.uleb128 0x1
	.long	.LASF1120
	.value	0x340
	.uleb128 0x1
	.long	.LASF1121
	.value	0x341
	.uleb128 0x1
	.long	.LASF1122
	.value	0x342
	.uleb128 0x1
	.long	.LASF1123
	.value	0x343
	.uleb128 0x1
	.long	.LASF1124
	.value	0x344
	.uleb128 0x1
	.long	.LASF1125
	.value	0x345
	.uleb128 0x1
	.long	.LASF1126
	.value	0x346
	.uleb128 0x1
	.long	.LASF1127
	.value	0x347
	.uleb128 0x1
	.long	.LASF1128
	.value	0x348
	.uleb128 0x1
	.long	.LASF1129
	.value	0x349
	.uleb128 0x1
	.long	.LASF1130
	.value	0x34a
	.uleb128 0x1
	.long	.LASF1131
	.value	0x34b
	.uleb128 0x1
	.long	.LASF1132
	.value	0x34c
	.uleb128 0x1
	.long	.LASF1133
	.value	0x34d
	.uleb128 0x1
	.long	.LASF1134
	.value	0x34e
	.uleb128 0x1
	.long	.LASF1135
	.value	0x34f
	.uleb128 0x1
	.long	.LASF1136
	.value	0x350
	.uleb128 0x1
	.long	.LASF1137
	.value	0x351
	.uleb128 0x1
	.long	.LASF1138
	.value	0x352
	.uleb128 0x1
	.long	.LASF1139
	.value	0x353
	.uleb128 0x1
	.long	.LASF1140
	.value	0x354
	.uleb128 0x1
	.long	.LASF1141
	.value	0x355
	.uleb128 0x1
	.long	.LASF1142
	.value	0x356
	.uleb128 0x1
	.long	.LASF1143
	.value	0x357
	.uleb128 0x1
	.long	.LASF1144
	.value	0x358
	.uleb128 0x1
	.long	.LASF1145
	.value	0x359
	.uleb128 0x1
	.long	.LASF1146
	.value	0x35a
	.uleb128 0x1
	.long	.LASF1147
	.value	0x35b
	.uleb128 0x1
	.long	.LASF1148
	.value	0x35c
	.uleb128 0x1
	.long	.LASF1149
	.value	0x35d
	.uleb128 0x1
	.long	.LASF1150
	.value	0x35e
	.uleb128 0x1
	.long	.LASF1151
	.value	0x35f
	.uleb128 0x1
	.long	.LASF1152
	.value	0x360
	.uleb128 0x1
	.long	.LASF1153
	.value	0x361
	.uleb128 0x1
	.long	.LASF1154
	.value	0x362
	.uleb128 0x1
	.long	.LASF1155
	.value	0x363
	.uleb128 0x1
	.long	.LASF1156
	.value	0x364
	.uleb128 0x1
	.long	.LASF1157
	.value	0x365
	.uleb128 0x1
	.long	.LASF1158
	.value	0x366
	.uleb128 0x1
	.long	.LASF1159
	.value	0x367
	.uleb128 0x1
	.long	.LASF1160
	.value	0x368
	.uleb128 0x1
	.long	.LASF1161
	.value	0x369
	.uleb128 0x1
	.long	.LASF1162
	.value	0x36a
	.uleb128 0x1
	.long	.LASF1163
	.value	0x36b
	.uleb128 0x1
	.long	.LASF1164
	.value	0x36c
	.uleb128 0x1
	.long	.LASF1165
	.value	0x36d
	.uleb128 0x1
	.long	.LASF1166
	.value	0x36e
	.uleb128 0x1
	.long	.LASF1167
	.value	0x36f
	.uleb128 0x1
	.long	.LASF1168
	.value	0x370
	.uleb128 0x1
	.long	.LASF1169
	.value	0x371
	.uleb128 0x1
	.long	.LASF1170
	.value	0x372
	.uleb128 0x1
	.long	.LASF1171
	.value	0x373
	.uleb128 0x1
	.long	.LASF1172
	.value	0x374
	.uleb128 0x1
	.long	.LASF1173
	.value	0x375
	.uleb128 0x1
	.long	.LASF1174
	.value	0x376
	.uleb128 0x1
	.long	.LASF1175
	.value	0x377
	.uleb128 0x1
	.long	.LASF1176
	.value	0x378
	.uleb128 0x1
	.long	.LASF1177
	.value	0x379
	.uleb128 0x1
	.long	.LASF1178
	.value	0x37a
	.uleb128 0x1
	.long	.LASF1179
	.value	0x37b
	.uleb128 0x1
	.long	.LASF1180
	.value	0x37c
	.uleb128 0x1
	.long	.LASF1181
	.value	0x37d
	.uleb128 0x1
	.long	.LASF1182
	.value	0x37e
	.uleb128 0x1
	.long	.LASF1183
	.value	0x37f
	.uleb128 0x1
	.long	.LASF1184
	.value	0x380
	.uleb128 0x1
	.long	.LASF1185
	.value	0x381
	.uleb128 0x1
	.long	.LASF1186
	.value	0x382
	.uleb128 0x1
	.long	.LASF1187
	.value	0x383
	.uleb128 0x1
	.long	.LASF1188
	.value	0x384
	.uleb128 0x1
	.long	.LASF1189
	.value	0x385
	.uleb128 0x1
	.long	.LASF1190
	.value	0x386
	.uleb128 0x1
	.long	.LASF1191
	.value	0x387
	.uleb128 0x1
	.long	.LASF1192
	.value	0x388
	.uleb128 0x1
	.long	.LASF1193
	.value	0x389
	.uleb128 0x1
	.long	.LASF1194
	.value	0x38a
	.uleb128 0x1
	.long	.LASF1195
	.value	0x38b
	.uleb128 0x1
	.long	.LASF1196
	.value	0x38c
	.uleb128 0x1
	.long	.LASF1197
	.value	0x38d
	.uleb128 0x1
	.long	.LASF1198
	.value	0x38e
	.uleb128 0x1
	.long	.LASF1199
	.value	0x38f
	.uleb128 0x1
	.long	.LASF1200
	.value	0x390
	.uleb128 0x1
	.long	.LASF1201
	.value	0x391
	.uleb128 0x1
	.long	.LASF1202
	.value	0x392
	.uleb128 0x1
	.long	.LASF1203
	.value	0x393
	.uleb128 0x1
	.long	.LASF1204
	.value	0x394
	.uleb128 0x1
	.long	.LASF1205
	.value	0x395
	.uleb128 0x1
	.long	.LASF1206
	.value	0x396
	.uleb128 0x1
	.long	.LASF1207
	.value	0x397
	.uleb128 0x1
	.long	.LASF1208
	.value	0x398
	.uleb128 0x1
	.long	.LASF1209
	.value	0x399
	.uleb128 0x1
	.long	.LASF1210
	.value	0x39a
	.uleb128 0x1
	.long	.LASF1211
	.value	0x39b
	.uleb128 0x1
	.long	.LASF1212
	.value	0x39c
	.uleb128 0x1
	.long	.LASF1213
	.value	0x39d
	.uleb128 0x1
	.long	.LASF1214
	.value	0x39e
	.uleb128 0x1
	.long	.LASF1215
	.value	0x39f
	.uleb128 0x1
	.long	.LASF1216
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF1217
	.value	0x3a1
	.uleb128 0x1
	.long	.LASF1218
	.value	0x3a2
	.uleb128 0x1
	.long	.LASF1219
	.value	0x3a3
	.uleb128 0x1
	.long	.LASF1220
	.value	0x3a4
	.uleb128 0x1
	.long	.LASF1221
	.value	0x3a5
	.uleb128 0x1
	.long	.LASF1222
	.value	0x3a6
	.uleb128 0x1
	.long	.LASF1223
	.value	0x3a7
	.uleb128 0x1
	.long	.LASF1224
	.value	0x3a8
	.uleb128 0x1
	.long	.LASF1225
	.value	0x3a9
	.uleb128 0x1
	.long	.LASF1226
	.value	0x3aa
	.uleb128 0x1
	.long	.LASF1227
	.value	0x3ab
	.uleb128 0x1
	.long	.LASF1228
	.value	0x3ac
	.uleb128 0x1
	.long	.LASF1229
	.value	0x3ad
	.uleb128 0x1
	.long	.LASF1230
	.value	0x3ae
	.uleb128 0x1
	.long	.LASF1231
	.value	0x3af
	.uleb128 0x1
	.long	.LASF1232
	.value	0x3b0
	.uleb128 0x1
	.long	.LASF1233
	.value	0x3b1
	.uleb128 0x1
	.long	.LASF1234
	.value	0x3b2
	.uleb128 0x1
	.long	.LASF1235
	.value	0x3b3
	.uleb128 0x1
	.long	.LASF1236
	.value	0x3b4
	.uleb128 0x1
	.long	.LASF1237
	.value	0x3b5
	.uleb128 0x1
	.long	.LASF1238
	.value	0x3b6
	.uleb128 0x1
	.long	.LASF1239
	.value	0x3b7
	.uleb128 0x1
	.long	.LASF1240
	.value	0x3b8
	.uleb128 0x1
	.long	.LASF1241
	.value	0x3b9
	.uleb128 0x1
	.long	.LASF1242
	.value	0x3ba
	.uleb128 0x1
	.long	.LASF1243
	.value	0x3bb
	.uleb128 0x1
	.long	.LASF1244
	.value	0x3bc
	.uleb128 0x1
	.long	.LASF1245
	.value	0x3bd
	.uleb128 0x1
	.long	.LASF1246
	.value	0x3be
	.uleb128 0x1
	.long	.LASF1247
	.value	0x3bf
	.uleb128 0x1
	.long	.LASF1248
	.value	0x3c0
	.uleb128 0x1
	.long	.LASF1249
	.value	0x3c1
	.uleb128 0x1
	.long	.LASF1250
	.value	0x3c2
	.uleb128 0x1
	.long	.LASF1251
	.value	0x3c3
	.uleb128 0x1
	.long	.LASF1252
	.value	0x3c4
	.uleb128 0x1
	.long	.LASF1253
	.value	0x3c5
	.uleb128 0x1
	.long	.LASF1254
	.value	0x3c6
	.uleb128 0x1
	.long	.LASF1255
	.value	0x3c7
	.byte	0
	.uleb128 0x32
	.byte	0x7
	.byte	0x4
	.long	0x77
	.byte	0x10
	.value	0x48b
	.byte	0xe
	.long	0x286b
	.uleb128 0x2
	.long	.LASF1256
	.byte	0
	.uleb128 0x2
	.long	.LASF1257
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1258
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1259
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1260
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1261
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1262
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1263
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1264
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1265
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1266
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1267
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1268
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1269
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1270
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1271
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1272
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1273
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1274
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1275
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1276
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1277
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1278
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1279
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1280
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1281
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1282
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1283
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1284
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1285
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1286
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1287
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1288
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1289
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1290
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1291
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1292
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1293
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1294
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1295
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1296
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1297
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1298
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1299
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1300
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1301
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1302
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1303
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1304
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1305
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1306
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1307
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1308
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1309
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1310
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1311
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1312
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1313
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1314
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1315
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1316
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1317
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1318
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1319
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1320
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1321
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1322
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1323
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1324
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1325
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1326
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1327
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1328
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1329
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1330
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1331
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1332
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1333
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1334
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1335
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1336
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1337
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1338
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1339
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1340
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1341
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1342
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1343
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1344
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1345
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1346
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1347
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1348
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1349
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1350
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1351
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1352
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1353
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1354
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1355
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1356
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1357
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1358
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1359
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1360
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1361
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1362
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1363
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1364
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1365
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF1366
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF1367
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF1368
	.byte	0x70
	.uleb128 0x2
	.long	.LASF1369
	.byte	0x71
	.uleb128 0x2
	.long	.LASF1370
	.byte	0x72
	.uleb128 0x2
	.long	.LASF1371
	.byte	0x73
	.uleb128 0x2
	.long	.LASF1372
	.byte	0x74
	.uleb128 0x2
	.long	.LASF1373
	.byte	0x75
	.uleb128 0x2
	.long	.LASF1374
	.byte	0x76
	.uleb128 0x2
	.long	.LASF1375
	.byte	0x77
	.uleb128 0x2
	.long	.LASF1376
	.byte	0x78
	.uleb128 0x2
	.long	.LASF1377
	.byte	0x79
	.uleb128 0x2
	.long	.LASF1378
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF1379
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF1380
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF1381
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF1382
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF1383
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF1384
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1385
	.byte	0x81
	.uleb128 0x2
	.long	.LASF1386
	.byte	0x82
	.uleb128 0x2
	.long	.LASF1387
	.byte	0x83
	.uleb128 0x2
	.long	.LASF1388
	.byte	0x84
	.uleb128 0x2
	.long	.LASF1389
	.byte	0x85
	.uleb128 0x2
	.long	.LASF1390
	.byte	0x86
	.uleb128 0x2
	.long	.LASF1391
	.byte	0x87
	.uleb128 0x2
	.long	.LASF1392
	.byte	0x88
	.uleb128 0x2
	.long	.LASF1393
	.byte	0x89
	.byte	0
	.uleb128 0x12
	.long	0x77
	.byte	0x11
	.byte	0x3d
	.long	0x2889
	.uleb128 0x2
	.long	.LASF1394
	.byte	0
	.uleb128 0x2
	.long	.LASF1395
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1396
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.long	.LASF1397
	.byte	0x12
	.byte	0x6d
	.byte	0xc
	.long	0x9c
	.uleb128 0x14
	.long	.LASF1398
	.byte	0x12
	.byte	0x6e
	.byte	0xc
	.long	0x9c
	.uleb128 0x14
	.long	.LASF1399
	.byte	0x12
	.byte	0xd0
	.byte	0xd
	.long	0x9c
	.uleb128 0x9
	.long	0x9c
	.long	0x28bd
	.uleb128 0xb
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.long	.LASF1400
	.byte	0x13
	.byte	0x1e
	.byte	0x1f
	.long	0x28c9
	.uleb128 0x18
	.long	.LASF1401
	.byte	0x30
	.byte	0x13
	.byte	0x20
	.long	0x294b
	.uleb128 0x3
	.long	.LASF1402
	.byte	0x13
	.byte	0x23
	.byte	0xb
	.long	0x116
	.byte	0
	.uleb128 0x3
	.long	.LASF1403
	.byte	0x13
	.byte	0x26
	.byte	0xa
	.long	0x9c
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1404
	.byte	0x13
	.byte	0x29
	.byte	0xa
	.long	0x9c
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1405
	.byte	0x13
	.byte	0x2c
	.byte	0x10
	.long	0x294b
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1406
	.byte	0x13
	.byte	0x2f
	.byte	0xa
	.long	0x9c
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1407
	.byte	0x13
	.byte	0x32
	.byte	0xa
	.long	0x9c
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1408
	.byte	0x13
	.byte	0x35
	.byte	0xb
	.long	0x7e
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1409
	.byte	0x13
	.byte	0x3a
	.byte	0xa
	.long	0x9c
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1410
	.byte	0x13
	.byte	0x3d
	.byte	0xa
	.long	0x9c
	.byte	0x2c
	.byte	0
	.uleb128 0x6
	.long	0x28bd
	.uleb128 0x9
	.long	0x28bd
	.long	0x295b
	.uleb128 0x33
	.byte	0
	.uleb128 0x14
	.long	.LASF1411
	.byte	0x13
	.byte	0x5a
	.byte	0x12
	.long	0x2950
	.uleb128 0x12
	.long	0x77
	.byte	0x13
	.byte	0xb2
	.long	0x2c07
	.uleb128 0x2
	.long	.LASF1412
	.byte	0
	.uleb128 0x2
	.long	.LASF1413
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1414
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1415
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1416
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1417
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1418
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1419
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1420
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1421
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1422
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1423
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1424
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1425
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1426
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1427
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1428
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1429
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1430
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1431
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1432
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1433
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1434
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1435
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1436
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1437
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1438
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1439
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1440
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1441
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1442
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1443
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1444
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1445
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1446
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1447
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1448
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1449
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1450
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1451
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1452
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1453
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1454
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1455
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1456
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1457
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1458
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1459
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1460
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1461
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1462
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1463
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1464
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1465
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1466
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1467
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1468
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1469
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1470
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1471
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1472
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1473
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1474
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1475
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1476
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1477
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1478
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1479
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1480
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1481
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1482
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1483
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1484
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1485
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1486
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1487
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1488
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1489
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1490
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1491
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1492
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1493
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1494
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1495
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1496
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1497
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1498
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1499
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1500
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1501
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1502
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1503
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1504
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1505
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1506
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1507
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1508
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1509
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1510
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1511
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1512
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1513
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1514
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1515
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1516
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1517
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1518
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1519
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1520
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1521
	.byte	0x6d
	.byte	0
	.uleb128 0x22
	.long	0x835
	.byte	0x41
	.uleb128 0x9
	.byte	0x3
	.quad	sndserver
	.uleb128 0x22
	.long	0x841
	.byte	0x42
	.uleb128 0x9
	.byte	0x3
	.quad	sndserver_filename
	.uleb128 0x13
	.long	.LASF1523
	.byte	0x55
	.byte	0xc
	.long	0x9c
	.uleb128 0x9
	.byte	0x3
	.quad	flag
	.uleb128 0x9
	.long	0x9c
	.long	0x2c4c
	.uleb128 0xb
	.long	0x43
	.byte	0x6c
	.byte	0
	.uleb128 0xa
	.long	.LASF1524
	.byte	0x68
	.byte	0x7
	.long	0x2c3c
	.uleb128 0x9
	.byte	0x3
	.quad	lengths
	.uleb128 0xa
	.long	.LASF1525
	.byte	0x6b
	.byte	0x5
	.long	0x9c
	.uleb128 0x9
	.byte	0x3
	.quad	audio_fd
	.uleb128 0x9
	.long	0x95
	.long	0x2c87
	.uleb128 0x23
	.long	0x43
	.value	0x7ff
	.byte	0
	.uleb128 0xa
	.long	.LASF1526
	.byte	0x71
	.byte	0xe
	.long	0x2c76
	.uleb128 0x9
	.byte	0x3
	.quad	mixbuffer
	.uleb128 0x9
	.long	0x77
	.long	0x2cac
	.uleb128 0xb
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.long	.LASF1527
	.byte	0x75
	.byte	0xe
	.long	0x2c9c
	.uleb128 0x9
	.byte	0x3
	.quad	channelstep
	.uleb128 0xa
	.long	.LASF1528
	.byte	0x77
	.byte	0xe
	.long	0x2c9c
	.uleb128 0x9
	.byte	0x3
	.quad	channelstepremainder
	.uleb128 0x9
	.long	0x2ce6
	.long	0x2ce6
	.uleb128 0xb
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.long	0x80
	.uleb128 0xa
	.long	.LASF1529
	.byte	0x7b
	.byte	0x10
	.long	0x2cd6
	.uleb128 0x9
	.byte	0x3
	.quad	channels
	.uleb128 0xa
	.long	.LASF1530
	.byte	0x7c
	.byte	0x10
	.long	0x2cd6
	.uleb128 0x9
	.byte	0x3
	.quad	channelsend
	.uleb128 0xa
	.long	.LASF1531
	.byte	0x84
	.byte	0x6
	.long	0x28ad
	.uleb128 0x9
	.byte	0x3
	.quad	channelstart
	.uleb128 0xa
	.long	.LASF1532
	.byte	0x8a
	.byte	0x7
	.long	0x28ad
	.uleb128 0x9
	.byte	0x3
	.quad	channelhandles
	.uleb128 0xa
	.long	.LASF1533
	.byte	0x8e
	.byte	0x6
	.long	0x28ad
	.uleb128 0x9
	.byte	0x3
	.quad	channelids
	.uleb128 0x9
	.long	0x9c
	.long	0x2d64
	.uleb128 0xb
	.long	0x43
	.byte	0xff
	.byte	0
	.uleb128 0xa
	.long	.LASF1534
	.byte	0x91
	.byte	0x6
	.long	0x2d54
	.uleb128 0x9
	.byte	0x3
	.quad	steptable
	.uleb128 0x9
	.long	0x9c
	.long	0x2d8a
	.uleb128 0x23
	.long	0x43
	.value	0x7fff
	.byte	0
	.uleb128 0xa
	.long	.LASF1535
	.byte	0x94
	.byte	0x6
	.long	0x2d79
	.uleb128 0x9
	.byte	0x3
	.quad	vol_lookup
	.uleb128 0x9
	.long	0x2daf
	.long	0x2daf
	.uleb128 0xb
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.long	0x9c
	.uleb128 0xa
	.long	.LASF1536
	.byte	0x97
	.byte	0x7
	.long	0x2d9f
	.uleb128 0x9
	.byte	0x3
	.quad	channelleftvol_lookup
	.uleb128 0xa
	.long	.LASF1537
	.byte	0x98
	.byte	0x7
	.long	0x2d9f
	.uleb128 0x9
	.byte	0x3
	.quad	channelrightvol_lookup
	.uleb128 0x7
	.long	.LASF1538
	.value	0x346
	.byte	0xc
	.long	0x9c
	.uleb128 0x9
	.byte	0x3
	.quad	looping
	.uleb128 0x7
	.long	.LASF1539
	.value	0x347
	.byte	0xc
	.long	0x9c
	.uleb128 0x9
	.byte	0x3
	.quad	musicdies
	.uleb128 0x7
	.long	.LASF1540
	.value	0x390
	.byte	0x20
	.long	0x9c
	.uleb128 0x9
	.byte	0x3
	.quad	itimer
	.uleb128 0x11
	.string	"sig"
	.value	0x392
	.byte	0xc
	.long	0x9c
	.uleb128 0x9
	.byte	0x3
	.quad	sig
	.uleb128 0xf
	.long	.LASF1541
	.byte	0x9
	.byte	0x9b
	.byte	0xc
	.long	0x9c
	.long	0x2e56
	.uleb128 0x4
	.long	0x3f6
	.uleb128 0x4
	.long	0x2e5b
	.uleb128 0x4
	.long	0x2e65
	.byte	0
	.uleb128 0x6
	.long	0x3f1
	.uleb128 0x15
	.long	0x2e56
	.uleb128 0x6
	.long	0x3ca
	.uleb128 0x15
	.long	0x2e60
	.uleb128 0xf
	.long	.LASF110
	.byte	0xc
	.byte	0xf3
	.byte	0xc
	.long	0x9c
	.long	0x2e8a
	.uleb128 0x4
	.long	0x9c
	.uleb128 0x4
	.long	0x2e8f
	.uleb128 0x4
	.long	0x2e99
	.byte	0
	.uleb128 0x6
	.long	0x740
	.uleb128 0x15
	.long	0x2e8a
	.uleb128 0x6
	.long	0x6ff
	.uleb128 0x15
	.long	0x2e94
	.uleb128 0x16
	.long	.LASF1542
	.byte	0x6
	.value	0x387
	.byte	0xe
	.long	0x313
	.long	0x2eba
	.uleb128 0x4
	.long	0x2fd
	.uleb128 0x4
	.long	0x2fd
	.byte	0
	.uleb128 0x16
	.long	.LASF1543
	.byte	0x14
	.value	0x11f
	.byte	0xc
	.long	0x9c
	.long	0x2ed6
	.uleb128 0x4
	.long	0x2fd
	.uleb128 0x4
	.long	0x9c
	.byte	0
	.uleb128 0x16
	.long	.LASF1544
	.byte	0x15
	.value	0x305
	.byte	0xe
	.long	0x116
	.long	0x2eed
	.uleb128 0x4
	.long	0x2fd
	.byte	0
	.uleb128 0x16
	.long	.LASF1545
	.byte	0x14
	.value	0x17a
	.byte	0x10
	.long	0x307
	.long	0x2f0e
	.uleb128 0x4
	.long	0x9c
	.uleb128 0x4
	.long	0x391
	.uleb128 0x4
	.long	0x6b
	.byte	0
	.uleb128 0xf
	.long	.LASF1546
	.byte	0x6
	.byte	0xec
	.byte	0xc
	.long	0x9c
	.long	0x2f24
	.uleb128 0x4
	.long	0x313
	.byte	0
	.uleb128 0x34
	.string	"pow"
	.byte	0x1b
	.byte	0x8c
	.byte	0x1
	.long	0x39e
	.long	0x2f3f
	.uleb128 0x4
	.long	0x39e
	.uleb128 0x4
	.long	0x39e
	.byte	0
	.uleb128 0x24
	.long	.LASF1547
	.byte	0x16
	.byte	0x59
	.byte	0x6
	.long	0x2f52
	.uleb128 0x4
	.long	0x116
	.uleb128 0x1a
	.byte	0
	.uleb128 0x24
	.long	.LASF1548
	.byte	0x17
	.byte	0x31
	.byte	0x9
	.long	0x2f64
	.uleb128 0x4
	.long	0x7e
	.byte	0
	.uleb128 0xf
	.long	.LASF1549
	.byte	0x18
	.byte	0x2b
	.byte	0xe
	.long	0x7e
	.long	0x2f84
	.uleb128 0x4
	.long	0x7e
	.uleb128 0x4
	.long	0x391
	.uleb128 0x4
	.long	0x6b
	.byte	0
	.uleb128 0xf
	.long	.LASF1550
	.byte	0x17
	.byte	0x30
	.byte	0x7
	.long	0x7e
	.long	0x2fa4
	.uleb128 0x4
	.long	0x9c
	.uleb128 0x4
	.long	0x9c
	.uleb128 0x4
	.long	0x7e
	.byte	0
	.uleb128 0xf
	.long	.LASF1551
	.byte	0x19
	.byte	0x4e
	.byte	0x7
	.long	0x7e
	.long	0x2fbf
	.uleb128 0x4
	.long	0x9c
	.uleb128 0x4
	.long	0x9c
	.byte	0
	.uleb128 0xf
	.long	.LASF1552
	.byte	0x19
	.byte	0x4b
	.byte	0x5
	.long	0x9c
	.long	0x2fd5
	.uleb128 0x4
	.long	0x9c
	.byte	0
	.uleb128 0xf
	.long	.LASF1553
	.byte	0x19
	.byte	0x49
	.byte	0x5
	.long	0x9c
	.long	0x2feb
	.uleb128 0x4
	.long	0x116
	.byte	0
	.uleb128 0xf
	.long	.LASF1554
	.byte	0x19
	.byte	0x48
	.byte	0x5
	.long	0x9c
	.long	0x3001
	.uleb128 0x4
	.long	0x116
	.byte	0
	.uleb128 0x16
	.long	.LASF1555
	.byte	0x6
	.value	0x16d
	.byte	0xc
	.long	0x9c
	.long	0x301e
	.uleb128 0x4
	.long	0x116
	.uleb128 0x4
	.long	0x2fd
	.uleb128 0x1a
	.byte	0
	.uleb128 0x35
	.long	.LASF1556
	.byte	0x15
	.value	0x2f4
	.byte	0xd
	.long	0x3031
	.uleb128 0x4
	.long	0x9c
	.byte	0
	.uleb128 0x36
	.long	.LASF1618
	.byte	0x1c
	.byte	0x25
	.byte	0xd
	.long	0x2daf
	.uleb128 0x16
	.long	.LASF1557
	.byte	0x6
	.value	0x165
	.byte	0xc
	.long	0x9c
	.long	0x305a
	.uleb128 0x4
	.long	0x318
	.uleb128 0x4
	.long	0x302
	.uleb128 0x1a
	.byte	0
	.uleb128 0xf
	.long	.LASF1558
	.byte	0x1a
	.byte	0x2a
	.byte	0xc
	.long	0x9c
	.long	0x3076
	.uleb128 0x4
	.long	0x9c
	.uleb128 0x4
	.long	0x43
	.uleb128 0x1a
	.byte	0
	.uleb128 0x37
	.long	.LASF1619
	.byte	0x1
	.value	0x3d4
	.byte	0x6
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.long	.LASF1564
	.value	0x3ad
	.byte	0x5
	.long	0x9c
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x3114
	.uleb128 0x5
	.long	.LASF1562
	.value	0x3ad
	.byte	0x1a
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -420
	.uleb128 0x7
	.long	.LASF1559
	.value	0x3b0
	.byte	0x17
	.long	0x3ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x7
	.long	.LASF1560
	.value	0x3b1
	.byte	0x17
	.long	0x3ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x11
	.string	"act"
	.value	0x3b2
	.byte	0x17
	.long	0x6ff
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x7
	.long	.LASF1561
	.value	0x3b3
	.byte	0x17
	.long	0x6ff
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x11
	.string	"res"
	.value	0x3b5
	.byte	0x7
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -404
	.byte	0
	.uleb128 0x38
	.long	.LASF1568
	.byte	0x1
	.value	0x395
	.byte	0x6
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x3143
	.uleb128 0x5
	.long	.LASF1563
	.value	0x395
	.byte	0x1e
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.long	.LASF1565
	.value	0x374
	.long	0x9c
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x3174
	.uleb128 0x5
	.long	.LASF1566
	.value	0x374
	.byte	0x1a
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.long	.LASF1567
	.value	0x36b
	.long	0x9c
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x31a5
	.uleb128 0x5
	.long	.LASF1408
	.value	0x36b
	.byte	0x1a
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.long	.LASF1569
	.value	0x365
	.byte	0x6
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x31d3
	.uleb128 0x5
	.long	.LASF1566
	.value	0x365
	.byte	0x1b
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.long	.LASF1570
	.value	0x35c
	.byte	0x6
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x3201
	.uleb128 0x5
	.long	.LASF1566
	.value	0x35c
	.byte	0x15
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.long	.LASF1571
	.value	0x356
	.byte	0x6
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x322f
	.uleb128 0x5
	.long	.LASF1566
	.value	0x356
	.byte	0x18
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.long	.LASF1572
	.value	0x350
	.byte	0x6
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x325d
	.uleb128 0x5
	.long	.LASF1566
	.value	0x350
	.byte	0x17
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.long	.LASF1573
	.value	0x349
	.byte	0x6
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x329a
	.uleb128 0x5
	.long	.LASF1566
	.value	0x349
	.byte	0x15
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.long	.LASF1538
	.value	0x349
	.byte	0x21
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF1574
	.value	0x344
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.long	.LASF1575
	.value	0x343
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.long	.LASF1594
	.value	0x2e2
	.byte	0x1
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x32fb
	.uleb128 0x7
	.long	.LASF1576
	.value	0x2e5
	.byte	0x8
	.long	0x32fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.byte	0
	.uleb128 0x9
	.long	0x4a
	.long	0x330b
	.uleb128 0xb
	.long	0x43
	.byte	0xff
	.byte	0
	.uleb128 0x27
	.long	.LASF1577
	.value	0x2b5
	.byte	0x6
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.long	.LASF1578
	.value	0x2a3
	.byte	0x1
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x3380
	.uleb128 0x5
	.long	.LASF1566
	.value	0x2a4
	.byte	0x7
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.string	"vol"
	.value	0x2a5
	.byte	0x7
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"sep"
	.value	0x2a6
	.byte	0x7
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.long	.LASF1406
	.value	0x2a7
	.byte	0x7
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x27
	.long	.LASF1579
	.value	0x29a
	.byte	0x1
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.long	.LASF1580
	.value	0x21b
	.byte	0x6
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x342e
	.uleb128 0x7
	.long	.LASF1581
	.value	0x225
	.byte	0x19
	.long	0x77
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x11
	.string	"dl"
	.value	0x226
	.byte	0x11
	.long	0x9c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x11
	.string	"dr"
	.value	0x227
	.byte	0x11
	.long	0x9c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x7
	.long	.LASF1582
	.value	0x22a
	.byte	0x12
	.long	0x342e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.long	.LASF1583
	.value	0x22b
	.byte	0x12
	.long	0x342e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.long	.LASF1584
	.value	0x22c
	.byte	0x12
	.long	0x342e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.long	.LASF1585
	.value	0x22e
	.byte	0xa
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x7
	.long	.LASF1586
	.value	0x231
	.byte	0xa
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x6
	.long	0x95
	.uleb128 0x1e
	.long	.LASF1587
	.value	0x205
	.long	0x9c
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x3464
	.uleb128 0x5
	.long	.LASF1566
	.value	0x205
	.byte	0x1a
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.long	.LASF1588
	.value	0x1f9
	.byte	0x6
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x3492
	.uleb128 0x5
	.long	.LASF1566
	.value	0x1f9
	.byte	0x17
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.long	.LASF1589
	.value	0x1d7
	.byte	0x1
	.long	0x9c
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x34ff
	.uleb128 0x17
	.string	"id"
	.value	0x1d8
	.byte	0x8
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.string	"vol"
	.value	0x1d9
	.byte	0x8
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"sep"
	.value	0x1da
	.byte	0x8
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.long	.LASF1406
	.value	0x1db
	.byte	0x8
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.long	.LASF1404
	.value	0x1dc
	.byte	0x8
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1b
	.long	.LASF1590
	.value	0x1c3
	.byte	0x5
	.long	0x9c
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x3540
	.uleb128 0x17
	.string	"sfx"
	.value	0x1c3
	.byte	0x20
	.long	0x294b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.long	.LASF1591
	.value	0x1c5
	.byte	0xa
	.long	0x3540
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x9
	.long	0x4a
	.long	0x3550
	.uleb128 0xb
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.long	.LASF1592
	.value	0x1b6
	.byte	0x6
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x357e
	.uleb128 0x5
	.long	.LASF1407
	.value	0x1b6
	.byte	0x1b
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.long	.LASF1593
	.value	0x1ab
	.byte	0x6
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x35ac
	.uleb128 0x5
	.long	.LASF1407
	.value	0x1ab
	.byte	0x19
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.long	.LASF1595
	.value	0x18c
	.byte	0x6
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x35f4
	.uleb128 0x11
	.string	"i"
	.value	0x191
	.byte	0x8
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.string	"j"
	.value	0x192
	.byte	0x8
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.long	.LASF1596
	.value	0x194
	.byte	0x8
	.long	0x2daf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.long	.LASF1597
	.value	0x109
	.byte	0x1
	.long	0x9c
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x36cf
	.uleb128 0x5
	.long	.LASF1598
	.value	0x10a
	.byte	0x8
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.long	.LASF1407
	.value	0x10b
	.byte	0x8
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.long	.LASF1585
	.value	0x10c
	.byte	0x8
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.long	.LASF1599
	.value	0x10d
	.byte	0x8
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.long	.LASF1600
	.value	0x10f
	.byte	0x1b
	.long	0x87
	.uleb128 0x9
	.byte	0x3
	.quad	handlenums.0
	.uleb128 0x11
	.string	"i"
	.value	0x111
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.string	"rc"
	.value	0x112
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.long	.LASF1601
	.value	0x114
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.long	.LASF1602
	.value	0x115
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.long	.LASF1603
	.value	0x116
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.long	.LASF1604
	.value	0x118
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.long	.LASF1605
	.value	0x119
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF1606
	.byte	0x1
	.byte	0xba
	.byte	0x1
	.long	0x7e
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3774
	.uleb128 0x28
	.long	.LASF1607
	.byte	0xbb
	.byte	0x11
	.long	0x116
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1f
	.string	"len"
	.byte	0xbc
	.byte	0x11
	.long	0x2daf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x20
	.string	"sfx"
	.byte	0xbe
	.byte	0x19
	.long	0x2ce6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.long	.LASF1608
	.byte	0xbf
	.byte	0x19
	.long	0x2ce6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.string	"i"
	.byte	0xc0
	.byte	0x19
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x13
	.long	.LASF1609
	.byte	0xc1
	.byte	0x19
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x13
	.long	.LASF1610
	.byte	0xc2
	.byte	0x19
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x13
	.long	.LASF1402
	.byte	0xc3
	.byte	0x19
	.long	0x2ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.long	.LASF1611
	.byte	0xc4
	.byte	0x19
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x3a
	.long	.LASF1612
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.string	"fd"
	.byte	0xa2
	.byte	0x7
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF1613
	.byte	0xa3
	.byte	0x7
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.string	"arg"
	.byte	0xa4
	.byte	0x8
	.long	0x2daf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.string	"rc"
	.byte	0xa6
	.byte	0xa
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
	.uleb128 0x5
	.byte	0
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xf
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x15
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x17
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
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x7a
	.uleb128 0x19
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x2f
	.uleb128 0x17
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x35
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
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
.LASF1594:
	.string	"I_InitSound"
.LASF923:
	.string	"S_BSPI_RUN1"
.LASF924:
	.string	"S_BSPI_RUN2"
.LASF925:
	.string	"S_BSPI_RUN3"
.LASF926:
	.string	"S_BSPI_RUN4"
.LASF927:
	.string	"S_BSPI_RUN5"
.LASF928:
	.string	"S_BSPI_RUN6"
.LASF929:
	.string	"S_BSPI_RUN7"
.LASF930:
	.string	"S_BSPI_RUN8"
.LASF931:
	.string	"S_BSPI_RUN9"
.LASF1456:
	.string	"sfx_cybsit"
.LASF216:
	.string	"SPR_YSKU"
.LASF1422:
	.string	"sfx_sawup"
.LASF578:
	.string	"S_FIRE10"
.LASF579:
	.string	"S_FIRE11"
.LASF580:
	.string	"S_FIRE12"
.LASF581:
	.string	"S_FIRE13"
.LASF582:
	.string	"S_FIRE14"
.LASF583:
	.string	"S_FIRE15"
.LASF584:
	.string	"S_FIRE16"
.LASF87:
	.string	"si_addr_lsb"
.LASF48:
	.string	"_unused2"
.LASF587:
	.string	"S_FIRE19"
.LASF1390:
	.string	"MT_MISC84"
.LASF1323:
	.string	"MT_MISC20"
.LASF1146:
	.string	"S_MEGA2"
.LASF34:
	.string	"_fileno"
.LASF1148:
	.string	"S_MEGA4"
.LASF1327:
	.string	"MT_MISC24"
.LASF1328:
	.string	"MT_MISC25"
.LASF1330:
	.string	"MT_MISC26"
.LASF1331:
	.string	"MT_MISC27"
.LASF1332:
	.string	"MT_MISC28"
.LASF1335:
	.string	"MT_MISC29"
.LASF777:
	.string	"S_SARG_PAIN2"
.LASF123:
	.string	"wp_pistol"
.LASF257:
	.string	"SPR_COL1"
.LASF258:
	.string	"SPR_COL2"
.LASF259:
	.string	"SPR_COL3"
.LASF260:
	.string	"SPR_COL4"
.LASF269:
	.string	"SPR_COL5"
.LASF263:
	.string	"SPR_COL6"
.LASF1566:
	.string	"handle"
.LASF1560:
	.string	"ovalue"
.LASF1518:
	.string	"sfx_skesit"
.LASF1499:
	.string	"sfx_tink"
.LASF588:
	.string	"S_FIRE20"
.LASF589:
	.string	"S_FIRE21"
.LASF590:
	.string	"S_FIRE22"
.LASF591:
	.string	"S_FIRE23"
.LASF592:
	.string	"S_FIRE24"
.LASF243:
	.string	"SPR_COLU"
.LASF594:
	.string	"S_FIRE26"
.LASF595:
	.string	"S_FIRE27"
.LASF596:
	.string	"S_FIRE28"
.LASF597:
	.string	"S_FIRE29"
.LASF1336:
	.string	"MT_MISC30"
.LASF1337:
	.string	"MT_MISC31"
.LASF1338:
	.string	"MT_MISC32"
.LASF1339:
	.string	"MT_MISC33"
.LASF939:
	.string	"S_BSPI_PAIN"
.LASF1341:
	.string	"MT_MISC35"
.LASF411:
	.string	"S_BFGEXP"
.LASF136:
	.string	"am_misl"
.LASF1344:
	.string	"MT_MISC38"
.LASF1345:
	.string	"MT_MISC39"
.LASF941:
	.string	"S_BSPI_DIE1"
.LASF1396:
	.string	"NUMPSPRITES"
.LASF1593:
	.string	"I_SetSfxVolume"
.LASF946:
	.string	"S_BSPI_DIE6"
.LASF1505:
	.string	"sfx_getpow"
.LASF642:
	.string	"S_SKEL_RAISE4"
.LASF75:
	.string	"si_uid"
.LASF838:
	.string	"S_BOSS_RAISE2"
.LASF1270:
	.string	"MT_HEAD"
.LASF839:
	.string	"S_BOSS_RAISE3"
.LASF598:
	.string	"S_FIRE30"
.LASF743:
	.string	"S_TROO_PAIN"
.LASF1032:
	.string	"S_SSWV_DIE1"
.LASF842:
	.string	"S_BOSS_RAISE6"
.LASF1034:
	.string	"S_SSWV_DIE3"
.LASF1035:
	.string	"S_SSWV_DIE4"
.LASF1036:
	.string	"S_SSWV_DIE5"
.LASF211:
	.string	"SPR_BKEY"
.LASF854:
	.string	"S_BOS2_ATK1"
.LASF855:
	.string	"S_BOS2_ATK2"
.LASF856:
	.string	"S_BOS2_ATK3"
.LASF245:
	.string	"SPR_GOR1"
.LASF252:
	.string	"SPR_GOR2"
.LASF39:
	.string	"_shortbuf"
.LASF254:
	.string	"SPR_GOR4"
.LASF255:
	.string	"SPR_GOR5"
.LASF1348:
	.string	"MT_MISC42"
.LASF1349:
	.string	"MT_MISC43"
.LASF611:
	.string	"S_SKEL_RUN1"
.LASF612:
	.string	"S_SKEL_RUN2"
.LASF613:
	.string	"S_SKEL_RUN3"
.LASF614:
	.string	"S_SKEL_RUN4"
.LASF615:
	.string	"S_SKEL_RUN5"
.LASF616:
	.string	"S_SKEL_RUN6"
.LASF617:
	.string	"S_SKEL_RUN7"
.LASF618:
	.string	"S_SKEL_RUN8"
.LASF619:
	.string	"S_SKEL_RUN9"
.LASF126:
	.string	"wp_missile"
.LASF1097:
	.string	"S_BEXP2"
.LASF792:
	.string	"S_HEAD_ATK1"
.LASF793:
	.string	"S_HEAD_ATK2"
.LASF794:
	.string	"S_HEAD_ATK3"
.LASF1046:
	.string	"S_SSWV_RAISE1"
.LASF1047:
	.string	"S_SSWV_RAISE2"
.LASF1048:
	.string	"S_SSWV_RAISE3"
.LASF1049:
	.string	"S_SSWV_RAISE4"
.LASF1050:
	.string	"S_SSWV_RAISE5"
.LASF1265:
	.string	"MT_FATSHOT"
.LASF231:
	.string	"SPR_CELL"
.LASF232:
	.string	"SPR_CELP"
.LASF1212:
	.string	"S_HEARTCOL"
.LASF853:
	.string	"S_BOS2_RUN8"
.LASF1585:
	.string	"step"
.LASF1136:
	.string	"S_PINV"
.LASF1314:
	.string	"MT_INS"
.LASF1357:
	.string	"MT_MISC51"
.LASF1358:
	.string	"MT_MISC52"
.LASF1312:
	.string	"MT_INV"
.LASF1360:
	.string	"MT_MISC54"
.LASF99:
	.string	"_sigpoll"
.LASF347:
	.string	"S_MISSILEUP"
.LASF1363:
	.string	"MT_MISC57"
.LASF1364:
	.string	"MT_MISC58"
.LASF1365:
	.string	"MT_MISC59"
.LASF524:
	.string	"S_SPOS_RAISE1"
.LASF1416:
	.string	"sfx_dshtgn"
.LASF318:
	.string	"S_SGUNFLASH1"
.LASF319:
	.string	"S_SGUNFLASH2"
.LASF866:
	.string	"S_BOS2_RAISE1"
.LASF867:
	.string	"S_BOS2_RAISE2"
.LASF868:
	.string	"S_BOS2_RAISE3"
.LASF869:
	.string	"S_BOS2_RAISE4"
.LASF870:
	.string	"S_BOS2_RAISE5"
.LASF20:
	.string	"_flags"
.LASF872:
	.string	"S_BOS2_RAISE7"
.LASF631:
	.string	"S_SKEL_PAIN"
.LASF428:
	.string	"S_TFOG9"
.LASF1118:
	.string	"S_RKEY"
.LASF1428:
	.string	"sfx_firsht"
.LASF1575:
	.string	"I_InitMusic"
.LASF1420:
	.string	"sfx_plasma"
.LASF300:
	.string	"S_PISTOLUP"
.LASF986:
	.string	"S_CYBER_DIE8"
.LASF93:
	.string	"_arch"
.LASF1433:
	.string	"sfx_dorcls"
.LASF13:
	.string	"__off_t"
.LASF1366:
	.string	"MT_MISC60"
.LASF1367:
	.string	"MT_MISC61"
.LASF1368:
	.string	"MT_MISC62"
.LASF1369:
	.string	"MT_MISC63"
.LASF1370:
	.string	"MT_MISC64"
.LASF1371:
	.string	"MT_MISC65"
.LASF1372:
	.string	"MT_MISC66"
.LASF1373:
	.string	"MT_MISC67"
.LASF415:
	.string	"S_EXPLODE1"
.LASF416:
	.string	"S_EXPLODE2"
.LASF417:
	.string	"S_EXPLODE3"
.LASF1511:
	.string	"sfx_manatk"
.LASF84:
	.string	"_addr_bnd"
.LASF606:
	.string	"S_TRACEEXP1"
.LASF607:
	.string	"S_TRACEEXP2"
.LASF608:
	.string	"S_TRACEEXP3"
.LASF994:
	.string	"S_PAIN_RUN5"
.LASF1096:
	.string	"S_BEXP"
.LASF995:
	.string	"S_PAIN_RUN6"
.LASF1571:
	.string	"I_ResumeSong"
.LASF1213:
	.string	"S_HEARTCOL2"
.LASF392:
	.string	"S_RBALLX1"
.LASF1419:
	.string	"sfx_dbload"
.LASF69:
	.string	"it_value"
.LASF1297:
	.string	"MT_TELEPORTMAN"
.LASF40:
	.string	"_lock"
.LASF1610:
	.string	"paddedsize"
.LASF1376:
	.string	"MT_MISC70"
.LASF176:
	.string	"SPR_IFOG"
.LASF1378:
	.string	"MT_MISC72"
.LASF1379:
	.string	"MT_MISC73"
.LASF1380:
	.string	"MT_MISC74"
.LASF1381:
	.string	"MT_MISC75"
.LASF1382:
	.string	"MT_MISC76"
.LASF1219:
	.string	"S_GREENTORCH2"
.LASF1220:
	.string	"S_GREENTORCH3"
.LASF1221:
	.string	"S_GREENTORCH4"
.LASF1528:
	.string	"channelstepremainder"
.LASF1060:
	.string	"S_COMMKEEN9"
.LASF709:
	.string	"S_CPOS_PAIN2"
.LASF932:
	.string	"S_BSPI_RUN10"
.LASF933:
	.string	"S_BSPI_RUN11"
.LASF934:
	.string	"S_BSPI_RUN12"
.LASF1619:
	.string	"I_SoundDelTimer"
.LASF1016:
	.string	"S_SSWV_RUN1"
.LASF1017:
	.string	"S_SSWV_RUN2"
.LASF1018:
	.string	"S_SSWV_RUN3"
.LASF1019:
	.string	"S_SSWV_RUN4"
.LASF1020:
	.string	"S_SSWV_RUN5"
.LASF1021:
	.string	"S_SSWV_RUN6"
.LASF1022:
	.string	"S_SSWV_RUN7"
.LASF1023:
	.string	"S_SSWV_RUN8"
.LASF1201:
	.string	"S_SKULLCOL"
.LASF1538:
	.string	"looping"
.LASF1570:
	.string	"I_StopSong"
.LASF1264:
	.string	"MT_FATSO"
.LASF745:
	.string	"S_TROO_DIE1"
.LASF746:
	.string	"S_TROO_DIE2"
.LASF747:
	.string	"S_TROO_DIE3"
.LASF748:
	.string	"S_TROO_DIE4"
.LASF749:
	.string	"S_TROO_DIE5"
.LASF1408:
	.string	"data"
.LASF1126:
	.string	"S_YSKULL"
.LASF1127:
	.string	"S_YSKULL2"
.LASF229:
	.string	"SPR_ROCK"
.LASF1289:
	.string	"MT_ROCKET"
.LASF1387:
	.string	"MT_MISC81"
.LASF1388:
	.string	"MT_MISC82"
.LASF1389:
	.string	"MT_MISC83"
.LASF704:
	.string	"S_CPOS_ATK1"
.LASF705:
	.string	"S_CPOS_ATK2"
.LASF706:
	.string	"S_CPOS_ATK3"
.LASF707:
	.string	"S_CPOS_ATK4"
.LASF1256:
	.string	"MT_PLAYER"
.LASF97:
	.string	"_sigchld"
.LASF241:
	.string	"SPR_SHOT"
.LASF433:
	.string	"S_IFOG2"
.LASF434:
	.string	"S_IFOG3"
.LASF435:
	.string	"S_IFOG4"
.LASF436:
	.string	"S_IFOG5"
.LASF170:
	.string	"SPR_PLSE"
.LASF162:
	.string	"SPR_PLSF"
.LASF161:
	.string	"SPR_PLSG"
.LASF83:
	.string	"_upper"
.LASF529:
	.string	"S_VILE_STND"
.LASF1556:
	.string	"exit"
.LASF1057:
	.string	"S_COMMKEEN6"
.LASF1058:
	.string	"S_COMMKEEN7"
.LASF1059:
	.string	"S_COMMKEEN8"
.LASF169:
	.string	"SPR_PLSS"
.LASF908:
	.string	"S_SPID_PAIN2"
.LASF1446:
	.string	"sfx_oof"
.LASF1487:
	.string	"sfx_posact"
.LASF110:
	.string	"sigaction"
.LASF282:
	.string	"SPR_POB1"
.LASF283:
	.string	"SPR_POB2"
.LASF1539:
	.string	"musicdies"
.LASF1130:
	.string	"S_SOUL"
.LASF1478:
	.string	"sfx_skldth"
.LASF1140:
	.string	"S_PSTR"
.LASF972:
	.string	"S_CYBER_ATK1"
.LASF973:
	.string	"S_CYBER_ATK2"
.LASF974:
	.string	"S_CYBER_ATK3"
.LASF975:
	.string	"S_CYBER_ATK4"
.LASF976:
	.string	"S_CYBER_ATK5"
.LASF977:
	.string	"S_CYBER_ATK6"
.LASF1549:
	.string	"memcpy"
.LASF1167:
	.string	"S_BFUG"
.LASF208:
	.string	"SPR_FCAN"
.LASF650:
	.string	"S_FATT_STND"
.LASF1087:
	.string	"S_BRAINEXPLODE1"
.LASF1088:
	.string	"S_BRAINEXPLODE2"
.LASF1089:
	.string	"S_BRAINEXPLODE3"
.LASF371:
	.string	"S_BFGUP"
.LASF829:
	.string	"S_BOSS_PAIN2"
.LASF213:
	.string	"SPR_YKEY"
.LASF758:
	.string	"S_TROO_RAISE1"
.LASF759:
	.string	"S_TROO_RAISE2"
.LASF760:
	.string	"S_TROO_RAISE3"
.LASF761:
	.string	"S_TROO_RAISE4"
.LASF762:
	.string	"S_TROO_RAISE5"
.LASF96:
	.string	"_timer"
.LASF1171:
	.string	"S_PLAS"
.LASF1053:
	.string	"S_COMMKEEN2"
.LASF1054:
	.string	"S_COMMKEEN3"
.LASF1055:
	.string	"S_COMMKEEN4"
.LASF1056:
	.string	"S_COMMKEEN5"
.LASF437:
	.string	"S_PLAY"
.LASF1003:
	.string	"S_PAIN_DIE2"
.LASF1004:
	.string	"S_PAIN_DIE3"
.LASF1005:
	.string	"S_PAIN_DIE4"
.LASF1006:
	.string	"S_PAIN_DIE5"
.LASF1007:
	.string	"S_PAIN_DIE6"
.LASF1267:
	.string	"MT_TROOP"
.LASF558:
	.string	"S_VILE_PAIN2"
.LASF686:
	.string	"S_FATT_RAISE1"
.LASF127:
	.string	"wp_plasma"
.LASF688:
	.string	"S_FATT_RAISE3"
.LASF114:
	.string	"sa_restorer"
.LASF690:
	.string	"S_FATT_RAISE5"
.LASF691:
	.string	"S_FATT_RAISE6"
.LASF26:
	.string	"_IO_write_end"
.LASF693:
	.string	"S_FATT_RAISE8"
.LASF402:
	.string	"S_ROCKET"
.LASF1288:
	.string	"MT_HEADSHOT"
.LASF955:
	.string	"S_ARACH_PLAZ"
.LASF1194:
	.string	"S_STALAGTITE"
.LASF796:
	.string	"S_HEAD_PAIN2"
.LASF797:
	.string	"S_HEAD_PAIN3"
.LASF92:
	.string	"_syscall"
.LASF1535:
	.string	"vol_lookup"
.LASF120:
	.string	"it_redskull"
.LASF1488:
	.string	"sfx_bgact"
.LASF1295:
	.string	"MT_TFOG"
.LASF505:
	.string	"S_SPOS_ATK1"
.LASF506:
	.string	"S_SPOS_ATK2"
.LASF507:
	.string	"S_SPOS_ATK3"
.LASF442:
	.string	"S_PLAY_ATK1"
.LASF443:
	.string	"S_PLAY_ATK2"
.LASF196:
	.string	"SPR_APLS"
.LASF56:
	.string	"__sigset_t"
.LASF1223:
	.string	"S_REDTORCH2"
.LASF1224:
	.string	"S_REDTORCH3"
.LASF1225:
	.string	"S_REDTORCH4"
.LASF732:
	.string	"S_TROO_RUN1"
.LASF733:
	.string	"S_TROO_RUN2"
.LASF734:
	.string	"S_TROO_RUN3"
.LASF735:
	.string	"S_TROO_RUN4"
.LASF736:
	.string	"S_TROO_RUN5"
.LASF737:
	.string	"S_TROO_RUN6"
.LASF738:
	.string	"S_TROO_RUN7"
.LASF739:
	.string	"S_TROO_RUN8"
.LASF1512:
	.string	"sfx_mandth"
.LASF187:
	.string	"SPR_CPOS"
.LASF647:
	.string	"S_FATSHOTX1"
.LASF648:
	.string	"S_FATSHOTX2"
.LASF649:
	.string	"S_FATSHOTX3"
.LASF727:
	.string	"S_CPOS_RAISE5"
.LASF728:
	.string	"S_CPOS_RAISE6"
.LASF729:
	.string	"S_CPOS_RAISE7"
.LASF122:
	.string	"wp_fist"
.LASF1583:
	.string	"rightout"
.LASF217:
	.string	"SPR_STIM"
.LASF95:
	.string	"_kill"
.LASF763:
	.string	"S_SARG_STND"
.LASF988:
	.string	"S_CYBER_DIE10"
.LASF167:
	.string	"SPR_BAL1"
.LASF168:
	.string	"SPR_BAL2"
.LASF190:
	.string	"SPR_BAL7"
.LASF1482:
	.string	"sfx_bspdth"
.LASF1182:
	.string	"S_HEADSONSTICK"
.LASF1517:
	.string	"sfx_skeact"
.LASF1513:
	.string	"sfx_sssit"
.LASF639:
	.string	"S_SKEL_RAISE1"
.LASF155:
	.string	"SPR_SHT2"
.LASF293:
	.string	"S_PUNCH1"
.LASF294:
	.string	"S_PUNCH2"
.LASF295:
	.string	"S_PUNCH3"
.LASF296:
	.string	"S_PUNCH4"
.LASF297:
	.string	"S_PUNCH5"
.LASF1602:
	.string	"oldestnum"
.LASF656:
	.string	"S_FATT_RUN5"
.LASF292:
	.string	"S_PUNCHUP"
.LASF658:
	.string	"S_FATT_RUN7"
.LASF909:
	.string	"S_SPID_DIE1"
.LASF660:
	.string	"S_FATT_RUN9"
.LASF911:
	.string	"S_SPID_DIE3"
.LASF912:
	.string	"S_SPID_DIE4"
.LASF154:
	.string	"SPR_SHTF"
.LASF150:
	.string	"SPR_SHTG"
.LASF431:
	.string	"S_IFOG01"
.LASF432:
	.string	"S_IFOG02"
.LASF917:
	.string	"S_SPID_DIE9"
.LASF1159:
	.string	"S_AMMO"
.LASF137:
	.string	"NUMAMMO"
.LASF990:
	.string	"S_PAIN_RUN1"
.LASF991:
	.string	"S_PAIN_RUN2"
.LASF992:
	.string	"S_PAIN_RUN3"
.LASF993:
	.string	"S_PAIN_RUN4"
.LASF16:
	.string	"__clock_t"
.LASF277:
	.string	"SPR_HDB2"
.LASF278:
	.string	"SPR_HDB3"
.LASF279:
	.string	"SPR_HDB4"
.LASF280:
	.string	"SPR_HDB5"
.LASF281:
	.string	"SPR_HDB6"
.LASF1257:
	.string	"MT_POSSESSED"
.LASF325:
	.string	"S_DSGUN3"
.LASF326:
	.string	"S_DSGUN4"
.LASF1584:
	.string	"leftend"
.LASF345:
	.string	"S_MISSILE"
.LASF1173:
	.string	"S_SHOT2"
.LASF72:
	.string	"sival_ptr"
.LASF1240:
	.string	"S_HANGTLOOKDN"
.LASF12:
	.string	"__uid_t"
.LASF81:
	.string	"si_stime"
.LASF717:
	.string	"S_CPOS_XDIE1"
.LASF719:
	.string	"S_CPOS_XDIE3"
.LASF1555:
	.string	"sprintf"
.LASF1536:
	.string	"channelleftvol_lookup"
.LASF237:
	.string	"SPR_MGUN"
.LASF1269:
	.string	"MT_SHADOWS"
.LASF620:
	.string	"S_SKEL_RUN10"
.LASF621:
	.string	"S_SKEL_RUN11"
.LASF622:
	.string	"S_SKEL_RUN12"
.LASF274:
	.string	"SPR_SMGT"
.LASF830:
	.string	"S_BOSS_DIE1"
.LASF831:
	.string	"S_BOSS_DIE2"
.LASF832:
	.string	"S_BOSS_DIE3"
.LASF833:
	.string	"S_BOSS_DIE4"
.LASF834:
	.string	"S_BOSS_DIE5"
.LASF835:
	.string	"S_BOSS_DIE6"
.LASF836:
	.string	"S_BOSS_DIE7"
.LASF1000:
	.string	"S_PAIN_PAIN"
.LASF369:
	.string	"S_BFG"
.LASF1601:
	.string	"oldest"
.LASF1015:
	.string	"S_SSWV_STND2"
.LASF238:
	.string	"SPR_CSAW"
.LASF1150:
	.string	"S_PMAP"
.LASF33:
	.string	"_chain"
.LASF91:
	.string	"_call_addr"
.LASF1156:
	.string	"S_PVIS"
.LASF1044:
	.string	"S_SSWV_XDIE8"
.LASF370:
	.string	"S_BFGDOWN"
.LASF1460:
	.string	"sfx_vilsit"
.LASF1281:
	.string	"MT_BOSSBRAIN"
.LASF184:
	.string	"SPR_SKEL"
.LASF365:
	.string	"S_PLASMA1"
.LASF366:
	.string	"S_PLASMA2"
.LASF1230:
	.string	"S_GTORCHSHRT"
.LASF1447:
	.string	"sfx_telept"
.LASF1541:
	.string	"setitimer"
.LASF1164:
	.string	"S_SHEL"
.LASF921:
	.string	"S_BSPI_STND2"
.LASF5:
	.string	"unsigned char"
.LASF1481:
	.string	"sfx_spidth"
.LASF182:
	.string	"SPR_FATB"
.LASF287:
	.string	"NUMSPRITES"
.LASF404:
	.string	"S_BFGSHOT2"
.LASF186:
	.string	"SPR_FATT"
.LASF1468:
	.string	"sfx_skeswg"
.LASF1131:
	.string	"S_SOUL2"
.LASF1132:
	.string	"S_SOUL3"
.LASF1133:
	.string	"S_SOUL4"
.LASF1134:
	.string	"S_SOUL5"
.LASF1135:
	.string	"S_SOUL6"
.LASF1615:
	.string	"_IO_lock_t"
.LASF891:
	.string	"S_SPID_RUN1"
.LASF892:
	.string	"S_SPID_RUN2"
.LASF893:
	.string	"S_SPID_RUN3"
.LASF894:
	.string	"S_SPID_RUN4"
.LASF895:
	.string	"S_SPID_RUN5"
.LASF896:
	.string	"S_SPID_RUN6"
.LASF897:
	.string	"S_SPID_RUN7"
.LASF898:
	.string	"S_SPID_RUN8"
.LASF62:
	.string	"float"
.LASF1098:
	.string	"S_BEXP3"
.LASF1099:
	.string	"S_BEXP4"
.LASF1426:
	.string	"sfx_rlaunc"
.LASF1187:
	.string	"S_DEADSTICK"
.LASF1298:
	.string	"MT_EXTRABFG"
.LASF477:
	.string	"S_POSS_DIE1"
.LASF478:
	.string	"S_POSS_DIE2"
.LASF479:
	.string	"S_POSS_DIE3"
.LASF480:
	.string	"S_POSS_DIE4"
.LASF481:
	.string	"S_POSS_DIE5"
.LASF307:
	.string	"S_SGUNDOWN"
.LASF1515:
	.string	"sfx_keenpn"
.LASF157:
	.string	"SPR_CHGF"
.LASF156:
	.string	"SPR_CHGG"
.LASF958:
	.string	"S_ARACH_PLEX2"
.LASF959:
	.string	"S_ARACH_PLEX3"
.LASF960:
	.string	"S_ARACH_PLEX4"
.LASF961:
	.string	"S_ARACH_PLEX5"
.LASF702:
	.string	"S_CPOS_RUN7"
.LASF1444:
	.string	"sfx_itemup"
.LASF267:
	.string	"SPR_CEYE"
.LASF1008:
	.string	"S_PAIN_RAISE1"
.LASF1009:
	.string	"S_PAIN_RAISE2"
.LASF1010:
	.string	"S_PAIN_RAISE3"
.LASF113:
	.string	"sa_flags"
.LASF1012:
	.string	"S_PAIN_RAISE5"
.LASF645:
	.string	"S_FATSHOT1"
.LASF646:
	.string	"S_FATSHOT2"
.LASF1500:
	.string	"sfx_bdopn"
.LASF224:
	.string	"SPR_SUIT"
.LASF873:
	.string	"S_SKULL_STND"
.LASF1590:
	.string	"I_GetSfxLumpNum"
.LASF1412:
	.string	"sfx_None"
.LASF907:
	.string	"S_SPID_PAIN"
.LASF1393:
	.string	"NUMMOBJTYPES"
.LASF206:
	.string	"SPR_BAR1"
.LASF320:
	.string	"S_DSGUN"
.LASF1199:
	.string	"S_CANDLESTIK"
.LASF143:
	.string	"pw_allmap"
.LASF1255:
	.string	"NUMSTATES"
.LASF899:
	.string	"S_SPID_RUN9"
.LASF385:
	.string	"S_TBALL1"
.LASF386:
	.string	"S_TBALL2"
.LASF599:
	.string	"S_SMOKE1"
.LASF600:
	.string	"S_SMOKE2"
.LASF601:
	.string	"S_SMOKE3"
.LASF602:
	.string	"S_SMOKE4"
.LASF603:
	.string	"S_SMOKE5"
.LASF822:
	.string	"S_BOSS_RUN6"
.LASF823:
	.string	"S_BOSS_RUN7"
.LASF824:
	.string	"S_BOSS_RUN8"
.LASF189:
	.string	"SPR_HEAD"
.LASF250:
	.string	"SPR_POL1"
.LASF246:
	.string	"SPR_POL2"
.LASF249:
	.string	"SPR_POL3"
.LASF248:
	.string	"SPR_POL4"
.LASF247:
	.string	"SPR_POL5"
.LASF251:
	.string	"SPR_POL6"
.LASF1094:
	.string	"S_BAR1"
.LASF585:
	.string	"S_FIRE17"
.LASF276:
	.string	"SPR_HDB1"
.LASF60:
	.string	"tv_usec"
.LASF1299:
	.string	"MT_MISC0"
.LASF1180:
	.string	"S_DEADTORSO"
.LASF322:
	.string	"S_DSGUNUP"
.LASF1507:
	.string	"sfx_boscub"
.LASF1543:
	.string	"access"
.LASF1397:
	.string	"snd_SfxVolume"
.LASF1469:
	.string	"sfx_pldeth"
.LASF1578:
	.string	"I_UpdateSoundParams"
.LASF731:
	.string	"S_TROO_STND2"
.LASF1251:
	.string	"S_TECH2LAMP"
.LASF1398:
	.string	"snd_MusicVolume"
.LASF1432:
	.string	"sfx_doropn"
.LASF1285:
	.string	"MT_SPAWNFIRE"
.LASF1540:
	.string	"itimer"
.LASF1524:
	.string	"lengths"
.LASF1260:
	.string	"MT_FIRE"
.LASF828:
	.string	"S_BOSS_PAIN"
.LASF1530:
	.string	"channelsend"
.LASF200:
	.string	"SPR_SSWV"
.LASF25:
	.string	"_IO_write_ptr"
.LASF1237:
	.string	"S_RTORCHSHRT4"
.LASF390:
	.string	"S_RBALL1"
.LASF391:
	.string	"S_RBALL2"
.LASF1442:
	.string	"sfx_pepain"
.LASF1195:
	.string	"S_TALLGRNCOL"
.LASF1589:
	.string	"I_StartSound"
.LASF1479:
	.string	"sfx_brsdth"
.LASF1415:
	.string	"sfx_sgcock"
.LASF1184:
	.string	"S_HEADONASTICK"
.LASF464:
	.string	"S_POSS_RUN1"
.LASF406:
	.string	"S_BFGLAND2"
.LASF407:
	.string	"S_BFGLAND3"
.LASF408:
	.string	"S_BFGLAND4"
.LASF409:
	.string	"S_BFGLAND5"
.LASF410:
	.string	"S_BFGLAND6"
.LASF470:
	.string	"S_POSS_RUN7"
.LASF471:
	.string	"S_POSS_RUN8"
.LASF18:
	.string	"__suseconds_t"
.LASF1569:
	.string	"I_UnRegisterSong"
.LASF453:
	.string	"S_PLAY_XDIE1"
.LASF454:
	.string	"S_PLAY_XDIE2"
.LASF455:
	.string	"S_PLAY_XDIE3"
.LASF456:
	.string	"S_PLAY_XDIE4"
.LASF457:
	.string	"S_PLAY_XDIE5"
.LASF458:
	.string	"S_PLAY_XDIE6"
.LASF459:
	.string	"S_PLAY_XDIE7"
.LASF460:
	.string	"S_PLAY_XDIE8"
.LASF461:
	.string	"S_PLAY_XDIE9"
.LASF859:
	.string	"S_BOS2_DIE1"
.LASF860:
	.string	"S_BOS2_DIE2"
.LASF861:
	.string	"S_BOS2_DIE3"
.LASF862:
	.string	"S_BOS2_DIE4"
.LASF863:
	.string	"S_BOS2_DIE5"
.LASF864:
	.string	"S_BOS2_DIE6"
.LASF865:
	.string	"S_BOS2_DIE7"
.LASF785:
	.string	"S_SARG_RAISE2"
.LASF429:
	.string	"S_TFOG10"
.LASF787:
	.string	"S_SARG_RAISE4"
.LASF482:
	.string	"S_POSS_XDIE1"
.LASF483:
	.string	"S_POSS_XDIE2"
.LASF484:
	.string	"S_POSS_XDIE3"
.LASF485:
	.string	"S_POSS_XDIE4"
.LASF486:
	.string	"S_POSS_XDIE5"
.LASF487:
	.string	"S_POSS_XDIE6"
.LASF488:
	.string	"S_POSS_XDIE7"
.LASF133:
	.string	"am_clip"
.LASF490:
	.string	"S_POSS_XDIE9"
.LASF1183:
	.string	"S_GIBS"
.LASF798:
	.string	"S_HEAD_DIE1"
.LASF799:
	.string	"S_HEAD_DIE2"
.LASF800:
	.string	"S_HEAD_DIE3"
.LASF801:
	.string	"S_HEAD_DIE4"
.LASF802:
	.string	"S_HEAD_DIE5"
.LASF803:
	.string	"S_HEAD_DIE6"
.LASF651:
	.string	"S_FATT_STND2"
.LASF1174:
	.string	"S_COLU"
.LASF301:
	.string	"S_PISTOL1"
.LASF302:
	.string	"S_PISTOL2"
.LASF303:
	.string	"S_PISTOL3"
.LASF304:
	.string	"S_PISTOL4"
.LASF640:
	.string	"S_SKEL_RAISE2"
.LASF641:
	.string	"S_SKEL_RAISE3"
.LASF49:
	.string	"FILE"
.LASF643:
	.string	"S_SKEL_RAISE5"
.LASF644:
	.string	"S_SKEL_RAISE6"
.LASF1203:
	.string	"S_BIGTREE"
.LASF1111:
	.string	"S_BON2A"
.LASF1113:
	.string	"S_BON2C"
.LASF1114:
	.string	"S_BON2D"
.LASF419:
	.string	"S_TFOG01"
.LASF420:
	.string	"S_TFOG02"
.LASF239:
	.string	"SPR_LAUN"
.LASF66:
	.string	"ITIMER_PROF"
.LASF475:
	.string	"S_POSS_PAIN"
.LASF810:
	.string	"S_BRBALL1"
.LASF811:
	.string	"S_BRBALL2"
.LASF771:
	.string	"S_SARG_RUN7"
.LASF1277:
	.string	"MT_CYBORG"
.LASF515:
	.string	"S_SPOS_XDIE1"
.LASF516:
	.string	"S_SPOS_XDIE2"
.LASF517:
	.string	"S_SPOS_XDIE3"
.LASF518:
	.string	"S_SPOS_XDIE4"
.LASF519:
	.string	"S_SPOS_XDIE5"
.LASF520:
	.string	"S_SPOS_XDIE6"
.LASF521:
	.string	"S_SPOS_XDIE7"
.LASF522:
	.string	"S_SPOS_XDIE8"
.LASF523:
	.string	"S_SPOS_XDIE9"
.LASF1440:
	.string	"sfx_vipain"
.LASF1532:
	.string	"channelhandles"
.LASF9:
	.string	"size_t"
.LASF1544:
	.string	"getenv"
.LASF1116:
	.string	"S_BKEY"
.LASF141:
	.string	"pw_invisibility"
.LASF1548:
	.string	"Z_Free"
.LASF204:
	.string	"SPR_ARM1"
.LASF205:
	.string	"SPR_ARM2"
.LASF1259:
	.string	"MT_VILE"
.LASF1431:
	.string	"sfx_pstop"
.LASF118:
	.string	"it_blueskull"
.LASF363:
	.string	"S_PLASMADOWN"
.LASF675:
	.string	"S_FATT_PAIN2"
.LASF1516:
	.string	"sfx_keendt"
.LASF1073:
	.string	"S_BRAINEYESEE"
.LASF610:
	.string	"S_SKEL_STND2"
.LASF963:
	.string	"S_CYBER_STND2"
.LASF807:
	.string	"S_HEAD_RAISE4"
.LASF1033:
	.string	"S_SSWV_DIE2"
.LASF1491:
	.string	"sfx_bspwlk"
.LASF489:
	.string	"S_POSS_XDIE8"
.LASF1163:
	.string	"S_CELP"
.LASF1205:
	.string	"S_EVILEYE"
.LASF1231:
	.string	"S_GTORCHSHRT2"
.LASF1232:
	.string	"S_GTORCHSHRT3"
.LASF1233:
	.string	"S_GTORCHSHRT4"
.LASF1605:
	.string	"leftvol"
.LASF1510:
	.string	"sfx_bosdth"
.LASF29:
	.string	"_IO_save_base"
.LASF664:
	.string	"S_FATT_ATK1"
.LASF198:
	.string	"SPR_CYBR"
.LASF665:
	.string	"S_FATT_ATK2"
.LASF568:
	.string	"S_VILE_DIE10"
.LASF159:
	.string	"SPR_MISF"
.LASF158:
	.string	"SPR_MISG"
.LASF171:
	.string	"SPR_MISL"
.LASF1122:
	.string	"S_BSKULL"
.LASF202:
	.string	"SPR_BBRN"
.LASF543:
	.string	"S_VILE_ATK1"
.LASF544:
	.string	"S_VILE_ATK2"
.LASF545:
	.string	"S_VILE_ATK3"
.LASF546:
	.string	"S_VILE_ATK4"
.LASF547:
	.string	"S_VILE_ATK5"
.LASF548:
	.string	"S_VILE_ATK6"
.LASF549:
	.string	"S_VILE_ATK7"
.LASF290:
	.string	"S_PUNCH"
.LASF551:
	.string	"S_VILE_ATK9"
.LASF273:
	.string	"SPR_SMBT"
.LASF1496:
	.string	"sfx_hoof"
.LASF846:
	.string	"S_BOS2_RUN1"
.LASF847:
	.string	"S_BOS2_RUN2"
.LASF848:
	.string	"S_BOS2_RUN3"
.LASF849:
	.string	"S_BOS2_RUN4"
.LASF850:
	.string	"S_BOS2_RUN5"
.LASF851:
	.string	"S_BOS2_RUN6"
.LASF852:
	.string	"S_BOS2_RUN7"
.LASF112:
	.string	"sa_mask"
.LASF264:
	.string	"SPR_TRE1"
.LASF265:
	.string	"SPR_TRE2"
.LASF1613:
	.string	"command"
.LASF920:
	.string	"S_BSPI_STND"
.LASF1427:
	.string	"sfx_rxplod"
.LASF73:
	.string	"__sigval_t"
.LASF1588:
	.string	"I_StopSound"
.LASF710:
	.string	"S_CPOS_DIE1"
.LASF272:
	.string	"SPR_TRED"
.LASF165:
	.string	"SPR_BLUD"
.LASF666:
	.string	"S_FATT_ATK3"
.LASF667:
	.string	"S_FATT_ATK4"
.LASF668:
	.string	"S_FATT_ATK5"
.LASF669:
	.string	"S_FATT_ATK6"
.LASF670:
	.string	"S_FATT_ATK7"
.LASF671:
	.string	"S_FATT_ATK8"
.LASF672:
	.string	"S_FATT_ATK9"
.LASF1580:
	.string	"I_UpdateSound"
.LASF175:
	.string	"SPR_TFOG"
.LASF378:
	.string	"S_BLOOD1"
.LASF379:
	.string	"S_BLOOD2"
.LASF380:
	.string	"S_BLOOD3"
.LASF1438:
	.string	"sfx_dmpain"
.LASF43:
	.string	"_wide_data"
.LASF1170:
	.string	"S_LAUN"
.LASF430:
	.string	"S_IFOG"
.LASF86:
	.string	"si_addr"
.LASF178:
	.string	"SPR_POSS"
.LASF183:
	.string	"SPR_FBXP"
.LASF979:
	.string	"S_CYBER_DIE1"
.LASF980:
	.string	"S_CYBER_DIE2"
.LASF981:
	.string	"S_CYBER_DIE3"
.LASF982:
	.string	"S_CYBER_DIE4"
.LASF983:
	.string	"S_CYBER_DIE5"
.LASF984:
	.string	"S_CYBER_DIE6"
.LASF985:
	.string	"S_CYBER_DIE7"
.LASF857:
	.string	"S_BOS2_PAIN"
.LASF987:
	.string	"S_CYBER_DIE9"
.LASF1462:
	.string	"sfx_pesit"
.LASF1553:
	.string	"W_GetNumForName"
.LASF1506:
	.string	"sfx_bospit"
.LASF1326:
	.string	"MT_MISC23"
.LASF1200:
	.string	"S_CANDELABRA"
.LASF540:
	.string	"S_VILE_RUN10"
.LASF541:
	.string	"S_VILE_RUN11"
.LASF542:
	.string	"S_VILE_RUN12"
.LASF1160:
	.string	"S_ROCK"
.LASF309:
	.string	"S_SGUN1"
.LASF310:
	.string	"S_SGUN2"
.LASF311:
	.string	"S_SGUN3"
.LASF312:
	.string	"S_SGUN4"
.LASF313:
	.string	"S_SGUN5"
.LASF314:
	.string	"S_SGUN6"
.LASF315:
	.string	"S_SGUN7"
.LASF316:
	.string	"S_SGUN8"
.LASF317:
	.string	"S_SGUN9"
.LASF306:
	.string	"S_SGUN"
.LASF1196:
	.string	"S_SHRTGRNCOL"
.LASF1551:
	.string	"W_CacheLumpNum"
.LASF1504:
	.string	"sfx_flamst"
.LASF881:
	.string	"S_SKULL_PAIN"
.LASF1559:
	.string	"value"
.LASF71:
	.string	"sival_int"
.LASF103:
	.string	"si_code"
.LASF605:
	.string	"S_TRACER2"
.LASF1204:
	.string	"S_TECHPILLAR"
.LASF609:
	.string	"S_SKEL_STND"
.LASF764:
	.string	"S_SARG_STND2"
.LASF1497:
	.string	"sfx_metal"
.LASF510:
	.string	"S_SPOS_DIE1"
.LASF511:
	.string	"S_SPOS_DIE2"
.LASF512:
	.string	"S_SPOS_DIE3"
.LASF513:
	.string	"S_SPOS_DIE4"
.LASF514:
	.string	"S_SPOS_DIE5"
.LASF1464:
	.string	"sfx_sgtatk"
.LASF1239:
	.string	"S_HANGBNOBRAIN"
.LASF1461:
	.string	"sfx_mansit"
.LASF70:
	.string	"__itimer_which_t"
.LASF774:
	.string	"S_SARG_ATK2"
.LASF775:
	.string	"S_SARG_ATK3"
.LASF364:
	.string	"S_PLASMAUP"
.LASF1557:
	.string	"fprintf"
.LASF1120:
	.string	"S_YKEY"
.LASF1435:
	.string	"sfx_swtchn"
.LASF1603:
	.string	"slot"
.LASF1002:
	.string	"S_PAIN_DIE1"
.LASF19:
	.string	"__ssize_t"
.LASF1406:
	.string	"pitch"
.LASF532:
	.string	"S_VILE_RUN2"
.LASF1250:
	.string	"S_TECHLAMP4"
.LASF696:
	.string	"S_CPOS_RUN1"
.LASF697:
	.string	"S_CPOS_RUN2"
.LASF698:
	.string	"S_CPOS_RUN3"
.LASF699:
	.string	"S_CPOS_RUN4"
.LASF700:
	.string	"S_CPOS_RUN5"
.LASF701:
	.string	"S_CPOS_RUN6"
.LASF235:
	.string	"SPR_BPAK"
.LASF703:
	.string	"S_CPOS_RUN8"
.LASF1100:
	.string	"S_BEXP5"
.LASF1519:
	.string	"sfx_skeatk"
.LASF465:
	.string	"S_POSS_RUN2"
.LASF466:
	.string	"S_POSS_RUN3"
.LASF1537:
	.string	"channelrightvol_lookup"
.LASF467:
	.string	"S_POSS_RUN4"
.LASF784:
	.string	"S_SARG_RAISE1"
.LASF468:
	.string	"S_POSS_RUN5"
.LASF786:
	.string	"S_SARG_RAISE3"
.LASF469:
	.string	"S_POSS_RUN6"
.LASF788:
	.string	"S_SARG_RAISE5"
.LASF789:
	.string	"S_SARG_RAISE6"
.LASF1471:
	.string	"sfx_podth1"
.LASF1472:
	.string	"sfx_podth2"
.LASF1473:
	.string	"sfx_podth3"
.LASF1521:
	.string	"NUMSFX"
.LASF55:
	.string	"__val"
.LASF1064:
	.string	"S_KEENPAIN"
.LASF412:
	.string	"S_BFGEXP2"
.LASF413:
	.string	"S_BFGEXP3"
.LASF414:
	.string	"S_BFGEXP4"
.LASF343:
	.string	"S_CHAINFLASH1"
.LASF344:
	.string	"S_CHAINFLASH2"
.LASF299:
	.string	"S_PISTOLDOWN"
.LASF1533:
	.string	"channelids"
.LASF67:
	.string	"itimerval"
.LASF964:
	.string	"S_CYBER_RUN1"
.LASF965:
	.string	"S_CYBER_RUN2"
.LASF966:
	.string	"S_CYBER_RUN3"
.LASF967:
	.string	"S_CYBER_RUN4"
.LASF968:
	.string	"S_CYBER_RUN5"
.LASF969:
	.string	"S_CYBER_RUN6"
.LASF970:
	.string	"S_CYBER_RUN7"
.LASF971:
	.string	"S_CYBER_RUN8"
.LASF107:
	.string	"__sighandler_t"
.LASF1151:
	.string	"S_PMAP2"
.LASF1152:
	.string	"S_PMAP3"
.LASF1153:
	.string	"S_PMAP4"
.LASF1154:
	.string	"S_PMAP5"
.LASF1155:
	.string	"S_PMAP6"
.LASF882:
	.string	"S_SKULL_PAIN2"
.LASF1076:
	.string	"S_SPAWN2"
.LASF708:
	.string	"S_CPOS_PAIN"
.LASF188:
	.string	"SPR_SARG"
.LASF1011:
	.string	"S_PAIN_RAISE4"
.LASF1013:
	.string	"S_PAIN_RAISE6"
.LASF1342:
	.string	"MT_MISC36"
.LASF817:
	.string	"S_BOSS_RUN1"
.LASF818:
	.string	"S_BOSS_RUN2"
.LASF819:
	.string	"S_BOSS_RUN3"
.LASF820:
	.string	"S_BOSS_RUN4"
.LASF821:
	.string	"S_BOSS_RUN5"
.LASF339:
	.string	"S_CHAINUP"
.LASF1614:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1202:
	.string	"S_TORCHTREE"
.LASF1014:
	.string	"S_SSWV_STND"
.LASF82:
	.string	"_lower"
.LASF1061:
	.string	"S_COMMKEEN10"
.LASF1062:
	.string	"S_COMMKEEN11"
.LASF1063:
	.string	"S_COMMKEEN12"
.LASF978:
	.string	"S_CYBER_PAIN"
.LASF146:
	.string	"stderr"
.LASF497:
	.string	"S_SPOS_RUN1"
.LASF256:
	.string	"SPR_SMIT"
.LASF499:
	.string	"S_SPOS_RUN3"
.LASF500:
	.string	"S_SPOS_RUN4"
.LASF501:
	.string	"S_SPOS_RUN5"
.LASF193:
	.string	"SPR_SKUL"
.LASF503:
	.string	"S_SPOS_RUN7"
.LASF504:
	.string	"S_SPOS_RUN8"
.LASF1161:
	.string	"S_BROK"
.LASF1402:
	.string	"name"
.LASF1480:
	.string	"sfx_cybdth"
.LASF1411:
	.string	"S_sfx"
.LASF1562:
	.string	"duration_of_tick"
.LASF291:
	.string	"S_PUNCHDOWN"
.LASF957:
	.string	"S_ARACH_PLEX"
.LASF1218:
	.string	"S_GREENTORCH"
.LASF130:
	.string	"wp_supershotgun"
.LASF357:
	.string	"S_SAWDOWN"
.LASF31:
	.string	"_IO_save_end"
.LASF1425:
	.string	"sfx_sawhit"
.LASF1424:
	.string	"sfx_sawful"
.LASF1564:
	.string	"I_SoundSetTimer"
.LASF1287:
	.string	"MT_TROOPSHOT"
.LASF1272:
	.string	"MT_BRUISERSHOT"
.LASF1523:
	.string	"flag"
.LASF1492:
	.string	"sfx_vilact"
.LASF1392:
	.string	"MT_MISC86"
.LASF1394:
	.string	"ps_weapon"
.LASF1606:
	.string	"getsfx"
.LASF1457:
	.string	"sfx_spisit"
.LASF17:
	.string	"__time_t"
.LASF837:
	.string	"S_BOSS_RAISE1"
.LASF445:
	.string	"S_PLAY_PAIN2"
.LASF1423:
	.string	"sfx_sawidl"
.LASF840:
	.string	"S_BOSS_RAISE4"
.LASF841:
	.string	"S_BOSS_RAISE5"
.LASF94:
	.string	"_pad"
.LASF185:
	.string	"SPR_MANF"
.LASF695:
	.string	"S_CPOS_STND2"
.LASF1490:
	.string	"sfx_bspact"
.LASF508:
	.string	"S_SPOS_PAIN"
.LASF124:
	.string	"wp_shotgun"
.LASF1577:
	.string	"I_ShutdownSound"
.LASF476:
	.string	"S_POSS_PAIN2"
.LASF1293:
	.string	"MT_PUFF"
.LASF348:
	.string	"S_MISSILE1"
.LASF349:
	.string	"S_MISSILE2"
.LASF350:
	.string	"S_MISSILE3"
.LASF724:
	.string	"S_CPOS_RAISE2"
.LASF725:
	.string	"S_CPOS_RAISE3"
.LASF726:
	.string	"S_CPOS_RAISE4"
.LASF1168:
	.string	"S_MGUN"
.LASF1271:
	.string	"MT_BRUISER"
.LASF234:
	.string	"SPR_SBOX"
.LASF877:
	.string	"S_SKULL_ATK1"
.LASF878:
	.string	"S_SKULL_ATK2"
.LASF879:
	.string	"S_SKULL_ATK3"
.LASF880:
	.string	"S_SKULL_ATK4"
.LASF858:
	.string	"S_BOS2_PAIN2"
.LASF6:
	.string	"short unsigned int"
.LASF1273:
	.string	"MT_KNIGHT"
.LASF7:
	.string	"signed char"
.LASF1591:
	.string	"namebuf"
.LASF509:
	.string	"S_SPOS_PAIN2"
.LASF1495:
	.string	"sfx_punch"
.LASF673:
	.string	"S_FATT_ATK10"
.LASF1346:
	.string	"MT_MISC40"
.LASF271:
	.string	"SPR_TGRN"
.LASF1409:
	.string	"usefulness"
.LASF1318:
	.string	"MT_MEGA"
.LASF173:
	.string	"SPR_BFE1"
.LASF174:
	.string	"SPR_BFE2"
.LASF1600:
	.string	"handlenums"
.LASF1352:
	.string	"MT_MISC46"
.LASF1280:
	.string	"MT_KEEN"
.LASF74:
	.string	"si_pid"
.LASF1572:
	.string	"I_PauseSong"
.LASF1074:
	.string	"S_BRAINEYE1"
.LASF730:
	.string	"S_TROO_STND"
.LASF677:
	.string	"S_FATT_DIE2"
.LASF368:
	.string	"S_PLASMAFLASH2"
.LASF421:
	.string	"S_TFOG2"
.LASF422:
	.string	"S_TFOG3"
.LASF423:
	.string	"S_TFOG4"
.LASF424:
	.string	"S_TFOG5"
.LASF425:
	.string	"S_TFOG6"
.LASF426:
	.string	"S_TFOG7"
.LASF427:
	.string	"S_TFOG8"
.LASF88:
	.string	"_bounds"
.LASF843:
	.string	"S_BOSS_RAISE7"
.LASF149:
	.string	"SPR_TROO"
.LASF14:
	.string	"__off64_t"
.LASF160:
	.string	"SPR_SAWG"
.LASF1453:
	.string	"sfx_sgtsit"
.LASF1561:
	.string	"oact"
.LASF209:
	.string	"SPR_BON1"
.LASF23:
	.string	"_IO_read_base"
.LASF41:
	.string	"_offset"
.LASF586:
	.string	"S_FIRE18"
.LASF117:
	.string	"it_redcard"
.LASF1197:
	.string	"S_TALLREDCOL"
.LASF1547:
	.string	"I_Error"
.LASF28:
	.string	"_IO_buf_end"
.LASF1172:
	.string	"S_SHOT"
.LASF1028:
	.string	"S_SSWV_ATK5"
.LASF1177:
	.string	"S_BLOODYTWITCH2"
.LASF1178:
	.string	"S_BLOODYTWITCH3"
.LASF1179:
	.string	"S_BLOODYTWITCH4"
.LASF918:
	.string	"S_SPID_DIE10"
.LASF919:
	.string	"S_SPID_DIE11"
.LASF266:
	.string	"SPR_ELEC"
.LASF1066:
	.string	"S_BRAIN"
.LASF1526:
	.string	"mixbuffer"
.LASF1275:
	.string	"MT_SPIDER"
.LASF1149:
	.string	"S_SUIT"
.LASF164:
	.string	"SPR_BFGF"
.LASF163:
	.string	"SPR_BFGG"
.LASF47:
	.string	"_mode"
.LASF989:
	.string	"S_PAIN_STND"
.LASF1455:
	.string	"sfx_brssit"
.LASF24:
	.string	"_IO_write_base"
.LASF405:
	.string	"S_BFGLAND"
.LASF1095:
	.string	"S_BAR2"
.LASF1498:
	.string	"sfx_chgun"
.LASF134:
	.string	"am_shell"
.LASF1399:
	.string	"gametic"
.LASF1401:
	.string	"sfxinfo_struct"
.LASF685:
	.string	"S_FATT_DIE10"
.LASF121:
	.string	"NUMCARDS"
.LASF1222:
	.string	"S_REDTORCH"
.LASF1291:
	.string	"MT_BFG"
.LASF1466:
	.string	"sfx_vilatk"
.LASF180:
	.string	"SPR_VILE"
.LASF1274:
	.string	"MT_SKULL"
.LASF1501:
	.string	"sfx_bdcls"
.LASF1294:
	.string	"MT_BLOOD"
.LASF298:
	.string	"S_PISTOL"
.LASF1592:
	.string	"I_SetMusicVolume"
.LASF530:
	.string	"S_VILE_STND2"
.LASF948:
	.string	"S_BSPI_RAISE1"
.LASF949:
	.string	"S_BSPI_RAISE2"
.LASF950:
	.string	"S_BSPI_RAISE3"
.LASF951:
	.string	"S_BSPI_RAISE4"
.LASF952:
	.string	"S_BSPI_RAISE5"
.LASF953:
	.string	"S_BSPI_RAISE6"
.LASF954:
	.string	"S_BSPI_RAISE7"
.LASF11:
	.string	"long int"
.LASF1037:
	.string	"S_SSWV_XDIE1"
.LASF1038:
	.string	"S_SSWV_XDIE2"
.LASF1039:
	.string	"S_SSWV_XDIE3"
.LASF1040:
	.string	"S_SSWV_XDIE4"
.LASF1041:
	.string	"S_SSWV_XDIE5"
.LASF1042:
	.string	"S_SSWV_XDIE6"
.LASF1043:
	.string	"S_SSWV_XDIE7"
.LASF109:
	.string	"sa_sigaction"
.LASF1045:
	.string	"S_SSWV_XDIE9"
.LASF335:
	.string	"S_DSGUNFLASH1"
.LASF336:
	.string	"S_DSGUNFLASH2"
.LASF1325:
	.string	"MT_MISC22"
.LASF1527:
	.string	"channelstep"
.LASF593:
	.string	"S_FIRE25"
.LASF687:
	.string	"S_FATT_RAISE2"
.LASF1361:
	.string	"MT_MISC55"
.LASF689:
	.string	"S_FATT_RAISE4"
.LASF119:
	.string	"it_yellowskull"
.LASF1405:
	.string	"link"
.LASF1125:
	.string	"S_RSKULL2"
.LASF692:
	.string	"S_FATT_RAISE7"
.LASF900:
	.string	"S_SPID_RUN10"
.LASF901:
	.string	"S_SPID_RUN11"
.LASF902:
	.string	"S_SPID_RUN12"
.LASF50:
	.string	"_IO_marker"
.LASF1597:
	.string	"addsfx"
.LASF1522:
	.string	"rcsid"
.LASF1129:
	.string	"S_MEDI"
.LASF1445:
	.string	"sfx_wpnup"
.LASF58:
	.string	"timeval"
.LASF351:
	.string	"S_MISSILEFLASH1"
.LASF352:
	.string	"S_MISSILEFLASH2"
.LASF353:
	.string	"S_MISSILEFLASH3"
.LASF354:
	.string	"S_MISSILEFLASH4"
.LASF215:
	.string	"SPR_RSKU"
.LASF1465:
	.string	"sfx_skepch"
.LASF711:
	.string	"S_CPOS_DIE2"
.LASF712:
	.string	"S_CPOS_DIE3"
.LASF713:
	.string	"S_CPOS_DIE4"
.LASF714:
	.string	"S_CPOS_DIE5"
.LASF715:
	.string	"S_CPOS_DIE6"
.LASF716:
	.string	"S_CPOS_DIE7"
.LASF1157:
	.string	"S_PVIS2"
.LASF111:
	.string	"__sigaction_handler"
.LASF1286:
	.string	"MT_BARREL"
.LASF889:
	.string	"S_SPID_STND"
.LASF661:
	.string	"S_FATT_RUN10"
.LASF662:
	.string	"S_FATT_RUN11"
.LASF663:
	.string	"S_FATT_RUN12"
.LASF15:
	.string	"__pid_t"
.LASF773:
	.string	"S_SARG_ATK1"
.LASF1278:
	.string	"MT_PAIN"
.LASF51:
	.string	"_IO_codecvt"
.LASF1215:
	.string	"S_BLUETORCH2"
.LASF1216:
	.string	"S_BLUETORCH3"
.LASF1217:
	.string	"S_BLUETORCH4"
.LASF275:
	.string	"SPR_SMRT"
.LASF1450:
	.string	"sfx_posit3"
.LASF376:
	.string	"S_BFGFLASH1"
.LASF377:
	.string	"S_BFGFLASH2"
.LASF1407:
	.string	"volume"
.LASF910:
	.string	"S_SPID_DIE2"
.LASF192:
	.string	"SPR_BOS2"
.LASF913:
	.string	"S_SPID_DIE5"
.LASF914:
	.string	"S_SPID_DIE6"
.LASF1508:
	.string	"sfx_bossit"
.LASF915:
	.string	"S_SPID_DIE7"
.LASF916:
	.string	"S_SPID_DIE8"
.LASF1206:
	.string	"S_EVILEYE2"
.LASF1207:
	.string	"S_EVILEYE3"
.LASF1208:
	.string	"S_EVILEYE4"
.LASF381:
	.string	"S_PUFF1"
.LASF382:
	.string	"S_PUFF2"
.LASF383:
	.string	"S_PUFF3"
.LASF203:
	.string	"SPR_BOSF"
.LASF1567:
	.string	"I_RegisterSong"
.LASF191:
	.string	"SPR_BOSS"
.LASF1290:
	.string	"MT_PLASMA"
.LASF1520:
	.string	"sfx_radio"
.LASF935:
	.string	"S_BSPI_ATK1"
.LASF936:
	.string	"S_BSPI_ATK2"
.LASF937:
	.string	"S_BSPI_ATK3"
.LASF938:
	.string	"S_BSPI_ATK4"
.LASF1117:
	.string	"S_BKEY2"
.LASF131:
	.string	"NUMWEAPONS"
.LASF922:
	.string	"S_BSPI_SIGHT"
.LASF1437:
	.string	"sfx_plpain"
.LASF2:
	.string	"long unsigned int"
.LASF1595:
	.string	"I_SetChannels"
.LASF1068:
	.string	"S_BRAIN_DIE1"
.LASF1069:
	.string	"S_BRAIN_DIE2"
.LASF1070:
	.string	"S_BRAIN_DIE3"
.LASF1071:
	.string	"S_BRAIN_DIE4"
.LASF1525:
	.string	"audio_fd"
.LASF403:
	.string	"S_BFGSHOT"
.LASF1209:
	.string	"S_FLOATSKULL"
.LASF559:
	.string	"S_VILE_DIE1"
.LASF560:
	.string	"S_VILE_DIE2"
.LASF561:
	.string	"S_VILE_DIE3"
.LASF562:
	.string	"S_VILE_DIE4"
.LASF563:
	.string	"S_VILE_DIE5"
.LASF564:
	.string	"S_VILE_DIE6"
.LASF565:
	.string	"S_VILE_DIE7"
.LASF566:
	.string	"S_VILE_DIE8"
.LASF567:
	.string	"S_VILE_DIE9"
.LASF79:
	.string	"si_status"
.LASF85:
	.string	"_pkey"
.LASF1418:
	.string	"sfx_dbcls"
.LASF244:
	.string	"SPR_SMT2"
.LASF1119:
	.string	"S_RKEY2"
.LASF1090:
	.string	"S_ARM1"
.LASF1092:
	.string	"S_ARM2"
.LASF1485:
	.string	"sfx_pedth"
.LASF1185:
	.string	"S_HEADCANDLES"
.LASF222:
	.string	"SPR_PINS"
.LASF815:
	.string	"S_BOSS_STND"
.LASF1489:
	.string	"sfx_dmact"
.LASF1554:
	.string	"W_CheckNumForName"
.LASF1618:
	.string	"__errno_location"
.LASF795:
	.string	"S_HEAD_PAIN"
.LASF116:
	.string	"it_yellowcard"
.LASF1404:
	.string	"priority"
.LASF1262:
	.string	"MT_TRACER"
.LASF676:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF678:
	.string	"S_FATT_DIE3"
.LASF679:
	.string	"S_FATT_DIE4"
.LASF680:
	.string	"S_FATT_DIE5"
.LASF681:
	.string	"S_FATT_DIE6"
.LASF682:
	.string	"S_FATT_DIE7"
.LASF683:
	.string	"S_FATT_DIE8"
.LASF684:
	.string	"S_FATT_DIE9"
.LASF751:
	.string	"S_TROO_XDIE2"
.LASF752:
	.string	"S_TROO_XDIE3"
.LASF753:
	.string	"S_TROO_XDIE4"
.LASF754:
	.string	"S_TROO_XDIE5"
.LASF755:
	.string	"S_TROO_XDIE6"
.LASF756:
	.string	"S_TROO_XDIE7"
.LASF757:
	.string	"S_TROO_XDIE8"
.LASF227:
	.string	"SPR_CLIP"
.LASF1198:
	.string	"S_SHRTREDCOL"
.LASF65:
	.string	"ITIMER_VIRTUAL"
.LASF1241:
	.string	"S_HANGTSKULL"
.LASF27:
	.string	"_IO_buf_base"
.LASF145:
	.string	"NUMPOWERS"
.LASF1026:
	.string	"S_SSWV_ATK3"
.LASF1027:
	.string	"S_SSWV_ATK4"
.LASF332:
	.string	"S_DSGUN10"
.LASF1477:
	.string	"sfx_cacdth"
.LASF100:
	.string	"_sigsys"
.LASF140:
	.string	"pw_strength"
.LASF261:
	.string	"SPR_CAND"
.LASF1434:
	.string	"sfx_stnmov"
.LASF1268:
	.string	"MT_SERGEANT"
.LASF1429:
	.string	"sfx_firxpl"
.LASF1188:
	.string	"S_LIVESTICK"
.LASF22:
	.string	"_IO_read_end"
.LASF1128:
	.string	"S_STIM"
.LASF135:
	.string	"am_cell"
.LASF115:
	.string	"it_bluecard"
.LASF791:
	.string	"S_HEAD_RUN1"
.LASF446:
	.string	"S_PLAY_DIE1"
.LASF447:
	.string	"S_PLAY_DIE2"
.LASF448:
	.string	"S_PLAY_DIE3"
.LASF449:
	.string	"S_PLAY_DIE4"
.LASF57:
	.string	"_IO_FILE"
.LASF451:
	.string	"S_PLAY_DIE6"
.LASF452:
	.string	"S_PLAY_DIE7"
.LASF462:
	.string	"S_POSS_STND"
.LASF418:
	.string	"S_TFOG"
.LASF52:
	.string	"_IO_wide_data"
.LASF1347:
	.string	"MT_MISC41"
.LASF778:
	.string	"S_SARG_DIE1"
.LASF779:
	.string	"S_SARG_DIE2"
.LASF105:
	.string	"_sifields"
.LASF780:
	.string	"S_SARG_DIE3"
.LASF147:
	.string	"sndserver"
.LASF781:
	.string	"S_SARG_DIE4"
.LASF1079:
	.string	"S_SPAWNFIRE1"
.LASF1080:
	.string	"S_SPAWNFIRE2"
.LASF1081:
	.string	"S_SPAWNFIRE3"
.LASF1082:
	.string	"S_SPAWNFIRE4"
.LASF1083:
	.string	"S_SPAWNFIRE5"
.LASF1084:
	.string	"S_SPAWNFIRE6"
.LASF1085:
	.string	"S_SPAWNFIRE7"
.LASF1086:
	.string	"S_SPAWNFIRE8"
.LASF750:
	.string	"S_TROO_XDIE1"
.LASF1576:
	.string	"buffer"
.LASF1243:
	.string	"S_HANGTNOBRAIN"
.LASF1531:
	.string	"channelstart"
.LASF398:
	.string	"S_PLASEXP2"
.LASF399:
	.string	"S_PLASEXP3"
.LASF400:
	.string	"S_PLASEXP4"
.LASF401:
	.string	"S_PLASEXP5"
.LASF128:
	.string	"wp_bfg"
.LASF1227:
	.string	"S_BTORCHSHRT2"
.LASF1228:
	.string	"S_BTORCHSHRT3"
.LASF1229:
	.string	"S_BTORCHSHRT4"
.LASF1484:
	.string	"sfx_kntdth"
.LASF531:
	.string	"S_VILE_RUN1"
.LASF321:
	.string	"S_DSGUNDOWN"
.LASF533:
	.string	"S_VILE_RUN3"
.LASF534:
	.string	"S_VILE_RUN4"
.LASF535:
	.string	"S_VILE_RUN5"
.LASF536:
	.string	"S_VILE_RUN6"
.LASF537:
	.string	"S_VILE_RUN7"
.LASF538:
	.string	"S_VILE_RUN8"
.LASF539:
	.string	"S_VILE_RUN9"
.LASF782:
	.string	"S_SARG_DIE5"
.LASF783:
	.string	"S_SARG_DIE6"
.LASF1476:
	.string	"sfx_sgtdth"
.LASF101:
	.string	"si_signo"
.LASF68:
	.string	"it_interval"
.LASF623:
	.string	"S_SKEL_FIST1"
.LASF624:
	.string	"S_SKEL_FIST2"
.LASF625:
	.string	"S_SKEL_FIST3"
.LASF626:
	.string	"S_SKEL_FIST4"
.LASF362:
	.string	"S_PLASMA"
.LASF1141:
	.string	"S_PINS"
.LASF1441:
	.string	"sfx_mnpain"
.LASF1214:
	.string	"S_BLUETORCH"
.LASF1609:
	.string	"size"
.LASF652:
	.string	"S_FATT_RUN1"
.LASF653:
	.string	"S_FATT_RUN2"
.LASF654:
	.string	"S_FATT_RUN3"
.LASF655:
	.string	"S_FATT_RUN4"
.LASF142:
	.string	"pw_ironfeet"
.LASF657:
	.string	"S_FATT_RUN6"
.LASF104:
	.string	"__pad0"
.LASF659:
	.string	"S_FATT_RUN8"
.LASF1190:
	.string	"S_MEAT2"
.LASF1191:
	.string	"S_MEAT3"
.LASF46:
	.string	"__pad5"
.LASF1193:
	.string	"S_MEAT5"
.LASF305:
	.string	"S_PISTOLFLASH"
.LASF525:
	.string	"S_SPOS_RAISE2"
.LASF526:
	.string	"S_SPOS_RAISE3"
.LASF527:
	.string	"S_SPOS_RAISE4"
.LASF528:
	.string	"S_SPOS_RAISE5"
.LASF218:
	.string	"SPR_MEDI"
.LASF1403:
	.string	"singularity"
.LASF220:
	.string	"SPR_PINV"
.LASF1451:
	.string	"sfx_bgsit1"
.LASF1452:
	.string	"sfx_bgsit2"
.LASF1486:
	.string	"sfx_skedth"
.LASF1067:
	.string	"S_BRAIN_PAIN"
.LASF338:
	.string	"S_CHAINDOWN"
.LASF102:
	.string	"si_errno"
.LASF557:
	.string	"S_VILE_PAIN"
.LASF604:
	.string	"S_TRACER"
.LASF32:
	.string	"_markers"
.LASF1024:
	.string	"S_SSWV_ATK1"
.LASF1025:
	.string	"S_SSWV_ATK2"
.LASF554:
	.string	"S_VILE_HEAL1"
.LASF555:
	.string	"S_VILE_HEAL2"
.LASF556:
	.string	"S_VILE_HEAL3"
.LASF1029:
	.string	"S_SSWV_ATK6"
.LASF1502:
	.string	"sfx_itmbk"
.LASF212:
	.string	"SPR_RKEY"
.LASF1458:
	.string	"sfx_bspsit"
.LASF89:
	.string	"si_band"
.LASF1175:
	.string	"S_STALAG"
.LASF1550:
	.string	"Z_Malloc"
.LASF1439:
	.string	"sfx_popain"
.LASF890:
	.string	"S_SPID_STND2"
.LASF1359:
	.string	"MT_MISC53"
.LASF42:
	.string	"_codecvt"
.LASF1176:
	.string	"S_BLOODYTWITCH"
.LASF1245:
	.string	"S_SMALLPOOL"
.LASF1362:
	.string	"MT_MISC56"
.LASF674:
	.string	"S_FATT_PAIN"
.LASF438:
	.string	"S_PLAY_RUN1"
.LASF439:
	.string	"S_PLAY_RUN2"
.LASF440:
	.string	"S_PLAY_RUN3"
.LASF441:
	.string	"S_PLAY_RUN4"
.LASF1166:
	.string	"S_BPAK"
.LASF63:
	.string	"double"
.LASF207:
	.string	"SPR_BEXP"
.LASF1123:
	.string	"S_BSKULL2"
.LASF166:
	.string	"SPR_PUFF"
.LASF1052:
	.string	"S_COMMKEEN"
.LASF1430:
	.string	"sfx_pstart"
.LASF844:
	.string	"S_BOS2_STND"
.LASF172:
	.string	"SPR_BFS1"
.LASF1075:
	.string	"S_SPAWN1"
.LASF53:
	.string	"ssize_t"
.LASF1077:
	.string	"S_SPAWN3"
.LASF1078:
	.string	"S_SPAWN4"
.LASF1248:
	.string	"S_TECHLAMP2"
.LASF1249:
	.string	"S_TECHLAMP3"
.LASF129:
	.string	"wp_chainsaw"
.LASF1276:
	.string	"MT_BABY"
.LASF1503:
	.string	"sfx_flame"
.LASF1189:
	.string	"S_LIVESTICK2"
.LASF1234:
	.string	"S_RTORCHSHRT"
.LASF1322:
	.string	"MT_MISC19"
.LASF194:
	.string	"SPR_SPID"
.LASF790:
	.string	"S_HEAD_STND"
.LASF1558:
	.string	"ioctl"
.LASF765:
	.string	"S_SARG_RUN1"
.LASF766:
	.string	"S_SARG_RUN2"
.LASF767:
	.string	"S_SARG_RUN3"
.LASF768:
	.string	"S_SARG_RUN4"
.LASF769:
	.string	"S_SARG_RUN5"
.LASF770:
	.string	"S_SARG_RUN6"
.LASF10:
	.string	"__uint32_t"
.LASF772:
	.string	"S_SARG_RUN8"
.LASF1300:
	.string	"MT_MISC1"
.LASF1301:
	.string	"MT_MISC2"
.LASF1302:
	.string	"MT_MISC3"
.LASF1303:
	.string	"MT_MISC4"
.LASF1304:
	.string	"MT_MISC5"
.LASF1305:
	.string	"MT_MISC6"
.LASF1306:
	.string	"MT_MISC7"
.LASF1307:
	.string	"MT_MISC8"
.LASF1308:
	.string	"MT_MISC9"
.LASF355:
	.string	"S_SAW"
.LASF1604:
	.string	"rightvol"
.LASF1565:
	.string	"I_QrySongPlaying"
.LASF223:
	.string	"SPR_MEGA"
.LASF444:
	.string	"S_PLAY_PAIN"
.LASF1467:
	.string	"sfx_claw"
.LASF396:
	.string	"S_PLASBALL2"
.LASF1395:
	.string	"ps_flash"
.LASF1582:
	.string	"leftout"
.LASF201:
	.string	"SPR_KEEN"
.LASF1030:
	.string	"S_SSWV_PAIN"
.LASF1065:
	.string	"S_KEENPAIN2"
.LASF144:
	.string	"pw_infrared"
.LASF552:
	.string	"S_VILE_ATK10"
.LASF553:
	.string	"S_VILE_ATK11"
.LASF1616:
	.string	"__itimer_which"
.LASF1031:
	.string	"S_SSWV_PAIN2"
.LASF1386:
	.string	"MT_MISC80"
.LASF1105:
	.string	"S_BON1A"
.LASF1106:
	.string	"S_BON1B"
.LASF1107:
	.string	"S_BON1C"
.LASF1108:
	.string	"S_BON1D"
.LASF1109:
	.string	"S_BON1E"
.LASF221:
	.string	"SPR_PSTR"
.LASF1324:
	.string	"MT_MISC21"
.LASF776:
	.string	"S_SARG_PAIN"
.LASF210:
	.string	"SPR_BON2"
.LASF1319:
	.string	"MT_CLIP"
.LASF236:
	.string	"SPR_BFUG"
.LASF1374:
	.string	"MT_MISC68"
.LASF1101:
	.string	"S_BBAR1"
.LASF1102:
	.string	"S_BBAR2"
.LASF1103:
	.string	"S_BBAR3"
.LASF289:
	.string	"S_LIGHTDONE"
.LASF940:
	.string	"S_BSPI_PAIN2"
.LASF1563:
	.string	"ignore"
.LASF1568:
	.string	"I_HandleSoundTimer"
.LASF740:
	.string	"S_TROO_ATK1"
.LASF741:
	.string	"S_TROO_ATK2"
.LASF742:
	.string	"S_TROO_ATK3"
.LASF884:
	.string	"S_SKULL_DIE2"
.LASF885:
	.string	"S_SKULL_DIE3"
.LASF886:
	.string	"S_SKULL_DIE4"
.LASF887:
	.string	"S_SKULL_DIE5"
.LASF888:
	.string	"S_SKULL_DIE6"
.LASF240:
	.string	"SPR_PLAS"
.LASF64:
	.string	"ITIMER_REAL"
.LASF1112:
	.string	"S_BON2B"
.LASF153:
	.string	"SPR_PISF"
.LASF152:
	.string	"SPR_PISG"
.LASF1115:
	.string	"S_BON2E"
.LASF1329:
	.string	"MT_CHAINGUN"
.LASF387:
	.string	"S_TBALLX1"
.LASF388:
	.string	"S_TBALLX2"
.LASF389:
	.string	"S_TBALLX3"
.LASF132:
	.string	"wp_nochange"
.LASF450:
	.string	"S_PLAY_DIE5"
.LASF1266:
	.string	"MT_CHAINGUY"
.LASF1448:
	.string	"sfx_posit1"
.LASF1449:
	.string	"sfx_posit2"
.LASF1147:
	.string	"S_MEGA3"
.LASF883:
	.string	"S_SKULL_DIE1"
.LASF1514:
	.string	"sfx_ssdth"
.LASF1246:
	.string	"S_BRAINSTEM"
.LASF1051:
	.string	"S_KEENSTND"
.LASF177:
	.string	"SPR_PLAY"
.LASF45:
	.string	"_freeres_buf"
.LASF98:
	.string	"_sigfault"
.LASF1192:
	.string	"S_MEAT4"
.LASF1463:
	.string	"sfx_sklatk"
.LASF80:
	.string	"si_utime"
.LASF59:
	.string	"tv_sec"
.LASF61:
	.string	"long long unsigned int"
.LASF1186:
	.string	"S_HEADCANDLES2"
.LASF1296:
	.string	"MT_IFOG"
.LASF108:
	.string	"sa_handler"
.LASF37:
	.string	"_cur_column"
.LASF268:
	.string	"SPR_FSKU"
.LASF1509:
	.string	"sfx_bospn"
.LASF502:
	.string	"S_SPOS_RUN6"
.LASF358:
	.string	"S_SAWUP"
.LASF90:
	.string	"si_fd"
.LASF1091:
	.string	"S_ARM1A"
.LASF694:
	.string	"S_CPOS_STND"
.LASF1165:
	.string	"S_SBOX"
.LASF1340:
	.string	"MT_MISC34"
.LASF397:
	.string	"S_PLASEXP"
.LASF1343:
	.string	"MT_MISC37"
.LASF1443:
	.string	"sfx_slop"
.LASF1545:
	.string	"write"
.LASF1181:
	.string	"S_DEADBOTTOM"
.LASF1586:
	.string	"chan"
.LASF1581:
	.string	"sample"
.LASF1238:
	.string	"S_HANGNOGUTS"
.LASF253:
	.string	"SPR_GOR3"
.LASF1142:
	.string	"S_PINS2"
.LASF1143:
	.string	"S_PINS3"
.LASF1144:
	.string	"S_PINS4"
.LASF996:
	.string	"S_PAIN_ATK1"
.LASF997:
	.string	"S_PAIN_ATK2"
.LASF998:
	.string	"S_PAIN_ATK3"
.LASF999:
	.string	"S_PAIN_ATK4"
.LASF308:
	.string	"S_SGUNUP"
.LASF1612:
	.string	"myioctl"
.LASF262:
	.string	"SPR_CBRA"
.LASF1093:
	.string	"S_ARM2A"
.LASF962:
	.string	"S_CYBER_STND"
.LASF1121:
	.string	"S_YKEY2"
.LASF1617:
	.string	"sigval"
.LASF30:
	.string	"_IO_backup_base"
.LASF1598:
	.string	"sfxid"
.LASF576:
	.string	"S_FIRE8"
.LASF816:
	.string	"S_BOSS_STND2"
.LASF1493:
	.string	"sfx_noway"
.LASF21:
	.string	"_IO_read_ptr"
.LASF359:
	.string	"S_SAW1"
.LASF360:
	.string	"S_SAW2"
.LASF361:
	.string	"S_SAW3"
.LASF1104:
	.string	"S_BON1"
.LASF1110:
	.string	"S_BON2"
.LASF1529:
	.string	"channels"
.LASF356:
	.string	"S_SAWB"
.LASF744:
	.string	"S_TROO_PAIN2"
.LASF44:
	.string	"_freeres_list"
.LASF1282:
	.string	"MT_BOSSSPIT"
.LASF569:
	.string	"S_FIRE1"
.LASF570:
	.string	"S_FIRE2"
.LASF571:
	.string	"S_FIRE3"
.LASF572:
	.string	"S_FIRE4"
.LASF573:
	.string	"S_FIRE5"
.LASF574:
	.string	"S_FIRE6"
.LASF575:
	.string	"S_FIRE7"
.LASF230:
	.string	"SPR_BROK"
.LASF577:
	.string	"S_FIRE9"
.LASF1350:
	.string	"MT_MISC44"
.LASF1351:
	.string	"MT_MISC45"
.LASF1162:
	.string	"S_CELL"
.LASF1353:
	.string	"MT_MISC47"
.LASF228:
	.string	"SPR_AMMO"
.LASF1354:
	.string	"MT_MISC48"
.LASF1355:
	.string	"MT_MISC49"
.LASF875:
	.string	"S_SKULL_RUN1"
.LASF876:
	.string	"S_SKULL_RUN2"
.LASF1242:
	.string	"S_HANGTLOOKUP"
.LASF337:
	.string	"S_CHAIN"
.LASF1587:
	.string	"I_SoundIsPlaying"
.LASF77:
	.string	"si_overrun"
.LASF1400:
	.string	"sfxinfo_t"
.LASF367:
	.string	"S_PLASMAFLASH1"
.LASF323:
	.string	"S_DSGUN1"
.LASF324:
	.string	"S_DSGUN2"
.LASF219:
	.string	"SPR_SOUL"
.LASF179:
	.string	"SPR_SPOS"
.LASF327:
	.string	"S_DSGUN5"
.LASF328:
	.string	"S_DSGUN6"
.LASF329:
	.string	"S_DSGUN7"
.LASF330:
	.string	"S_DSGUN8"
.LASF331:
	.string	"S_DSGUN9"
.LASF495:
	.string	"S_SPOS_STND"
.LASF199:
	.string	"SPR_PAIN"
.LASF723:
	.string	"S_CPOS_RAISE1"
.LASF1483:
	.string	"sfx_vildth"
.LASF36:
	.string	"_old_offset"
.LASF106:
	.string	"siginfo_t"
.LASF373:
	.string	"S_BFG2"
.LASF374:
	.string	"S_BFG3"
.LASF375:
	.string	"S_BFG4"
.LASF372:
	.string	"S_BFG1"
.LASF333:
	.string	"S_DSNR1"
.LASF334:
	.string	"S_DSNR2"
.LASF874:
	.string	"S_SKULL_STND2"
.LASF1137:
	.string	"S_PINV2"
.LASF1138:
	.string	"S_PINV3"
.LASF1139:
	.string	"S_PINV4"
.LASF1252:
	.string	"S_TECH2LAMP2"
.LASF1253:
	.string	"S_TECH2LAMP3"
.LASF1254:
	.string	"S_TECH2LAMP4"
.LASF54:
	.string	"long long int"
.LASF151:
	.string	"SPR_PUNG"
.LASF718:
	.string	"S_CPOS_XDIE2"
.LASF148:
	.string	"sndserver_filename"
.LASF720:
	.string	"S_CPOS_XDIE4"
.LASF721:
	.string	"S_CPOS_XDIE5"
.LASF722:
	.string	"S_CPOS_XDIE6"
.LASF903:
	.string	"S_SPID_ATK1"
.LASF904:
	.string	"S_SPID_ATK2"
.LASF905:
	.string	"S_SPID_ATK3"
.LASF35:
	.string	"_flags2"
.LASF627:
	.string	"S_SKEL_MISS1"
.LASF628:
	.string	"S_SKEL_MISS2"
.LASF629:
	.string	"S_SKEL_MISS3"
.LASF630:
	.string	"S_SKEL_MISS4"
.LASF384:
	.string	"S_PUFF4"
.LASF1124:
	.string	"S_RSKULL"
.LASF956:
	.string	"S_ARACH_PLAZ2"
.LASF1356:
	.string	"MT_MISC50"
.LASF804:
	.string	"S_HEAD_RAISE1"
.LASF1391:
	.string	"MT_MISC85"
.LASF805:
	.string	"S_HEAD_RAISE2"
.LASF806:
	.string	"S_HEAD_RAISE3"
.LASF214:
	.string	"SPR_BSKU"
.LASF808:
	.string	"S_HEAD_RAISE5"
.LASF809:
	.string	"S_HEAD_RAISE6"
.LASF1579:
	.string	"I_SubmitSound"
.LASF1410:
	.string	"lumpnum"
.LASF1334:
	.string	"MT_SUPERSHOTGUN"
.LASF225:
	.string	"SPR_PMAP"
.LASF1072:
	.string	"S_BRAINEYE"
.LASF226:
	.string	"SPR_PVIS"
.LASF1226:
	.string	"S_BTORCHSHRT"
.LASF1292:
	.string	"MT_ARACHPLAZ"
.LASF1599:
	.string	"seperation"
.LASF550:
	.string	"S_VILE_ATK8"
.LASF491:
	.string	"S_POSS_RAISE1"
.LASF492:
	.string	"S_POSS_RAISE2"
.LASF493:
	.string	"S_POSS_RAISE3"
.LASF494:
	.string	"S_POSS_RAISE4"
.LASF346:
	.string	"S_MISSILEDOWN"
.LASF1494:
	.string	"sfx_barexp"
.LASF1210:
	.string	"S_FLOATSKULL2"
.LASF1211:
	.string	"S_FLOATSKULL3"
.LASF1417:
	.string	"sfx_dbopn"
.LASF1421:
	.string	"sfx_bfg"
.LASF1145:
	.string	"S_MEGA"
.LASF825:
	.string	"S_BOSS_ATK1"
.LASF826:
	.string	"S_BOSS_ATK2"
.LASF827:
	.string	"S_BOSS_ATK3"
.LASF284:
	.string	"SPR_BRS1"
.LASF632:
	.string	"S_SKEL_PAIN2"
.LASF1169:
	.string	"S_CSAW"
.LASF1611:
	.string	"sfxlump"
.LASF139:
	.string	"pw_invulnerability"
.LASF76:
	.string	"si_tid"
.LASF812:
	.string	"S_BRBALLX1"
.LASF813:
	.string	"S_BRBALLX2"
.LASF814:
	.string	"S_BRBALLX3"
.LASF942:
	.string	"S_BSPI_DIE2"
.LASF943:
	.string	"S_BSPI_DIE3"
.LASF944:
	.string	"S_BSPI_DIE4"
.LASF945:
	.string	"S_BSPI_DIE5"
.LASF125:
	.string	"wp_chaingun"
.LASF947:
	.string	"S_BSPI_DIE7"
.LASF871:
	.string	"S_BOS2_RAISE6"
.LASF498:
	.string	"S_SPOS_RUN2"
.LASF1001:
	.string	"S_PAIN_PAIN2"
.LASF636:
	.string	"S_SKEL_DIE4"
.LASF1413:
	.string	"sfx_pistol"
.LASF233:
	.string	"SPR_SHEL"
.LASF1375:
	.string	"MT_MISC69"
.LASF285:
	.string	"SPR_TLMP"
.LASF463:
	.string	"S_POSS_STND2"
.LASF1333:
	.string	"MT_SHOTGUN"
.LASF1258:
	.string	"MT_SHOTGUY"
.LASF1247:
	.string	"S_TECHLAMP"
.LASF1279:
	.string	"MT_WOLFSS"
.LASF845:
	.string	"S_BOS2_STND2"
.LASF340:
	.string	"S_CHAIN1"
.LASF341:
	.string	"S_CHAIN2"
.LASF342:
	.string	"S_CHAIN3"
.LASF393:
	.string	"S_RBALLX2"
.LASF394:
	.string	"S_RBALLX3"
.LASF1596:
	.string	"steptablemid"
.LASF270:
	.string	"SPR_TBLU"
.LASF496:
	.string	"S_SPOS_STND2"
.LASF4:
	.string	"unsigned int"
.LASF1607:
	.string	"sfxname"
.LASF1414:
	.string	"sfx_shotgn"
.LASF138:
	.string	"am_noammo"
.LASF1454:
	.string	"sfx_cacsit"
.LASF1546:
	.string	"fflush"
.LASF1474:
	.string	"sfx_bgdth1"
.LASF1475:
	.string	"sfx_bgdth2"
.LASF472:
	.string	"S_POSS_ATK1"
.LASF473:
	.string	"S_POSS_ATK2"
.LASF474:
	.string	"S_POSS_ATK3"
.LASF1377:
	.string	"MT_MISC71"
.LASF1534:
	.string	"steptable"
.LASF1235:
	.string	"S_RTORCHSHRT2"
.LASF1236:
	.string	"S_RTORCHSHRT3"
.LASF906:
	.string	"S_SPID_ATK4"
.LASF8:
	.string	"short int"
.LASF1383:
	.string	"MT_MISC77"
.LASF1384:
	.string	"MT_MISC78"
.LASF1385:
	.string	"MT_MISC79"
.LASF78:
	.string	"si_sigval"
.LASF1574:
	.string	"I_ShutdownMusic"
.LASF1261:
	.string	"MT_UNDEAD"
.LASF38:
	.string	"_vtable_offset"
.LASF1608:
	.string	"paddedsfx"
.LASF633:
	.string	"S_SKEL_DIE1"
.LASF634:
	.string	"S_SKEL_DIE2"
.LASF635:
	.string	"S_SKEL_DIE3"
.LASF181:
	.string	"SPR_FIRE"
.LASF637:
	.string	"S_SKEL_DIE5"
.LASF638:
	.string	"S_SKEL_DIE6"
.LASF1436:
	.string	"sfx_swtchx"
.LASF1284:
	.string	"MT_SPAWNSHOT"
.LASF1244:
	.string	"S_COLONGIBS"
.LASF1552:
	.string	"W_LumpLength"
.LASF1263:
	.string	"MT_SMOKE"
.LASF286:
	.string	"SPR_TLP2"
.LASF288:
	.string	"S_NULL"
.LASF395:
	.string	"S_PLASBALL"
.LASF1470:
	.string	"sfx_pdiehi"
.LASF242:
	.string	"SPR_SGN2"
.LASF1573:
	.string	"I_PlaySong"
.LASF195:
	.string	"SPR_BSPI"
.LASF1542:
	.string	"popen"
.LASF197:
	.string	"SPR_APBX"
.LASF1309:
	.string	"MT_MISC10"
.LASF1310:
	.string	"MT_MISC11"
.LASF1311:
	.string	"MT_MISC12"
.LASF1313:
	.string	"MT_MISC13"
.LASF1315:
	.string	"MT_MISC14"
.LASF1316:
	.string	"MT_MISC15"
.LASF1317:
	.string	"MT_MISC16"
.LASF1320:
	.string	"MT_MISC17"
.LASF1321:
	.string	"MT_MISC18"
.LASF1158:
	.string	"S_CLIP"
.LASF1283:
	.string	"MT_BOSSTARGET"
.LASF1459:
	.string	"sfx_kntsit"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10"
.LASF0:
	.string	"i_sound.c"
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
