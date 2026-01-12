	.file	"s_sound.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "s_sound.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 50
rcsid:
	.string	"$Id: s_sound.c,v 1.6 1997/02/03 22:45:12 b1 Exp $"
	.globl	snd_prefixen
	.align 8
	.type	snd_prefixen, @object
	.size	snd_prefixen, 12
snd_prefixen:
	.ascii	"PPASSSMMMSSS"
	.local	channels
	.comm	channels,8,8
	.globl	snd_SfxVolume
	.data
	.align 4
	.type	snd_SfxVolume, @object
	.size	snd_SfxVolume, 4
snd_SfxVolume:
	.long	15
	.globl	snd_MusicVolume
	.align 4
	.type	snd_MusicVolume, @object
	.size	snd_MusicVolume, 4
snd_MusicVolume:
	.long	15
	.local	mus_paused
	.comm	mus_paused,4,4
	.local	mus_playing
	.comm	mus_playing,8,8
	.globl	numChannels
	.bss
	.align 4
	.type	numChannels, @object
	.size	numChannels, 4
numChannels:
	.zero	4
	.local	nextcleanup
	.comm	nextcleanup,4,4
	.section	.rodata
	.align 8
.LC0:
	.string	"S_Init: default sfx volume %d\n"
	.text
	.globl	S_Init
	.type	S_Init, @function
S_Init:
.LFB6:
	.file 1 "s_sound.c"
	.loc 1 164 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# sfxVolume, sfxVolume
	movl	%esi, -24(%rbp)	# musicVolume, musicVolume
# s_sound.c:167:   fprintf( stderr, "S_Init: default sfx volume %d\n", sfxVolume);
	.loc 1 167 3
	movq	stderr(%rip), %rax	# stderr, stderr.0_1
	movl	-20(%rbp), %edx	# sfxVolume, tmp95
	leaq	.LC0(%rip), %rcx	#, tmp96
	movq	%rcx, %rsi	# tmp96,
	movq	%rax, %rdi	# stderr.0_1,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
# s_sound.c:170:   I_SetChannels();
	.loc 1 170 3
	movl	$0, %eax	#,
	call	I_SetChannels@PLT	#
# s_sound.c:172:   S_SetSfxVolume(sfxVolume);
	.loc 1 172 3
	movl	-20(%rbp), %eax	# sfxVolume, tmp97
	movl	%eax, %edi	# tmp97,
	call	S_SetSfxVolume	#
# s_sound.c:174:   S_SetMusicVolume(musicVolume);
	.loc 1 174 3
	movl	-24(%rbp), %eax	# musicVolume, tmp98
	movl	%eax, %edi	# tmp98,
	call	S_SetMusicVolume	#
# s_sound.c:180:     (channel_t *) Z_Malloc(numChannels*sizeof(channel_t), PU_STATIC, 0);
	.loc 1 180 19
	movl	numChannels(%rip), %eax	# numChannels, numChannels.1_2
	cltq
	movl	%eax, %edx	# _3, _4
	movl	%edx, %eax	# _4, tmp99
	addl	%eax, %eax	# tmp99
	addl	%edx, %eax	# _4, tmp99
	sall	$3, %eax	#, tmp100
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# _6,
	call	Z_Malloc@PLT	#
# s_sound.c:179:   channels =
	.loc 1 179 12
	movq	%rax, channels(%rip)	# _7, channels
# s_sound.c:183:   for (i=0 ; i<numChannels ; i++)
	.loc 1 183 9
	movl	$0, -4(%rbp)	#, i
# s_sound.c:183:   for (i=0 ; i<numChannels ; i++)
	.loc 1 183 3
	jmp	.L2	#
.L3:
# s_sound.c:184:     channels[i].sfxinfo = 0;
	.loc 1 184 13
	movq	channels(%rip), %rcx	# channels, channels.2_8
	movl	-4(%rbp), %eax	# i, tmp101
	movslq	%eax, %rdx	# tmp101, _9
	movq	%rdx, %rax	# _9, tmp102
	addq	%rax, %rax	# tmp102
	addq	%rdx, %rax	# _9, tmp102
	salq	$3, %rax	#, tmp103
	addq	%rcx, %rax	# channels.2_8, _11
# s_sound.c:184:     channels[i].sfxinfo = 0;
	.loc 1 184 25
	movq	$0, (%rax)	#, _11->sfxinfo
# s_sound.c:183:   for (i=0 ; i<numChannels ; i++)
	.loc 1 183 31 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L2:
# s_sound.c:183:   for (i=0 ; i<numChannels ; i++)
	.loc 1 183 15 discriminator 1
	movl	numChannels(%rip), %eax	# numChannels, numChannels.3_12
	cmpl	%eax, -4(%rbp)	# numChannels.3_12, i
	jl	.L3	#,
# s_sound.c:187:   mus_paused = 0;
	.loc 1 187 14
	movl	$0, mus_paused(%rip)	#, mus_paused
# s_sound.c:190:   for (i=1 ; i<NUMSFX ; i++)
	.loc 1 190 9
	movl	$1, -4(%rbp)	#, i
# s_sound.c:190:   for (i=1 ; i<NUMSFX ; i++)
	.loc 1 190 3
	jmp	.L4	#
.L5:
# s_sound.c:191:     S_sfx[i].lumpnum = S_sfx[i].usefulness = -1;
	.loc 1 191 44
	movl	-4(%rbp), %eax	# i, tmp105
	movslq	%eax, %rdx	# tmp105, tmp104
	movq	%rdx, %rax	# tmp104, tmp107
	addq	%rax, %rax	# tmp107
	addq	%rdx, %rax	# tmp104, tmp107
	salq	$4, %rax	#, tmp108
	movq	%rax, %rdx	# tmp107, tmp106
	leaq	40+S_sfx(%rip), %rax	#, tmp109
	movl	$-1, (%rdx,%rax)	#, S_sfx[i_15].usefulness
# s_sound.c:191:     S_sfx[i].lumpnum = S_sfx[i].usefulness = -1;
	.loc 1 191 32
	movl	-4(%rbp), %eax	# i, tmp111
	movslq	%eax, %rdx	# tmp111, tmp110
	movq	%rdx, %rax	# tmp110, tmp113
	addq	%rax, %rax	# tmp113
	addq	%rdx, %rax	# tmp110, tmp113
	salq	$4, %rax	#, tmp114
	movq	%rax, %rdx	# tmp113, tmp112
	leaq	40+S_sfx(%rip), %rax	#, tmp115
	movl	(%rdx,%rax), %ecx	# S_sfx[i_15].usefulness, _13
# s_sound.c:191:     S_sfx[i].lumpnum = S_sfx[i].usefulness = -1;
	.loc 1 191 22
	movl	-4(%rbp), %eax	# i, tmp117
	movslq	%eax, %rdx	# tmp117, tmp116
	movq	%rdx, %rax	# tmp116, tmp119
	addq	%rax, %rax	# tmp119
	addq	%rdx, %rax	# tmp116, tmp119
	salq	$4, %rax	#, tmp120
	movq	%rax, %rdx	# tmp119, tmp118
	leaq	44+S_sfx(%rip), %rax	#, tmp121
	movl	%ecx, (%rdx,%rax)	# _13, S_sfx[i_15].lumpnum
# s_sound.c:190:   for (i=1 ; i<NUMSFX ; i++)
	.loc 1 190 26 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L4:
# s_sound.c:190:   for (i=1 ; i<NUMSFX ; i++)
	.loc 1 190 15 discriminator 1
	cmpl	$108, -4(%rbp)	#, i
	jle	.L5	#,
# s_sound.c:192: }
	.loc 1 192 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	S_Init, .-S_Init
	.globl	S_Start
	.type	S_Start, @function
S_Start:
.LFB7:
	.loc 1 203 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
# s_sound.c:203: {
	.loc 1 203 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp109
	movq	%rax, -8(%rbp)	# tmp109, D.8350
	xorl	%eax, %eax	# tmp109
# s_sound.c:209:   for (cnum=0 ; cnum<numChannels ; cnum++)
	.loc 1 209 12
	movl	$0, -56(%rbp)	#, cnum
# s_sound.c:209:   for (cnum=0 ; cnum<numChannels ; cnum++)
	.loc 1 209 3
	jmp	.L7	#
.L9:
# s_sound.c:210:     if (channels[cnum].sfxinfo)
	.loc 1 210 17
	movq	channels(%rip), %rcx	# channels, channels.4_1
	movl	-56(%rbp), %eax	# cnum, tmp99
	movslq	%eax, %rdx	# tmp99, _2
	movq	%rdx, %rax	# _2, tmp100
	addq	%rax, %rax	# tmp100
	addq	%rdx, %rax	# _2, tmp100
	salq	$3, %rax	#, tmp101
	addq	%rcx, %rax	# channels.4_1, _4
# s_sound.c:210:     if (channels[cnum].sfxinfo)
	.loc 1 210 23
	movq	(%rax), %rax	# _4->sfxinfo, _5
# s_sound.c:210:     if (channels[cnum].sfxinfo)
	.loc 1 210 8
	testq	%rax, %rax	# _5
	je	.L8	#,
# s_sound.c:211:       S_StopChannel(cnum);
	.loc 1 211 7
	movl	-56(%rbp), %eax	# cnum, tmp102
	movl	%eax, %edi	# tmp102,
	call	S_StopChannel	#
.L8:
# s_sound.c:209:   for (cnum=0 ; cnum<numChannels ; cnum++)
	.loc 1 209 40 discriminator 2
	addl	$1, -56(%rbp)	#, cnum
.L7:
# s_sound.c:209:   for (cnum=0 ; cnum<numChannels ; cnum++)
	.loc 1 209 21 discriminator 1
	movl	numChannels(%rip), %eax	# numChannels, numChannels.5_6
	cmpl	%eax, -56(%rbp)	# numChannels.5_6, cnum
	jl	.L9	#,
# s_sound.c:214:   mus_paused = 0;
	.loc 1 214 14
	movl	$0, mus_paused(%rip)	#, mus_paused
# s_sound.c:216:   if (gamemode == commercial)
	.loc 1 216 16
	movl	gamemode(%rip), %eax	# gamemode, gamemode.6_7
# s_sound.c:216:   if (gamemode == commercial)
	.loc 1 216 6
	cmpl	$2, %eax	#, gamemode.6_7
	jne	.L10	#,
# s_sound.c:217:     mnum = mus_runnin + gamemap - 1;
	.loc 1 217 33
	movl	gamemap(%rip), %eax	# gamemap, gamemap.7_8
# s_sound.c:217:     mnum = mus_runnin + gamemap - 1;
	.loc 1 217 10
	addl	$32, %eax	#, tmp103
	movl	%eax, -52(%rbp)	# tmp103, mnum
	jmp	.L11	#
.L10:
.LBB2:
# s_sound.c:220:     int spmus[]=
	.loc 1 220 9
	movl	$22, -48(%rbp)	#, spmus[0]
	movl	$20, -44(%rbp)	#, spmus[1]
	movl	$21, -40(%rbp)	#, spmus[2]
	movl	$5, -36(%rbp)	#, spmus[3]
	movl	$16, -32(%rbp)	#, spmus[4]
	movl	$13, -28(%rbp)	#, spmus[5]
	movl	$15, -24(%rbp)	#, spmus[6]
	movl	$14, -20(%rbp)	#, spmus[7]
	movl	$9, -16(%rbp)	#, spmus[8]
# s_sound.c:235:     if (gameepisode < 4)
	.loc 1 235 21
	movl	gameepisode(%rip), %eax	# gameepisode, gameepisode.8_9
# s_sound.c:235:     if (gameepisode < 4)
	.loc 1 235 8
	cmpl	$3, %eax	#, gameepisode.8_9
	jg	.L12	#,
# s_sound.c:236:       mnum = mus_e1m1 + (gameepisode-1)*9 + gamemap-1;
	.loc 1 236 37
	movl	gameepisode(%rip), %eax	# gameepisode, gameepisode.9_10
	leal	-1(%rax), %edx	#, _11
# s_sound.c:236:       mnum = mus_e1m1 + (gameepisode-1)*9 + gamemap-1;
	.loc 1 236 40
	movl	%edx, %eax	# _11, tmp104
	sall	$3, %eax	#, tmp104
	addl	%edx, %eax	# _11, _12
# s_sound.c:236:       mnum = mus_e1m1 + (gameepisode-1)*9 + gamemap-1;
	.loc 1 236 23
	leal	1(%rax), %edx	#, _13
# s_sound.c:236:       mnum = mus_e1m1 + (gameepisode-1)*9 + gamemap-1;
	.loc 1 236 43
	movl	gamemap(%rip), %eax	# gamemap, gamemap.10_14
	addl	%edx, %eax	# _13, _15
# s_sound.c:236:       mnum = mus_e1m1 + (gameepisode-1)*9 + gamemap-1;
	.loc 1 236 12
	subl	$1, %eax	#, tmp105
	movl	%eax, -52(%rbp)	# tmp105, mnum
	jmp	.L11	#
.L12:
# s_sound.c:238:       mnum = spmus[gamemap-1];
	.loc 1 238 27
	movl	gamemap(%rip), %eax	# gamemap, gamemap.11_16
	subl	$1, %eax	#, _17
# s_sound.c:238:       mnum = spmus[gamemap-1];
	.loc 1 238 12
	cltq
	movl	-48(%rbp,%rax,4), %eax	# spmus[_17], tmp107
	movl	%eax, -52(%rbp)	# tmp107, mnum
.L11:
.LBE2:
# s_sound.c:245:   S_ChangeMusic(mnum, true);
	.loc 1 245 3
	movl	-52(%rbp), %eax	# mnum, tmp108
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp108,
	call	S_ChangeMusic	#
# s_sound.c:247:   nextcleanup = 15;
	.loc 1 247 15
	movl	$15, nextcleanup(%rip)	#, nextcleanup
# s_sound.c:248: }	
	.loc 1 248 1
	nop	
	movq	-8(%rbp), %rax	# D.8350, tmp110
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp110
	je	.L14	#,
	call	__stack_chk_fail@PLT	#
.L14:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	S_Start, .-S_Start
	.section	.rodata
.LC1:
	.string	"Bad sfx #: %d"
	.align 8
.LC2:
	.string	"S_StartSoundAtVolume: 16bit and not pre-cached - wtf?\n"
	.text
	.globl	S_StartSoundAtVolume
	.type	S_StartSoundAtVolume, @function
S_StartSoundAtVolume:
.LFB8:
	.loc 1 259 1
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
	movq	%rdi, -72(%rbp)	# origin_p, origin_p
	movl	%esi, -76(%rbp)	# sfx_id, sfx_id
	movl	%edx, -80(%rbp)	# volume, volume
# s_sound.c:259: {
	.loc 1 259 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp191
	movq	%rax, -24(%rbp)	# tmp191, D.8352
	xorl	%eax, %eax	# tmp191
# s_sound.c:268:   mobj_t*	origin = (mobj_t *) origin_p;
	.loc 1 268 11
	movq	-72(%rbp), %rax	# origin_p, tmp131
	movq	%rax, -40(%rbp)	# tmp131, origin
# s_sound.c:277:   if (sfx_id < 1 || sfx_id > NUMSFX)
	.loc 1 277 6
	cmpl	$0, -76(%rbp)	#, sfx_id
	jle	.L16	#,
# s_sound.c:277:   if (sfx_id < 1 || sfx_id > NUMSFX)
	.loc 1 277 18 discriminator 1
	cmpl	$109, -76(%rbp)	#, sfx_id
	jle	.L17	#,
.L16:
# s_sound.c:278:     I_Error("Bad sfx #: %d", sfx_id);
	.loc 1 278 5
	movl	-76(%rbp), %eax	# sfx_id, tmp132
	movl	%eax, %esi	# tmp132,
	leaq	.LC1(%rip), %rax	#, tmp133
	movq	%rax, %rdi	# tmp133,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L17:
# s_sound.c:280:   sfx = &S_sfx[sfx_id];
	.loc 1 280 7
	movl	-76(%rbp), %eax	# sfx_id, tmp135
	movslq	%eax, %rdx	# tmp135, tmp134
	movq	%rdx, %rax	# tmp134, tmp136
	addq	%rax, %rax	# tmp136
	addq	%rdx, %rax	# tmp134, tmp136
	salq	$4, %rax	#, tmp137
	leaq	S_sfx(%rip), %rdx	#, tmp138
	addq	%rdx, %rax	# tmp138, tmp139
	movq	%rax, -32(%rbp)	# tmp139, sfx
# s_sound.c:283:   if (sfx->link)
	.loc 1 283 10
	movq	-32(%rbp), %rax	# sfx, tmp140
	movq	16(%rax), %rax	# sfx_66->link, _1
# s_sound.c:283:   if (sfx->link)
	.loc 1 283 6
	testq	%rax, %rax	# _1
	je	.L18	#,
# s_sound.c:285:     pitch = sfx->pitch;
	.loc 1 285 16
	movq	-32(%rbp), %rax	# sfx, tmp141
	movl	24(%rax), %eax	# sfx_66->pitch, _2
# s_sound.c:285:     pitch = sfx->pitch;
	.loc 1 285 11
	movl	%eax, -56(%rbp)	# _2, pitch
# s_sound.c:286:     priority = sfx->priority;
	.loc 1 286 14
	movq	-32(%rbp), %rax	# sfx, tmp142
	movl	12(%rax), %eax	# sfx_66->priority, tmp143
	movl	%eax, -52(%rbp)	# tmp143, priority
# s_sound.c:287:     volume += sfx->volume;
	.loc 1 287 18
	movq	-32(%rbp), %rax	# sfx, tmp144
	movl	28(%rax), %edx	# sfx_66->volume, _3
# s_sound.c:287:     volume += sfx->volume;
	.loc 1 287 12
	movl	-80(%rbp), %eax	# volume, volume.12_4
	addl	%edx, %eax	# _3, _5
	movl	%eax, -80(%rbp)	# _5, volume
# s_sound.c:289:     if (volume < 1)
	.loc 1 289 16
	movl	-80(%rbp), %eax	# volume, volume.13_6
# s_sound.c:289:     if (volume < 1)
	.loc 1 289 8
	testl	%eax, %eax	# volume.13_6
	jle	.L37	#,
# s_sound.c:292:     if (volume > snd_SfxVolume)
	.loc 1 292 16
	movl	-80(%rbp), %edx	# volume, volume.14_7
	movl	snd_SfxVolume(%rip), %eax	# snd_SfxVolume, snd_SfxVolume.15_8
# s_sound.c:292:     if (volume > snd_SfxVolume)
	.loc 1 292 8
	cmpl	%eax, %edx	# snd_SfxVolume.15_8, volume.14_7
	jle	.L21	#,
# s_sound.c:293:       volume = snd_SfxVolume;
	.loc 1 293 14
	movl	snd_SfxVolume(%rip), %eax	# snd_SfxVolume, snd_SfxVolume.16_9
	movl	%eax, -80(%rbp)	# snd_SfxVolume.16_9, volume
	jmp	.L21	#
.L18:
# s_sound.c:297:     pitch = NORM_PITCH;
	.loc 1 297 11
	movl	$128, -56(%rbp)	#, pitch
# s_sound.c:298:     priority = NORM_PRIORITY;
	.loc 1 298 14
	movl	$64, -52(%rbp)	#, priority
.L21:
# s_sound.c:304:   if (origin && origin != players[consoleplayer].mo)
	.loc 1 304 6
	cmpq	$0, -40(%rbp)	#, origin
	je	.L22	#,
# s_sound.c:304:   if (origin && origin != players[consoleplayer].mo)
	.loc 1 304 49 discriminator 1
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.17_10
	movslq	%eax, %rdx	# consoleplayer.17_10, tmp145
	movq	%rdx, %rax	# tmp145, tmp147
	salq	$2, %rax	#, tmp147
	addq	%rdx, %rax	# tmp145, tmp147
	salq	$6, %rax	#, tmp148
	movq	%rax, %rdx	# tmp147, tmp146
	leaq	players(%rip), %rax	#, tmp149
	movq	(%rdx,%rax), %rax	# players[consoleplayer.17_10].mo, _11
# s_sound.c:304:   if (origin && origin != players[consoleplayer].mo)
	.loc 1 304 14 discriminator 1
	cmpq	%rax, -40(%rbp)	# _11, origin
	je	.L22	#,
# s_sound.c:306:     rc = S_AdjustSoundParams(players[consoleplayer].mo,
	.loc 1 306 10
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.18_12
	movslq	%eax, %rdx	# consoleplayer.18_12, tmp150
	movq	%rdx, %rax	# tmp150, tmp152
	salq	$2, %rax	#, tmp152
	addq	%rdx, %rax	# tmp150, tmp152
	salq	$6, %rax	#, tmp153
	movq	%rax, %rdx	# tmp152, tmp151
	leaq	players(%rip), %rax	#, tmp154
	movq	(%rdx,%rax), %rax	# players[consoleplayer.18_12].mo, _13
	leaq	-56(%rbp), %rdi	#, tmp155
	leaq	-60(%rbp), %rcx	#, tmp156
	leaq	-80(%rbp), %rdx	#, tmp157
	movq	-40(%rbp), %rsi	# origin, tmp158
	movq	%rdi, %r8	# tmp155,
	movq	%rax, %rdi	# _13,
	call	S_AdjustSoundParams	#
	movl	%eax, -48(%rbp)	# tmp159, rc
# s_sound.c:312:     if ( origin->x == players[consoleplayer].mo->x
	.loc 1 312 16
	movq	-40(%rbp), %rax	# origin, tmp160
	movl	24(%rax), %ecx	# origin_62->x, _14
# s_sound.c:312:     if ( origin->x == players[consoleplayer].mo->x
	.loc 1 312 45
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.19_15
	movslq	%eax, %rdx	# consoleplayer.19_15, tmp161
	movq	%rdx, %rax	# tmp161, tmp163
	salq	$2, %rax	#, tmp163
	addq	%rdx, %rax	# tmp161, tmp163
	salq	$6, %rax	#, tmp164
	movq	%rax, %rdx	# tmp163, tmp162
	leaq	players(%rip), %rax	#, tmp165
	movq	(%rdx,%rax), %rax	# players[consoleplayer.19_15].mo, _16
# s_sound.c:312:     if ( origin->x == players[consoleplayer].mo->x
	.loc 1 312 48
	movl	24(%rax), %eax	# _16->x, _17
# s_sound.c:312:     if ( origin->x == players[consoleplayer].mo->x
	.loc 1 312 8
	cmpl	%eax, %ecx	# _17, _14
	jne	.L23	#,
# s_sound.c:313: 	 && origin->y == players[consoleplayer].mo->y)
	.loc 1 313 12
	movq	-40(%rbp), %rax	# origin, tmp166
	movl	28(%rax), %ecx	# origin_62->y, _18
# s_sound.c:313: 	 && origin->y == players[consoleplayer].mo->y)
	.loc 1 313 41
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.20_19
	movslq	%eax, %rdx	# consoleplayer.20_19, tmp167
	movq	%rdx, %rax	# tmp167, tmp169
	salq	$2, %rax	#, tmp169
	addq	%rdx, %rax	# tmp167, tmp169
	salq	$6, %rax	#, tmp170
	movq	%rax, %rdx	# tmp169, tmp168
	leaq	players(%rip), %rax	#, tmp171
	movq	(%rdx,%rax), %rax	# players[consoleplayer.20_19].mo, _20
# s_sound.c:313: 	 && origin->y == players[consoleplayer].mo->y)
	.loc 1 313 44
	movl	28(%rax), %eax	# _20->y, _21
# s_sound.c:313: 	 && origin->y == players[consoleplayer].mo->y)
	.loc 1 313 3
	cmpl	%eax, %ecx	# _21, _18
	jne	.L23	#,
# s_sound.c:315:       sep 	= NORM_SEP;
	.loc 1 315 12
	movl	$128, -60(%rbp)	#, sep
.L23:
# s_sound.c:318:     if (!rc)
	.loc 1 318 8
	cmpl	$0, -48(%rbp)	#, rc
	jne	.L25	#,
# s_sound.c:319:       return;
	.loc 1 319 7
	jmp	.L15	#
.L22:
# s_sound.c:323:     sep = NORM_SEP;
	.loc 1 323 9
	movl	$128, -60(%rbp)	#, sep
.L25:
# s_sound.c:327:   if (sfx_id >= sfx_sawup
	.loc 1 327 6
	cmpl	$9, -76(%rbp)	#, sfx_id
	jle	.L26	#,
# s_sound.c:328:       && sfx_id <= sfx_sawhit)
	.loc 1 328 7
	cmpl	$13, -76(%rbp)	#, sfx_id
	jg	.L26	#,
# s_sound.c:330:     pitch += 8 - (M_Random()&15);
	.loc 1 330 19
	call	M_Random@PLT	#
# s_sound.c:330:     pitch += 8 - (M_Random()&15);
	.loc 1 330 29 discriminator 1
	andl	$15, %eax	#, _23
# s_sound.c:330:     pitch += 8 - (M_Random()&15);
	.loc 1 330 16 discriminator 1
	movl	$8, %edx	#, tmp172
	subl	%eax, %edx	# _23, _78
# s_sound.c:330:     pitch += 8 - (M_Random()&15);
	.loc 1 330 11 discriminator 1
	movl	-56(%rbp), %eax	# pitch, pitch.21_24
	addl	%edx, %eax	# _78, _25
	movl	%eax, -56(%rbp)	# _25, pitch
# s_sound.c:332:     if (pitch<0)
	.loc 1 332 14
	movl	-56(%rbp), %eax	# pitch, pitch.22_26
# s_sound.c:332:     if (pitch<0)
	.loc 1 332 8
	testl	%eax, %eax	# pitch.22_26
	jns	.L27	#,
# s_sound.c:333:       pitch = 0;
	.loc 1 333 13
	movl	$0, -56(%rbp)	#, pitch
# s_sound.c:332:     if (pitch<0)
	.loc 1 332 8
	jmp	.L38	#
.L27:
# s_sound.c:334:     else if (pitch>255)
	.loc 1 334 19
	movl	-56(%rbp), %eax	# pitch, pitch.23_27
# s_sound.c:334:     else if (pitch>255)
	.loc 1 334 13
	cmpl	$255, %eax	#, pitch.23_27
	jle	.L38	#,
# s_sound.c:335:       pitch = 255;
	.loc 1 335 13
	movl	$255, -56(%rbp)	#, pitch
# s_sound.c:332:     if (pitch<0)
	.loc 1 332 8
	jmp	.L38	#
.L26:
# s_sound.c:337:   else if (sfx_id != sfx_itemup
	.loc 1 337 11
	cmpl	$32, -76(%rbp)	#, sfx_id
	je	.L29	#,
# s_sound.c:338: 	   && sfx_id != sfx_tink)
	.loc 1 338 5
	cmpl	$87, -76(%rbp)	#, sfx_id
	je	.L29	#,
# s_sound.c:340:     pitch += 16 - (M_Random()&31);
	.loc 1 340 20
	call	M_Random@PLT	#
# s_sound.c:340:     pitch += 16 - (M_Random()&31);
	.loc 1 340 30 discriminator 1
	andl	$31, %eax	#, _29
# s_sound.c:340:     pitch += 16 - (M_Random()&31);
	.loc 1 340 17 discriminator 1
	movl	$16, %edx	#, tmp173
	subl	%eax, %edx	# _29, _83
# s_sound.c:340:     pitch += 16 - (M_Random()&31);
	.loc 1 340 11 discriminator 1
	movl	-56(%rbp), %eax	# pitch, pitch.24_30
	addl	%edx, %eax	# _83, _31
	movl	%eax, -56(%rbp)	# _31, pitch
# s_sound.c:342:     if (pitch<0)
	.loc 1 342 14
	movl	-56(%rbp), %eax	# pitch, pitch.25_32
# s_sound.c:342:     if (pitch<0)
	.loc 1 342 8
	testl	%eax, %eax	# pitch.25_32
	jns	.L30	#,
# s_sound.c:343:       pitch = 0;
	.loc 1 343 13
	movl	$0, -56(%rbp)	#, pitch
	jmp	.L29	#
.L30:
# s_sound.c:344:     else if (pitch>255)
	.loc 1 344 19
	movl	-56(%rbp), %eax	# pitch, pitch.26_33
# s_sound.c:344:     else if (pitch>255)
	.loc 1 344 13
	cmpl	$255, %eax	#, pitch.26_33
	jle	.L29	#,
# s_sound.c:345:       pitch = 255;
	.loc 1 345 13
	movl	$255, -56(%rbp)	#, pitch
	jmp	.L29	#
.L38:
# s_sound.c:332:     if (pitch<0)
	.loc 1 332 8
	nop	
.L29:
# s_sound.c:349:   S_StopSound(origin);
	.loc 1 349 3
	movq	-40(%rbp), %rax	# origin, tmp174
	movq	%rax, %rdi	# tmp174,
	call	S_StopSound	#
# s_sound.c:352:   cnum = S_getChannel(origin, sfx);
	.loc 1 352 10
	movq	-32(%rbp), %rdx	# sfx, tmp175
	movq	-40(%rbp), %rax	# origin, tmp176
	movq	%rdx, %rsi	# tmp175,
	movq	%rax, %rdi	# tmp176,
	call	S_getChannel	#
	movl	%eax, -44(%rbp)	# tmp177, cnum
# s_sound.c:354:   if (cnum<0)
	.loc 1 354 6
	cmpl	$0, -44(%rbp)	#, cnum
	js	.L39	#,
# s_sound.c:364:   if (sfx->lumpnum < 0)
	.loc 1 364 10
	movq	-32(%rbp), %rax	# sfx, tmp178
	movl	44(%rax), %eax	# sfx_66->lumpnum, _34
# s_sound.c:364:   if (sfx->lumpnum < 0)
	.loc 1 364 6
	testl	%eax, %eax	# _34
	jns	.L32	#,
# s_sound.c:365:     sfx->lumpnum = I_GetSfxLumpNum(sfx);
	.loc 1 365 20
	movq	-32(%rbp), %rax	# sfx, tmp179
	movq	%rax, %rdi	# tmp179,
	call	I_GetSfxLumpNum@PLT	#
# s_sound.c:365:     sfx->lumpnum = I_GetSfxLumpNum(sfx);
	.loc 1 365 18 discriminator 1
	movq	-32(%rbp), %rdx	# sfx, tmp180
	movl	%eax, 44(%rdx)	# _35, sfx_66->lumpnum
.L32:
# s_sound.c:369:   if (!sfx->data)
	.loc 1 369 11
	movq	-32(%rbp), %rax	# sfx, tmp181
	movq	32(%rax), %rax	# sfx_66->data, _36
# s_sound.c:369:   if (!sfx->data)
	.loc 1 369 6
	testq	%rax, %rax	# _36
	jne	.L33	#,
# s_sound.c:371:     fprintf( stderr,
	.loc 1 371 5
	movq	stderr(%rip), %rax	# stderr, stderr.27_37
	movq	%rax, %rcx	# stderr.27_37,
	movl	$54, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC2(%rip), %rax	#, tmp182
	movq	%rax, %rdi	# tmp182,
	call	fwrite@PLT	#
.L33:
# s_sound.c:384:   if (sfx->usefulness++ < 0)
	.loc 1 384 10
	movq	-32(%rbp), %rax	# sfx, tmp183
	movl	40(%rax), %eax	# sfx_66->usefulness, _38
# s_sound.c:384:   if (sfx->usefulness++ < 0)
	.loc 1 384 22
	leal	1(%rax), %ecx	#, _40
	movq	-32(%rbp), %rdx	# sfx, tmp184
	movl	%ecx, 40(%rdx)	# _40, sfx_66->usefulness
# s_sound.c:384:   if (sfx->usefulness++ < 0)
	.loc 1 384 6
	testl	%eax, %eax	# _38
	jns	.L34	#,
# s_sound.c:385:     sfx->usefulness = 1;
	.loc 1 385 21
	movq	-32(%rbp), %rax	# sfx, tmp185
	movl	$1, 40(%rax)	#, sfx_66->usefulness
.L34:
# s_sound.c:389:   channels[cnum].handle = I_StartSound(sfx_id,
	.loc 1 389 27
	movl	-56(%rbp), %ecx	# pitch, pitch.28_41
	movl	-60(%rbp), %edi	# sep, sep.29_42
	movl	-80(%rbp), %esi	# volume, volume.30_43
# s_sound.c:389:   channels[cnum].handle = I_StartSound(sfx_id,
	.loc 1 389 11
	movq	channels(%rip), %r8	# channels, channels.31_44
	movl	-44(%rbp), %eax	# cnum, tmp186
	movslq	%eax, %rdx	# tmp186, _45
	movq	%rdx, %rax	# _45, tmp187
	addq	%rax, %rax	# tmp187
	addq	%rdx, %rax	# _45, tmp187
	salq	$3, %rax	#, tmp188
	leaq	(%r8,%rax), %rbx	#, _47
# s_sound.c:389:   channels[cnum].handle = I_StartSound(sfx_id,
	.loc 1 389 27
	movl	-52(%rbp), %edx	# priority, tmp189
	movl	-76(%rbp), %eax	# sfx_id, tmp190
	movl	%edx, %r8d	# tmp189,
	movl	%edi, %edx	# sep.29_42,
	movl	%eax, %edi	# tmp190,
	call	I_StartSound@PLT	#
# s_sound.c:389:   channels[cnum].handle = I_StartSound(sfx_id,
	.loc 1 389 25 discriminator 1
	movl	%eax, 16(%rbx)	# _48, _47->handle
	jmp	.L15	#
.L37:
# s_sound.c:290:       return;
	.loc 1 290 7
	nop	
	jmp	.L15	#
.L39:
# s_sound.c:355:     return;
	.loc 1 355 5
	nop	
.L15:
# s_sound.c:395: }	
	.loc 1 395 1
	movq	-24(%rbp), %rax	# D.8352, tmp192
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp192
	je	.L36	#,
	call	__stack_chk_fail@PLT	#
.L36:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	S_StartSoundAtVolume, .-S_StartSoundAtVolume
	.globl	S_StartSound
	.type	S_StartSound, @function
S_StartSound:
.LFB9:
	.loc 1 401 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# origin, origin
	movl	%esi, -12(%rbp)	# sfx_id, sfx_id
# s_sound.c:407:     S_StartSoundAtVolume(origin, sfx_id, snd_SfxVolume);
	.loc 1 407 5
	movl	snd_SfxVolume(%rip), %edx	# snd_SfxVolume, snd_SfxVolume.32_1
	movl	-12(%rbp), %ecx	# sfx_id, tmp83
	movq	-8(%rbp), %rax	# origin, tmp84
	movl	%ecx, %esi	# tmp83,
	movq	%rax, %rdi	# tmp84,
	call	S_StartSoundAtVolume	#
# s_sound.c:466: }
	.loc 1 466 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	S_StartSound, .-S_StartSound
	.globl	S_StopSound
	.type	S_StopSound, @function
S_StopSound:
.LFB10:
	.loc 1 472 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# origin, origin
# s_sound.c:476:     for (cnum=0 ; cnum<numChannels ; cnum++)
	.loc 1 476 14
	movl	$0, -4(%rbp)	#, cnum
# s_sound.c:476:     for (cnum=0 ; cnum<numChannels ; cnum++)
	.loc 1 476 5
	jmp	.L42	#
.L45:
# s_sound.c:478: 	if (channels[cnum].sfxinfo && channels[cnum].origin == origin)
	.loc 1 478 14
	movq	channels(%rip), %rcx	# channels, channels.33_1
	movl	-4(%rbp), %eax	# cnum, tmp93
	movslq	%eax, %rdx	# tmp93, _2
	movq	%rdx, %rax	# _2, tmp94
	addq	%rax, %rax	# tmp94
	addq	%rdx, %rax	# _2, tmp94
	salq	$3, %rax	#, tmp95
	addq	%rcx, %rax	# channels.33_1, _4
# s_sound.c:478: 	if (channels[cnum].sfxinfo && channels[cnum].origin == origin)
	.loc 1 478 20
	movq	(%rax), %rax	# _4->sfxinfo, _5
# s_sound.c:478: 	if (channels[cnum].sfxinfo && channels[cnum].origin == origin)
	.loc 1 478 5
	testq	%rax, %rax	# _5
	je	.L43	#,
# s_sound.c:478: 	if (channels[cnum].sfxinfo && channels[cnum].origin == origin)
	.loc 1 478 40 discriminator 1
	movq	channels(%rip), %rcx	# channels, channels.34_6
	movl	-4(%rbp), %eax	# cnum, tmp96
	movslq	%eax, %rdx	# tmp96, _7
	movq	%rdx, %rax	# _7, tmp97
	addq	%rax, %rax	# tmp97
	addq	%rdx, %rax	# _7, tmp97
	salq	$3, %rax	#, tmp98
	addq	%rcx, %rax	# channels.34_6, _9
# s_sound.c:478: 	if (channels[cnum].sfxinfo && channels[cnum].origin == origin)
	.loc 1 478 46 discriminator 1
	movq	8(%rax), %rax	# _9->origin, _10
# s_sound.c:478: 	if (channels[cnum].sfxinfo && channels[cnum].origin == origin)
	.loc 1 478 29 discriminator 1
	cmpq	%rax, -24(%rbp)	# _10, origin
	jne	.L43	#,
# s_sound.c:480: 	    S_StopChannel(cnum);
	.loc 1 480 6
	movl	-4(%rbp), %eax	# cnum, tmp99
	movl	%eax, %edi	# tmp99,
	call	S_StopChannel	#
# s_sound.c:481: 	    break;
	.loc 1 481 6
	jmp	.L44	#
.L43:
# s_sound.c:476:     for (cnum=0 ; cnum<numChannels ; cnum++)
	.loc 1 476 42 discriminator 2
	addl	$1, -4(%rbp)	#, cnum
.L42:
# s_sound.c:476:     for (cnum=0 ; cnum<numChannels ; cnum++)
	.loc 1 476 23 discriminator 1
	movl	numChannels(%rip), %eax	# numChannels, numChannels.35_11
	cmpl	%eax, -4(%rbp)	# numChannels.35_11, cnum
	jl	.L45	#,
# s_sound.c:484: }
	.loc 1 484 1
	nop	
.L44:
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	S_StopSound, .-S_StopSound
	.globl	S_PauseSound
	.type	S_PauseSound, @function
S_PauseSound:
.LFB11:
	.loc 1 498 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# s_sound.c:499:     if (mus_playing && !mus_paused)
	.loc 1 499 9
	movq	mus_playing(%rip), %rax	# mus_playing, mus_playing.36_1
# s_sound.c:499:     if (mus_playing && !mus_paused)
	.loc 1 499 8
	testq	%rax, %rax	# mus_playing.36_1
	je	.L48	#,
# s_sound.c:499:     if (mus_playing && !mus_paused)
	.loc 1 499 24 discriminator 1
	movl	mus_paused(%rip), %eax	# mus_paused, mus_paused.37_2
# s_sound.c:499:     if (mus_playing && !mus_paused)
	.loc 1 499 21 discriminator 1
	testl	%eax, %eax	# mus_paused.37_2
	jne	.L48	#,
# s_sound.c:501: 	I_PauseSong(mus_playing->handle);
	.loc 1 501 25
	movq	mus_playing(%rip), %rax	# mus_playing, mus_playing.38_3
# s_sound.c:501: 	I_PauseSong(mus_playing->handle);
	.loc 1 501 2
	movl	24(%rax), %eax	# mus_playing.38_3->handle, _4
	movl	%eax, %edi	# _4,
	call	I_PauseSong@PLT	#
# s_sound.c:502: 	mus_paused = true;
	.loc 1 502 13
	movl	$1, mus_paused(%rip)	#, mus_paused
.L48:
# s_sound.c:504: }
	.loc 1 504 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	S_PauseSound, .-S_PauseSound
	.globl	S_ResumeSound
	.type	S_ResumeSound, @function
S_ResumeSound:
.LFB12:
	.loc 1 507 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# s_sound.c:508:     if (mus_playing && mus_paused)
	.loc 1 508 9
	movq	mus_playing(%rip), %rax	# mus_playing, mus_playing.39_1
# s_sound.c:508:     if (mus_playing && mus_paused)
	.loc 1 508 8
	testq	%rax, %rax	# mus_playing.39_1
	je	.L51	#,
# s_sound.c:508:     if (mus_playing && mus_paused)
	.loc 1 508 21 discriminator 1
	movl	mus_paused(%rip), %eax	# mus_paused, mus_paused.40_2
	testl	%eax, %eax	# mus_paused.40_2
	je	.L51	#,
# s_sound.c:510: 	I_ResumeSong(mus_playing->handle);
	.loc 1 510 26
	movq	mus_playing(%rip), %rax	# mus_playing, mus_playing.41_3
# s_sound.c:510: 	I_ResumeSong(mus_playing->handle);
	.loc 1 510 2
	movl	24(%rax), %eax	# mus_playing.41_3->handle, _4
	movl	%eax, %edi	# _4,
	call	I_ResumeSong@PLT	#
# s_sound.c:511: 	mus_paused = false;
	.loc 1 511 13
	movl	$0, mus_paused(%rip)	#, mus_paused
.L51:
# s_sound.c:513: }
	.loc 1 513 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	S_ResumeSound, .-S_ResumeSound
	.globl	S_UpdateSounds
	.type	S_UpdateSounds, @function
S_UpdateSounds:
.LFB13:
	.loc 1 520 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# listener_p, listener_p
# s_sound.c:520: {
	.loc 1 520 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp130
	movq	%rax, -8(%rbp)	# tmp130, D.8355
	xorl	%eax, %eax	# tmp130
# s_sound.c:529:     mobj_t*	listener = (mobj_t*)listener_p;
	.loc 1 529 13
	movq	-72(%rbp), %rax	# listener_p, tmp106
	movq	%rax, -32(%rbp)	# tmp106, listener
# s_sound.c:553:     for (cnum=0 ; cnum<numChannels ; cnum++)
	.loc 1 553 14
	movl	$0, -40(%rbp)	#, cnum
# s_sound.c:553:     for (cnum=0 ; cnum<numChannels ; cnum++)
	.loc 1 553 5
	jmp	.L53	#
.L59:
# s_sound.c:555: 	c = &channels[cnum];
	.loc 1 555 6
	movq	channels(%rip), %rcx	# channels, channels.42_1
# s_sound.c:555: 	c = &channels[cnum];
	.loc 1 555 15
	movl	-40(%rbp), %eax	# cnum, tmp107
	movslq	%eax, %rdx	# tmp107, _2
	movq	%rdx, %rax	# _2, tmp108
	addq	%rax, %rax	# tmp108
	addq	%rdx, %rax	# _2, tmp108
	salq	$3, %rax	#, tmp109
# s_sound.c:555: 	c = &channels[cnum];
	.loc 1 555 4
	addq	%rcx, %rax	# channels.42_1, tmp110
	movq	%rax, -24(%rbp)	# tmp110, c
# s_sound.c:556: 	sfx = c->sfxinfo;
	.loc 1 556 6
	movq	-24(%rbp), %rax	# c, tmp111
	movq	(%rax), %rax	# c_36->sfxinfo, tmp112
	movq	%rax, -16(%rbp)	# tmp112, sfx
# s_sound.c:558: 	if (c->sfxinfo)
	.loc 1 558 7
	movq	-24(%rbp), %rax	# c, tmp113
	movq	(%rax), %rax	# c_36->sfxinfo, _4
# s_sound.c:558: 	if (c->sfxinfo)
	.loc 1 558 5
	testq	%rax, %rax	# _4
	je	.L54	#,
# s_sound.c:560: 	    if (I_SoundIsPlaying(c->handle))
	.loc 1 560 10
	movq	-24(%rbp), %rax	# c, tmp114
	movl	16(%rax), %eax	# c_36->handle, _5
	movl	%eax, %edi	# _5,
	call	I_SoundIsPlaying@PLT	#
# s_sound.c:560: 	    if (I_SoundIsPlaying(c->handle))
	.loc 1 560 9 discriminator 1
	testl	%eax, %eax	# _6
	je	.L55	#,
# s_sound.c:563: 		volume = snd_SfxVolume;
	.loc 1 563 10
	movl	snd_SfxVolume(%rip), %eax	# snd_SfxVolume, snd_SfxVolume.43_7
	movl	%eax, -52(%rbp)	# snd_SfxVolume.43_7, volume
# s_sound.c:564: 		pitch = NORM_PITCH;
	.loc 1 564 9
	movl	$128, -44(%rbp)	#, pitch
# s_sound.c:565: 		sep = NORM_SEP;
	.loc 1 565 7
	movl	$128, -48(%rbp)	#, sep
# s_sound.c:567: 		if (sfx->link)
	.loc 1 567 10
	movq	-16(%rbp), %rax	# sfx, tmp115
	movq	16(%rax), %rax	# sfx_37->link, _8
# s_sound.c:567: 		if (sfx->link)
	.loc 1 567 6
	testq	%rax, %rax	# _8
	je	.L56	#,
# s_sound.c:569: 		    pitch = sfx->pitch;
	.loc 1 569 18
	movq	-16(%rbp), %rax	# sfx, tmp116
	movl	24(%rax), %eax	# sfx_37->pitch, _9
# s_sound.c:569: 		    pitch = sfx->pitch;
	.loc 1 569 13
	movl	%eax, -44(%rbp)	# _9, pitch
# s_sound.c:570: 		    volume += sfx->volume;
	.loc 1 570 20
	movq	-16(%rbp), %rax	# sfx, tmp117
	movl	28(%rax), %edx	# sfx_37->volume, _10
# s_sound.c:570: 		    volume += sfx->volume;
	.loc 1 570 14
	movl	-52(%rbp), %eax	# volume, volume.44_11
	addl	%edx, %eax	# _10, _12
	movl	%eax, -52(%rbp)	# _12, volume
# s_sound.c:571: 		    if (volume < 1)
	.loc 1 571 18
	movl	-52(%rbp), %eax	# volume, volume.45_13
# s_sound.c:571: 		    if (volume < 1)
	.loc 1 571 10
	testl	%eax, %eax	# volume.45_13
	jg	.L57	#,
# s_sound.c:573: 			S_StopChannel(cnum);
	.loc 1 573 4
	movl	-40(%rbp), %eax	# cnum, tmp118
	movl	%eax, %edi	# tmp118,
	call	S_StopChannel	#
# s_sound.c:574: 			continue;
	.loc 1 574 4
	jmp	.L54	#
.L57:
# s_sound.c:576: 		    else if (volume > snd_SfxVolume)
	.loc 1 576 23
	movl	-52(%rbp), %edx	# volume, volume.46_14
	movl	snd_SfxVolume(%rip), %eax	# snd_SfxVolume, snd_SfxVolume.47_15
# s_sound.c:576: 		    else if (volume > snd_SfxVolume)
	.loc 1 576 15
	cmpl	%eax, %edx	# snd_SfxVolume.47_15, volume.46_14
	jle	.L56	#,
# s_sound.c:578: 			volume = snd_SfxVolume;
	.loc 1 578 11
	movl	snd_SfxVolume(%rip), %eax	# snd_SfxVolume, snd_SfxVolume.48_16
	movl	%eax, -52(%rbp)	# snd_SfxVolume.48_16, volume
.L56:
# s_sound.c:584: 		if (c->origin && listener_p != c->origin)
	.loc 1 584 8
	movq	-24(%rbp), %rax	# c, tmp119
	movq	8(%rax), %rax	# c_36->origin, _17
# s_sound.c:584: 		if (c->origin && listener_p != c->origin)
	.loc 1 584 6
	testq	%rax, %rax	# _17
	je	.L54	#,
# s_sound.c:584: 		if (c->origin && listener_p != c->origin)
	.loc 1 584 35 discriminator 1
	movq	-24(%rbp), %rax	# c, tmp120
	movq	8(%rax), %rax	# c_36->origin, _18
# s_sound.c:584: 		if (c->origin && listener_p != c->origin)
	.loc 1 584 17 discriminator 1
	cmpq	%rax, -72(%rbp)	# _18, listener_p
	je	.L54	#,
# s_sound.c:587: 						  c->origin,
	.loc 1 587 10
	movq	-24(%rbp), %rax	# c, tmp121
	movq	8(%rax), %rsi	# c_36->origin, _19
# s_sound.c:586: 		    audible = S_AdjustSoundParams(listener,
	.loc 1 586 17
	leaq	-44(%rbp), %rdi	#, tmp122
	leaq	-48(%rbp), %rcx	#, tmp123
	leaq	-52(%rbp), %rdx	#, tmp124
	movq	-32(%rbp), %rax	# listener, tmp125
	movq	%rdi, %r8	# tmp122,
	movq	%rax, %rdi	# tmp125,
	call	S_AdjustSoundParams	#
	movl	%eax, -36(%rbp)	# tmp126, audible
# s_sound.c:592: 		    if (!audible)
	.loc 1 592 10
	cmpl	$0, -36(%rbp)	#, audible
	jne	.L58	#,
# s_sound.c:594: 			S_StopChannel(cnum);
	.loc 1 594 4
	movl	-40(%rbp), %eax	# cnum, tmp127
	movl	%eax, %edi	# tmp127,
	call	S_StopChannel	#
	jmp	.L54	#
.L58:
# s_sound.c:597: 			I_UpdateSoundParams(c->handle, volume, sep, pitch);
	.loc 1 597 4
	movl	-44(%rbp), %ecx	# pitch, pitch.49_20
	movl	-48(%rbp), %edx	# sep, sep.50_21
	movl	-52(%rbp), %esi	# volume, volume.51_22
	movq	-24(%rbp), %rax	# c, tmp128
	movl	16(%rax), %eax	# c_36->handle, _23
	movl	%eax, %edi	# _23,
	call	I_UpdateSoundParams@PLT	#
	jmp	.L54	#
.L55:
# s_sound.c:604: 		S_StopChannel(cnum);
	.loc 1 604 3
	movl	-40(%rbp), %eax	# cnum, tmp129
	movl	%eax, %edi	# tmp129,
	call	S_StopChannel	#
.L54:
# s_sound.c:553:     for (cnum=0 ; cnum<numChannels ; cnum++)
	.loc 1 553 42 discriminator 2
	addl	$1, -40(%rbp)	#, cnum
.L53:
# s_sound.c:553:     for (cnum=0 ; cnum<numChannels ; cnum++)
	.loc 1 553 23 discriminator 1
	movl	numChannels(%rip), %eax	# numChannels, numChannels.52_24
	cmpl	%eax, -40(%rbp)	# numChannels.52_24, cnum
	jl	.L59	#,
# s_sound.c:613: }
	.loc 1 613 1
	nop	
	movq	-8(%rbp), %rax	# D.8355, tmp131
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp131
	je	.L60	#,
	call	__stack_chk_fail@PLT	#
.L60:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE13:
	.size	S_UpdateSounds, .-S_UpdateSounds
	.section	.rodata
	.align 8
.LC3:
	.string	"Attempt to set music volume at %d"
	.text
	.globl	S_SetMusicVolume
	.type	S_SetMusicVolume, @function
S_SetMusicVolume:
.LFB14:
	.loc 1 617 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# volume, volume
# s_sound.c:618:     if (volume < 0 || volume > 127)
	.loc 1 618 8
	cmpl	$0, -4(%rbp)	#, volume
	js	.L62	#,
# s_sound.c:618:     if (volume < 0 || volume > 127)
	.loc 1 618 20 discriminator 1
	cmpl	$127, -4(%rbp)	#, volume
	jle	.L63	#,
.L62:
# s_sound.c:620: 	I_Error("Attempt to set music volume at %d",
	.loc 1 620 2
	movl	-4(%rbp), %eax	# volume, tmp82
	movl	%eax, %esi	# tmp82,
	leaq	.LC3(%rip), %rax	#, tmp83
	movq	%rax, %rdi	# tmp83,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L63:
# s_sound.c:624:     I_SetMusicVolume(127);
	.loc 1 624 5
	movl	$127, %edi	#,
	call	I_SetMusicVolume@PLT	#
# s_sound.c:625:     I_SetMusicVolume(volume);
	.loc 1 625 5
	movl	-4(%rbp), %eax	# volume, tmp84
	movl	%eax, %edi	# tmp84,
	call	I_SetMusicVolume@PLT	#
# s_sound.c:626:     snd_MusicVolume = volume;
	.loc 1 626 21
	movl	-4(%rbp), %eax	# volume, tmp85
	movl	%eax, snd_MusicVolume(%rip)	# tmp85, snd_MusicVolume
# s_sound.c:627: }
	.loc 1 627 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE14:
	.size	S_SetMusicVolume, .-S_SetMusicVolume
	.section	.rodata
	.align 8
.LC4:
	.string	"Attempt to set sfx volume at %d"
	.text
	.globl	S_SetSfxVolume
	.type	S_SetSfxVolume, @function
S_SetSfxVolume:
.LFB15:
	.loc 1 632 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# volume, volume
# s_sound.c:634:     if (volume < 0 || volume > 127)
	.loc 1 634 8
	cmpl	$0, -4(%rbp)	#, volume
	js	.L65	#,
# s_sound.c:634:     if (volume < 0 || volume > 127)
	.loc 1 634 20 discriminator 1
	cmpl	$127, -4(%rbp)	#, volume
	jle	.L66	#,
.L65:
# s_sound.c:635: 	I_Error("Attempt to set sfx volume at %d", volume);
	.loc 1 635 2
	movl	-4(%rbp), %eax	# volume, tmp82
	movl	%eax, %esi	# tmp82,
	leaq	.LC4(%rip), %rax	#, tmp83
	movq	%rax, %rdi	# tmp83,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L66:
# s_sound.c:637:     snd_SfxVolume = volume;
	.loc 1 637 19
	movl	-4(%rbp), %eax	# volume, tmp84
	movl	%eax, snd_SfxVolume(%rip)	# tmp84, snd_SfxVolume
# s_sound.c:639: }
	.loc 1 639 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE15:
	.size	S_SetSfxVolume, .-S_SetSfxVolume
	.globl	S_StartMusic
	.type	S_StartMusic, @function
S_StartMusic:
.LFB16:
	.loc 1 645 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# m_id, m_id
# s_sound.c:646:     S_ChangeMusic(m_id, false);
	.loc 1 646 5
	movl	-4(%rbp), %eax	# m_id, tmp82
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp82,
	call	S_ChangeMusic	#
# s_sound.c:647: }
	.loc 1 647 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE16:
	.size	S_StartMusic, .-S_StartMusic
	.section	.rodata
.LC5:
	.string	"Bad music number %d"
.LC6:
	.string	"d_%s"
	.text
	.globl	S_ChangeMusic
	.type	S_ChangeMusic, @function
S_ChangeMusic:
.LFB17:
	.loc 1 653 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# musicnum, musicnum
	movl	%esi, -40(%rbp)	# looping, looping
# s_sound.c:653: {
	.loc 1 653 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp111
	movq	%rax, -8(%rbp)	# tmp111, D.8358
	xorl	%eax, %eax	# tmp111
# s_sound.c:657:     if ( (musicnum <= mus_None)
	.loc 1 657 8
	cmpl	$0, -36(%rbp)	#, musicnum
	jle	.L69	#,
# s_sound.c:658: 	 || (musicnum >= NUMMUSIC) )
	.loc 1 658 3
	cmpl	$67, -36(%rbp)	#, musicnum
	jle	.L70	#,
.L69:
# s_sound.c:660: 	I_Error("Bad music number %d", musicnum);
	.loc 1 660 2
	movl	-36(%rbp), %eax	# musicnum, tmp91
	movl	%eax, %esi	# tmp91,
	leaq	.LC5(%rip), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
	jmp	.L71	#
.L70:
# s_sound.c:663: 	music = &S_music[musicnum];
	.loc 1 663 8
	movl	-36(%rbp), %eax	# musicnum, tmp94
	cltq
	salq	$5, %rax	#, tmp93
	movq	%rax, %rdx	# tmp93, tmp95
	leaq	S_music(%rip), %rax	#, tmp96
	addq	%rdx, %rax	# tmp95, tmp97
	movq	%rax, -32(%rbp)	# tmp97, music
.L71:
# s_sound.c:665:     if (mus_playing == music)
	.loc 1 665 21
	movq	mus_playing(%rip), %rax	# mus_playing, mus_playing.53_1
# s_sound.c:665:     if (mus_playing == music)
	.loc 1 665 8
	cmpq	%rax, -32(%rbp)	# mus_playing.53_1, music
	je	.L76	#,
# s_sound.c:669:     S_StopMusic();
	.loc 1 669 5
	call	S_StopMusic	#
# s_sound.c:672:     if (!music->lumpnum)
	.loc 1 672 15
	movq	-32(%rbp), %rax	# music, tmp98
	movl	8(%rax), %eax	# music_10->lumpnum, _2
# s_sound.c:672:     if (!music->lumpnum)
	.loc 1 672 8
	testl	%eax, %eax	# _2
	jne	.L74	#,
# s_sound.c:674: 	sprintf(namebuf, "d_%s", music->name);
	.loc 1 674 2
	movq	-32(%rbp), %rax	# music, tmp99
	movq	(%rax), %rdx	# music_10->name, _3
	leaq	-17(%rbp), %rax	#, tmp100
	leaq	.LC6(%rip), %rcx	#, tmp101
	movq	%rcx, %rsi	# tmp101,
	movq	%rax, %rdi	# tmp100,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# s_sound.c:675: 	music->lumpnum = W_GetNumForName(namebuf);
	.loc 1 675 19
	leaq	-17(%rbp), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	W_GetNumForName@PLT	#
# s_sound.c:675: 	music->lumpnum = W_GetNumForName(namebuf);
	.loc 1 675 17 discriminator 1
	movq	-32(%rbp), %rdx	# music, tmp103
	movl	%eax, 8(%rdx)	# _4, music_10->lumpnum
.L74:
# s_sound.c:679:     music->data = (void *) W_CacheLumpNum(music->lumpnum, PU_MUSIC);
	.loc 1 679 19
	movq	-32(%rbp), %rax	# music, tmp104
	movl	8(%rax), %eax	# music_10->lumpnum, _5
	movl	$3, %esi	#,
	movl	%eax, %edi	# _5,
	call	W_CacheLumpNum@PLT	#
# s_sound.c:679:     music->data = (void *) W_CacheLumpNum(music->lumpnum, PU_MUSIC);
	.loc 1 679 17 discriminator 1
	movq	-32(%rbp), %rdx	# music, tmp105
	movq	%rax, 16(%rdx)	# _6, music_10->data
# s_sound.c:680:     music->handle = I_RegisterSong(music->data);
	.loc 1 680 21
	movq	-32(%rbp), %rax	# music, tmp106
	movq	16(%rax), %rax	# music_10->data, _7
	movq	%rax, %rdi	# _7,
	call	I_RegisterSong@PLT	#
# s_sound.c:680:     music->handle = I_RegisterSong(music->data);
	.loc 1 680 19 discriminator 1
	movq	-32(%rbp), %rdx	# music, tmp107
	movl	%eax, 24(%rdx)	# _8, music_10->handle
# s_sound.c:683:     I_PlaySong(music->handle, looping);
	.loc 1 683 5
	movq	-32(%rbp), %rax	# music, tmp108
	movl	24(%rax), %eax	# music_10->handle, _9
	movl	-40(%rbp), %edx	# looping, tmp109
	movl	%edx, %esi	# tmp109,
	movl	%eax, %edi	# _9,
	call	I_PlaySong@PLT	#
# s_sound.c:685:     mus_playing = music;
	.loc 1 685 17
	movq	-32(%rbp), %rax	# music, tmp110
	movq	%rax, mus_playing(%rip)	# tmp110, mus_playing
	jmp	.L68	#
.L76:
# s_sound.c:666: 	return;
	.loc 1 666 2 discriminator 1
	nop	
.L68:
# s_sound.c:686: }
	.loc 1 686 1
	movq	-8(%rbp), %rax	# D.8358, tmp112
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp112
	je	.L75	#,
	call	__stack_chk_fail@PLT	#
.L75:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE17:
	.size	S_ChangeMusic, .-S_ChangeMusic
	.section	.rodata
.LC7:
	.string	"Z_CT at s_sound.c:%i"
	.text
	.globl	S_StopMusic
	.type	S_StopMusic, @function
S_StopMusic:
.LFB18:
	.loc 1 690 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# s_sound.c:691:     if (mus_playing)
	.loc 1 691 9
	movq	mus_playing(%rip), %rax	# mus_playing, mus_playing.54_1
# s_sound.c:691:     if (mus_playing)
	.loc 1 691 8
	testq	%rax, %rax	# mus_playing.54_1
	je	.L81	#,
# s_sound.c:693: 	if (mus_paused)
	.loc 1 693 6
	movl	mus_paused(%rip), %eax	# mus_paused, mus_paused.55_2
# s_sound.c:693: 	if (mus_paused)
	.loc 1 693 5
	testl	%eax, %eax	# mus_paused.55_2
	je	.L79	#,
# s_sound.c:694: 	    I_ResumeSong(mus_playing->handle);
	.loc 1 694 30
	movq	mus_playing(%rip), %rax	# mus_playing, mus_playing.56_3
# s_sound.c:694: 	    I_ResumeSong(mus_playing->handle);
	.loc 1 694 6
	movl	24(%rax), %eax	# mus_playing.56_3->handle, _4
	movl	%eax, %edi	# _4,
	call	I_ResumeSong@PLT	#
.L79:
# s_sound.c:696: 	I_StopSong(mus_playing->handle);
	.loc 1 696 24
	movq	mus_playing(%rip), %rax	# mus_playing, mus_playing.57_5
# s_sound.c:696: 	I_StopSong(mus_playing->handle);
	.loc 1 696 2
	movl	24(%rax), %eax	# mus_playing.57_5->handle, _6
	movl	%eax, %edi	# _6,
	call	I_StopSong@PLT	#
# s_sound.c:697: 	I_UnRegisterSong(mus_playing->handle);
	.loc 1 697 30
	movq	mus_playing(%rip), %rax	# mus_playing, mus_playing.58_7
# s_sound.c:697: 	I_UnRegisterSong(mus_playing->handle);
	.loc 1 697 2
	movl	24(%rax), %eax	# mus_playing.58_7->handle, _8
	movl	%eax, %edi	# _8,
	call	I_UnRegisterSong@PLT	#
# s_sound.c:698: 	Z_ChangeTag(mus_playing->data, PU_CACHE);
	.loc 1 698 2
	movq	mus_playing(%rip), %rax	# mus_playing, mus_playing.59_9
	movq	16(%rax), %rax	# mus_playing.59_9->data, _10
	subq	$40, %rax	#, _11
	movl	20(%rax), %eax	# _11->id, _12
	cmpl	$1919505, %eax	#, _12
	je	.L80	#,
# s_sound.c:698: 	Z_ChangeTag(mus_playing->data, PU_CACHE);
	.loc 1 698 2 is_stmt 0 discriminator 1
	movl	$698, %esi	#,
	leaq	.LC7(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L80:
# s_sound.c:698: 	Z_ChangeTag(mus_playing->data, PU_CACHE);
	.loc 1 698 2 discriminator 3
	movq	mus_playing(%rip), %rax	# mus_playing, mus_playing.60_13
	movq	16(%rax), %rax	# mus_playing.60_13->data, _14
	movl	$101, %esi	#,
	movq	%rax, %rdi	# _14,
	call	Z_ChangeTag2@PLT	#
# s_sound.c:700: 	mus_playing->data = 0;
	.loc 1 700 13 is_stmt 1
	movq	mus_playing(%rip), %rax	# mus_playing, mus_playing.61_15
# s_sound.c:700: 	mus_playing->data = 0;
	.loc 1 700 20
	movq	$0, 16(%rax)	#, mus_playing.61_15->data
# s_sound.c:701: 	mus_playing = 0;
	.loc 1 701 14
	movq	$0, mus_playing(%rip)	#, mus_playing
.L81:
# s_sound.c:703: }
	.loc 1 703 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE18:
	.size	S_StopMusic, .-S_StopMusic
	.globl	S_StopChannel
	.type	S_StopChannel, @function
S_StopChannel:
.LFB19:
	.loc 1 709 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# cnum, cnum
# s_sound.c:712:     channel_t*	c = &channels[cnum];
	.loc 1 712 20
	movq	channels(%rip), %rcx	# channels, channels.62_1
# s_sound.c:712:     channel_t*	c = &channels[cnum];
	.loc 1 712 29
	movl	-20(%rbp), %eax	# cnum, tmp99
	movslq	%eax, %rdx	# tmp99, _2
	movq	%rdx, %rax	# _2, tmp100
	addq	%rax, %rax	# tmp100
	addq	%rdx, %rax	# _2, tmp100
	salq	$3, %rax	#, tmp101
# s_sound.c:712:     channel_t*	c = &channels[cnum];
	.loc 1 712 16
	addq	%rcx, %rax	# channels.62_1, tmp102
	movq	%rax, -8(%rbp)	# tmp102, c
# s_sound.c:714:     if (c->sfxinfo)
	.loc 1 714 10
	movq	-8(%rbp), %rax	# c, tmp103
	movq	(%rax), %rax	# c_23->sfxinfo, _4
# s_sound.c:714:     if (c->sfxinfo)
	.loc 1 714 8
	testq	%rax, %rax	# _4
	je	.L89	#,
# s_sound.c:717: 	if (I_SoundIsPlaying(c->handle))
	.loc 1 717 6
	movq	-8(%rbp), %rax	# c, tmp104
	movl	16(%rax), %eax	# c_23->handle, _5
	movl	%eax, %edi	# _5,
	call	I_SoundIsPlaying@PLT	#
# s_sound.c:717: 	if (I_SoundIsPlaying(c->handle))
	.loc 1 717 5 discriminator 1
	testl	%eax, %eax	# _6
	je	.L84	#,
# s_sound.c:723: 	    I_StopSound(c->handle);
	.loc 1 723 6
	movq	-8(%rbp), %rax	# c, tmp105
	movl	16(%rax), %eax	# c_23->handle, _7
	movl	%eax, %edi	# _7,
	call	I_StopSound@PLT	#
.L84:
# s_sound.c:728: 	for (i=0 ; i<numChannels ; i++)
	.loc 1 728 8
	movl	$0, -12(%rbp)	#, i
# s_sound.c:728: 	for (i=0 ; i<numChannels ; i++)
	.loc 1 728 2
	jmp	.L85	#
.L88:
# s_sound.c:730: 	    if (cnum != i
	.loc 1 730 9
	movl	-20(%rbp), %eax	# cnum, tmp106
	cmpl	-12(%rbp), %eax	# i, tmp106
	je	.L86	#,
# s_sound.c:731: 		&& c->sfxinfo == channels[i].sfxinfo)
	.loc 1 731 7
	movq	-8(%rbp), %rax	# c, tmp107
	movq	(%rax), %rcx	# c_23->sfxinfo, _8
# s_sound.c:731: 		&& c->sfxinfo == channels[i].sfxinfo)
	.loc 1 731 28
	movq	channels(%rip), %rsi	# channels, channels.63_9
	movl	-12(%rbp), %eax	# i, tmp108
	movslq	%eax, %rdx	# tmp108, _10
	movq	%rdx, %rax	# _10, tmp109
	addq	%rax, %rax	# tmp109
	addq	%rdx, %rax	# _10, tmp109
	salq	$3, %rax	#, tmp110
	addq	%rsi, %rax	# channels.63_9, _12
# s_sound.c:731: 		&& c->sfxinfo == channels[i].sfxinfo)
	.loc 1 731 31
	movq	(%rax), %rax	# _12->sfxinfo, _13
# s_sound.c:731: 		&& c->sfxinfo == channels[i].sfxinfo)
	.loc 1 731 3
	cmpq	%rax, %rcx	# _13, _8
	je	.L90	#,
.L86:
# s_sound.c:728: 	for (i=0 ; i<numChannels ; i++)
	.loc 1 728 30 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L85:
# s_sound.c:728: 	for (i=0 ; i<numChannels ; i++)
	.loc 1 728 14 discriminator 1
	movl	numChannels(%rip), %eax	# numChannels, numChannels.64_14
	cmpl	%eax, -12(%rbp)	# numChannels.64_14, i
	jl	.L88	#,
	jmp	.L87	#
.L90:
# s_sound.c:733: 		break;
	.loc 1 733 3
	nop	
.L87:
# s_sound.c:738: 	c->sfxinfo->usefulness--;
	.loc 1 738 3
	movq	-8(%rbp), %rax	# c, tmp111
	movq	(%rax), %rax	# c_23->sfxinfo, _15
# s_sound.c:738: 	c->sfxinfo->usefulness--;
	.loc 1 738 12
	movl	40(%rax), %edx	# _15->usefulness, _16
# s_sound.c:738: 	c->sfxinfo->usefulness--;
	.loc 1 738 24
	subl	$1, %edx	#, _17
	movl	%edx, 40(%rax)	# _17, _15->usefulness
# s_sound.c:740: 	c->sfxinfo = 0;
	.loc 1 740 13
	movq	-8(%rbp), %rax	# c, tmp112
	movq	$0, (%rax)	#, c_23->sfxinfo
.L89:
# s_sound.c:742: }
	.loc 1 742 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE19:
	.size	S_StopChannel, .-S_StopChannel
	.globl	S_AdjustSoundParams
	.type	S_AdjustSoundParams, @function
S_AdjustSoundParams:
.LFB20:
	.loc 1 759 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# listener, listener
	movq	%rsi, -32(%rbp)	# source, source
	movq	%rdx, -40(%rbp)	# vol, vol
	movq	%rcx, -48(%rbp)	# sep, sep
	movq	%r8, -56(%rbp)	# pitch, pitch
# s_sound.c:767:     adx = abs(listener->x - source->x);
	.loc 1 767 23
	movq	-24(%rbp), %rax	# listener, tmp122
	movl	24(%rax), %ecx	# listener_45(D)->x, _1
# s_sound.c:767:     adx = abs(listener->x - source->x);
	.loc 1 767 35
	movq	-32(%rbp), %rax	# source, tmp123
	movl	24(%rax), %edx	# source_46(D)->x, _2
# s_sound.c:767:     adx = abs(listener->x - source->x);
	.loc 1 767 27
	movl	%ecx, %eax	# _1, _1
	subl	%edx, %eax	# _2, _1
# s_sound.c:767:     adx = abs(listener->x - source->x);
	.loc 1 767 9
	movl	%eax, %edx	# _3, tmp164
	negl	%edx	# tmp164
	cmovns	%edx, %eax	# tmp164,, tmp124
	movl	%eax, -8(%rbp)	# tmp124, adx
# s_sound.c:768:     ady = abs(listener->y - source->y);
	.loc 1 768 23
	movq	-24(%rbp), %rax	# listener, tmp125
	movl	28(%rax), %ecx	# listener_45(D)->y, _4
# s_sound.c:768:     ady = abs(listener->y - source->y);
	.loc 1 768 35
	movq	-32(%rbp), %rax	# source, tmp126
	movl	28(%rax), %edx	# source_46(D)->y, _5
# s_sound.c:768:     ady = abs(listener->y - source->y);
	.loc 1 768 27
	movl	%ecx, %eax	# _4, _4
	subl	%edx, %eax	# _5, _4
# s_sound.c:768:     ady = abs(listener->y - source->y);
	.loc 1 768 9
	movl	%eax, %edx	# _6, tmp165
	negl	%edx	# tmp165
	cmovns	%edx, %eax	# tmp165,, tmp127
	movl	%eax, -4(%rbp)	# tmp127, ady
# s_sound.c:771:     approx_dist = adx + ady - ((adx < ady ? adx : ady)>>1);
	.loc 1 771 23
	movl	-8(%rbp), %edx	# adx, tmp128
	movl	-4(%rbp), %eax	# ady, tmp129
	leal	(%rdx,%rax), %ecx	#, _7
# s_sound.c:771:     approx_dist = adx + ady - ((adx < ady ? adx : ady)>>1);
	.loc 1 771 49
	movl	-4(%rbp), %edx	# ady, tmp130
	movl	-8(%rbp), %eax	# adx, tmp166
	cmpl	%eax, %edx	# tmp166, tmp130
	cmovle	%edx, %eax	# tmp130,, _8
# s_sound.c:771:     approx_dist = adx + ady - ((adx < ady ? adx : ady)>>1);
	.loc 1 771 55
	sarl	%eax	# _8
	movl	%eax, %edx	# _8, _9
# s_sound.c:771:     approx_dist = adx + ady - ((adx < ady ? adx : ady)>>1);
	.loc 1 771 17
	movl	%ecx, %eax	# _7, _7
	subl	%edx, %eax	# _9, _7
	movl	%eax, -16(%rbp)	# tmp131, approx_dist
# s_sound.c:773:     if (gamemap != 8
	.loc 1 773 17
	movl	gamemap(%rip), %eax	# gamemap, gamemap.65_10
# s_sound.c:773:     if (gamemap != 8
	.loc 1 773 8
	cmpl	$8, %eax	#, gamemap.65_10
	je	.L92	#,
# s_sound.c:774: 	&& approx_dist > S_CLIPPING_DIST)
	.loc 1 774 2
	cmpl	$78643200, -16(%rbp)	#, approx_dist
	jle	.L92	#,
# s_sound.c:776: 	return 0;
	.loc 1 776 9
	movl	$0, %eax	#, _41
	jmp	.L93	#
.L92:
# s_sound.c:780:     angle = R_PointToAngle2(listener->x,
	.loc 1 780 13
	movq	-32(%rbp), %rax	# source, tmp132
	movl	28(%rax), %ecx	# source_46(D)->y, _11
	movq	-32(%rbp), %rax	# source, tmp133
	movl	24(%rax), %edx	# source_46(D)->x, _12
	movq	-24(%rbp), %rax	# listener, tmp134
	movl	28(%rax), %esi	# listener_45(D)->y, _13
	movq	-24(%rbp), %rax	# listener, tmp135
	movl	24(%rax), %eax	# listener_45(D)->x, _14
	movl	%eax, %edi	# _14,
	call	R_PointToAngle2@PLT	#
	movl	%eax, -12(%rbp)	# tmp136, angle
# s_sound.c:785:     if (angle > listener->angle)
	.loc 1 785 25
	movq	-24(%rbp), %rax	# listener, tmp137
	movl	56(%rax), %eax	# listener_45(D)->angle, _15
# s_sound.c:785:     if (angle > listener->angle)
	.loc 1 785 8
	cmpl	-12(%rbp), %eax	# angle, _15
	jnb	.L94	#,
# s_sound.c:786: 	angle = angle - listener->angle;
	.loc 1 786 26
	movq	-24(%rbp), %rax	# listener, tmp138
	movl	56(%rax), %eax	# listener_45(D)->angle, _16
# s_sound.c:786: 	angle = angle - listener->angle;
	.loc 1 786 8
	subl	%eax, -12(%rbp)	# _16, angle
	jmp	.L95	#
.L94:
# s_sound.c:788: 	angle = angle + (0xffffffff - listener->angle);
	.loc 1 788 40
	movq	-24(%rbp), %rax	# listener, tmp139
	movl	56(%rax), %eax	# listener_45(D)->angle, _17
# s_sound.c:788: 	angle = angle + (0xffffffff - listener->angle);
	.loc 1 788 16
	movl	-12(%rbp), %edx	# angle, tmp140
	subl	%eax, %edx	# _17, _18
# s_sound.c:788: 	angle = angle + (0xffffffff - listener->angle);
	.loc 1 788 8
	leal	-1(%rdx), %eax	#, tmp141
	movl	%eax, -12(%rbp)	# tmp141, angle
.L95:
# s_sound.c:790:     angle >>= ANGLETOFINESHIFT;
	.loc 1 790 11
	shrl	$19, -12(%rbp)	#, angle
# s_sound.c:793:     *sep = 128 - (FixedMul(S_STEREO_SWING,finesine[angle])>>FRACBITS);
	.loc 1 793 19
	movl	-12(%rbp), %eax	# angle, tmp142
	leaq	0(,%rax,4), %rdx	#, tmp143
	leaq	finesine(%rip), %rax	#, tmp144
	movl	(%rdx,%rax), %eax	# finesine[angle_55], _19
	movl	%eax, %esi	# _19,
	movl	$6291456, %edi	#,
	call	FixedMul@PLT	#
# s_sound.c:793:     *sep = 128 - (FixedMul(S_STEREO_SWING,finesine[angle])>>FRACBITS);
	.loc 1 793 59 discriminator 1
	sarl	$16, %eax	#, _21
# s_sound.c:793:     *sep = 128 - (FixedMul(S_STEREO_SWING,finesine[angle])>>FRACBITS);
	.loc 1 793 16 discriminator 1
	movl	$128, %edx	#, tmp145
	subl	%eax, %edx	# _21, _22
# s_sound.c:793:     *sep = 128 - (FixedMul(S_STEREO_SWING,finesine[angle])>>FRACBITS);
	.loc 1 793 10 discriminator 1
	movq	-48(%rbp), %rax	# sep, tmp146
	movl	%edx, (%rax)	# _22, *sep_57(D)
# s_sound.c:796:     if (approx_dist < S_CLOSE_DIST)
	.loc 1 796 8
	cmpl	$10485759, -16(%rbp)	#, approx_dist
	jg	.L96	#,
# s_sound.c:798: 	*vol = snd_SfxVolume;
	.loc 1 798 7
	movl	snd_SfxVolume(%rip), %edx	# snd_SfxVolume, snd_SfxVolume.66_23
	movq	-40(%rbp), %rax	# vol, tmp147
	movl	%edx, (%rax)	# snd_SfxVolume.66_23, *vol_59(D)
	jmp	.L97	#
.L96:
# s_sound.c:800:     else if (gamemap == 8)
	.loc 1 800 22
	movl	gamemap(%rip), %eax	# gamemap, gamemap.67_24
# s_sound.c:800:     else if (gamemap == 8)
	.loc 1 800 13
	cmpl	$8, %eax	#, gamemap.67_24
	jne	.L98	#,
# s_sound.c:802: 	if (approx_dist > S_CLIPPING_DIST)
	.loc 1 802 5
	cmpl	$78643200, -16(%rbp)	#, approx_dist
	jle	.L99	#,
# s_sound.c:803: 	    approx_dist = S_CLIPPING_DIST;
	.loc 1 803 18
	movl	$78643200, -16(%rbp)	#, approx_dist
.L99:
# s_sound.c:805: 	*vol = 15+ ((snd_SfxVolume-15)
	.loc 1 805 28
	movl	snd_SfxVolume(%rip), %eax	# snd_SfxVolume, snd_SfxVolume.68_25
	leal	-15(%rax), %edx	#, _26
# s_sound.c:806: 		    *((S_CLIPPING_DIST - approx_dist)>>FRACBITS))
	.loc 1 806 26
	movl	$78643200, %eax	#, tmp148
	subl	-16(%rbp), %eax	# approx_dist, _27
# s_sound.c:806: 		    *((S_CLIPPING_DIST - approx_dist)>>FRACBITS))
	.loc 1 806 40
	sarl	$16, %eax	#, _28
# s_sound.c:806: 		    *((S_CLIPPING_DIST - approx_dist)>>FRACBITS))
	.loc 1 806 7
	imull	%edx, %eax	# _26, _29
# s_sound.c:807: 	    / S_ATTENUATOR;
	.loc 1 807 6
	movslq	%eax, %rdx	# _29, tmp149
	imulq	$2114445439, %rdx, %rdx	#, tmp149, tmp150
	shrq	$32, %rdx	#, tmp151
	sarl	$9, %edx	#, tmp152
	sarl	$31, %eax	#, tmp153
	subl	%eax, %edx	# tmp153, _30
# s_sound.c:805: 	*vol = 15+ ((snd_SfxVolume-15)
	.loc 1 805 11
	addl	$15, %edx	#, _31
# s_sound.c:805: 	*vol = 15+ ((snd_SfxVolume-15)
	.loc 1 805 7
	movq	-40(%rbp), %rax	# vol, tmp154
	movl	%edx, (%rax)	# _31, *vol_59(D)
	jmp	.L97	#
.L98:
# s_sound.c:813: 		* ((S_CLIPPING_DIST - approx_dist)>>FRACBITS))
	.loc 1 813 23
	movl	$78643200, %eax	#, tmp155
	subl	-16(%rbp), %eax	# approx_dist, _32
# s_sound.c:813: 		* ((S_CLIPPING_DIST - approx_dist)>>FRACBITS))
	.loc 1 813 37
	sarl	$16, %eax	#, _32
	movl	%eax, %edx	# _32, _33
# s_sound.c:813: 		* ((S_CLIPPING_DIST - approx_dist)>>FRACBITS))
	.loc 1 813 3
	movl	snd_SfxVolume(%rip), %eax	# snd_SfxVolume, snd_SfxVolume.69_34
	imull	%edx, %eax	# _33, _35
# s_sound.c:814: 	    / S_ATTENUATOR; 
	.loc 1 814 6
	movslq	%eax, %rdx	# _35, tmp156
	imulq	$2114445439, %rdx, %rdx	#, tmp156, tmp157
	shrq	$32, %rdx	#, tmp158
	sarl	$9, %edx	#, tmp159
	sarl	$31, %eax	#, tmp160
	subl	%eax, %edx	# tmp160, _36
# s_sound.c:812: 	*vol = (snd_SfxVolume
	.loc 1 812 7
	movq	-40(%rbp), %rax	# vol, tmp161
	movl	%edx, (%rax)	# _36, *vol_59(D)
.L97:
# s_sound.c:817:     return (*vol > 0);
	.loc 1 817 13
	movq	-40(%rbp), %rax	# vol, tmp162
	movl	(%rax), %eax	# *vol_59(D), _37
# s_sound.c:817:     return (*vol > 0);
	.loc 1 817 18
	testl	%eax, %eax	# _37
	setg	%al	#, _38
	movzbl	%al, %eax	# _38, _41
.L93:
# s_sound.c:818: }
	.loc 1 818 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE20:
	.size	S_AdjustSoundParams, .-S_AdjustSoundParams
	.globl	S_getChannel
	.type	S_getChannel, @function
S_getChannel:
.LFB21:
	.loc 1 831 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# origin, origin
	movq	%rsi, -32(%rbp)	# sfxinfo, sfxinfo
# s_sound.c:838:     for (cnum=0 ; cnum<numChannels ; cnum++)
	.loc 1 838 14
	movl	$0, -12(%rbp)	#, cnum
# s_sound.c:838:     for (cnum=0 ; cnum<numChannels ; cnum++)
	.loc 1 838 5
	jmp	.L101	#
.L105:
# s_sound.c:840: 	if (!channels[cnum].sfxinfo)
	.loc 1 840 15
	movq	channels(%rip), %rcx	# channels, channels.70_1
	movl	-12(%rbp), %eax	# cnum, tmp108
	movslq	%eax, %rdx	# tmp108, _2
	movq	%rdx, %rax	# _2, tmp109
	addq	%rax, %rax	# tmp109
	addq	%rdx, %rax	# _2, tmp109
	salq	$3, %rax	#, tmp110
	addq	%rcx, %rax	# channels.70_1, _4
# s_sound.c:840: 	if (!channels[cnum].sfxinfo)
	.loc 1 840 21
	movq	(%rax), %rax	# _4->sfxinfo, _5
# s_sound.c:840: 	if (!channels[cnum].sfxinfo)
	.loc 1 840 5
	testq	%rax, %rax	# _5
	je	.L113	#,
# s_sound.c:842: 	else if (origin &&  channels[cnum].origin ==  origin)
	.loc 1 842 10
	cmpq	$0, -24(%rbp)	#, origin
	je	.L104	#,
# s_sound.c:842: 	else if (origin &&  channels[cnum].origin ==  origin)
	.loc 1 842 30 discriminator 1
	movq	channels(%rip), %rcx	# channels, channels.71_6
	movl	-12(%rbp), %eax	# cnum, tmp111
	movslq	%eax, %rdx	# tmp111, _7
	movq	%rdx, %rax	# _7, tmp112
	addq	%rax, %rax	# tmp112
	addq	%rdx, %rax	# _7, tmp112
	salq	$3, %rax	#, tmp113
	addq	%rcx, %rax	# channels.71_6, _9
# s_sound.c:842: 	else if (origin &&  channels[cnum].origin ==  origin)
	.loc 1 842 36 discriminator 1
	movq	8(%rax), %rax	# _9->origin, _10
# s_sound.c:842: 	else if (origin &&  channels[cnum].origin ==  origin)
	.loc 1 842 18 discriminator 1
	cmpq	%rax, -24(%rbp)	# _10, origin
	jne	.L104	#,
# s_sound.c:844: 	    S_StopChannel(cnum);
	.loc 1 844 6
	movl	-12(%rbp), %eax	# cnum, tmp114
	movl	%eax, %edi	# tmp114,
	call	S_StopChannel	#
# s_sound.c:845: 	    break;
	.loc 1 845 6
	jmp	.L103	#
.L104:
# s_sound.c:838:     for (cnum=0 ; cnum<numChannels ; cnum++)
	.loc 1 838 42 discriminator 2
	addl	$1, -12(%rbp)	#, cnum
.L101:
# s_sound.c:838:     for (cnum=0 ; cnum<numChannels ; cnum++)
	.loc 1 838 23 discriminator 1
	movl	numChannels(%rip), %eax	# numChannels, numChannels.72_11
	cmpl	%eax, -12(%rbp)	# numChannels.72_11, cnum
	jl	.L105	#,
	jmp	.L103	#
.L113:
# s_sound.c:841: 	    break;
	.loc 1 841 6
	nop	
.L103:
# s_sound.c:850:     if (cnum == numChannels)
	.loc 1 850 14
	movl	numChannels(%rip), %eax	# numChannels, numChannels.73_12
# s_sound.c:850:     if (cnum == numChannels)
	.loc 1 850 8
	cmpl	%eax, -12(%rbp)	# numChannels.73_12, cnum
	jne	.L106	#,
# s_sound.c:853: 	for (cnum=0 ; cnum<numChannels ; cnum++)
	.loc 1 853 11
	movl	$0, -12(%rbp)	#, cnum
# s_sound.c:853: 	for (cnum=0 ; cnum<numChannels ; cnum++)
	.loc 1 853 2
	jmp	.L107	#
.L110:
# s_sound.c:854: 	    if (channels[cnum].sfxinfo->priority >= sfxinfo->priority) break;
	.loc 1 854 18
	movq	channels(%rip), %rcx	# channels, channels.74_13
	movl	-12(%rbp), %eax	# cnum, tmp115
	movslq	%eax, %rdx	# tmp115, _14
	movq	%rdx, %rax	# _14, tmp116
	addq	%rax, %rax	# tmp116
	addq	%rdx, %rax	# _14, tmp116
	salq	$3, %rax	#, tmp117
	addq	%rcx, %rax	# channels.74_13, _16
# s_sound.c:854: 	    if (channels[cnum].sfxinfo->priority >= sfxinfo->priority) break;
	.loc 1 854 24
	movq	(%rax), %rax	# _16->sfxinfo, _17
# s_sound.c:854: 	    if (channels[cnum].sfxinfo->priority >= sfxinfo->priority) break;
	.loc 1 854 32
	movl	12(%rax), %edx	# _17->priority, _18
# s_sound.c:854: 	    if (channels[cnum].sfxinfo->priority >= sfxinfo->priority) break;
	.loc 1 854 53
	movq	-32(%rbp), %rax	# sfxinfo, tmp118
	movl	12(%rax), %eax	# sfxinfo_38(D)->priority, _19
# s_sound.c:854: 	    if (channels[cnum].sfxinfo->priority >= sfxinfo->priority) break;
	.loc 1 854 9
	cmpl	%eax, %edx	# _19, _18
	jge	.L114	#,
# s_sound.c:853: 	for (cnum=0 ; cnum<numChannels ; cnum++)
	.loc 1 853 39 discriminator 2
	addl	$1, -12(%rbp)	#, cnum
.L107:
# s_sound.c:853: 	for (cnum=0 ; cnum<numChannels ; cnum++)
	.loc 1 853 20 discriminator 1
	movl	numChannels(%rip), %eax	# numChannels, numChannels.75_20
	cmpl	%eax, -12(%rbp)	# numChannels.75_20, cnum
	jl	.L110	#,
	jmp	.L109	#
.L114:
# s_sound.c:854: 	    if (channels[cnum].sfxinfo->priority >= sfxinfo->priority) break;
	.loc 1 854 65
	nop	
.L109:
# s_sound.c:856: 	if (cnum == numChannels)
	.loc 1 856 11
	movl	numChannels(%rip), %eax	# numChannels, numChannels.76_21
# s_sound.c:856: 	if (cnum == numChannels)
	.loc 1 856 5
	cmpl	%eax, -12(%rbp)	# numChannels.76_21, cnum
	jne	.L111	#,
# s_sound.c:859: 	    return -1;
	.loc 1 859 13
	movl	$-1, %eax	#, _28
	jmp	.L112	#
.L111:
# s_sound.c:864: 	    S_StopChannel(cnum);
	.loc 1 864 6
	movl	-12(%rbp), %eax	# cnum, tmp119
	movl	%eax, %edi	# tmp119,
	call	S_StopChannel	#
.L106:
# s_sound.c:868:     c = &channels[cnum];
	.loc 1 868 9
	movq	channels(%rip), %rcx	# channels, channels.77_22
# s_sound.c:868:     c = &channels[cnum];
	.loc 1 868 18
	movl	-12(%rbp), %eax	# cnum, tmp120
	movslq	%eax, %rdx	# tmp120, _23
	movq	%rdx, %rax	# _23, tmp121
	addq	%rax, %rax	# tmp121
	addq	%rdx, %rax	# _23, tmp121
	salq	$3, %rax	#, tmp122
# s_sound.c:868:     c = &channels[cnum];
	.loc 1 868 7
	addq	%rcx, %rax	# channels.77_22, tmp123
	movq	%rax, -8(%rbp)	# tmp123, c
# s_sound.c:871:     c->sfxinfo = sfxinfo;
	.loc 1 871 16
	movq	-8(%rbp), %rax	# c, tmp124
	movq	-32(%rbp), %rdx	# sfxinfo, tmp125
	movq	%rdx, (%rax)	# tmp125, c_42->sfxinfo
# s_sound.c:872:     c->origin = origin;
	.loc 1 872 15
	movq	-8(%rbp), %rax	# c, tmp126
	movq	-24(%rbp), %rdx	# origin, tmp127
	movq	%rdx, 8(%rax)	# tmp127, c_42->origin
# s_sound.c:874:     return cnum;
	.loc 1 874 12
	movl	-12(%rbp), %eax	# cnum, _28
.L112:
# s_sound.c:875: }
	.loc 1 875 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE21:
	.size	S_getChannel, .-S_getChannel
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "doomtype.h"
	.file 7 "d_ticcmd.h"
	.file 8 "doomdef.h"
	.file 9 "doomdata.h"
	.file 10 "m_fixed.h"
	.file 11 "/usr/include/stdio.h"
	.file 12 "tables.h"
	.file 13 "d_think.h"
	.file 14 "info.h"
	.file 15 "p_pspr.h"
	.file 16 "p_mobj.h"
	.file 17 "r_defs.h"
	.file 18 "d_player.h"
	.file 19 "doomstat.h"
	.file 20 "sounds.h"
	.file 21 "z_zone.h"
	.file 22 "r_main.h"
	.file 23 "i_sound.h"
	.file 24 "w_wad.h"
	.file 25 "i_system.h"
	.file 26 "m_random.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3de7
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x29
	.long	.LASF1766
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xa
	.long	0x51
	.long	0x3e
	.uleb128 0xc
	.long	0x43
	.byte	0x31
	.byte	0
	.uleb128 0x19
	.long	0x2e
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x19
	.long	0x4a
	.uleb128 0x13
	.long	.LASF1707
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
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2a
	.byte	0x8
	.uleb128 0xe
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0xe
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0xe
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2b
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xe
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
	.uleb128 0x7
	.long	0x4a
	.uleb128 0x16
	.long	.LASF114
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x24e
	.uleb128 0x3
	.long	.LASF13
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x9c
	.byte	0
	.uleb128 0x3
	.long	.LASF14
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0xc2
	.byte	0x8
	.uleb128 0x3
	.long	.LASF15
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0xc2
	.byte	0x10
	.uleb128 0x3
	.long	.LASF16
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0xc2
	.byte	0x18
	.uleb128 0x3
	.long	.LASF17
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0xc2
	.byte	0x20
	.uleb128 0x3
	.long	.LASF18
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0xc2
	.byte	0x28
	.uleb128 0x3
	.long	.LASF19
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0xc2
	.byte	0x30
	.uleb128 0x3
	.long	.LASF20
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0xc2
	.byte	0x38
	.uleb128 0x3
	.long	.LASF21
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0xc2
	.byte	0x40
	.uleb128 0x3
	.long	.LASF22
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0xc2
	.byte	0x48
	.uleb128 0x3
	.long	.LASF23
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0xc2
	.byte	0x50
	.uleb128 0x3
	.long	.LASF24
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0xc2
	.byte	0x58
	.uleb128 0x3
	.long	.LASF25
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x267
	.byte	0x60
	.uleb128 0x3
	.long	.LASF26
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x26c
	.byte	0x68
	.uleb128 0x3
	.long	.LASF27
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x9c
	.byte	0x70
	.uleb128 0x3
	.long	.LASF28
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x9c
	.byte	0x74
	.uleb128 0x3
	.long	.LASF29
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0xaa
	.byte	0x78
	.uleb128 0x3
	.long	.LASF30
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x87
	.byte	0x80
	.uleb128 0x3
	.long	.LASF31
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x8e
	.byte	0x82
	.uleb128 0x3
	.long	.LASF32
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x271
	.byte	0x83
	.uleb128 0x3
	.long	.LASF33
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x281
	.byte	0x88
	.uleb128 0x3
	.long	.LASF34
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0xb6
	.byte	0x90
	.uleb128 0x3
	.long	.LASF35
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x28b
	.byte	0x98
	.uleb128 0x3
	.long	.LASF36
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x295
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF37
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x26c
	.byte	0xa8
	.uleb128 0x3
	.long	.LASF38
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x7e
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF39
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x6b
	.byte	0xb8
	.uleb128 0x3
	.long	.LASF40
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x9c
	.byte	0xc0
	.uleb128 0x3
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
	.uleb128 0x2c
	.long	.LASF1767
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0x1a
	.long	.LASF43
	.uleb128 0x7
	.long	0x262
	.uleb128 0x7
	.long	0xc7
	.uleb128 0xa
	.long	0x4a
	.long	0x281
	.uleb128 0xc
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x25a
	.uleb128 0x1a
	.long	.LASF44
	.uleb128 0x7
	.long	0x286
	.uleb128 0x1a
	.long	.LASF45
	.uleb128 0x7
	.long	0x290
	.uleb128 0xa
	.long	0x4a
	.long	0x2aa
	.uleb128 0xc
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.long	0x51
	.uleb128 0x1d
	.long	0x2aa
	.uleb128 0x7
	.long	0x24e
	.uleb128 0x1d
	.long	0x2b4
	.uleb128 0xf
	.long	.LASF104
	.byte	0xb
	.byte	0x97
	.byte	0xe
	.long	0x2b4
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.long	.LASF46
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0xd
	.long	0x77
	.byte	0x6
	.byte	0x22
	.byte	0xe
	.long	0x2f1
	.uleb128 0x1
	.long	.LASF48
	.byte	0
	.uleb128 0x1
	.long	.LASF49
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.long	.LASF50
	.byte	0x6
	.byte	0x22
	.byte	0x1c
	.long	0x2d8
	.uleb128 0x6
	.long	.LASF51
	.byte	0x6
	.byte	0x24
	.byte	0x17
	.long	0x80
	.uleb128 0x14
	.byte	0x8
	.byte	0x7
	.byte	0x24
	.long	0x360
	.uleb128 0x3
	.long	.LASF52
	.byte	0x7
	.byte	0x26
	.byte	0xa
	.long	0x4a
	.byte	0
	.uleb128 0x3
	.long	.LASF53
	.byte	0x7
	.byte	0x27
	.byte	0xa
	.long	0x4a
	.byte	0x1
	.uleb128 0x3
	.long	.LASF54
	.byte	0x7
	.byte	0x28
	.byte	0xb
	.long	0x95
	.byte	0x2
	.uleb128 0x3
	.long	.LASF55
	.byte	0x7
	.byte	0x29
	.byte	0xb
	.long	0x95
	.byte	0x4
	.uleb128 0x3
	.long	.LASF56
	.byte	0x7
	.byte	0x2a
	.byte	0xa
	.long	0x2fd
	.byte	0x6
	.uleb128 0x3
	.long	.LASF57
	.byte	0x7
	.byte	0x2b
	.byte	0xa
	.long	0x2fd
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.long	.LASF58
	.byte	0x7
	.byte	0x2c
	.byte	0x3
	.long	0x309
	.uleb128 0xd
	.long	0x77
	.byte	0x8
	.byte	0x27
	.byte	0x1
	.long	0x397
	.uleb128 0x1
	.long	.LASF59
	.byte	0
	.uleb128 0x1
	.long	.LASF60
	.byte	0x1
	.uleb128 0x1
	.long	.LASF61
	.byte	0x2
	.uleb128 0x1
	.long	.LASF62
	.byte	0x3
	.uleb128 0x1
	.long	.LASF63
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	.LASF64
	.byte	0x8
	.byte	0x2f
	.byte	0x3
	.long	0x36c
	.uleb128 0xd
	.long	0x77
	.byte	0x8
	.byte	0xa3
	.byte	0x1
	.long	0x3da
	.uleb128 0x1
	.long	.LASF65
	.byte	0
	.uleb128 0x1
	.long	.LASF66
	.byte	0x1
	.uleb128 0x1
	.long	.LASF67
	.byte	0x2
	.uleb128 0x1
	.long	.LASF68
	.byte	0x3
	.uleb128 0x1
	.long	.LASF69
	.byte	0x4
	.uleb128 0x1
	.long	.LASF70
	.byte	0x5
	.uleb128 0x1
	.long	.LASF71
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.long	0x77
	.byte	0x8
	.byte	0xb5
	.byte	0x1
	.long	0x429
	.uleb128 0x1
	.long	.LASF72
	.byte	0
	.uleb128 0x1
	.long	.LASF73
	.byte	0x1
	.uleb128 0x1
	.long	.LASF74
	.byte	0x2
	.uleb128 0x1
	.long	.LASF75
	.byte	0x3
	.uleb128 0x1
	.long	.LASF76
	.byte	0x4
	.uleb128 0x1
	.long	.LASF77
	.byte	0x5
	.uleb128 0x1
	.long	.LASF78
	.byte	0x6
	.uleb128 0x1
	.long	.LASF79
	.byte	0x7
	.uleb128 0x1
	.long	.LASF80
	.byte	0x8
	.uleb128 0x1
	.long	.LASF81
	.byte	0x9
	.uleb128 0x1
	.long	.LASF82
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.long	.LASF83
	.byte	0x8
	.byte	0xc5
	.byte	0x3
	.long	0x3da
	.uleb128 0xd
	.long	0x77
	.byte	0x8
	.byte	0xca
	.byte	0x1
	.long	0x466
	.uleb128 0x1
	.long	.LASF84
	.byte	0
	.uleb128 0x1
	.long	.LASF85
	.byte	0x1
	.uleb128 0x1
	.long	.LASF86
	.byte	0x2
	.uleb128 0x1
	.long	.LASF87
	.byte	0x3
	.uleb128 0x1
	.long	.LASF88
	.byte	0x4
	.uleb128 0x1
	.long	.LASF89
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.long	0x77
	.byte	0x8
	.byte	0xd7
	.byte	0x1
	.long	0x49d
	.uleb128 0x1
	.long	.LASF90
	.byte	0
	.uleb128 0x1
	.long	.LASF91
	.byte	0x1
	.uleb128 0x1
	.long	.LASF92
	.byte	0x2
	.uleb128 0x1
	.long	.LASF93
	.byte	0x3
	.uleb128 0x1
	.long	.LASF94
	.byte	0x4
	.uleb128 0x1
	.long	.LASF95
	.byte	0x5
	.uleb128 0x1
	.long	.LASF96
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.long	0x95
	.long	0x4ad
	.uleb128 0xc
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.byte	0xa
	.byte	0x9
	.byte	0xcb
	.long	0x4f3
	.uleb128 0x8
	.string	"x"
	.byte	0x9
	.byte	0xcd
	.byte	0xc
	.long	0x95
	.byte	0
	.uleb128 0x8
	.string	"y"
	.byte	0x9
	.byte	0xce
	.byte	0xc
	.long	0x95
	.byte	0x2
	.uleb128 0x3
	.long	.LASF97
	.byte	0x9
	.byte	0xcf
	.byte	0xc
	.long	0x95
	.byte	0x4
	.uleb128 0x3
	.long	.LASF98
	.byte	0x9
	.byte	0xd0
	.byte	0xc
	.long	0x95
	.byte	0x6
	.uleb128 0x3
	.long	.LASF99
	.byte	0x9
	.byte	0xd1
	.byte	0xc
	.long	0x95
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	.LASF100
	.byte	0x9
	.byte	0xd2
	.byte	0x3
	.long	0x4ad
	.uleb128 0x6
	.long	.LASF101
	.byte	0xa
	.byte	0x26
	.byte	0xd
	.long	0x9c
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.long	.LASF102
	.uleb128 0xe
	.byte	0x8
	.byte	0x4
	.long	.LASF103
	.uleb128 0xa
	.long	0x4ff
	.long	0x52a
	.uleb128 0x2d
	.long	0x43
	.value	0x27ff
	.byte	0
	.uleb128 0xf
	.long	.LASF105
	.byte	0xc
	.byte	0x3a
	.byte	0x12
	.long	0x519
	.uleb128 0x6
	.long	.LASF106
	.byte	0xc
	.byte	0x4e
	.byte	0x12
	.long	0x77
	.uleb128 0x6
	.long	.LASF107
	.byte	0xd
	.byte	0x29
	.byte	0x11
	.long	0x54e
	.uleb128 0x7
	.long	0x553
	.uleb128 0x2e
	.long	0x55a
	.uleb128 0x17
	.byte	0
	.uleb128 0x6
	.long	.LASF108
	.byte	0xd
	.byte	0x2a
	.byte	0x11
	.long	0x566
	.uleb128 0x7
	.long	0x56b
	.uleb128 0x1e
	.long	0x576
	.uleb128 0x4
	.long	0x7e
	.byte	0
	.uleb128 0x6
	.long	.LASF109
	.byte	0xd
	.byte	0x2b
	.byte	0x11
	.long	0x582
	.uleb128 0x7
	.long	0x587
	.uleb128 0x1e
	.long	0x597
	.uleb128 0x4
	.long	0x7e
	.uleb128 0x4
	.long	0x7e
	.byte	0
	.uleb128 0x2f
	.byte	0x8
	.byte	0xd
	.byte	0x2d
	.byte	0x9
	.long	0x5c1
	.uleb128 0x1f
	.long	.LASF110
	.byte	0x2f
	.long	0x55a
	.uleb128 0x30
	.string	"acv"
	.byte	0xd
	.byte	0x30
	.byte	0xd
	.long	0x542
	.uleb128 0x1f
	.long	.LASF111
	.byte	0x31
	.long	0x576
	.byte	0
	.uleb128 0x6
	.long	.LASF112
	.byte	0xd
	.byte	0x33
	.byte	0x3
	.long	0x597
	.uleb128 0x6
	.long	.LASF113
	.byte	0xd
	.byte	0x3c
	.byte	0x14
	.long	0x5c1
	.uleb128 0x16
	.long	.LASF115
	.byte	0x18
	.byte	0xd
	.byte	0x40
	.byte	0x10
	.long	0x60e
	.uleb128 0x3
	.long	.LASF116
	.byte	0xd
	.byte	0x42
	.byte	0x17
	.long	0x60e
	.byte	0
	.uleb128 0x3
	.long	.LASF117
	.byte	0xd
	.byte	0x43
	.byte	0x17
	.long	0x60e
	.byte	0x8
	.uleb128 0x3
	.long	.LASF118
	.byte	0xd
	.byte	0x44
	.byte	0xe
	.long	0x5cd
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	0x5d9
	.uleb128 0x6
	.long	.LASF119
	.byte	0xd
	.byte	0x46
	.byte	0x3
	.long	0x5d9
	.uleb128 0xd
	.long	0x77
	.byte	0xe
	.byte	0x1f
	.byte	0x1
	.long	0x96e
	.uleb128 0x1
	.long	.LASF120
	.byte	0
	.uleb128 0x1
	.long	.LASF121
	.byte	0x1
	.uleb128 0x1
	.long	.LASF122
	.byte	0x2
	.uleb128 0x1
	.long	.LASF123
	.byte	0x3
	.uleb128 0x1
	.long	.LASF124
	.byte	0x4
	.uleb128 0x1
	.long	.LASF125
	.byte	0x5
	.uleb128 0x1
	.long	.LASF126
	.byte	0x6
	.uleb128 0x1
	.long	.LASF127
	.byte	0x7
	.uleb128 0x1
	.long	.LASF128
	.byte	0x8
	.uleb128 0x1
	.long	.LASF129
	.byte	0x9
	.uleb128 0x1
	.long	.LASF130
	.byte	0xa
	.uleb128 0x1
	.long	.LASF131
	.byte	0xb
	.uleb128 0x1
	.long	.LASF132
	.byte	0xc
	.uleb128 0x1
	.long	.LASF133
	.byte	0xd
	.uleb128 0x1
	.long	.LASF134
	.byte	0xe
	.uleb128 0x1
	.long	.LASF135
	.byte	0xf
	.uleb128 0x1
	.long	.LASF136
	.byte	0x10
	.uleb128 0x1
	.long	.LASF137
	.byte	0x11
	.uleb128 0x1
	.long	.LASF138
	.byte	0x12
	.uleb128 0x1
	.long	.LASF139
	.byte	0x13
	.uleb128 0x1
	.long	.LASF140
	.byte	0x14
	.uleb128 0x1
	.long	.LASF141
	.byte	0x15
	.uleb128 0x1
	.long	.LASF142
	.byte	0x16
	.uleb128 0x1
	.long	.LASF143
	.byte	0x17
	.uleb128 0x1
	.long	.LASF144
	.byte	0x18
	.uleb128 0x1
	.long	.LASF145
	.byte	0x19
	.uleb128 0x1
	.long	.LASF146
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF147
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF148
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF149
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF150
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF151
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF152
	.byte	0x20
	.uleb128 0x1
	.long	.LASF153
	.byte	0x21
	.uleb128 0x1
	.long	.LASF154
	.byte	0x22
	.uleb128 0x1
	.long	.LASF155
	.byte	0x23
	.uleb128 0x1
	.long	.LASF156
	.byte	0x24
	.uleb128 0x1
	.long	.LASF157
	.byte	0x25
	.uleb128 0x1
	.long	.LASF158
	.byte	0x26
	.uleb128 0x1
	.long	.LASF159
	.byte	0x27
	.uleb128 0x1
	.long	.LASF160
	.byte	0x28
	.uleb128 0x1
	.long	.LASF161
	.byte	0x29
	.uleb128 0x1
	.long	.LASF162
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF163
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF164
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF165
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF166
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF167
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF168
	.byte	0x30
	.uleb128 0x1
	.long	.LASF169
	.byte	0x31
	.uleb128 0x1
	.long	.LASF170
	.byte	0x32
	.uleb128 0x1
	.long	.LASF171
	.byte	0x33
	.uleb128 0x1
	.long	.LASF172
	.byte	0x34
	.uleb128 0x1
	.long	.LASF173
	.byte	0x35
	.uleb128 0x1
	.long	.LASF174
	.byte	0x36
	.uleb128 0x1
	.long	.LASF175
	.byte	0x37
	.uleb128 0x1
	.long	.LASF176
	.byte	0x38
	.uleb128 0x1
	.long	.LASF177
	.byte	0x39
	.uleb128 0x1
	.long	.LASF178
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF179
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF180
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF181
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF182
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF183
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF184
	.byte	0x40
	.uleb128 0x1
	.long	.LASF185
	.byte	0x41
	.uleb128 0x1
	.long	.LASF186
	.byte	0x42
	.uleb128 0x1
	.long	.LASF187
	.byte	0x43
	.uleb128 0x1
	.long	.LASF188
	.byte	0x44
	.uleb128 0x1
	.long	.LASF189
	.byte	0x45
	.uleb128 0x1
	.long	.LASF190
	.byte	0x46
	.uleb128 0x1
	.long	.LASF191
	.byte	0x47
	.uleb128 0x1
	.long	.LASF192
	.byte	0x48
	.uleb128 0x1
	.long	.LASF193
	.byte	0x49
	.uleb128 0x1
	.long	.LASF194
	.byte	0x4a
	.uleb128 0x1
	.long	.LASF195
	.byte	0x4b
	.uleb128 0x1
	.long	.LASF196
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF197
	.byte	0x4d
	.uleb128 0x1
	.long	.LASF198
	.byte	0x4e
	.uleb128 0x1
	.long	.LASF199
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF200
	.byte	0x50
	.uleb128 0x1
	.long	.LASF201
	.byte	0x51
	.uleb128 0x1
	.long	.LASF202
	.byte	0x52
	.uleb128 0x1
	.long	.LASF203
	.byte	0x53
	.uleb128 0x1
	.long	.LASF204
	.byte	0x54
	.uleb128 0x1
	.long	.LASF205
	.byte	0x55
	.uleb128 0x1
	.long	.LASF206
	.byte	0x56
	.uleb128 0x1
	.long	.LASF207
	.byte	0x57
	.uleb128 0x1
	.long	.LASF208
	.byte	0x58
	.uleb128 0x1
	.long	.LASF209
	.byte	0x59
	.uleb128 0x1
	.long	.LASF210
	.byte	0x5a
	.uleb128 0x1
	.long	.LASF211
	.byte	0x5b
	.uleb128 0x1
	.long	.LASF212
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF213
	.byte	0x5d
	.uleb128 0x1
	.long	.LASF214
	.byte	0x5e
	.uleb128 0x1
	.long	.LASF215
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF216
	.byte	0x60
	.uleb128 0x1
	.long	.LASF217
	.byte	0x61
	.uleb128 0x1
	.long	.LASF218
	.byte	0x62
	.uleb128 0x1
	.long	.LASF219
	.byte	0x63
	.uleb128 0x1
	.long	.LASF220
	.byte	0x64
	.uleb128 0x1
	.long	.LASF221
	.byte	0x65
	.uleb128 0x1
	.long	.LASF222
	.byte	0x66
	.uleb128 0x1
	.long	.LASF223
	.byte	0x67
	.uleb128 0x1
	.long	.LASF224
	.byte	0x68
	.uleb128 0x1
	.long	.LASF225
	.byte	0x69
	.uleb128 0x1
	.long	.LASF226
	.byte	0x6a
	.uleb128 0x1
	.long	.LASF227
	.byte	0x6b
	.uleb128 0x1
	.long	.LASF228
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF229
	.byte	0x6d
	.uleb128 0x1
	.long	.LASF230
	.byte	0x6e
	.uleb128 0x1
	.long	.LASF231
	.byte	0x6f
	.uleb128 0x1
	.long	.LASF232
	.byte	0x70
	.uleb128 0x1
	.long	.LASF233
	.byte	0x71
	.uleb128 0x1
	.long	.LASF234
	.byte	0x72
	.uleb128 0x1
	.long	.LASF235
	.byte	0x73
	.uleb128 0x1
	.long	.LASF236
	.byte	0x74
	.uleb128 0x1
	.long	.LASF237
	.byte	0x75
	.uleb128 0x1
	.long	.LASF238
	.byte	0x76
	.uleb128 0x1
	.long	.LASF239
	.byte	0x77
	.uleb128 0x1
	.long	.LASF240
	.byte	0x78
	.uleb128 0x1
	.long	.LASF241
	.byte	0x79
	.uleb128 0x1
	.long	.LASF242
	.byte	0x7a
	.uleb128 0x1
	.long	.LASF243
	.byte	0x7b
	.uleb128 0x1
	.long	.LASF244
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF245
	.byte	0x7d
	.uleb128 0x1
	.long	.LASF246
	.byte	0x7e
	.uleb128 0x1
	.long	.LASF247
	.byte	0x7f
	.uleb128 0x1
	.long	.LASF248
	.byte	0x80
	.uleb128 0x1
	.long	.LASF249
	.byte	0x81
	.uleb128 0x1
	.long	.LASF250
	.byte	0x82
	.uleb128 0x1
	.long	.LASF251
	.byte	0x83
	.uleb128 0x1
	.long	.LASF252
	.byte	0x84
	.uleb128 0x1
	.long	.LASF253
	.byte	0x85
	.uleb128 0x1
	.long	.LASF254
	.byte	0x86
	.uleb128 0x1
	.long	.LASF255
	.byte	0x87
	.uleb128 0x1
	.long	.LASF256
	.byte	0x88
	.uleb128 0x1
	.long	.LASF257
	.byte	0x89
	.uleb128 0x1
	.long	.LASF258
	.byte	0x8a
	.byte	0
	.uleb128 0x6
	.long	.LASF259
	.byte	0xe
	.byte	0xac
	.byte	0x3
	.long	0x61f
	.uleb128 0xd
	.long	0x77
	.byte	0xe
	.byte	0xaf
	.byte	0x1
	.long	0x22ff
	.uleb128 0x1
	.long	.LASF260
	.byte	0
	.uleb128 0x1
	.long	.LASF261
	.byte	0x1
	.uleb128 0x1
	.long	.LASF262
	.byte	0x2
	.uleb128 0x1
	.long	.LASF263
	.byte	0x3
	.uleb128 0x1
	.long	.LASF264
	.byte	0x4
	.uleb128 0x1
	.long	.LASF265
	.byte	0x5
	.uleb128 0x1
	.long	.LASF266
	.byte	0x6
	.uleb128 0x1
	.long	.LASF267
	.byte	0x7
	.uleb128 0x1
	.long	.LASF268
	.byte	0x8
	.uleb128 0x1
	.long	.LASF269
	.byte	0x9
	.uleb128 0x1
	.long	.LASF270
	.byte	0xa
	.uleb128 0x1
	.long	.LASF271
	.byte	0xb
	.uleb128 0x1
	.long	.LASF272
	.byte	0xc
	.uleb128 0x1
	.long	.LASF273
	.byte	0xd
	.uleb128 0x1
	.long	.LASF274
	.byte	0xe
	.uleb128 0x1
	.long	.LASF275
	.byte	0xf
	.uleb128 0x1
	.long	.LASF276
	.byte	0x10
	.uleb128 0x1
	.long	.LASF277
	.byte	0x11
	.uleb128 0x1
	.long	.LASF278
	.byte	0x12
	.uleb128 0x1
	.long	.LASF279
	.byte	0x13
	.uleb128 0x1
	.long	.LASF280
	.byte	0x14
	.uleb128 0x1
	.long	.LASF281
	.byte	0x15
	.uleb128 0x1
	.long	.LASF282
	.byte	0x16
	.uleb128 0x1
	.long	.LASF283
	.byte	0x17
	.uleb128 0x1
	.long	.LASF284
	.byte	0x18
	.uleb128 0x1
	.long	.LASF285
	.byte	0x19
	.uleb128 0x1
	.long	.LASF286
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF287
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF288
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF289
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF290
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF291
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF292
	.byte	0x20
	.uleb128 0x1
	.long	.LASF293
	.byte	0x21
	.uleb128 0x1
	.long	.LASF294
	.byte	0x22
	.uleb128 0x1
	.long	.LASF295
	.byte	0x23
	.uleb128 0x1
	.long	.LASF296
	.byte	0x24
	.uleb128 0x1
	.long	.LASF297
	.byte	0x25
	.uleb128 0x1
	.long	.LASF298
	.byte	0x26
	.uleb128 0x1
	.long	.LASF299
	.byte	0x27
	.uleb128 0x1
	.long	.LASF300
	.byte	0x28
	.uleb128 0x1
	.long	.LASF301
	.byte	0x29
	.uleb128 0x1
	.long	.LASF302
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF303
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF304
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF305
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF306
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF307
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF308
	.byte	0x30
	.uleb128 0x1
	.long	.LASF309
	.byte	0x31
	.uleb128 0x1
	.long	.LASF310
	.byte	0x32
	.uleb128 0x1
	.long	.LASF311
	.byte	0x33
	.uleb128 0x1
	.long	.LASF312
	.byte	0x34
	.uleb128 0x1
	.long	.LASF313
	.byte	0x35
	.uleb128 0x1
	.long	.LASF314
	.byte	0x36
	.uleb128 0x1
	.long	.LASF315
	.byte	0x37
	.uleb128 0x1
	.long	.LASF316
	.byte	0x38
	.uleb128 0x1
	.long	.LASF317
	.byte	0x39
	.uleb128 0x1
	.long	.LASF318
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF319
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF320
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF321
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF322
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF323
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF324
	.byte	0x40
	.uleb128 0x1
	.long	.LASF325
	.byte	0x41
	.uleb128 0x1
	.long	.LASF326
	.byte	0x42
	.uleb128 0x1
	.long	.LASF327
	.byte	0x43
	.uleb128 0x1
	.long	.LASF328
	.byte	0x44
	.uleb128 0x1
	.long	.LASF329
	.byte	0x45
	.uleb128 0x1
	.long	.LASF330
	.byte	0x46
	.uleb128 0x1
	.long	.LASF331
	.byte	0x47
	.uleb128 0x1
	.long	.LASF332
	.byte	0x48
	.uleb128 0x1
	.long	.LASF333
	.byte	0x49
	.uleb128 0x1
	.long	.LASF334
	.byte	0x4a
	.uleb128 0x1
	.long	.LASF335
	.byte	0x4b
	.uleb128 0x1
	.long	.LASF336
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF337
	.byte	0x4d
	.uleb128 0x1
	.long	.LASF338
	.byte	0x4e
	.uleb128 0x1
	.long	.LASF339
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF340
	.byte	0x50
	.uleb128 0x1
	.long	.LASF341
	.byte	0x51
	.uleb128 0x1
	.long	.LASF342
	.byte	0x52
	.uleb128 0x1
	.long	.LASF343
	.byte	0x53
	.uleb128 0x1
	.long	.LASF344
	.byte	0x54
	.uleb128 0x1
	.long	.LASF345
	.byte	0x55
	.uleb128 0x1
	.long	.LASF346
	.byte	0x56
	.uleb128 0x1
	.long	.LASF347
	.byte	0x57
	.uleb128 0x1
	.long	.LASF348
	.byte	0x58
	.uleb128 0x1
	.long	.LASF349
	.byte	0x59
	.uleb128 0x1
	.long	.LASF350
	.byte	0x5a
	.uleb128 0x1
	.long	.LASF351
	.byte	0x5b
	.uleb128 0x1
	.long	.LASF352
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF353
	.byte	0x5d
	.uleb128 0x1
	.long	.LASF354
	.byte	0x5e
	.uleb128 0x1
	.long	.LASF355
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF356
	.byte	0x60
	.uleb128 0x1
	.long	.LASF357
	.byte	0x61
	.uleb128 0x1
	.long	.LASF358
	.byte	0x62
	.uleb128 0x1
	.long	.LASF359
	.byte	0x63
	.uleb128 0x1
	.long	.LASF360
	.byte	0x64
	.uleb128 0x1
	.long	.LASF361
	.byte	0x65
	.uleb128 0x1
	.long	.LASF362
	.byte	0x66
	.uleb128 0x1
	.long	.LASF363
	.byte	0x67
	.uleb128 0x1
	.long	.LASF364
	.byte	0x68
	.uleb128 0x1
	.long	.LASF365
	.byte	0x69
	.uleb128 0x1
	.long	.LASF366
	.byte	0x6a
	.uleb128 0x1
	.long	.LASF367
	.byte	0x6b
	.uleb128 0x1
	.long	.LASF368
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF369
	.byte	0x6d
	.uleb128 0x1
	.long	.LASF370
	.byte	0x6e
	.uleb128 0x1
	.long	.LASF371
	.byte	0x6f
	.uleb128 0x1
	.long	.LASF372
	.byte	0x70
	.uleb128 0x1
	.long	.LASF373
	.byte	0x71
	.uleb128 0x1
	.long	.LASF374
	.byte	0x72
	.uleb128 0x1
	.long	.LASF375
	.byte	0x73
	.uleb128 0x1
	.long	.LASF376
	.byte	0x74
	.uleb128 0x1
	.long	.LASF377
	.byte	0x75
	.uleb128 0x1
	.long	.LASF378
	.byte	0x76
	.uleb128 0x1
	.long	.LASF379
	.byte	0x77
	.uleb128 0x1
	.long	.LASF380
	.byte	0x78
	.uleb128 0x1
	.long	.LASF381
	.byte	0x79
	.uleb128 0x1
	.long	.LASF382
	.byte	0x7a
	.uleb128 0x1
	.long	.LASF383
	.byte	0x7b
	.uleb128 0x1
	.long	.LASF384
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF385
	.byte	0x7d
	.uleb128 0x1
	.long	.LASF386
	.byte	0x7e
	.uleb128 0x1
	.long	.LASF387
	.byte	0x7f
	.uleb128 0x1
	.long	.LASF388
	.byte	0x80
	.uleb128 0x1
	.long	.LASF389
	.byte	0x81
	.uleb128 0x1
	.long	.LASF390
	.byte	0x82
	.uleb128 0x1
	.long	.LASF391
	.byte	0x83
	.uleb128 0x1
	.long	.LASF392
	.byte	0x84
	.uleb128 0x1
	.long	.LASF393
	.byte	0x85
	.uleb128 0x1
	.long	.LASF394
	.byte	0x86
	.uleb128 0x1
	.long	.LASF395
	.byte	0x87
	.uleb128 0x1
	.long	.LASF396
	.byte	0x88
	.uleb128 0x1
	.long	.LASF397
	.byte	0x89
	.uleb128 0x1
	.long	.LASF398
	.byte	0x8a
	.uleb128 0x1
	.long	.LASF399
	.byte	0x8b
	.uleb128 0x1
	.long	.LASF400
	.byte	0x8c
	.uleb128 0x1
	.long	.LASF401
	.byte	0x8d
	.uleb128 0x1
	.long	.LASF402
	.byte	0x8e
	.uleb128 0x1
	.long	.LASF403
	.byte	0x8f
	.uleb128 0x1
	.long	.LASF404
	.byte	0x90
	.uleb128 0x1
	.long	.LASF405
	.byte	0x91
	.uleb128 0x1
	.long	.LASF406
	.byte	0x92
	.uleb128 0x1
	.long	.LASF407
	.byte	0x93
	.uleb128 0x1
	.long	.LASF408
	.byte	0x94
	.uleb128 0x1
	.long	.LASF409
	.byte	0x95
	.uleb128 0x1
	.long	.LASF410
	.byte	0x96
	.uleb128 0x1
	.long	.LASF411
	.byte	0x97
	.uleb128 0x1
	.long	.LASF412
	.byte	0x98
	.uleb128 0x1
	.long	.LASF413
	.byte	0x99
	.uleb128 0x1
	.long	.LASF414
	.byte	0x9a
	.uleb128 0x1
	.long	.LASF415
	.byte	0x9b
	.uleb128 0x1
	.long	.LASF416
	.byte	0x9c
	.uleb128 0x1
	.long	.LASF417
	.byte	0x9d
	.uleb128 0x1
	.long	.LASF418
	.byte	0x9e
	.uleb128 0x1
	.long	.LASF419
	.byte	0x9f
	.uleb128 0x1
	.long	.LASF420
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF421
	.byte	0xa1
	.uleb128 0x1
	.long	.LASF422
	.byte	0xa2
	.uleb128 0x1
	.long	.LASF423
	.byte	0xa3
	.uleb128 0x1
	.long	.LASF424
	.byte	0xa4
	.uleb128 0x1
	.long	.LASF425
	.byte	0xa5
	.uleb128 0x1
	.long	.LASF426
	.byte	0xa6
	.uleb128 0x1
	.long	.LASF427
	.byte	0xa7
	.uleb128 0x1
	.long	.LASF428
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF429
	.byte	0xa9
	.uleb128 0x1
	.long	.LASF430
	.byte	0xaa
	.uleb128 0x1
	.long	.LASF431
	.byte	0xab
	.uleb128 0x1
	.long	.LASF432
	.byte	0xac
	.uleb128 0x1
	.long	.LASF433
	.byte	0xad
	.uleb128 0x1
	.long	.LASF434
	.byte	0xae
	.uleb128 0x1
	.long	.LASF435
	.byte	0xaf
	.uleb128 0x1
	.long	.LASF436
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF437
	.byte	0xb1
	.uleb128 0x1
	.long	.LASF438
	.byte	0xb2
	.uleb128 0x1
	.long	.LASF439
	.byte	0xb3
	.uleb128 0x1
	.long	.LASF440
	.byte	0xb4
	.uleb128 0x1
	.long	.LASF441
	.byte	0xb5
	.uleb128 0x1
	.long	.LASF442
	.byte	0xb6
	.uleb128 0x1
	.long	.LASF443
	.byte	0xb7
	.uleb128 0x1
	.long	.LASF444
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF445
	.byte	0xb9
	.uleb128 0x1
	.long	.LASF446
	.byte	0xba
	.uleb128 0x1
	.long	.LASF447
	.byte	0xbb
	.uleb128 0x1
	.long	.LASF448
	.byte	0xbc
	.uleb128 0x1
	.long	.LASF449
	.byte	0xbd
	.uleb128 0x1
	.long	.LASF450
	.byte	0xbe
	.uleb128 0x1
	.long	.LASF451
	.byte	0xbf
	.uleb128 0x1
	.long	.LASF452
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF453
	.byte	0xc1
	.uleb128 0x1
	.long	.LASF454
	.byte	0xc2
	.uleb128 0x1
	.long	.LASF455
	.byte	0xc3
	.uleb128 0x1
	.long	.LASF456
	.byte	0xc4
	.uleb128 0x1
	.long	.LASF457
	.byte	0xc5
	.uleb128 0x1
	.long	.LASF458
	.byte	0xc6
	.uleb128 0x1
	.long	.LASF459
	.byte	0xc7
	.uleb128 0x1
	.long	.LASF460
	.byte	0xc8
	.uleb128 0x1
	.long	.LASF461
	.byte	0xc9
	.uleb128 0x1
	.long	.LASF462
	.byte	0xca
	.uleb128 0x1
	.long	.LASF463
	.byte	0xcb
	.uleb128 0x1
	.long	.LASF464
	.byte	0xcc
	.uleb128 0x1
	.long	.LASF465
	.byte	0xcd
	.uleb128 0x1
	.long	.LASF466
	.byte	0xce
	.uleb128 0x1
	.long	.LASF467
	.byte	0xcf
	.uleb128 0x1
	.long	.LASF468
	.byte	0xd0
	.uleb128 0x1
	.long	.LASF469
	.byte	0xd1
	.uleb128 0x1
	.long	.LASF470
	.byte	0xd2
	.uleb128 0x1
	.long	.LASF471
	.byte	0xd3
	.uleb128 0x1
	.long	.LASF472
	.byte	0xd4
	.uleb128 0x1
	.long	.LASF473
	.byte	0xd5
	.uleb128 0x1
	.long	.LASF474
	.byte	0xd6
	.uleb128 0x1
	.long	.LASF475
	.byte	0xd7
	.uleb128 0x1
	.long	.LASF476
	.byte	0xd8
	.uleb128 0x1
	.long	.LASF477
	.byte	0xd9
	.uleb128 0x1
	.long	.LASF478
	.byte	0xda
	.uleb128 0x1
	.long	.LASF479
	.byte	0xdb
	.uleb128 0x1
	.long	.LASF480
	.byte	0xdc
	.uleb128 0x1
	.long	.LASF481
	.byte	0xdd
	.uleb128 0x1
	.long	.LASF482
	.byte	0xde
	.uleb128 0x1
	.long	.LASF483
	.byte	0xdf
	.uleb128 0x1
	.long	.LASF484
	.byte	0xe0
	.uleb128 0x1
	.long	.LASF485
	.byte	0xe1
	.uleb128 0x1
	.long	.LASF486
	.byte	0xe2
	.uleb128 0x1
	.long	.LASF487
	.byte	0xe3
	.uleb128 0x1
	.long	.LASF488
	.byte	0xe4
	.uleb128 0x1
	.long	.LASF489
	.byte	0xe5
	.uleb128 0x1
	.long	.LASF490
	.byte	0xe6
	.uleb128 0x1
	.long	.LASF491
	.byte	0xe7
	.uleb128 0x1
	.long	.LASF492
	.byte	0xe8
	.uleb128 0x1
	.long	.LASF493
	.byte	0xe9
	.uleb128 0x1
	.long	.LASF494
	.byte	0xea
	.uleb128 0x1
	.long	.LASF495
	.byte	0xeb
	.uleb128 0x1
	.long	.LASF496
	.byte	0xec
	.uleb128 0x1
	.long	.LASF497
	.byte	0xed
	.uleb128 0x1
	.long	.LASF498
	.byte	0xee
	.uleb128 0x1
	.long	.LASF499
	.byte	0xef
	.uleb128 0x1
	.long	.LASF500
	.byte	0xf0
	.uleb128 0x1
	.long	.LASF501
	.byte	0xf1
	.uleb128 0x1
	.long	.LASF502
	.byte	0xf2
	.uleb128 0x1
	.long	.LASF503
	.byte	0xf3
	.uleb128 0x1
	.long	.LASF504
	.byte	0xf4
	.uleb128 0x1
	.long	.LASF505
	.byte	0xf5
	.uleb128 0x1
	.long	.LASF506
	.byte	0xf6
	.uleb128 0x1
	.long	.LASF507
	.byte	0xf7
	.uleb128 0x1
	.long	.LASF508
	.byte	0xf8
	.uleb128 0x1
	.long	.LASF509
	.byte	0xf9
	.uleb128 0x1
	.long	.LASF510
	.byte	0xfa
	.uleb128 0x1
	.long	.LASF511
	.byte	0xfb
	.uleb128 0x1
	.long	.LASF512
	.byte	0xfc
	.uleb128 0x1
	.long	.LASF513
	.byte	0xfd
	.uleb128 0x1
	.long	.LASF514
	.byte	0xfe
	.uleb128 0x1
	.long	.LASF515
	.byte	0xff
	.uleb128 0x2
	.long	.LASF516
	.value	0x100
	.uleb128 0x2
	.long	.LASF517
	.value	0x101
	.uleb128 0x2
	.long	.LASF518
	.value	0x102
	.uleb128 0x2
	.long	.LASF519
	.value	0x103
	.uleb128 0x2
	.long	.LASF520
	.value	0x104
	.uleb128 0x2
	.long	.LASF521
	.value	0x105
	.uleb128 0x2
	.long	.LASF522
	.value	0x106
	.uleb128 0x2
	.long	.LASF523
	.value	0x107
	.uleb128 0x2
	.long	.LASF524
	.value	0x108
	.uleb128 0x2
	.long	.LASF525
	.value	0x109
	.uleb128 0x2
	.long	.LASF526
	.value	0x10a
	.uleb128 0x2
	.long	.LASF527
	.value	0x10b
	.uleb128 0x2
	.long	.LASF528
	.value	0x10c
	.uleb128 0x2
	.long	.LASF529
	.value	0x10d
	.uleb128 0x2
	.long	.LASF530
	.value	0x10e
	.uleb128 0x2
	.long	.LASF531
	.value	0x10f
	.uleb128 0x2
	.long	.LASF532
	.value	0x110
	.uleb128 0x2
	.long	.LASF533
	.value	0x111
	.uleb128 0x2
	.long	.LASF534
	.value	0x112
	.uleb128 0x2
	.long	.LASF535
	.value	0x113
	.uleb128 0x2
	.long	.LASF536
	.value	0x114
	.uleb128 0x2
	.long	.LASF537
	.value	0x115
	.uleb128 0x2
	.long	.LASF538
	.value	0x116
	.uleb128 0x2
	.long	.LASF539
	.value	0x117
	.uleb128 0x2
	.long	.LASF540
	.value	0x118
	.uleb128 0x2
	.long	.LASF541
	.value	0x119
	.uleb128 0x2
	.long	.LASF542
	.value	0x11a
	.uleb128 0x2
	.long	.LASF543
	.value	0x11b
	.uleb128 0x2
	.long	.LASF544
	.value	0x11c
	.uleb128 0x2
	.long	.LASF545
	.value	0x11d
	.uleb128 0x2
	.long	.LASF546
	.value	0x11e
	.uleb128 0x2
	.long	.LASF547
	.value	0x11f
	.uleb128 0x2
	.long	.LASF548
	.value	0x120
	.uleb128 0x2
	.long	.LASF549
	.value	0x121
	.uleb128 0x2
	.long	.LASF550
	.value	0x122
	.uleb128 0x2
	.long	.LASF551
	.value	0x123
	.uleb128 0x2
	.long	.LASF552
	.value	0x124
	.uleb128 0x2
	.long	.LASF553
	.value	0x125
	.uleb128 0x2
	.long	.LASF554
	.value	0x126
	.uleb128 0x2
	.long	.LASF555
	.value	0x127
	.uleb128 0x2
	.long	.LASF556
	.value	0x128
	.uleb128 0x2
	.long	.LASF557
	.value	0x129
	.uleb128 0x2
	.long	.LASF558
	.value	0x12a
	.uleb128 0x2
	.long	.LASF559
	.value	0x12b
	.uleb128 0x2
	.long	.LASF560
	.value	0x12c
	.uleb128 0x2
	.long	.LASF561
	.value	0x12d
	.uleb128 0x2
	.long	.LASF562
	.value	0x12e
	.uleb128 0x2
	.long	.LASF563
	.value	0x12f
	.uleb128 0x2
	.long	.LASF564
	.value	0x130
	.uleb128 0x2
	.long	.LASF565
	.value	0x131
	.uleb128 0x2
	.long	.LASF566
	.value	0x132
	.uleb128 0x2
	.long	.LASF567
	.value	0x133
	.uleb128 0x2
	.long	.LASF568
	.value	0x134
	.uleb128 0x2
	.long	.LASF569
	.value	0x135
	.uleb128 0x2
	.long	.LASF570
	.value	0x136
	.uleb128 0x2
	.long	.LASF571
	.value	0x137
	.uleb128 0x2
	.long	.LASF572
	.value	0x138
	.uleb128 0x2
	.long	.LASF573
	.value	0x139
	.uleb128 0x2
	.long	.LASF574
	.value	0x13a
	.uleb128 0x2
	.long	.LASF575
	.value	0x13b
	.uleb128 0x2
	.long	.LASF576
	.value	0x13c
	.uleb128 0x2
	.long	.LASF577
	.value	0x13d
	.uleb128 0x2
	.long	.LASF578
	.value	0x13e
	.uleb128 0x2
	.long	.LASF579
	.value	0x13f
	.uleb128 0x2
	.long	.LASF580
	.value	0x140
	.uleb128 0x2
	.long	.LASF581
	.value	0x141
	.uleb128 0x2
	.long	.LASF582
	.value	0x142
	.uleb128 0x2
	.long	.LASF583
	.value	0x143
	.uleb128 0x2
	.long	.LASF584
	.value	0x144
	.uleb128 0x2
	.long	.LASF585
	.value	0x145
	.uleb128 0x2
	.long	.LASF586
	.value	0x146
	.uleb128 0x2
	.long	.LASF587
	.value	0x147
	.uleb128 0x2
	.long	.LASF588
	.value	0x148
	.uleb128 0x2
	.long	.LASF589
	.value	0x149
	.uleb128 0x2
	.long	.LASF590
	.value	0x14a
	.uleb128 0x2
	.long	.LASF591
	.value	0x14b
	.uleb128 0x2
	.long	.LASF592
	.value	0x14c
	.uleb128 0x2
	.long	.LASF593
	.value	0x14d
	.uleb128 0x2
	.long	.LASF594
	.value	0x14e
	.uleb128 0x2
	.long	.LASF595
	.value	0x14f
	.uleb128 0x2
	.long	.LASF596
	.value	0x150
	.uleb128 0x2
	.long	.LASF597
	.value	0x151
	.uleb128 0x2
	.long	.LASF598
	.value	0x152
	.uleb128 0x2
	.long	.LASF599
	.value	0x153
	.uleb128 0x2
	.long	.LASF600
	.value	0x154
	.uleb128 0x2
	.long	.LASF601
	.value	0x155
	.uleb128 0x2
	.long	.LASF602
	.value	0x156
	.uleb128 0x2
	.long	.LASF603
	.value	0x157
	.uleb128 0x2
	.long	.LASF604
	.value	0x158
	.uleb128 0x2
	.long	.LASF605
	.value	0x159
	.uleb128 0x2
	.long	.LASF606
	.value	0x15a
	.uleb128 0x2
	.long	.LASF607
	.value	0x15b
	.uleb128 0x2
	.long	.LASF608
	.value	0x15c
	.uleb128 0x2
	.long	.LASF609
	.value	0x15d
	.uleb128 0x2
	.long	.LASF610
	.value	0x15e
	.uleb128 0x2
	.long	.LASF611
	.value	0x15f
	.uleb128 0x2
	.long	.LASF612
	.value	0x160
	.uleb128 0x2
	.long	.LASF613
	.value	0x161
	.uleb128 0x2
	.long	.LASF614
	.value	0x162
	.uleb128 0x2
	.long	.LASF615
	.value	0x163
	.uleb128 0x2
	.long	.LASF616
	.value	0x164
	.uleb128 0x2
	.long	.LASF617
	.value	0x165
	.uleb128 0x2
	.long	.LASF618
	.value	0x166
	.uleb128 0x2
	.long	.LASF619
	.value	0x167
	.uleb128 0x2
	.long	.LASF620
	.value	0x168
	.uleb128 0x2
	.long	.LASF621
	.value	0x169
	.uleb128 0x2
	.long	.LASF622
	.value	0x16a
	.uleb128 0x2
	.long	.LASF623
	.value	0x16b
	.uleb128 0x2
	.long	.LASF624
	.value	0x16c
	.uleb128 0x2
	.long	.LASF625
	.value	0x16d
	.uleb128 0x2
	.long	.LASF626
	.value	0x16e
	.uleb128 0x2
	.long	.LASF627
	.value	0x16f
	.uleb128 0x2
	.long	.LASF628
	.value	0x170
	.uleb128 0x2
	.long	.LASF629
	.value	0x171
	.uleb128 0x2
	.long	.LASF630
	.value	0x172
	.uleb128 0x2
	.long	.LASF631
	.value	0x173
	.uleb128 0x2
	.long	.LASF632
	.value	0x174
	.uleb128 0x2
	.long	.LASF633
	.value	0x175
	.uleb128 0x2
	.long	.LASF634
	.value	0x176
	.uleb128 0x2
	.long	.LASF635
	.value	0x177
	.uleb128 0x2
	.long	.LASF636
	.value	0x178
	.uleb128 0x2
	.long	.LASF637
	.value	0x179
	.uleb128 0x2
	.long	.LASF638
	.value	0x17a
	.uleb128 0x2
	.long	.LASF639
	.value	0x17b
	.uleb128 0x2
	.long	.LASF640
	.value	0x17c
	.uleb128 0x2
	.long	.LASF641
	.value	0x17d
	.uleb128 0x2
	.long	.LASF642
	.value	0x17e
	.uleb128 0x2
	.long	.LASF643
	.value	0x17f
	.uleb128 0x2
	.long	.LASF644
	.value	0x180
	.uleb128 0x2
	.long	.LASF645
	.value	0x181
	.uleb128 0x2
	.long	.LASF646
	.value	0x182
	.uleb128 0x2
	.long	.LASF647
	.value	0x183
	.uleb128 0x2
	.long	.LASF648
	.value	0x184
	.uleb128 0x2
	.long	.LASF649
	.value	0x185
	.uleb128 0x2
	.long	.LASF650
	.value	0x186
	.uleb128 0x2
	.long	.LASF651
	.value	0x187
	.uleb128 0x2
	.long	.LASF652
	.value	0x188
	.uleb128 0x2
	.long	.LASF653
	.value	0x189
	.uleb128 0x2
	.long	.LASF654
	.value	0x18a
	.uleb128 0x2
	.long	.LASF655
	.value	0x18b
	.uleb128 0x2
	.long	.LASF656
	.value	0x18c
	.uleb128 0x2
	.long	.LASF657
	.value	0x18d
	.uleb128 0x2
	.long	.LASF658
	.value	0x18e
	.uleb128 0x2
	.long	.LASF659
	.value	0x18f
	.uleb128 0x2
	.long	.LASF660
	.value	0x190
	.uleb128 0x2
	.long	.LASF661
	.value	0x191
	.uleb128 0x2
	.long	.LASF662
	.value	0x192
	.uleb128 0x2
	.long	.LASF663
	.value	0x193
	.uleb128 0x2
	.long	.LASF664
	.value	0x194
	.uleb128 0x2
	.long	.LASF665
	.value	0x195
	.uleb128 0x2
	.long	.LASF666
	.value	0x196
	.uleb128 0x2
	.long	.LASF667
	.value	0x197
	.uleb128 0x2
	.long	.LASF668
	.value	0x198
	.uleb128 0x2
	.long	.LASF669
	.value	0x199
	.uleb128 0x2
	.long	.LASF670
	.value	0x19a
	.uleb128 0x2
	.long	.LASF671
	.value	0x19b
	.uleb128 0x2
	.long	.LASF672
	.value	0x19c
	.uleb128 0x2
	.long	.LASF673
	.value	0x19d
	.uleb128 0x2
	.long	.LASF674
	.value	0x19e
	.uleb128 0x2
	.long	.LASF675
	.value	0x19f
	.uleb128 0x2
	.long	.LASF676
	.value	0x1a0
	.uleb128 0x2
	.long	.LASF677
	.value	0x1a1
	.uleb128 0x2
	.long	.LASF678
	.value	0x1a2
	.uleb128 0x2
	.long	.LASF679
	.value	0x1a3
	.uleb128 0x2
	.long	.LASF680
	.value	0x1a4
	.uleb128 0x2
	.long	.LASF681
	.value	0x1a5
	.uleb128 0x2
	.long	.LASF682
	.value	0x1a6
	.uleb128 0x2
	.long	.LASF683
	.value	0x1a7
	.uleb128 0x2
	.long	.LASF684
	.value	0x1a8
	.uleb128 0x2
	.long	.LASF685
	.value	0x1a9
	.uleb128 0x2
	.long	.LASF686
	.value	0x1aa
	.uleb128 0x2
	.long	.LASF687
	.value	0x1ab
	.uleb128 0x2
	.long	.LASF688
	.value	0x1ac
	.uleb128 0x2
	.long	.LASF689
	.value	0x1ad
	.uleb128 0x2
	.long	.LASF690
	.value	0x1ae
	.uleb128 0x2
	.long	.LASF691
	.value	0x1af
	.uleb128 0x2
	.long	.LASF692
	.value	0x1b0
	.uleb128 0x2
	.long	.LASF693
	.value	0x1b1
	.uleb128 0x2
	.long	.LASF694
	.value	0x1b2
	.uleb128 0x2
	.long	.LASF695
	.value	0x1b3
	.uleb128 0x2
	.long	.LASF696
	.value	0x1b4
	.uleb128 0x2
	.long	.LASF697
	.value	0x1b5
	.uleb128 0x2
	.long	.LASF698
	.value	0x1b6
	.uleb128 0x2
	.long	.LASF699
	.value	0x1b7
	.uleb128 0x2
	.long	.LASF700
	.value	0x1b8
	.uleb128 0x2
	.long	.LASF701
	.value	0x1b9
	.uleb128 0x2
	.long	.LASF702
	.value	0x1ba
	.uleb128 0x2
	.long	.LASF703
	.value	0x1bb
	.uleb128 0x2
	.long	.LASF704
	.value	0x1bc
	.uleb128 0x2
	.long	.LASF705
	.value	0x1bd
	.uleb128 0x2
	.long	.LASF706
	.value	0x1be
	.uleb128 0x2
	.long	.LASF707
	.value	0x1bf
	.uleb128 0x2
	.long	.LASF708
	.value	0x1c0
	.uleb128 0x2
	.long	.LASF709
	.value	0x1c1
	.uleb128 0x2
	.long	.LASF710
	.value	0x1c2
	.uleb128 0x2
	.long	.LASF711
	.value	0x1c3
	.uleb128 0x2
	.long	.LASF712
	.value	0x1c4
	.uleb128 0x2
	.long	.LASF713
	.value	0x1c5
	.uleb128 0x2
	.long	.LASF714
	.value	0x1c6
	.uleb128 0x2
	.long	.LASF715
	.value	0x1c7
	.uleb128 0x2
	.long	.LASF716
	.value	0x1c8
	.uleb128 0x2
	.long	.LASF717
	.value	0x1c9
	.uleb128 0x2
	.long	.LASF718
	.value	0x1ca
	.uleb128 0x2
	.long	.LASF719
	.value	0x1cb
	.uleb128 0x2
	.long	.LASF720
	.value	0x1cc
	.uleb128 0x2
	.long	.LASF721
	.value	0x1cd
	.uleb128 0x2
	.long	.LASF722
	.value	0x1ce
	.uleb128 0x2
	.long	.LASF723
	.value	0x1cf
	.uleb128 0x2
	.long	.LASF724
	.value	0x1d0
	.uleb128 0x2
	.long	.LASF725
	.value	0x1d1
	.uleb128 0x2
	.long	.LASF726
	.value	0x1d2
	.uleb128 0x2
	.long	.LASF727
	.value	0x1d3
	.uleb128 0x2
	.long	.LASF728
	.value	0x1d4
	.uleb128 0x2
	.long	.LASF729
	.value	0x1d5
	.uleb128 0x2
	.long	.LASF730
	.value	0x1d6
	.uleb128 0x2
	.long	.LASF731
	.value	0x1d7
	.uleb128 0x2
	.long	.LASF732
	.value	0x1d8
	.uleb128 0x2
	.long	.LASF733
	.value	0x1d9
	.uleb128 0x2
	.long	.LASF734
	.value	0x1da
	.uleb128 0x2
	.long	.LASF735
	.value	0x1db
	.uleb128 0x2
	.long	.LASF736
	.value	0x1dc
	.uleb128 0x2
	.long	.LASF737
	.value	0x1dd
	.uleb128 0x2
	.long	.LASF738
	.value	0x1de
	.uleb128 0x2
	.long	.LASF739
	.value	0x1df
	.uleb128 0x2
	.long	.LASF740
	.value	0x1e0
	.uleb128 0x2
	.long	.LASF741
	.value	0x1e1
	.uleb128 0x2
	.long	.LASF742
	.value	0x1e2
	.uleb128 0x2
	.long	.LASF743
	.value	0x1e3
	.uleb128 0x2
	.long	.LASF744
	.value	0x1e4
	.uleb128 0x2
	.long	.LASF745
	.value	0x1e5
	.uleb128 0x2
	.long	.LASF746
	.value	0x1e6
	.uleb128 0x2
	.long	.LASF747
	.value	0x1e7
	.uleb128 0x2
	.long	.LASF748
	.value	0x1e8
	.uleb128 0x2
	.long	.LASF749
	.value	0x1e9
	.uleb128 0x2
	.long	.LASF750
	.value	0x1ea
	.uleb128 0x2
	.long	.LASF751
	.value	0x1eb
	.uleb128 0x2
	.long	.LASF752
	.value	0x1ec
	.uleb128 0x2
	.long	.LASF753
	.value	0x1ed
	.uleb128 0x2
	.long	.LASF754
	.value	0x1ee
	.uleb128 0x2
	.long	.LASF755
	.value	0x1ef
	.uleb128 0x2
	.long	.LASF756
	.value	0x1f0
	.uleb128 0x2
	.long	.LASF757
	.value	0x1f1
	.uleb128 0x2
	.long	.LASF758
	.value	0x1f2
	.uleb128 0x2
	.long	.LASF759
	.value	0x1f3
	.uleb128 0x2
	.long	.LASF760
	.value	0x1f4
	.uleb128 0x2
	.long	.LASF761
	.value	0x1f5
	.uleb128 0x2
	.long	.LASF762
	.value	0x1f6
	.uleb128 0x2
	.long	.LASF763
	.value	0x1f7
	.uleb128 0x2
	.long	.LASF764
	.value	0x1f8
	.uleb128 0x2
	.long	.LASF765
	.value	0x1f9
	.uleb128 0x2
	.long	.LASF766
	.value	0x1fa
	.uleb128 0x2
	.long	.LASF767
	.value	0x1fb
	.uleb128 0x2
	.long	.LASF768
	.value	0x1fc
	.uleb128 0x2
	.long	.LASF769
	.value	0x1fd
	.uleb128 0x2
	.long	.LASF770
	.value	0x1fe
	.uleb128 0x2
	.long	.LASF771
	.value	0x1ff
	.uleb128 0x2
	.long	.LASF772
	.value	0x200
	.uleb128 0x2
	.long	.LASF773
	.value	0x201
	.uleb128 0x2
	.long	.LASF774
	.value	0x202
	.uleb128 0x2
	.long	.LASF775
	.value	0x203
	.uleb128 0x2
	.long	.LASF776
	.value	0x204
	.uleb128 0x2
	.long	.LASF777
	.value	0x205
	.uleb128 0x2
	.long	.LASF778
	.value	0x206
	.uleb128 0x2
	.long	.LASF779
	.value	0x207
	.uleb128 0x2
	.long	.LASF780
	.value	0x208
	.uleb128 0x2
	.long	.LASF781
	.value	0x209
	.uleb128 0x2
	.long	.LASF782
	.value	0x20a
	.uleb128 0x2
	.long	.LASF783
	.value	0x20b
	.uleb128 0x2
	.long	.LASF784
	.value	0x20c
	.uleb128 0x2
	.long	.LASF785
	.value	0x20d
	.uleb128 0x2
	.long	.LASF786
	.value	0x20e
	.uleb128 0x2
	.long	.LASF787
	.value	0x20f
	.uleb128 0x2
	.long	.LASF788
	.value	0x210
	.uleb128 0x2
	.long	.LASF789
	.value	0x211
	.uleb128 0x2
	.long	.LASF790
	.value	0x212
	.uleb128 0x2
	.long	.LASF791
	.value	0x213
	.uleb128 0x2
	.long	.LASF792
	.value	0x214
	.uleb128 0x2
	.long	.LASF793
	.value	0x215
	.uleb128 0x2
	.long	.LASF794
	.value	0x216
	.uleb128 0x2
	.long	.LASF795
	.value	0x217
	.uleb128 0x2
	.long	.LASF796
	.value	0x218
	.uleb128 0x2
	.long	.LASF797
	.value	0x219
	.uleb128 0x2
	.long	.LASF798
	.value	0x21a
	.uleb128 0x2
	.long	.LASF799
	.value	0x21b
	.uleb128 0x2
	.long	.LASF800
	.value	0x21c
	.uleb128 0x2
	.long	.LASF801
	.value	0x21d
	.uleb128 0x2
	.long	.LASF802
	.value	0x21e
	.uleb128 0x2
	.long	.LASF803
	.value	0x21f
	.uleb128 0x2
	.long	.LASF804
	.value	0x220
	.uleb128 0x2
	.long	.LASF805
	.value	0x221
	.uleb128 0x2
	.long	.LASF806
	.value	0x222
	.uleb128 0x2
	.long	.LASF807
	.value	0x223
	.uleb128 0x2
	.long	.LASF808
	.value	0x224
	.uleb128 0x2
	.long	.LASF809
	.value	0x225
	.uleb128 0x2
	.long	.LASF810
	.value	0x226
	.uleb128 0x2
	.long	.LASF811
	.value	0x227
	.uleb128 0x2
	.long	.LASF812
	.value	0x228
	.uleb128 0x2
	.long	.LASF813
	.value	0x229
	.uleb128 0x2
	.long	.LASF814
	.value	0x22a
	.uleb128 0x2
	.long	.LASF815
	.value	0x22b
	.uleb128 0x2
	.long	.LASF816
	.value	0x22c
	.uleb128 0x2
	.long	.LASF817
	.value	0x22d
	.uleb128 0x2
	.long	.LASF818
	.value	0x22e
	.uleb128 0x2
	.long	.LASF819
	.value	0x22f
	.uleb128 0x2
	.long	.LASF820
	.value	0x230
	.uleb128 0x2
	.long	.LASF821
	.value	0x231
	.uleb128 0x2
	.long	.LASF822
	.value	0x232
	.uleb128 0x2
	.long	.LASF823
	.value	0x233
	.uleb128 0x2
	.long	.LASF824
	.value	0x234
	.uleb128 0x2
	.long	.LASF825
	.value	0x235
	.uleb128 0x2
	.long	.LASF826
	.value	0x236
	.uleb128 0x2
	.long	.LASF827
	.value	0x237
	.uleb128 0x2
	.long	.LASF828
	.value	0x238
	.uleb128 0x2
	.long	.LASF829
	.value	0x239
	.uleb128 0x2
	.long	.LASF830
	.value	0x23a
	.uleb128 0x2
	.long	.LASF831
	.value	0x23b
	.uleb128 0x2
	.long	.LASF832
	.value	0x23c
	.uleb128 0x2
	.long	.LASF833
	.value	0x23d
	.uleb128 0x2
	.long	.LASF834
	.value	0x23e
	.uleb128 0x2
	.long	.LASF835
	.value	0x23f
	.uleb128 0x2
	.long	.LASF836
	.value	0x240
	.uleb128 0x2
	.long	.LASF837
	.value	0x241
	.uleb128 0x2
	.long	.LASF838
	.value	0x242
	.uleb128 0x2
	.long	.LASF839
	.value	0x243
	.uleb128 0x2
	.long	.LASF840
	.value	0x244
	.uleb128 0x2
	.long	.LASF841
	.value	0x245
	.uleb128 0x2
	.long	.LASF842
	.value	0x246
	.uleb128 0x2
	.long	.LASF843
	.value	0x247
	.uleb128 0x2
	.long	.LASF844
	.value	0x248
	.uleb128 0x2
	.long	.LASF845
	.value	0x249
	.uleb128 0x2
	.long	.LASF846
	.value	0x24a
	.uleb128 0x2
	.long	.LASF847
	.value	0x24b
	.uleb128 0x2
	.long	.LASF848
	.value	0x24c
	.uleb128 0x2
	.long	.LASF849
	.value	0x24d
	.uleb128 0x2
	.long	.LASF850
	.value	0x24e
	.uleb128 0x2
	.long	.LASF851
	.value	0x24f
	.uleb128 0x2
	.long	.LASF852
	.value	0x250
	.uleb128 0x2
	.long	.LASF853
	.value	0x251
	.uleb128 0x2
	.long	.LASF854
	.value	0x252
	.uleb128 0x2
	.long	.LASF855
	.value	0x253
	.uleb128 0x2
	.long	.LASF856
	.value	0x254
	.uleb128 0x2
	.long	.LASF857
	.value	0x255
	.uleb128 0x2
	.long	.LASF858
	.value	0x256
	.uleb128 0x2
	.long	.LASF859
	.value	0x257
	.uleb128 0x2
	.long	.LASF860
	.value	0x258
	.uleb128 0x2
	.long	.LASF861
	.value	0x259
	.uleb128 0x2
	.long	.LASF862
	.value	0x25a
	.uleb128 0x2
	.long	.LASF863
	.value	0x25b
	.uleb128 0x2
	.long	.LASF864
	.value	0x25c
	.uleb128 0x2
	.long	.LASF865
	.value	0x25d
	.uleb128 0x2
	.long	.LASF866
	.value	0x25e
	.uleb128 0x2
	.long	.LASF867
	.value	0x25f
	.uleb128 0x2
	.long	.LASF868
	.value	0x260
	.uleb128 0x2
	.long	.LASF869
	.value	0x261
	.uleb128 0x2
	.long	.LASF870
	.value	0x262
	.uleb128 0x2
	.long	.LASF871
	.value	0x263
	.uleb128 0x2
	.long	.LASF872
	.value	0x264
	.uleb128 0x2
	.long	.LASF873
	.value	0x265
	.uleb128 0x2
	.long	.LASF874
	.value	0x266
	.uleb128 0x2
	.long	.LASF875
	.value	0x267
	.uleb128 0x2
	.long	.LASF876
	.value	0x268
	.uleb128 0x2
	.long	.LASF877
	.value	0x269
	.uleb128 0x2
	.long	.LASF878
	.value	0x26a
	.uleb128 0x2
	.long	.LASF879
	.value	0x26b
	.uleb128 0x2
	.long	.LASF880
	.value	0x26c
	.uleb128 0x2
	.long	.LASF881
	.value	0x26d
	.uleb128 0x2
	.long	.LASF882
	.value	0x26e
	.uleb128 0x2
	.long	.LASF883
	.value	0x26f
	.uleb128 0x2
	.long	.LASF884
	.value	0x270
	.uleb128 0x2
	.long	.LASF885
	.value	0x271
	.uleb128 0x2
	.long	.LASF886
	.value	0x272
	.uleb128 0x2
	.long	.LASF887
	.value	0x273
	.uleb128 0x2
	.long	.LASF888
	.value	0x274
	.uleb128 0x2
	.long	.LASF889
	.value	0x275
	.uleb128 0x2
	.long	.LASF890
	.value	0x276
	.uleb128 0x2
	.long	.LASF891
	.value	0x277
	.uleb128 0x2
	.long	.LASF892
	.value	0x278
	.uleb128 0x2
	.long	.LASF893
	.value	0x279
	.uleb128 0x2
	.long	.LASF894
	.value	0x27a
	.uleb128 0x2
	.long	.LASF895
	.value	0x27b
	.uleb128 0x2
	.long	.LASF896
	.value	0x27c
	.uleb128 0x2
	.long	.LASF897
	.value	0x27d
	.uleb128 0x2
	.long	.LASF898
	.value	0x27e
	.uleb128 0x2
	.long	.LASF899
	.value	0x27f
	.uleb128 0x2
	.long	.LASF900
	.value	0x280
	.uleb128 0x2
	.long	.LASF901
	.value	0x281
	.uleb128 0x2
	.long	.LASF902
	.value	0x282
	.uleb128 0x2
	.long	.LASF903
	.value	0x283
	.uleb128 0x2
	.long	.LASF904
	.value	0x284
	.uleb128 0x2
	.long	.LASF905
	.value	0x285
	.uleb128 0x2
	.long	.LASF906
	.value	0x286
	.uleb128 0x2
	.long	.LASF907
	.value	0x287
	.uleb128 0x2
	.long	.LASF908
	.value	0x288
	.uleb128 0x2
	.long	.LASF909
	.value	0x289
	.uleb128 0x2
	.long	.LASF910
	.value	0x28a
	.uleb128 0x2
	.long	.LASF911
	.value	0x28b
	.uleb128 0x2
	.long	.LASF912
	.value	0x28c
	.uleb128 0x2
	.long	.LASF913
	.value	0x28d
	.uleb128 0x2
	.long	.LASF914
	.value	0x28e
	.uleb128 0x2
	.long	.LASF915
	.value	0x28f
	.uleb128 0x2
	.long	.LASF916
	.value	0x290
	.uleb128 0x2
	.long	.LASF917
	.value	0x291
	.uleb128 0x2
	.long	.LASF918
	.value	0x292
	.uleb128 0x2
	.long	.LASF919
	.value	0x293
	.uleb128 0x2
	.long	.LASF920
	.value	0x294
	.uleb128 0x2
	.long	.LASF921
	.value	0x295
	.uleb128 0x2
	.long	.LASF922
	.value	0x296
	.uleb128 0x2
	.long	.LASF923
	.value	0x297
	.uleb128 0x2
	.long	.LASF924
	.value	0x298
	.uleb128 0x2
	.long	.LASF925
	.value	0x299
	.uleb128 0x2
	.long	.LASF926
	.value	0x29a
	.uleb128 0x2
	.long	.LASF927
	.value	0x29b
	.uleb128 0x2
	.long	.LASF928
	.value	0x29c
	.uleb128 0x2
	.long	.LASF929
	.value	0x29d
	.uleb128 0x2
	.long	.LASF930
	.value	0x29e
	.uleb128 0x2
	.long	.LASF931
	.value	0x29f
	.uleb128 0x2
	.long	.LASF932
	.value	0x2a0
	.uleb128 0x2
	.long	.LASF933
	.value	0x2a1
	.uleb128 0x2
	.long	.LASF934
	.value	0x2a2
	.uleb128 0x2
	.long	.LASF935
	.value	0x2a3
	.uleb128 0x2
	.long	.LASF936
	.value	0x2a4
	.uleb128 0x2
	.long	.LASF937
	.value	0x2a5
	.uleb128 0x2
	.long	.LASF938
	.value	0x2a6
	.uleb128 0x2
	.long	.LASF939
	.value	0x2a7
	.uleb128 0x2
	.long	.LASF940
	.value	0x2a8
	.uleb128 0x2
	.long	.LASF941
	.value	0x2a9
	.uleb128 0x2
	.long	.LASF942
	.value	0x2aa
	.uleb128 0x2
	.long	.LASF943
	.value	0x2ab
	.uleb128 0x2
	.long	.LASF944
	.value	0x2ac
	.uleb128 0x2
	.long	.LASF945
	.value	0x2ad
	.uleb128 0x2
	.long	.LASF946
	.value	0x2ae
	.uleb128 0x2
	.long	.LASF947
	.value	0x2af
	.uleb128 0x2
	.long	.LASF948
	.value	0x2b0
	.uleb128 0x2
	.long	.LASF949
	.value	0x2b1
	.uleb128 0x2
	.long	.LASF950
	.value	0x2b2
	.uleb128 0x2
	.long	.LASF951
	.value	0x2b3
	.uleb128 0x2
	.long	.LASF952
	.value	0x2b4
	.uleb128 0x2
	.long	.LASF953
	.value	0x2b5
	.uleb128 0x2
	.long	.LASF954
	.value	0x2b6
	.uleb128 0x2
	.long	.LASF955
	.value	0x2b7
	.uleb128 0x2
	.long	.LASF956
	.value	0x2b8
	.uleb128 0x2
	.long	.LASF957
	.value	0x2b9
	.uleb128 0x2
	.long	.LASF958
	.value	0x2ba
	.uleb128 0x2
	.long	.LASF959
	.value	0x2bb
	.uleb128 0x2
	.long	.LASF960
	.value	0x2bc
	.uleb128 0x2
	.long	.LASF961
	.value	0x2bd
	.uleb128 0x2
	.long	.LASF962
	.value	0x2be
	.uleb128 0x2
	.long	.LASF963
	.value	0x2bf
	.uleb128 0x2
	.long	.LASF964
	.value	0x2c0
	.uleb128 0x2
	.long	.LASF965
	.value	0x2c1
	.uleb128 0x2
	.long	.LASF966
	.value	0x2c2
	.uleb128 0x2
	.long	.LASF967
	.value	0x2c3
	.uleb128 0x2
	.long	.LASF968
	.value	0x2c4
	.uleb128 0x2
	.long	.LASF969
	.value	0x2c5
	.uleb128 0x2
	.long	.LASF970
	.value	0x2c6
	.uleb128 0x2
	.long	.LASF971
	.value	0x2c7
	.uleb128 0x2
	.long	.LASF972
	.value	0x2c8
	.uleb128 0x2
	.long	.LASF973
	.value	0x2c9
	.uleb128 0x2
	.long	.LASF974
	.value	0x2ca
	.uleb128 0x2
	.long	.LASF975
	.value	0x2cb
	.uleb128 0x2
	.long	.LASF976
	.value	0x2cc
	.uleb128 0x2
	.long	.LASF977
	.value	0x2cd
	.uleb128 0x2
	.long	.LASF978
	.value	0x2ce
	.uleb128 0x2
	.long	.LASF979
	.value	0x2cf
	.uleb128 0x2
	.long	.LASF980
	.value	0x2d0
	.uleb128 0x2
	.long	.LASF981
	.value	0x2d1
	.uleb128 0x2
	.long	.LASF982
	.value	0x2d2
	.uleb128 0x2
	.long	.LASF983
	.value	0x2d3
	.uleb128 0x2
	.long	.LASF984
	.value	0x2d4
	.uleb128 0x2
	.long	.LASF985
	.value	0x2d5
	.uleb128 0x2
	.long	.LASF986
	.value	0x2d6
	.uleb128 0x2
	.long	.LASF987
	.value	0x2d7
	.uleb128 0x2
	.long	.LASF988
	.value	0x2d8
	.uleb128 0x2
	.long	.LASF989
	.value	0x2d9
	.uleb128 0x2
	.long	.LASF990
	.value	0x2da
	.uleb128 0x2
	.long	.LASF991
	.value	0x2db
	.uleb128 0x2
	.long	.LASF992
	.value	0x2dc
	.uleb128 0x2
	.long	.LASF993
	.value	0x2dd
	.uleb128 0x2
	.long	.LASF994
	.value	0x2de
	.uleb128 0x2
	.long	.LASF995
	.value	0x2df
	.uleb128 0x2
	.long	.LASF996
	.value	0x2e0
	.uleb128 0x2
	.long	.LASF997
	.value	0x2e1
	.uleb128 0x2
	.long	.LASF998
	.value	0x2e2
	.uleb128 0x2
	.long	.LASF999
	.value	0x2e3
	.uleb128 0x2
	.long	.LASF1000
	.value	0x2e4
	.uleb128 0x2
	.long	.LASF1001
	.value	0x2e5
	.uleb128 0x2
	.long	.LASF1002
	.value	0x2e6
	.uleb128 0x2
	.long	.LASF1003
	.value	0x2e7
	.uleb128 0x2
	.long	.LASF1004
	.value	0x2e8
	.uleb128 0x2
	.long	.LASF1005
	.value	0x2e9
	.uleb128 0x2
	.long	.LASF1006
	.value	0x2ea
	.uleb128 0x2
	.long	.LASF1007
	.value	0x2eb
	.uleb128 0x2
	.long	.LASF1008
	.value	0x2ec
	.uleb128 0x2
	.long	.LASF1009
	.value	0x2ed
	.uleb128 0x2
	.long	.LASF1010
	.value	0x2ee
	.uleb128 0x2
	.long	.LASF1011
	.value	0x2ef
	.uleb128 0x2
	.long	.LASF1012
	.value	0x2f0
	.uleb128 0x2
	.long	.LASF1013
	.value	0x2f1
	.uleb128 0x2
	.long	.LASF1014
	.value	0x2f2
	.uleb128 0x2
	.long	.LASF1015
	.value	0x2f3
	.uleb128 0x2
	.long	.LASF1016
	.value	0x2f4
	.uleb128 0x2
	.long	.LASF1017
	.value	0x2f5
	.uleb128 0x2
	.long	.LASF1018
	.value	0x2f6
	.uleb128 0x2
	.long	.LASF1019
	.value	0x2f7
	.uleb128 0x2
	.long	.LASF1020
	.value	0x2f8
	.uleb128 0x2
	.long	.LASF1021
	.value	0x2f9
	.uleb128 0x2
	.long	.LASF1022
	.value	0x2fa
	.uleb128 0x2
	.long	.LASF1023
	.value	0x2fb
	.uleb128 0x2
	.long	.LASF1024
	.value	0x2fc
	.uleb128 0x2
	.long	.LASF1025
	.value	0x2fd
	.uleb128 0x2
	.long	.LASF1026
	.value	0x2fe
	.uleb128 0x2
	.long	.LASF1027
	.value	0x2ff
	.uleb128 0x2
	.long	.LASF1028
	.value	0x300
	.uleb128 0x2
	.long	.LASF1029
	.value	0x301
	.uleb128 0x2
	.long	.LASF1030
	.value	0x302
	.uleb128 0x2
	.long	.LASF1031
	.value	0x303
	.uleb128 0x2
	.long	.LASF1032
	.value	0x304
	.uleb128 0x2
	.long	.LASF1033
	.value	0x305
	.uleb128 0x2
	.long	.LASF1034
	.value	0x306
	.uleb128 0x2
	.long	.LASF1035
	.value	0x307
	.uleb128 0x2
	.long	.LASF1036
	.value	0x308
	.uleb128 0x2
	.long	.LASF1037
	.value	0x309
	.uleb128 0x2
	.long	.LASF1038
	.value	0x30a
	.uleb128 0x2
	.long	.LASF1039
	.value	0x30b
	.uleb128 0x2
	.long	.LASF1040
	.value	0x30c
	.uleb128 0x2
	.long	.LASF1041
	.value	0x30d
	.uleb128 0x2
	.long	.LASF1042
	.value	0x30e
	.uleb128 0x2
	.long	.LASF1043
	.value	0x30f
	.uleb128 0x2
	.long	.LASF1044
	.value	0x310
	.uleb128 0x2
	.long	.LASF1045
	.value	0x311
	.uleb128 0x2
	.long	.LASF1046
	.value	0x312
	.uleb128 0x2
	.long	.LASF1047
	.value	0x313
	.uleb128 0x2
	.long	.LASF1048
	.value	0x314
	.uleb128 0x2
	.long	.LASF1049
	.value	0x315
	.uleb128 0x2
	.long	.LASF1050
	.value	0x316
	.uleb128 0x2
	.long	.LASF1051
	.value	0x317
	.uleb128 0x2
	.long	.LASF1052
	.value	0x318
	.uleb128 0x2
	.long	.LASF1053
	.value	0x319
	.uleb128 0x2
	.long	.LASF1054
	.value	0x31a
	.uleb128 0x2
	.long	.LASF1055
	.value	0x31b
	.uleb128 0x2
	.long	.LASF1056
	.value	0x31c
	.uleb128 0x2
	.long	.LASF1057
	.value	0x31d
	.uleb128 0x2
	.long	.LASF1058
	.value	0x31e
	.uleb128 0x2
	.long	.LASF1059
	.value	0x31f
	.uleb128 0x2
	.long	.LASF1060
	.value	0x320
	.uleb128 0x2
	.long	.LASF1061
	.value	0x321
	.uleb128 0x2
	.long	.LASF1062
	.value	0x322
	.uleb128 0x2
	.long	.LASF1063
	.value	0x323
	.uleb128 0x2
	.long	.LASF1064
	.value	0x324
	.uleb128 0x2
	.long	.LASF1065
	.value	0x325
	.uleb128 0x2
	.long	.LASF1066
	.value	0x326
	.uleb128 0x2
	.long	.LASF1067
	.value	0x327
	.uleb128 0x2
	.long	.LASF1068
	.value	0x328
	.uleb128 0x2
	.long	.LASF1069
	.value	0x329
	.uleb128 0x2
	.long	.LASF1070
	.value	0x32a
	.uleb128 0x2
	.long	.LASF1071
	.value	0x32b
	.uleb128 0x2
	.long	.LASF1072
	.value	0x32c
	.uleb128 0x2
	.long	.LASF1073
	.value	0x32d
	.uleb128 0x2
	.long	.LASF1074
	.value	0x32e
	.uleb128 0x2
	.long	.LASF1075
	.value	0x32f
	.uleb128 0x2
	.long	.LASF1076
	.value	0x330
	.uleb128 0x2
	.long	.LASF1077
	.value	0x331
	.uleb128 0x2
	.long	.LASF1078
	.value	0x332
	.uleb128 0x2
	.long	.LASF1079
	.value	0x333
	.uleb128 0x2
	.long	.LASF1080
	.value	0x334
	.uleb128 0x2
	.long	.LASF1081
	.value	0x335
	.uleb128 0x2
	.long	.LASF1082
	.value	0x336
	.uleb128 0x2
	.long	.LASF1083
	.value	0x337
	.uleb128 0x2
	.long	.LASF1084
	.value	0x338
	.uleb128 0x2
	.long	.LASF1085
	.value	0x339
	.uleb128 0x2
	.long	.LASF1086
	.value	0x33a
	.uleb128 0x2
	.long	.LASF1087
	.value	0x33b
	.uleb128 0x2
	.long	.LASF1088
	.value	0x33c
	.uleb128 0x2
	.long	.LASF1089
	.value	0x33d
	.uleb128 0x2
	.long	.LASF1090
	.value	0x33e
	.uleb128 0x2
	.long	.LASF1091
	.value	0x33f
	.uleb128 0x2
	.long	.LASF1092
	.value	0x340
	.uleb128 0x2
	.long	.LASF1093
	.value	0x341
	.uleb128 0x2
	.long	.LASF1094
	.value	0x342
	.uleb128 0x2
	.long	.LASF1095
	.value	0x343
	.uleb128 0x2
	.long	.LASF1096
	.value	0x344
	.uleb128 0x2
	.long	.LASF1097
	.value	0x345
	.uleb128 0x2
	.long	.LASF1098
	.value	0x346
	.uleb128 0x2
	.long	.LASF1099
	.value	0x347
	.uleb128 0x2
	.long	.LASF1100
	.value	0x348
	.uleb128 0x2
	.long	.LASF1101
	.value	0x349
	.uleb128 0x2
	.long	.LASF1102
	.value	0x34a
	.uleb128 0x2
	.long	.LASF1103
	.value	0x34b
	.uleb128 0x2
	.long	.LASF1104
	.value	0x34c
	.uleb128 0x2
	.long	.LASF1105
	.value	0x34d
	.uleb128 0x2
	.long	.LASF1106
	.value	0x34e
	.uleb128 0x2
	.long	.LASF1107
	.value	0x34f
	.uleb128 0x2
	.long	.LASF1108
	.value	0x350
	.uleb128 0x2
	.long	.LASF1109
	.value	0x351
	.uleb128 0x2
	.long	.LASF1110
	.value	0x352
	.uleb128 0x2
	.long	.LASF1111
	.value	0x353
	.uleb128 0x2
	.long	.LASF1112
	.value	0x354
	.uleb128 0x2
	.long	.LASF1113
	.value	0x355
	.uleb128 0x2
	.long	.LASF1114
	.value	0x356
	.uleb128 0x2
	.long	.LASF1115
	.value	0x357
	.uleb128 0x2
	.long	.LASF1116
	.value	0x358
	.uleb128 0x2
	.long	.LASF1117
	.value	0x359
	.uleb128 0x2
	.long	.LASF1118
	.value	0x35a
	.uleb128 0x2
	.long	.LASF1119
	.value	0x35b
	.uleb128 0x2
	.long	.LASF1120
	.value	0x35c
	.uleb128 0x2
	.long	.LASF1121
	.value	0x35d
	.uleb128 0x2
	.long	.LASF1122
	.value	0x35e
	.uleb128 0x2
	.long	.LASF1123
	.value	0x35f
	.uleb128 0x2
	.long	.LASF1124
	.value	0x360
	.uleb128 0x2
	.long	.LASF1125
	.value	0x361
	.uleb128 0x2
	.long	.LASF1126
	.value	0x362
	.uleb128 0x2
	.long	.LASF1127
	.value	0x363
	.uleb128 0x2
	.long	.LASF1128
	.value	0x364
	.uleb128 0x2
	.long	.LASF1129
	.value	0x365
	.uleb128 0x2
	.long	.LASF1130
	.value	0x366
	.uleb128 0x2
	.long	.LASF1131
	.value	0x367
	.uleb128 0x2
	.long	.LASF1132
	.value	0x368
	.uleb128 0x2
	.long	.LASF1133
	.value	0x369
	.uleb128 0x2
	.long	.LASF1134
	.value	0x36a
	.uleb128 0x2
	.long	.LASF1135
	.value	0x36b
	.uleb128 0x2
	.long	.LASF1136
	.value	0x36c
	.uleb128 0x2
	.long	.LASF1137
	.value	0x36d
	.uleb128 0x2
	.long	.LASF1138
	.value	0x36e
	.uleb128 0x2
	.long	.LASF1139
	.value	0x36f
	.uleb128 0x2
	.long	.LASF1140
	.value	0x370
	.uleb128 0x2
	.long	.LASF1141
	.value	0x371
	.uleb128 0x2
	.long	.LASF1142
	.value	0x372
	.uleb128 0x2
	.long	.LASF1143
	.value	0x373
	.uleb128 0x2
	.long	.LASF1144
	.value	0x374
	.uleb128 0x2
	.long	.LASF1145
	.value	0x375
	.uleb128 0x2
	.long	.LASF1146
	.value	0x376
	.uleb128 0x2
	.long	.LASF1147
	.value	0x377
	.uleb128 0x2
	.long	.LASF1148
	.value	0x378
	.uleb128 0x2
	.long	.LASF1149
	.value	0x379
	.uleb128 0x2
	.long	.LASF1150
	.value	0x37a
	.uleb128 0x2
	.long	.LASF1151
	.value	0x37b
	.uleb128 0x2
	.long	.LASF1152
	.value	0x37c
	.uleb128 0x2
	.long	.LASF1153
	.value	0x37d
	.uleb128 0x2
	.long	.LASF1154
	.value	0x37e
	.uleb128 0x2
	.long	.LASF1155
	.value	0x37f
	.uleb128 0x2
	.long	.LASF1156
	.value	0x380
	.uleb128 0x2
	.long	.LASF1157
	.value	0x381
	.uleb128 0x2
	.long	.LASF1158
	.value	0x382
	.uleb128 0x2
	.long	.LASF1159
	.value	0x383
	.uleb128 0x2
	.long	.LASF1160
	.value	0x384
	.uleb128 0x2
	.long	.LASF1161
	.value	0x385
	.uleb128 0x2
	.long	.LASF1162
	.value	0x386
	.uleb128 0x2
	.long	.LASF1163
	.value	0x387
	.uleb128 0x2
	.long	.LASF1164
	.value	0x388
	.uleb128 0x2
	.long	.LASF1165
	.value	0x389
	.uleb128 0x2
	.long	.LASF1166
	.value	0x38a
	.uleb128 0x2
	.long	.LASF1167
	.value	0x38b
	.uleb128 0x2
	.long	.LASF1168
	.value	0x38c
	.uleb128 0x2
	.long	.LASF1169
	.value	0x38d
	.uleb128 0x2
	.long	.LASF1170
	.value	0x38e
	.uleb128 0x2
	.long	.LASF1171
	.value	0x38f
	.uleb128 0x2
	.long	.LASF1172
	.value	0x390
	.uleb128 0x2
	.long	.LASF1173
	.value	0x391
	.uleb128 0x2
	.long	.LASF1174
	.value	0x392
	.uleb128 0x2
	.long	.LASF1175
	.value	0x393
	.uleb128 0x2
	.long	.LASF1176
	.value	0x394
	.uleb128 0x2
	.long	.LASF1177
	.value	0x395
	.uleb128 0x2
	.long	.LASF1178
	.value	0x396
	.uleb128 0x2
	.long	.LASF1179
	.value	0x397
	.uleb128 0x2
	.long	.LASF1180
	.value	0x398
	.uleb128 0x2
	.long	.LASF1181
	.value	0x399
	.uleb128 0x2
	.long	.LASF1182
	.value	0x39a
	.uleb128 0x2
	.long	.LASF1183
	.value	0x39b
	.uleb128 0x2
	.long	.LASF1184
	.value	0x39c
	.uleb128 0x2
	.long	.LASF1185
	.value	0x39d
	.uleb128 0x2
	.long	.LASF1186
	.value	0x39e
	.uleb128 0x2
	.long	.LASF1187
	.value	0x39f
	.uleb128 0x2
	.long	.LASF1188
	.value	0x3a0
	.uleb128 0x2
	.long	.LASF1189
	.value	0x3a1
	.uleb128 0x2
	.long	.LASF1190
	.value	0x3a2
	.uleb128 0x2
	.long	.LASF1191
	.value	0x3a3
	.uleb128 0x2
	.long	.LASF1192
	.value	0x3a4
	.uleb128 0x2
	.long	.LASF1193
	.value	0x3a5
	.uleb128 0x2
	.long	.LASF1194
	.value	0x3a6
	.uleb128 0x2
	.long	.LASF1195
	.value	0x3a7
	.uleb128 0x2
	.long	.LASF1196
	.value	0x3a8
	.uleb128 0x2
	.long	.LASF1197
	.value	0x3a9
	.uleb128 0x2
	.long	.LASF1198
	.value	0x3aa
	.uleb128 0x2
	.long	.LASF1199
	.value	0x3ab
	.uleb128 0x2
	.long	.LASF1200
	.value	0x3ac
	.uleb128 0x2
	.long	.LASF1201
	.value	0x3ad
	.uleb128 0x2
	.long	.LASF1202
	.value	0x3ae
	.uleb128 0x2
	.long	.LASF1203
	.value	0x3af
	.uleb128 0x2
	.long	.LASF1204
	.value	0x3b0
	.uleb128 0x2
	.long	.LASF1205
	.value	0x3b1
	.uleb128 0x2
	.long	.LASF1206
	.value	0x3b2
	.uleb128 0x2
	.long	.LASF1207
	.value	0x3b3
	.uleb128 0x2
	.long	.LASF1208
	.value	0x3b4
	.uleb128 0x2
	.long	.LASF1209
	.value	0x3b5
	.uleb128 0x2
	.long	.LASF1210
	.value	0x3b6
	.uleb128 0x2
	.long	.LASF1211
	.value	0x3b7
	.uleb128 0x2
	.long	.LASF1212
	.value	0x3b8
	.uleb128 0x2
	.long	.LASF1213
	.value	0x3b9
	.uleb128 0x2
	.long	.LASF1214
	.value	0x3ba
	.uleb128 0x2
	.long	.LASF1215
	.value	0x3bb
	.uleb128 0x2
	.long	.LASF1216
	.value	0x3bc
	.uleb128 0x2
	.long	.LASF1217
	.value	0x3bd
	.uleb128 0x2
	.long	.LASF1218
	.value	0x3be
	.uleb128 0x2
	.long	.LASF1219
	.value	0x3bf
	.uleb128 0x2
	.long	.LASF1220
	.value	0x3c0
	.uleb128 0x2
	.long	.LASF1221
	.value	0x3c1
	.uleb128 0x2
	.long	.LASF1222
	.value	0x3c2
	.uleb128 0x2
	.long	.LASF1223
	.value	0x3c3
	.uleb128 0x2
	.long	.LASF1224
	.value	0x3c4
	.uleb128 0x2
	.long	.LASF1225
	.value	0x3c5
	.uleb128 0x2
	.long	.LASF1226
	.value	0x3c6
	.uleb128 0x2
	.long	.LASF1227
	.value	0x3c7
	.byte	0
	.uleb128 0x18
	.long	.LASF1228
	.byte	0xe
	.value	0x478
	.long	0x97a
	.uleb128 0x20
	.byte	0x38
	.value	0x47b
	.long	0x2376
	.uleb128 0x5
	.long	.LASF1229
	.byte	0xe
	.value	0x47d
	.byte	0xf
	.long	0x96e
	.byte	0
	.uleb128 0x5
	.long	.LASF1230
	.byte	0xe
	.value	0x47e
	.byte	0xa
	.long	0xa3
	.byte	0x8
	.uleb128 0x5
	.long	.LASF1231
	.byte	0xe
	.value	0x47f
	.byte	0xa
	.long	0xa3
	.byte	0x10
	.uleb128 0x5
	.long	.LASF1232
	.byte	0xe
	.value	0x481
	.byte	0xf
	.long	0x5c1
	.byte	0x18
	.uleb128 0x5
	.long	.LASF1233
	.byte	0xe
	.value	0x482
	.byte	0x10
	.long	0x22ff
	.byte	0x20
	.uleb128 0x5
	.long	.LASF1234
	.byte	0xe
	.value	0x483
	.byte	0xa
	.long	0xa3
	.byte	0x28
	.uleb128 0x5
	.long	.LASF1235
	.byte	0xe
	.value	0x483
	.byte	0x11
	.long	0xa3
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.long	.LASF1236
	.byte	0xe
	.value	0x484
	.long	0x230b
	.uleb128 0x31
	.byte	0x7
	.byte	0x4
	.long	0x77
	.byte	0xe
	.value	0x48b
	.byte	0xe
	.long	0x26ce
	.uleb128 0x1
	.long	.LASF1237
	.byte	0
	.uleb128 0x1
	.long	.LASF1238
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1239
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1240
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1241
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1242
	.byte	0x5
	.uleb128 0x1
	.long	.LASF1243
	.byte	0x6
	.uleb128 0x1
	.long	.LASF1244
	.byte	0x7
	.uleb128 0x1
	.long	.LASF1245
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1246
	.byte	0x9
	.uleb128 0x1
	.long	.LASF1247
	.byte	0xa
	.uleb128 0x1
	.long	.LASF1248
	.byte	0xb
	.uleb128 0x1
	.long	.LASF1249
	.byte	0xc
	.uleb128 0x1
	.long	.LASF1250
	.byte	0xd
	.uleb128 0x1
	.long	.LASF1251
	.byte	0xe
	.uleb128 0x1
	.long	.LASF1252
	.byte	0xf
	.uleb128 0x1
	.long	.LASF1253
	.byte	0x10
	.uleb128 0x1
	.long	.LASF1254
	.byte	0x11
	.uleb128 0x1
	.long	.LASF1255
	.byte	0x12
	.uleb128 0x1
	.long	.LASF1256
	.byte	0x13
	.uleb128 0x1
	.long	.LASF1257
	.byte	0x14
	.uleb128 0x1
	.long	.LASF1258
	.byte	0x15
	.uleb128 0x1
	.long	.LASF1259
	.byte	0x16
	.uleb128 0x1
	.long	.LASF1260
	.byte	0x17
	.uleb128 0x1
	.long	.LASF1261
	.byte	0x18
	.uleb128 0x1
	.long	.LASF1262
	.byte	0x19
	.uleb128 0x1
	.long	.LASF1263
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF1264
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF1265
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF1266
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF1267
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF1268
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF1269
	.byte	0x20
	.uleb128 0x1
	.long	.LASF1270
	.byte	0x21
	.uleb128 0x1
	.long	.LASF1271
	.byte	0x22
	.uleb128 0x1
	.long	.LASF1272
	.byte	0x23
	.uleb128 0x1
	.long	.LASF1273
	.byte	0x24
	.uleb128 0x1
	.long	.LASF1274
	.byte	0x25
	.uleb128 0x1
	.long	.LASF1275
	.byte	0x26
	.uleb128 0x1
	.long	.LASF1276
	.byte	0x27
	.uleb128 0x1
	.long	.LASF1277
	.byte	0x28
	.uleb128 0x1
	.long	.LASF1278
	.byte	0x29
	.uleb128 0x1
	.long	.LASF1279
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF1280
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF1281
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF1282
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF1283
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF1284
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF1285
	.byte	0x30
	.uleb128 0x1
	.long	.LASF1286
	.byte	0x31
	.uleb128 0x1
	.long	.LASF1287
	.byte	0x32
	.uleb128 0x1
	.long	.LASF1288
	.byte	0x33
	.uleb128 0x1
	.long	.LASF1289
	.byte	0x34
	.uleb128 0x1
	.long	.LASF1290
	.byte	0x35
	.uleb128 0x1
	.long	.LASF1291
	.byte	0x36
	.uleb128 0x1
	.long	.LASF1292
	.byte	0x37
	.uleb128 0x1
	.long	.LASF1293
	.byte	0x38
	.uleb128 0x1
	.long	.LASF1294
	.byte	0x39
	.uleb128 0x1
	.long	.LASF1295
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF1296
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF1297
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF1298
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF1299
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF1300
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF1301
	.byte	0x40
	.uleb128 0x1
	.long	.LASF1302
	.byte	0x41
	.uleb128 0x1
	.long	.LASF1303
	.byte	0x42
	.uleb128 0x1
	.long	.LASF1304
	.byte	0x43
	.uleb128 0x1
	.long	.LASF1305
	.byte	0x44
	.uleb128 0x1
	.long	.LASF1306
	.byte	0x45
	.uleb128 0x1
	.long	.LASF1307
	.byte	0x46
	.uleb128 0x1
	.long	.LASF1308
	.byte	0x47
	.uleb128 0x1
	.long	.LASF1309
	.byte	0x48
	.uleb128 0x1
	.long	.LASF1310
	.byte	0x49
	.uleb128 0x1
	.long	.LASF1311
	.byte	0x4a
	.uleb128 0x1
	.long	.LASF1312
	.byte	0x4b
	.uleb128 0x1
	.long	.LASF1313
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF1314
	.byte	0x4d
	.uleb128 0x1
	.long	.LASF1315
	.byte	0x4e
	.uleb128 0x1
	.long	.LASF1316
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF1317
	.byte	0x50
	.uleb128 0x1
	.long	.LASF1318
	.byte	0x51
	.uleb128 0x1
	.long	.LASF1319
	.byte	0x52
	.uleb128 0x1
	.long	.LASF1320
	.byte	0x53
	.uleb128 0x1
	.long	.LASF1321
	.byte	0x54
	.uleb128 0x1
	.long	.LASF1322
	.byte	0x55
	.uleb128 0x1
	.long	.LASF1323
	.byte	0x56
	.uleb128 0x1
	.long	.LASF1324
	.byte	0x57
	.uleb128 0x1
	.long	.LASF1325
	.byte	0x58
	.uleb128 0x1
	.long	.LASF1326
	.byte	0x59
	.uleb128 0x1
	.long	.LASF1327
	.byte	0x5a
	.uleb128 0x1
	.long	.LASF1328
	.byte	0x5b
	.uleb128 0x1
	.long	.LASF1329
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF1330
	.byte	0x5d
	.uleb128 0x1
	.long	.LASF1331
	.byte	0x5e
	.uleb128 0x1
	.long	.LASF1332
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF1333
	.byte	0x60
	.uleb128 0x1
	.long	.LASF1334
	.byte	0x61
	.uleb128 0x1
	.long	.LASF1335
	.byte	0x62
	.uleb128 0x1
	.long	.LASF1336
	.byte	0x63
	.uleb128 0x1
	.long	.LASF1337
	.byte	0x64
	.uleb128 0x1
	.long	.LASF1338
	.byte	0x65
	.uleb128 0x1
	.long	.LASF1339
	.byte	0x66
	.uleb128 0x1
	.long	.LASF1340
	.byte	0x67
	.uleb128 0x1
	.long	.LASF1341
	.byte	0x68
	.uleb128 0x1
	.long	.LASF1342
	.byte	0x69
	.uleb128 0x1
	.long	.LASF1343
	.byte	0x6a
	.uleb128 0x1
	.long	.LASF1344
	.byte	0x6b
	.uleb128 0x1
	.long	.LASF1345
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF1346
	.byte	0x6d
	.uleb128 0x1
	.long	.LASF1347
	.byte	0x6e
	.uleb128 0x1
	.long	.LASF1348
	.byte	0x6f
	.uleb128 0x1
	.long	.LASF1349
	.byte	0x70
	.uleb128 0x1
	.long	.LASF1350
	.byte	0x71
	.uleb128 0x1
	.long	.LASF1351
	.byte	0x72
	.uleb128 0x1
	.long	.LASF1352
	.byte	0x73
	.uleb128 0x1
	.long	.LASF1353
	.byte	0x74
	.uleb128 0x1
	.long	.LASF1354
	.byte	0x75
	.uleb128 0x1
	.long	.LASF1355
	.byte	0x76
	.uleb128 0x1
	.long	.LASF1356
	.byte	0x77
	.uleb128 0x1
	.long	.LASF1357
	.byte	0x78
	.uleb128 0x1
	.long	.LASF1358
	.byte	0x79
	.uleb128 0x1
	.long	.LASF1359
	.byte	0x7a
	.uleb128 0x1
	.long	.LASF1360
	.byte	0x7b
	.uleb128 0x1
	.long	.LASF1361
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF1362
	.byte	0x7d
	.uleb128 0x1
	.long	.LASF1363
	.byte	0x7e
	.uleb128 0x1
	.long	.LASF1364
	.byte	0x7f
	.uleb128 0x1
	.long	.LASF1365
	.byte	0x80
	.uleb128 0x1
	.long	.LASF1366
	.byte	0x81
	.uleb128 0x1
	.long	.LASF1367
	.byte	0x82
	.uleb128 0x1
	.long	.LASF1368
	.byte	0x83
	.uleb128 0x1
	.long	.LASF1369
	.byte	0x84
	.uleb128 0x1
	.long	.LASF1370
	.byte	0x85
	.uleb128 0x1
	.long	.LASF1371
	.byte	0x86
	.uleb128 0x1
	.long	.LASF1372
	.byte	0x87
	.uleb128 0x1
	.long	.LASF1373
	.byte	0x88
	.uleb128 0x1
	.long	.LASF1374
	.byte	0x89
	.byte	0
	.uleb128 0x18
	.long	.LASF1375
	.byte	0xe
	.value	0x517
	.long	0x2382
	.uleb128 0x20
	.byte	0x5c
	.value	0x519
	.long	0x2825
	.uleb128 0x5
	.long	.LASF1376
	.byte	0xe
	.value	0x51b
	.byte	0x9
	.long	0x9c
	.byte	0
	.uleb128 0x5
	.long	.LASF1377
	.byte	0xe
	.value	0x51c
	.byte	0x9
	.long	0x9c
	.byte	0x4
	.uleb128 0x5
	.long	.LASF1378
	.byte	0xe
	.value	0x51d
	.byte	0x9
	.long	0x9c
	.byte	0x8
	.uleb128 0x5
	.long	.LASF1379
	.byte	0xe
	.value	0x51e
	.byte	0x9
	.long	0x9c
	.byte	0xc
	.uleb128 0x5
	.long	.LASF1380
	.byte	0xe
	.value	0x51f
	.byte	0x9
	.long	0x9c
	.byte	0x10
	.uleb128 0x5
	.long	.LASF1381
	.byte	0xe
	.value	0x520
	.byte	0x9
	.long	0x9c
	.byte	0x14
	.uleb128 0x5
	.long	.LASF1382
	.byte	0xe
	.value	0x521
	.byte	0x9
	.long	0x9c
	.byte	0x18
	.uleb128 0x5
	.long	.LASF1383
	.byte	0xe
	.value	0x522
	.byte	0x9
	.long	0x9c
	.byte	0x1c
	.uleb128 0x5
	.long	.LASF1384
	.byte	0xe
	.value	0x523
	.byte	0x9
	.long	0x9c
	.byte	0x20
	.uleb128 0x5
	.long	.LASF1385
	.byte	0xe
	.value	0x524
	.byte	0x9
	.long	0x9c
	.byte	0x24
	.uleb128 0x5
	.long	.LASF1386
	.byte	0xe
	.value	0x525
	.byte	0x9
	.long	0x9c
	.byte	0x28
	.uleb128 0x5
	.long	.LASF1387
	.byte	0xe
	.value	0x526
	.byte	0x9
	.long	0x9c
	.byte	0x2c
	.uleb128 0x5
	.long	.LASF1388
	.byte	0xe
	.value	0x527
	.byte	0x9
	.long	0x9c
	.byte	0x30
	.uleb128 0x5
	.long	.LASF1389
	.byte	0xe
	.value	0x528
	.byte	0x9
	.long	0x9c
	.byte	0x34
	.uleb128 0x5
	.long	.LASF1390
	.byte	0xe
	.value	0x529
	.byte	0x9
	.long	0x9c
	.byte	0x38
	.uleb128 0x5
	.long	.LASF1391
	.byte	0xe
	.value	0x52a
	.byte	0x9
	.long	0x9c
	.byte	0x3c
	.uleb128 0x5
	.long	.LASF1392
	.byte	0xe
	.value	0x52b
	.byte	0x9
	.long	0x9c
	.byte	0x40
	.uleb128 0x5
	.long	.LASF1393
	.byte	0xe
	.value	0x52c
	.byte	0x9
	.long	0x9c
	.byte	0x44
	.uleb128 0x5
	.long	.LASF1394
	.byte	0xe
	.value	0x52d
	.byte	0x9
	.long	0x9c
	.byte	0x48
	.uleb128 0x5
	.long	.LASF1395
	.byte	0xe
	.value	0x52e
	.byte	0x9
	.long	0x9c
	.byte	0x4c
	.uleb128 0x5
	.long	.LASF1396
	.byte	0xe
	.value	0x52f
	.byte	0x9
	.long	0x9c
	.byte	0x50
	.uleb128 0x5
	.long	.LASF1397
	.byte	0xe
	.value	0x530
	.byte	0x9
	.long	0x9c
	.byte	0x54
	.uleb128 0x5
	.long	.LASF1398
	.byte	0xe
	.value	0x531
	.byte	0x9
	.long	0x9c
	.byte	0x58
	.byte	0
	.uleb128 0x18
	.long	.LASF1399
	.byte	0xe
	.value	0x533
	.long	0x26da
	.uleb128 0xd
	.long	0x77
	.byte	0xf
	.byte	0x3d
	.byte	0x1
	.long	0x2850
	.uleb128 0x1
	.long	.LASF1400
	.byte	0
	.uleb128 0x1
	.long	.LASF1401
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1402
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.byte	0x18
	.byte	0xf
	.byte	0x44
	.long	0x288b
	.uleb128 0x3
	.long	.LASF1403
	.byte	0xf
	.byte	0x46
	.byte	0xe
	.long	0x288b
	.byte	0
	.uleb128 0x3
	.long	.LASF1231
	.byte	0xf
	.byte	0x47
	.byte	0xa
	.long	0x9c
	.byte	0x8
	.uleb128 0x8
	.string	"sx"
	.byte	0xf
	.byte	0x48
	.byte	0xd
	.long	0x4ff
	.byte	0xc
	.uleb128 0x8
	.string	"sy"
	.byte	0xf
	.byte	0x49
	.byte	0xd
	.long	0x4ff
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	0x2376
	.uleb128 0x6
	.long	.LASF1404
	.byte	0xf
	.byte	0x4b
	.byte	0x3
	.long	0x2850
	.uleb128 0x16
	.long	.LASF1405
	.byte	0xe0
	.byte	0x10
	.byte	0xcf
	.byte	0x10
	.long	0x2a74
	.uleb128 0x3
	.long	.LASF1406
	.byte	0x10
	.byte	0xd2
	.byte	0x10
	.long	0x613
	.byte	0
	.uleb128 0x8
	.string	"x"
	.byte	0x10
	.byte	0xd5
	.byte	0xe
	.long	0x4ff
	.byte	0x18
	.uleb128 0x8
	.string	"y"
	.byte	0x10
	.byte	0xd6
	.byte	0xe
	.long	0x4ff
	.byte	0x1c
	.uleb128 0x8
	.string	"z"
	.byte	0x10
	.byte	0xd7
	.byte	0xe
	.long	0x4ff
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1407
	.byte	0x10
	.byte	0xda
	.byte	0x14
	.long	0x2a74
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1408
	.byte	0x10
	.byte	0xdb
	.byte	0x14
	.long	0x2a74
	.byte	0x30
	.uleb128 0x3
	.long	.LASF97
	.byte	0x10
	.byte	0xde
	.byte	0xe
	.long	0x536
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1229
	.byte	0x10
	.byte	0xdf
	.byte	0x12
	.long	0x96e
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1230
	.byte	0x10
	.byte	0xe0
	.byte	0xb
	.long	0x9c
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1409
	.byte	0x10
	.byte	0xe4
	.byte	0x14
	.long	0x2a74
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1410
	.byte	0x10
	.byte	0xe5
	.byte	0x14
	.long	0x2a74
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1411
	.byte	0x10
	.byte	0xe7
	.byte	0x19
	.long	0x2aae
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1412
	.byte	0x10
	.byte	0xea
	.byte	0xe
	.long	0x4ff
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1413
	.byte	0x10
	.byte	0xeb
	.byte	0xe
	.long	0x4ff
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1392
	.byte	0x10
	.byte	0xee
	.byte	0xe
	.long	0x4ff
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1393
	.byte	0x10
	.byte	0xef
	.byte	0xe
	.long	0x4ff
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1414
	.byte	0x10
	.byte	0xf2
	.byte	0xe
	.long	0x4ff
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1415
	.byte	0x10
	.byte	0xf3
	.byte	0xe
	.long	0x4ff
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1416
	.byte	0x10
	.byte	0xf4
	.byte	0xe
	.long	0x4ff
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1417
	.byte	0x10
	.byte	0xf7
	.byte	0xb
	.long	0x9c
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF98
	.byte	0x10
	.byte	0xf9
	.byte	0x11
	.long	0x26ce
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1418
	.byte	0x10
	.byte	0xfa
	.byte	0x12
	.long	0x2ab3
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1231
	.byte	0x10
	.byte	0xfc
	.byte	0xb
	.long	0x9c
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1403
	.byte	0x10
	.byte	0xfd
	.byte	0xf
	.long	0x288b
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1397
	.byte	0x10
	.byte	0xfe
	.byte	0xb
	.long	0x9c
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1419
	.byte	0x10
	.byte	0xff
	.byte	0xb
	.long	0x9c
	.byte	0xa4
	.uleb128 0x5
	.long	.LASF1420
	.byte	0x10
	.value	0x102
	.byte	0xb
	.long	0x9c
	.byte	0xa8
	.uleb128 0x5
	.long	.LASF1421
	.byte	0x10
	.value	0x103
	.byte	0xb
	.long	0x9c
	.byte	0xac
	.uleb128 0x5
	.long	.LASF1422
	.byte	0x10
	.value	0x107
	.byte	0x14
	.long	0x2a74
	.byte	0xb0
	.uleb128 0x5
	.long	.LASF1381
	.byte	0x10
	.value	0x10b
	.byte	0xb
	.long	0x9c
	.byte	0xb8
	.uleb128 0x5
	.long	.LASF1423
	.byte	0x10
	.value	0x10f
	.byte	0xb
	.long	0x9c
	.byte	0xbc
	.uleb128 0x5
	.long	.LASF1424
	.byte	0x10
	.value	0x113
	.byte	0x16
	.long	0x2c8d
	.byte	0xc0
	.uleb128 0x5
	.long	.LASF1425
	.byte	0x10
	.value	0x116
	.byte	0xb
	.long	0x9c
	.byte	0xc8
	.uleb128 0x5
	.long	.LASF1426
	.byte	0x10
	.value	0x119
	.byte	0x11
	.long	0x4f3
	.byte	0xcc
	.uleb128 0x5
	.long	.LASF1427
	.byte	0x10
	.value	0x11c
	.byte	0x14
	.long	0x2a74
	.byte	0xd8
	.byte	0
	.uleb128 0x7
	.long	0x289c
	.uleb128 0x16
	.long	.LASF1428
	.byte	0x10
	.byte	0x11
	.byte	0xe3
	.byte	0x10
	.long	0x2aae
	.uleb128 0x3
	.long	.LASF1429
	.byte	0x11
	.byte	0xe5
	.byte	0xf
	.long	0x3573
	.byte	0
	.uleb128 0x3
	.long	.LASF1430
	.byte	0x11
	.byte	0xe6
	.byte	0xb
	.long	0x95
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1431
	.byte	0x11
	.byte	0xe7
	.byte	0xb
	.long	0x95
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.long	0x2a79
	.uleb128 0x7
	.long	0x2825
	.uleb128 0x32
	.long	.LASF1432
	.value	0x140
	.byte	0x12
	.byte	0x53
	.byte	0x10
	.long	0x2c8d
	.uleb128 0x8
	.string	"mo"
	.byte	0x12
	.byte	0x55
	.byte	0xe
	.long	0x2cc9
	.byte	0
	.uleb128 0x3
	.long	.LASF1433
	.byte	0x12
	.byte	0x56
	.byte	0x13
	.long	0x2cbd
	.byte	0x8
	.uleb128 0x8
	.string	"cmd"
	.byte	0x12
	.byte	0x57
	.byte	0xf
	.long	0x360
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1434
	.byte	0x12
	.byte	0x5c
	.byte	0xe
	.long	0x4ff
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1435
	.byte	0x12
	.byte	0x5e
	.byte	0xe
	.long	0x4ff
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1436
	.byte	0x12
	.byte	0x60
	.byte	0x16
	.long	0x4ff
	.byte	0x1c
	.uleb128 0x8
	.string	"bob"
	.byte	0x12
	.byte	0x62
	.byte	0x16
	.long	0x4ff
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1419
	.byte	0x12
	.byte	0x66
	.byte	0xb
	.long	0x9c
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1437
	.byte	0x12
	.byte	0x67
	.byte	0xb
	.long	0x9c
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1438
	.byte	0x12
	.byte	0x69
	.byte	0xb
	.long	0x9c
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1439
	.byte	0x12
	.byte	0x6c
	.byte	0xb
	.long	0x2cce
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1440
	.byte	0x12
	.byte	0x6d
	.byte	0xe
	.long	0x2cde
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1441
	.byte	0x12
	.byte	0x6e
	.byte	0xe
	.long	0x2f1
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1442
	.byte	0x12
	.byte	0x71
	.byte	0xb
	.long	0x2cee
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1443
	.byte	0x12
	.byte	0x72
	.byte	0x12
	.long	0x429
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1444
	.byte	0x12
	.byte	0x75
	.byte	0x12
	.long	0x429
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1445
	.byte	0x12
	.byte	0x77
	.byte	0xe
	.long	0x2cfe
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1446
	.byte	0x12
	.byte	0x78
	.byte	0xb
	.long	0x2cee
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1447
	.byte	0x12
	.byte	0x79
	.byte	0xb
	.long	0x2cee
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1448
	.byte	0x12
	.byte	0x7c
	.byte	0xb
	.long	0x9c
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1449
	.byte	0x12
	.byte	0x7d
	.byte	0xb
	.long	0x9c
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1450
	.byte	0x12
	.byte	0x81
	.byte	0xb
	.long	0x9c
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1451
	.byte	0x12
	.byte	0x84
	.byte	0xb
	.long	0x9c
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1452
	.byte	0x12
	.byte	0x87
	.byte	0xb
	.long	0x9c
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1453
	.byte	0x12
	.byte	0x88
	.byte	0xb
	.long	0x9c
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1454
	.byte	0x12
	.byte	0x89
	.byte	0xb
	.long	0x9c
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1455
	.byte	0x12
	.byte	0x8c
	.byte	0xc
	.long	0xc2
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1456
	.byte	0x12
	.byte	0x8f
	.byte	0xb
	.long	0x9c
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1457
	.byte	0x12
	.byte	0x90
	.byte	0xb
	.long	0x9c
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1458
	.byte	0x12
	.byte	0x93
	.byte	0xe
	.long	0x2cc9
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1459
	.byte	0x12
	.byte	0x96
	.byte	0xb
	.long	0x9c
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1460
	.byte	0x12
	.byte	0x9a
	.byte	0xb
	.long	0x9c
	.byte	0xfc
	.uleb128 0x1b
	.long	.LASF1461
	.byte	0x9e
	.byte	0xb
	.long	0x9c
	.value	0x100
	.uleb128 0x1b
	.long	.LASF1462
	.byte	0xa1
	.byte	0xf
	.long	0x2d0e
	.value	0x108
	.uleb128 0x1b
	.long	.LASF1463
	.byte	0xa4
	.byte	0xe
	.long	0x2f1
	.value	0x138
	.byte	0
	.uleb128 0x7
	.long	0x2ab8
	.uleb128 0x18
	.long	.LASF1464
	.byte	0x10
	.value	0x11e
	.long	0x289c
	.uleb128 0xd
	.long	0x77
	.byte	0x12
	.byte	0x36
	.byte	0x1
	.long	0x2cbd
	.uleb128 0x1
	.long	.LASF1465
	.byte	0
	.uleb128 0x1
	.long	.LASF1466
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1467
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.long	.LASF1468
	.byte	0x12
	.byte	0x3e
	.byte	0x3
	.long	0x2c9e
	.uleb128 0x7
	.long	0x2c92
	.uleb128 0xa
	.long	0x9c
	.long	0x2cde
	.uleb128 0xc
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.long	0x2f1
	.long	0x2cee
	.uleb128 0xc
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.long	0x9c
	.long	0x2cfe
	.uleb128 0xc
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.long	0x2f1
	.long	0x2d0e
	.uleb128 0xc
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.long	0x2890
	.long	0x2d1e
	.uleb128 0xc
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.long	.LASF1469
	.byte	0x12
	.byte	0xa6
	.byte	0x3
	.long	0x2ab8
	.uleb128 0xf
	.long	.LASF1470
	.byte	0x13
	.byte	0x3c
	.byte	0x13
	.long	0x397
	.uleb128 0xf
	.long	.LASF1471
	.byte	0x13
	.byte	0x55
	.byte	0xe
	.long	0x9c
	.uleb128 0xf
	.long	.LASF1472
	.byte	0x13
	.byte	0x56
	.byte	0xe
	.long	0x9c
	.uleb128 0xf
	.long	.LASF1473
	.byte	0x13
	.byte	0x6d
	.byte	0xc
	.long	0x9c
	.uleb128 0xf
	.long	.LASF1474
	.byte	0x13
	.byte	0x6e
	.byte	0xc
	.long	0x9c
	.uleb128 0xf
	.long	.LASF1475
	.byte	0x13
	.byte	0x9e
	.byte	0xd
	.long	0x9c
	.uleb128 0xa
	.long	0x2d1e
	.long	0x2d82
	.uleb128 0xc
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.long	.LASF1476
	.byte	0x13
	.byte	0xd4
	.byte	0x11
	.long	0x2d72
	.uleb128 0x6
	.long	.LASF1477
	.byte	0x14
	.byte	0x1e
	.byte	0x1f
	.long	0x2d9a
	.uleb128 0x16
	.long	.LASF1478
	.byte	0x30
	.byte	0x14
	.byte	0x20
	.byte	0x8
	.long	0x2e1d
	.uleb128 0x3
	.long	.LASF1479
	.byte	0x14
	.byte	0x23
	.byte	0xb
	.long	0xc2
	.byte	0
	.uleb128 0x3
	.long	.LASF1480
	.byte	0x14
	.byte	0x26
	.byte	0xa
	.long	0x9c
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1481
	.byte	0x14
	.byte	0x29
	.byte	0xa
	.long	0x9c
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1482
	.byte	0x14
	.byte	0x2c
	.byte	0x10
	.long	0x2e1d
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1483
	.byte	0x14
	.byte	0x2f
	.byte	0xa
	.long	0x9c
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1484
	.byte	0x14
	.byte	0x32
	.byte	0xa
	.long	0x9c
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1485
	.byte	0x14
	.byte	0x35
	.byte	0xb
	.long	0x7e
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1486
	.byte	0x14
	.byte	0x3a
	.byte	0xa
	.long	0x9c
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1487
	.byte	0x14
	.byte	0x3d
	.byte	0xa
	.long	0x9c
	.byte	0x2c
	.byte	0
	.uleb128 0x7
	.long	0x2d8e
	.uleb128 0x14
	.byte	0x20
	.byte	0x14
	.byte	0x46
	.long	0x2e5f
	.uleb128 0x3
	.long	.LASF1479
	.byte	0x14
	.byte	0x49
	.byte	0xb
	.long	0xc2
	.byte	0
	.uleb128 0x3
	.long	.LASF1487
	.byte	0x14
	.byte	0x4c
	.byte	0xa
	.long	0x9c
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1485
	.byte	0x14
	.byte	0x4f
	.byte	0xb
	.long	0x7e
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1488
	.byte	0x14
	.byte	0x52
	.byte	0x9
	.long	0x9c
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.long	.LASF1489
	.byte	0x14
	.byte	0x54
	.byte	0x3
	.long	0x2e22
	.uleb128 0xa
	.long	0x2d8e
	.long	0x2e76
	.uleb128 0x21
	.byte	0
	.uleb128 0xf
	.long	.LASF1490
	.byte	0x14
	.byte	0x5a
	.byte	0x12
	.long	0x2e6b
	.uleb128 0xa
	.long	0x2e5f
	.long	0x2e8d
	.uleb128 0x21
	.byte	0
	.uleb128 0xf
	.long	.LASF1491
	.byte	0x14
	.byte	0x5d
	.byte	0x14
	.long	0x2e82
	.uleb128 0xd
	.long	0x77
	.byte	0x14
	.byte	0x64
	.byte	0x1
	.long	0x3044
	.uleb128 0x1
	.long	.LASF1492
	.byte	0
	.uleb128 0x1
	.long	.LASF1493
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1494
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1495
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1496
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1497
	.byte	0x5
	.uleb128 0x1
	.long	.LASF1498
	.byte	0x6
	.uleb128 0x1
	.long	.LASF1499
	.byte	0x7
	.uleb128 0x1
	.long	.LASF1500
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1501
	.byte	0x9
	.uleb128 0x1
	.long	.LASF1502
	.byte	0xa
	.uleb128 0x1
	.long	.LASF1503
	.byte	0xb
	.uleb128 0x1
	.long	.LASF1504
	.byte	0xc
	.uleb128 0x1
	.long	.LASF1505
	.byte	0xd
	.uleb128 0x1
	.long	.LASF1506
	.byte	0xe
	.uleb128 0x1
	.long	.LASF1507
	.byte	0xf
	.uleb128 0x1
	.long	.LASF1508
	.byte	0x10
	.uleb128 0x1
	.long	.LASF1509
	.byte	0x11
	.uleb128 0x1
	.long	.LASF1510
	.byte	0x12
	.uleb128 0x1
	.long	.LASF1511
	.byte	0x13
	.uleb128 0x1
	.long	.LASF1512
	.byte	0x14
	.uleb128 0x1
	.long	.LASF1513
	.byte	0x15
	.uleb128 0x1
	.long	.LASF1514
	.byte	0x16
	.uleb128 0x1
	.long	.LASF1515
	.byte	0x17
	.uleb128 0x1
	.long	.LASF1516
	.byte	0x18
	.uleb128 0x1
	.long	.LASF1517
	.byte	0x19
	.uleb128 0x1
	.long	.LASF1518
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF1519
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF1520
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF1521
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF1522
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF1523
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF1524
	.byte	0x20
	.uleb128 0x1
	.long	.LASF1525
	.byte	0x21
	.uleb128 0x1
	.long	.LASF1526
	.byte	0x22
	.uleb128 0x1
	.long	.LASF1527
	.byte	0x23
	.uleb128 0x1
	.long	.LASF1528
	.byte	0x24
	.uleb128 0x1
	.long	.LASF1529
	.byte	0x25
	.uleb128 0x1
	.long	.LASF1530
	.byte	0x26
	.uleb128 0x1
	.long	.LASF1531
	.byte	0x27
	.uleb128 0x1
	.long	.LASF1532
	.byte	0x28
	.uleb128 0x1
	.long	.LASF1533
	.byte	0x29
	.uleb128 0x1
	.long	.LASF1534
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF1535
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF1536
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF1537
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF1538
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF1539
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF1540
	.byte	0x30
	.uleb128 0x1
	.long	.LASF1541
	.byte	0x31
	.uleb128 0x1
	.long	.LASF1542
	.byte	0x32
	.uleb128 0x1
	.long	.LASF1543
	.byte	0x33
	.uleb128 0x1
	.long	.LASF1544
	.byte	0x34
	.uleb128 0x1
	.long	.LASF1545
	.byte	0x35
	.uleb128 0x1
	.long	.LASF1546
	.byte	0x36
	.uleb128 0x1
	.long	.LASF1547
	.byte	0x37
	.uleb128 0x1
	.long	.LASF1548
	.byte	0x38
	.uleb128 0x1
	.long	.LASF1549
	.byte	0x39
	.uleb128 0x1
	.long	.LASF1550
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF1551
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF1552
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF1553
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF1554
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF1555
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF1556
	.byte	0x40
	.uleb128 0x1
	.long	.LASF1557
	.byte	0x41
	.uleb128 0x1
	.long	.LASF1558
	.byte	0x42
	.uleb128 0x1
	.long	.LASF1559
	.byte	0x43
	.uleb128 0x1
	.long	.LASF1560
	.byte	0x44
	.byte	0
	.uleb128 0xd
	.long	0x77
	.byte	0x14
	.byte	0xb2
	.byte	0x1
	.long	0x32e5
	.uleb128 0x1
	.long	.LASF1561
	.byte	0
	.uleb128 0x1
	.long	.LASF1562
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1563
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1564
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1565
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1566
	.byte	0x5
	.uleb128 0x1
	.long	.LASF1567
	.byte	0x6
	.uleb128 0x1
	.long	.LASF1568
	.byte	0x7
	.uleb128 0x1
	.long	.LASF1569
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1570
	.byte	0x9
	.uleb128 0x1
	.long	.LASF1571
	.byte	0xa
	.uleb128 0x1
	.long	.LASF1572
	.byte	0xb
	.uleb128 0x1
	.long	.LASF1573
	.byte	0xc
	.uleb128 0x1
	.long	.LASF1574
	.byte	0xd
	.uleb128 0x1
	.long	.LASF1575
	.byte	0xe
	.uleb128 0x1
	.long	.LASF1576
	.byte	0xf
	.uleb128 0x1
	.long	.LASF1577
	.byte	0x10
	.uleb128 0x1
	.long	.LASF1578
	.byte	0x11
	.uleb128 0x1
	.long	.LASF1579
	.byte	0x12
	.uleb128 0x1
	.long	.LASF1580
	.byte	0x13
	.uleb128 0x1
	.long	.LASF1581
	.byte	0x14
	.uleb128 0x1
	.long	.LASF1582
	.byte	0x15
	.uleb128 0x1
	.long	.LASF1583
	.byte	0x16
	.uleb128 0x1
	.long	.LASF1584
	.byte	0x17
	.uleb128 0x1
	.long	.LASF1585
	.byte	0x18
	.uleb128 0x1
	.long	.LASF1586
	.byte	0x19
	.uleb128 0x1
	.long	.LASF1587
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF1588
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF1589
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF1590
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF1591
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF1592
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF1593
	.byte	0x20
	.uleb128 0x1
	.long	.LASF1594
	.byte	0x21
	.uleb128 0x1
	.long	.LASF1595
	.byte	0x22
	.uleb128 0x1
	.long	.LASF1596
	.byte	0x23
	.uleb128 0x1
	.long	.LASF1597
	.byte	0x24
	.uleb128 0x1
	.long	.LASF1598
	.byte	0x25
	.uleb128 0x1
	.long	.LASF1599
	.byte	0x26
	.uleb128 0x1
	.long	.LASF1600
	.byte	0x27
	.uleb128 0x1
	.long	.LASF1601
	.byte	0x28
	.uleb128 0x1
	.long	.LASF1602
	.byte	0x29
	.uleb128 0x1
	.long	.LASF1603
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF1604
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF1605
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF1606
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF1607
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF1608
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF1609
	.byte	0x30
	.uleb128 0x1
	.long	.LASF1610
	.byte	0x31
	.uleb128 0x1
	.long	.LASF1611
	.byte	0x32
	.uleb128 0x1
	.long	.LASF1612
	.byte	0x33
	.uleb128 0x1
	.long	.LASF1613
	.byte	0x34
	.uleb128 0x1
	.long	.LASF1614
	.byte	0x35
	.uleb128 0x1
	.long	.LASF1615
	.byte	0x36
	.uleb128 0x1
	.long	.LASF1616
	.byte	0x37
	.uleb128 0x1
	.long	.LASF1617
	.byte	0x38
	.uleb128 0x1
	.long	.LASF1618
	.byte	0x39
	.uleb128 0x1
	.long	.LASF1619
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF1620
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF1621
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF1622
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF1623
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF1624
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF1625
	.byte	0x40
	.uleb128 0x1
	.long	.LASF1626
	.byte	0x41
	.uleb128 0x1
	.long	.LASF1627
	.byte	0x42
	.uleb128 0x1
	.long	.LASF1628
	.byte	0x43
	.uleb128 0x1
	.long	.LASF1629
	.byte	0x44
	.uleb128 0x1
	.long	.LASF1630
	.byte	0x45
	.uleb128 0x1
	.long	.LASF1631
	.byte	0x46
	.uleb128 0x1
	.long	.LASF1632
	.byte	0x47
	.uleb128 0x1
	.long	.LASF1633
	.byte	0x48
	.uleb128 0x1
	.long	.LASF1634
	.byte	0x49
	.uleb128 0x1
	.long	.LASF1635
	.byte	0x4a
	.uleb128 0x1
	.long	.LASF1636
	.byte	0x4b
	.uleb128 0x1
	.long	.LASF1637
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF1638
	.byte	0x4d
	.uleb128 0x1
	.long	.LASF1639
	.byte	0x4e
	.uleb128 0x1
	.long	.LASF1640
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF1641
	.byte	0x50
	.uleb128 0x1
	.long	.LASF1642
	.byte	0x51
	.uleb128 0x1
	.long	.LASF1643
	.byte	0x52
	.uleb128 0x1
	.long	.LASF1644
	.byte	0x53
	.uleb128 0x1
	.long	.LASF1645
	.byte	0x54
	.uleb128 0x1
	.long	.LASF1646
	.byte	0x55
	.uleb128 0x1
	.long	.LASF1647
	.byte	0x56
	.uleb128 0x1
	.long	.LASF1648
	.byte	0x57
	.uleb128 0x1
	.long	.LASF1649
	.byte	0x58
	.uleb128 0x1
	.long	.LASF1650
	.byte	0x59
	.uleb128 0x1
	.long	.LASF1651
	.byte	0x5a
	.uleb128 0x1
	.long	.LASF1652
	.byte	0x5b
	.uleb128 0x1
	.long	.LASF1653
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF1654
	.byte	0x5d
	.uleb128 0x1
	.long	.LASF1655
	.byte	0x5e
	.uleb128 0x1
	.long	.LASF1656
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF1657
	.byte	0x60
	.uleb128 0x1
	.long	.LASF1658
	.byte	0x61
	.uleb128 0x1
	.long	.LASF1659
	.byte	0x62
	.uleb128 0x1
	.long	.LASF1660
	.byte	0x63
	.uleb128 0x1
	.long	.LASF1661
	.byte	0x64
	.uleb128 0x1
	.long	.LASF1662
	.byte	0x65
	.uleb128 0x1
	.long	.LASF1663
	.byte	0x66
	.uleb128 0x1
	.long	.LASF1664
	.byte	0x67
	.uleb128 0x1
	.long	.LASF1665
	.byte	0x68
	.uleb128 0x1
	.long	.LASF1666
	.byte	0x69
	.uleb128 0x1
	.long	.LASF1667
	.byte	0x6a
	.uleb128 0x1
	.long	.LASF1668
	.byte	0x6b
	.uleb128 0x1
	.long	.LASF1669
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF1670
	.byte	0x6d
	.byte	0
	.uleb128 0x16
	.long	.LASF1671
	.byte	0x28
	.byte	0x15
	.byte	0x3a
	.byte	0x10
	.long	0x3340
	.uleb128 0x3
	.long	.LASF1672
	.byte	0x15
	.byte	0x3c
	.byte	0xb
	.long	0x9c
	.byte	0
	.uleb128 0x3
	.long	.LASF1673
	.byte	0x15
	.byte	0x3d
	.byte	0xd
	.long	0x3340
	.byte	0x8
	.uleb128 0x8
	.string	"tag"
	.byte	0x15
	.byte	0x3e
	.byte	0xb
	.long	0x9c
	.byte	0x10
	.uleb128 0x8
	.string	"id"
	.byte	0x15
	.byte	0x3f
	.byte	0xb
	.long	0x9c
	.byte	0x14
	.uleb128 0x3
	.long	.LASF117
	.byte	0x15
	.byte	0x40
	.byte	0x18
	.long	0x3345
	.byte	0x18
	.uleb128 0x3
	.long	.LASF116
	.byte	0x15
	.byte	0x41
	.byte	0x18
	.long	0x3345
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	0x7e
	.uleb128 0x7
	.long	0x32e5
	.uleb128 0x6
	.long	.LASF1674
	.byte	0x15
	.byte	0x42
	.byte	0x3
	.long	0x32e5
	.uleb128 0x14
	.byte	0x8
	.byte	0x11
	.byte	0x47
	.long	0x3375
	.uleb128 0x8
	.string	"x"
	.byte	0x11
	.byte	0x49
	.byte	0xd
	.long	0x4ff
	.byte	0
	.uleb128 0x8
	.string	"y"
	.byte	0x11
	.byte	0x4a
	.byte	0xd
	.long	0x4ff
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	.LASF1675
	.byte	0x11
	.byte	0x4c
	.byte	0x3
	.long	0x3356
	.uleb128 0x14
	.byte	0x28
	.byte	0x11
	.byte	0x58
	.long	0x33b8
	.uleb128 0x3
	.long	.LASF1406
	.byte	0x11
	.byte	0x5a
	.byte	0x10
	.long	0x613
	.byte	0
	.uleb128 0x8
	.string	"x"
	.byte	0x11
	.byte	0x5b
	.byte	0xe
	.long	0x4ff
	.byte	0x18
	.uleb128 0x8
	.string	"y"
	.byte	0x11
	.byte	0x5c
	.byte	0xe
	.long	0x4ff
	.byte	0x1c
	.uleb128 0x8
	.string	"z"
	.byte	0x11
	.byte	0x5d
	.byte	0xe
	.long	0x4ff
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.long	.LASF1676
	.byte	0x11
	.byte	0x5f
	.byte	0x3
	.long	0x3381
	.uleb128 0x14
	.byte	0x80
	.byte	0x11
	.byte	0x65
	.long	0x349d
	.uleb128 0x3
	.long	.LASF1677
	.byte	0x11
	.byte	0x67
	.byte	0xd
	.long	0x4ff
	.byte	0
	.uleb128 0x3
	.long	.LASF1678
	.byte	0x11
	.byte	0x68
	.byte	0xd
	.long	0x4ff
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1679
	.byte	0x11
	.byte	0x69
	.byte	0xb
	.long	0x95
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1680
	.byte	0x11
	.byte	0x6a
	.byte	0xb
	.long	0x95
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1681
	.byte	0x11
	.byte	0x6b
	.byte	0xb
	.long	0x95
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1682
	.byte	0x11
	.byte	0x6c
	.byte	0xb
	.long	0x95
	.byte	0xe
	.uleb128 0x8
	.string	"tag"
	.byte	0x11
	.byte	0x6d
	.byte	0xb
	.long	0x95
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1683
	.byte	0x11
	.byte	0x70
	.byte	0xa
	.long	0x9c
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1684
	.byte	0x11
	.byte	0x73
	.byte	0xd
	.long	0x2cc9
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1685
	.byte	0x11
	.byte	0x76
	.byte	0xa
	.long	0x2cee
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1686
	.byte	0x11
	.byte	0x79
	.byte	0x11
	.long	0x33b8
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1417
	.byte	0x11
	.byte	0x7c
	.byte	0xa
	.long	0x9c
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1687
	.byte	0x11
	.byte	0x7f
	.byte	0xd
	.long	0x2cc9
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1688
	.byte	0x11
	.byte	0x82
	.byte	0xb
	.long	0x7e
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1689
	.byte	0x11
	.byte	0x84
	.byte	0xb
	.long	0x9c
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1690
	.byte	0x11
	.byte	0x85
	.byte	0x15
	.long	0x355d
	.byte	0x78
	.byte	0
	.uleb128 0x16
	.long	.LASF1691
	.byte	0x58
	.byte	0x11
	.byte	0xb3
	.byte	0x10
	.long	0x355d
	.uleb128 0x8
	.string	"v1"
	.byte	0x11
	.byte	0xb6
	.byte	0xf
	.long	0x35a9
	.byte	0
	.uleb128 0x8
	.string	"v2"
	.byte	0x11
	.byte	0xb7
	.byte	0xf
	.long	0x35a9
	.byte	0x8
	.uleb128 0x8
	.string	"dx"
	.byte	0x11
	.byte	0xba
	.byte	0xd
	.long	0x4ff
	.byte	0x10
	.uleb128 0x8
	.string	"dy"
	.byte	0x11
	.byte	0xbb
	.byte	0xd
	.long	0x4ff
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1397
	.byte	0x11
	.byte	0xbe
	.byte	0xb
	.long	0x95
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1682
	.byte	0x11
	.byte	0xbf
	.byte	0xb
	.long	0x95
	.byte	0x1a
	.uleb128 0x8
	.string	"tag"
	.byte	0x11
	.byte	0xc0
	.byte	0xb
	.long	0x95
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1692
	.byte	0x11
	.byte	0xc4
	.byte	0xb
	.long	0x49d
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1693
	.byte	0x11
	.byte	0xc8
	.byte	0xd
	.long	0x35ae
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1694
	.byte	0x11
	.byte	0xcb
	.byte	0x11
	.long	0x359d
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1695
	.byte	0x11
	.byte	0xcf
	.byte	0xf
	.long	0x3573
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1696
	.byte	0x11
	.byte	0xd0
	.byte	0xf
	.long	0x3573
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1417
	.byte	0x11
	.byte	0xd3
	.byte	0xa
	.long	0x9c
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1688
	.byte	0x11
	.byte	0xd6
	.byte	0xb
	.long	0x7e
	.byte	0x50
	.byte	0
	.uleb128 0x7
	.long	0x3562
	.uleb128 0x7
	.long	0x349d
	.uleb128 0x6
	.long	.LASF1697
	.byte	0x11
	.byte	0x87
	.byte	0x3
	.long	0x33c4
	.uleb128 0x7
	.long	0x3567
	.uleb128 0xd
	.long	0x77
	.byte	0x11
	.byte	0xa9
	.byte	0x1
	.long	0x359d
	.uleb128 0x1
	.long	.LASF1698
	.byte	0
	.uleb128 0x1
	.long	.LASF1699
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1700
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1701
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF1702
	.byte	0x11
	.byte	0xaf
	.byte	0x3
	.long	0x3578
	.uleb128 0x7
	.long	0x3375
	.uleb128 0xa
	.long	0x4ff
	.long	0x35be
	.uleb128 0xc
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	0x9c
	.uleb128 0xa
	.long	0x4a
	.long	0x35d3
	.uleb128 0xc
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.long	0x51
	.long	0x35e3
	.uleb128 0xc
	.long	0x43
	.byte	0xb
	.byte	0
	.uleb128 0x19
	.long	0x35d3
	.uleb128 0x22
	.long	.LASF1703
	.byte	0x30
	.byte	0xc
	.long	0x35e3
	.uleb128 0x9
	.byte	0x3
	.quad	snd_prefixen
	.uleb128 0x14
	.byte	0x18
	.byte	0x1
	.byte	0x5d
	.long	0x362d
	.uleb128 0x3
	.long	.LASF1704
	.byte	0x1
	.byte	0x60
	.byte	0x10
	.long	0x2e1d
	.byte	0
	.uleb128 0x3
	.long	.LASF1705
	.byte	0x1
	.byte	0x63
	.byte	0xb
	.long	0x7e
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1488
	.byte	0x1
	.byte	0x66
	.byte	0xa
	.long	0x9c
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	.LASF1706
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.long	0x35fd
	.uleb128 0x13
	.long	.LASF1708
	.byte	0x6c
	.byte	0x13
	.long	0x364e
	.uleb128 0x9
	.byte	0x3
	.quad	channels
	.uleb128 0x7
	.long	0x362d
	.uleb128 0x23
	.long	0x2d4e
	.byte	0x71
	.uleb128 0x9
	.byte	0x3
	.quad	snd_SfxVolume
	.uleb128 0x23
	.long	0x2d5a
	.byte	0x74
	.uleb128 0x9
	.byte	0x3
	.quad	snd_MusicVolume
	.uleb128 0x13
	.long	.LASF1709
	.byte	0x79
	.byte	0x11
	.long	0x2f1
	.uleb128 0x9
	.byte	0x3
	.quad	mus_paused
	.uleb128 0x13
	.long	.LASF1710
	.byte	0x7c
	.byte	0x15
	.long	0x369d
	.uleb128 0x9
	.byte	0x3
	.quad	mus_playing
	.uleb128 0x7
	.long	0x2e5f
	.uleb128 0x22
	.long	.LASF1711
	.byte	0x81
	.byte	0x7
	.long	0x9c
	.uleb128 0x9
	.byte	0x3
	.quad	numChannels
	.uleb128 0x13
	.long	.LASF1712
	.byte	0x83
	.byte	0xd
	.long	0x9c
	.uleb128 0x9
	.byte	0x3
	.quad	nextcleanup
	.uleb128 0x12
	.long	.LASF1713
	.byte	0xa
	.byte	0x28
	.byte	0x9
	.long	0x4ff
	.long	0x36e7
	.uleb128 0x4
	.long	0x4ff
	.uleb128 0x4
	.long	0x4ff
	.byte	0
	.uleb128 0x12
	.long	.LASF1714
	.byte	0x16
	.byte	0x7f
	.byte	0x1
	.long	0x536
	.long	0x370c
	.uleb128 0x4
	.long	0x4ff
	.uleb128 0x4
	.long	0x4ff
	.uleb128 0x4
	.long	0x4ff
	.uleb128 0x4
	.long	0x4ff
	.byte	0
	.uleb128 0x11
	.long	.LASF1715
	.byte	0x17
	.byte	0x49
	.byte	0x6
	.long	0x371e
	.uleb128 0x4
	.long	0x9c
	.byte	0
	.uleb128 0x11
	.long	.LASF1716
	.byte	0x15
	.byte	0x36
	.byte	0x9
	.long	0x3735
	.uleb128 0x4
	.long	0x7e
	.uleb128 0x4
	.long	0x9c
	.byte	0
	.uleb128 0x11
	.long	.LASF1717
	.byte	0x17
	.byte	0x71
	.byte	0x6
	.long	0x3747
	.uleb128 0x4
	.long	0x9c
	.byte	0
	.uleb128 0x11
	.long	.LASF1718
	.byte	0x17
	.byte	0x6f
	.byte	0x6
	.long	0x3759
	.uleb128 0x4
	.long	0x9c
	.byte	0
	.uleb128 0x11
	.long	.LASF1719
	.byte	0x17
	.byte	0x6b
	.byte	0x1
	.long	0x3770
	.uleb128 0x4
	.long	0x9c
	.uleb128 0x4
	.long	0x9c
	.byte	0
	.uleb128 0x12
	.long	.LASF1720
	.byte	0x17
	.byte	0x65
	.byte	0x5
	.long	0x9c
	.long	0x3786
	.uleb128 0x4
	.long	0x7e
	.byte	0
	.uleb128 0x12
	.long	.LASF1721
	.byte	0x18
	.byte	0x4e
	.byte	0x7
	.long	0x7e
	.long	0x37a1
	.uleb128 0x4
	.long	0x9c
	.uleb128 0x4
	.long	0x9c
	.byte	0
	.uleb128 0x12
	.long	.LASF1722
	.byte	0x18
	.byte	0x49
	.byte	0x5
	.long	0x9c
	.long	0x37b7
	.uleb128 0x4
	.long	0xc2
	.byte	0
	.uleb128 0x24
	.long	.LASF1723
	.value	0x16d
	.long	0x9c
	.long	0x37d2
	.uleb128 0x4
	.long	0xc2
	.uleb128 0x4
	.long	0x2aa
	.uleb128 0x17
	.byte	0
	.uleb128 0x11
	.long	.LASF1724
	.byte	0x17
	.byte	0x60
	.byte	0x6
	.long	0x37e4
	.uleb128 0x4
	.long	0x9c
	.byte	0
	.uleb128 0x11
	.long	.LASF1725
	.byte	0x17
	.byte	0x53
	.byte	0x1
	.long	0x3805
	.uleb128 0x4
	.long	0x9c
	.uleb128 0x4
	.long	0x9c
	.uleb128 0x4
	.long	0x9c
	.uleb128 0x4
	.long	0x9c
	.byte	0
	.uleb128 0x12
	.long	.LASF1726
	.byte	0x17
	.byte	0x4e
	.byte	0x5
	.long	0x9c
	.long	0x381b
	.uleb128 0x4
	.long	0x9c
	.byte	0
	.uleb128 0x11
	.long	.LASF1727
	.byte	0x17
	.byte	0x63
	.byte	0x6
	.long	0x382d
	.uleb128 0x4
	.long	0x9c
	.byte	0
	.uleb128 0x11
	.long	.LASF1728
	.byte	0x17
	.byte	0x62
	.byte	0x6
	.long	0x383f
	.uleb128 0x4
	.long	0x9c
	.byte	0
	.uleb128 0x12
	.long	.LASF1729
	.byte	0x17
	.byte	0x40
	.byte	0x1
	.long	0x9c
	.long	0x3869
	.uleb128 0x4
	.long	0x9c
	.uleb128 0x4
	.long	0x9c
	.uleb128 0x4
	.long	0x9c
	.uleb128 0x4
	.long	0x9c
	.uleb128 0x4
	.long	0x9c
	.byte	0
	.uleb128 0x12
	.long	.LASF1730
	.byte	0x17
	.byte	0x3b
	.byte	0x5
	.long	0x9c
	.long	0x387f
	.uleb128 0x4
	.long	0x2e1d
	.byte	0
	.uleb128 0x33
	.long	.LASF1768
	.byte	0x1a
	.byte	0x21
	.byte	0x5
	.long	0x9c
	.uleb128 0x11
	.long	.LASF1731
	.byte	0x19
	.byte	0x59
	.byte	0x6
	.long	0x389e
	.uleb128 0x4
	.long	0xc2
	.uleb128 0x17
	.byte	0
	.uleb128 0x12
	.long	.LASF1732
	.byte	0x15
	.byte	0x30
	.byte	0x7
	.long	0x7e
	.long	0x38be
	.uleb128 0x4
	.long	0x9c
	.uleb128 0x4
	.long	0x9c
	.uleb128 0x4
	.long	0x7e
	.byte	0
	.uleb128 0x34
	.long	.LASF1769
	.byte	0x17
	.byte	0x38
	.byte	0x6
	.long	0x38cc
	.uleb128 0x17
	.byte	0
	.uleb128 0x24
	.long	.LASF1733
	.value	0x165
	.long	0x9c
	.long	0x38e7
	.uleb128 0x4
	.long	0x2b9
	.uleb128 0x4
	.long	0x2af
	.uleb128 0x17
	.byte	0
	.uleb128 0x25
	.long	.LASF1735
	.value	0x33c
	.long	0x9c
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x3943
	.uleb128 0x9
	.long	.LASF1705
	.value	0x33d
	.byte	0xa
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF1704
	.value	0x33e
	.byte	0xe
	.long	0x2e1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.long	.LASF1734
	.value	0x341
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.string	"c"
	.value	0x343
	.byte	0x10
	.long	0x364e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF1736
	.value	0x2f1
	.long	0x9c
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x39eb
	.uleb128 0x9
	.long	.LASF1737
	.value	0x2f2
	.byte	0xb
	.long	0x2cc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF1738
	.value	0x2f3
	.byte	0xb
	.long	0x2cc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"vol"
	.value	0x2f4
	.long	0x35be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"sep"
	.value	0x2f5
	.long	0x35be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x9
	.long	.LASF1483
	.value	0x2f6
	.byte	0x9
	.long	0x35be
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xb
	.long	.LASF1739
	.value	0x2f8
	.byte	0xd
	.long	0x4ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.string	"adx"
	.value	0x2f9
	.byte	0xd
	.long	0x4ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"ady"
	.value	0x2fa
	.byte	0xd
	.long	0x4ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.long	.LASF97
	.value	0x2fb
	.byte	0xd
	.long	0x536
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x15
	.long	.LASF1740
	.value	0x2c4
	.byte	0x6
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a33
	.uleb128 0x9
	.long	.LASF1734
	.value	0x2c4
	.byte	0x18
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.string	"i"
	.value	0x2c7
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.string	"c"
	.value	0x2c8
	.byte	0x10
	.long	0x364e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.long	.LASF1753
	.value	0x2b1
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.long	.LASF1741
	.value	0x28a
	.byte	0x1
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x3aa7
	.uleb128 0x9
	.long	.LASF1742
	.value	0x28b
	.byte	0x9
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.long	.LASF1743
	.value	0x28c
	.byte	0x9
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.long	.LASF1744
	.value	0x28e
	.byte	0x12
	.long	0x369d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.long	.LASF1745
	.value	0x28f
	.byte	0xb
	.long	0x35c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x15
	.long	.LASF1746
	.value	0x284
	.byte	0x6
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ad5
	.uleb128 0x9
	.long	.LASF1747
	.value	0x284
	.byte	0x17
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.long	.LASF1748
	.value	0x277
	.byte	0x6
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b03
	.uleb128 0x9
	.long	.LASF1484
	.value	0x277
	.byte	0x19
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.long	.LASF1749
	.value	0x268
	.byte	0x6
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b31
	.uleb128 0x9
	.long	.LASF1484
	.value	0x268
	.byte	0x1b
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.long	.LASF1750
	.value	0x207
	.byte	0x6
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x3bd7
	.uleb128 0x9
	.long	.LASF1751
	.value	0x207
	.byte	0x1b
	.long	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xb
	.long	.LASF1752
	.value	0x209
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xb
	.long	.LASF1734
	.value	0x20a
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.long	.LASF1484
	.value	0x20b
	.byte	0xa
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x10
	.string	"sep"
	.value	0x20c
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xb
	.long	.LASF1483
	.value	0x20d
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x10
	.string	"sfx"
	.value	0x20e
	.byte	0x10
	.long	0x2e1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.string	"c"
	.value	0x20f
	.byte	0x10
	.long	0x364e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF1737
	.value	0x211
	.byte	0xd
	.long	0x2cc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1c
	.long	.LASF1754
	.value	0x1fa
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.long	.LASF1755
	.value	0x1f1
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.long	.LASF1756
	.value	0x1d7
	.byte	0x6
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c46
	.uleb128 0x9
	.long	.LASF1705
	.value	0x1d7
	.byte	0x18
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF1734
	.value	0x1da
	.byte	0x9
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.long	.LASF1757
	.value	0x18e
	.byte	0x1
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c83
	.uleb128 0x9
	.long	.LASF1705
	.value	0x18f
	.byte	0xa
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.long	.LASF1758
	.value	0x190
	.byte	0x8
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x27
	.long	.LASF1759
	.byte	0xff
	.byte	0x1
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d3c
	.uleb128 0x9
	.long	.LASF1760
	.value	0x100
	.byte	0xa
	.long	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x9
	.long	.LASF1758
	.value	0x101
	.byte	0x8
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x9
	.long	.LASF1484
	.value	0x102
	.byte	0x8
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x10
	.string	"rc"
	.value	0x105
	.byte	0x8
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.string	"sep"
	.value	0x106
	.byte	0x8
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xb
	.long	.LASF1483
	.value	0x107
	.byte	0x8
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xb
	.long	.LASF1481
	.value	0x108
	.byte	0x8
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x10
	.string	"sfx"
	.value	0x109
	.byte	0xe
	.long	0x2e1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.long	.LASF1734
	.value	0x10a
	.byte	0x8
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xb
	.long	.LASF1705
	.value	0x10c
	.byte	0xb
	.long	0x2cc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x27
	.long	.LASF1761
	.byte	0xca
	.byte	0x6
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d98
	.uleb128 0x13
	.long	.LASF1734
	.byte	0xcc
	.byte	0x7
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x13
	.long	.LASF1762
	.byte	0xcd
	.byte	0x7
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x35
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x13
	.long	.LASF1763
	.byte	0xdc
	.byte	0x9
	.long	0x3d98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x9c
	.long	0x3da8
	.uleb128 0xc
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0x36
	.long	.LASF1770
	.byte	0x1
	.byte	0xa1
	.byte	0x6
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF1764
	.byte	0xa2
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF1765
	.byte	0xa3
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.byte	0xa5
	.byte	0x8
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x15
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 18
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
	.uleb128 0x1c
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
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 11
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
	.uleb128 0x25
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
	.sleb128 1
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
	.uleb128 0x26
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
	.sleb128 9
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x32
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.byte	0
	.byte	0
	.uleb128 0x37
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
.LASF1740:
	.string	"S_StopChannel"
.LASF897:
	.string	"S_BSPI_RUN3"
.LASF898:
	.string	"S_BSPI_RUN4"
.LASF899:
	.string	"S_BSPI_RUN5"
.LASF900:
	.string	"S_BSPI_RUN6"
.LASF901:
	.string	"S_BSPI_RUN7"
.LASF902:
	.string	"S_BSPI_RUN8"
.LASF903:
	.string	"S_BSPI_RUN9"
.LASF1605:
	.string	"sfx_cybsit"
.LASF187:
	.string	"SPR_YSKU"
.LASF1571:
	.string	"sfx_sawup"
.LASF1458:
	.string	"attacker"
.LASF550:
	.string	"S_FIRE10"
.LASF551:
	.string	"S_FIRE11"
.LASF552:
	.string	"S_FIRE12"
.LASF553:
	.string	"S_FIRE13"
.LASF554:
	.string	"S_FIRE14"
.LASF555:
	.string	"S_FIRE15"
.LASF556:
	.string	"S_FIRE16"
.LASF557:
	.string	"S_FIRE17"
.LASF41:
	.string	"_unused2"
.LASF559:
	.string	"S_FIRE19"
.LASF1371:
	.string	"MT_MISC84"
.LASF1304:
	.string	"MT_MISC20"
.LASF1118:
	.string	"S_MEGA2"
.LASF27:
	.string	"_fileno"
.LASF1120:
	.string	"S_MEGA4"
.LASF1308:
	.string	"MT_MISC24"
.LASF1309:
	.string	"MT_MISC25"
.LASF1311:
	.string	"MT_MISC26"
.LASF1312:
	.string	"MT_MISC27"
.LASF1313:
	.string	"MT_MISC28"
.LASF1316:
	.string	"MT_MISC29"
.LASF749:
	.string	"S_SARG_PAIN2"
.LASF1423:
	.string	"threshold"
.LASF73:
	.string	"wp_pistol"
.LASF228:
	.string	"SPR_COL1"
.LASF229:
	.string	"SPR_COL2"
.LASF230:
	.string	"SPR_COL3"
.LASF231:
	.string	"SPR_COL4"
.LASF240:
	.string	"SPR_COL5"
.LASF234:
	.string	"SPR_COL6"
.LASF1716:
	.string	"Z_ChangeTag2"
.LASF1488:
	.string	"handle"
.LASF1557:
	.string	"mus_read_m"
.LASF1667:
	.string	"sfx_skesit"
.LASF1648:
	.string	"sfx_tink"
.LASF560:
	.string	"S_FIRE20"
.LASF561:
	.string	"S_FIRE21"
.LASF562:
	.string	"S_FIRE22"
.LASF563:
	.string	"S_FIRE23"
.LASF564:
	.string	"S_FIRE24"
.LASF214:
	.string	"SPR_COLU"
.LASF566:
	.string	"S_FIRE26"
.LASF567:
	.string	"S_FIRE27"
.LASF568:
	.string	"S_FIRE28"
.LASF569:
	.string	"S_FIRE29"
.LASF1700:
	.string	"ST_POSITIVE"
.LASF1758:
	.string	"sfx_id"
.LASF1317:
	.string	"MT_MISC30"
.LASF1232:
	.string	"action"
.LASF1319:
	.string	"MT_MISC32"
.LASF1320:
	.string	"MT_MISC33"
.LASF911:
	.string	"S_BSPI_PAIN"
.LASF1322:
	.string	"MT_MISC35"
.LASF383:
	.string	"S_BFGEXP"
.LASF87:
	.string	"am_misl"
.LASF1325:
	.string	"MT_MISC38"
.LASF1326:
	.string	"MT_MISC39"
.LASF1679:
	.string	"floorpic"
.LASF913:
	.string	"S_BSPI_DIE1"
.LASF1402:
	.string	"NUMPSPRITES"
.LASF1713:
	.string	"FixedMul"
.LASF918:
	.string	"S_BSPI_DIE6"
.LASF1654:
	.string	"sfx_getpow"
.LASF1552:
	.string	"mus_tense"
.LASF614:
	.string	"S_SKEL_RAISE4"
.LASF1493:
	.string	"mus_e1m1"
.LASF1434:
	.string	"viewz"
.LASF1495:
	.string	"mus_e1m3"
.LASF1496:
	.string	"mus_e1m4"
.LASF1497:
	.string	"mus_e1m5"
.LASF1498:
	.string	"mus_e1m6"
.LASF1499:
	.string	"mus_e1m7"
.LASF1500:
	.string	"mus_e1m8"
.LASF1501:
	.string	"mus_e1m9"
.LASF809:
	.string	"S_BOSS_RAISE1"
.LASF810:
	.string	"S_BOSS_RAISE2"
.LASF1251:
	.string	"MT_HEAD"
.LASF811:
	.string	"S_BOSS_RAISE3"
.LASF570:
	.string	"S_FIRE30"
.LASF715:
	.string	"S_TROO_PAIN"
.LASF1004:
	.string	"S_SSWV_DIE1"
.LASF814:
	.string	"S_BOSS_RAISE6"
.LASF1006:
	.string	"S_SSWV_DIE3"
.LASF1007:
	.string	"S_SSWV_DIE4"
.LASF1008:
	.string	"S_SSWV_DIE5"
.LASF182:
	.string	"SPR_BKEY"
.LASF826:
	.string	"S_BOS2_ATK1"
.LASF827:
	.string	"S_BOS2_ATK2"
.LASF828:
	.string	"S_BOS2_ATK3"
.LASF216:
	.string	"SPR_GOR1"
.LASF223:
	.string	"SPR_GOR2"
.LASF32:
	.string	"_shortbuf"
.LASF225:
	.string	"SPR_GOR4"
.LASF226:
	.string	"SPR_GOR5"
.LASF1329:
	.string	"MT_MISC42"
.LASF1330:
	.string	"MT_MISC43"
.LASF583:
	.string	"S_SKEL_RUN1"
.LASF584:
	.string	"S_SKEL_RUN2"
.LASF585:
	.string	"S_SKEL_RUN3"
.LASF586:
	.string	"S_SKEL_RUN4"
.LASF587:
	.string	"S_SKEL_RUN5"
.LASF588:
	.string	"S_SKEL_RUN6"
.LASF589:
	.string	"S_SKEL_RUN7"
.LASF590:
	.string	"S_SKEL_RUN8"
.LASF591:
	.string	"S_SKEL_RUN9"
.LASF76:
	.string	"wp_missile"
.LASF1069:
	.string	"S_BEXP2"
.LASF1379:
	.string	"seestate"
.LASF764:
	.string	"S_HEAD_ATK1"
.LASF765:
	.string	"S_HEAD_ATK2"
.LASF766:
	.string	"S_HEAD_ATK3"
.LASF1694:
	.string	"slopetype"
.LASF1018:
	.string	"S_SSWV_RAISE1"
.LASF1019:
	.string	"S_SSWV_RAISE2"
.LASF1020:
	.string	"S_SSWV_RAISE3"
.LASF1021:
	.string	"S_SSWV_RAISE4"
.LASF1022:
	.string	"S_SSWV_RAISE5"
.LASF97:
	.string	"angle"
.LASF1246:
	.string	"MT_FATSHOT"
.LASF202:
	.string	"SPR_CELL"
.LASF203:
	.string	"SPR_CELP"
.LASF1184:
	.string	"S_HEARTCOL"
.LASF1689:
	.string	"linecount"
.LASF1430:
	.string	"numlines"
.LASF1101:
	.string	"S_MEDI"
.LASF1108:
	.string	"S_PINV"
.LASF1295:
	.string	"MT_INS"
.LASF1338:
	.string	"MT_MISC51"
.LASF1339:
	.string	"MT_MISC52"
.LASF1293:
	.string	"MT_INV"
.LASF1341:
	.string	"MT_MISC54"
.LASF1198:
	.string	"S_BTORCHSHRT"
.LASF319:
	.string	"S_MISSILEUP"
.LASF1344:
	.string	"MT_MISC57"
.LASF1345:
	.string	"MT_MISC58"
.LASF1346:
	.string	"MT_MISC59"
.LASF496:
	.string	"S_SPOS_RAISE1"
.LASF1565:
	.string	"sfx_dshtgn"
.LASF290:
	.string	"S_SGUNFLASH1"
.LASF291:
	.string	"S_SGUNFLASH2"
.LASF838:
	.string	"S_BOS2_RAISE1"
.LASF839:
	.string	"S_BOS2_RAISE2"
.LASF840:
	.string	"S_BOS2_RAISE3"
.LASF841:
	.string	"S_BOS2_RAISE4"
.LASF842:
	.string	"S_BOS2_RAISE5"
.LASF13:
	.string	"_flags"
.LASF844:
	.string	"S_BOS2_RAISE7"
.LASF603:
	.string	"S_SKEL_PAIN"
.LASF1090:
	.string	"S_RKEY"
.LASF117:
	.string	"next"
.LASF1757:
	.string	"S_StartSound"
.LASF1577:
	.string	"sfx_firsht"
.LASF1569:
	.string	"sfx_plasma"
.LASF272:
	.string	"S_PISTOLUP"
.LASF958:
	.string	"S_CYBER_DIE8"
.LASF1582:
	.string	"sfx_dorcls"
.LASF11:
	.string	"__off_t"
.LASF1347:
	.string	"MT_MISC60"
.LASF1348:
	.string	"MT_MISC61"
.LASF1349:
	.string	"MT_MISC62"
.LASF1350:
	.string	"MT_MISC63"
.LASF1351:
	.string	"MT_MISC64"
.LASF1352:
	.string	"MT_MISC65"
.LASF1353:
	.string	"MT_MISC66"
.LASF1354:
	.string	"MT_MISC67"
.LASF387:
	.string	"S_EXPLODE1"
.LASF388:
	.string	"S_EXPLODE2"
.LASF389:
	.string	"S_EXPLODE3"
.LASF1660:
	.string	"sfx_manatk"
.LASF578:
	.string	"S_TRACEEXP1"
.LASF579:
	.string	"S_TRACEEXP2"
.LASF580:
	.string	"S_TRACEEXP3"
.LASF966:
	.string	"S_PAIN_RUN5"
.LASF1068:
	.string	"S_BEXP"
.LASF967:
	.string	"S_PAIN_RUN6"
.LASF1459:
	.string	"extralight"
.LASF1185:
	.string	"S_HEARTCOL2"
.LASF364:
	.string	"S_RBALLX1"
.LASF1703:
	.string	"snd_prefixen"
.LASF1568:
	.string	"sfx_dbload"
.LASF1393:
	.string	"height"
.LASF1278:
	.string	"MT_TELEPORTMAN"
.LASF33:
	.string	"_lock"
.LASF1357:
	.string	"MT_MISC70"
.LASF147:
	.string	"SPR_IFOG"
.LASF1359:
	.string	"MT_MISC72"
.LASF1360:
	.string	"MT_MISC73"
.LASF1361:
	.string	"MT_MISC74"
.LASF1362:
	.string	"MT_MISC75"
.LASF1363:
	.string	"MT_MISC76"
.LASF1191:
	.string	"S_GREENTORCH2"
.LASF1192:
	.string	"S_GREENTORCH3"
.LASF1193:
	.string	"S_GREENTORCH4"
.LASF1032:
	.string	"S_COMMKEEN9"
.LASF681:
	.string	"S_CPOS_PAIN2"
.LASF904:
	.string	"S_BSPI_RUN10"
.LASF905:
	.string	"S_BSPI_RUN11"
.LASF906:
	.string	"S_BSPI_RUN12"
.LASF988:
	.string	"S_SSWV_RUN1"
.LASF989:
	.string	"S_SSWV_RUN2"
.LASF990:
	.string	"S_SSWV_RUN3"
.LASF991:
	.string	"S_SSWV_RUN4"
.LASF992:
	.string	"S_SSWV_RUN5"
.LASF993:
	.string	"S_SSWV_RUN6"
.LASF994:
	.string	"S_SSWV_RUN7"
.LASF995:
	.string	"S_SSWV_RUN8"
.LASF1173:
	.string	"S_SKULLCOL"
.LASF1743:
	.string	"looping"
.LASF1522:
	.string	"mus_bunny"
.LASF1718:
	.string	"I_StopSong"
.LASF1245:
	.string	"MT_FATSO"
.LASF717:
	.string	"S_TROO_DIE1"
.LASF718:
	.string	"S_TROO_DIE2"
.LASF719:
	.string	"S_TROO_DIE3"
.LASF720:
	.string	"S_TROO_DIE4"
.LASF721:
	.string	"S_TROO_DIE5"
.LASF59:
	.string	"shareware"
.LASF1485:
	.string	"data"
.LASF1098:
	.string	"S_YSKULL"
.LASF1099:
	.string	"S_YSKULL2"
.LASF200:
	.string	"SPR_ROCK"
.LASF1270:
	.string	"MT_ROCKET"
.LASF1368:
	.string	"MT_MISC81"
.LASF1369:
	.string	"MT_MISC82"
.LASF1370:
	.string	"MT_MISC83"
.LASF676:
	.string	"S_CPOS_ATK1"
.LASF677:
	.string	"S_CPOS_ATK2"
.LASF678:
	.string	"S_CPOS_ATK3"
.LASF679:
	.string	"S_CPOS_ATK4"
.LASF1237:
	.string	"MT_PLAYER"
.LASF1759:
	.string	"S_StartSoundAtVolume"
.LASF212:
	.string	"SPR_SHOT"
.LASF405:
	.string	"S_IFOG2"
.LASF406:
	.string	"S_IFOG3"
.LASF407:
	.string	"S_IFOG4"
.LASF408:
	.string	"S_IFOG5"
.LASF1526:
	.string	"mus_stalks"
.LASF141:
	.string	"SPR_PLSE"
.LASF133:
	.string	"SPR_PLSF"
.LASF132:
	.string	"SPR_PLSG"
.LASF801:
	.string	"S_BOSS_PAIN2"
.LASF1475:
	.string	"consoleplayer"
.LASF501:
	.string	"S_VILE_STND"
.LASF1682:
	.string	"special"
.LASF1029:
	.string	"S_COMMKEEN6"
.LASF1030:
	.string	"S_COMMKEEN7"
.LASF1031:
	.string	"S_COMMKEEN8"
.LASF140:
	.string	"SPR_PLSS"
.LASF880:
	.string	"S_SPID_PAIN2"
.LASF1595:
	.string	"sfx_oof"
.LASF1394:
	.string	"mass"
.LASF1636:
	.string	"sfx_posact"
.LASF253:
	.string	"SPR_POB1"
.LASF254:
	.string	"SPR_POB2"
.LASF1737:
	.string	"listener"
.LASF1102:
	.string	"S_SOUL"
.LASF1627:
	.string	"sfx_skldth"
.LASF1112:
	.string	"S_PSTR"
.LASF1738:
	.string	"source"
.LASF944:
	.string	"S_CYBER_ATK1"
.LASF945:
	.string	"S_CYBER_ATK2"
.LASF946:
	.string	"S_CYBER_ATK3"
.LASF947:
	.string	"S_CYBER_ATK4"
.LASF948:
	.string	"S_CYBER_ATK5"
.LASF949:
	.string	"S_CYBER_ATK6"
.LASF1139:
	.string	"S_BFUG"
.LASF179:
	.string	"SPR_FCAN"
.LASF622:
	.string	"S_FATT_STND"
.LASF1059:
	.string	"S_BRAINEXPLODE1"
.LASF1060:
	.string	"S_BRAINEXPLODE2"
.LASF1061:
	.string	"S_BRAINEXPLODE3"
.LASF343:
	.string	"S_BFGUP"
.LASF1502:
	.string	"mus_e2m1"
.LASF1503:
	.string	"mus_e2m2"
.LASF1504:
	.string	"mus_e2m3"
.LASF1505:
	.string	"mus_e2m4"
.LASF1506:
	.string	"mus_e2m5"
.LASF1507:
	.string	"mus_e2m6"
.LASF184:
	.string	"SPR_YKEY"
.LASF1509:
	.string	"mus_e2m8"
.LASF1510:
	.string	"mus_e2m9"
.LASF730:
	.string	"S_TROO_RAISE1"
.LASF731:
	.string	"S_TROO_RAISE2"
.LASF732:
	.string	"S_TROO_RAISE3"
.LASF733:
	.string	"S_TROO_RAISE4"
.LASF734:
	.string	"S_TROO_RAISE5"
.LASF1721:
	.string	"W_CacheLumpNum"
.LASF1143:
	.string	"S_PLAS"
.LASF1025:
	.string	"S_COMMKEEN2"
.LASF1026:
	.string	"S_COMMKEEN3"
.LASF1027:
	.string	"S_COMMKEEN4"
.LASF1028:
	.string	"S_COMMKEEN5"
.LASF409:
	.string	"S_PLAY"
.LASF975:
	.string	"S_PAIN_DIE2"
.LASF976:
	.string	"S_PAIN_DIE3"
.LASF977:
	.string	"S_PAIN_DIE4"
.LASF978:
	.string	"S_PAIN_DIE5"
.LASF979:
	.string	"S_PAIN_DIE6"
.LASF1248:
	.string	"MT_TROOP"
.LASF530:
	.string	"S_VILE_PAIN2"
.LASF658:
	.string	"S_FATT_RAISE1"
.LASF77:
	.string	"wp_plasma"
.LASF660:
	.string	"S_FATT_RAISE3"
.LASF661:
	.string	"S_FATT_RAISE4"
.LASF662:
	.string	"S_FATT_RAISE5"
.LASF663:
	.string	"S_FATT_RAISE6"
.LASF19:
	.string	"_IO_write_end"
.LASF665:
	.string	"S_FATT_RAISE8"
.LASF374:
	.string	"S_ROCKET"
.LASF1269:
	.string	"MT_HEADSHOT"
.LASF1692:
	.string	"sidenum"
.LASF927:
	.string	"S_ARACH_PLAZ"
.LASF1166:
	.string	"S_STALAGTITE"
.LASF768:
	.string	"S_HEAD_PAIN2"
.LASF769:
	.string	"S_HEAD_PAIN3"
.LASF51:
	.string	"byte"
.LASF70:
	.string	"it_redskull"
.LASF1637:
	.string	"sfx_bgact"
.LASF1276:
	.string	"MT_TFOG"
.LASF477:
	.string	"S_SPOS_ATK1"
.LASF478:
	.string	"S_SPOS_ATK2"
.LASF479:
	.string	"S_SPOS_ATK3"
.LASF414:
	.string	"S_PLAY_ATK1"
.LASF415:
	.string	"S_PLAY_ATK2"
.LASF167:
	.string	"SPR_APLS"
.LASF1491:
	.string	"S_music"
.LASF105:
	.string	"finesine"
.LASF1451:
	.string	"refire"
.LASF1704:
	.string	"sfxinfo"
.LASF1528:
	.string	"mus_betwee"
.LASF1195:
	.string	"S_REDTORCH2"
.LASF1196:
	.string	"S_REDTORCH3"
.LASF1197:
	.string	"S_REDTORCH4"
.LASF704:
	.string	"S_TROO_RUN1"
.LASF705:
	.string	"S_TROO_RUN2"
.LASF706:
	.string	"S_TROO_RUN3"
.LASF707:
	.string	"S_TROO_RUN4"
.LASF708:
	.string	"S_TROO_RUN5"
.LASF709:
	.string	"S_TROO_RUN6"
.LASF710:
	.string	"S_TROO_RUN7"
.LASF711:
	.string	"S_TROO_RUN8"
.LASF1661:
	.string	"sfx_mandth"
.LASF158:
	.string	"SPR_CPOS"
.LASF619:
	.string	"S_FATSHOTX1"
.LASF620:
	.string	"S_FATSHOTX2"
.LASF621:
	.string	"S_FATSHOTX3"
.LASF699:
	.string	"S_CPOS_RAISE5"
.LASF700:
	.string	"S_CPOS_RAISE6"
.LASF701:
	.string	"S_CPOS_RAISE7"
.LASF72:
	.string	"wp_fist"
.LASF1387:
	.string	"missilestate"
.LASF188:
	.string	"SPR_STIM"
.LASF1715:
	.string	"I_StopSound"
.LASF735:
	.string	"S_SARG_STND"
.LASF960:
	.string	"S_CYBER_DIE10"
.LASF138:
	.string	"SPR_BAL1"
.LASF139:
	.string	"SPR_BAL2"
.LASF161:
	.string	"SPR_BAL7"
.LASF1418:
	.string	"info"
.LASF1631:
	.string	"sfx_bspdth"
.LASF1154:
	.string	"S_HEADSONSTICK"
.LASF1666:
	.string	"sfx_skeact"
.LASF1413:
	.string	"ceilingz"
.LASF1662:
	.string	"sfx_sssit"
.LASF611:
	.string	"S_SKEL_RAISE1"
.LASF126:
	.string	"SPR_SHT2"
.LASF265:
	.string	"S_PUNCH1"
.LASF266:
	.string	"S_PUNCH2"
.LASF267:
	.string	"S_PUNCH3"
.LASF268:
	.string	"S_PUNCH4"
.LASF269:
	.string	"S_PUNCH5"
.LASF628:
	.string	"S_FATT_RUN5"
.LASF264:
	.string	"S_PUNCHUP"
.LASF881:
	.string	"S_SPID_DIE1"
.LASF632:
	.string	"S_FATT_RUN9"
.LASF883:
	.string	"S_SPID_DIE3"
.LASF884:
	.string	"S_SPID_DIE4"
.LASF125:
	.string	"SPR_SHTF"
.LASF121:
	.string	"SPR_SHTG"
.LASF403:
	.string	"S_IFOG01"
.LASF404:
	.string	"S_IFOG02"
.LASF889:
	.string	"S_SPID_DIE9"
.LASF1131:
	.string	"S_AMMO"
.LASF1559:
	.string	"mus_dm2int"
.LASF1545:
	.string	"mus_count2"
.LASF88:
	.string	"NUMAMMO"
.LASF962:
	.string	"S_PAIN_RUN1"
.LASF963:
	.string	"S_PAIN_RUN2"
.LASF964:
	.string	"S_PAIN_RUN3"
.LASF965:
	.string	"S_PAIN_RUN4"
.LASF247:
	.string	"SPR_HDB1"
.LASF248:
	.string	"SPR_HDB2"
.LASF249:
	.string	"SPR_HDB3"
.LASF250:
	.string	"SPR_HDB4"
.LASF251:
	.string	"SPR_HDB5"
.LASF252:
	.string	"SPR_HDB6"
.LASF1238:
	.string	"MT_POSSESSED"
.LASF297:
	.string	"S_DSGUN3"
.LASF298:
	.string	"S_DSGUN4"
.LASF98:
	.string	"type"
.LASF317:
	.string	"S_MISSILE"
.LASF1745:
	.string	"namebuf"
.LASF1558:
	.string	"mus_dm2ttl"
.LASF1145:
	.string	"S_SHOT2"
.LASF1212:
	.string	"S_HANGTLOOKDN"
.LASF1420:
	.string	"movedir"
.LASF689:
	.string	"S_CPOS_XDIE1"
.LASF1748:
	.string	"S_SetSfxVolume"
.LASF1723:
	.string	"sprintf"
.LASF1736:
	.string	"S_AdjustSoundParams"
.LASF112:
	.string	"actionf_t"
.LASF107:
	.string	"actionf_v"
.LASF208:
	.string	"SPR_MGUN"
.LASF1250:
	.string	"MT_SHADOWS"
.LASF592:
	.string	"S_SKEL_RUN10"
.LASF593:
	.string	"S_SKEL_RUN11"
.LASF594:
	.string	"S_SKEL_RUN12"
.LASF260:
	.string	"S_NULL"
.LASF802:
	.string	"S_BOSS_DIE1"
.LASF803:
	.string	"S_BOSS_DIE2"
.LASF804:
	.string	"S_BOSS_DIE3"
.LASF805:
	.string	"S_BOSS_DIE4"
.LASF806:
	.string	"S_BOSS_DIE5"
.LASF807:
	.string	"S_BOSS_DIE6"
.LASF808:
	.string	"S_BOSS_DIE7"
.LASF972:
	.string	"S_PAIN_PAIN"
.LASF341:
	.string	"S_BFG"
.LASF1385:
	.string	"painsound"
.LASF1511:
	.string	"mus_e3m1"
.LASF1469:
	.string	"player_t"
.LASF1513:
	.string	"mus_e3m3"
.LASF987:
	.string	"S_SSWV_STND2"
.LASF1515:
	.string	"mus_e3m5"
.LASF1516:
	.string	"mus_e3m6"
.LASF1517:
	.string	"mus_e3m7"
.LASF1518:
	.string	"mus_e3m8"
.LASF1519:
	.string	"mus_e3m9"
.LASF209:
	.string	"SPR_CSAW"
.LASF1122:
	.string	"S_PMAP"
.LASF26:
	.string	"_chain"
.LASF1489:
	.string	"musicinfo_t"
.LASF1128:
	.string	"S_PVIS"
.LASF342:
	.string	"S_BFGDOWN"
.LASF1609:
	.string	"sfx_vilsit"
.LASF1262:
	.string	"MT_BOSSBRAIN"
.LASF155:
	.string	"SPR_SKEL"
.LASF337:
	.string	"S_PLASMA1"
.LASF338:
	.string	"S_PLASMA2"
.LASF1202:
	.string	"S_GTORCHSHRT"
.LASF1596:
	.string	"sfx_telept"
.LASF1431:
	.string	"firstline"
.LASF1136:
	.string	"S_SHEL"
.LASF893:
	.string	"S_BSPI_STND2"
.LASF5:
	.string	"unsigned char"
.LASF1630:
	.string	"sfx_spidth"
.LASF153:
	.string	"SPR_FATB"
.LASF1535:
	.string	"mus_stlks2"
.LASF258:
	.string	"NUMSPRITES"
.LASF159:
	.string	"SPR_SARG"
.LASF1508:
	.string	"mus_e2m7"
.LASF376:
	.string	"S_BFGSHOT2"
.LASF157:
	.string	"SPR_FATT"
.LASF1617:
	.string	"sfx_skeswg"
.LASF1103:
	.string	"S_SOUL2"
.LASF1104:
	.string	"S_SOUL3"
.LASF1105:
	.string	"S_SOUL4"
.LASF1106:
	.string	"S_SOUL5"
.LASF1107:
	.string	"S_SOUL6"
.LASF1767:
	.string	"_IO_lock_t"
.LASF863:
	.string	"S_SPID_RUN1"
.LASF864:
	.string	"S_SPID_RUN2"
.LASF865:
	.string	"S_SPID_RUN3"
.LASF866:
	.string	"S_SPID_RUN4"
.LASF867:
	.string	"S_SPID_RUN5"
.LASF868:
	.string	"S_SPID_RUN6"
.LASF869:
	.string	"S_SPID_RUN7"
.LASF870:
	.string	"S_SPID_RUN8"
.LASF102:
	.string	"float"
.LASF1070:
	.string	"S_BEXP3"
.LASF1071:
	.string	"S_BEXP4"
.LASF1575:
	.string	"sfx_rlaunc"
.LASF1159:
	.string	"S_DEADSTICK"
.LASF1460:
	.string	"fixedcolormap"
.LASF1445:
	.string	"weaponowned"
.LASF1279:
	.string	"MT_EXTRABFG"
.LASF449:
	.string	"S_POSS_DIE1"
.LASF450:
	.string	"S_POSS_DIE2"
.LASF451:
	.string	"S_POSS_DIE3"
.LASF452:
	.string	"S_POSS_DIE4"
.LASF453:
	.string	"S_POSS_DIE5"
.LASF279:
	.string	"S_SGUNDOWN"
.LASF1664:
	.string	"sfx_keenpn"
.LASF128:
	.string	"SPR_CHGF"
.LASF127:
	.string	"SPR_CHGG"
.LASF672:
	.string	"S_CPOS_RUN5"
.LASF931:
	.string	"S_ARACH_PLEX3"
.LASF673:
	.string	"S_CPOS_RUN6"
.LASF933:
	.string	"S_ARACH_PLEX5"
.LASF674:
	.string	"S_CPOS_RUN7"
.LASF1593:
	.string	"sfx_itemup"
.LASF1422:
	.string	"target"
.LASF238:
	.string	"SPR_CEYE"
.LASF1698:
	.string	"ST_HORIZONTAL"
.LASF980:
	.string	"S_PAIN_RAISE1"
.LASF981:
	.string	"S_PAIN_RAISE2"
.LASF982:
	.string	"S_PAIN_RAISE3"
.LASF983:
	.string	"S_PAIN_RAISE4"
.LASF984:
	.string	"S_PAIN_RAISE5"
.LASF617:
	.string	"S_FATSHOT1"
.LASF618:
	.string	"S_FATSHOT2"
.LASF1479:
	.string	"name"
.LASF1649:
	.string	"sfx_bdopn"
.LASF195:
	.string	"SPR_SUIT"
.LASF845:
	.string	"S_SKULL_STND"
.LASF1730:
	.string	"I_GetSfxLumpNum"
.LASF1561:
	.string	"sfx_None"
.LASF879:
	.string	"S_SPID_PAIN"
.LASF1374:
	.string	"NUMMOBJTYPES"
.LASF177:
	.string	"SPR_BAR1"
.LASF1739:
	.string	"approx_dist"
.LASF292:
	.string	"S_DSGUN"
.LASF1171:
	.string	"S_CANDLESTIK"
.LASF94:
	.string	"pw_allmap"
.LASF1227:
	.string	"NUMSTATES"
.LASF871:
	.string	"S_SPID_RUN9"
.LASF357:
	.string	"S_TBALL1"
.LASF358:
	.string	"S_TBALL2"
.LASF571:
	.string	"S_SMOKE1"
.LASF572:
	.string	"S_SMOKE2"
.LASF573:
	.string	"S_SMOKE3"
.LASF574:
	.string	"S_SMOKE4"
.LASF575:
	.string	"S_SMOKE5"
.LASF794:
	.string	"S_BOSS_RUN6"
.LASF795:
	.string	"S_BOSS_RUN7"
.LASF796:
	.string	"S_BOSS_RUN8"
.LASF160:
	.string	"SPR_HEAD"
.LASF1520:
	.string	"mus_inter"
.LASF1410:
	.string	"bprev"
.LASF221:
	.string	"SPR_POL1"
.LASF217:
	.string	"SPR_POL2"
.LASF220:
	.string	"SPR_POL3"
.LASF219:
	.string	"SPR_POL4"
.LASF218:
	.string	"SPR_POL5"
.LASF222:
	.string	"SPR_POL6"
.LASF1066:
	.string	"S_BAR1"
.LASF1164:
	.string	"S_MEAT4"
.LASF558:
	.string	"S_FIRE18"
.LASF1280:
	.string	"MT_MISC0"
.LASF1152:
	.string	"S_DEADTORSO"
.LASF294:
	.string	"S_DSGUNUP"
.LASF1656:
	.string	"sfx_boscub"
.LASF1473:
	.string	"snd_SfxVolume"
.LASF1618:
	.string	"sfx_pldeth"
.LASF1377:
	.string	"spawnstate"
.LASF1725:
	.string	"I_UpdateSoundParams"
.LASF1753:
	.string	"S_StopMusic"
.LASF703:
	.string	"S_TROO_STND2"
.LASF1223:
	.string	"S_TECH2LAMP"
.LASF1474:
	.string	"snd_MusicVolume"
.LASF1581:
	.string	"sfx_doropn"
.LASF1266:
	.string	"MT_SPAWNFIRE"
.LASF1756:
	.string	"S_StopSound"
.LASF1241:
	.string	"MT_FIRE"
.LASF1233:
	.string	"nextstate"
.LASF1472:
	.string	"gamemap"
.LASF800:
	.string	"S_BOSS_PAIN"
.LASF171:
	.string	"SPR_SSWV"
.LASF18:
	.string	"_IO_write_ptr"
.LASF1554:
	.string	"mus_openin"
.LASF1209:
	.string	"S_RTORCHSHRT4"
.LASF362:
	.string	"S_RBALL1"
.LASF363:
	.string	"S_RBALL2"
.LASF1591:
	.string	"sfx_pepain"
.LASF1167:
	.string	"S_TALLGRNCOL"
.LASF1729:
	.string	"I_StartSound"
.LASF1749:
	.string	"S_SetMusicVolume"
.LASF1425:
	.string	"lastlook"
.LASF1628:
	.string	"sfx_brsdth"
.LASF1536:
	.string	"mus_theda2"
.LASF1468:
	.string	"playerstate_t"
.LASF1156:
	.string	"S_HEADONASTICK"
.LASF436:
	.string	"S_POSS_RUN1"
.LASF378:
	.string	"S_BFGLAND2"
.LASF379:
	.string	"S_BFGLAND3"
.LASF380:
	.string	"S_BFGLAND4"
.LASF381:
	.string	"S_BFGLAND5"
.LASF382:
	.string	"S_BFGLAND6"
.LASF442:
	.string	"S_POSS_RUN7"
.LASF443:
	.string	"S_POSS_RUN8"
.LASF1717:
	.string	"I_UnRegisterSong"
.LASF425:
	.string	"S_PLAY_XDIE1"
.LASF426:
	.string	"S_PLAY_XDIE2"
.LASF427:
	.string	"S_PLAY_XDIE3"
.LASF428:
	.string	"S_PLAY_XDIE4"
.LASF429:
	.string	"S_PLAY_XDIE5"
.LASF430:
	.string	"S_PLAY_XDIE6"
.LASF431:
	.string	"S_PLAY_XDIE7"
.LASF432:
	.string	"S_PLAY_XDIE8"
.LASF433:
	.string	"S_PLAY_XDIE9"
.LASF831:
	.string	"S_BOS2_DIE1"
.LASF832:
	.string	"S_BOS2_DIE2"
.LASF833:
	.string	"S_BOS2_DIE3"
.LASF834:
	.string	"S_BOS2_DIE4"
.LASF835:
	.string	"S_BOS2_DIE5"
.LASF836:
	.string	"S_BOS2_DIE6"
.LASF837:
	.string	"S_BOS2_DIE7"
.LASF1397:
	.string	"flags"
.LASF757:
	.string	"S_SARG_RAISE2"
.LASF758:
	.string	"S_SARG_RAISE3"
.LASF401:
	.string	"S_TFOG10"
.LASF759:
	.string	"S_SARG_RAISE4"
.LASF1546:
	.string	"mus_ddtbl3"
.LASF454:
	.string	"S_POSS_XDIE1"
.LASF455:
	.string	"S_POSS_XDIE2"
.LASF456:
	.string	"S_POSS_XDIE3"
.LASF457:
	.string	"S_POSS_XDIE4"
.LASF458:
	.string	"S_POSS_XDIE5"
.LASF459:
	.string	"S_POSS_XDIE6"
.LASF460:
	.string	"S_POSS_XDIE7"
.LASF84:
	.string	"am_clip"
.LASF462:
	.string	"S_POSS_XDIE9"
.LASF1155:
	.string	"S_GIBS"
.LASF770:
	.string	"S_HEAD_DIE1"
.LASF771:
	.string	"S_HEAD_DIE2"
.LASF772:
	.string	"S_HEAD_DIE3"
.LASF773:
	.string	"S_HEAD_DIE4"
.LASF774:
	.string	"S_HEAD_DIE5"
.LASF775:
	.string	"S_HEAD_DIE6"
.LASF623:
	.string	"S_FATT_STND2"
.LASF1146:
	.string	"S_COLU"
.LASF273:
	.string	"S_PISTOL1"
.LASF274:
	.string	"S_PISTOL2"
.LASF275:
	.string	"S_PISTOL3"
.LASF276:
	.string	"S_PISTOL4"
.LASF612:
	.string	"S_SKEL_RAISE2"
.LASF613:
	.string	"S_SKEL_RAISE3"
.LASF42:
	.string	"FILE"
.LASF615:
	.string	"S_SKEL_RAISE5"
.LASF616:
	.string	"S_SKEL_RAISE6"
.LASF1175:
	.string	"S_BIGTREE"
.LASF1701:
	.string	"ST_NEGATIVE"
.LASF1085:
	.string	"S_BON2C"
.LASF1086:
	.string	"S_BON2D"
.LASF391:
	.string	"S_TFOG01"
.LASF392:
	.string	"S_TFOG02"
.LASF210:
	.string	"SPR_LAUN"
.LASF447:
	.string	"S_POSS_PAIN"
.LASF782:
	.string	"S_BRBALL1"
.LASF783:
	.string	"S_BRBALL2"
.LASF1532:
	.string	"mus_ddtblu"
.LASF1244:
	.string	"MT_SMOKE"
.LASF1258:
	.string	"MT_CYBORG"
.LASF1395:
	.string	"damage"
.LASF487:
	.string	"S_SPOS_XDIE1"
.LASF488:
	.string	"S_SPOS_XDIE2"
.LASF489:
	.string	"S_SPOS_XDIE3"
.LASF490:
	.string	"S_SPOS_XDIE4"
.LASF491:
	.string	"S_SPOS_XDIE5"
.LASF492:
	.string	"S_SPOS_XDIE6"
.LASF493:
	.string	"S_SPOS_XDIE7"
.LASF494:
	.string	"S_SPOS_XDIE8"
.LASF495:
	.string	"S_SPOS_XDIE9"
.LASF1589:
	.string	"sfx_vipain"
.LASF10:
	.string	"size_t"
.LASF1405:
	.string	"mobj_s"
.LASF1464:
	.string	"mobj_t"
.LASF1711:
	.string	"numChannels"
.LASF1088:
	.string	"S_BKEY"
.LASF92:
	.string	"pw_invisibility"
.LASF175:
	.string	"SPR_ARM1"
.LASF176:
	.string	"SPR_ARM2"
.LASF1240:
	.string	"MT_VILE"
.LASF1580:
	.string	"sfx_pstop"
.LASF68:
	.string	"it_blueskull"
.LASF1686:
	.string	"soundorg"
.LASF335:
	.string	"S_PLASMADOWN"
.LASF647:
	.string	"S_FATT_PAIN2"
.LASF1665:
	.string	"sfx_keendt"
.LASF1045:
	.string	"S_BRAINEYESEE"
.LASF1702:
	.string	"slopetype_t"
.LASF582:
	.string	"S_SKEL_STND2"
.LASF935:
	.string	"S_CYBER_STND2"
.LASF1236:
	.string	"state_t"
.LASF779:
	.string	"S_HEAD_RAISE4"
.LASF1005:
	.string	"S_SSWV_DIE2"
.LASF60:
	.string	"registered"
.LASF1640:
	.string	"sfx_bspwlk"
.LASF461:
	.string	"S_POSS_XDIE8"
.LASF1135:
	.string	"S_CELP"
.LASF1177:
	.string	"S_EVILEYE"
.LASF1203:
	.string	"S_GTORCHSHRT2"
.LASF1204:
	.string	"S_GTORCHSHRT3"
.LASF1205:
	.string	"S_GTORCHSHRT4"
.LASF1435:
	.string	"viewheight"
.LASF1409:
	.string	"bnext"
.LASF1746:
	.string	"S_StartMusic"
.LASF1659:
	.string	"sfx_bosdth"
.LASF22:
	.string	"_IO_save_base"
.LASF636:
	.string	"S_FATT_ATK1"
.LASF169:
	.string	"SPR_CYBR"
.LASF637:
	.string	"S_FATT_ATK2"
.LASF540:
	.string	"S_VILE_DIE10"
.LASF130:
	.string	"SPR_MISF"
.LASF129:
	.string	"SPR_MISG"
.LASF142:
	.string	"SPR_MISL"
.LASF1094:
	.string	"S_BSKULL"
.LASF1754:
	.string	"S_ResumeSound"
.LASF173:
	.string	"SPR_BBRN"
.LASF515:
	.string	"S_VILE_ATK1"
.LASF516:
	.string	"S_VILE_ATK2"
.LASF517:
	.string	"S_VILE_ATK3"
.LASF518:
	.string	"S_VILE_ATK4"
.LASF519:
	.string	"S_VILE_ATK5"
.LASF520:
	.string	"S_VILE_ATK6"
.LASF521:
	.string	"S_VILE_ATK7"
.LASF262:
	.string	"S_PUNCH"
.LASF523:
	.string	"S_VILE_ATK9"
.LASF244:
	.string	"SPR_SMBT"
.LASF1645:
	.string	"sfx_hoof"
.LASF1531:
	.string	"mus_shawn"
.LASF818:
	.string	"S_BOS2_RUN1"
.LASF819:
	.string	"S_BOS2_RUN2"
.LASF820:
	.string	"S_BOS2_RUN3"
.LASF821:
	.string	"S_BOS2_RUN4"
.LASF822:
	.string	"S_BOS2_RUN5"
.LASF823:
	.string	"S_BOS2_RUN6"
.LASF824:
	.string	"S_BOS2_RUN7"
.LASF825:
	.string	"S_BOS2_RUN8"
.LASF1681:
	.string	"lightlevel"
.LASF235:
	.string	"SPR_TRE1"
.LASF236:
	.string	"SPR_TRE2"
.LASF892:
	.string	"S_BSPI_STND"
.LASF1576:
	.string	"sfx_rxplod"
.LASF1386:
	.string	"meleestate"
.LASF1446:
	.string	"ammo"
.LASF682:
	.string	"S_CPOS_DIE1"
.LASF243:
	.string	"SPR_TRED"
.LASF136:
	.string	"SPR_BLUD"
.LASF638:
	.string	"S_FATT_ATK3"
.LASF639:
	.string	"S_FATT_ATK4"
.LASF640:
	.string	"S_FATT_ATK5"
.LASF641:
	.string	"S_FATT_ATK6"
.LASF642:
	.string	"S_FATT_ATK7"
.LASF643:
	.string	"S_FATT_ATK8"
.LASF644:
	.string	"S_FATT_ATK9"
.LASF1760:
	.string	"origin_p"
.LASF146:
	.string	"SPR_TFOG"
.LASF350:
	.string	"S_BLOOD1"
.LASF351:
	.string	"S_BLOOD2"
.LASF352:
	.string	"S_BLOOD3"
.LASF1534:
	.string	"mus_dead"
.LASF1234:
	.string	"misc1"
.LASF1235:
	.string	"misc2"
.LASF1542:
	.string	"mus_romero"
.LASF1587:
	.string	"sfx_dmpain"
.LASF54:
	.string	"angleturn"
.LASF36:
	.string	"_wide_data"
.LASF1142:
	.string	"S_LAUN"
.LASF402:
	.string	"S_IFOG"
.LASF1540:
	.string	"mus_dead2"
.LASF149:
	.string	"SPR_POSS"
.LASF154:
	.string	"SPR_FBXP"
.LASF1762:
	.string	"mnum"
.LASF1551:
	.string	"mus_romer2"
.LASF951:
	.string	"S_CYBER_DIE1"
.LASF952:
	.string	"S_CYBER_DIE2"
.LASF953:
	.string	"S_CYBER_DIE3"
.LASF954:
	.string	"S_CYBER_DIE4"
.LASF955:
	.string	"S_CYBER_DIE5"
.LASF956:
	.string	"S_CYBER_DIE6"
.LASF957:
	.string	"S_CYBER_DIE7"
.LASF829:
	.string	"S_BOS2_PAIN"
.LASF959:
	.string	"S_CYBER_DIE9"
.LASF1426:
	.string	"spawnpoint"
.LASF1229:
	.string	"sprite"
.LASF1722:
	.string	"W_GetNumForName"
.LASF1307:
	.string	"MT_MISC23"
.LASF1539:
	.string	"mus_runni2"
.LASF1172:
	.string	"S_CANDELABRA"
.LASF512:
	.string	"S_VILE_RUN10"
.LASF513:
	.string	"S_VILE_RUN11"
.LASF514:
	.string	"S_VILE_RUN12"
.LASF1132:
	.string	"S_ROCK"
.LASF281:
	.string	"S_SGUN1"
.LASF282:
	.string	"S_SGUN2"
.LASF283:
	.string	"S_SGUN3"
.LASF284:
	.string	"S_SGUN4"
.LASF285:
	.string	"S_SGUN5"
.LASF286:
	.string	"S_SGUN6"
.LASF287:
	.string	"S_SGUN7"
.LASF288:
	.string	"S_SGUN8"
.LASF289:
	.string	"S_SGUN9"
.LASF1376:
	.string	"doomednum"
.LASF278:
	.string	"S_SGUN"
.LASF1168:
	.string	"S_SHRTGRNCOL"
.LASF1663:
	.string	"sfx_ssdth"
.LASF1653:
	.string	"sfx_flamst"
.LASF853:
	.string	"S_SKULL_PAIN"
.LASF1523:
	.string	"mus_victor"
.LASF1265:
	.string	"MT_SPAWNSHOT"
.LASF577:
	.string	"S_TRACER2"
.LASF1525:
	.string	"mus_runnin"
.LASF1176:
	.string	"S_TECHPILLAR"
.LASF581:
	.string	"S_SKEL_STND"
.LASF1524:
	.string	"mus_introa"
.LASF736:
	.string	"S_SARG_STND2"
.LASF1646:
	.string	"sfx_metal"
.LASF63:
	.string	"indetermined"
.LASF482:
	.string	"S_SPOS_DIE1"
.LASF483:
	.string	"S_SPOS_DIE2"
.LASF484:
	.string	"S_SPOS_DIE3"
.LASF485:
	.string	"S_SPOS_DIE4"
.LASF486:
	.string	"S_SPOS_DIE5"
.LASF1467:
	.string	"PST_REBORN"
.LASF1613:
	.string	"sfx_sgtatk"
.LASF1211:
	.string	"S_HANGBNOBRAIN"
.LASF1610:
	.string	"sfx_mansit"
.LASF745:
	.string	"S_SARG_ATK1"
.LASF746:
	.string	"S_SARG_ATK2"
.LASF747:
	.string	"S_SARG_ATK3"
.LASF336:
	.string	"S_PLASMAUP"
.LASF1231:
	.string	"tics"
.LASF1733:
	.string	"fprintf"
.LASF1092:
	.string	"S_YKEY"
.LASF1584:
	.string	"sfx_swtchn"
.LASF1391:
	.string	"speed"
.LASF305:
	.string	"S_DSNR1"
.LASF974:
	.string	"S_PAIN_DIE1"
.LASF1483:
	.string	"pitch"
.LASF504:
	.string	"S_VILE_RUN2"
.LASF1553:
	.string	"mus_shawn3"
.LASF1651:
	.string	"sfx_itmbk"
.LASF1222:
	.string	"S_TECHLAMP4"
.LASF668:
	.string	"S_CPOS_RUN1"
.LASF669:
	.string	"S_CPOS_RUN2"
.LASF670:
	.string	"S_CPOS_RUN3"
.LASF671:
	.string	"S_CPOS_RUN4"
.LASF108:
	.string	"actionf_p1"
.LASF109:
	.string	"actionf_p2"
.LASF206:
	.string	"SPR_BPAK"
.LASF675:
	.string	"S_CPOS_RUN8"
.LASF1072:
	.string	"S_BEXP5"
.LASF1668:
	.string	"sfx_skeatk"
.LASF100:
	.string	"mapthing_t"
.LASF437:
	.string	"S_POSS_RUN2"
.LASF438:
	.string	"S_POSS_RUN3"
.LASF439:
	.string	"S_POSS_RUN4"
.LASF756:
	.string	"S_SARG_RAISE1"
.LASF440:
	.string	"S_POSS_RUN5"
.LASF110:
	.string	"acp1"
.LASF111:
	.string	"acp2"
.LASF760:
	.string	"S_SARG_RAISE5"
.LASF761:
	.string	"S_SARG_RAISE6"
.LASF1620:
	.string	"sfx_podth1"
.LASF1621:
	.string	"sfx_podth2"
.LASF1622:
	.string	"sfx_podth3"
.LASF1340:
	.string	"MT_MISC53"
.LASF1670:
	.string	"NUMSFX"
.LASF245:
	.string	"SPR_SMGT"
.LASF1036:
	.string	"S_KEENPAIN"
.LASF384:
	.string	"S_BFGEXP2"
.LASF385:
	.string	"S_BFGEXP3"
.LASF386:
	.string	"S_BFGEXP4"
.LASF315:
	.string	"S_CHAINFLASH1"
.LASF316:
	.string	"S_CHAINFLASH2"
.LASF271:
	.string	"S_PISTOLDOWN"
.LASF1671:
	.string	"memblock_s"
.LASF1674:
	.string	"memblock_t"
.LASF936:
	.string	"S_CYBER_RUN1"
.LASF937:
	.string	"S_CYBER_RUN2"
.LASF938:
	.string	"S_CYBER_RUN3"
.LASF939:
	.string	"S_CYBER_RUN4"
.LASF940:
	.string	"S_CYBER_RUN5"
.LASF941:
	.string	"S_CYBER_RUN6"
.LASF942:
	.string	"S_CYBER_RUN7"
.LASF943:
	.string	"S_CYBER_RUN8"
.LASF1380:
	.string	"seesound"
.LASF1123:
	.string	"S_PMAP2"
.LASF1124:
	.string	"S_PMAP3"
.LASF1125:
	.string	"S_PMAP4"
.LASF1126:
	.string	"S_PMAP5"
.LASF1127:
	.string	"S_PMAP6"
.LASF1457:
	.string	"bonuscount"
.LASF854:
	.string	"S_SKULL_PAIN2"
.LASF1384:
	.string	"painchance"
.LASF680:
	.string	"S_CPOS_PAIN"
.LASF1678:
	.string	"ceilingheight"
.LASF61:
	.string	"commercial"
.LASF1549:
	.string	"mus_adrian"
.LASF1556:
	.string	"mus_ultima"
.LASF985:
	.string	"S_PAIN_RAISE6"
.LASF1688:
	.string	"specialdata"
.LASF1323:
	.string	"MT_MISC36"
.LASF789:
	.string	"S_BOSS_RUN1"
.LASF790:
	.string	"S_BOSS_RUN2"
.LASF791:
	.string	"S_BOSS_RUN3"
.LASF792:
	.string	"S_BOSS_RUN4"
.LASF793:
	.string	"S_BOSS_RUN5"
.LASF311:
	.string	"S_CHAINUP"
.LASF1766:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1452:
	.string	"killcount"
.LASF930:
	.string	"S_ARACH_PLEX2"
.LASF1174:
	.string	"S_TORCHTREE"
.LASF986:
	.string	"S_SSWV_STND"
.LASF932:
	.string	"S_ARACH_PLEX4"
.LASF1033:
	.string	"S_COMMKEEN10"
.LASF1034:
	.string	"S_COMMKEEN11"
.LASF1035:
	.string	"S_COMMKEEN12"
.LASF950:
	.string	"S_CYBER_PAIN"
.LASF104:
	.string	"stderr"
.LASF469:
	.string	"S_SPOS_RUN1"
.LASF227:
	.string	"SPR_SMIT"
.LASF50:
	.string	"boolean"
.LASF472:
	.string	"S_SPOS_RUN4"
.LASF473:
	.string	"S_SPOS_RUN5"
.LASF164:
	.string	"SPR_SKUL"
.LASF475:
	.string	"S_SPOS_RUN7"
.LASF476:
	.string	"S_SPOS_RUN8"
.LASF1133:
	.string	"S_BROK"
.LASF1378:
	.string	"spawnhealth"
.LASF1629:
	.string	"sfx_cybdth"
.LASF1490:
	.string	"S_sfx"
.LASF263:
	.string	"S_PUNCHDOWN"
.LASF929:
	.string	"S_ARACH_PLEX"
.LASF1190:
	.string	"S_GREENTORCH"
.LASF80:
	.string	"wp_supershotgun"
.LASF329:
	.string	"S_SAWDOWN"
.LASF24:
	.string	"_IO_save_end"
.LASF1574:
	.string	"sfx_sawhit"
.LASF1573:
	.string	"sfx_sawful"
.LASF1228:
	.string	"statenum_t"
.LASF1268:
	.string	"MT_TROOPSHOT"
.LASF1253:
	.string	"MT_BRUISERSHOT"
.LASF1641:
	.string	"sfx_vilact"
.LASF58:
	.string	"ticcmd_t"
.LASF1373:
	.string	"MT_MISC86"
.LASF1400:
	.string	"ps_weapon"
.LASF1606:
	.string	"sfx_spisit"
.LASF417:
	.string	"S_PLAY_PAIN2"
.LASF1572:
	.string	"sfx_sawidl"
.LASF812:
	.string	"S_BOSS_RAISE4"
.LASF813:
	.string	"S_BOSS_RAISE5"
.LASF1230:
	.string	"frame"
.LASF156:
	.string	"SPR_MANF"
.LASF667:
	.string	"S_CPOS_STND2"
.LASF1639:
	.string	"sfx_bspact"
.LASF480:
	.string	"S_SPOS_PAIN"
.LASF74:
	.string	"wp_shotgun"
.LASF448:
	.string	"S_POSS_PAIN2"
.LASF1274:
	.string	"MT_PUFF"
.LASF320:
	.string	"S_MISSILE1"
.LASF321:
	.string	"S_MISSILE2"
.LASF322:
	.string	"S_MISSILE3"
.LASF696:
	.string	"S_CPOS_RAISE2"
.LASF697:
	.string	"S_CPOS_RAISE3"
.LASF698:
	.string	"S_CPOS_RAISE4"
.LASF1462:
	.string	"psprites"
.LASF1140:
	.string	"S_MGUN"
.LASF1252:
	.string	"MT_BRUISER"
.LASF205:
	.string	"SPR_SBOX"
.LASF1512:
	.string	"mus_e3m2"
.LASF1454:
	.string	"secretcount"
.LASF1375:
	.string	"mobjtype_t"
.LASF1389:
	.string	"xdeathstate"
.LASF1514:
	.string	"mus_e3m4"
.LASF1439:
	.string	"powers"
.LASF849:
	.string	"S_SKULL_ATK1"
.LASF850:
	.string	"S_SKULL_ATK2"
.LASF851:
	.string	"S_SKULL_ATK3"
.LASF852:
	.string	"S_SKULL_ATK4"
.LASF830:
	.string	"S_BOS2_PAIN2"
.LASF6:
	.string	"short unsigned int"
.LASF1254:
	.string	"MT_KNIGHT"
.LASF7:
	.string	"signed char"
.LASF53:
	.string	"sidemove"
.LASF1396:
	.string	"activesound"
.LASF481:
	.string	"S_SPOS_PAIN2"
.LASF1644:
	.string	"sfx_punch"
.LASF645:
	.string	"S_FATT_ATK10"
.LASF1327:
	.string	"MT_MISC40"
.LASF242:
	.string	"SPR_TGRN"
.LASF1486:
	.string	"usefulness"
.LASF1299:
	.string	"MT_MEGA"
.LASF144:
	.string	"SPR_BFE1"
.LASF145:
	.string	"SPR_BFE2"
.LASF1764:
	.string	"sfxVolume"
.LASF1687:
	.string	"thinglist"
.LASF1333:
	.string	"MT_MISC46"
.LASF1560:
	.string	"NUMMUSIC"
.LASF1261:
	.string	"MT_KEEN"
.LASF1728:
	.string	"I_PauseSong"
.LASF1685:
	.string	"blockbox"
.LASF1046:
	.string	"S_BRAINEYE1"
.LASF702:
	.string	"S_TROO_STND"
.LASF649:
	.string	"S_FATT_DIE2"
.LASF340:
	.string	"S_PLASMAFLASH2"
.LASF83:
	.string	"weapontype_t"
.LASF56:
	.string	"chatchar"
.LASF393:
	.string	"S_TFOG2"
.LASF394:
	.string	"S_TFOG3"
.LASF395:
	.string	"S_TFOG4"
.LASF396:
	.string	"S_TFOG5"
.LASF397:
	.string	"S_TFOG6"
.LASF398:
	.string	"S_TFOG7"
.LASF399:
	.string	"S_TFOG8"
.LASF400:
	.string	"S_TFOG9"
.LASF815:
	.string	"S_BOSS_RAISE7"
.LASF1448:
	.string	"attackdown"
.LASF120:
	.string	"SPR_TROO"
.LASF12:
	.string	"__off64_t"
.LASF131:
	.string	"SPR_SAWG"
.LASF1290:
	.string	"MT_MISC10"
.LASF1602:
	.string	"sfx_sgtsit"
.LASF180:
	.string	"SPR_BON1"
.LASF16:
	.string	"_IO_read_base"
.LASF34:
	.string	"_offset"
.LASF67:
	.string	"it_redcard"
.LASF1169:
	.string	"S_TALLREDCOL"
.LASF1731:
	.string	"I_Error"
.LASF1403:
	.string	"state"
.LASF21:
	.string	"_IO_buf_end"
.LASF1144:
	.string	"S_SHOT"
.LASF1000:
	.string	"S_SSWV_ATK5"
.LASF1149:
	.string	"S_BLOODYTWITCH2"
.LASF1150:
	.string	"S_BLOODYTWITCH3"
.LASF1151:
	.string	"S_BLOODYTWITCH4"
.LASF890:
	.string	"S_SPID_DIE10"
.LASF891:
	.string	"S_SPID_DIE11"
.LASF1440:
	.string	"cards"
.LASF1527:
	.string	"mus_countd"
.LASF1521:
	.string	"mus_intro"
.LASF1564:
	.string	"sfx_sgcock"
.LASF237:
	.string	"SPR_ELEC"
.LASF1038:
	.string	"S_BRAIN"
.LASF1256:
	.string	"MT_SPIDER"
.LASF1121:
	.string	"S_SUIT"
.LASF135:
	.string	"SPR_BFGF"
.LASF134:
	.string	"SPR_BFGG"
.LASF40:
	.string	"_mode"
.LASF961:
	.string	"S_PAIN_STND"
.LASF1604:
	.string	"sfx_brssit"
.LASF17:
	.string	"_IO_write_base"
.LASF377:
	.string	"S_BFGLAND"
.LASF1067:
	.string	"S_BAR2"
.LASF1444:
	.string	"pendingweapon"
.LASF118:
	.string	"function"
.LASF1647:
	.string	"sfx_chgun"
.LASF85:
	.string	"am_shell"
.LASF1417:
	.string	"validcount"
.LASF1455:
	.string	"message"
.LASF1478:
	.string	"sfxinfo_struct"
.LASF657:
	.string	"S_FATT_DIE10"
.LASF71:
	.string	"NUMCARDS"
.LASF1194:
	.string	"S_REDTORCH"
.LASF1543:
	.string	"mus_shawn2"
.LASF1272:
	.string	"MT_BFG"
.LASF441:
	.string	"S_POSS_RUN6"
.LASF1615:
	.string	"sfx_vilatk"
.LASF151:
	.string	"SPR_VILE"
.LASF1650:
	.string	"sfx_bdcls"
.LASF1275:
	.string	"MT_BLOOD"
.LASF270:
	.string	"S_PISTOL"
.LASF49:
	.string	"true"
.LASF1724:
	.string	"I_SetMusicVolume"
.LASF502:
	.string	"S_VILE_STND2"
.LASF920:
	.string	"S_BSPI_RAISE1"
.LASF921:
	.string	"S_BSPI_RAISE2"
.LASF922:
	.string	"S_BSPI_RAISE3"
.LASF923:
	.string	"S_BSPI_RAISE4"
.LASF924:
	.string	"S_BSPI_RAISE5"
.LASF925:
	.string	"S_BSPI_RAISE6"
.LASF926:
	.string	"S_BSPI_RAISE7"
.LASF1414:
	.string	"momx"
.LASF1415:
	.string	"momy"
.LASF9:
	.string	"long int"
.LASF1009:
	.string	"S_SSWV_XDIE1"
.LASF1010:
	.string	"S_SSWV_XDIE2"
.LASF1011:
	.string	"S_SSWV_XDIE3"
.LASF1012:
	.string	"S_SSWV_XDIE4"
.LASF1013:
	.string	"S_SSWV_XDIE5"
.LASF1014:
	.string	"S_SSWV_XDIE6"
.LASF1015:
	.string	"S_SSWV_XDIE7"
.LASF1016:
	.string	"S_SSWV_XDIE8"
.LASF1017:
	.string	"S_SSWV_XDIE9"
.LASF307:
	.string	"S_DSGUNFLASH1"
.LASF308:
	.string	"S_DSGUNFLASH2"
.LASF1306:
	.string	"MT_MISC22"
.LASF1463:
	.string	"didsecret"
.LASF565:
	.string	"S_FIRE25"
.LASF659:
	.string	"S_FATT_RAISE2"
.LASF1342:
	.string	"MT_MISC55"
.LASF1436:
	.string	"deltaviewheight"
.LASF69:
	.string	"it_yellowskull"
.LASF1482:
	.string	"link"
.LASF1097:
	.string	"S_RSKULL2"
.LASF1427:
	.string	"tracer"
.LASF664:
	.string	"S_FATT_RAISE7"
.LASF872:
	.string	"S_SPID_RUN10"
.LASF873:
	.string	"S_SPID_RUN11"
.LASF874:
	.string	"S_SPID_RUN12"
.LASF43:
	.string	"_IO_marker"
.LASF1763:
	.string	"spmus"
.LASF1707:
	.string	"rcsid"
.LASF1594:
	.string	"sfx_wpnup"
.LASF1398:
	.string	"raisestate"
.LASF323:
	.string	"S_MISSILEFLASH1"
.LASF324:
	.string	"S_MISSILEFLASH2"
.LASF325:
	.string	"S_MISSILEFLASH3"
.LASF326:
	.string	"S_MISSILEFLASH4"
.LASF186:
	.string	"SPR_RSKU"
.LASF1614:
	.string	"sfx_skepch"
.LASF113:
	.string	"think_t"
.LASF52:
	.string	"forwardmove"
.LASF684:
	.string	"S_CPOS_DIE3"
.LASF685:
	.string	"S_CPOS_DIE4"
.LASF686:
	.string	"S_CPOS_DIE5"
.LASF687:
	.string	"S_CPOS_DIE6"
.LASF688:
	.string	"S_CPOS_DIE7"
.LASF1529:
	.string	"mus_doom"
.LASF1129:
	.string	"S_PVIS2"
.LASF1267:
	.string	"MT_BARREL"
.LASF1719:
	.string	"I_PlaySong"
.LASF861:
	.string	"S_SPID_STND"
.LASF633:
	.string	"S_FATT_RUN10"
.LASF634:
	.string	"S_FATT_RUN11"
.LASF635:
	.string	"S_FATT_RUN12"
.LASF1259:
	.string	"MT_PAIN"
.LASF44:
	.string	"_IO_codecvt"
.LASF1187:
	.string	"S_BLUETORCH2"
.LASF1399:
	.string	"mobjinfo_t"
.LASF1188:
	.string	"S_BLUETORCH3"
.LASF1189:
	.string	"S_BLUETORCH4"
.LASF246:
	.string	"SPR_SMRT"
.LASF1599:
	.string	"sfx_posit3"
.LASF348:
	.string	"S_BFGFLASH1"
.LASF349:
	.string	"S_BFGFLASH2"
.LASF1484:
	.string	"volume"
.LASF882:
	.string	"S_SPID_DIE2"
.LASF163:
	.string	"SPR_BOS2"
.LASF885:
	.string	"S_SPID_DIE5"
.LASF886:
	.string	"S_SPID_DIE6"
.LASF1657:
	.string	"sfx_bossit"
.LASF887:
	.string	"S_SPID_DIE7"
.LASF888:
	.string	"S_SPID_DIE8"
.LASF1178:
	.string	"S_EVILEYE2"
.LASF1179:
	.string	"S_EVILEYE3"
.LASF1180:
	.string	"S_EVILEYE4"
.LASF353:
	.string	"S_PUFF1"
.LASF354:
	.string	"S_PUFF2"
.LASF355:
	.string	"S_PUFF3"
.LASF174:
	.string	"SPR_BOSF"
.LASF1690:
	.string	"lines"
.LASF1720:
	.string	"I_RegisterSong"
.LASF1742:
	.string	"musicnum"
.LASF162:
	.string	"SPR_BOSS"
.LASF1271:
	.string	"MT_PLASMA"
.LASF1669:
	.string	"sfx_radio"
.LASF907:
	.string	"S_BSPI_ATK1"
.LASF908:
	.string	"S_BSPI_ATK2"
.LASF909:
	.string	"S_BSPI_ATK3"
.LASF910:
	.string	"S_BSPI_ATK4"
.LASF1089:
	.string	"S_BKEY2"
.LASF81:
	.string	"NUMWEAPONS"
.LASF1555:
	.string	"mus_evil"
.LASF894:
	.string	"S_BSPI_SIGHT"
.LASF1586:
	.string	"sfx_plpain"
.LASF2:
	.string	"long unsigned int"
.LASF896:
	.string	"S_BSPI_RUN2"
.LASF1040:
	.string	"S_BRAIN_DIE1"
.LASF1041:
	.string	"S_BRAIN_DIE2"
.LASF1042:
	.string	"S_BRAIN_DIE3"
.LASF1043:
	.string	"S_BRAIN_DIE4"
.LASF375:
	.string	"S_BFGSHOT"
.LASF1181:
	.string	"S_FLOATSKULL"
.LASF531:
	.string	"S_VILE_DIE1"
.LASF532:
	.string	"S_VILE_DIE2"
.LASF533:
	.string	"S_VILE_DIE3"
.LASF534:
	.string	"S_VILE_DIE4"
.LASF535:
	.string	"S_VILE_DIE5"
.LASF536:
	.string	"S_VILE_DIE6"
.LASF537:
	.string	"S_VILE_DIE7"
.LASF538:
	.string	"S_VILE_DIE8"
.LASF539:
	.string	"S_VILE_DIE9"
.LASF1456:
	.string	"damagecount"
.LASF1734:
	.string	"cnum"
.LASF1567:
	.string	"sfx_dbcls"
.LASF215:
	.string	"SPR_SMT2"
.LASF1091:
	.string	"S_RKEY2"
.LASF1062:
	.string	"S_ARM1"
.LASF1064:
	.string	"S_ARM2"
.LASF1634:
	.string	"sfx_pedth"
.LASF1157:
	.string	"S_HEADCANDLES"
.LASF193:
	.string	"SPR_PINS"
.LASF787:
	.string	"S_BOSS_STND"
.LASF1638:
	.string	"sfx_dmact"
.LASF767:
	.string	"S_HEAD_PAIN"
.LASF66:
	.string	"it_yellowcard"
.LASF1481:
	.string	"priority"
.LASF1735:
	.string	"S_getChannel"
.LASF1243:
	.string	"MT_TRACER"
.LASF648:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF650:
	.string	"S_FATT_DIE3"
.LASF651:
	.string	"S_FATT_DIE4"
.LASF652:
	.string	"S_FATT_DIE5"
.LASF653:
	.string	"S_FATT_DIE6"
.LASF654:
	.string	"S_FATT_DIE7"
.LASF655:
	.string	"S_FATT_DIE8"
.LASF656:
	.string	"S_FATT_DIE9"
.LASF723:
	.string	"S_TROO_XDIE2"
.LASF724:
	.string	"S_TROO_XDIE3"
.LASF725:
	.string	"S_TROO_XDIE4"
.LASF726:
	.string	"S_TROO_XDIE5"
.LASF727:
	.string	"S_TROO_XDIE6"
.LASF728:
	.string	"S_TROO_XDIE7"
.LASF729:
	.string	"S_TROO_XDIE8"
.LASF1765:
	.string	"musicVolume"
.LASF198:
	.string	"SPR_CLIP"
.LASF1170:
	.string	"S_SHRTREDCOL"
.LASF1213:
	.string	"S_HANGTSKULL"
.LASF1476:
	.string	"players"
.LASF20:
	.string	"_IO_buf_base"
.LASF96:
	.string	"NUMPOWERS"
.LASF998:
	.string	"S_SSWV_ATK3"
.LASF999:
	.string	"S_SSWV_ATK4"
.LASF304:
	.string	"S_DSGUN10"
.LASF1626:
	.string	"sfx_cacdth"
.LASF91:
	.string	"pw_strength"
.LASF232:
	.string	"SPR_CAND"
.LASF1583:
	.string	"sfx_stnmov"
.LASF1751:
	.string	"listener_p"
.LASF1249:
	.string	"MT_SERGEANT"
.LASF1578:
	.string	"sfx_firxpl"
.LASF1160:
	.string	"S_LIVESTICK"
.LASF15:
	.string	"_IO_read_end"
.LASF1100:
	.string	"S_STIM"
.LASF86:
	.string	"am_cell"
.LASF65:
	.string	"it_bluecard"
.LASF1412:
	.string	"floorz"
.LASF763:
	.string	"S_HEAD_RUN1"
.LASF418:
	.string	"S_PLAY_DIE1"
.LASF419:
	.string	"S_PLAY_DIE2"
.LASF420:
	.string	"S_PLAY_DIE3"
.LASF421:
	.string	"S_PLAY_DIE4"
.LASF114:
	.string	"_IO_FILE"
.LASF423:
	.string	"S_PLAY_DIE6"
.LASF424:
	.string	"S_PLAY_DIE7"
.LASF434:
	.string	"S_POSS_STND"
.LASF390:
	.string	"S_TFOG"
.LASF45:
	.string	"_IO_wide_data"
.LASF1328:
	.string	"MT_MISC41"
.LASF1770:
	.string	"S_Init"
.LASF1428:
	.string	"subsector_s"
.LASF750:
	.string	"S_SARG_DIE1"
.LASF751:
	.string	"S_SARG_DIE2"
.LASF752:
	.string	"S_SARG_DIE3"
.LASF753:
	.string	"S_SARG_DIE4"
.LASF1051:
	.string	"S_SPAWNFIRE1"
.LASF1052:
	.string	"S_SPAWNFIRE2"
.LASF1053:
	.string	"S_SPAWNFIRE3"
.LASF1054:
	.string	"S_SPAWNFIRE4"
.LASF1055:
	.string	"S_SPAWNFIRE5"
.LASF1056:
	.string	"S_SPAWNFIRE6"
.LASF1057:
	.string	"S_SPAWNFIRE7"
.LASF1058:
	.string	"S_SPAWNFIRE8"
.LASF722:
	.string	"S_TROO_XDIE1"
.LASF55:
	.string	"consistancy"
.LASF1429:
	.string	"sector"
.LASF1215:
	.string	"S_HANGTNOBRAIN"
.LASF370:
	.string	"S_PLASEXP2"
.LASF371:
	.string	"S_PLASEXP3"
.LASF372:
	.string	"S_PLASEXP4"
.LASF373:
	.string	"S_PLASEXP5"
.LASF78:
	.string	"wp_bfg"
.LASF1199:
	.string	"S_BTORCHSHRT2"
.LASF1200:
	.string	"S_BTORCHSHRT3"
.LASF1201:
	.string	"S_BTORCHSHRT4"
.LASF1633:
	.string	"sfx_kntdth"
.LASF503:
	.string	"S_VILE_RUN1"
.LASF293:
	.string	"S_DSGUNDOWN"
.LASF505:
	.string	"S_VILE_RUN3"
.LASF506:
	.string	"S_VILE_RUN4"
.LASF507:
	.string	"S_VILE_RUN5"
.LASF508:
	.string	"S_VILE_RUN6"
.LASF509:
	.string	"S_VILE_RUN7"
.LASF510:
	.string	"S_VILE_RUN8"
.LASF511:
	.string	"S_VILE_RUN9"
.LASF754:
	.string	"S_SARG_DIE5"
.LASF755:
	.string	"S_SARG_DIE6"
.LASF1625:
	.string	"sfx_sgtdth"
.LASF1406:
	.string	"thinker"
.LASF1655:
	.string	"sfx_bospit"
.LASF595:
	.string	"S_SKEL_FIST1"
.LASF596:
	.string	"S_SKEL_FIST2"
.LASF597:
	.string	"S_SKEL_FIST3"
.LASF598:
	.string	"S_SKEL_FIST4"
.LASF334:
	.string	"S_PLASMA"
.LASF1113:
	.string	"S_PINS"
.LASF1761:
	.string	"S_Start"
.LASF1590:
	.string	"sfx_mnpain"
.LASF1186:
	.string	"S_BLUETORCH"
.LASF1672:
	.string	"size"
.LASF624:
	.string	"S_FATT_RUN1"
.LASF625:
	.string	"S_FATT_RUN2"
.LASF626:
	.string	"S_FATT_RUN3"
.LASF627:
	.string	"S_FATT_RUN4"
.LASF93:
	.string	"pw_ironfeet"
.LASF629:
	.string	"S_FATT_RUN6"
.LASF630:
	.string	"S_FATT_RUN7"
.LASF631:
	.string	"S_FATT_RUN8"
.LASF1162:
	.string	"S_MEAT2"
.LASF1163:
	.string	"S_MEAT3"
.LASF39:
	.string	"__pad5"
.LASF1165:
	.string	"S_MEAT5"
.LASF1611:
	.string	"sfx_pesit"
.LASF277:
	.string	"S_PISTOLFLASH"
.LASF1677:
	.string	"floorheight"
.LASF497:
	.string	"S_SPOS_RAISE2"
.LASF498:
	.string	"S_SPOS_RAISE3"
.LASF499:
	.string	"S_SPOS_RAISE4"
.LASF500:
	.string	"S_SPOS_RAISE5"
.LASF189:
	.string	"SPR_MEDI"
.LASF1480:
	.string	"singularity"
.LASF191:
	.string	"SPR_PINV"
.LASF1600:
	.string	"sfx_bgsit1"
.LASF1601:
	.string	"sfx_bgsit2"
.LASF1635:
	.string	"sfx_skedth"
.LASF1039:
	.string	"S_BRAIN_PAIN"
.LASF310:
	.string	"S_CHAINDOWN"
.LASF1741:
	.string	"S_ChangeMusic"
.LASF529:
	.string	"S_VILE_PAIN"
.LASF576:
	.string	"S_TRACER"
.LASF25:
	.string	"_markers"
.LASF1538:
	.string	"mus_ddtbl2"
.LASF996:
	.string	"S_SSWV_ATK1"
.LASF997:
	.string	"S_SSWV_ATK2"
.LASF526:
	.string	"S_VILE_HEAL1"
.LASF527:
	.string	"S_VILE_HEAL2"
.LASF528:
	.string	"S_VILE_HEAL3"
.LASF1001:
	.string	"S_SSWV_ATK6"
.LASF1421:
	.string	"movecount"
.LASF183:
	.string	"SPR_RKEY"
.LASF1607:
	.string	"sfx_bspsit"
.LASF1147:
	.string	"S_STALAG"
.LASF1732:
	.string	"Z_Malloc"
.LASF1588:
	.string	"sfx_popain"
.LASF862:
	.string	"S_SPID_STND2"
.LASF106:
	.string	"angle_t"
.LASF35:
	.string	"_codecvt"
.LASF1680:
	.string	"ceilingpic"
.LASF1148:
	.string	"S_BLOODYTWITCH"
.LASF1217:
	.string	"S_SMALLPOOL"
.LASF1404:
	.string	"pspdef_t"
.LASF1343:
	.string	"MT_MISC56"
.LASF646:
	.string	"S_FATT_PAIN"
.LASF410:
	.string	"S_PLAY_RUN1"
.LASF411:
	.string	"S_PLAY_RUN2"
.LASF412:
	.string	"S_PLAY_RUN3"
.LASF413:
	.string	"S_PLAY_RUN4"
.LASF1138:
	.string	"S_BPAK"
.LASF103:
	.string	"double"
.LASF178:
	.string	"SPR_BEXP"
.LASF1432:
	.string	"player_s"
.LASF1095:
	.string	"S_BSKULL2"
.LASF137:
	.string	"SPR_PUFF"
.LASF1024:
	.string	"S_COMMKEEN"
.LASF1579:
	.string	"sfx_pstart"
.LASF1449:
	.string	"usedown"
.LASF816:
	.string	"S_BOS2_STND"
.LASF143:
	.string	"SPR_BFS1"
.LASF1047:
	.string	"S_SPAWN1"
.LASF1048:
	.string	"S_SPAWN2"
.LASF1049:
	.string	"S_SPAWN3"
.LASF1050:
	.string	"S_SPAWN4"
.LASF1220:
	.string	"S_TECHLAMP2"
.LASF1221:
	.string	"S_TECHLAMP3"
.LASF79:
	.string	"wp_chainsaw"
.LASF1257:
	.string	"MT_BABY"
.LASF1447:
	.string	"maxammo"
.LASF1652:
	.string	"sfx_flame"
.LASF1161:
	.string	"S_LIVESTICK2"
.LASF1206:
	.string	"S_RTORCHSHRT"
.LASF1303:
	.string	"MT_MISC19"
.LASF1769:
	.string	"I_SetChannels"
.LASF165:
	.string	"SPR_SPID"
.LASF762:
	.string	"S_HEAD_STND"
.LASF737:
	.string	"S_SARG_RUN1"
.LASF738:
	.string	"S_SARG_RUN2"
.LASF740:
	.string	"S_SARG_RUN4"
.LASF741:
	.string	"S_SARG_RUN5"
.LASF742:
	.string	"S_SARG_RUN6"
.LASF743:
	.string	"S_SARG_RUN7"
.LASF744:
	.string	"S_SARG_RUN8"
.LASF1281:
	.string	"MT_MISC1"
.LASF1282:
	.string	"MT_MISC2"
.LASF1283:
	.string	"MT_MISC3"
.LASF1284:
	.string	"MT_MISC4"
.LASF1285:
	.string	"MT_MISC5"
.LASF1286:
	.string	"MT_MISC6"
.LASF1287:
	.string	"MT_MISC7"
.LASF1288:
	.string	"MT_MISC8"
.LASF1289:
	.string	"MT_MISC9"
.LASF327:
	.string	"S_SAW"
.LASF194:
	.string	"SPR_MEGA"
.LASF416:
	.string	"S_PLAY_PAIN"
.LASF1616:
	.string	"sfx_claw"
.LASF368:
	.string	"S_PLASBALL2"
.LASF1401:
	.string	"ps_flash"
.LASF1433:
	.string	"playerstate"
.LASF172:
	.string	"SPR_KEEN"
.LASF1002:
	.string	"S_SSWV_PAIN"
.LASF1383:
	.string	"painstate"
.LASF1037:
	.string	"S_KEENPAIN2"
.LASF95:
	.string	"pw_infrared"
.LASF524:
	.string	"S_VILE_ATK10"
.LASF525:
	.string	"S_VILE_ATK11"
.LASF1003:
	.string	"S_SSWV_PAIN2"
.LASF1367:
	.string	"MT_MISC80"
.LASF1390:
	.string	"deathsound"
.LASF1077:
	.string	"S_BON1A"
.LASF1078:
	.string	"S_BON1B"
.LASF1079:
	.string	"S_BON1C"
.LASF1080:
	.string	"S_BON1D"
.LASF1081:
	.string	"S_BON1E"
.LASF1697:
	.string	"sector_t"
.LASF192:
	.string	"SPR_PSTR"
.LASF1305:
	.string	"MT_MISC21"
.LASF1710:
	.string	"mus_playing"
.LASF748:
	.string	"S_SARG_PAIN"
.LASF181:
	.string	"SPR_BON2"
.LASF1300:
	.string	"MT_CLIP"
.LASF207:
	.string	"SPR_BFUG"
.LASF1355:
	.string	"MT_MISC68"
.LASF1073:
	.string	"S_BBAR1"
.LASF1074:
	.string	"S_BBAR2"
.LASF1075:
	.string	"S_BBAR3"
.LASF1752:
	.string	"audible"
.LASF261:
	.string	"S_LIGHTDONE"
.LASF912:
	.string	"S_BSPI_PAIN2"
.LASF1441:
	.string	"backpack"
.LASF1544:
	.string	"mus_messag"
.LASF712:
	.string	"S_TROO_ATK1"
.LASF713:
	.string	"S_TROO_ATK2"
.LASF714:
	.string	"S_TROO_ATK3"
.LASF856:
	.string	"S_SKULL_DIE2"
.LASF857:
	.string	"S_SKULL_DIE3"
.LASF858:
	.string	"S_SKULL_DIE4"
.LASF859:
	.string	"S_SKULL_DIE5"
.LASF860:
	.string	"S_SKULL_DIE6"
.LASF211:
	.string	"SPR_PLAS"
.LASF1083:
	.string	"S_BON2A"
.LASF1084:
	.string	"S_BON2B"
.LASF124:
	.string	"SPR_PISF"
.LASF123:
	.string	"SPR_PISG"
.LASF1087:
	.string	"S_BON2E"
.LASF1310:
	.string	"MT_CHAINGUN"
.LASF359:
	.string	"S_TBALLX1"
.LASF360:
	.string	"S_TBALLX2"
.LASF361:
	.string	"S_TBALLX3"
.LASF82:
	.string	"wp_nochange"
.LASF422:
	.string	"S_PLAY_DIE5"
.LASF1714:
	.string	"R_PointToAngle2"
.LASF1247:
	.string	"MT_CHAINGUY"
.LASF1597:
	.string	"sfx_posit1"
.LASF1598:
	.string	"sfx_posit2"
.LASF1119:
	.string	"S_MEGA3"
.LASF855:
	.string	"S_SKULL_DIE1"
.LASF1466:
	.string	"PST_DEAD"
.LASF1218:
	.string	"S_BRAINSTEM"
.LASF1023:
	.string	"S_KEENSTND"
.LASF148:
	.string	"SPR_PLAY"
.LASF38:
	.string	"_freeres_buf"
.LASF1537:
	.string	"mus_doom2"
.LASF1443:
	.string	"readyweapon"
.LASF1603:
	.string	"sfx_cacsit"
.LASF1612:
	.string	"sfx_sklatk"
.LASF47:
	.string	"long long unsigned int"
.LASF1158:
	.string	"S_HEADCANDLES2"
.LASF1277:
	.string	"MT_IFOG"
.LASF30:
	.string	"_cur_column"
.LASF1541:
	.string	"mus_stlks3"
.LASF239:
	.string	"SPR_FSKU"
.LASF1658:
	.string	"sfx_bospn"
.LASF474:
	.string	"S_SPOS_RUN6"
.LASF330:
	.string	"S_SAWUP"
.LASF1063:
	.string	"S_ARM1A"
.LASF666:
	.string	"S_CPOS_STND"
.LASF1318:
	.string	"MT_MISC31"
.LASF1416:
	.string	"momz"
.LASF1137:
	.string	"S_SBOX"
.LASF1683:
	.string	"soundtraversed"
.LASF1321:
	.string	"MT_MISC34"
.LASF1693:
	.string	"bbox"
.LASF369:
	.string	"S_PLASEXP"
.LASF1324:
	.string	"MT_MISC37"
.LASF1592:
	.string	"sfx_slop"
.LASF1153:
	.string	"S_DEADBOTTOM"
.LASF1210:
	.string	"S_HANGNOGUTS"
.LASF224:
	.string	"SPR_GOR3"
.LASF1382:
	.string	"attacksound"
.LASF1114:
	.string	"S_PINS2"
.LASF1115:
	.string	"S_PINS3"
.LASF1116:
	.string	"S_PINS4"
.LASF968:
	.string	"S_PAIN_ATK1"
.LASF969:
	.string	"S_PAIN_ATK2"
.LASF970:
	.string	"S_PAIN_ATK3"
.LASF971:
	.string	"S_PAIN_ATK4"
.LASF1712:
	.string	"nextcleanup"
.LASF280:
	.string	"S_SGUNUP"
.LASF1768:
	.string	"M_Random"
.LASF1695:
	.string	"frontsector"
.LASF233:
	.string	"SPR_CBRA"
.LASF1388:
	.string	"deathstate"
.LASF1065:
	.string	"S_ARM2A"
.LASF934:
	.string	"S_CYBER_STND"
.LASF1093:
	.string	"S_YKEY2"
.LASF543:
	.string	"S_FIRE3"
.LASF1381:
	.string	"reactiontime"
.LASF23:
	.string	"_IO_backup_base"
.LASF548:
	.string	"S_FIRE8"
.LASF788:
	.string	"S_BOSS_STND2"
.LASF1642:
	.string	"sfx_noway"
.LASF14:
	.string	"_IO_read_ptr"
.LASF683:
	.string	"S_CPOS_DIE2"
.LASF1408:
	.string	"sprev"
.LASF331:
	.string	"S_SAW1"
.LASF332:
	.string	"S_SAW2"
.LASF333:
	.string	"S_SAW3"
.LASF1076:
	.string	"S_BON1"
.LASF1082:
	.string	"S_BON2"
.LASF1755:
	.string	"S_PauseSound"
.LASF1424:
	.string	"player"
.LASF1699:
	.string	"ST_VERTICAL"
.LASF1708:
	.string	"channels"
.LASF1530:
	.string	"mus_the_da"
.LASF328:
	.string	"S_SAWB"
.LASF716:
	.string	"S_TROO_PAIN2"
.LASF37:
	.string	"_freeres_list"
.LASF1263:
	.string	"MT_BOSSSPIT"
.LASF541:
	.string	"S_FIRE1"
.LASF542:
	.string	"S_FIRE2"
.LASF101:
	.string	"fixed_t"
.LASF544:
	.string	"S_FIRE4"
.LASF545:
	.string	"S_FIRE5"
.LASF546:
	.string	"S_FIRE6"
.LASF547:
	.string	"S_FIRE7"
.LASF201:
	.string	"SPR_BROK"
.LASF549:
	.string	"S_FIRE9"
.LASF1331:
	.string	"MT_MISC44"
.LASF1332:
	.string	"MT_MISC45"
.LASF1134:
	.string	"S_CELL"
.LASF1334:
	.string	"MT_MISC47"
.LASF199:
	.string	"SPR_AMMO"
.LASF1335:
	.string	"MT_MISC48"
.LASF1336:
	.string	"MT_MISC49"
.LASF847:
	.string	"S_SKULL_RUN1"
.LASF848:
	.string	"S_SKULL_RUN2"
.LASF1214:
	.string	"S_HANGTLOOKUP"
.LASF309:
	.string	"S_CHAIN"
.LASF1726:
	.string	"I_SoundIsPlaying"
.LASF1477:
	.string	"sfxinfo_t"
.LASF339:
	.string	"S_PLASMAFLASH1"
.LASF295:
	.string	"S_DSGUN1"
.LASF296:
	.string	"S_DSGUN2"
.LASF190:
	.string	"SPR_SOUL"
.LASF150:
	.string	"SPR_SPOS"
.LASF299:
	.string	"S_DSGUN5"
.LASF300:
	.string	"S_DSGUN6"
.LASF301:
	.string	"S_DSGUN7"
.LASF302:
	.string	"S_DSGUN8"
.LASF303:
	.string	"S_DSGUN9"
.LASF467:
	.string	"S_SPOS_STND"
.LASF170:
	.string	"SPR_PAIN"
.LASF695:
	.string	"S_CPOS_RAISE1"
.LASF1442:
	.string	"frags"
.LASF1632:
	.string	"sfx_vildth"
.LASF29:
	.string	"_old_offset"
.LASF1437:
	.string	"armorpoints"
.LASF57:
	.string	"buttons"
.LASF1676:
	.string	"degenmobj_t"
.LASF344:
	.string	"S_BFG1"
.LASF345:
	.string	"S_BFG2"
.LASF346:
	.string	"S_BFG3"
.LASF347:
	.string	"S_BFG4"
.LASF1727:
	.string	"I_ResumeSong"
.LASF259:
	.string	"spritenum_t"
.LASF306:
	.string	"S_DSNR2"
.LASF846:
	.string	"S_SKULL_STND2"
.LASF1109:
	.string	"S_PINV2"
.LASF1110:
	.string	"S_PINV3"
.LASF739:
	.string	"S_SARG_RUN3"
.LASF1224:
	.string	"S_TECH2LAMP2"
.LASF1225:
	.string	"S_TECH2LAMP3"
.LASF1226:
	.string	"S_TECH2LAMP4"
.LASF1691:
	.string	"line_s"
.LASF46:
	.string	"long long int"
.LASF122:
	.string	"SPR_PUNG"
.LASF690:
	.string	"S_CPOS_XDIE2"
.LASF691:
	.string	"S_CPOS_XDIE3"
.LASF692:
	.string	"S_CPOS_XDIE4"
.LASF693:
	.string	"S_CPOS_XDIE5"
.LASF694:
	.string	"S_CPOS_XDIE6"
.LASF1550:
	.string	"mus_messg2"
.LASF875:
	.string	"S_SPID_ATK1"
.LASF876:
	.string	"S_SPID_ATK2"
.LASF877:
	.string	"S_SPID_ATK3"
.LASF28:
	.string	"_flags2"
.LASF599:
	.string	"S_SKEL_MISS1"
.LASF600:
	.string	"S_SKEL_MISS2"
.LASF601:
	.string	"S_SKEL_MISS3"
.LASF602:
	.string	"S_SKEL_MISS4"
.LASF356:
	.string	"S_PUFF4"
.LASF1096:
	.string	"S_RSKULL"
.LASF928:
	.string	"S_ARACH_PLAZ2"
.LASF1337:
	.string	"MT_MISC50"
.LASF776:
	.string	"S_HEAD_RAISE1"
.LASF1372:
	.string	"MT_MISC85"
.LASF777:
	.string	"S_HEAD_RAISE2"
.LASF778:
	.string	"S_HEAD_RAISE3"
.LASF1450:
	.string	"cheats"
.LASF185:
	.string	"SPR_BSKU"
.LASF780:
	.string	"S_HEAD_RAISE5"
.LASF781:
	.string	"S_HEAD_RAISE6"
.LASF1487:
	.string	"lumpnum"
.LASF1315:
	.string	"MT_SUPERSHOTGUN"
.LASF196:
	.string	"SPR_PMAP"
.LASF1044:
	.string	"S_BRAINEYE"
.LASF197:
	.string	"SPR_PVIS"
.LASF1465:
	.string	"PST_LIVE"
.LASF1471:
	.string	"gameepisode"
.LASF1273:
	.string	"MT_ARACHPLAZ"
.LASF1673:
	.string	"user"
.LASF522:
	.string	"S_VILE_ATK8"
.LASF463:
	.string	"S_POSS_RAISE1"
.LASF464:
	.string	"S_POSS_RAISE2"
.LASF465:
	.string	"S_POSS_RAISE3"
.LASF466:
	.string	"S_POSS_RAISE4"
.LASF318:
	.string	"S_MISSILEDOWN"
.LASF1643:
	.string	"sfx_barexp"
.LASF1182:
	.string	"S_FLOATSKULL2"
.LASF1183:
	.string	"S_FLOATSKULL3"
.LASF1744:
	.string	"music"
.LASF1566:
	.string	"sfx_dbopn"
.LASF1570:
	.string	"sfx_bfg"
.LASF1117:
	.string	"S_MEGA"
.LASF797:
	.string	"S_BOSS_ATK1"
.LASF798:
	.string	"S_BOSS_ATK2"
.LASF799:
	.string	"S_BOSS_ATK3"
.LASF1411:
	.string	"subsector"
.LASF255:
	.string	"SPR_BRS1"
.LASF1675:
	.string	"vertex_t"
.LASF604:
	.string	"S_SKEL_PAIN2"
.LASF1141:
	.string	"S_CSAW"
.LASF90:
	.string	"pw_invulnerability"
.LASF784:
	.string	"S_BRBALLX1"
.LASF785:
	.string	"S_BRBALLX2"
.LASF786:
	.string	"S_BRBALLX3"
.LASF914:
	.string	"S_BSPI_DIE2"
.LASF915:
	.string	"S_BSPI_DIE3"
.LASF916:
	.string	"S_BSPI_DIE4"
.LASF917:
	.string	"S_BSPI_DIE5"
.LASF75:
	.string	"wp_chaingun"
.LASF919:
	.string	"S_BSPI_DIE7"
.LASF1548:
	.string	"mus_theda3"
.LASF843:
	.string	"S_BOS2_RAISE6"
.LASF470:
	.string	"S_SPOS_RUN2"
.LASF1696:
	.string	"backsector"
.LASF471:
	.string	"S_SPOS_RUN3"
.LASF973:
	.string	"S_PAIN_PAIN2"
.LASF608:
	.string	"S_SKEL_DIE4"
.LASF1562:
	.string	"sfx_pistol"
.LASF204:
	.string	"SPR_SHEL"
.LASF1356:
	.string	"MT_MISC69"
.LASF1438:
	.string	"armortype"
.LASF48:
	.string	"false"
.LASF256:
	.string	"SPR_TLMP"
.LASF1705:
	.string	"origin"
.LASF435:
	.string	"S_POSS_STND2"
.LASF1314:
	.string	"MT_SHOTGUN"
.LASF1750:
	.string	"S_UpdateSounds"
.LASF1239:
	.string	"MT_SHOTGUY"
.LASF1453:
	.string	"itemcount"
.LASF1219:
	.string	"S_TECHLAMP"
.LASF1260:
	.string	"MT_WOLFSS"
.LASF817:
	.string	"S_BOS2_STND2"
.LASF1533:
	.string	"mus_in_cit"
.LASF1684:
	.string	"soundtarget"
.LASF312:
	.string	"S_CHAIN1"
.LASF313:
	.string	"S_CHAIN2"
.LASF314:
	.string	"S_CHAIN3"
.LASF365:
	.string	"S_RBALLX2"
.LASF366:
	.string	"S_RBALLX3"
.LASF241:
	.string	"SPR_TBLU"
.LASF468:
	.string	"S_SPOS_STND2"
.LASF4:
	.string	"unsigned int"
.LASF1563:
	.string	"sfx_shotgn"
.LASF1407:
	.string	"snext"
.LASF89:
	.string	"am_noammo"
.LASF1706:
	.string	"channel_t"
.LASF115:
	.string	"thinker_s"
.LASF119:
	.string	"thinker_t"
.LASF1492:
	.string	"mus_None"
.LASF1747:
	.string	"m_id"
.LASF1547:
	.string	"mus_ampie"
.LASF1623:
	.string	"sfx_bgdth1"
.LASF1624:
	.string	"sfx_bgdth2"
.LASF444:
	.string	"S_POSS_ATK1"
.LASF445:
	.string	"S_POSS_ATK2"
.LASF446:
	.string	"S_POSS_ATK3"
.LASF1358:
	.string	"MT_MISC71"
.LASF1207:
	.string	"S_RTORCHSHRT2"
.LASF1208:
	.string	"S_RTORCHSHRT3"
.LASF878:
	.string	"S_SPID_ATK4"
.LASF1111:
	.string	"S_PINV4"
.LASF8:
	.string	"short int"
.LASF895:
	.string	"S_BSPI_RUN1"
.LASF1364:
	.string	"MT_MISC77"
.LASF1365:
	.string	"MT_MISC78"
.LASF1366:
	.string	"MT_MISC79"
.LASF1255:
	.string	"MT_SKULL"
.LASF1242:
	.string	"MT_UNDEAD"
.LASF64:
	.string	"GameMode_t"
.LASF116:
	.string	"prev"
.LASF31:
	.string	"_vtable_offset"
.LASF605:
	.string	"S_SKEL_DIE1"
.LASF606:
	.string	"S_SKEL_DIE2"
.LASF607:
	.string	"S_SKEL_DIE3"
.LASF152:
	.string	"SPR_FIRE"
.LASF609:
	.string	"S_SKEL_DIE5"
.LASF610:
	.string	"S_SKEL_DIE6"
.LASF1585:
	.string	"sfx_swtchx"
.LASF1216:
	.string	"S_COLONGIBS"
.LASF1470:
	.string	"gamemode"
.LASF257:
	.string	"SPR_TLP2"
.LASF1709:
	.string	"mus_paused"
.LASF367:
	.string	"S_PLASBALL"
.LASF1619:
	.string	"sfx_pdiehi"
.LASF213:
	.string	"SPR_SGN2"
.LASF99:
	.string	"options"
.LASF166:
	.string	"SPR_BSPI"
.LASF1494:
	.string	"mus_e1m2"
.LASF168:
	.string	"SPR_APBX"
.LASF1461:
	.string	"colormap"
.LASF62:
	.string	"retail"
.LASF1291:
	.string	"MT_MISC11"
.LASF1292:
	.string	"MT_MISC12"
.LASF1294:
	.string	"MT_MISC13"
.LASF1296:
	.string	"MT_MISC14"
.LASF1297:
	.string	"MT_MISC15"
.LASF1298:
	.string	"MT_MISC16"
.LASF1301:
	.string	"MT_MISC17"
.LASF1302:
	.string	"MT_MISC18"
.LASF1130:
	.string	"S_CLIP"
.LASF1392:
	.string	"radius"
.LASF1419:
	.string	"health"
.LASF1264:
	.string	"MT_BOSSTARGET"
.LASF1608:
	.string	"sfx_kntsit"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"s_sound.c"
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
