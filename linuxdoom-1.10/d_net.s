	.file	"d_net.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "d_net.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 48
rcsid:
	.string	"$Id: d_net.c,v 1.3 1997/02/03 22:01:47 b1 Exp $"
	.globl	doomcom
	.bss
	.align 8
	.type	doomcom, @object
	.size	doomcom, 8
doomcom:
	.zero	8
	.globl	netbuffer
	.align 8
	.type	netbuffer, @object
	.size	netbuffer, 8
netbuffer:
	.zero	8
	.globl	localcmds
	.align 32
	.type	localcmds, @object
	.size	localcmds, 96
localcmds:
	.zero	96
	.globl	netcmds
	.align 32
	.type	netcmds, @object
	.size	netcmds, 384
netcmds:
	.zero	384
	.globl	nettics
	.align 32
	.type	nettics, @object
	.size	nettics, 32
nettics:
	.zero	32
	.globl	nodeingame
	.align 32
	.type	nodeingame, @object
	.size	nodeingame, 32
nodeingame:
	.zero	32
	.globl	remoteresend
	.align 32
	.type	remoteresend, @object
	.size	remoteresend, 32
remoteresend:
	.zero	32
	.globl	resendto
	.align 32
	.type	resendto, @object
	.size	resendto, 32
resendto:
	.zero	32
	.globl	resendcount
	.align 32
	.type	resendcount, @object
	.size	resendcount, 32
resendcount:
	.zero	32
	.globl	nodeforplayer
	.align 16
	.type	nodeforplayer, @object
	.size	nodeforplayer, 16
nodeforplayer:
	.zero	16
	.globl	maketic
	.align 4
	.type	maketic, @object
	.size	maketic, 4
maketic:
	.zero	4
	.globl	lastnettic
	.align 4
	.type	lastnettic, @object
	.size	lastnettic, 4
lastnettic:
	.zero	4
	.globl	skiptics
	.align 4
	.type	skiptics, @object
	.size	skiptics, 4
skiptics:
	.zero	4
	.globl	ticdup
	.align 4
	.type	ticdup, @object
	.size	ticdup, 4
ticdup:
	.zero	4
	.globl	maxsend
	.align 4
	.type	maxsend, @object
	.size	maxsend, 4
maxsend:
	.zero	4
	.globl	reboundpacket
	.align 4
	.type	reboundpacket, @object
	.size	reboundpacket, 4
reboundpacket:
	.zero	4
	.globl	reboundstore
	.align 32
	.type	reboundstore, @object
	.size	reboundstore, 104
reboundstore:
	.zero	104
	.text
	.globl	NetbufferSize
	.type	NetbufferSize, @function
NetbufferSize:
.LFB0:
	.file 1 "d_net.c"
	.loc 1 91 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# d_net.c:92:     return (int)&(((doomdata_t *)0)->cmds[netbuffer->numtics]); 
	.loc 1 92 52
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.0_1
	movzbl	7(%rax), %eax	# netbuffer.0_1->numtics, _2
	movzbl	%al, %eax	# _2, _3
# d_net.c:92:     return (int)&(((doomdata_t *)0)->cmds[netbuffer->numtics]); 
	.loc 1 92 17
	salq	$3, %rax	#, _4
	addq	$8, %rax	#, _5
# d_net.c:93: }
	.loc 1 93 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	NetbufferSize, .-NetbufferSize
	.globl	NetbufferChecksum
	.type	NetbufferChecksum, @function
NetbufferChecksum:
.LFB1:
	.loc 1 99 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# d_net.c:103:     c = 0x1234567;
	.loc 1 103 7
	movl	$19088743, -4(%rbp)	#, c
# d_net.c:107:     return 0;			// byte order problems
	.loc 1 107 12
	movl	$0, %eax	#, _2
# d_net.c:115: }
	.loc 1 115 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	NetbufferChecksum, .-NetbufferChecksum
	.section	.rodata
	.align 8
.LC0:
	.string	"ExpandTics: strange value %i at maketic %i"
	.text
	.globl	ExpandTics
	.type	ExpandTics, @function
ExpandTics:
.LFB2:
	.loc 1 121 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# low, low
# d_net.c:124:     delta = low - (maketic&0xff);
	.loc 1 124 27
	movl	maketic(%rip), %eax	# maketic, maketic.2_1
	movzbl	%al, %eax	# maketic.2_1, _2
# d_net.c:124:     delta = low - (maketic&0xff);
	.loc 1 124 11
	movl	-20(%rbp), %edx	# low, tmp98
	subl	%eax, %edx	# _2, tmp97
	movl	%edx, -4(%rbp)	# tmp97, delta
# d_net.c:126:     if (delta >= -64 && delta <= 64)
	.loc 1 126 8
	cmpl	$-64, -4(%rbp)	#, delta
	jl	.L6	#,
# d_net.c:126:     if (delta >= -64 && delta <= 64)
	.loc 1 126 22 discriminator 1
	cmpl	$64, -4(%rbp)	#, delta
	jg	.L6	#,
# d_net.c:127: 	return (maketic&~0xff) + low;
	.loc 1 127 17
	movl	maketic(%rip), %eax	# maketic, maketic.3_3
	movb	$0, %al	#, maketic.3_3
	movl	%eax, %edx	# maketic.3_3, _4
# d_net.c:127: 	return (maketic&~0xff) + low;
	.loc 1 127 25
	movl	-20(%rbp), %eax	# low, tmp99
	addl	%edx, %eax	# _4, _12
	jmp	.L7	#
.L6:
# d_net.c:128:     if (delta > 64)
	.loc 1 128 8
	cmpl	$64, -4(%rbp)	#, delta
	jle	.L8	#,
# d_net.c:129: 	return (maketic&~0xff) - 256 + low;
	.loc 1 129 17
	movl	maketic(%rip), %eax	# maketic, maketic.4_5
	movb	$0, %al	#, _6
# d_net.c:129: 	return (maketic&~0xff) - 256 + low;
	.loc 1 129 25
	leal	-256(%rax), %edx	#, _7
# d_net.c:129: 	return (maketic&~0xff) - 256 + low;
	.loc 1 129 31
	movl	-20(%rbp), %eax	# low, tmp100
	addl	%edx, %eax	# _7, _12
	jmp	.L7	#
.L8:
# d_net.c:130:     if (delta < -64)
	.loc 1 130 8
	cmpl	$-64, -4(%rbp)	#, delta
	jge	.L9	#,
# d_net.c:131: 	return (maketic&~0xff) + 256 + low;
	.loc 1 131 17
	movl	maketic(%rip), %eax	# maketic, maketic.5_8
	movb	$0, %al	#, _9
# d_net.c:131: 	return (maketic&~0xff) + 256 + low;
	.loc 1 131 25
	leal	256(%rax), %edx	#, _10
# d_net.c:131: 	return (maketic&~0xff) + 256 + low;
	.loc 1 131 31
	movl	-20(%rbp), %eax	# low, tmp101
	addl	%edx, %eax	# _10, _12
	jmp	.L7	#
.L9:
# d_net.c:133:     I_Error ("ExpandTics: strange value %i at maketic %i",low,maketic);
	.loc 1 133 5
	movl	maketic(%rip), %edx	# maketic, maketic.6_11
	movl	-20(%rbp), %eax	# low, tmp102
	movl	%eax, %esi	# tmp102,
	leaq	.LC0(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
# d_net.c:134:     return 0;
	.loc 1 134 12
	movl	$0, %eax	#, _12
.L7:
# d_net.c:135: }
	.loc 1 135 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	ExpandTics, .-ExpandTics
	.section	.rodata
	.align 8
.LC1:
	.string	"Tried to transmit to another node"
.LC2:
	.string	"send (%i + %i, R %i) [%i] "
.LC3:
	.string	"%i "
	.text
	.globl	HSendPacket
	.type	HSendPacket, @function
HSendPacket:
.LFB3:
	.loc 1 146 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$32, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -36(%rbp)	# node, node
	movl	%esi, -40(%rbp)	# flags, flags
# d_net.c:147:     netbuffer->checksum = NetbufferChecksum () | flags;
	.loc 1 147 27
	call	NetbufferChecksum	#
	movl	%eax, %edx	#, _1
# d_net.c:147:     netbuffer->checksum = NetbufferChecksum () | flags;
	.loc 1 147 48 discriminator 1
	movl	-40(%rbp), %ecx	# flags, flags.7_2
# d_net.c:147:     netbuffer->checksum = NetbufferChecksum () | flags;
	.loc 1 147 14 discriminator 1
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.8_3
# d_net.c:147:     netbuffer->checksum = NetbufferChecksum () | flags;
	.loc 1 147 48 discriminator 1
	orl	%ecx, %edx	# flags.7_2, _4
# d_net.c:147:     netbuffer->checksum = NetbufferChecksum () | flags;
	.loc 1 147 25 discriminator 1
	movl	%edx, (%rax)	# _4, netbuffer.8_3->checksum
# d_net.c:149:     if (!node)
	.loc 1 149 8
	cmpl	$0, -36(%rbp)	#, node
	jne	.L11	#,
# d_net.c:151: 	reboundstore = *netbuffer;
	.loc 1 151 17
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.9_5
# d_net.c:151: 	reboundstore = *netbuffer;
	.loc 1 151 15
	movq	(%rax), %rcx	# *netbuffer.9_5, tmp124
	movq	8(%rax), %rbx	# *netbuffer.9_5,
	movq	%rcx, reboundstore(%rip)	# tmp124, reboundstore
	movq	%rbx, 8+reboundstore(%rip)	#, reboundstore
	movq	16(%rax), %rcx	# *netbuffer.9_5, tmp125
	movq	24(%rax), %rbx	# *netbuffer.9_5,
	movq	%rcx, 16+reboundstore(%rip)	# tmp125, reboundstore
	movq	%rbx, 24+reboundstore(%rip)	#, reboundstore
	movq	32(%rax), %rcx	# *netbuffer.9_5, tmp126
	movq	40(%rax), %rbx	# *netbuffer.9_5,
	movq	%rcx, 32+reboundstore(%rip)	# tmp126, reboundstore
	movq	%rbx, 40+reboundstore(%rip)	#, reboundstore
	movq	48(%rax), %rcx	# *netbuffer.9_5, tmp127
	movq	56(%rax), %rbx	# *netbuffer.9_5,
	movq	%rcx, 48+reboundstore(%rip)	# tmp127, reboundstore
	movq	%rbx, 56+reboundstore(%rip)	#, reboundstore
	movq	64(%rax), %rcx	# *netbuffer.9_5, tmp128
	movq	72(%rax), %rbx	# *netbuffer.9_5,
	movq	%rcx, 64+reboundstore(%rip)	# tmp128, reboundstore
	movq	%rbx, 72+reboundstore(%rip)	#, reboundstore
	movq	80(%rax), %rcx	# *netbuffer.9_5, tmp129
	movq	88(%rax), %rbx	# *netbuffer.9_5,
	movq	%rcx, 80+reboundstore(%rip)	# tmp129, reboundstore
	movq	%rbx, 88+reboundstore(%rip)	#, reboundstore
	movq	96(%rax), %rax	# *netbuffer.9_5, tmp130
	movq	%rax, 96+reboundstore(%rip)	# tmp130, reboundstore
# d_net.c:152: 	reboundpacket = true;
	.loc 1 152 16
	movl	$1, reboundpacket(%rip)	#, reboundpacket
# d_net.c:153: 	return;
	.loc 1 153 2
	jmp	.L10	#
.L11:
# d_net.c:156:     if (demoplayback)
	.loc 1 156 9
	movl	demoplayback(%rip), %eax	# demoplayback, demoplayback.10_6
# d_net.c:156:     if (demoplayback)
	.loc 1 156 8
	testl	%eax, %eax	# demoplayback.10_6
	jne	.L20	#,
# d_net.c:159:     if (!netgame)
	.loc 1 159 9
	movl	netgame(%rip), %eax	# netgame, netgame.11_7
# d_net.c:159:     if (!netgame)
	.loc 1 159 8
	testl	%eax, %eax	# netgame.11_7
	jne	.L14	#,
# d_net.c:160: 	I_Error ("Tried to transmit to another node");
	.loc 1 160 2
	leaq	.LC1(%rip), %rax	#, tmp131
	movq	%rax, %rdi	# tmp131,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L14:
# d_net.c:162:     doomcom->command = CMD_SEND;
	.loc 1 162 12
	movq	doomcom(%rip), %rax	# doomcom, doomcom.12_8
# d_net.c:162:     doomcom->command = CMD_SEND;
	.loc 1 162 22
	movw	$1, 10(%rax)	#, doomcom.12_8->command
# d_net.c:163:     doomcom->remotenode = node;
	.loc 1 163 12
	movq	doomcom(%rip), %rax	# doomcom, doomcom.13_9
# d_net.c:163:     doomcom->remotenode = node;
	.loc 1 163 25
	movl	-36(%rbp), %edx	# node, tmp132
	movw	%dx, 12(%rax)	# _10, doomcom.13_9->remotenode
# d_net.c:164:     doomcom->datalength = NetbufferSize ();
	.loc 1 164 27
	call	NetbufferSize	#
	movl	%eax, %edx	#, _11
# d_net.c:164:     doomcom->datalength = NetbufferSize ();
	.loc 1 164 12 discriminator 1
	movq	doomcom(%rip), %rax	# doomcom, doomcom.14_12
# d_net.c:164:     doomcom->datalength = NetbufferSize ();
	.loc 1 164 25 discriminator 1
	movw	%dx, 14(%rax)	# _13, doomcom.14_12->datalength
# d_net.c:166:     if (debugfile)
	.loc 1 166 9
	movq	debugfile(%rip), %rax	# debugfile, debugfile.15_14
# d_net.c:166:     if (debugfile)
	.loc 1 166 8
	testq	%rax, %rax	# debugfile.15_14
	je	.L15	#,
.LBB2:
# d_net.c:170: 	if (netbuffer->checksum & NCMD_RETRANSMIT)
	.loc 1 170 15
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.16_15
	movl	(%rax), %eax	# netbuffer.16_15->checksum, _16
# d_net.c:170: 	if (netbuffer->checksum & NCMD_RETRANSMIT)
	.loc 1 170 26
	andl	$1073741824, %eax	#, _17
# d_net.c:170: 	if (netbuffer->checksum & NCMD_RETRANSMIT)
	.loc 1 170 5
	testl	%eax, %eax	# _17
	je	.L16	#,
# d_net.c:171: 	    realretrans = ExpandTics (netbuffer->retransmitfrom);
	.loc 1 171 41
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.17_18
	movzbl	4(%rax), %eax	# netbuffer.17_18->retransmitfrom, _19
# d_net.c:171: 	    realretrans = ExpandTics (netbuffer->retransmitfrom);
	.loc 1 171 20
	movzbl	%al, %eax	# _19, _20
	movl	%eax, %edi	# _20,
	call	ExpandTics	#
	movl	%eax, -20(%rbp)	# tmp133, realretrans
	jmp	.L17	#
.L16:
# d_net.c:173: 	    realretrans = -1;
	.loc 1 173 18
	movl	$-1, -20(%rbp)	#, realretrans
.L17:
# d_net.c:177: 		 netbuffer->numtics, realretrans, doomcom->datalength);
	.loc 1 177 44
	movq	doomcom(%rip), %rax	# doomcom, doomcom.18_21
	movzwl	14(%rax), %eax	# doomcom.18_21->datalength, _22
# d_net.c:175: 	fprintf (debugfile,"send (%i + %i, R %i) [%i] ",
	.loc 1 175 2
	movswl	%ax, %r12d	# _22, _23
# d_net.c:177: 		 netbuffer->numtics, realretrans, doomcom->datalength);
	.loc 1 177 13
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.19_24
	movzbl	7(%rax), %eax	# netbuffer.19_24->numtics, _25
# d_net.c:175: 	fprintf (debugfile,"send (%i + %i, R %i) [%i] ",
	.loc 1 175 2
	movzbl	%al, %ebx	# _25, _26
# d_net.c:176: 		 ExpandTics(netbuffer->starttic),
	.loc 1 176 24
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.20_27
	movzbl	5(%rax), %eax	# netbuffer.20_27->starttic, _28
# d_net.c:175: 	fprintf (debugfile,"send (%i + %i, R %i) [%i] ",
	.loc 1 175 2
	movzbl	%al, %eax	# _28, _29
	movl	%eax, %edi	# _29,
	call	ExpandTics	#
	movl	%eax, %edx	#, _30
# d_net.c:175: 	fprintf (debugfile,"send (%i + %i, R %i) [%i] ",
	.loc 1 175 2 is_stmt 0 discriminator 1
	movq	debugfile(%rip), %rax	# debugfile, debugfile.21_31
	movl	-20(%rbp), %ecx	# realretrans, tmp134
	movl	%r12d, %r9d	# _23,
	movl	%ecx, %r8d	# tmp134,
	movl	%ebx, %ecx	# _26,
	leaq	.LC2(%rip), %rsi	#, tmp135
	movq	%rax, %rdi	# debugfile.21_31,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
# d_net.c:179: 	for (i=0 ; i<doomcom->datalength ; i++)
	.loc 1 179 8 is_stmt 1
	movl	$0, -24(%rbp)	#, i
# d_net.c:179: 	for (i=0 ; i<doomcom->datalength ; i++)
	.loc 1 179 2
	jmp	.L18	#
.L19:
# d_net.c:180: 	    fprintf (debugfile,"%i ",((byte *)netbuffer)[i]);
	.loc 1 180 32
	movq	netbuffer(%rip), %rdx	# netbuffer, netbuffer.22_32
# d_net.c:180: 	    fprintf (debugfile,"%i ",((byte *)netbuffer)[i]);
	.loc 1 180 50
	movl	-24(%rbp), %eax	# i, tmp136
	cltq
	addq	%rdx, %rax	# netbuffer.22_32, _34
	movzbl	(%rax), %eax	# *_34, _35
# d_net.c:180: 	    fprintf (debugfile,"%i ",((byte *)netbuffer)[i]);
	.loc 1 180 6
	movzbl	%al, %edx	# _35, _36
	movq	debugfile(%rip), %rax	# debugfile, debugfile.23_37
	leaq	.LC3(%rip), %rcx	#, tmp137
	movq	%rcx, %rsi	# tmp137,
	movq	%rax, %rdi	# debugfile.23_37,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
# d_net.c:179: 	for (i=0 ; i<doomcom->datalength ; i++)
	.loc 1 179 38 discriminator 3
	addl	$1, -24(%rbp)	#, i
.L18:
# d_net.c:179: 	for (i=0 ; i<doomcom->datalength ; i++)
	.loc 1 179 22 discriminator 1
	movq	doomcom(%rip), %rax	# doomcom, doomcom.24_38
	movzwl	14(%rax), %eax	# doomcom.24_38->datalength, _39
	cwtl
# d_net.c:179: 	for (i=0 ; i<doomcom->datalength ; i++)
	.loc 1 179 14 discriminator 1
	cmpl	%eax, -24(%rbp)	# _40, i
	jl	.L19	#,
# d_net.c:182: 	fprintf (debugfile,"\n");
	.loc 1 182 2
	movq	debugfile(%rip), %rax	# debugfile, debugfile.25_41
	movq	%rax, %rsi	# debugfile.25_41,
	movl	$10, %edi	#,
	call	fputc@PLT	#
.L15:
.LBE2:
# d_net.c:185:     I_NetCmd ();
	.loc 1 185 5
	call	I_NetCmd@PLT	#
	jmp	.L10	#
.L20:
# d_net.c:157: 	return;
	.loc 1 157 2
	nop	
.L10:
# d_net.c:186: }
	.loc 1 186 1
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3:
	.size	HSendPacket, .-HSendPacket
	.section	.rodata
.LC4:
	.string	"bad packet length %i\n"
.LC5:
	.string	"bad packet checksum\n"
.LC6:
	.string	"setup packet\n"
.LC7:
	.string	"get %i = (%i + %i, R %i)[%i] "
	.text
	.globl	HGetPacket
	.type	HGetPacket, @function
HGetPacket:
.LFB4:
	.loc 1 193 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$16, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
# d_net.c:194:     if (reboundpacket)
	.loc 1 194 9
	movl	reboundpacket(%rip), %eax	# reboundpacket, reboundpacket.26_1
# d_net.c:194:     if (reboundpacket)
	.loc 1 194 8
	testl	%eax, %eax	# reboundpacket.26_1
	je	.L22	#,
# d_net.c:196: 	*netbuffer = reboundstore;
	.loc 1 196 2
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.27_2
# d_net.c:196: 	*netbuffer = reboundstore;
	.loc 1 196 13
	movq	reboundstore(%rip), %rcx	# reboundstore, tmp143
	movq	8+reboundstore(%rip), %rbx	# reboundstore,
	movq	%rcx, (%rax)	# tmp143, *netbuffer.27_2
	movq	%rbx, 8(%rax)	#, *netbuffer.27_2
	movq	16+reboundstore(%rip), %rcx	# reboundstore, tmp144
	movq	24+reboundstore(%rip), %rbx	# reboundstore,
	movq	%rcx, 16(%rax)	# tmp144, *netbuffer.27_2
	movq	%rbx, 24(%rax)	#, *netbuffer.27_2
	movq	32+reboundstore(%rip), %rcx	# reboundstore, tmp145
	movq	40+reboundstore(%rip), %rbx	# reboundstore,
	movq	%rcx, 32(%rax)	# tmp145, *netbuffer.27_2
	movq	%rbx, 40(%rax)	#, *netbuffer.27_2
	movq	48+reboundstore(%rip), %rcx	# reboundstore, tmp146
	movq	56+reboundstore(%rip), %rbx	# reboundstore,
	movq	%rcx, 48(%rax)	# tmp146, *netbuffer.27_2
	movq	%rbx, 56(%rax)	#, *netbuffer.27_2
	movq	64+reboundstore(%rip), %rcx	# reboundstore, tmp147
	movq	72+reboundstore(%rip), %rbx	# reboundstore,
	movq	%rcx, 64(%rax)	# tmp147, *netbuffer.27_2
	movq	%rbx, 72(%rax)	#, *netbuffer.27_2
	movq	80+reboundstore(%rip), %rcx	# reboundstore, tmp148
	movq	88+reboundstore(%rip), %rbx	# reboundstore,
	movq	%rcx, 80(%rax)	# tmp148, *netbuffer.27_2
	movq	%rbx, 88(%rax)	#, *netbuffer.27_2
	movq	96+reboundstore(%rip), %rdx	# reboundstore, tmp149
	movq	%rdx, 96(%rax)	# tmp149, *netbuffer.27_2
# d_net.c:197: 	doomcom->remotenode = 0;
	.loc 1 197 9
	movq	doomcom(%rip), %rax	# doomcom, doomcom.28_3
# d_net.c:197: 	doomcom->remotenode = 0;
	.loc 1 197 22
	movw	$0, 12(%rax)	#, doomcom.28_3->remotenode
# d_net.c:198: 	reboundpacket = false;
	.loc 1 198 16
	movl	$0, reboundpacket(%rip)	#, reboundpacket
# d_net.c:199: 	return true;
	.loc 1 199 9
	movl	$1, %eax	#, _61
	jmp	.L23	#
.L22:
# d_net.c:202:     if (!netgame)
	.loc 1 202 9
	movl	netgame(%rip), %eax	# netgame, netgame.29_4
# d_net.c:202:     if (!netgame)
	.loc 1 202 8
	testl	%eax, %eax	# netgame.29_4
	jne	.L24	#,
# d_net.c:203: 	return false;
	.loc 1 203 9
	movl	$0, %eax	#, _61
	jmp	.L23	#
.L24:
# d_net.c:205:     if (demoplayback)
	.loc 1 205 9
	movl	demoplayback(%rip), %eax	# demoplayback, demoplayback.30_5
# d_net.c:205:     if (demoplayback)
	.loc 1 205 8
	testl	%eax, %eax	# demoplayback.30_5
	je	.L25	#,
# d_net.c:206: 	return false;
	.loc 1 206 9
	movl	$0, %eax	#, _61
	jmp	.L23	#
.L25:
# d_net.c:208:     doomcom->command = CMD_GET;
	.loc 1 208 12
	movq	doomcom(%rip), %rax	# doomcom, doomcom.31_6
# d_net.c:208:     doomcom->command = CMD_GET;
	.loc 1 208 22
	movw	$2, 10(%rax)	#, doomcom.31_6->command
# d_net.c:209:     I_NetCmd ();
	.loc 1 209 5
	call	I_NetCmd@PLT	#
# d_net.c:211:     if (doomcom->remotenode == -1)
	.loc 1 211 16
	movq	doomcom(%rip), %rax	# doomcom, doomcom.32_7
	movzwl	12(%rax), %eax	# doomcom.32_7->remotenode, _8
# d_net.c:211:     if (doomcom->remotenode == -1)
	.loc 1 211 8
	cmpw	$-1, %ax	#, _8
	jne	.L26	#,
# d_net.c:212: 	return false;
	.loc 1 212 9
	movl	$0, %eax	#, _61
	jmp	.L23	#
.L26:
# d_net.c:214:     if (doomcom->datalength != NetbufferSize ())
	.loc 1 214 16
	movq	doomcom(%rip), %rax	# doomcom, doomcom.33_9
	movzwl	14(%rax), %eax	# doomcom.33_9->datalength, _10
	movswl	%ax, %ebx	# _10, _11
# d_net.c:214:     if (doomcom->datalength != NetbufferSize ())
	.loc 1 214 32
	call	NetbufferSize	#
# d_net.c:214:     if (doomcom->datalength != NetbufferSize ())
	.loc 1 214 8 discriminator 1
	cmpl	%eax, %ebx	# _12, _11
	je	.L27	#,
# d_net.c:216: 	if (debugfile)
	.loc 1 216 6
	movq	debugfile(%rip), %rax	# debugfile, debugfile.34_13
# d_net.c:216: 	if (debugfile)
	.loc 1 216 5
	testq	%rax, %rax	# debugfile.34_13
	je	.L28	#,
# d_net.c:217: 	    fprintf (debugfile,"bad packet length %i\n",doomcom->datalength);
	.loc 1 217 57
	movq	doomcom(%rip), %rax	# doomcom, doomcom.35_14
	movzwl	14(%rax), %eax	# doomcom.35_14->datalength, _15
# d_net.c:217: 	    fprintf (debugfile,"bad packet length %i\n",doomcom->datalength);
	.loc 1 217 6
	movswl	%ax, %edx	# _15, _16
	movq	debugfile(%rip), %rax	# debugfile, debugfile.36_17
	leaq	.LC4(%rip), %rcx	#, tmp150
	movq	%rcx, %rsi	# tmp150,
	movq	%rax, %rdi	# debugfile.36_17,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
.L28:
# d_net.c:218: 	return false;
	.loc 1 218 9
	movl	$0, %eax	#, _61
	jmp	.L23	#
.L27:
# d_net.c:221:     if (NetbufferChecksum () != (netbuffer->checksum&NCMD_CHECKSUM) )
	.loc 1 221 9
	call	NetbufferChecksum	#
# d_net.c:221:     if (NetbufferChecksum () != (netbuffer->checksum&NCMD_CHECKSUM) )
	.loc 1 221 43 discriminator 1
	movq	netbuffer(%rip), %rdx	# netbuffer, netbuffer.37_19
	movl	(%rdx), %edx	# netbuffer.37_19->checksum, _20
# d_net.c:221:     if (NetbufferChecksum () != (netbuffer->checksum&NCMD_CHECKSUM) )
	.loc 1 221 53 discriminator 1
	andl	$268435455, %edx	#, _21
# d_net.c:221:     if (NetbufferChecksum () != (netbuffer->checksum&NCMD_CHECKSUM) )
	.loc 1 221 8 discriminator 1
	cmpl	%edx, %eax	# _21, _18
	je	.L29	#,
# d_net.c:223: 	if (debugfile)
	.loc 1 223 6
	movq	debugfile(%rip), %rax	# debugfile, debugfile.38_22
# d_net.c:223: 	if (debugfile)
	.loc 1 223 5
	testq	%rax, %rax	# debugfile.38_22
	je	.L30	#,
# d_net.c:224: 	    fprintf (debugfile,"bad packet checksum\n");
	.loc 1 224 6
	movq	debugfile(%rip), %rax	# debugfile, debugfile.39_23
	movq	%rax, %rcx	# debugfile.39_23,
	movl	$20, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC5(%rip), %rax	#, tmp151
	movq	%rax, %rdi	# tmp151,
	call	fwrite@PLT	#
.L30:
# d_net.c:225: 	return false;
	.loc 1 225 9
	movl	$0, %eax	#, _61
	jmp	.L23	#
.L29:
# d_net.c:228:     if (debugfile)
	.loc 1 228 9
	movq	debugfile(%rip), %rax	# debugfile, debugfile.40_24
# d_net.c:228:     if (debugfile)
	.loc 1 228 8
	testq	%rax, %rax	# debugfile.40_24
	je	.L31	#,
.LBB3:
# d_net.c:233: 	if (netbuffer->checksum & NCMD_SETUP)
	.loc 1 233 15
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.41_25
	movl	(%rax), %eax	# netbuffer.41_25->checksum, _26
# d_net.c:233: 	if (netbuffer->checksum & NCMD_SETUP)
	.loc 1 233 26
	andl	$536870912, %eax	#, _27
# d_net.c:233: 	if (netbuffer->checksum & NCMD_SETUP)
	.loc 1 233 5
	testl	%eax, %eax	# _27
	je	.L32	#,
# d_net.c:234: 	    fprintf (debugfile,"setup packet\n");
	.loc 1 234 6
	movq	debugfile(%rip), %rax	# debugfile, debugfile.42_28
	movq	%rax, %rcx	# debugfile.42_28,
	movl	$13, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC6(%rip), %rax	#, tmp152
	movq	%rax, %rdi	# tmp152,
	call	fwrite@PLT	#
	jmp	.L31	#
.L32:
# d_net.c:237: 	    if (netbuffer->checksum & NCMD_RETRANSMIT)
	.loc 1 237 19
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.43_29
	movl	(%rax), %eax	# netbuffer.43_29->checksum, _30
# d_net.c:237: 	    if (netbuffer->checksum & NCMD_RETRANSMIT)
	.loc 1 237 30
	andl	$1073741824, %eax	#, _31
# d_net.c:237: 	    if (netbuffer->checksum & NCMD_RETRANSMIT)
	.loc 1 237 9
	testl	%eax, %eax	# _31
	je	.L33	#,
# d_net.c:238: 		realretrans = ExpandTics (netbuffer->retransmitfrom);
	.loc 1 238 38
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.44_32
	movzbl	4(%rax), %eax	# netbuffer.44_32->retransmitfrom, _33
# d_net.c:238: 		realretrans = ExpandTics (netbuffer->retransmitfrom);
	.loc 1 238 17
	movzbl	%al, %eax	# _33, _34
	movl	%eax, %edi	# _34,
	call	ExpandTics	#
	movl	%eax, -24(%rbp)	# tmp153, realretrans
	jmp	.L34	#
.L33:
# d_net.c:240: 		realretrans = -1;
	.loc 1 240 15
	movl	$-1, -24(%rbp)	#, realretrans
.L34:
# d_net.c:245: 		     netbuffer->numtics, realretrans, doomcom->datalength);
	.loc 1 245 48
	movq	doomcom(%rip), %rax	# doomcom, doomcom.45_35
	movzwl	14(%rax), %eax	# doomcom.45_35->datalength, _36
# d_net.c:242: 	    fprintf (debugfile,"get %i = (%i + %i, R %i)[%i] ",
	.loc 1 242 6
	movswl	%ax, %ebx	# _36, _37
# d_net.c:245: 		     netbuffer->numtics, realretrans, doomcom->datalength);
	.loc 1 245 17
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.46_38
	movzbl	7(%rax), %eax	# netbuffer.46_38->numtics, _39
# d_net.c:242: 	    fprintf (debugfile,"get %i = (%i + %i, R %i)[%i] ",
	.loc 1 242 6
	movzbl	%al, %r12d	# _39, _40
# d_net.c:244: 		     ExpandTics(netbuffer->starttic),
	.loc 1 244 28
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.47_41
	movzbl	5(%rax), %eax	# netbuffer.47_41->starttic, _42
# d_net.c:242: 	    fprintf (debugfile,"get %i = (%i + %i, R %i)[%i] ",
	.loc 1 242 6
	movzbl	%al, %eax	# _42, _43
	movl	%eax, %edi	# _43,
	call	ExpandTics	#
	movl	%eax, %ecx	#, _44
# d_net.c:243: 		     doomcom->remotenode,
	.loc 1 243 15
	movq	doomcom(%rip), %rax	# doomcom, doomcom.48_45
	movzwl	12(%rax), %eax	# doomcom.48_45->remotenode, _46
# d_net.c:242: 	    fprintf (debugfile,"get %i = (%i + %i, R %i)[%i] ",
	.loc 1 242 6
	movswl	%ax, %edx	# _46, _47
	movq	debugfile(%rip), %rax	# debugfile, debugfile.49_48
	movl	-24(%rbp), %esi	# realretrans, tmp154
	subq	$8, %rsp	#,
	pushq	%rbx	# _37
	movl	%esi, %r9d	# tmp154,
	movl	%r12d, %r8d	# _40,
	leaq	.LC7(%rip), %rsi	#, tmp155
	movq	%rax, %rdi	# debugfile.49_48,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
	addq	$16, %rsp	#,
# d_net.c:247: 	    for (i=0 ; i<doomcom->datalength ; i++)
	.loc 1 247 12
	movl	$0, -20(%rbp)	#, i
# d_net.c:247: 	    for (i=0 ; i<doomcom->datalength ; i++)
	.loc 1 247 6
	jmp	.L35	#
.L36:
# d_net.c:248: 		fprintf (debugfile,"%i ",((byte *)netbuffer)[i]);
	.loc 1 248 29
	movq	netbuffer(%rip), %rdx	# netbuffer, netbuffer.50_49
# d_net.c:248: 		fprintf (debugfile,"%i ",((byte *)netbuffer)[i]);
	.loc 1 248 47
	movl	-20(%rbp), %eax	# i, tmp156
	cltq
	addq	%rdx, %rax	# netbuffer.50_49, _51
	movzbl	(%rax), %eax	# *_51, _52
# d_net.c:248: 		fprintf (debugfile,"%i ",((byte *)netbuffer)[i]);
	.loc 1 248 3
	movzbl	%al, %edx	# _52, _53
	movq	debugfile(%rip), %rax	# debugfile, debugfile.51_54
	leaq	.LC3(%rip), %rcx	#, tmp157
	movq	%rcx, %rsi	# tmp157,
	movq	%rax, %rdi	# debugfile.51_54,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
# d_net.c:247: 	    for (i=0 ; i<doomcom->datalength ; i++)
	.loc 1 247 42 discriminator 3
	addl	$1, -20(%rbp)	#, i
.L35:
# d_net.c:247: 	    for (i=0 ; i<doomcom->datalength ; i++)
	.loc 1 247 26 discriminator 1
	movq	doomcom(%rip), %rax	# doomcom, doomcom.52_55
	movzwl	14(%rax), %eax	# doomcom.52_55->datalength, _56
	cwtl
# d_net.c:247: 	    for (i=0 ; i<doomcom->datalength ; i++)
	.loc 1 247 18 discriminator 1
	cmpl	%eax, -20(%rbp)	# _57, i
	jl	.L36	#,
# d_net.c:249: 	    fprintf (debugfile,"\n");
	.loc 1 249 6
	movq	debugfile(%rip), %rax	# debugfile, debugfile.53_58
	movq	%rax, %rsi	# debugfile.53_58,
	movl	$10, %edi	#,
	call	fputc@PLT	#
.L31:
.LBE3:
# d_net.c:252:     return true;	
	.loc 1 252 12
	movl	$1, %eax	#, _61
.L23:
# d_net.c:253: }
	.loc 1 253 1
	leaq	-16(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4:
	.size	HGetPacket, .-HGetPacket
	.globl	exitmsg
	.bss
	.align 32
	.type	exitmsg, @object
	.size	exitmsg, 80
exitmsg:
	.zero	80
	.section	.rodata
.LC8:
	.string	"Killed by network driver"
.LC9:
	.string	"retransmit from %i\n"
	.align 8
.LC10:
	.string	"out of order packet (%i + %i)\n"
	.align 8
.LC11:
	.string	"missed tics from %i (%i - %i)\n"
	.text
	.globl	GetPackets
	.type	GetPackets, @function
GetPackets:
.LFB5:
	.loc 1 262 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
# d_net.c:269:     while ( HGetPacket() )
	.loc 1 269 11
	jmp	.L38	#
.L55:
# d_net.c:271: 	if (netbuffer->checksum & NCMD_SETUP)
	.loc 1 271 15
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.54_1
	movl	(%rax), %eax	# netbuffer.54_1->checksum, _2
# d_net.c:271: 	if (netbuffer->checksum & NCMD_SETUP)
	.loc 1 271 26
	andl	$536870912, %eax	#, _3
# d_net.c:271: 	if (netbuffer->checksum & NCMD_SETUP)
	.loc 1 271 5
	testl	%eax, %eax	# _3
	jne	.L56	#,
# d_net.c:274: 	netconsole = netbuffer->player & ~PL_DRONE;
	.loc 1 274 24
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.55_4
	movzbl	6(%rax), %eax	# netbuffer.55_4->player, _5
	movzbl	%al, %eax	# _5, _6
# d_net.c:274: 	netconsole = netbuffer->player & ~PL_DRONE;
	.loc 1 274 13
	andb	$127, %al	#, tmp142
	movl	%eax, -36(%rbp)	# tmp142, netconsole
# d_net.c:275: 	netnode = doomcom->remotenode;
	.loc 1 275 19
	movq	doomcom(%rip), %rax	# doomcom, doomcom.56_7
	movzwl	12(%rax), %eax	# doomcom.56_7->remotenode, _8
# d_net.c:275: 	netnode = doomcom->remotenode;
	.loc 1 275 10
	cwtl
	movl	%eax, -32(%rbp)	# tmp143, netnode
# d_net.c:279: 	realstart = ExpandTics (netbuffer->starttic);		
	.loc 1 279 35
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.57_9
	movzbl	5(%rax), %eax	# netbuffer.57_9->starttic, _10
# d_net.c:279: 	realstart = ExpandTics (netbuffer->starttic);		
	.loc 1 279 14
	movzbl	%al, %eax	# _10, _11
	movl	%eax, %edi	# _11,
	call	ExpandTics	#
	movl	%eax, -28(%rbp)	# tmp144, realstart
# d_net.c:280: 	realend = (realstart+netbuffer->numtics);
	.loc 1 280 32
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.58_12
	movzbl	7(%rax), %eax	# netbuffer.58_12->numtics, _13
	movzbl	%al, %edx	# _13, _14
# d_net.c:280: 	realend = (realstart+netbuffer->numtics);
	.loc 1 280 10
	movl	-28(%rbp), %eax	# realstart, tmp148
	addl	%edx, %eax	# _14, tmp147
	movl	%eax, -24(%rbp)	# tmp147, realend
# d_net.c:283: 	if (netbuffer->checksum & NCMD_EXIT)
	.loc 1 283 15
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.59_15
	movl	(%rax), %eax	# netbuffer.59_15->checksum, _16
# d_net.c:283: 	if (netbuffer->checksum & NCMD_EXIT)
	.loc 1 283 5
	testl	%eax, %eax	# _17
	jns	.L41	#,
# d_net.c:285: 	    if (!nodeingame[netnode])
	.loc 1 285 21
	movl	-32(%rbp), %eax	# netnode, tmp150
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp151
	leaq	nodeingame(%rip), %rax	#, tmp152
	movl	(%rdx,%rax), %eax	# nodeingame[netnode_73], _18
# d_net.c:285: 	    if (!nodeingame[netnode])
	.loc 1 285 9
	testl	%eax, %eax	# _18
	je	.L57	#,
# d_net.c:287: 	    nodeingame[netnode] = false;
	.loc 1 287 26
	movl	-32(%rbp), %eax	# netnode, tmp154
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp155
	leaq	nodeingame(%rip), %rax	#, tmp156
	movl	$0, (%rdx,%rax)	#, nodeingame[netnode_73]
# d_net.c:288: 	    playeringame[netconsole] = false;
	.loc 1 288 31
	movl	-36(%rbp), %eax	# netconsole, tmp158
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp159
	leaq	playeringame(%rip), %rax	#, tmp160
	movl	$0, (%rdx,%rax)	#, playeringame[netconsole_72]
# d_net.c:289: 	    strcpy (exitmsg, "Player 1 left the game");
	.loc 1 289 6
	movabsq	$3539955087266901072, %rax	#, tmp275
	movabsq	$7526676561549159456, %rdx	#,
	movq	%rax, exitmsg(%rip)	# tmp275, MEM <char[1:23]> [(void *)&exitmsg]
	movq	%rdx, 8+exitmsg(%rip)	#, MEM <char[1:23]> [(void *)&exitmsg]
	movabsq	$28549237757207912, %rax	#, tmp276
	movq	%rax, 15+exitmsg(%rip)	# tmp276, MEM <char[1:23]> [(void *)&exitmsg]
# d_net.c:290: 	    exitmsg[7] += netconsole;
	.loc 1 290 13
	movzbl	7+exitmsg(%rip), %eax	# exitmsg[7], _19
	movl	%eax, %edx	# _19, _20
# d_net.c:290: 	    exitmsg[7] += netconsole;
	.loc 1 290 17
	movl	-36(%rbp), %eax	# netconsole, tmp161
	addl	%edx, %eax	# _20, _22
	movb	%al, 7+exitmsg(%rip)	# _23, exitmsg[7]
# d_net.c:291: 	    players[consoleplayer].message = exitmsg;
	.loc 1 291 28
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.60_24
# d_net.c:291: 	    players[consoleplayer].message = exitmsg;
	.loc 1 291 37
	movslq	%eax, %rdx	# consoleplayer.60_24, tmp162
	movq	%rdx, %rax	# tmp162, tmp164
	salq	$2, %rax	#, tmp164
	addq	%rdx, %rax	# tmp162, tmp164
	salq	$6, %rax	#, tmp165
	movq	%rax, %rcx	# tmp164, tmp163
	leaq	224+players(%rip), %rax	#, tmp166
	leaq	exitmsg(%rip), %rdx	#, tmp167
	movq	%rdx, (%rcx,%rax)	# tmp167, players[consoleplayer.60_24].message
# d_net.c:292: 	    if (demorecording)
	.loc 1 292 10
	movl	demorecording(%rip), %eax	# demorecording, demorecording.61_25
# d_net.c:292: 	    if (demorecording)
	.loc 1 292 9
	testl	%eax, %eax	# demorecording.61_25
	je	.L58	#,
# d_net.c:293: 		G_CheckDemoStatus ();
	.loc 1 293 3
	call	G_CheckDemoStatus@PLT	#
# d_net.c:294: 	    continue;
	.loc 1 294 6
	jmp	.L58	#
.L41:
# d_net.c:298: 	if (netbuffer->checksum & NCMD_KILL)
	.loc 1 298 15
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.62_26
	movl	(%rax), %eax	# netbuffer.62_26->checksum, _27
# d_net.c:298: 	if (netbuffer->checksum & NCMD_KILL)
	.loc 1 298 26
	andl	$268435456, %eax	#, _28
# d_net.c:298: 	if (netbuffer->checksum & NCMD_KILL)
	.loc 1 298 5
	testl	%eax, %eax	# _28
	je	.L44	#,
# d_net.c:299: 	    I_Error ("Killed by network driver");
	.loc 1 299 6
	leaq	.LC8(%rip), %rax	#, tmp168
	movq	%rax, %rdi	# tmp168,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L44:
# d_net.c:301: 	nodeforplayer[netconsole] = netnode;
	.loc 1 301 28
	movl	-36(%rbp), %eax	# netconsole, tmp170
	cltq
	leaq	0(,%rax,4), %rcx	#, tmp171
	leaq	nodeforplayer(%rip), %rdx	#, tmp172
	movl	-32(%rbp), %eax	# netnode, tmp173
	movl	%eax, (%rcx,%rdx)	# tmp173, nodeforplayer[netconsole_72]
# d_net.c:304: 	if ( resendcount[netnode] <= 0 
	.loc 1 304 18
	movl	-32(%rbp), %eax	# netnode, tmp175
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp176
	leaq	resendcount(%rip), %rax	#, tmp177
	movl	(%rdx,%rax), %eax	# resendcount[netnode_73], _29
# d_net.c:304: 	if ( resendcount[netnode] <= 0 
	.loc 1 304 5
	testl	%eax, %eax	# _29
	jg	.L45	#,
# d_net.c:305: 	     && (netbuffer->checksum & NCMD_RETRANSMIT) )
	.loc 1 305 20
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.63_30
	movl	(%rax), %eax	# netbuffer.63_30->checksum, _31
# d_net.c:305: 	     && (netbuffer->checksum & NCMD_RETRANSMIT) )
	.loc 1 305 31
	andl	$1073741824, %eax	#, _32
# d_net.c:305: 	     && (netbuffer->checksum & NCMD_RETRANSMIT) )
	.loc 1 305 7
	testl	%eax, %eax	# _32
	je	.L45	#,
# d_net.c:307: 	    resendto[netnode] = ExpandTics(netbuffer->retransmitfrom);
	.loc 1 307 46
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.64_33
	movzbl	4(%rax), %eax	# netbuffer.64_33->retransmitfrom, _34
# d_net.c:307: 	    resendto[netnode] = ExpandTics(netbuffer->retransmitfrom);
	.loc 1 307 26
	movzbl	%al, %eax	# _34, _35
	movl	%eax, %edi	# _35,
	call	ExpandTics	#
# d_net.c:307: 	    resendto[netnode] = ExpandTics(netbuffer->retransmitfrom);
	.loc 1 307 24 discriminator 1
	movl	-32(%rbp), %edx	# netnode, tmp179
	movslq	%edx, %rdx	# tmp179, tmp178
	leaq	0(,%rdx,4), %rcx	#, tmp180
	leaq	resendto(%rip), %rdx	#, tmp181
	movl	%eax, (%rcx,%rdx)	# _36, resendto[netnode_73]
# d_net.c:308: 	    if (debugfile)
	.loc 1 308 10
	movq	debugfile(%rip), %rax	# debugfile, debugfile.65_37
# d_net.c:308: 	    if (debugfile)
	.loc 1 308 9
	testq	%rax, %rax	# debugfile.65_37
	je	.L46	#,
# d_net.c:309: 		fprintf (debugfile,"retransmit from %i\n", resendto[netnode]);
	.loc 1 309 3
	movl	-32(%rbp), %eax	# netnode, tmp183
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp184
	leaq	resendto(%rip), %rax	#, tmp185
	movl	(%rdx,%rax), %edx	# resendto[netnode_73], _38
	movq	debugfile(%rip), %rax	# debugfile, debugfile.66_39
	leaq	.LC9(%rip), %rcx	#, tmp186
	movq	%rcx, %rsi	# tmp186,
	movq	%rax, %rdi	# debugfile.66_39,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
.L46:
# d_net.c:310: 	    resendcount[netnode] = RESENDCOUNT;
	.loc 1 310 27
	movl	-32(%rbp), %eax	# netnode, tmp188
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp189
	leaq	resendcount(%rip), %rax	#, tmp190
	movl	$10, (%rdx,%rax)	#, resendcount[netnode_73]
	jmp	.L47	#
.L45:
# d_net.c:313: 	    resendcount[netnode]--;
	.loc 1 313 17
	movl	-32(%rbp), %eax	# netnode, tmp192
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp193
	leaq	resendcount(%rip), %rax	#, tmp194
	movl	(%rdx,%rax), %eax	# resendcount[netnode_73], _40
# d_net.c:313: 	    resendcount[netnode]--;
	.loc 1 313 26
	leal	-1(%rax), %ecx	#, _41
	movl	-32(%rbp), %eax	# netnode, tmp196
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp197
	leaq	resendcount(%rip), %rax	#, tmp198
	movl	%ecx, (%rdx,%rax)	# _41, resendcount[netnode_73]
.L47:
# d_net.c:316: 	if (realend == nettics[netnode])
	.loc 1 316 24
	movl	-32(%rbp), %eax	# netnode, tmp200
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp201
	leaq	nettics(%rip), %rax	#, tmp202
	movl	(%rdx,%rax), %eax	# nettics[netnode_73], _42
# d_net.c:316: 	if (realend == nettics[netnode])
	.loc 1 316 5
	cmpl	%eax, -24(%rbp)	# _42, realend
	je	.L59	#,
# d_net.c:319: 	if (realend < nettics[netnode])
	.loc 1 319 23
	movl	-32(%rbp), %eax	# netnode, tmp204
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp205
	leaq	nettics(%rip), %rax	#, tmp206
	movl	(%rdx,%rax), %eax	# nettics[netnode_73], _43
# d_net.c:319: 	if (realend < nettics[netnode])
	.loc 1 319 5
	cmpl	%eax, -24(%rbp)	# _43, realend
	jge	.L49	#,
# d_net.c:321: 	    if (debugfile)
	.loc 1 321 10
	movq	debugfile(%rip), %rax	# debugfile, debugfile.67_44
# d_net.c:321: 	    if (debugfile)
	.loc 1 321 9
	testq	%rax, %rax	# debugfile.67_44
	je	.L60	#,
# d_net.c:324: 			 realstart,netbuffer->numtics);
	.loc 1 324 24
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.68_45
	movzbl	7(%rax), %eax	# netbuffer.68_45->numtics, _46
# d_net.c:322: 		fprintf (debugfile,
	.loc 1 322 3
	movzbl	%al, %ecx	# _46, _47
	movq	debugfile(%rip), %rax	# debugfile, debugfile.69_48
	movl	-28(%rbp), %edx	# realstart, tmp207
	leaq	.LC10(%rip), %rsi	#, tmp208
	movq	%rax, %rdi	# debugfile.69_48,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
# d_net.c:325: 	    continue;
	.loc 1 325 6
	jmp	.L60	#
.L49:
# d_net.c:329: 	if (realstart > nettics[netnode])
	.loc 1 329 25
	movl	-32(%rbp), %eax	# netnode, tmp210
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp211
	leaq	nettics(%rip), %rax	#, tmp212
	movl	(%rdx,%rax), %eax	# nettics[netnode_73], _49
# d_net.c:329: 	if (realstart > nettics[netnode])
	.loc 1 329 5
	cmpl	%eax, -28(%rbp)	# _49, realstart
	jle	.L51	#,
# d_net.c:332: 	    if (debugfile)
	.loc 1 332 10
	movq	debugfile(%rip), %rax	# debugfile, debugfile.70_50
# d_net.c:332: 	    if (debugfile)
	.loc 1 332 9
	testq	%rax, %rax	# debugfile.70_50
	je	.L52	#,
# d_net.c:333: 		fprintf (debugfile,
	.loc 1 333 3
	movl	-32(%rbp), %eax	# netnode, tmp214
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp215
	leaq	nettics(%rip), %rax	#, tmp216
	movl	(%rdx,%rax), %esi	# nettics[netnode_73], _51
	movq	debugfile(%rip), %rax	# debugfile, debugfile.71_52
	movl	-28(%rbp), %ecx	# realstart, tmp217
	movl	-32(%rbp), %edx	# netnode, tmp218
	movl	%esi, %r8d	# _51,
	leaq	.LC11(%rip), %rsi	#, tmp219
	movq	%rax, %rdi	# debugfile.71_52,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
.L52:
# d_net.c:336: 	    remoteresend[netnode] = true;
	.loc 1 336 28
	movl	-32(%rbp), %eax	# netnode, tmp221
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp222
	leaq	remoteresend(%rip), %rax	#, tmp223
	movl	$1, (%rdx,%rax)	#, remoteresend[netnode_73]
# d_net.c:337: 	    continue;
	.loc 1 337 6
	jmp	.L38	#
.L51:
.LBB4:
# d_net.c:344: 	    remoteresend[netnode] = false;
	.loc 1 344 28
	movl	-32(%rbp), %eax	# netnode, tmp225
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp226
	leaq	remoteresend(%rip), %rax	#, tmp227
	movl	$0, (%rdx,%rax)	#, remoteresend[netnode_73]
# d_net.c:346: 	    start = nettics[netnode] - realstart;		
	.loc 1 346 21
	movl	-32(%rbp), %eax	# netnode, tmp229
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp230
	leaq	nettics(%rip), %rax	#, tmp231
	movl	(%rdx,%rax), %eax	# nettics[netnode_73], _53
# d_net.c:346: 	    start = nettics[netnode] - realstart;		
	.loc 1 346 12
	subl	-28(%rbp), %eax	# realstart, tmp233
	movl	%eax, -20(%rbp)	# tmp233, start
# d_net.c:347: 	    src = &netbuffer->cmds[start];
	.loc 1 347 22
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.72_54
# d_net.c:347: 	    src = &netbuffer->cmds[start];
	.loc 1 347 10
	movl	-20(%rbp), %edx	# start, tmp235
	movslq	%edx, %rdx	# tmp235, tmp234
	salq	$3, %rdx	#, tmp236
	addq	%rdx, %rax	# tmp236, tmp237
	addq	$8, %rax	#, tmp238
	movq	%rax, -16(%rbp)	# tmp238, src
# d_net.c:349: 	    while (nettics[netnode] < realend)
	.loc 1 349 12
	jmp	.L53	#
.L54:
# d_net.c:351: 		dest = &netcmds[netconsole][nettics[netnode]%BACKUPTICS];
	.loc 1 351 38
	movl	-32(%rbp), %eax	# netnode, tmp240
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp241
	leaq	nettics(%rip), %rax	#, tmp242
	movl	(%rdx,%rax), %ecx	# nettics[netnode_73], _55
# d_net.c:351: 		dest = &netcmds[netconsole][nettics[netnode]%BACKUPTICS];
	.loc 1 351 47
	movslq	%ecx, %rax	# _55, tmp243
	imulq	$715827883, %rax, %rax	#, tmp243, tmp244
	shrq	$32, %rax	#, tmp245
	movl	%eax, %edx	# tmp245, tmp246
	sarl	%edx	# tmp246
	movl	%ecx, %eax	# _55, tmp247
	sarl	$31, %eax	#, tmp247
	subl	%eax, %edx	# tmp247, _56
	movl	%edx, %eax	# _56, tmp248
	addl	%eax, %eax	# tmp248
	addl	%edx, %eax	# _56, tmp248
	sall	$2, %eax	#, tmp249
	subl	%eax, %ecx	# tmp248, _55
	movl	%ecx, %edx	# _55, _56
# d_net.c:351: 		dest = &netcmds[netconsole][nettics[netnode]%BACKUPTICS];
	.loc 1 351 8
	movslq	%edx, %rcx	# _56, tmp250
	movl	-36(%rbp), %eax	# netconsole, tmp252
	movslq	%eax, %rdx	# tmp252, tmp251
	movq	%rdx, %rax	# tmp251, tmp253
	addq	%rax, %rax	# tmp253
	addq	%rdx, %rax	# tmp251, tmp253
	salq	$2, %rax	#, tmp254
	addq	%rcx, %rax	# tmp250, tmp255
	leaq	0(,%rax,8), %rdx	#, tmp256
	leaq	netcmds(%rip), %rax	#, tmp257
	addq	%rdx, %rax	# tmp256, tmp258
	movq	%rax, -8(%rbp)	# tmp258, dest
# d_net.c:352: 		nettics[netnode]++;
	.loc 1 352 10
	movl	-32(%rbp), %eax	# netnode, tmp260
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp261
	leaq	nettics(%rip), %rax	#, tmp262
	movl	(%rdx,%rax), %eax	# nettics[netnode_73], _57
# d_net.c:352: 		nettics[netnode]++;
	.loc 1 352 19
	leal	1(%rax), %ecx	#, _58
	movl	-32(%rbp), %eax	# netnode, tmp264
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp265
	leaq	nettics(%rip), %rax	#, tmp266
	movl	%ecx, (%rdx,%rax)	# _58, nettics[netnode_73]
# d_net.c:353: 		*dest = *src;
	.loc 1 353 9
	movq	-8(%rbp), %rax	# dest, tmp267
	movq	-16(%rbp), %rdx	# src, tmp268
	movq	(%rdx), %rdx	# *src_61, tmp269
	movq	%rdx, (%rax)	# tmp269, *dest_87
# d_net.c:354: 		src++;
	.loc 1 354 6
	addq	$8, -16(%rbp)	#, src
.L53:
# d_net.c:349: 	    while (nettics[netnode] < realend)
	.loc 1 349 20
	movl	-32(%rbp), %eax	# netnode, tmp271
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp272
	leaq	nettics(%rip), %rax	#, tmp273
	movl	(%rdx,%rax), %eax	# nettics[netnode_73], _59
# d_net.c:349: 	    while (nettics[netnode] < realend)
	.loc 1 349 30
	cmpl	%eax, -24(%rbp)	# _59, realend
	jg	.L54	#,
	jmp	.L38	#
.L56:
.LBE4:
# d_net.c:272: 	    continue;		// extra setup packet
	.loc 1 272 6
	nop	
	jmp	.L38	#
.L57:
# d_net.c:286: 		continue;
	.loc 1 286 3
	nop	
	jmp	.L38	#
.L58:
# d_net.c:294: 	    continue;
	.loc 1 294 6
	nop	
	jmp	.L38	#
.L59:
# d_net.c:317: 	    continue;
	.loc 1 317 6
	nop	
	jmp	.L38	#
.L60:
# d_net.c:325: 	    continue;
	.loc 1 325 6
	nop	
.L38:
# d_net.c:269:     while ( HGetPacket() )
	.loc 1 269 13
	call	HGetPacket	#
# d_net.c:269:     while ( HGetPacket() )
	.loc 1 269 13 is_stmt 0 discriminator 1
	testl	%eax, %eax	# _60
	jne	.L55	#,
# d_net.c:358: }
	.loc 1 358 1 is_stmt 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5:
	.size	GetPackets, .-GetPackets
	.globl	gametime
	.bss
	.align 4
	.type	gametime, @object
	.size	gametime, 4
gametime:
	.zero	4
	.section	.rodata
	.align 8
.LC12:
	.string	"NetUpdate: netbuffer->numtics > BACKUPTICS"
	.text
	.globl	NetUpdate
	.type	NetUpdate, @function
NetUpdate:
.LFB6:
	.loc 1 369 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# d_net.c:377:     nowtime = I_GetTime ()/ticdup;
	.loc 1 377 15
	call	I_GetTime@PLT	#
# d_net.c:377:     nowtime = I_GetTime ()/ticdup;
	.loc 1 377 27 discriminator 1
	movl	ticdup(%rip), %esi	# ticdup, ticdup.73_2
# d_net.c:377:     nowtime = I_GetTime ()/ticdup;
	.loc 1 377 13 discriminator 1
	cltd
	idivl	%esi	# ticdup.73_2
	movl	%eax, -12(%rbp)	# tmp131, nowtime
# d_net.c:378:     newtics = nowtime - gametime;
	.loc 1 378 23
	movl	gametime(%rip), %eax	# gametime, gametime.74_3
# d_net.c:378:     newtics = nowtime - gametime;
	.loc 1 378 13
	movl	-12(%rbp), %edx	# nowtime, tmp136
	subl	%eax, %edx	# gametime.74_3, tmp135
	movl	%edx, -24(%rbp)	# tmp135, newtics
# d_net.c:379:     gametime = nowtime;
	.loc 1 379 14
	movl	-12(%rbp), %eax	# nowtime, tmp137
	movl	%eax, gametime(%rip)	# tmp137, gametime
# d_net.c:381:     if (newtics <= 0) 	// nothing new to update
	.loc 1 381 8
	cmpl	$0, -24(%rbp)	#, newtics
	jle	.L79	#,
# d_net.c:384:     if (skiptics <= newtics)
	.loc 1 384 18
	movl	skiptics(%rip), %eax	# skiptics, skiptics.75_4
# d_net.c:384:     if (skiptics <= newtics)
	.loc 1 384 8
	cmpl	%eax, -24(%rbp)	# skiptics.75_4, newtics
	jl	.L64	#,
# d_net.c:386: 	newtics -= skiptics;
	.loc 1 386 10
	movl	skiptics(%rip), %eax	# skiptics, skiptics.76_5
	subl	%eax, -24(%rbp)	# skiptics.76_5, newtics
# d_net.c:387: 	skiptics = 0;
	.loc 1 387 11
	movl	$0, skiptics(%rip)	#, skiptics
	jmp	.L65	#
.L64:
# d_net.c:391: 	skiptics -= newtics;
	.loc 1 391 11
	movl	skiptics(%rip), %eax	# skiptics, skiptics.77_6
	subl	-24(%rbp), %eax	# newtics, _7
	movl	%eax, skiptics(%rip)	# _7, skiptics
# d_net.c:392: 	newtics = 0;
	.loc 1 392 10
	movl	$0, -24(%rbp)	#, newtics
.L65:
# d_net.c:396:     netbuffer->player = consoleplayer;
	.loc 1 396 23
	movl	consoleplayer(%rip), %edx	# consoleplayer, consoleplayer.78_8
# d_net.c:396:     netbuffer->player = consoleplayer;
	.loc 1 396 14
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.79_9
# d_net.c:396:     netbuffer->player = consoleplayer;
	.loc 1 396 23
	movb	%dl, 6(%rax)	# _10, netbuffer.79_9->player
# d_net.c:399:     gameticdiv = gametic/ticdup;
	.loc 1 399 25
	movl	gametic(%rip), %eax	# gametic, gametic.80_11
	movl	ticdup(%rip), %edi	# ticdup, ticdup.81_12
# d_net.c:399:     gameticdiv = gametic/ticdup;
	.loc 1 399 16
	cltd
	idivl	%edi	# ticdup.81_12
	movl	%eax, -8(%rbp)	# tmp138, gameticdiv
# d_net.c:400:     for (i=0 ; i<newtics ; i++)
	.loc 1 400 11
	movl	$0, -20(%rbp)	#, i
# d_net.c:400:     for (i=0 ; i<newtics ; i++)
	.loc 1 400 5
	jmp	.L66	#
.L69:
# d_net.c:402: 	I_StartTic ();
	.loc 1 402 2
	call	I_StartTic@PLT	#
# d_net.c:403: 	D_ProcessEvents ();
	.loc 1 403 2
	call	D_ProcessEvents@PLT	#
# d_net.c:404: 	if (maketic - gameticdiv >= BACKUPTICS/2-1)
	.loc 1 404 14
	movl	maketic(%rip), %eax	# maketic, maketic.82_13
	subl	-8(%rbp), %eax	# gameticdiv, _14
# d_net.c:404: 	if (maketic - gameticdiv >= BACKUPTICS/2-1)
	.loc 1 404 5
	cmpl	$4, %eax	#, _14
	jg	.L80	#,
# d_net.c:408: 	G_BuildTiccmd (&localcmds[maketic%BACKUPTICS]);
	.loc 1 408 35
	movl	maketic(%rip), %ecx	# maketic, maketic.83_15
	movslq	%ecx, %rax	# maketic.83_15, tmp140
	imulq	$715827883, %rax, %rax	#, tmp140, tmp141
	shrq	$32, %rax	#, tmp142
	movl	%eax, %edx	# tmp142, tmp143
	sarl	%edx	# tmp143
	movl	%ecx, %eax	# maketic.83_15, tmp144
	sarl	$31, %eax	#, tmp144
	subl	%eax, %edx	# tmp144, _16
	movl	%edx, %eax	# _16, tmp145
	addl	%eax, %eax	# tmp145
	addl	%edx, %eax	# _16, tmp145
	sall	$2, %eax	#, tmp146
	subl	%eax, %ecx	# tmp145, maketic.83_15
	movl	%ecx, %edx	# maketic.83_15, _16
# d_net.c:408: 	G_BuildTiccmd (&localcmds[maketic%BACKUPTICS]);
	.loc 1 408 2
	movslq	%edx, %rax	# _16, tmp147
	leaq	0(,%rax,8), %rdx	#, tmp148
	leaq	localcmds(%rip), %rax	#, tmp149
	addq	%rdx, %rax	# tmp148, _17
	movq	%rax, %rdi	# _17,
	call	G_BuildTiccmd@PLT	#
# d_net.c:409: 	maketic++;
	.loc 1 409 9
	movl	maketic(%rip), %eax	# maketic, maketic.84_18
	addl	$1, %eax	#, _19
	movl	%eax, maketic(%rip)	# _19, maketic
# d_net.c:400:     for (i=0 ; i<newtics ; i++)
	.loc 1 400 29 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L66:
# d_net.c:400:     for (i=0 ; i<newtics ; i++)
	.loc 1 400 17 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp150
	cmpl	-24(%rbp), %eax	# newtics, tmp150
	jl	.L69	#,
	jmp	.L68	#
.L80:
# d_net.c:405: 	    break;          // can't hold any more
	.loc 1 405 6
	nop	
.L68:
# d_net.c:413:     if (singletics)
	.loc 1 413 9
	movl	singletics(%rip), %eax	# singletics, singletics.85_20
# d_net.c:413:     if (singletics)
	.loc 1 413 8
	testl	%eax, %eax	# singletics.85_20
	jne	.L81	#,
# d_net.c:417:     for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 417 11
	movl	$0, -20(%rbp)	#, i
# d_net.c:417:     for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 417 5
	jmp	.L72	#
.L78:
# d_net.c:418: 	if (nodeingame[i])
	.loc 1 418 16
	movl	-20(%rbp), %eax	# i, tmp152
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp153
	leaq	nodeingame(%rip), %rax	#, tmp154
	movl	(%rdx,%rax), %eax	# nodeingame[i_52], _21
# d_net.c:418: 	if (nodeingame[i])
	.loc 1 418 5
	testl	%eax, %eax	# _21
	je	.L73	#,
# d_net.c:420: 	    netbuffer->starttic = realstart = resendto[i];
	.loc 1 420 38
	movl	-20(%rbp), %eax	# i, tmp156
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp157
	leaq	resendto(%rip), %rax	#, tmp158
	movl	(%rdx,%rax), %eax	# resendto[i_52], tmp159
	movl	%eax, -4(%rbp)	# tmp159, realstart
# d_net.c:420: 	    netbuffer->starttic = realstart = resendto[i];
	.loc 1 420 15
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.86_22
# d_net.c:420: 	    netbuffer->starttic = realstart = resendto[i];
	.loc 1 420 26
	movl	-4(%rbp), %edx	# realstart, tmp160
	movb	%dl, 5(%rax)	# _23, netbuffer.86_22->starttic
# d_net.c:421: 	    netbuffer->numtics = maketic - realstart;
	.loc 1 421 35
	movl	maketic(%rip), %eax	# maketic, maketic.87_24
	movl	%eax, %edx	# maketic.87_24, _25
	movl	-4(%rbp), %eax	# realstart, tmp161
	movl	%eax, %ecx	# tmp161, _26
# d_net.c:421: 	    netbuffer->numtics = maketic - realstart;
	.loc 1 421 15
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.88_27
# d_net.c:421: 	    netbuffer->numtics = maketic - realstart;
	.loc 1 421 35
	subl	%ecx, %edx	# _26, _28
# d_net.c:421: 	    netbuffer->numtics = maketic - realstart;
	.loc 1 421 25
	movb	%dl, 7(%rax)	# _28, netbuffer.88_27->numtics
# d_net.c:422: 	    if (netbuffer->numtics > BACKUPTICS)
	.loc 1 422 19
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.89_29
	movzbl	7(%rax), %eax	# netbuffer.89_29->numtics, _30
# d_net.c:422: 	    if (netbuffer->numtics > BACKUPTICS)
	.loc 1 422 9
	cmpb	$12, %al	#, _30
	jbe	.L74	#,
# d_net.c:423: 		I_Error ("NetUpdate: netbuffer->numtics > BACKUPTICS");
	.loc 1 423 3
	leaq	.LC12(%rip), %rax	#, tmp162
	movq	%rax, %rdi	# tmp162,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L74:
# d_net.c:425: 	    resendto[i] = maketic - doomcom->extratics;
	.loc 1 425 28
	movl	maketic(%rip), %edx	# maketic, maketic.90_31
# d_net.c:425: 	    resendto[i] = maketic - doomcom->extratics;
	.loc 1 425 37
	movq	doomcom(%rip), %rax	# doomcom, doomcom.91_32
	movzwl	20(%rax), %eax	# doomcom.91_32->extratics, _33
	cwtl
# d_net.c:425: 	    resendto[i] = maketic - doomcom->extratics;
	.loc 1 425 28
	movl	%edx, %ecx	# maketic.90_31, maketic.90_31
	subl	%eax, %ecx	# _34, maketic.90_31
# d_net.c:425: 	    resendto[i] = maketic - doomcom->extratics;
	.loc 1 425 18
	movl	-20(%rbp), %eax	# i, tmp164
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp165
	leaq	resendto(%rip), %rax	#, tmp166
	movl	%ecx, (%rdx,%rax)	# _35, resendto[i_52]
# d_net.c:427: 	    for (j=0 ; j< netbuffer->numtics ; j++)
	.loc 1 427 12
	movl	$0, -16(%rbp)	#, j
# d_net.c:427: 	    for (j=0 ; j< netbuffer->numtics ; j++)
	.loc 1 427 6
	jmp	.L75	#
.L76:
# d_net.c:429: 		    localcmds[(realstart+j)%BACKUPTICS];
	.loc 1 429 27
	movl	-4(%rbp), %edx	# realstart, tmp167
	movl	-16(%rbp), %eax	# j, tmp168
	leal	(%rdx,%rax), %ecx	#, _36
# d_net.c:429: 		    localcmds[(realstart+j)%BACKUPTICS];
	.loc 1 429 30
	movslq	%ecx, %rax	# _36, tmp169
	imulq	$715827883, %rax, %rax	#, tmp169, tmp170
	shrq	$32, %rax	#, tmp171
	movl	%eax, %edx	# tmp171, tmp172
	sarl	%edx	# tmp172
	movl	%ecx, %eax	# _36, tmp173
	sarl	$31, %eax	#, tmp173
	subl	%eax, %edx	# tmp173, _37
	movl	%edx, %eax	# _37, tmp174
	addl	%eax, %eax	# tmp174
	addl	%edx, %eax	# _37, tmp174
	sall	$2, %eax	#, tmp175
	subl	%eax, %ecx	# tmp174, _36
	movl	%ecx, %edx	# _36, _37
# d_net.c:428: 		netbuffer->cmds[j] = 
	.loc 1 428 12
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.92_38
# d_net.c:428: 		netbuffer->cmds[j] = 
	.loc 1 428 22
	movl	-16(%rbp), %ecx	# j, tmp177
	movslq	%ecx, %rcx	# tmp177, tmp176
	movslq	%edx, %rdx	# _37, tmp178
	leaq	0(,%rdx,8), %rsi	#, tmp179
	leaq	localcmds(%rip), %rdx	#, tmp180
	movq	(%rsi,%rdx), %rdx	# localcmds[_37], tmp181
	movq	%rdx, 8(%rax,%rcx,8)	# tmp181, netbuffer.92_38->cmds[j_53]
# d_net.c:427: 	    for (j=0 ; j< netbuffer->numtics ; j++)
	.loc 1 427 42 discriminator 3
	addl	$1, -16(%rbp)	#, j
.L75:
# d_net.c:427: 	    for (j=0 ; j< netbuffer->numtics ; j++)
	.loc 1 427 29 discriminator 1
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.93_39
	movzbl	7(%rax), %eax	# netbuffer.93_39->numtics, _40
	movzbl	%al, %eax	# _40, _41
# d_net.c:427: 	    for (j=0 ; j< netbuffer->numtics ; j++)
	.loc 1 427 18 discriminator 1
	cmpl	%eax, -16(%rbp)	# _41, j
	jl	.L76	#,
# d_net.c:431: 	    if (remoteresend[i])
	.loc 1 431 22
	movl	-20(%rbp), %eax	# i, tmp183
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp184
	leaq	remoteresend(%rip), %rax	#, tmp185
	movl	(%rdx,%rax), %eax	# remoteresend[i_52], _42
# d_net.c:431: 	    if (remoteresend[i])
	.loc 1 431 9
	testl	%eax, %eax	# _42
	je	.L77	#,
# d_net.c:433: 		netbuffer->retransmitfrom = nettics[i];
	.loc 1 433 38
	movl	-20(%rbp), %eax	# i, tmp187
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp188
	leaq	nettics(%rip), %rax	#, tmp189
	movl	(%rdx,%rax), %edx	# nettics[i_52], _43
# d_net.c:433: 		netbuffer->retransmitfrom = nettics[i];
	.loc 1 433 12
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.94_44
# d_net.c:433: 		netbuffer->retransmitfrom = nettics[i];
	.loc 1 433 29
	movb	%dl, 4(%rax)	# _45, netbuffer.94_44->retransmitfrom
# d_net.c:434: 		HSendPacket (i, NCMD_RETRANSMIT);
	.loc 1 434 3
	movl	-20(%rbp), %eax	# i, tmp190
	movl	$1073741824, %esi	#,
	movl	%eax, %edi	# tmp190,
	call	HSendPacket	#
	jmp	.L73	#
.L77:
# d_net.c:438: 		netbuffer->retransmitfrom = 0;
	.loc 1 438 12
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.95_46
# d_net.c:438: 		netbuffer->retransmitfrom = 0;
	.loc 1 438 29
	movb	$0, 4(%rax)	#, netbuffer.95_46->retransmitfrom
# d_net.c:439: 		HSendPacket (i, 0);
	.loc 1 439 3
	movl	-20(%rbp), %eax	# i, tmp191
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp191,
	call	HSendPacket	#
.L73:
# d_net.c:417:     for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 417 39 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L72:
# d_net.c:417:     for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 417 25 discriminator 1
	movq	doomcom(%rip), %rax	# doomcom, doomcom.96_47
	movzwl	16(%rax), %eax	# doomcom.96_47->numnodes, _48
	cwtl
# d_net.c:417:     for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 417 17 discriminator 1
	cmpl	%eax, -20(%rbp)	# _49, i
	jl	.L78	#,
# d_net.c:444:   listen:
	.loc 1 444 3
	jmp	.L63	#
.L79:
# d_net.c:382: 	goto listen; 
	.loc 1 382 2
	nop	
.L63:
# d_net.c:445:     GetPackets ();
	.loc 1 445 5
	call	GetPackets	#
	jmp	.L61	#
.L81:
# d_net.c:414: 	return;         // singletic update is syncronous
	.loc 1 414 2
	nop	
.L61:
# d_net.c:446: }
	.loc 1 446 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	NetUpdate, .-NetUpdate
	.section	.rodata
	.align 8
.LC13:
	.string	"Network game synchronization aborted."
	.text
	.globl	CheckAbort
	.type	CheckAbort, @function
CheckAbort:
.LFB7:
	.loc 1 454 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# d_net.c:458:     stoptic = I_GetTime () + 2; 
	.loc 1 458 15
	call	I_GetTime@PLT	#
# d_net.c:458:     stoptic = I_GetTime () + 2; 
	.loc 1 458 13 discriminator 1
	addl	$2, %eax	#, tmp93
	movl	%eax, -12(%rbp)	# tmp93, stoptic
# d_net.c:459:     while (I_GetTime() < stoptic) 
	.loc 1 459 11
	jmp	.L83	#
.L84:
# d_net.c:460: 	I_StartTic (); 
	.loc 1 460 2
	call	I_StartTic@PLT	#
.L83:
# d_net.c:459:     while (I_GetTime() < stoptic) 
	.loc 1 459 12
	call	I_GetTime@PLT	#
# d_net.c:459:     while (I_GetTime() < stoptic) 
	.loc 1 459 24 discriminator 1
	cmpl	%eax, -12(%rbp)	# _2, stoptic
	jg	.L84	#,
# d_net.c:462:     I_StartTic ();
	.loc 1 462 5
	call	I_StartTic@PLT	#
# d_net.c:463:     for ( ; eventtail != eventhead 
	.loc 1 463 5
	jmp	.L85	#
.L87:
# d_net.c:466: 	ev = &events[eventtail]; 
	.loc 1 466 14
	movl	eventtail(%rip), %eax	# eventtail, eventtail.97_3
# d_net.c:466: 	ev = &events[eventtail]; 
	.loc 1 466 5
	cltq
	salq	$4, %rax	#, tmp94
	movq	%rax, %rdx	# tmp94, tmp95
	leaq	events(%rip), %rax	#, tmp96
	addq	%rdx, %rax	# tmp95, tmp97
	movq	%rax, -8(%rbp)	# tmp97, ev
# d_net.c:467: 	if (ev->type == ev_keydown && ev->data1 == KEY_ESCAPE)
	.loc 1 467 8
	movq	-8(%rbp), %rax	# ev, tmp98
	movl	(%rax), %eax	# ev_20->type, _4
# d_net.c:467: 	if (ev->type == ev_keydown && ev->data1 == KEY_ESCAPE)
	.loc 1 467 5
	testl	%eax, %eax	# _4
	jne	.L86	#,
# d_net.c:467: 	if (ev->type == ev_keydown && ev->data1 == KEY_ESCAPE)
	.loc 1 467 34 discriminator 1
	movq	-8(%rbp), %rax	# ev, tmp99
	movl	4(%rax), %eax	# ev_20->data1, _5
# d_net.c:467: 	if (ev->type == ev_keydown && ev->data1 == KEY_ESCAPE)
	.loc 1 467 29 discriminator 1
	cmpl	$27, %eax	#, _5
	jne	.L86	#,
# d_net.c:468: 	    I_Error ("Network game synchronization aborted.");
	.loc 1 468 6
	leaq	.LC13(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L86:
# d_net.c:464: 	      ; eventtail = (++eventtail)&(MAXEVENTS-1) ) 
	.loc 1 464 23
	movl	eventtail(%rip), %eax	# eventtail, eventtail.98_6
	addl	$1, %eax	#, _7
# d_net.c:464: 	      ; eventtail = (++eventtail)&(MAXEVENTS-1) ) 
	.loc 1 464 20
	movl	%eax, eventtail(%rip)	# _7, eventtail
# d_net.c:464: 	      ; eventtail = (++eventtail)&(MAXEVENTS-1) ) 
	.loc 1 464 23
	movl	eventtail(%rip), %eax	# eventtail, eventtail.99_8
# d_net.c:464: 	      ; eventtail = (++eventtail)&(MAXEVENTS-1) ) 
	.loc 1 464 35
	andl	$63, %eax	#, _9
# d_net.c:464: 	      ; eventtail = (++eventtail)&(MAXEVENTS-1) ) 
	.loc 1 464 20
	movl	%eax, eventtail(%rip)	# _9, eventtail
.L85:
# d_net.c:463:     for ( ; eventtail != eventhead 
	.loc 1 463 23
	movl	eventtail(%rip), %edx	# eventtail, eventtail.100_10
	movl	eventhead(%rip), %eax	# eventhead, eventhead.101_11
	cmpl	%eax, %edx	# eventhead.101_11, eventtail.100_10
	jne	.L87	#,
# d_net.c:470: }
	.loc 1 470 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	CheckAbort, .-CheckAbort
	.section	.rodata
	.align 8
.LC14:
	.string	"listening for network start info..."
	.align 8
.LC15:
	.string	"Different DOOM versions cannot play a net game!"
.LC16:
	.string	"sending network start info..."
	.text
	.globl	D_ArbitrateNetStart
	.type	D_ArbitrateNetStart, @function
D_ArbitrateNetStart:
.LFB8:
	.loc 1 477 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
# d_net.c:477: {
	.loc 1 477 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp176
	movq	%rax, -8(%rbp)	# tmp176, D.6760
	xorl	%eax, %eax	# tmp176
# d_net.c:481:     autostart = true;
	.loc 1 481 15
	movl	$1, autostart(%rip)	#, autostart
# d_net.c:482:     memset (gotinfo,0,sizeof(gotinfo));
	.loc 1 482 5
	leaq	-48(%rbp), %rax	#, tmp168
	movl	$32, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp168,
	call	memset@PLT	#
# d_net.c:484:     if (doomcom->consoleplayer)
	.loc 1 484 16
	movq	doomcom(%rip), %rax	# doomcom, doomcom.102_1
	movzwl	32(%rax), %eax	# doomcom.102_1->consoleplayer, _2
# d_net.c:484:     if (doomcom->consoleplayer)
	.loc 1 484 8
	testw	%ax, %ax	# _2
	je	.L89	#,
# d_net.c:487: 	printf ("listening for network start info...\n");
	.loc 1 487 2
	leaq	.LC14(%rip), %rax	#, tmp169
	movq	%rax, %rdi	# tmp169,
	call	puts@PLT	#
.L94:
# d_net.c:490: 	    CheckAbort ();
	.loc 1 490 6
	call	CheckAbort	#
# d_net.c:491: 	    if (!HGetPacket ())
	.loc 1 491 11
	call	HGetPacket	#
# d_net.c:491: 	    if (!HGetPacket ())
	.loc 1 491 9 discriminator 1
	testl	%eax, %eax	# _3
	je	.L110	#,
# d_net.c:493: 	    if (netbuffer->checksum & NCMD_SETUP)
	.loc 1 493 19
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.103_4
	movl	(%rax), %eax	# netbuffer.103_4->checksum, _5
# d_net.c:493: 	    if (netbuffer->checksum & NCMD_SETUP)
	.loc 1 493 30
	andl	$536870912, %eax	#, _6
# d_net.c:493: 	    if (netbuffer->checksum & NCMD_SETUP)
	.loc 1 493 9
	testl	%eax, %eax	# _6
	je	.L94	#,
# d_net.c:495: 		if (netbuffer->player != VERSION)
	.loc 1 495 16
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.104_7
	movzbl	6(%rax), %eax	# netbuffer.104_7->player, _8
# d_net.c:495: 		if (netbuffer->player != VERSION)
	.loc 1 495 6
	cmpb	$110, %al	#, _8
	je	.L92	#,
# d_net.c:496: 		    I_Error ("Different DOOM versions cannot play a net game!");
	.loc 1 496 7
	leaq	.LC15(%rip), %rax	#, tmp170
	movq	%rax, %rdi	# tmp170,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L92:
# d_net.c:497: 		startskill = netbuffer->retransmitfrom & 15;
	.loc 1 497 25
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.105_9
	movzbl	4(%rax), %eax	# netbuffer.105_9->retransmitfrom, _10
# d_net.c:497: 		startskill = netbuffer->retransmitfrom & 15;
	.loc 1 497 42
	movzbl	%al, %eax	# _10, _11
	andl	$15, %eax	#, _12
# d_net.c:497: 		startskill = netbuffer->retransmitfrom & 15;
	.loc 1 497 14
	movl	%eax, startskill(%rip)	# _13, startskill
# d_net.c:498: 		deathmatch = (netbuffer->retransmitfrom & 0xc0) >> 6;
	.loc 1 498 26
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.106_14
	movzbl	4(%rax), %eax	# netbuffer.106_14->retransmitfrom, _15
# d_net.c:498: 		deathmatch = (netbuffer->retransmitfrom & 0xc0) >> 6;
	.loc 1 498 51
	shrb	$6, %al	#, _16
	movzbl	%al, %eax	# _16, _17
# d_net.c:498: 		deathmatch = (netbuffer->retransmitfrom & 0xc0) >> 6;
	.loc 1 498 14
	movl	%eax, deathmatch(%rip)	# _17, deathmatch
# d_net.c:499: 		nomonsters = (netbuffer->retransmitfrom & 0x20) > 0;
	.loc 1 499 26
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.107_18
	movzbl	4(%rax), %eax	# netbuffer.107_18->retransmitfrom, _19
# d_net.c:499: 		nomonsters = (netbuffer->retransmitfrom & 0x20) > 0;
	.loc 1 499 43
	movzbl	%al, %eax	# _19, _20
	andl	$32, %eax	#, _21
# d_net.c:499: 		nomonsters = (netbuffer->retransmitfrom & 0x20) > 0;
	.loc 1 499 51
	testl	%eax, %eax	# _21
	setg	%al	#, _22
	movzbl	%al, %eax	# _22, _23
# d_net.c:499: 		nomonsters = (netbuffer->retransmitfrom & 0x20) > 0;
	.loc 1 499 14
	movl	%eax, nomonsters(%rip)	# _23, nomonsters
# d_net.c:500: 		respawnparm = (netbuffer->retransmitfrom & 0x10) > 0;
	.loc 1 500 27
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.108_24
	movzbl	4(%rax), %eax	# netbuffer.108_24->retransmitfrom, _25
# d_net.c:500: 		respawnparm = (netbuffer->retransmitfrom & 0x10) > 0;
	.loc 1 500 44
	movzbl	%al, %eax	# _25, _26
	andl	$16, %eax	#, _27
# d_net.c:500: 		respawnparm = (netbuffer->retransmitfrom & 0x10) > 0;
	.loc 1 500 52
	testl	%eax, %eax	# _27
	setg	%al	#, _28
	movzbl	%al, %eax	# _28, _29
# d_net.c:500: 		respawnparm = (netbuffer->retransmitfrom & 0x10) > 0;
	.loc 1 500 15
	movl	%eax, respawnparm(%rip)	# _29, respawnparm
# d_net.c:501: 		startmap = netbuffer->starttic & 0x3f;
	.loc 1 501 23
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.109_30
	movzbl	5(%rax), %eax	# netbuffer.109_30->starttic, _31
# d_net.c:501: 		startmap = netbuffer->starttic & 0x3f;
	.loc 1 501 34
	movzbl	%al, %eax	# _31, _32
	andl	$63, %eax	#, _33
# d_net.c:501: 		startmap = netbuffer->starttic & 0x3f;
	.loc 1 501 12
	movl	%eax, startmap(%rip)	# _33, startmap
# d_net.c:502: 		startepisode = netbuffer->starttic >> 6;
	.loc 1 502 27
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.110_34
	movzbl	5(%rax), %eax	# netbuffer.110_34->starttic, _35
# d_net.c:502: 		startepisode = netbuffer->starttic >> 6;
	.loc 1 502 38
	shrb	$6, %al	#, _36
	movzbl	%al, %eax	# _36, _37
# d_net.c:502: 		startepisode = netbuffer->starttic >> 6;
	.loc 1 502 16
	movl	%eax, startepisode(%rip)	# _37, startepisode
	jmp	.L88	#
.L110:
# d_net.c:492: 		continue;
	.loc 1 492 3
	nop	
# d_net.c:490: 	    CheckAbort ();
	.loc 1 490 6
	jmp	.L94	#
.L89:
# d_net.c:510: 	printf ("sending network start info...\n");
	.loc 1 510 2
	leaq	.LC16(%rip), %rax	#, tmp171
	movq	%rax, %rdi	# tmp171,
	call	puts@PLT	#
.L108:
# d_net.c:513: 	    CheckAbort ();
	.loc 1 513 6
	call	CheckAbort	#
# d_net.c:514: 	    for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 514 12
	movl	$0, -52(%rbp)	#, i
# d_net.c:514: 	    for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 514 6
	jmp	.L95	#
.L99:
# d_net.c:516: 		netbuffer->retransmitfrom = startskill;
	.loc 1 516 29
	movl	startskill(%rip), %edx	# startskill, startskill.111_38
# d_net.c:516: 		netbuffer->retransmitfrom = startskill;
	.loc 1 516 12
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.112_39
# d_net.c:516: 		netbuffer->retransmitfrom = startskill;
	.loc 1 516 29
	movb	%dl, 4(%rax)	# _40, netbuffer.112_39->retransmitfrom
# d_net.c:517: 		if (deathmatch)
	.loc 1 517 7
	movl	deathmatch(%rip), %eax	# deathmatch, deathmatch.113_41
# d_net.c:517: 		if (deathmatch)
	.loc 1 517 6
	testl	%eax, %eax	# deathmatch.113_41
	je	.L96	#,
# d_net.c:518: 		    netbuffer->retransmitfrom |= (deathmatch<<6);
	.loc 1 518 16
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.114_42
	movzbl	4(%rax), %edx	# netbuffer.114_42->retransmitfrom, _43
# d_net.c:518: 		    netbuffer->retransmitfrom |= (deathmatch<<6);
	.loc 1 518 47
	movl	deathmatch(%rip), %eax	# deathmatch, deathmatch.115_44
	sall	$6, %eax	#, _45
	movl	%eax, %ecx	# _45, _46
# d_net.c:518: 		    netbuffer->retransmitfrom |= (deathmatch<<6);
	.loc 1 518 16
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.116_47
# d_net.c:518: 		    netbuffer->retransmitfrom |= (deathmatch<<6);
	.loc 1 518 33
	orl	%ecx, %edx	# _46, _48
	movb	%dl, 4(%rax)	# _48, netbuffer.116_47->retransmitfrom
.L96:
# d_net.c:519: 		if (nomonsters)
	.loc 1 519 7
	movl	nomonsters(%rip), %eax	# nomonsters, nomonsters.117_49
# d_net.c:519: 		if (nomonsters)
	.loc 1 519 6
	testl	%eax, %eax	# nomonsters.117_49
	je	.L97	#,
# d_net.c:520: 		    netbuffer->retransmitfrom |= 0x20;
	.loc 1 520 16
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.118_50
	movzbl	4(%rax), %edx	# netbuffer.118_50->retransmitfrom, _51
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.119_52
# d_net.c:520: 		    netbuffer->retransmitfrom |= 0x20;
	.loc 1 520 33
	orl	$32, %edx	#, _53
	movb	%dl, 4(%rax)	# _53, netbuffer.119_52->retransmitfrom
.L97:
# d_net.c:521: 		if (respawnparm)
	.loc 1 521 7
	movl	respawnparm(%rip), %eax	# respawnparm, respawnparm.120_54
# d_net.c:521: 		if (respawnparm)
	.loc 1 521 6
	testl	%eax, %eax	# respawnparm.120_54
	je	.L98	#,
# d_net.c:522: 		    netbuffer->retransmitfrom |= 0x10;
	.loc 1 522 16
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.121_55
	movzbl	4(%rax), %edx	# netbuffer.121_55->retransmitfrom, _56
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.122_57
# d_net.c:522: 		    netbuffer->retransmitfrom |= 0x10;
	.loc 1 522 33
	orl	$16, %edx	#, _58
	movb	%dl, 4(%rax)	# _58, netbuffer.122_57->retransmitfrom
.L98:
# d_net.c:523: 		netbuffer->starttic = startepisode * 64 + startmap;
	.loc 1 523 43
	movl	startepisode(%rip), %eax	# startepisode, startepisode.123_59
	sall	$6, %eax	#, _60
	movl	%eax, %edx	# _60, _61
	movl	startmap(%rip), %eax	# startmap, startmap.124_62
	movl	%eax, %ecx	# startmap.124_62, _63
# d_net.c:523: 		netbuffer->starttic = startepisode * 64 + startmap;
	.loc 1 523 12
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.125_64
# d_net.c:523: 		netbuffer->starttic = startepisode * 64 + startmap;
	.loc 1 523 43
	addl	%ecx, %edx	# _63, _65
# d_net.c:523: 		netbuffer->starttic = startepisode * 64 + startmap;
	.loc 1 523 23
	movb	%dl, 5(%rax)	# _65, netbuffer.125_64->starttic
# d_net.c:524: 		netbuffer->player = VERSION;
	.loc 1 524 12
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.126_66
# d_net.c:524: 		netbuffer->player = VERSION;
	.loc 1 524 21
	movb	$110, 6(%rax)	#, netbuffer.126_66->player
# d_net.c:525: 		netbuffer->numtics = 0;
	.loc 1 525 12
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.127_67
# d_net.c:525: 		netbuffer->numtics = 0;
	.loc 1 525 22
	movb	$0, 7(%rax)	#, netbuffer.127_67->numtics
# d_net.c:526: 		HSendPacket (i, NCMD_SETUP);
	.loc 1 526 3
	movl	-52(%rbp), %eax	# i, tmp172
	movl	$536870912, %esi	#,
	movl	%eax, %edi	# tmp172,
	call	HSendPacket	#
# d_net.c:514: 	    for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 514 40 discriminator 2
	addl	$1, -52(%rbp)	#, i
.L95:
# d_net.c:514: 	    for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 514 26 discriminator 1
	movq	doomcom(%rip), %rax	# doomcom, doomcom.128_68
	movzwl	16(%rax), %eax	# doomcom.128_68->numnodes, _69
	cwtl
# d_net.c:514: 	    for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 514 18 discriminator 1
	cmpl	%eax, -52(%rbp)	# _70, i
	jl	.L99	#,
# d_net.c:530: 	    for(i = 10 ; i  &&  HGetPacket(); --i)
	.loc 1 530 12
	movl	$10, -52(%rbp)	#, i
# d_net.c:530: 	    for(i = 10 ; i  &&  HGetPacket(); --i)
	.loc 1 530 6
	jmp	.L100	#
.L103:
# d_net.c:532: 		if((netbuffer->player&0x7f) < MAXNETNODES)
	.loc 1 532 16
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.129_71
	movzbl	6(%rax), %eax	# netbuffer.129_71->player, _72
# d_net.c:532: 		if((netbuffer->player&0x7f) < MAXNETNODES)
	.loc 1 532 31
	movzbl	%al, %eax	# _72, _73
	andl	$120, %eax	#, _74
# d_net.c:532: 		if((netbuffer->player&0x7f) < MAXNETNODES)
	.loc 1 532 5
	testl	%eax, %eax	# _74
	jne	.L101	#,
# d_net.c:533: 		    gotinfo[netbuffer->player&0x7f] = true;
	.loc 1 533 24
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.130_75
	movzbl	6(%rax), %eax	# netbuffer.130_75->player, _76
# d_net.c:533: 		    gotinfo[netbuffer->player&0x7f] = true;
	.loc 1 533 32
	movzbl	%al, %eax	# _76, _77
	andl	$127, %eax	#, _78
# d_net.c:533: 		    gotinfo[netbuffer->player&0x7f] = true;
	.loc 1 533 39
	cltq
	movl	$1, -48(%rbp,%rax,4)	#, gotinfo[_78]
.L101:
# d_net.c:530: 	    for(i = 10 ; i  &&  HGetPacket(); --i)
	.loc 1 530 40 discriminator 2
	subl	$1, -52(%rbp)	#, i
.L100:
# d_net.c:530: 	    for(i = 10 ; i  &&  HGetPacket(); --i)
	.loc 1 530 22 discriminator 1
	cmpl	$0, -52(%rbp)	#, i
	je	.L102	#,
# d_net.c:530: 	    for(i = 10 ; i  &&  HGetPacket(); --i)
	.loc 1 530 26 discriminator 3
	call	HGetPacket	#
# d_net.c:530: 	    for(i = 10 ; i  &&  HGetPacket(); --i)
	.loc 1 530 22 discriminator 1
	testl	%eax, %eax	# _79
	jne	.L103	#,
.L102:
# d_net.c:542: 	    for (i=1 ; i<doomcom->numnodes ; i++)
	.loc 1 542 12
	movl	$1, -52(%rbp)	#, i
# d_net.c:542: 	    for (i=1 ; i<doomcom->numnodes ; i++)
	.loc 1 542 6
	jmp	.L104	#
.L107:
# d_net.c:543: 		if (!gotinfo[i])
	.loc 1 543 15
	movl	-52(%rbp), %eax	# i, tmp175
	cltq
	movl	-48(%rbp,%rax,4), %eax	# gotinfo[i_89], _80
# d_net.c:543: 		if (!gotinfo[i])
	.loc 1 543 6
	testl	%eax, %eax	# _80
	je	.L111	#,
# d_net.c:542: 	    for (i=1 ; i<doomcom->numnodes ; i++)
	.loc 1 542 40 discriminator 2
	addl	$1, -52(%rbp)	#, i
.L104:
# d_net.c:542: 	    for (i=1 ; i<doomcom->numnodes ; i++)
	.loc 1 542 26 discriminator 1
	movq	doomcom(%rip), %rax	# doomcom, doomcom.131_81
	movzwl	16(%rax), %eax	# doomcom.131_81->numnodes, _82
	cwtl
# d_net.c:542: 	    for (i=1 ; i<doomcom->numnodes ; i++)
	.loc 1 542 18 discriminator 1
	cmpl	%eax, -52(%rbp)	# _83, i
	jl	.L107	#,
	jmp	.L106	#
.L111:
# d_net.c:544: 		    break;
	.loc 1 544 7
	nop	
.L106:
# d_net.c:545: 	} while (i < doomcom->numnodes);
	.loc 1 545 22
	movq	doomcom(%rip), %rax	# doomcom, doomcom.132_84
	movzwl	16(%rax), %eax	# doomcom.132_84->numnodes, _85
	cwtl
# d_net.c:545: 	} while (i < doomcom->numnodes);
	.loc 1 545 13
	cmpl	%eax, -52(%rbp)	# _86, i
	jl	.L108	#,
.L88:
# d_net.c:547: }
	.loc 1 547 1
	movq	-8(%rbp), %rax	# D.6760, tmp177
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp177
	je	.L109	#,
	call	__stack_chk_fail@PLT	#
.L109:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	D_ArbitrateNetStart, .-D_ArbitrateNetStart
	.section	.rodata
.LC17:
	.string	"Doomcom buffer invalid!"
	.align 8
.LC18:
	.string	"startskill %i  deathmatch: %i  startmap: %i  startepisode: %i\n"
.LC19:
	.string	"player %i of %i (%i nodes)\n"
	.text
	.globl	D_CheckNetGame
	.type	D_CheckNetGame, @function
D_CheckNetGame:
.LFB9:
	.loc 1 556 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# d_net.c:559:     for (i=0 ; i<MAXNETNODES ; i++)
	.loc 1 559 11
	movl	$0, -4(%rbp)	#, i
# d_net.c:559:     for (i=0 ; i<MAXNETNODES ; i++)
	.loc 1 559 5
	jmp	.L113	#
.L114:
# d_net.c:561: 	nodeingame[i] = false;
	.loc 1 561 16
	movl	-4(%rbp), %eax	# i, tmp118
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp119
	leaq	nodeingame(%rip), %rax	#, tmp120
	movl	$0, (%rdx,%rax)	#, nodeingame[i_36]
# d_net.c:562:        	nettics[i] = 0;
	.loc 1 562 20
	movl	-4(%rbp), %eax	# i, tmp122
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp123
	leaq	nettics(%rip), %rax	#, tmp124
	movl	$0, (%rdx,%rax)	#, nettics[i_36]
# d_net.c:563: 	remoteresend[i] = false;	// set when local needs tics
	.loc 1 563 18
	movl	-4(%rbp), %eax	# i, tmp126
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp127
	leaq	remoteresend(%rip), %rax	#, tmp128
	movl	$0, (%rdx,%rax)	#, remoteresend[i_36]
# d_net.c:564: 	resendto[i] = 0;		// which tic to start sending
	.loc 1 564 14
	movl	-4(%rbp), %eax	# i, tmp130
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp131
	leaq	resendto(%rip), %rax	#, tmp132
	movl	$0, (%rdx,%rax)	#, resendto[i_36]
# d_net.c:559:     for (i=0 ; i<MAXNETNODES ; i++)
	.loc 1 559 33 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L113:
# d_net.c:559:     for (i=0 ; i<MAXNETNODES ; i++)
	.loc 1 559 17 discriminator 1
	cmpl	$7, -4(%rbp)	#, i
	jle	.L114	#,
# d_net.c:568:     I_InitNetwork ();
	.loc 1 568 5
	call	I_InitNetwork@PLT	#
# d_net.c:569:     if (doomcom->id != DOOMCOM_ID)
	.loc 1 569 16
	movq	doomcom(%rip), %rax	# doomcom, doomcom.133_1
	movq	(%rax), %rax	# doomcom.133_1->id, _2
# d_net.c:569:     if (doomcom->id != DOOMCOM_ID)
	.loc 1 569 8
	cmpq	$305419896, %rax	#, _2
	je	.L115	#,
# d_net.c:570: 	I_Error ("Doomcom buffer invalid!");
	.loc 1 570 2
	leaq	.LC17(%rip), %rax	#, tmp133
	movq	%rax, %rdi	# tmp133,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L115:
# d_net.c:572:     netbuffer = &doomcom->data;
	.loc 1 572 25
	movq	doomcom(%rip), %rax	# doomcom, doomcom.134_3
# d_net.c:572:     netbuffer = &doomcom->data;
	.loc 1 572 17
	addq	$40, %rax	#, _4
# d_net.c:572:     netbuffer = &doomcom->data;
	.loc 1 572 15
	movq	%rax, netbuffer(%rip)	# _4, netbuffer
# d_net.c:573:     consoleplayer = displayplayer = doomcom->consoleplayer;
	.loc 1 573 44
	movq	doomcom(%rip), %rax	# doomcom, doomcom.135_5
	movzwl	32(%rax), %eax	# doomcom.135_5->consoleplayer, _6
	cwtl
# d_net.c:573:     consoleplayer = displayplayer = doomcom->consoleplayer;
	.loc 1 573 35
	movl	%eax, displayplayer(%rip)	# _7, displayplayer
# d_net.c:573:     consoleplayer = displayplayer = doomcom->consoleplayer;
	.loc 1 573 19
	movl	displayplayer(%rip), %eax	# displayplayer, displayplayer.136_8
	movl	%eax, consoleplayer(%rip)	# displayplayer.136_8, consoleplayer
# d_net.c:574:     if (netgame)
	.loc 1 574 9
	movl	netgame(%rip), %eax	# netgame, netgame.137_9
# d_net.c:574:     if (netgame)
	.loc 1 574 8
	testl	%eax, %eax	# netgame.137_9
	je	.L116	#,
# d_net.c:575: 	D_ArbitrateNetStart ();
	.loc 1 575 2
	call	D_ArbitrateNetStart	#
.L116:
# d_net.c:577:     printf ("startskill %i  deathmatch: %i  startmap: %i  startepisode: %i\n",
	.loc 1 577 5
	movl	startepisode(%rip), %esi	# startepisode, startepisode.138_10
	movl	startmap(%rip), %ecx	# startmap, startmap.139_11
	movl	deathmatch(%rip), %edx	# deathmatch, deathmatch.140_12
	movl	startskill(%rip), %eax	# startskill, startskill.141_13
	movl	%esi, %r8d	# startepisode.138_10,
	movl	%eax, %esi	# startskill.141_13,
	leaq	.LC18(%rip), %rax	#, tmp134
	movq	%rax, %rdi	# tmp134,
	movl	$0, %eax	#,
	call	printf@PLT	#
# d_net.c:581:     ticdup = doomcom->ticdup;
	.loc 1 581 21
	movq	doomcom(%rip), %rax	# doomcom, doomcom.142_14
	movzwl	18(%rax), %eax	# doomcom.142_14->ticdup, _15
	cwtl
# d_net.c:581:     ticdup = doomcom->ticdup;
	.loc 1 581 12
	movl	%eax, ticdup(%rip)	# _16, ticdup
# d_net.c:582:     maxsend = BACKUPTICS/(2*ticdup)-1;
	.loc 1 582 28
	movl	ticdup(%rip), %eax	# ticdup, ticdup.143_17
	leal	(%rax,%rax), %edi	#, _18
# d_net.c:582:     maxsend = BACKUPTICS/(2*ticdup)-1;
	.loc 1 582 25
	movl	$12, %eax	#, tmp137
	cltd
	idivl	%edi	# _18
# d_net.c:582:     maxsend = BACKUPTICS/(2*ticdup)-1;
	.loc 1 582 36
	subl	$1, %eax	#, _20
# d_net.c:582:     maxsend = BACKUPTICS/(2*ticdup)-1;
	.loc 1 582 13
	movl	%eax, maxsend(%rip)	# _20, maxsend
# d_net.c:583:     if (maxsend<1)
	.loc 1 583 16
	movl	maxsend(%rip), %eax	# maxsend, maxsend.144_21
# d_net.c:583:     if (maxsend<1)
	.loc 1 583 8
	testl	%eax, %eax	# maxsend.144_21
	jg	.L117	#,
# d_net.c:584: 	maxsend = 1;
	.loc 1 584 10
	movl	$1, maxsend(%rip)	#, maxsend
.L117:
# d_net.c:586:     for (i=0 ; i<doomcom->numplayers ; i++)
	.loc 1 586 11
	movl	$0, -4(%rbp)	#, i
# d_net.c:586:     for (i=0 ; i<doomcom->numplayers ; i++)
	.loc 1 586 5
	jmp	.L118	#
.L119:
# d_net.c:587: 	playeringame[i] = true;
	.loc 1 587 18
	movl	-4(%rbp), %eax	# i, tmp139
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp140
	leaq	playeringame(%rip), %rax	#, tmp141
	movl	$1, (%rdx,%rax)	#, playeringame[i_37]
# d_net.c:586:     for (i=0 ; i<doomcom->numplayers ; i++)
	.loc 1 586 41 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L118:
# d_net.c:586:     for (i=0 ; i<doomcom->numplayers ; i++)
	.loc 1 586 25 discriminator 1
	movq	doomcom(%rip), %rax	# doomcom, doomcom.145_22
	movzwl	34(%rax), %eax	# doomcom.145_22->numplayers, _23
	cwtl
# d_net.c:586:     for (i=0 ; i<doomcom->numplayers ; i++)
	.loc 1 586 17 discriminator 1
	cmpl	%eax, -4(%rbp)	# _24, i
	jl	.L119	#,
# d_net.c:588:     for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 588 11
	movl	$0, -4(%rbp)	#, i
# d_net.c:588:     for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 588 5
	jmp	.L120	#
.L121:
# d_net.c:589: 	nodeingame[i] = true;
	.loc 1 589 16
	movl	-4(%rbp), %eax	# i, tmp143
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp144
	leaq	nodeingame(%rip), %rax	#, tmp145
	movl	$1, (%rdx,%rax)	#, nodeingame[i_38]
# d_net.c:588:     for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 588 39 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L120:
# d_net.c:588:     for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 588 25 discriminator 1
	movq	doomcom(%rip), %rax	# doomcom, doomcom.146_25
	movzwl	16(%rax), %eax	# doomcom.146_25->numnodes, _26
	cwtl
# d_net.c:588:     for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 588 17 discriminator 1
	cmpl	%eax, -4(%rbp)	# _27, i
	jl	.L121	#,
# d_net.c:592: 	    consoleplayer+1, doomcom->numplayers, doomcom->numnodes);
	.loc 1 592 51
	movq	doomcom(%rip), %rax	# doomcom, doomcom.147_28
	movzwl	16(%rax), %eax	# doomcom.147_28->numnodes, _29
# d_net.c:591:     printf ("player %i of %i (%i nodes)\n",
	.loc 1 591 5
	movswl	%ax, %edx	# _29, _30
# d_net.c:592: 	    consoleplayer+1, doomcom->numplayers, doomcom->numnodes);
	.loc 1 592 30
	movq	doomcom(%rip), %rax	# doomcom, doomcom.148_31
	movzwl	34(%rax), %eax	# doomcom.148_31->numplayers, _32
# d_net.c:591:     printf ("player %i of %i (%i nodes)\n",
	.loc 1 591 5
	cwtl
	movl	consoleplayer(%rip), %ecx	# consoleplayer, consoleplayer.149_34
	leal	1(%rcx), %esi	#, _35
	movl	%edx, %ecx	# _30,
	movl	%eax, %edx	# _33,
	leaq	.LC19(%rip), %rax	#, tmp146
	movq	%rax, %rdi	# tmp146,
	movl	$0, %eax	#,
	call	printf@PLT	#
# d_net.c:594: }
	.loc 1 594 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	D_CheckNetGame, .-D_CheckNetGame
	.globl	D_QuitNetGame
	.type	D_QuitNetGame, @function
D_QuitNetGame:
.LFB10:
	.loc 1 603 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# d_net.c:606:     if (debugfile)
	.loc 1 606 9
	movq	debugfile(%rip), %rax	# debugfile, debugfile.150_1
# d_net.c:606:     if (debugfile)
	.loc 1 606 8
	testq	%rax, %rax	# debugfile.150_1
	je	.L123	#,
# d_net.c:607: 	fclose (debugfile);
	.loc 1 607 2
	movq	debugfile(%rip), %rax	# debugfile, debugfile.151_2
	movq	%rax, %rdi	# debugfile.151_2,
	call	fclose@PLT	#
.L123:
# d_net.c:609:     if (!netgame || !usergame || consoleplayer == -1 || demoplayback)
	.loc 1 609 9
	movl	netgame(%rip), %eax	# netgame, netgame.152_3
# d_net.c:609:     if (!netgame || !usergame || consoleplayer == -1 || demoplayback)
	.loc 1 609 8
	testl	%eax, %eax	# netgame.152_3
	je	.L132	#,
# d_net.c:609:     if (!netgame || !usergame || consoleplayer == -1 || demoplayback)
	.loc 1 609 21 discriminator 1
	movl	usergame(%rip), %eax	# usergame, usergame.153_4
# d_net.c:609:     if (!netgame || !usergame || consoleplayer == -1 || demoplayback)
	.loc 1 609 18 discriminator 1
	testl	%eax, %eax	# usergame.153_4
	je	.L132	#,
# d_net.c:609:     if (!netgame || !usergame || consoleplayer == -1 || demoplayback)
	.loc 1 609 48 discriminator 2
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.154_5
# d_net.c:609:     if (!netgame || !usergame || consoleplayer == -1 || demoplayback)
	.loc 1 609 31 discriminator 2
	cmpl	$-1, %eax	#, consoleplayer.154_5
	je	.L132	#,
# d_net.c:609:     if (!netgame || !usergame || consoleplayer == -1 || demoplayback)
	.loc 1 609 54 discriminator 3
	movl	demoplayback(%rip), %eax	# demoplayback, demoplayback.155_6
	testl	%eax, %eax	# demoplayback.155_6
	jne	.L132	#,
# d_net.c:613:     netbuffer->player = consoleplayer;
	.loc 1 613 23
	movl	consoleplayer(%rip), %edx	# consoleplayer, consoleplayer.156_7
# d_net.c:613:     netbuffer->player = consoleplayer;
	.loc 1 613 14
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.157_8
# d_net.c:613:     netbuffer->player = consoleplayer;
	.loc 1 613 23
	movb	%dl, 6(%rax)	# _9, netbuffer.157_8->player
# d_net.c:614:     netbuffer->numtics = 0;
	.loc 1 614 14
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.158_10
# d_net.c:614:     netbuffer->numtics = 0;
	.loc 1 614 24
	movb	$0, 7(%rax)	#, netbuffer.158_10->numtics
# d_net.c:615:     for (i=0 ; i<4 ; i++)
	.loc 1 615 11
	movl	$0, -8(%rbp)	#, i
# d_net.c:615:     for (i=0 ; i<4 ; i++)
	.loc 1 615 5
	jmp	.L127	#
.L131:
# d_net.c:617: 	for (j=1 ; j<doomcom->numnodes ; j++)
	.loc 1 617 8
	movl	$1, -4(%rbp)	#, j
# d_net.c:617: 	for (j=1 ; j<doomcom->numnodes ; j++)
	.loc 1 617 2
	jmp	.L128	#
.L130:
# d_net.c:618: 	    if (nodeingame[j])
	.loc 1 618 20
	movl	-4(%rbp), %eax	# j, tmp97
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp98
	leaq	nodeingame(%rip), %rax	#, tmp99
	movl	(%rdx,%rax), %eax	# nodeingame[j_16], _11
# d_net.c:618: 	    if (nodeingame[j])
	.loc 1 618 9
	testl	%eax, %eax	# _11
	je	.L129	#,
# d_net.c:619: 		HSendPacket (j, NCMD_EXIT);
	.loc 1 619 3
	movl	-4(%rbp), %eax	# j, tmp100
	movl	$-2147483648, %esi	#,
	movl	%eax, %edi	# tmp100,
	call	HSendPacket	#
.L129:
# d_net.c:617: 	for (j=1 ; j<doomcom->numnodes ; j++)
	.loc 1 617 36 discriminator 2
	addl	$1, -4(%rbp)	#, j
.L128:
# d_net.c:617: 	for (j=1 ; j<doomcom->numnodes ; j++)
	.loc 1 617 22 discriminator 1
	movq	doomcom(%rip), %rax	# doomcom, doomcom.159_12
	movzwl	16(%rax), %eax	# doomcom.159_12->numnodes, _13
	cwtl
# d_net.c:617: 	for (j=1 ; j<doomcom->numnodes ; j++)
	.loc 1 617 14 discriminator 1
	cmpl	%eax, -4(%rbp)	# _14, j
	jl	.L130	#,
# d_net.c:620: 	I_WaitVBL (1);
	.loc 1 620 2
	movl	$1, %edi	#,
	call	I_WaitVBL@PLT	#
# d_net.c:615:     for (i=0 ; i<4 ; i++)
	.loc 1 615 23 discriminator 2
	addl	$1, -8(%rbp)	#, i
.L127:
# d_net.c:615:     for (i=0 ; i<4 ; i++)
	.loc 1 615 17 discriminator 1
	cmpl	$3, -8(%rbp)	#, i
	jle	.L131	#,
	jmp	.L122	#
.L132:
# d_net.c:610: 	return;
	.loc 1 610 2
	nop	
.L122:
# d_net.c:622: }
	.loc 1 622 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	D_QuitNetGame, .-D_QuitNetGame
	.globl	frametics
	.bss
	.align 16
	.type	frametics, @object
	.size	frametics, 16
frametics:
	.zero	16
	.globl	frameon
	.align 4
	.type	frameon, @object
	.size	frameon, 4
frameon:
	.zero	4
	.globl	frameskip
	.align 16
	.type	frameskip, @object
	.size	frameskip, 16
frameskip:
	.zero	16
	.globl	oldnettics
	.align 4
	.type	oldnettics, @object
	.size	oldnettics, 4
oldnettics:
	.zero	4
	.section	.rodata
	.align 8
.LC20:
	.string	"=======real: %i  avail: %i  game: %i\n"
.LC21:
	.string	"TryRunTics: lowtic < gametic"
.LC22:
	.string	"gametic>lowtic"
	.text
	.globl	TryRunTics
	.type	TryRunTics, @function
TryRunTics:
.LFB11:
	.loc 1 637 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
# d_net.c:648:     entertic = I_GetTime ()/ticdup;
	.loc 1 648 16
	call	I_GetTime@PLT	#
# d_net.c:648:     entertic = I_GetTime ()/ticdup;
	.loc 1 648 28 discriminator 1
	movl	ticdup(%rip), %edi	# ticdup, ticdup.160_2
# d_net.c:648:     entertic = I_GetTime ()/ticdup;
	.loc 1 648 14 discriminator 1
	cltd
	idivl	%edi	# ticdup.160_2
	movl	%eax, -24(%rbp)	# tmp149, entertic
# d_net.c:649:     realtics = entertic - oldentertics;
	.loc 1 649 25
	movl	oldentertics.0(%rip), %eax	# oldentertics, oldentertics.161_3
# d_net.c:649:     realtics = entertic - oldentertics;
	.loc 1 649 14
	movl	-24(%rbp), %edx	# entertic, tmp154
	subl	%eax, %edx	# oldentertics.161_3, tmp153
	movl	%edx, -20(%rbp)	# tmp153, realtics
# d_net.c:650:     oldentertics = entertic;
	.loc 1 650 18
	movl	-24(%rbp), %eax	# entertic, tmp155
	movl	%eax, oldentertics.0(%rip)	# tmp155, oldentertics
# d_net.c:653:     NetUpdate ();
	.loc 1 653 5
	call	NetUpdate	#
# d_net.c:655:     lowtic = MAXINT;
	.loc 1 655 12
	movl	$2147483647, -40(%rbp)	#, lowtic
# d_net.c:656:     numplaying = 0;
	.loc 1 656 16
	movl	$0, -32(%rbp)	#, numplaying
# d_net.c:657:     for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 657 11
	movl	$0, -44(%rbp)	#, i
# d_net.c:657:     for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 657 5
	jmp	.L134	#
.L136:
# d_net.c:659: 	if (nodeingame[i])
	.loc 1 659 16
	movl	-44(%rbp), %eax	# i, tmp157
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp158
	leaq	nodeingame(%rip), %rax	#, tmp159
	movl	(%rdx,%rax), %eax	# nodeingame[i_68], _4
# d_net.c:659: 	if (nodeingame[i])
	.loc 1 659 5
	testl	%eax, %eax	# _4
	je	.L135	#,
# d_net.c:661: 	    numplaying++;
	.loc 1 661 16
	addl	$1, -32(%rbp)	#, numplaying
# d_net.c:662: 	    if (nettics[i] < lowtic)
	.loc 1 662 17
	movl	-44(%rbp), %eax	# i, tmp161
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp162
	leaq	nettics(%rip), %rax	#, tmp163
	movl	(%rdx,%rax), %eax	# nettics[i_68], _5
# d_net.c:662: 	    if (nettics[i] < lowtic)
	.loc 1 662 9
	cmpl	%eax, -40(%rbp)	# _5, lowtic
	jle	.L135	#,
# d_net.c:663: 		lowtic = nettics[i];
	.loc 1 663 10
	movl	-44(%rbp), %eax	# i, tmp165
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp166
	leaq	nettics(%rip), %rax	#, tmp167
	movl	(%rdx,%rax), %eax	# nettics[i_68], tmp168
	movl	%eax, -40(%rbp)	# tmp168, lowtic
.L135:
# d_net.c:657:     for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 657 39 discriminator 2
	addl	$1, -44(%rbp)	#, i
.L134:
# d_net.c:657:     for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 657 25 discriminator 1
	movq	doomcom(%rip), %rax	# doomcom, doomcom.162_6
	movzwl	16(%rax), %eax	# doomcom.162_6->numnodes, _7
	cwtl
# d_net.c:657:     for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 657 17 discriminator 1
	cmpl	%eax, -44(%rbp)	# _8, i
	jl	.L136	#,
# d_net.c:666:     availabletics = lowtic - gametic/ticdup;
	.loc 1 666 37
	movl	gametic(%rip), %eax	# gametic, gametic.163_9
	movl	ticdup(%rip), %esi	# ticdup, ticdup.164_10
	cltd
	idivl	%esi	# ticdup.164_10
	movl	%eax, %edx	# tmp169, _11
# d_net.c:666:     availabletics = lowtic - gametic/ticdup;
	.loc 1 666 19
	movl	-40(%rbp), %eax	# lowtic, tmp174
	subl	%edx, %eax	# _11, tmp173
	movl	%eax, -16(%rbp)	# tmp173, availabletics
# d_net.c:669:     if (realtics < availabletics-1)
	.loc 1 669 33
	movl	-16(%rbp), %eax	# availabletics, tmp175
	subl	$1, %eax	#, _12
# d_net.c:669:     if (realtics < availabletics-1)
	.loc 1 669 8
	cmpl	%eax, -20(%rbp)	# _12, realtics
	jge	.L137	#,
# d_net.c:670: 	counts = realtics+1;
	.loc 1 670 9
	movl	-20(%rbp), %eax	# realtics, tmp179
	addl	$1, %eax	#, tmp178
	movl	%eax, -36(%rbp)	# tmp178, counts
	jmp	.L138	#
.L137:
# d_net.c:671:     else if (realtics < availabletics)
	.loc 1 671 13
	movl	-20(%rbp), %eax	# realtics, tmp180
	cmpl	-16(%rbp), %eax	# availabletics, tmp180
	jge	.L139	#,
# d_net.c:672: 	counts = realtics;
	.loc 1 672 9
	movl	-20(%rbp), %eax	# realtics, tmp181
	movl	%eax, -36(%rbp)	# tmp181, counts
	jmp	.L138	#
.L139:
# d_net.c:674: 	counts = availabletics;
	.loc 1 674 9
	movl	-16(%rbp), %eax	# availabletics, tmp182
	movl	%eax, -36(%rbp)	# tmp182, counts
.L138:
# d_net.c:676:     if (counts < 1)
	.loc 1 676 8
	cmpl	$0, -36(%rbp)	#, counts
	jg	.L140	#,
# d_net.c:677: 	counts = 1;
	.loc 1 677 9
	movl	$1, -36(%rbp)	#, counts
.L140:
# d_net.c:679:     frameon++;
	.loc 1 679 12
	movl	frameon(%rip), %eax	# frameon, frameon.165_13
	addl	$1, %eax	#, _14
	movl	%eax, frameon(%rip)	# _14, frameon
# d_net.c:681:     if (debugfile)
	.loc 1 681 9
	movq	debugfile(%rip), %rax	# debugfile, debugfile.166_15
# d_net.c:681:     if (debugfile)
	.loc 1 681 8
	testq	%rax, %rax	# debugfile.166_15
	je	.L141	#,
# d_net.c:682: 	fprintf (debugfile,
	.loc 1 682 2
	movq	debugfile(%rip), %rax	# debugfile, debugfile.167_16
	movl	-36(%rbp), %esi	# counts, tmp183
	movl	-16(%rbp), %ecx	# availabletics, tmp184
	movl	-20(%rbp), %edx	# realtics, tmp185
	movl	%esi, %r8d	# tmp183,
	leaq	.LC20(%rip), %rsi	#, tmp186
	movq	%rax, %rdi	# debugfile.167_16,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
.L141:
# d_net.c:686:     if (!demoplayback)
	.loc 1 686 9
	movl	demoplayback(%rip), %eax	# demoplayback, demoplayback.168_17
# d_net.c:686:     if (!demoplayback)
	.loc 1 686 8
	testl	%eax, %eax	# demoplayback.168_17
	jne	.L148	#,
# d_net.c:690: 	for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 690 8
	movl	$0, -44(%rbp)	#, i
# d_net.c:690: 	for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 690 2
	jmp	.L143	#
.L146:
# d_net.c:691: 	    if (playeringame[i])
	.loc 1 691 22
	movl	-44(%rbp), %eax	# i, tmp188
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp189
	leaq	playeringame(%rip), %rax	#, tmp190
	movl	(%rdx,%rax), %eax	# playeringame[i_69], _18
# d_net.c:691: 	    if (playeringame[i])
	.loc 1 691 9
	testl	%eax, %eax	# _18
	jne	.L165	#,
# d_net.c:690: 	for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 690 29 discriminator 2
	addl	$1, -44(%rbp)	#, i
.L143:
# d_net.c:690: 	for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 690 14 discriminator 1
	cmpl	$3, -44(%rbp)	#, i
	jle	.L146	#,
	jmp	.L145	#
.L165:
# d_net.c:692: 		break;
	.loc 1 692 3
	nop	
.L145:
# d_net.c:693: 	if (consoleplayer == i)
	.loc 1 693 20
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.169_19
# d_net.c:693: 	if (consoleplayer == i)
	.loc 1 693 5
	cmpl	%eax, -44(%rbp)	# consoleplayer.169_19, i
	je	.L148	#,
# d_net.c:699: 	    if (nettics[0] <= nettics[nodeforplayer[i]])
	.loc 1 699 17
	movl	nettics(%rip), %edx	# nettics[0], _20
# d_net.c:699: 	    if (nettics[0] <= nettics[nodeforplayer[i]])
	.loc 1 699 45
	movl	-44(%rbp), %eax	# i, tmp192
	cltq
	leaq	0(,%rax,4), %rcx	#, tmp193
	leaq	nodeforplayer(%rip), %rax	#, tmp194
	movl	(%rcx,%rax), %eax	# nodeforplayer[i_69], _21
# d_net.c:699: 	    if (nettics[0] <= nettics[nodeforplayer[i]])
	.loc 1 699 31
	cltq
	leaq	0(,%rax,4), %rcx	#, tmp196
	leaq	nettics(%rip), %rax	#, tmp197
	movl	(%rcx,%rax), %eax	# nettics[_21], _22
# d_net.c:699: 	    if (nettics[0] <= nettics[nodeforplayer[i]])
	.loc 1 699 9
	cmpl	%eax, %edx	# _22, _20
	jg	.L147	#,
# d_net.c:701: 		gametime--;
	.loc 1 701 11
	movl	gametime(%rip), %eax	# gametime, gametime.170_23
	subl	$1, %eax	#, _24
	movl	%eax, gametime(%rip)	# _24, gametime
.L147:
# d_net.c:704: 	    frameskip[frameon&3] = (oldnettics > nettics[nodeforplayer[i]]);
	.loc 1 704 64
	movl	-44(%rbp), %eax	# i, tmp199
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp200
	leaq	nodeforplayer(%rip), %rax	#, tmp201
	movl	(%rdx,%rax), %eax	# nodeforplayer[i_69], _25
# d_net.c:704: 	    frameskip[frameon&3] = (oldnettics > nettics[nodeforplayer[i]]);
	.loc 1 704 50
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp203
	leaq	nettics(%rip), %rax	#, tmp204
	movl	(%rdx,%rax), %edx	# nettics[_25], _26
# d_net.c:704: 	    frameskip[frameon&3] = (oldnettics > nettics[nodeforplayer[i]]);
	.loc 1 704 41
	movl	oldnettics(%rip), %eax	# oldnettics, oldnettics.171_27
	cmpl	%eax, %edx	# oldnettics.171_27, _26
	setl	%cl	#, _28
# d_net.c:704: 	    frameskip[frameon&3] = (oldnettics > nettics[nodeforplayer[i]]);
	.loc 1 704 23
	movl	frameon(%rip), %eax	# frameon, frameon.172_29
	andl	$3, %eax	#, frameon.172_29
	movl	%eax, %edx	# frameon.172_29, _30
# d_net.c:704: 	    frameskip[frameon&3] = (oldnettics > nettics[nodeforplayer[i]]);
	.loc 1 704 41
	movzbl	%cl, %eax	# _28, _31
# d_net.c:704: 	    frameskip[frameon&3] = (oldnettics > nettics[nodeforplayer[i]]);
	.loc 1 704 27
	movslq	%edx, %rdx	# _30, tmp205
	leaq	0(,%rdx,4), %rcx	#, tmp206
	leaq	frameskip(%rip), %rdx	#, tmp207
	movl	%eax, (%rcx,%rdx)	# _31, frameskip[_30]
# d_net.c:705: 	    oldnettics = nettics[0];
	.loc 1 705 26
	movl	nettics(%rip), %eax	# nettics[0], _32
# d_net.c:705: 	    oldnettics = nettics[0];
	.loc 1 705 17
	movl	%eax, oldnettics(%rip)	# _32, oldnettics
# d_net.c:706: 	    if (frameskip[0] && frameskip[1] && frameskip[2] && frameskip[3])
	.loc 1 706 19
	movl	frameskip(%rip), %eax	# frameskip[0], _33
# d_net.c:706: 	    if (frameskip[0] && frameskip[1] && frameskip[2] && frameskip[3])
	.loc 1 706 9
	testl	%eax, %eax	# _33
	je	.L148	#,
# d_net.c:706: 	    if (frameskip[0] && frameskip[1] && frameskip[2] && frameskip[3])
	.loc 1 706 35 discriminator 1
	movl	4+frameskip(%rip), %eax	# frameskip[1], _34
# d_net.c:706: 	    if (frameskip[0] && frameskip[1] && frameskip[2] && frameskip[3])
	.loc 1 706 23 discriminator 1
	testl	%eax, %eax	# _34
	je	.L148	#,
# d_net.c:706: 	    if (frameskip[0] && frameskip[1] && frameskip[2] && frameskip[3])
	.loc 1 706 51 discriminator 2
	movl	8+frameskip(%rip), %eax	# frameskip[2], _35
# d_net.c:706: 	    if (frameskip[0] && frameskip[1] && frameskip[2] && frameskip[3])
	.loc 1 706 39 discriminator 2
	testl	%eax, %eax	# _35
	je	.L148	#,
# d_net.c:706: 	    if (frameskip[0] && frameskip[1] && frameskip[2] && frameskip[3])
	.loc 1 706 67 discriminator 3
	movl	12+frameskip(%rip), %eax	# frameskip[3], _36
# d_net.c:706: 	    if (frameskip[0] && frameskip[1] && frameskip[2] && frameskip[3])
	.loc 1 706 55 discriminator 3
	testl	%eax, %eax	# _36
	je	.L148	#,
# d_net.c:708: 		skiptics = 1;
	.loc 1 708 12
	movl	$1, skiptics(%rip)	#, skiptics
# d_net.c:715:     while (lowtic < gametic/ticdup + counts)	
	.loc 1 715 11
	jmp	.L148	#
.L154:
# d_net.c:717: 	NetUpdate ();   
	.loc 1 717 2
	call	NetUpdate	#
# d_net.c:718: 	lowtic = MAXINT;
	.loc 1 718 9
	movl	$2147483647, -40(%rbp)	#, lowtic
# d_net.c:720: 	for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 720 8
	movl	$0, -44(%rbp)	#, i
# d_net.c:720: 	for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 720 2
	jmp	.L149	#
.L151:
# d_net.c:721: 	    if (nodeingame[i] && nettics[i] < lowtic)
	.loc 1 721 20
	movl	-44(%rbp), %eax	# i, tmp209
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp210
	leaq	nodeingame(%rip), %rax	#, tmp211
	movl	(%rdx,%rax), %eax	# nodeingame[i_70], _37
# d_net.c:721: 	    if (nodeingame[i] && nettics[i] < lowtic)
	.loc 1 721 9
	testl	%eax, %eax	# _37
	je	.L150	#,
# d_net.c:721: 	    if (nodeingame[i] && nettics[i] < lowtic)
	.loc 1 721 34 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp213
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp214
	leaq	nettics(%rip), %rax	#, tmp215
	movl	(%rdx,%rax), %eax	# nettics[i_70], _38
# d_net.c:721: 	    if (nodeingame[i] && nettics[i] < lowtic)
	.loc 1 721 24 discriminator 1
	cmpl	%eax, -40(%rbp)	# _38, lowtic
	jle	.L150	#,
# d_net.c:722: 		lowtic = nettics[i];
	.loc 1 722 10
	movl	-44(%rbp), %eax	# i, tmp217
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp218
	leaq	nettics(%rip), %rax	#, tmp219
	movl	(%rdx,%rax), %eax	# nettics[i_70], tmp220
	movl	%eax, -40(%rbp)	# tmp220, lowtic
.L150:
# d_net.c:720: 	for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 720 36 discriminator 2
	addl	$1, -44(%rbp)	#, i
.L149:
# d_net.c:720: 	for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 720 22 discriminator 1
	movq	doomcom(%rip), %rax	# doomcom, doomcom.173_39
	movzwl	16(%rax), %eax	# doomcom.173_39->numnodes, _40
	cwtl
# d_net.c:720: 	for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 720 14 discriminator 1
	cmpl	%eax, -44(%rbp)	# _41, i
	jl	.L151	#,
# d_net.c:724: 	if (lowtic < gametic/ticdup)
	.loc 1 724 22
	movl	gametic(%rip), %eax	# gametic, gametic.174_42
	movl	ticdup(%rip), %edi	# ticdup, ticdup.175_43
	cltd
	idivl	%edi	# ticdup.175_43
# d_net.c:724: 	if (lowtic < gametic/ticdup)
	.loc 1 724 5
	cmpl	%eax, -40(%rbp)	# _44, lowtic
	jge	.L152	#,
# d_net.c:725: 	    I_Error ("TryRunTics: lowtic < gametic");
	.loc 1 725 6
	leaq	.LC21(%rip), %rax	#, tmp223
	movq	%rax, %rdi	# tmp223,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L152:
# d_net.c:728: 	if (I_GetTime ()/ticdup - entertic >= 20)
	.loc 1 728 6
	call	I_GetTime@PLT	#
# d_net.c:728: 	if (I_GetTime ()/ticdup - entertic >= 20)
	.loc 1 728 18 discriminator 1
	movl	ticdup(%rip), %esi	# ticdup, ticdup.176_46
	cltd
	idivl	%esi	# ticdup.176_46
# d_net.c:728: 	if (I_GetTime ()/ticdup - entertic >= 20)
	.loc 1 728 26 discriminator 1
	subl	-24(%rbp), %eax	# entertic, _48
# d_net.c:728: 	if (I_GetTime ()/ticdup - entertic >= 20)
	.loc 1 728 5 discriminator 1
	cmpl	$19, %eax	#, _48
	jle	.L148	#,
# d_net.c:730: 	    M_Ticker ();
	.loc 1 730 6
	call	M_Ticker@PLT	#
# d_net.c:731: 	    return;
	.loc 1 731 6
	jmp	.L133	#
.L148:
# d_net.c:715:     while (lowtic < gametic/ticdup + counts)	
	.loc 1 715 28
	movl	gametic(%rip), %eax	# gametic, gametic.177_49
	movl	ticdup(%rip), %edi	# ticdup, ticdup.178_50
	cltd
	idivl	%edi	# ticdup.178_50
	movl	%eax, %edx	# tmp226, _51
# d_net.c:715:     while (lowtic < gametic/ticdup + counts)	
	.loc 1 715 36
	movl	-36(%rbp), %eax	# counts, tmp228
	addl	%edx, %eax	# _51, _52
# d_net.c:715:     while (lowtic < gametic/ticdup + counts)	
	.loc 1 715 19
	cmpl	%eax, -40(%rbp)	# _52, lowtic
	jl	.L154	#,
# d_net.c:736:     while (counts--)
	.loc 1 736 11
	jmp	.L155	#
.L164:
# d_net.c:738: 	for (i=0 ; i<ticdup ; i++)
	.loc 1 738 8
	movl	$0, -44(%rbp)	#, i
# d_net.c:738: 	for (i=0 ; i<ticdup ; i++)
	.loc 1 738 2
	jmp	.L156	#
.L163:
# d_net.c:740: 	    if (gametic/ticdup > lowtic)
	.loc 1 740 17
	movl	gametic(%rip), %eax	# gametic, gametic.179_53
	movl	ticdup(%rip), %esi	# ticdup, ticdup.180_54
	cltd
	idivl	%esi	# ticdup.180_54
# d_net.c:740: 	    if (gametic/ticdup > lowtic)
	.loc 1 740 9
	cmpl	%eax, -40(%rbp)	# _55, lowtic
	jge	.L157	#,
# d_net.c:741: 		I_Error ("gametic>lowtic");
	.loc 1 741 3
	leaq	.LC22(%rip), %rax	#, tmp231
	movq	%rax, %rdi	# tmp231,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L157:
# d_net.c:742: 	    if (advancedemo)
	.loc 1 742 10
	movl	advancedemo(%rip), %eax	# advancedemo, advancedemo.181_56
# d_net.c:742: 	    if (advancedemo)
	.loc 1 742 9
	testl	%eax, %eax	# advancedemo.181_56
	je	.L158	#,
# d_net.c:743: 		D_DoAdvanceDemo ();
	.loc 1 743 3
	call	D_DoAdvanceDemo@PLT	#
.L158:
# d_net.c:744: 	    M_Ticker ();
	.loc 1 744 6
	call	M_Ticker@PLT	#
# d_net.c:745: 	    G_Ticker ();
	.loc 1 745 6
	call	G_Ticker@PLT	#
# d_net.c:746: 	    gametic++;
	.loc 1 746 13
	movl	gametic(%rip), %eax	# gametic, gametic.182_57
	addl	$1, %eax	#, _58
	movl	%eax, gametic(%rip)	# _58, gametic
# d_net.c:749: 	    if (i != ticdup-1)
	.loc 1 749 21
	movl	ticdup(%rip), %eax	# ticdup, ticdup.183_59
	subl	$1, %eax	#, _60
# d_net.c:749: 	    if (i != ticdup-1)
	.loc 1 749 9
	cmpl	%eax, -44(%rbp)	# _60, i
	je	.L159	#,
.LBB5:
# d_net.c:755: 		buf = (gametic/ticdup)%BACKUPTICS; 
	.loc 1 755 17
	movl	gametic(%rip), %eax	# gametic, gametic.184_61
	movl	ticdup(%rip), %edi	# ticdup, ticdup.185_62
	cltd
	idivl	%edi	# ticdup.185_62
	movl	%eax, %edx	# tmp232, _63
# d_net.c:755: 		buf = (gametic/ticdup)%BACKUPTICS; 
	.loc 1 755 7
	movslq	%edx, %rax	# _63, tmp234
	imulq	$715827883, %rax, %rax	#, tmp234, tmp235
	shrq	$32, %rax	#, tmp236
	sarl	%eax	# tmp237
	movl	%edx, %ecx	# _63, tmp238
	sarl	$31, %ecx	#, tmp238
	subl	%ecx, %eax	# tmp238, tmp239
	movl	%eax, -12(%rbp)	# tmp239, buf
	movl	-12(%rbp), %ecx	# buf, tmp240
	movl	%ecx, %eax	# tmp240, tmp241
	addl	%eax, %eax	# tmp241
	addl	%ecx, %eax	# tmp240, tmp241
	sall	$2, %eax	#, tmp242
	subl	%eax, %edx	# tmp241, tmp243
	movl	%edx, -12(%rbp)	# tmp243, buf
# d_net.c:756: 		for (j=0 ; j<MAXPLAYERS ; j++)
	.loc 1 756 9
	movl	$0, -28(%rbp)	#, j
# d_net.c:756: 		for (j=0 ; j<MAXPLAYERS ; j++)
	.loc 1 756 3
	jmp	.L160	#
.L162:
# d_net.c:758: 		    cmd = &netcmds[j][buf];
	.loc 1 758 11
	movl	-12(%rbp), %eax	# buf, tmp245
	movslq	%eax, %rcx	# tmp245, tmp244
	movl	-28(%rbp), %eax	# j, tmp247
	movslq	%eax, %rdx	# tmp247, tmp246
	movq	%rdx, %rax	# tmp246, tmp248
	addq	%rax, %rax	# tmp248
	addq	%rdx, %rax	# tmp246, tmp248
	salq	$2, %rax	#, tmp249
	addq	%rcx, %rax	# tmp244, tmp250
	leaq	0(,%rax,8), %rdx	#, tmp251
	leaq	netcmds(%rip), %rax	#, tmp252
	addq	%rdx, %rax	# tmp251, tmp253
	movq	%rax, -8(%rbp)	# tmp253, cmd
# d_net.c:759: 		    cmd->chatchar = 0;
	.loc 1 759 21
	movq	-8(%rbp), %rax	# cmd, tmp254
	movb	$0, 6(%rax)	#, cmd_128->chatchar
# d_net.c:760: 		    if (cmd->buttons & BT_SPECIAL)
	.loc 1 760 14
	movq	-8(%rbp), %rax	# cmd, tmp255
	movzbl	7(%rax), %eax	# cmd_128->buttons, _64
# d_net.c:760: 		    if (cmd->buttons & BT_SPECIAL)
	.loc 1 760 10
	testb	%al, %al	# _65
	jns	.L161	#,
# d_net.c:761: 			cmd->buttons = 0;
	.loc 1 761 17
	movq	-8(%rbp), %rax	# cmd, tmp256
	movb	$0, 7(%rax)	#, cmd_128->buttons
.L161:
# d_net.c:756: 		for (j=0 ; j<MAXPLAYERS ; j++)
	.loc 1 756 30 discriminator 2
	addl	$1, -28(%rbp)	#, j
.L160:
# d_net.c:756: 		for (j=0 ; j<MAXPLAYERS ; j++)
	.loc 1 756 15 discriminator 1
	cmpl	$3, -28(%rbp)	#, j
	jle	.L162	#,
.L159:
.LBE5:
# d_net.c:738: 	for (i=0 ; i<ticdup ; i++)
	.loc 1 738 25 discriminator 2
	addl	$1, -44(%rbp)	#, i
.L156:
# d_net.c:738: 	for (i=0 ; i<ticdup ; i++)
	.loc 1 738 14 discriminator 1
	movl	ticdup(%rip), %eax	# ticdup, ticdup.186_66
	cmpl	%eax, -44(%rbp)	# ticdup.186_66, i
	jl	.L163	#,
# d_net.c:765: 	NetUpdate ();	// check for new console commands
	.loc 1 765 2
	call	NetUpdate	#
.L155:
# d_net.c:736:     while (counts--)
	.loc 1 736 18
	movl	-36(%rbp), %eax	# counts, counts.187_67
	leal	-1(%rax), %edx	#, tmp257
	movl	%edx, -36(%rbp)	# tmp257, counts
# d_net.c:736:     while (counts--)
	.loc 1 736 12
	testl	%eax, %eax	# counts.187_67
	jne	.L164	#,
.L133:
# d_net.c:767: }
	.loc 1 767 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	TryRunTics, .-TryRunTics
	.local	oldentertics.0
	.comm	oldentertics.0,4,4
.Letext0:
	.file 2 "doomtype.h"
	.file 3 "d_event.h"
	.file 4 "d_ticcmd.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 9 "doomdef.h"
	.file 10 "doomdata.h"
	.file 11 "m_fixed.h"
	.file 12 "tables.h"
	.file 13 "d_think.h"
	.file 14 "info.h"
	.file 15 "p_pspr.h"
	.file 16 "p_mobj.h"
	.file 17 "d_player.h"
	.file 18 "d_net.h"
	.file 19 "doomstat.h"
	.file 20 "g_game.h"
	.file 21 "m_menu.h"
	.file 22 "/usr/include/stdio.h"
	.file 23 "i_net.h"
	.file 24 "/usr/include/string.h"
	.file 25 "i_video.h"
	.file 26 "i_system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x37d6
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x2b
	.long	.LASF1600
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xa
	.long	0x51
	.long	0x3e
	.uleb128 0x9
	.long	0x43
	.byte	0x2f
	.byte	0
	.uleb128 0x20
	.long	0x2e
	.uleb128 0xf
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x20
	.long	0x4a
	.uleb128 0x18
	.long	.LASF1567
	.byte	0x1a
	.byte	0x13
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0xb
	.long	0x84
	.byte	0x2
	.byte	0x22
	.byte	0xe
	.long	0x84
	.uleb128 0x2
	.long	.LASF4
	.byte	0
	.uleb128 0x2
	.long	.LASF5
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0x22
	.byte	0x1c
	.long	0x6b
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0x24
	.byte	0x17
	.long	0xa3
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.long	.LASF9
	.uleb128 0xb
	.long	0x84
	.byte	0x3
	.byte	0x24
	.byte	0x1
	.long	0xcf
	.uleb128 0x2
	.long	.LASF10
	.byte	0
	.uleb128 0x2
	.long	.LASF11
	.byte	0x1
	.uleb128 0x2
	.long	.LASF12
	.byte	0x2
	.uleb128 0x2
	.long	.LASF13
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF14
	.byte	0x3
	.byte	0x29
	.byte	0x3
	.long	0xaa
	.uleb128 0x15
	.byte	0x10
	.byte	0x3
	.byte	0x2c
	.long	0x118
	.uleb128 0x3
	.long	.LASF15
	.byte	0x3
	.byte	0x2e
	.byte	0xe
	.long	0xcf
	.byte	0
	.uleb128 0x3
	.long	.LASF16
	.byte	0x3
	.byte	0x2f
	.byte	0xa
	.long	0x118
	.byte	0x4
	.uleb128 0x3
	.long	.LASF17
	.byte	0x3
	.byte	0x30
	.byte	0xa
	.long	0x118
	.byte	0x8
	.uleb128 0x3
	.long	.LASF18
	.byte	0x3
	.byte	0x31
	.byte	0xa
	.long	0x118
	.byte	0xc
	.byte	0
	.uleb128 0x2c
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.long	.LASF19
	.byte	0x3
	.byte	0x32
	.byte	0x3
	.long	0xdb
	.uleb128 0xb
	.long	0x84
	.byte	0x3
	.byte	0x49
	.byte	0x1
	.long	0x17a
	.uleb128 0x2
	.long	.LASF20
	.byte	0x1
	.uleb128 0x2
	.long	.LASF21
	.byte	0x2
	.uleb128 0x2
	.long	.LASF22
	.byte	0x80
	.uleb128 0x2
	.long	.LASF23
	.byte	0x3
	.uleb128 0x2
	.long	.LASF24
	.byte	0x4
	.uleb128 0x2
	.long	.LASF25
	.byte	0x38
	.uleb128 0x2
	.long	.LASF26
	.byte	0x3
	.uleb128 0x2
	.long	.LASF27
	.byte	0x1
	.uleb128 0x2
	.long	.LASF28
	.byte	0x2
	.uleb128 0x2
	.long	.LASF29
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF30
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.long	0x11f
	.long	0x18a
	.uleb128 0x9
	.long	0x43
	.byte	0x3f
	.byte	0
	.uleb128 0x7
	.long	.LASF31
	.byte	0x3
	.byte	0x6e
	.byte	0x12
	.long	0x17a
	.uleb128 0x7
	.long	.LASF32
	.byte	0x3
	.byte	0x6f
	.byte	0x19
	.long	0x118
	.uleb128 0x7
	.long	.LASF33
	.byte	0x3
	.byte	0x70
	.byte	0xd
	.long	0x118
	.uleb128 0x15
	.byte	0x8
	.byte	0x4
	.byte	0x24
	.long	0x205
	.uleb128 0x3
	.long	.LASF34
	.byte	0x4
	.byte	0x26
	.byte	0xa
	.long	0x4a
	.byte	0
	.uleb128 0x3
	.long	.LASF35
	.byte	0x4
	.byte	0x27
	.byte	0xa
	.long	0x4a
	.byte	0x1
	.uleb128 0x3
	.long	.LASF36
	.byte	0x4
	.byte	0x28
	.byte	0xb
	.long	0x205
	.byte	0x2
	.uleb128 0x3
	.long	.LASF37
	.byte	0x4
	.byte	0x29
	.byte	0xb
	.long	0x205
	.byte	0x4
	.uleb128 0x3
	.long	.LASF38
	.byte	0x4
	.byte	0x2a
	.byte	0xa
	.long	0x97
	.byte	0x6
	.uleb128 0x3
	.long	.LASF39
	.byte	0x4
	.byte	0x2b
	.byte	0xa
	.long	0x97
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.byte	0x2
	.byte	0x5
	.long	.LASF40
	.uleb128 0x5
	.long	.LASF41
	.byte	0x4
	.byte	0x2c
	.byte	0x3
	.long	0x1ae
	.uleb128 0x5
	.long	.LASF42
	.byte	0x5
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x2d
	.byte	0x8
	.uleb128 0xf
	.byte	0x2
	.byte	0x7
	.long	.LASF43
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.long	.LASF44
	.uleb128 0xf
	.byte	0x8
	.byte	0x5
	.long	.LASF45
	.uleb128 0x5
	.long	.LASF46
	.byte	0x6
	.byte	0x98
	.byte	0x19
	.long	0x234
	.uleb128 0x5
	.long	.LASF47
	.byte	0x6
	.byte	0x99
	.byte	0x1b
	.long	0x234
	.uleb128 0x6
	.long	0x4a
	.uleb128 0x1c
	.long	.LASF134
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x3df
	.uleb128 0x3
	.long	.LASF48
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0x118
	.byte	0
	.uleb128 0x3
	.long	.LASF49
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0x253
	.byte	0x8
	.uleb128 0x3
	.long	.LASF50
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0x253
	.byte	0x10
	.uleb128 0x3
	.long	.LASF51
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0x253
	.byte	0x18
	.uleb128 0x3
	.long	.LASF52
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0x253
	.byte	0x20
	.uleb128 0x3
	.long	.LASF53
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0x253
	.byte	0x28
	.uleb128 0x3
	.long	.LASF54
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0x253
	.byte	0x30
	.uleb128 0x3
	.long	.LASF55
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0x253
	.byte	0x38
	.uleb128 0x3
	.long	.LASF56
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0x253
	.byte	0x40
	.uleb128 0x3
	.long	.LASF57
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0x253
	.byte	0x48
	.uleb128 0x3
	.long	.LASF58
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0x253
	.byte	0x50
	.uleb128 0x3
	.long	.LASF59
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0x253
	.byte	0x58
	.uleb128 0x3
	.long	.LASF60
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x3f8
	.byte	0x60
	.uleb128 0x3
	.long	.LASF61
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x3fd
	.byte	0x68
	.uleb128 0x3
	.long	.LASF62
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0x118
	.byte	0x70
	.uleb128 0x3
	.long	.LASF63
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0x118
	.byte	0x74
	.uleb128 0x3
	.long	.LASF64
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0x23b
	.byte	0x78
	.uleb128 0x3
	.long	.LASF65
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0x226
	.byte	0x80
	.uleb128 0x3
	.long	.LASF66
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0x22d
	.byte	0x82
	.uleb128 0x3
	.long	.LASF67
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x402
	.byte	0x83
	.uleb128 0x3
	.long	.LASF68
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x412
	.byte	0x88
	.uleb128 0x3
	.long	.LASF69
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0x247
	.byte	0x90
	.uleb128 0x3
	.long	.LASF70
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x41c
	.byte	0x98
	.uleb128 0x3
	.long	.LASF71
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x426
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF72
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x3fd
	.byte	0xa8
	.uleb128 0x3
	.long	.LASF73
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0x224
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF74
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0x218
	.byte	0xb8
	.uleb128 0x3
	.long	.LASF75
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0x118
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF76
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x42b
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	.LASF77
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0x258
	.uleb128 0x2e
	.long	.LASF1601
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0x19
	.long	.LASF78
	.uleb128 0x6
	.long	0x3f3
	.uleb128 0x6
	.long	0x258
	.uleb128 0xa
	.long	0x4a
	.long	0x412
	.uleb128 0x9
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x3eb
	.uleb128 0x19
	.long	.LASF79
	.uleb128 0x6
	.long	0x417
	.uleb128 0x19
	.long	.LASF80
	.uleb128 0x6
	.long	0x421
	.uleb128 0xa
	.long	0x4a
	.long	0x43b
	.uleb128 0x9
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.long	0x51
	.uleb128 0x21
	.long	0x43b
	.uleb128 0x6
	.long	0x3df
	.uleb128 0x21
	.long	0x445
	.uleb128 0xb
	.long	0x84
	.byte	0x9
	.byte	0x21
	.byte	0x6
	.long	0x462
	.uleb128 0x2
	.long	.LASF81
	.byte	0x6e
	.byte	0
	.uleb128 0xb
	.long	0x84
	.byte	0x9
	.byte	0x94
	.byte	0x1
	.long	0x48d
	.uleb128 0x2
	.long	.LASF82
	.byte	0
	.uleb128 0x2
	.long	.LASF83
	.byte	0x1
	.uleb128 0x2
	.long	.LASF84
	.byte	0x2
	.uleb128 0x2
	.long	.LASF85
	.byte	0x3
	.uleb128 0x2
	.long	.LASF86
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF87
	.byte	0x9
	.byte	0x9a
	.byte	0x3
	.long	0x462
	.uleb128 0xb
	.long	0x84
	.byte	0x9
	.byte	0xa3
	.byte	0x1
	.long	0x4d0
	.uleb128 0x2
	.long	.LASF88
	.byte	0
	.uleb128 0x2
	.long	.LASF89
	.byte	0x1
	.uleb128 0x2
	.long	.LASF90
	.byte	0x2
	.uleb128 0x2
	.long	.LASF91
	.byte	0x3
	.uleb128 0x2
	.long	.LASF92
	.byte	0x4
	.uleb128 0x2
	.long	.LASF93
	.byte	0x5
	.uleb128 0x2
	.long	.LASF94
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.long	0x84
	.byte	0x9
	.byte	0xb5
	.byte	0x1
	.long	0x51f
	.uleb128 0x2
	.long	.LASF95
	.byte	0
	.uleb128 0x2
	.long	.LASF96
	.byte	0x1
	.uleb128 0x2
	.long	.LASF97
	.byte	0x2
	.uleb128 0x2
	.long	.LASF98
	.byte	0x3
	.uleb128 0x2
	.long	.LASF99
	.byte	0x4
	.uleb128 0x2
	.long	.LASF100
	.byte	0x5
	.uleb128 0x2
	.long	.LASF101
	.byte	0x6
	.uleb128 0x2
	.long	.LASF102
	.byte	0x7
	.uleb128 0x2
	.long	.LASF103
	.byte	0x8
	.uleb128 0x2
	.long	.LASF104
	.byte	0x9
	.uleb128 0x2
	.long	.LASF105
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	.LASF106
	.byte	0x9
	.byte	0xc5
	.byte	0x3
	.long	0x4d0
	.uleb128 0xb
	.long	0x84
	.byte	0x9
	.byte	0xca
	.byte	0x1
	.long	0x55c
	.uleb128 0x2
	.long	.LASF107
	.byte	0
	.uleb128 0x2
	.long	.LASF108
	.byte	0x1
	.uleb128 0x2
	.long	.LASF109
	.byte	0x2
	.uleb128 0x2
	.long	.LASF110
	.byte	0x3
	.uleb128 0x2
	.long	.LASF111
	.byte	0x4
	.uleb128 0x2
	.long	.LASF112
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x84
	.byte	0x9
	.byte	0xd7
	.byte	0x1
	.long	0x593
	.uleb128 0x2
	.long	.LASF113
	.byte	0
	.uleb128 0x2
	.long	.LASF114
	.byte	0x1
	.uleb128 0x2
	.long	.LASF115
	.byte	0x2
	.uleb128 0x2
	.long	.LASF116
	.byte	0x3
	.uleb128 0x2
	.long	.LASF117
	.byte	0x4
	.uleb128 0x2
	.long	.LASF118
	.byte	0x5
	.uleb128 0x2
	.long	.LASF119
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.byte	0xa
	.byte	0xa
	.byte	0xcb
	.long	0x5d9
	.uleb128 0xd
	.string	"x"
	.byte	0xa
	.byte	0xcd
	.byte	0xc
	.long	0x205
	.byte	0
	.uleb128 0xd
	.string	"y"
	.byte	0xa
	.byte	0xce
	.byte	0xc
	.long	0x205
	.byte	0x2
	.uleb128 0x3
	.long	.LASF120
	.byte	0xa
	.byte	0xcf
	.byte	0xc
	.long	0x205
	.byte	0x4
	.uleb128 0x3
	.long	.LASF15
	.byte	0xa
	.byte	0xd0
	.byte	0xc
	.long	0x205
	.byte	0x6
	.uleb128 0x3
	.long	.LASF121
	.byte	0xa
	.byte	0xd1
	.byte	0xc
	.long	0x205
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF122
	.byte	0xa
	.byte	0xd2
	.byte	0x3
	.long	0x593
	.uleb128 0x5
	.long	.LASF123
	.byte	0xb
	.byte	0x26
	.byte	0xd
	.long	0x118
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.long	.LASF124
	.uleb128 0xf
	.byte	0x8
	.byte	0x4
	.long	.LASF125
	.uleb128 0x5
	.long	.LASF126
	.byte	0xc
	.byte	0x4e
	.byte	0x12
	.long	0x84
	.uleb128 0x5
	.long	.LASF127
	.byte	0xd
	.byte	0x29
	.byte	0x11
	.long	0x617
	.uleb128 0x6
	.long	0x61c
	.uleb128 0x2f
	.long	0x623
	.uleb128 0x1a
	.byte	0
	.uleb128 0x5
	.long	.LASF128
	.byte	0xd
	.byte	0x2a
	.byte	0x11
	.long	0x62f
	.uleb128 0x6
	.long	0x634
	.uleb128 0x22
	.long	0x63f
	.uleb128 0xc
	.long	0x224
	.byte	0
	.uleb128 0x5
	.long	.LASF129
	.byte	0xd
	.byte	0x2b
	.byte	0x11
	.long	0x64b
	.uleb128 0x6
	.long	0x650
	.uleb128 0x22
	.long	0x660
	.uleb128 0xc
	.long	0x224
	.uleb128 0xc
	.long	0x224
	.byte	0
	.uleb128 0x30
	.byte	0x8
	.byte	0xd
	.byte	0x2d
	.byte	0x9
	.long	0x68a
	.uleb128 0x23
	.long	.LASF130
	.byte	0x2f
	.long	0x623
	.uleb128 0x31
	.string	"acv"
	.byte	0xd
	.byte	0x30
	.byte	0xd
	.long	0x60b
	.uleb128 0x23
	.long	.LASF131
	.byte	0x31
	.long	0x63f
	.byte	0
	.uleb128 0x5
	.long	.LASF132
	.byte	0xd
	.byte	0x33
	.byte	0x3
	.long	0x660
	.uleb128 0x5
	.long	.LASF133
	.byte	0xd
	.byte	0x3c
	.byte	0x14
	.long	0x68a
	.uleb128 0x1c
	.long	.LASF135
	.byte	0x18
	.byte	0xd
	.byte	0x40
	.byte	0x10
	.long	0x6d7
	.uleb128 0x3
	.long	.LASF136
	.byte	0xd
	.byte	0x42
	.byte	0x17
	.long	0x6d7
	.byte	0
	.uleb128 0x3
	.long	.LASF137
	.byte	0xd
	.byte	0x43
	.byte	0x17
	.long	0x6d7
	.byte	0x8
	.uleb128 0x3
	.long	.LASF138
	.byte	0xd
	.byte	0x44
	.byte	0xe
	.long	0x696
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	0x6a2
	.uleb128 0x5
	.long	.LASF139
	.byte	0xd
	.byte	0x46
	.byte	0x3
	.long	0x6a2
	.uleb128 0xb
	.long	0x84
	.byte	0xe
	.byte	0x1f
	.byte	0x1
	.long	0xa37
	.uleb128 0x2
	.long	.LASF140
	.byte	0
	.uleb128 0x2
	.long	.LASF141
	.byte	0x1
	.uleb128 0x2
	.long	.LASF142
	.byte	0x2
	.uleb128 0x2
	.long	.LASF143
	.byte	0x3
	.uleb128 0x2
	.long	.LASF144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF145
	.byte	0x5
	.uleb128 0x2
	.long	.LASF146
	.byte	0x6
	.uleb128 0x2
	.long	.LASF147
	.byte	0x7
	.uleb128 0x2
	.long	.LASF148
	.byte	0x8
	.uleb128 0x2
	.long	.LASF149
	.byte	0x9
	.uleb128 0x2
	.long	.LASF150
	.byte	0xa
	.uleb128 0x2
	.long	.LASF151
	.byte	0xb
	.uleb128 0x2
	.long	.LASF152
	.byte	0xc
	.uleb128 0x2
	.long	.LASF153
	.byte	0xd
	.uleb128 0x2
	.long	.LASF154
	.byte	0xe
	.uleb128 0x2
	.long	.LASF155
	.byte	0xf
	.uleb128 0x2
	.long	.LASF156
	.byte	0x10
	.uleb128 0x2
	.long	.LASF157
	.byte	0x11
	.uleb128 0x2
	.long	.LASF158
	.byte	0x12
	.uleb128 0x2
	.long	.LASF159
	.byte	0x13
	.uleb128 0x2
	.long	.LASF160
	.byte	0x14
	.uleb128 0x2
	.long	.LASF161
	.byte	0x15
	.uleb128 0x2
	.long	.LASF162
	.byte	0x16
	.uleb128 0x2
	.long	.LASF163
	.byte	0x17
	.uleb128 0x2
	.long	.LASF164
	.byte	0x18
	.uleb128 0x2
	.long	.LASF165
	.byte	0x19
	.uleb128 0x2
	.long	.LASF166
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF167
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF168
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF169
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF170
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF171
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF172
	.byte	0x20
	.uleb128 0x2
	.long	.LASF173
	.byte	0x21
	.uleb128 0x2
	.long	.LASF174
	.byte	0x22
	.uleb128 0x2
	.long	.LASF175
	.byte	0x23
	.uleb128 0x2
	.long	.LASF176
	.byte	0x24
	.uleb128 0x2
	.long	.LASF177
	.byte	0x25
	.uleb128 0x2
	.long	.LASF178
	.byte	0x26
	.uleb128 0x2
	.long	.LASF179
	.byte	0x27
	.uleb128 0x2
	.long	.LASF180
	.byte	0x28
	.uleb128 0x2
	.long	.LASF181
	.byte	0x29
	.uleb128 0x2
	.long	.LASF182
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF183
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF184
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF185
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF186
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF187
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF188
	.byte	0x30
	.uleb128 0x2
	.long	.LASF189
	.byte	0x31
	.uleb128 0x2
	.long	.LASF190
	.byte	0x32
	.uleb128 0x2
	.long	.LASF191
	.byte	0x33
	.uleb128 0x2
	.long	.LASF192
	.byte	0x34
	.uleb128 0x2
	.long	.LASF193
	.byte	0x35
	.uleb128 0x2
	.long	.LASF194
	.byte	0x36
	.uleb128 0x2
	.long	.LASF195
	.byte	0x37
	.uleb128 0x2
	.long	.LASF196
	.byte	0x38
	.uleb128 0x2
	.long	.LASF197
	.byte	0x39
	.uleb128 0x2
	.long	.LASF198
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF199
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF200
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF201
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF202
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF203
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF204
	.byte	0x40
	.uleb128 0x2
	.long	.LASF205
	.byte	0x41
	.uleb128 0x2
	.long	.LASF206
	.byte	0x42
	.uleb128 0x2
	.long	.LASF207
	.byte	0x43
	.uleb128 0x2
	.long	.LASF208
	.byte	0x44
	.uleb128 0x2
	.long	.LASF209
	.byte	0x45
	.uleb128 0x2
	.long	.LASF210
	.byte	0x46
	.uleb128 0x2
	.long	.LASF211
	.byte	0x47
	.uleb128 0x2
	.long	.LASF212
	.byte	0x48
	.uleb128 0x2
	.long	.LASF213
	.byte	0x49
	.uleb128 0x2
	.long	.LASF214
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF215
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF216
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF217
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF218
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF219
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF220
	.byte	0x50
	.uleb128 0x2
	.long	.LASF221
	.byte	0x51
	.uleb128 0x2
	.long	.LASF222
	.byte	0x52
	.uleb128 0x2
	.long	.LASF223
	.byte	0x53
	.uleb128 0x2
	.long	.LASF224
	.byte	0x54
	.uleb128 0x2
	.long	.LASF225
	.byte	0x55
	.uleb128 0x2
	.long	.LASF226
	.byte	0x56
	.uleb128 0x2
	.long	.LASF227
	.byte	0x57
	.uleb128 0x2
	.long	.LASF228
	.byte	0x58
	.uleb128 0x2
	.long	.LASF229
	.byte	0x59
	.uleb128 0x2
	.long	.LASF230
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF231
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF232
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF233
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF234
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF235
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF236
	.byte	0x60
	.uleb128 0x2
	.long	.LASF237
	.byte	0x61
	.uleb128 0x2
	.long	.LASF238
	.byte	0x62
	.uleb128 0x2
	.long	.LASF239
	.byte	0x63
	.uleb128 0x2
	.long	.LASF240
	.byte	0x64
	.uleb128 0x2
	.long	.LASF241
	.byte	0x65
	.uleb128 0x2
	.long	.LASF242
	.byte	0x66
	.uleb128 0x2
	.long	.LASF243
	.byte	0x67
	.uleb128 0x2
	.long	.LASF244
	.byte	0x68
	.uleb128 0x2
	.long	.LASF245
	.byte	0x69
	.uleb128 0x2
	.long	.LASF246
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF247
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF248
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF249
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF250
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF251
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF252
	.byte	0x70
	.uleb128 0x2
	.long	.LASF253
	.byte	0x71
	.uleb128 0x2
	.long	.LASF254
	.byte	0x72
	.uleb128 0x2
	.long	.LASF255
	.byte	0x73
	.uleb128 0x2
	.long	.LASF256
	.byte	0x74
	.uleb128 0x2
	.long	.LASF257
	.byte	0x75
	.uleb128 0x2
	.long	.LASF258
	.byte	0x76
	.uleb128 0x2
	.long	.LASF259
	.byte	0x77
	.uleb128 0x2
	.long	.LASF260
	.byte	0x78
	.uleb128 0x2
	.long	.LASF261
	.byte	0x79
	.uleb128 0x2
	.long	.LASF262
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF263
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF264
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF265
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF266
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF267
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF268
	.byte	0x80
	.uleb128 0x2
	.long	.LASF269
	.byte	0x81
	.uleb128 0x2
	.long	.LASF270
	.byte	0x82
	.uleb128 0x2
	.long	.LASF271
	.byte	0x83
	.uleb128 0x2
	.long	.LASF272
	.byte	0x84
	.uleb128 0x2
	.long	.LASF273
	.byte	0x85
	.uleb128 0x2
	.long	.LASF274
	.byte	0x86
	.uleb128 0x2
	.long	.LASF275
	.byte	0x87
	.uleb128 0x2
	.long	.LASF276
	.byte	0x88
	.uleb128 0x2
	.long	.LASF277
	.byte	0x89
	.uleb128 0x2
	.long	.LASF278
	.byte	0x8a
	.byte	0
	.uleb128 0x5
	.long	.LASF279
	.byte	0xe
	.byte	0xac
	.byte	0x3
	.long	0x6e8
	.uleb128 0xb
	.long	0x84
	.byte	0xe
	.byte	0xaf
	.byte	0x1
	.long	0x23c8
	.uleb128 0x2
	.long	.LASF280
	.byte	0
	.uleb128 0x2
	.long	.LASF281
	.byte	0x1
	.uleb128 0x2
	.long	.LASF282
	.byte	0x2
	.uleb128 0x2
	.long	.LASF283
	.byte	0x3
	.uleb128 0x2
	.long	.LASF284
	.byte	0x4
	.uleb128 0x2
	.long	.LASF285
	.byte	0x5
	.uleb128 0x2
	.long	.LASF286
	.byte	0x6
	.uleb128 0x2
	.long	.LASF287
	.byte	0x7
	.uleb128 0x2
	.long	.LASF288
	.byte	0x8
	.uleb128 0x2
	.long	.LASF289
	.byte	0x9
	.uleb128 0x2
	.long	.LASF290
	.byte	0xa
	.uleb128 0x2
	.long	.LASF291
	.byte	0xb
	.uleb128 0x2
	.long	.LASF292
	.byte	0xc
	.uleb128 0x2
	.long	.LASF293
	.byte	0xd
	.uleb128 0x2
	.long	.LASF294
	.byte	0xe
	.uleb128 0x2
	.long	.LASF295
	.byte	0xf
	.uleb128 0x2
	.long	.LASF296
	.byte	0x10
	.uleb128 0x2
	.long	.LASF297
	.byte	0x11
	.uleb128 0x2
	.long	.LASF298
	.byte	0x12
	.uleb128 0x2
	.long	.LASF299
	.byte	0x13
	.uleb128 0x2
	.long	.LASF300
	.byte	0x14
	.uleb128 0x2
	.long	.LASF301
	.byte	0x15
	.uleb128 0x2
	.long	.LASF302
	.byte	0x16
	.uleb128 0x2
	.long	.LASF303
	.byte	0x17
	.uleb128 0x2
	.long	.LASF304
	.byte	0x18
	.uleb128 0x2
	.long	.LASF305
	.byte	0x19
	.uleb128 0x2
	.long	.LASF306
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF307
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF308
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF309
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF310
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF311
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF312
	.byte	0x20
	.uleb128 0x2
	.long	.LASF313
	.byte	0x21
	.uleb128 0x2
	.long	.LASF314
	.byte	0x22
	.uleb128 0x2
	.long	.LASF315
	.byte	0x23
	.uleb128 0x2
	.long	.LASF316
	.byte	0x24
	.uleb128 0x2
	.long	.LASF317
	.byte	0x25
	.uleb128 0x2
	.long	.LASF318
	.byte	0x26
	.uleb128 0x2
	.long	.LASF319
	.byte	0x27
	.uleb128 0x2
	.long	.LASF320
	.byte	0x28
	.uleb128 0x2
	.long	.LASF321
	.byte	0x29
	.uleb128 0x2
	.long	.LASF322
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF323
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF324
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF325
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF326
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF327
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF328
	.byte	0x30
	.uleb128 0x2
	.long	.LASF329
	.byte	0x31
	.uleb128 0x2
	.long	.LASF330
	.byte	0x32
	.uleb128 0x2
	.long	.LASF331
	.byte	0x33
	.uleb128 0x2
	.long	.LASF332
	.byte	0x34
	.uleb128 0x2
	.long	.LASF333
	.byte	0x35
	.uleb128 0x2
	.long	.LASF334
	.byte	0x36
	.uleb128 0x2
	.long	.LASF335
	.byte	0x37
	.uleb128 0x2
	.long	.LASF336
	.byte	0x38
	.uleb128 0x2
	.long	.LASF337
	.byte	0x39
	.uleb128 0x2
	.long	.LASF338
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF339
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF340
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF341
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF342
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF343
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF344
	.byte	0x40
	.uleb128 0x2
	.long	.LASF345
	.byte	0x41
	.uleb128 0x2
	.long	.LASF346
	.byte	0x42
	.uleb128 0x2
	.long	.LASF347
	.byte	0x43
	.uleb128 0x2
	.long	.LASF348
	.byte	0x44
	.uleb128 0x2
	.long	.LASF349
	.byte	0x45
	.uleb128 0x2
	.long	.LASF350
	.byte	0x46
	.uleb128 0x2
	.long	.LASF351
	.byte	0x47
	.uleb128 0x2
	.long	.LASF352
	.byte	0x48
	.uleb128 0x2
	.long	.LASF353
	.byte	0x49
	.uleb128 0x2
	.long	.LASF354
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF355
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF356
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF357
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF358
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF359
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF360
	.byte	0x50
	.uleb128 0x2
	.long	.LASF361
	.byte	0x51
	.uleb128 0x2
	.long	.LASF362
	.byte	0x52
	.uleb128 0x2
	.long	.LASF363
	.byte	0x53
	.uleb128 0x2
	.long	.LASF364
	.byte	0x54
	.uleb128 0x2
	.long	.LASF365
	.byte	0x55
	.uleb128 0x2
	.long	.LASF366
	.byte	0x56
	.uleb128 0x2
	.long	.LASF367
	.byte	0x57
	.uleb128 0x2
	.long	.LASF368
	.byte	0x58
	.uleb128 0x2
	.long	.LASF369
	.byte	0x59
	.uleb128 0x2
	.long	.LASF370
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF371
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF372
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF373
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF374
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF375
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF376
	.byte	0x60
	.uleb128 0x2
	.long	.LASF377
	.byte	0x61
	.uleb128 0x2
	.long	.LASF378
	.byte	0x62
	.uleb128 0x2
	.long	.LASF379
	.byte	0x63
	.uleb128 0x2
	.long	.LASF380
	.byte	0x64
	.uleb128 0x2
	.long	.LASF381
	.byte	0x65
	.uleb128 0x2
	.long	.LASF382
	.byte	0x66
	.uleb128 0x2
	.long	.LASF383
	.byte	0x67
	.uleb128 0x2
	.long	.LASF384
	.byte	0x68
	.uleb128 0x2
	.long	.LASF385
	.byte	0x69
	.uleb128 0x2
	.long	.LASF386
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF387
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF388
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF389
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF390
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF391
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF392
	.byte	0x70
	.uleb128 0x2
	.long	.LASF393
	.byte	0x71
	.uleb128 0x2
	.long	.LASF394
	.byte	0x72
	.uleb128 0x2
	.long	.LASF395
	.byte	0x73
	.uleb128 0x2
	.long	.LASF396
	.byte	0x74
	.uleb128 0x2
	.long	.LASF397
	.byte	0x75
	.uleb128 0x2
	.long	.LASF398
	.byte	0x76
	.uleb128 0x2
	.long	.LASF399
	.byte	0x77
	.uleb128 0x2
	.long	.LASF400
	.byte	0x78
	.uleb128 0x2
	.long	.LASF401
	.byte	0x79
	.uleb128 0x2
	.long	.LASF402
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF403
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF404
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF405
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF406
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF407
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF408
	.byte	0x80
	.uleb128 0x2
	.long	.LASF409
	.byte	0x81
	.uleb128 0x2
	.long	.LASF410
	.byte	0x82
	.uleb128 0x2
	.long	.LASF411
	.byte	0x83
	.uleb128 0x2
	.long	.LASF412
	.byte	0x84
	.uleb128 0x2
	.long	.LASF413
	.byte	0x85
	.uleb128 0x2
	.long	.LASF414
	.byte	0x86
	.uleb128 0x2
	.long	.LASF415
	.byte	0x87
	.uleb128 0x2
	.long	.LASF416
	.byte	0x88
	.uleb128 0x2
	.long	.LASF417
	.byte	0x89
	.uleb128 0x2
	.long	.LASF418
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF419
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF420
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF421
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF422
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF423
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF424
	.byte	0x90
	.uleb128 0x2
	.long	.LASF425
	.byte	0x91
	.uleb128 0x2
	.long	.LASF426
	.byte	0x92
	.uleb128 0x2
	.long	.LASF427
	.byte	0x93
	.uleb128 0x2
	.long	.LASF428
	.byte	0x94
	.uleb128 0x2
	.long	.LASF429
	.byte	0x95
	.uleb128 0x2
	.long	.LASF430
	.byte	0x96
	.uleb128 0x2
	.long	.LASF431
	.byte	0x97
	.uleb128 0x2
	.long	.LASF432
	.byte	0x98
	.uleb128 0x2
	.long	.LASF433
	.byte	0x99
	.uleb128 0x2
	.long	.LASF434
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF435
	.byte	0x9b
	.uleb128 0x2
	.long	.LASF436
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF437
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF438
	.byte	0x9e
	.uleb128 0x2
	.long	.LASF439
	.byte	0x9f
	.uleb128 0x2
	.long	.LASF440
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF441
	.byte	0xa1
	.uleb128 0x2
	.long	.LASF442
	.byte	0xa2
	.uleb128 0x2
	.long	.LASF443
	.byte	0xa3
	.uleb128 0x2
	.long	.LASF444
	.byte	0xa4
	.uleb128 0x2
	.long	.LASF445
	.byte	0xa5
	.uleb128 0x2
	.long	.LASF446
	.byte	0xa6
	.uleb128 0x2
	.long	.LASF447
	.byte	0xa7
	.uleb128 0x2
	.long	.LASF448
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF449
	.byte	0xa9
	.uleb128 0x2
	.long	.LASF450
	.byte	0xaa
	.uleb128 0x2
	.long	.LASF451
	.byte	0xab
	.uleb128 0x2
	.long	.LASF452
	.byte	0xac
	.uleb128 0x2
	.long	.LASF453
	.byte	0xad
	.uleb128 0x2
	.long	.LASF454
	.byte	0xae
	.uleb128 0x2
	.long	.LASF455
	.byte	0xaf
	.uleb128 0x2
	.long	.LASF456
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF457
	.byte	0xb1
	.uleb128 0x2
	.long	.LASF458
	.byte	0xb2
	.uleb128 0x2
	.long	.LASF459
	.byte	0xb3
	.uleb128 0x2
	.long	.LASF460
	.byte	0xb4
	.uleb128 0x2
	.long	.LASF461
	.byte	0xb5
	.uleb128 0x2
	.long	.LASF462
	.byte	0xb6
	.uleb128 0x2
	.long	.LASF463
	.byte	0xb7
	.uleb128 0x2
	.long	.LASF464
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF465
	.byte	0xb9
	.uleb128 0x2
	.long	.LASF466
	.byte	0xba
	.uleb128 0x2
	.long	.LASF467
	.byte	0xbb
	.uleb128 0x2
	.long	.LASF468
	.byte	0xbc
	.uleb128 0x2
	.long	.LASF469
	.byte	0xbd
	.uleb128 0x2
	.long	.LASF470
	.byte	0xbe
	.uleb128 0x2
	.long	.LASF471
	.byte	0xbf
	.uleb128 0x2
	.long	.LASF472
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF473
	.byte	0xc1
	.uleb128 0x2
	.long	.LASF474
	.byte	0xc2
	.uleb128 0x2
	.long	.LASF475
	.byte	0xc3
	.uleb128 0x2
	.long	.LASF476
	.byte	0xc4
	.uleb128 0x2
	.long	.LASF477
	.byte	0xc5
	.uleb128 0x2
	.long	.LASF478
	.byte	0xc6
	.uleb128 0x2
	.long	.LASF479
	.byte	0xc7
	.uleb128 0x2
	.long	.LASF480
	.byte	0xc8
	.uleb128 0x2
	.long	.LASF481
	.byte	0xc9
	.uleb128 0x2
	.long	.LASF482
	.byte	0xca
	.uleb128 0x2
	.long	.LASF483
	.byte	0xcb
	.uleb128 0x2
	.long	.LASF484
	.byte	0xcc
	.uleb128 0x2
	.long	.LASF485
	.byte	0xcd
	.uleb128 0x2
	.long	.LASF486
	.byte	0xce
	.uleb128 0x2
	.long	.LASF487
	.byte	0xcf
	.uleb128 0x2
	.long	.LASF488
	.byte	0xd0
	.uleb128 0x2
	.long	.LASF489
	.byte	0xd1
	.uleb128 0x2
	.long	.LASF490
	.byte	0xd2
	.uleb128 0x2
	.long	.LASF491
	.byte	0xd3
	.uleb128 0x2
	.long	.LASF492
	.byte	0xd4
	.uleb128 0x2
	.long	.LASF493
	.byte	0xd5
	.uleb128 0x2
	.long	.LASF494
	.byte	0xd6
	.uleb128 0x2
	.long	.LASF495
	.byte	0xd7
	.uleb128 0x2
	.long	.LASF496
	.byte	0xd8
	.uleb128 0x2
	.long	.LASF497
	.byte	0xd9
	.uleb128 0x2
	.long	.LASF498
	.byte	0xda
	.uleb128 0x2
	.long	.LASF499
	.byte	0xdb
	.uleb128 0x2
	.long	.LASF500
	.byte	0xdc
	.uleb128 0x2
	.long	.LASF501
	.byte	0xdd
	.uleb128 0x2
	.long	.LASF502
	.byte	0xde
	.uleb128 0x2
	.long	.LASF503
	.byte	0xdf
	.uleb128 0x2
	.long	.LASF504
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF505
	.byte	0xe1
	.uleb128 0x2
	.long	.LASF506
	.byte	0xe2
	.uleb128 0x2
	.long	.LASF507
	.byte	0xe3
	.uleb128 0x2
	.long	.LASF508
	.byte	0xe4
	.uleb128 0x2
	.long	.LASF509
	.byte	0xe5
	.uleb128 0x2
	.long	.LASF510
	.byte	0xe6
	.uleb128 0x2
	.long	.LASF511
	.byte	0xe7
	.uleb128 0x2
	.long	.LASF512
	.byte	0xe8
	.uleb128 0x2
	.long	.LASF513
	.byte	0xe9
	.uleb128 0x2
	.long	.LASF514
	.byte	0xea
	.uleb128 0x2
	.long	.LASF515
	.byte	0xeb
	.uleb128 0x2
	.long	.LASF516
	.byte	0xec
	.uleb128 0x2
	.long	.LASF517
	.byte	0xed
	.uleb128 0x2
	.long	.LASF518
	.byte	0xee
	.uleb128 0x2
	.long	.LASF519
	.byte	0xef
	.uleb128 0x2
	.long	.LASF520
	.byte	0xf0
	.uleb128 0x2
	.long	.LASF521
	.byte	0xf1
	.uleb128 0x2
	.long	.LASF522
	.byte	0xf2
	.uleb128 0x2
	.long	.LASF523
	.byte	0xf3
	.uleb128 0x2
	.long	.LASF524
	.byte	0xf4
	.uleb128 0x2
	.long	.LASF525
	.byte	0xf5
	.uleb128 0x2
	.long	.LASF526
	.byte	0xf6
	.uleb128 0x2
	.long	.LASF527
	.byte	0xf7
	.uleb128 0x2
	.long	.LASF528
	.byte	0xf8
	.uleb128 0x2
	.long	.LASF529
	.byte	0xf9
	.uleb128 0x2
	.long	.LASF530
	.byte	0xfa
	.uleb128 0x2
	.long	.LASF531
	.byte	0xfb
	.uleb128 0x2
	.long	.LASF532
	.byte	0xfc
	.uleb128 0x2
	.long	.LASF533
	.byte	0xfd
	.uleb128 0x2
	.long	.LASF534
	.byte	0xfe
	.uleb128 0x2
	.long	.LASF535
	.byte	0xff
	.uleb128 0x1
	.long	.LASF536
	.value	0x100
	.uleb128 0x1
	.long	.LASF537
	.value	0x101
	.uleb128 0x1
	.long	.LASF538
	.value	0x102
	.uleb128 0x1
	.long	.LASF539
	.value	0x103
	.uleb128 0x1
	.long	.LASF540
	.value	0x104
	.uleb128 0x1
	.long	.LASF541
	.value	0x105
	.uleb128 0x1
	.long	.LASF542
	.value	0x106
	.uleb128 0x1
	.long	.LASF543
	.value	0x107
	.uleb128 0x1
	.long	.LASF544
	.value	0x108
	.uleb128 0x1
	.long	.LASF545
	.value	0x109
	.uleb128 0x1
	.long	.LASF546
	.value	0x10a
	.uleb128 0x1
	.long	.LASF547
	.value	0x10b
	.uleb128 0x1
	.long	.LASF548
	.value	0x10c
	.uleb128 0x1
	.long	.LASF549
	.value	0x10d
	.uleb128 0x1
	.long	.LASF550
	.value	0x10e
	.uleb128 0x1
	.long	.LASF551
	.value	0x10f
	.uleb128 0x1
	.long	.LASF552
	.value	0x110
	.uleb128 0x1
	.long	.LASF553
	.value	0x111
	.uleb128 0x1
	.long	.LASF554
	.value	0x112
	.uleb128 0x1
	.long	.LASF555
	.value	0x113
	.uleb128 0x1
	.long	.LASF556
	.value	0x114
	.uleb128 0x1
	.long	.LASF557
	.value	0x115
	.uleb128 0x1
	.long	.LASF558
	.value	0x116
	.uleb128 0x1
	.long	.LASF559
	.value	0x117
	.uleb128 0x1
	.long	.LASF560
	.value	0x118
	.uleb128 0x1
	.long	.LASF561
	.value	0x119
	.uleb128 0x1
	.long	.LASF562
	.value	0x11a
	.uleb128 0x1
	.long	.LASF563
	.value	0x11b
	.uleb128 0x1
	.long	.LASF564
	.value	0x11c
	.uleb128 0x1
	.long	.LASF565
	.value	0x11d
	.uleb128 0x1
	.long	.LASF566
	.value	0x11e
	.uleb128 0x1
	.long	.LASF567
	.value	0x11f
	.uleb128 0x1
	.long	.LASF568
	.value	0x120
	.uleb128 0x1
	.long	.LASF569
	.value	0x121
	.uleb128 0x1
	.long	.LASF570
	.value	0x122
	.uleb128 0x1
	.long	.LASF571
	.value	0x123
	.uleb128 0x1
	.long	.LASF572
	.value	0x124
	.uleb128 0x1
	.long	.LASF573
	.value	0x125
	.uleb128 0x1
	.long	.LASF574
	.value	0x126
	.uleb128 0x1
	.long	.LASF575
	.value	0x127
	.uleb128 0x1
	.long	.LASF576
	.value	0x128
	.uleb128 0x1
	.long	.LASF577
	.value	0x129
	.uleb128 0x1
	.long	.LASF578
	.value	0x12a
	.uleb128 0x1
	.long	.LASF579
	.value	0x12b
	.uleb128 0x1
	.long	.LASF580
	.value	0x12c
	.uleb128 0x1
	.long	.LASF581
	.value	0x12d
	.uleb128 0x1
	.long	.LASF582
	.value	0x12e
	.uleb128 0x1
	.long	.LASF583
	.value	0x12f
	.uleb128 0x1
	.long	.LASF584
	.value	0x130
	.uleb128 0x1
	.long	.LASF585
	.value	0x131
	.uleb128 0x1
	.long	.LASF586
	.value	0x132
	.uleb128 0x1
	.long	.LASF587
	.value	0x133
	.uleb128 0x1
	.long	.LASF588
	.value	0x134
	.uleb128 0x1
	.long	.LASF589
	.value	0x135
	.uleb128 0x1
	.long	.LASF590
	.value	0x136
	.uleb128 0x1
	.long	.LASF591
	.value	0x137
	.uleb128 0x1
	.long	.LASF592
	.value	0x138
	.uleb128 0x1
	.long	.LASF593
	.value	0x139
	.uleb128 0x1
	.long	.LASF594
	.value	0x13a
	.uleb128 0x1
	.long	.LASF595
	.value	0x13b
	.uleb128 0x1
	.long	.LASF596
	.value	0x13c
	.uleb128 0x1
	.long	.LASF597
	.value	0x13d
	.uleb128 0x1
	.long	.LASF598
	.value	0x13e
	.uleb128 0x1
	.long	.LASF599
	.value	0x13f
	.uleb128 0x1
	.long	.LASF600
	.value	0x140
	.uleb128 0x1
	.long	.LASF601
	.value	0x141
	.uleb128 0x1
	.long	.LASF602
	.value	0x142
	.uleb128 0x1
	.long	.LASF603
	.value	0x143
	.uleb128 0x1
	.long	.LASF604
	.value	0x144
	.uleb128 0x1
	.long	.LASF605
	.value	0x145
	.uleb128 0x1
	.long	.LASF606
	.value	0x146
	.uleb128 0x1
	.long	.LASF607
	.value	0x147
	.uleb128 0x1
	.long	.LASF608
	.value	0x148
	.uleb128 0x1
	.long	.LASF609
	.value	0x149
	.uleb128 0x1
	.long	.LASF610
	.value	0x14a
	.uleb128 0x1
	.long	.LASF611
	.value	0x14b
	.uleb128 0x1
	.long	.LASF612
	.value	0x14c
	.uleb128 0x1
	.long	.LASF613
	.value	0x14d
	.uleb128 0x1
	.long	.LASF614
	.value	0x14e
	.uleb128 0x1
	.long	.LASF615
	.value	0x14f
	.uleb128 0x1
	.long	.LASF616
	.value	0x150
	.uleb128 0x1
	.long	.LASF617
	.value	0x151
	.uleb128 0x1
	.long	.LASF618
	.value	0x152
	.uleb128 0x1
	.long	.LASF619
	.value	0x153
	.uleb128 0x1
	.long	.LASF620
	.value	0x154
	.uleb128 0x1
	.long	.LASF621
	.value	0x155
	.uleb128 0x1
	.long	.LASF622
	.value	0x156
	.uleb128 0x1
	.long	.LASF623
	.value	0x157
	.uleb128 0x1
	.long	.LASF624
	.value	0x158
	.uleb128 0x1
	.long	.LASF625
	.value	0x159
	.uleb128 0x1
	.long	.LASF626
	.value	0x15a
	.uleb128 0x1
	.long	.LASF627
	.value	0x15b
	.uleb128 0x1
	.long	.LASF628
	.value	0x15c
	.uleb128 0x1
	.long	.LASF629
	.value	0x15d
	.uleb128 0x1
	.long	.LASF630
	.value	0x15e
	.uleb128 0x1
	.long	.LASF631
	.value	0x15f
	.uleb128 0x1
	.long	.LASF632
	.value	0x160
	.uleb128 0x1
	.long	.LASF633
	.value	0x161
	.uleb128 0x1
	.long	.LASF634
	.value	0x162
	.uleb128 0x1
	.long	.LASF635
	.value	0x163
	.uleb128 0x1
	.long	.LASF636
	.value	0x164
	.uleb128 0x1
	.long	.LASF637
	.value	0x165
	.uleb128 0x1
	.long	.LASF638
	.value	0x166
	.uleb128 0x1
	.long	.LASF639
	.value	0x167
	.uleb128 0x1
	.long	.LASF640
	.value	0x168
	.uleb128 0x1
	.long	.LASF641
	.value	0x169
	.uleb128 0x1
	.long	.LASF642
	.value	0x16a
	.uleb128 0x1
	.long	.LASF643
	.value	0x16b
	.uleb128 0x1
	.long	.LASF644
	.value	0x16c
	.uleb128 0x1
	.long	.LASF645
	.value	0x16d
	.uleb128 0x1
	.long	.LASF646
	.value	0x16e
	.uleb128 0x1
	.long	.LASF647
	.value	0x16f
	.uleb128 0x1
	.long	.LASF648
	.value	0x170
	.uleb128 0x1
	.long	.LASF649
	.value	0x171
	.uleb128 0x1
	.long	.LASF650
	.value	0x172
	.uleb128 0x1
	.long	.LASF651
	.value	0x173
	.uleb128 0x1
	.long	.LASF652
	.value	0x174
	.uleb128 0x1
	.long	.LASF653
	.value	0x175
	.uleb128 0x1
	.long	.LASF654
	.value	0x176
	.uleb128 0x1
	.long	.LASF655
	.value	0x177
	.uleb128 0x1
	.long	.LASF656
	.value	0x178
	.uleb128 0x1
	.long	.LASF657
	.value	0x179
	.uleb128 0x1
	.long	.LASF658
	.value	0x17a
	.uleb128 0x1
	.long	.LASF659
	.value	0x17b
	.uleb128 0x1
	.long	.LASF660
	.value	0x17c
	.uleb128 0x1
	.long	.LASF661
	.value	0x17d
	.uleb128 0x1
	.long	.LASF662
	.value	0x17e
	.uleb128 0x1
	.long	.LASF663
	.value	0x17f
	.uleb128 0x1
	.long	.LASF664
	.value	0x180
	.uleb128 0x1
	.long	.LASF665
	.value	0x181
	.uleb128 0x1
	.long	.LASF666
	.value	0x182
	.uleb128 0x1
	.long	.LASF667
	.value	0x183
	.uleb128 0x1
	.long	.LASF668
	.value	0x184
	.uleb128 0x1
	.long	.LASF669
	.value	0x185
	.uleb128 0x1
	.long	.LASF670
	.value	0x186
	.uleb128 0x1
	.long	.LASF671
	.value	0x187
	.uleb128 0x1
	.long	.LASF672
	.value	0x188
	.uleb128 0x1
	.long	.LASF673
	.value	0x189
	.uleb128 0x1
	.long	.LASF674
	.value	0x18a
	.uleb128 0x1
	.long	.LASF675
	.value	0x18b
	.uleb128 0x1
	.long	.LASF676
	.value	0x18c
	.uleb128 0x1
	.long	.LASF677
	.value	0x18d
	.uleb128 0x1
	.long	.LASF678
	.value	0x18e
	.uleb128 0x1
	.long	.LASF679
	.value	0x18f
	.uleb128 0x1
	.long	.LASF680
	.value	0x190
	.uleb128 0x1
	.long	.LASF681
	.value	0x191
	.uleb128 0x1
	.long	.LASF682
	.value	0x192
	.uleb128 0x1
	.long	.LASF683
	.value	0x193
	.uleb128 0x1
	.long	.LASF684
	.value	0x194
	.uleb128 0x1
	.long	.LASF685
	.value	0x195
	.uleb128 0x1
	.long	.LASF686
	.value	0x196
	.uleb128 0x1
	.long	.LASF687
	.value	0x197
	.uleb128 0x1
	.long	.LASF688
	.value	0x198
	.uleb128 0x1
	.long	.LASF689
	.value	0x199
	.uleb128 0x1
	.long	.LASF690
	.value	0x19a
	.uleb128 0x1
	.long	.LASF691
	.value	0x19b
	.uleb128 0x1
	.long	.LASF692
	.value	0x19c
	.uleb128 0x1
	.long	.LASF693
	.value	0x19d
	.uleb128 0x1
	.long	.LASF694
	.value	0x19e
	.uleb128 0x1
	.long	.LASF695
	.value	0x19f
	.uleb128 0x1
	.long	.LASF696
	.value	0x1a0
	.uleb128 0x1
	.long	.LASF697
	.value	0x1a1
	.uleb128 0x1
	.long	.LASF698
	.value	0x1a2
	.uleb128 0x1
	.long	.LASF699
	.value	0x1a3
	.uleb128 0x1
	.long	.LASF700
	.value	0x1a4
	.uleb128 0x1
	.long	.LASF701
	.value	0x1a5
	.uleb128 0x1
	.long	.LASF702
	.value	0x1a6
	.uleb128 0x1
	.long	.LASF703
	.value	0x1a7
	.uleb128 0x1
	.long	.LASF704
	.value	0x1a8
	.uleb128 0x1
	.long	.LASF705
	.value	0x1a9
	.uleb128 0x1
	.long	.LASF706
	.value	0x1aa
	.uleb128 0x1
	.long	.LASF707
	.value	0x1ab
	.uleb128 0x1
	.long	.LASF708
	.value	0x1ac
	.uleb128 0x1
	.long	.LASF709
	.value	0x1ad
	.uleb128 0x1
	.long	.LASF710
	.value	0x1ae
	.uleb128 0x1
	.long	.LASF711
	.value	0x1af
	.uleb128 0x1
	.long	.LASF712
	.value	0x1b0
	.uleb128 0x1
	.long	.LASF713
	.value	0x1b1
	.uleb128 0x1
	.long	.LASF714
	.value	0x1b2
	.uleb128 0x1
	.long	.LASF715
	.value	0x1b3
	.uleb128 0x1
	.long	.LASF716
	.value	0x1b4
	.uleb128 0x1
	.long	.LASF717
	.value	0x1b5
	.uleb128 0x1
	.long	.LASF718
	.value	0x1b6
	.uleb128 0x1
	.long	.LASF719
	.value	0x1b7
	.uleb128 0x1
	.long	.LASF720
	.value	0x1b8
	.uleb128 0x1
	.long	.LASF721
	.value	0x1b9
	.uleb128 0x1
	.long	.LASF722
	.value	0x1ba
	.uleb128 0x1
	.long	.LASF723
	.value	0x1bb
	.uleb128 0x1
	.long	.LASF724
	.value	0x1bc
	.uleb128 0x1
	.long	.LASF725
	.value	0x1bd
	.uleb128 0x1
	.long	.LASF726
	.value	0x1be
	.uleb128 0x1
	.long	.LASF727
	.value	0x1bf
	.uleb128 0x1
	.long	.LASF728
	.value	0x1c0
	.uleb128 0x1
	.long	.LASF729
	.value	0x1c1
	.uleb128 0x1
	.long	.LASF730
	.value	0x1c2
	.uleb128 0x1
	.long	.LASF731
	.value	0x1c3
	.uleb128 0x1
	.long	.LASF732
	.value	0x1c4
	.uleb128 0x1
	.long	.LASF733
	.value	0x1c5
	.uleb128 0x1
	.long	.LASF734
	.value	0x1c6
	.uleb128 0x1
	.long	.LASF735
	.value	0x1c7
	.uleb128 0x1
	.long	.LASF736
	.value	0x1c8
	.uleb128 0x1
	.long	.LASF737
	.value	0x1c9
	.uleb128 0x1
	.long	.LASF738
	.value	0x1ca
	.uleb128 0x1
	.long	.LASF739
	.value	0x1cb
	.uleb128 0x1
	.long	.LASF740
	.value	0x1cc
	.uleb128 0x1
	.long	.LASF741
	.value	0x1cd
	.uleb128 0x1
	.long	.LASF742
	.value	0x1ce
	.uleb128 0x1
	.long	.LASF743
	.value	0x1cf
	.uleb128 0x1
	.long	.LASF744
	.value	0x1d0
	.uleb128 0x1
	.long	.LASF745
	.value	0x1d1
	.uleb128 0x1
	.long	.LASF746
	.value	0x1d2
	.uleb128 0x1
	.long	.LASF747
	.value	0x1d3
	.uleb128 0x1
	.long	.LASF748
	.value	0x1d4
	.uleb128 0x1
	.long	.LASF749
	.value	0x1d5
	.uleb128 0x1
	.long	.LASF750
	.value	0x1d6
	.uleb128 0x1
	.long	.LASF751
	.value	0x1d7
	.uleb128 0x1
	.long	.LASF752
	.value	0x1d8
	.uleb128 0x1
	.long	.LASF753
	.value	0x1d9
	.uleb128 0x1
	.long	.LASF754
	.value	0x1da
	.uleb128 0x1
	.long	.LASF755
	.value	0x1db
	.uleb128 0x1
	.long	.LASF756
	.value	0x1dc
	.uleb128 0x1
	.long	.LASF757
	.value	0x1dd
	.uleb128 0x1
	.long	.LASF758
	.value	0x1de
	.uleb128 0x1
	.long	.LASF759
	.value	0x1df
	.uleb128 0x1
	.long	.LASF760
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF761
	.value	0x1e1
	.uleb128 0x1
	.long	.LASF762
	.value	0x1e2
	.uleb128 0x1
	.long	.LASF763
	.value	0x1e3
	.uleb128 0x1
	.long	.LASF764
	.value	0x1e4
	.uleb128 0x1
	.long	.LASF765
	.value	0x1e5
	.uleb128 0x1
	.long	.LASF766
	.value	0x1e6
	.uleb128 0x1
	.long	.LASF767
	.value	0x1e7
	.uleb128 0x1
	.long	.LASF768
	.value	0x1e8
	.uleb128 0x1
	.long	.LASF769
	.value	0x1e9
	.uleb128 0x1
	.long	.LASF770
	.value	0x1ea
	.uleb128 0x1
	.long	.LASF771
	.value	0x1eb
	.uleb128 0x1
	.long	.LASF772
	.value	0x1ec
	.uleb128 0x1
	.long	.LASF773
	.value	0x1ed
	.uleb128 0x1
	.long	.LASF774
	.value	0x1ee
	.uleb128 0x1
	.long	.LASF775
	.value	0x1ef
	.uleb128 0x1
	.long	.LASF776
	.value	0x1f0
	.uleb128 0x1
	.long	.LASF777
	.value	0x1f1
	.uleb128 0x1
	.long	.LASF778
	.value	0x1f2
	.uleb128 0x1
	.long	.LASF779
	.value	0x1f3
	.uleb128 0x1
	.long	.LASF780
	.value	0x1f4
	.uleb128 0x1
	.long	.LASF781
	.value	0x1f5
	.uleb128 0x1
	.long	.LASF782
	.value	0x1f6
	.uleb128 0x1
	.long	.LASF783
	.value	0x1f7
	.uleb128 0x1
	.long	.LASF784
	.value	0x1f8
	.uleb128 0x1
	.long	.LASF785
	.value	0x1f9
	.uleb128 0x1
	.long	.LASF786
	.value	0x1fa
	.uleb128 0x1
	.long	.LASF787
	.value	0x1fb
	.uleb128 0x1
	.long	.LASF788
	.value	0x1fc
	.uleb128 0x1
	.long	.LASF789
	.value	0x1fd
	.uleb128 0x1
	.long	.LASF790
	.value	0x1fe
	.uleb128 0x1
	.long	.LASF791
	.value	0x1ff
	.uleb128 0x1
	.long	.LASF792
	.value	0x200
	.uleb128 0x1
	.long	.LASF793
	.value	0x201
	.uleb128 0x1
	.long	.LASF794
	.value	0x202
	.uleb128 0x1
	.long	.LASF795
	.value	0x203
	.uleb128 0x1
	.long	.LASF796
	.value	0x204
	.uleb128 0x1
	.long	.LASF797
	.value	0x205
	.uleb128 0x1
	.long	.LASF798
	.value	0x206
	.uleb128 0x1
	.long	.LASF799
	.value	0x207
	.uleb128 0x1
	.long	.LASF800
	.value	0x208
	.uleb128 0x1
	.long	.LASF801
	.value	0x209
	.uleb128 0x1
	.long	.LASF802
	.value	0x20a
	.uleb128 0x1
	.long	.LASF803
	.value	0x20b
	.uleb128 0x1
	.long	.LASF804
	.value	0x20c
	.uleb128 0x1
	.long	.LASF805
	.value	0x20d
	.uleb128 0x1
	.long	.LASF806
	.value	0x20e
	.uleb128 0x1
	.long	.LASF807
	.value	0x20f
	.uleb128 0x1
	.long	.LASF808
	.value	0x210
	.uleb128 0x1
	.long	.LASF809
	.value	0x211
	.uleb128 0x1
	.long	.LASF810
	.value	0x212
	.uleb128 0x1
	.long	.LASF811
	.value	0x213
	.uleb128 0x1
	.long	.LASF812
	.value	0x214
	.uleb128 0x1
	.long	.LASF813
	.value	0x215
	.uleb128 0x1
	.long	.LASF814
	.value	0x216
	.uleb128 0x1
	.long	.LASF815
	.value	0x217
	.uleb128 0x1
	.long	.LASF816
	.value	0x218
	.uleb128 0x1
	.long	.LASF817
	.value	0x219
	.uleb128 0x1
	.long	.LASF818
	.value	0x21a
	.uleb128 0x1
	.long	.LASF819
	.value	0x21b
	.uleb128 0x1
	.long	.LASF820
	.value	0x21c
	.uleb128 0x1
	.long	.LASF821
	.value	0x21d
	.uleb128 0x1
	.long	.LASF822
	.value	0x21e
	.uleb128 0x1
	.long	.LASF823
	.value	0x21f
	.uleb128 0x1
	.long	.LASF824
	.value	0x220
	.uleb128 0x1
	.long	.LASF825
	.value	0x221
	.uleb128 0x1
	.long	.LASF826
	.value	0x222
	.uleb128 0x1
	.long	.LASF827
	.value	0x223
	.uleb128 0x1
	.long	.LASF828
	.value	0x224
	.uleb128 0x1
	.long	.LASF829
	.value	0x225
	.uleb128 0x1
	.long	.LASF830
	.value	0x226
	.uleb128 0x1
	.long	.LASF831
	.value	0x227
	.uleb128 0x1
	.long	.LASF832
	.value	0x228
	.uleb128 0x1
	.long	.LASF833
	.value	0x229
	.uleb128 0x1
	.long	.LASF834
	.value	0x22a
	.uleb128 0x1
	.long	.LASF835
	.value	0x22b
	.uleb128 0x1
	.long	.LASF836
	.value	0x22c
	.uleb128 0x1
	.long	.LASF837
	.value	0x22d
	.uleb128 0x1
	.long	.LASF838
	.value	0x22e
	.uleb128 0x1
	.long	.LASF839
	.value	0x22f
	.uleb128 0x1
	.long	.LASF840
	.value	0x230
	.uleb128 0x1
	.long	.LASF841
	.value	0x231
	.uleb128 0x1
	.long	.LASF842
	.value	0x232
	.uleb128 0x1
	.long	.LASF843
	.value	0x233
	.uleb128 0x1
	.long	.LASF844
	.value	0x234
	.uleb128 0x1
	.long	.LASF845
	.value	0x235
	.uleb128 0x1
	.long	.LASF846
	.value	0x236
	.uleb128 0x1
	.long	.LASF847
	.value	0x237
	.uleb128 0x1
	.long	.LASF848
	.value	0x238
	.uleb128 0x1
	.long	.LASF849
	.value	0x239
	.uleb128 0x1
	.long	.LASF850
	.value	0x23a
	.uleb128 0x1
	.long	.LASF851
	.value	0x23b
	.uleb128 0x1
	.long	.LASF852
	.value	0x23c
	.uleb128 0x1
	.long	.LASF853
	.value	0x23d
	.uleb128 0x1
	.long	.LASF854
	.value	0x23e
	.uleb128 0x1
	.long	.LASF855
	.value	0x23f
	.uleb128 0x1
	.long	.LASF856
	.value	0x240
	.uleb128 0x1
	.long	.LASF857
	.value	0x241
	.uleb128 0x1
	.long	.LASF858
	.value	0x242
	.uleb128 0x1
	.long	.LASF859
	.value	0x243
	.uleb128 0x1
	.long	.LASF860
	.value	0x244
	.uleb128 0x1
	.long	.LASF861
	.value	0x245
	.uleb128 0x1
	.long	.LASF862
	.value	0x246
	.uleb128 0x1
	.long	.LASF863
	.value	0x247
	.uleb128 0x1
	.long	.LASF864
	.value	0x248
	.uleb128 0x1
	.long	.LASF865
	.value	0x249
	.uleb128 0x1
	.long	.LASF866
	.value	0x24a
	.uleb128 0x1
	.long	.LASF867
	.value	0x24b
	.uleb128 0x1
	.long	.LASF868
	.value	0x24c
	.uleb128 0x1
	.long	.LASF869
	.value	0x24d
	.uleb128 0x1
	.long	.LASF870
	.value	0x24e
	.uleb128 0x1
	.long	.LASF871
	.value	0x24f
	.uleb128 0x1
	.long	.LASF872
	.value	0x250
	.uleb128 0x1
	.long	.LASF873
	.value	0x251
	.uleb128 0x1
	.long	.LASF874
	.value	0x252
	.uleb128 0x1
	.long	.LASF875
	.value	0x253
	.uleb128 0x1
	.long	.LASF876
	.value	0x254
	.uleb128 0x1
	.long	.LASF877
	.value	0x255
	.uleb128 0x1
	.long	.LASF878
	.value	0x256
	.uleb128 0x1
	.long	.LASF879
	.value	0x257
	.uleb128 0x1
	.long	.LASF880
	.value	0x258
	.uleb128 0x1
	.long	.LASF881
	.value	0x259
	.uleb128 0x1
	.long	.LASF882
	.value	0x25a
	.uleb128 0x1
	.long	.LASF883
	.value	0x25b
	.uleb128 0x1
	.long	.LASF884
	.value	0x25c
	.uleb128 0x1
	.long	.LASF885
	.value	0x25d
	.uleb128 0x1
	.long	.LASF886
	.value	0x25e
	.uleb128 0x1
	.long	.LASF887
	.value	0x25f
	.uleb128 0x1
	.long	.LASF888
	.value	0x260
	.uleb128 0x1
	.long	.LASF889
	.value	0x261
	.uleb128 0x1
	.long	.LASF890
	.value	0x262
	.uleb128 0x1
	.long	.LASF891
	.value	0x263
	.uleb128 0x1
	.long	.LASF892
	.value	0x264
	.uleb128 0x1
	.long	.LASF893
	.value	0x265
	.uleb128 0x1
	.long	.LASF894
	.value	0x266
	.uleb128 0x1
	.long	.LASF895
	.value	0x267
	.uleb128 0x1
	.long	.LASF896
	.value	0x268
	.uleb128 0x1
	.long	.LASF897
	.value	0x269
	.uleb128 0x1
	.long	.LASF898
	.value	0x26a
	.uleb128 0x1
	.long	.LASF899
	.value	0x26b
	.uleb128 0x1
	.long	.LASF900
	.value	0x26c
	.uleb128 0x1
	.long	.LASF901
	.value	0x26d
	.uleb128 0x1
	.long	.LASF902
	.value	0x26e
	.uleb128 0x1
	.long	.LASF903
	.value	0x26f
	.uleb128 0x1
	.long	.LASF904
	.value	0x270
	.uleb128 0x1
	.long	.LASF905
	.value	0x271
	.uleb128 0x1
	.long	.LASF906
	.value	0x272
	.uleb128 0x1
	.long	.LASF907
	.value	0x273
	.uleb128 0x1
	.long	.LASF908
	.value	0x274
	.uleb128 0x1
	.long	.LASF909
	.value	0x275
	.uleb128 0x1
	.long	.LASF910
	.value	0x276
	.uleb128 0x1
	.long	.LASF911
	.value	0x277
	.uleb128 0x1
	.long	.LASF912
	.value	0x278
	.uleb128 0x1
	.long	.LASF913
	.value	0x279
	.uleb128 0x1
	.long	.LASF914
	.value	0x27a
	.uleb128 0x1
	.long	.LASF915
	.value	0x27b
	.uleb128 0x1
	.long	.LASF916
	.value	0x27c
	.uleb128 0x1
	.long	.LASF917
	.value	0x27d
	.uleb128 0x1
	.long	.LASF918
	.value	0x27e
	.uleb128 0x1
	.long	.LASF919
	.value	0x27f
	.uleb128 0x1
	.long	.LASF920
	.value	0x280
	.uleb128 0x1
	.long	.LASF921
	.value	0x281
	.uleb128 0x1
	.long	.LASF922
	.value	0x282
	.uleb128 0x1
	.long	.LASF923
	.value	0x283
	.uleb128 0x1
	.long	.LASF924
	.value	0x284
	.uleb128 0x1
	.long	.LASF925
	.value	0x285
	.uleb128 0x1
	.long	.LASF926
	.value	0x286
	.uleb128 0x1
	.long	.LASF927
	.value	0x287
	.uleb128 0x1
	.long	.LASF928
	.value	0x288
	.uleb128 0x1
	.long	.LASF929
	.value	0x289
	.uleb128 0x1
	.long	.LASF930
	.value	0x28a
	.uleb128 0x1
	.long	.LASF931
	.value	0x28b
	.uleb128 0x1
	.long	.LASF932
	.value	0x28c
	.uleb128 0x1
	.long	.LASF933
	.value	0x28d
	.uleb128 0x1
	.long	.LASF934
	.value	0x28e
	.uleb128 0x1
	.long	.LASF935
	.value	0x28f
	.uleb128 0x1
	.long	.LASF936
	.value	0x290
	.uleb128 0x1
	.long	.LASF937
	.value	0x291
	.uleb128 0x1
	.long	.LASF938
	.value	0x292
	.uleb128 0x1
	.long	.LASF939
	.value	0x293
	.uleb128 0x1
	.long	.LASF940
	.value	0x294
	.uleb128 0x1
	.long	.LASF941
	.value	0x295
	.uleb128 0x1
	.long	.LASF942
	.value	0x296
	.uleb128 0x1
	.long	.LASF943
	.value	0x297
	.uleb128 0x1
	.long	.LASF944
	.value	0x298
	.uleb128 0x1
	.long	.LASF945
	.value	0x299
	.uleb128 0x1
	.long	.LASF946
	.value	0x29a
	.uleb128 0x1
	.long	.LASF947
	.value	0x29b
	.uleb128 0x1
	.long	.LASF948
	.value	0x29c
	.uleb128 0x1
	.long	.LASF949
	.value	0x29d
	.uleb128 0x1
	.long	.LASF950
	.value	0x29e
	.uleb128 0x1
	.long	.LASF951
	.value	0x29f
	.uleb128 0x1
	.long	.LASF952
	.value	0x2a0
	.uleb128 0x1
	.long	.LASF953
	.value	0x2a1
	.uleb128 0x1
	.long	.LASF954
	.value	0x2a2
	.uleb128 0x1
	.long	.LASF955
	.value	0x2a3
	.uleb128 0x1
	.long	.LASF956
	.value	0x2a4
	.uleb128 0x1
	.long	.LASF957
	.value	0x2a5
	.uleb128 0x1
	.long	.LASF958
	.value	0x2a6
	.uleb128 0x1
	.long	.LASF959
	.value	0x2a7
	.uleb128 0x1
	.long	.LASF960
	.value	0x2a8
	.uleb128 0x1
	.long	.LASF961
	.value	0x2a9
	.uleb128 0x1
	.long	.LASF962
	.value	0x2aa
	.uleb128 0x1
	.long	.LASF963
	.value	0x2ab
	.uleb128 0x1
	.long	.LASF964
	.value	0x2ac
	.uleb128 0x1
	.long	.LASF965
	.value	0x2ad
	.uleb128 0x1
	.long	.LASF966
	.value	0x2ae
	.uleb128 0x1
	.long	.LASF967
	.value	0x2af
	.uleb128 0x1
	.long	.LASF968
	.value	0x2b0
	.uleb128 0x1
	.long	.LASF969
	.value	0x2b1
	.uleb128 0x1
	.long	.LASF970
	.value	0x2b2
	.uleb128 0x1
	.long	.LASF971
	.value	0x2b3
	.uleb128 0x1
	.long	.LASF972
	.value	0x2b4
	.uleb128 0x1
	.long	.LASF973
	.value	0x2b5
	.uleb128 0x1
	.long	.LASF974
	.value	0x2b6
	.uleb128 0x1
	.long	.LASF975
	.value	0x2b7
	.uleb128 0x1
	.long	.LASF976
	.value	0x2b8
	.uleb128 0x1
	.long	.LASF977
	.value	0x2b9
	.uleb128 0x1
	.long	.LASF978
	.value	0x2ba
	.uleb128 0x1
	.long	.LASF979
	.value	0x2bb
	.uleb128 0x1
	.long	.LASF980
	.value	0x2bc
	.uleb128 0x1
	.long	.LASF981
	.value	0x2bd
	.uleb128 0x1
	.long	.LASF982
	.value	0x2be
	.uleb128 0x1
	.long	.LASF983
	.value	0x2bf
	.uleb128 0x1
	.long	.LASF984
	.value	0x2c0
	.uleb128 0x1
	.long	.LASF985
	.value	0x2c1
	.uleb128 0x1
	.long	.LASF986
	.value	0x2c2
	.uleb128 0x1
	.long	.LASF987
	.value	0x2c3
	.uleb128 0x1
	.long	.LASF988
	.value	0x2c4
	.uleb128 0x1
	.long	.LASF989
	.value	0x2c5
	.uleb128 0x1
	.long	.LASF990
	.value	0x2c6
	.uleb128 0x1
	.long	.LASF991
	.value	0x2c7
	.uleb128 0x1
	.long	.LASF992
	.value	0x2c8
	.uleb128 0x1
	.long	.LASF993
	.value	0x2c9
	.uleb128 0x1
	.long	.LASF994
	.value	0x2ca
	.uleb128 0x1
	.long	.LASF995
	.value	0x2cb
	.uleb128 0x1
	.long	.LASF996
	.value	0x2cc
	.uleb128 0x1
	.long	.LASF997
	.value	0x2cd
	.uleb128 0x1
	.long	.LASF998
	.value	0x2ce
	.uleb128 0x1
	.long	.LASF999
	.value	0x2cf
	.uleb128 0x1
	.long	.LASF1000
	.value	0x2d0
	.uleb128 0x1
	.long	.LASF1001
	.value	0x2d1
	.uleb128 0x1
	.long	.LASF1002
	.value	0x2d2
	.uleb128 0x1
	.long	.LASF1003
	.value	0x2d3
	.uleb128 0x1
	.long	.LASF1004
	.value	0x2d4
	.uleb128 0x1
	.long	.LASF1005
	.value	0x2d5
	.uleb128 0x1
	.long	.LASF1006
	.value	0x2d6
	.uleb128 0x1
	.long	.LASF1007
	.value	0x2d7
	.uleb128 0x1
	.long	.LASF1008
	.value	0x2d8
	.uleb128 0x1
	.long	.LASF1009
	.value	0x2d9
	.uleb128 0x1
	.long	.LASF1010
	.value	0x2da
	.uleb128 0x1
	.long	.LASF1011
	.value	0x2db
	.uleb128 0x1
	.long	.LASF1012
	.value	0x2dc
	.uleb128 0x1
	.long	.LASF1013
	.value	0x2dd
	.uleb128 0x1
	.long	.LASF1014
	.value	0x2de
	.uleb128 0x1
	.long	.LASF1015
	.value	0x2df
	.uleb128 0x1
	.long	.LASF1016
	.value	0x2e0
	.uleb128 0x1
	.long	.LASF1017
	.value	0x2e1
	.uleb128 0x1
	.long	.LASF1018
	.value	0x2e2
	.uleb128 0x1
	.long	.LASF1019
	.value	0x2e3
	.uleb128 0x1
	.long	.LASF1020
	.value	0x2e4
	.uleb128 0x1
	.long	.LASF1021
	.value	0x2e5
	.uleb128 0x1
	.long	.LASF1022
	.value	0x2e6
	.uleb128 0x1
	.long	.LASF1023
	.value	0x2e7
	.uleb128 0x1
	.long	.LASF1024
	.value	0x2e8
	.uleb128 0x1
	.long	.LASF1025
	.value	0x2e9
	.uleb128 0x1
	.long	.LASF1026
	.value	0x2ea
	.uleb128 0x1
	.long	.LASF1027
	.value	0x2eb
	.uleb128 0x1
	.long	.LASF1028
	.value	0x2ec
	.uleb128 0x1
	.long	.LASF1029
	.value	0x2ed
	.uleb128 0x1
	.long	.LASF1030
	.value	0x2ee
	.uleb128 0x1
	.long	.LASF1031
	.value	0x2ef
	.uleb128 0x1
	.long	.LASF1032
	.value	0x2f0
	.uleb128 0x1
	.long	.LASF1033
	.value	0x2f1
	.uleb128 0x1
	.long	.LASF1034
	.value	0x2f2
	.uleb128 0x1
	.long	.LASF1035
	.value	0x2f3
	.uleb128 0x1
	.long	.LASF1036
	.value	0x2f4
	.uleb128 0x1
	.long	.LASF1037
	.value	0x2f5
	.uleb128 0x1
	.long	.LASF1038
	.value	0x2f6
	.uleb128 0x1
	.long	.LASF1039
	.value	0x2f7
	.uleb128 0x1
	.long	.LASF1040
	.value	0x2f8
	.uleb128 0x1
	.long	.LASF1041
	.value	0x2f9
	.uleb128 0x1
	.long	.LASF1042
	.value	0x2fa
	.uleb128 0x1
	.long	.LASF1043
	.value	0x2fb
	.uleb128 0x1
	.long	.LASF1044
	.value	0x2fc
	.uleb128 0x1
	.long	.LASF1045
	.value	0x2fd
	.uleb128 0x1
	.long	.LASF1046
	.value	0x2fe
	.uleb128 0x1
	.long	.LASF1047
	.value	0x2ff
	.uleb128 0x1
	.long	.LASF1048
	.value	0x300
	.uleb128 0x1
	.long	.LASF1049
	.value	0x301
	.uleb128 0x1
	.long	.LASF1050
	.value	0x302
	.uleb128 0x1
	.long	.LASF1051
	.value	0x303
	.uleb128 0x1
	.long	.LASF1052
	.value	0x304
	.uleb128 0x1
	.long	.LASF1053
	.value	0x305
	.uleb128 0x1
	.long	.LASF1054
	.value	0x306
	.uleb128 0x1
	.long	.LASF1055
	.value	0x307
	.uleb128 0x1
	.long	.LASF1056
	.value	0x308
	.uleb128 0x1
	.long	.LASF1057
	.value	0x309
	.uleb128 0x1
	.long	.LASF1058
	.value	0x30a
	.uleb128 0x1
	.long	.LASF1059
	.value	0x30b
	.uleb128 0x1
	.long	.LASF1060
	.value	0x30c
	.uleb128 0x1
	.long	.LASF1061
	.value	0x30d
	.uleb128 0x1
	.long	.LASF1062
	.value	0x30e
	.uleb128 0x1
	.long	.LASF1063
	.value	0x30f
	.uleb128 0x1
	.long	.LASF1064
	.value	0x310
	.uleb128 0x1
	.long	.LASF1065
	.value	0x311
	.uleb128 0x1
	.long	.LASF1066
	.value	0x312
	.uleb128 0x1
	.long	.LASF1067
	.value	0x313
	.uleb128 0x1
	.long	.LASF1068
	.value	0x314
	.uleb128 0x1
	.long	.LASF1069
	.value	0x315
	.uleb128 0x1
	.long	.LASF1070
	.value	0x316
	.uleb128 0x1
	.long	.LASF1071
	.value	0x317
	.uleb128 0x1
	.long	.LASF1072
	.value	0x318
	.uleb128 0x1
	.long	.LASF1073
	.value	0x319
	.uleb128 0x1
	.long	.LASF1074
	.value	0x31a
	.uleb128 0x1
	.long	.LASF1075
	.value	0x31b
	.uleb128 0x1
	.long	.LASF1076
	.value	0x31c
	.uleb128 0x1
	.long	.LASF1077
	.value	0x31d
	.uleb128 0x1
	.long	.LASF1078
	.value	0x31e
	.uleb128 0x1
	.long	.LASF1079
	.value	0x31f
	.uleb128 0x1
	.long	.LASF1080
	.value	0x320
	.uleb128 0x1
	.long	.LASF1081
	.value	0x321
	.uleb128 0x1
	.long	.LASF1082
	.value	0x322
	.uleb128 0x1
	.long	.LASF1083
	.value	0x323
	.uleb128 0x1
	.long	.LASF1084
	.value	0x324
	.uleb128 0x1
	.long	.LASF1085
	.value	0x325
	.uleb128 0x1
	.long	.LASF1086
	.value	0x326
	.uleb128 0x1
	.long	.LASF1087
	.value	0x327
	.uleb128 0x1
	.long	.LASF1088
	.value	0x328
	.uleb128 0x1
	.long	.LASF1089
	.value	0x329
	.uleb128 0x1
	.long	.LASF1090
	.value	0x32a
	.uleb128 0x1
	.long	.LASF1091
	.value	0x32b
	.uleb128 0x1
	.long	.LASF1092
	.value	0x32c
	.uleb128 0x1
	.long	.LASF1093
	.value	0x32d
	.uleb128 0x1
	.long	.LASF1094
	.value	0x32e
	.uleb128 0x1
	.long	.LASF1095
	.value	0x32f
	.uleb128 0x1
	.long	.LASF1096
	.value	0x330
	.uleb128 0x1
	.long	.LASF1097
	.value	0x331
	.uleb128 0x1
	.long	.LASF1098
	.value	0x332
	.uleb128 0x1
	.long	.LASF1099
	.value	0x333
	.uleb128 0x1
	.long	.LASF1100
	.value	0x334
	.uleb128 0x1
	.long	.LASF1101
	.value	0x335
	.uleb128 0x1
	.long	.LASF1102
	.value	0x336
	.uleb128 0x1
	.long	.LASF1103
	.value	0x337
	.uleb128 0x1
	.long	.LASF1104
	.value	0x338
	.uleb128 0x1
	.long	.LASF1105
	.value	0x339
	.uleb128 0x1
	.long	.LASF1106
	.value	0x33a
	.uleb128 0x1
	.long	.LASF1107
	.value	0x33b
	.uleb128 0x1
	.long	.LASF1108
	.value	0x33c
	.uleb128 0x1
	.long	.LASF1109
	.value	0x33d
	.uleb128 0x1
	.long	.LASF1110
	.value	0x33e
	.uleb128 0x1
	.long	.LASF1111
	.value	0x33f
	.uleb128 0x1
	.long	.LASF1112
	.value	0x340
	.uleb128 0x1
	.long	.LASF1113
	.value	0x341
	.uleb128 0x1
	.long	.LASF1114
	.value	0x342
	.uleb128 0x1
	.long	.LASF1115
	.value	0x343
	.uleb128 0x1
	.long	.LASF1116
	.value	0x344
	.uleb128 0x1
	.long	.LASF1117
	.value	0x345
	.uleb128 0x1
	.long	.LASF1118
	.value	0x346
	.uleb128 0x1
	.long	.LASF1119
	.value	0x347
	.uleb128 0x1
	.long	.LASF1120
	.value	0x348
	.uleb128 0x1
	.long	.LASF1121
	.value	0x349
	.uleb128 0x1
	.long	.LASF1122
	.value	0x34a
	.uleb128 0x1
	.long	.LASF1123
	.value	0x34b
	.uleb128 0x1
	.long	.LASF1124
	.value	0x34c
	.uleb128 0x1
	.long	.LASF1125
	.value	0x34d
	.uleb128 0x1
	.long	.LASF1126
	.value	0x34e
	.uleb128 0x1
	.long	.LASF1127
	.value	0x34f
	.uleb128 0x1
	.long	.LASF1128
	.value	0x350
	.uleb128 0x1
	.long	.LASF1129
	.value	0x351
	.uleb128 0x1
	.long	.LASF1130
	.value	0x352
	.uleb128 0x1
	.long	.LASF1131
	.value	0x353
	.uleb128 0x1
	.long	.LASF1132
	.value	0x354
	.uleb128 0x1
	.long	.LASF1133
	.value	0x355
	.uleb128 0x1
	.long	.LASF1134
	.value	0x356
	.uleb128 0x1
	.long	.LASF1135
	.value	0x357
	.uleb128 0x1
	.long	.LASF1136
	.value	0x358
	.uleb128 0x1
	.long	.LASF1137
	.value	0x359
	.uleb128 0x1
	.long	.LASF1138
	.value	0x35a
	.uleb128 0x1
	.long	.LASF1139
	.value	0x35b
	.uleb128 0x1
	.long	.LASF1140
	.value	0x35c
	.uleb128 0x1
	.long	.LASF1141
	.value	0x35d
	.uleb128 0x1
	.long	.LASF1142
	.value	0x35e
	.uleb128 0x1
	.long	.LASF1143
	.value	0x35f
	.uleb128 0x1
	.long	.LASF1144
	.value	0x360
	.uleb128 0x1
	.long	.LASF1145
	.value	0x361
	.uleb128 0x1
	.long	.LASF1146
	.value	0x362
	.uleb128 0x1
	.long	.LASF1147
	.value	0x363
	.uleb128 0x1
	.long	.LASF1148
	.value	0x364
	.uleb128 0x1
	.long	.LASF1149
	.value	0x365
	.uleb128 0x1
	.long	.LASF1150
	.value	0x366
	.uleb128 0x1
	.long	.LASF1151
	.value	0x367
	.uleb128 0x1
	.long	.LASF1152
	.value	0x368
	.uleb128 0x1
	.long	.LASF1153
	.value	0x369
	.uleb128 0x1
	.long	.LASF1154
	.value	0x36a
	.uleb128 0x1
	.long	.LASF1155
	.value	0x36b
	.uleb128 0x1
	.long	.LASF1156
	.value	0x36c
	.uleb128 0x1
	.long	.LASF1157
	.value	0x36d
	.uleb128 0x1
	.long	.LASF1158
	.value	0x36e
	.uleb128 0x1
	.long	.LASF1159
	.value	0x36f
	.uleb128 0x1
	.long	.LASF1160
	.value	0x370
	.uleb128 0x1
	.long	.LASF1161
	.value	0x371
	.uleb128 0x1
	.long	.LASF1162
	.value	0x372
	.uleb128 0x1
	.long	.LASF1163
	.value	0x373
	.uleb128 0x1
	.long	.LASF1164
	.value	0x374
	.uleb128 0x1
	.long	.LASF1165
	.value	0x375
	.uleb128 0x1
	.long	.LASF1166
	.value	0x376
	.uleb128 0x1
	.long	.LASF1167
	.value	0x377
	.uleb128 0x1
	.long	.LASF1168
	.value	0x378
	.uleb128 0x1
	.long	.LASF1169
	.value	0x379
	.uleb128 0x1
	.long	.LASF1170
	.value	0x37a
	.uleb128 0x1
	.long	.LASF1171
	.value	0x37b
	.uleb128 0x1
	.long	.LASF1172
	.value	0x37c
	.uleb128 0x1
	.long	.LASF1173
	.value	0x37d
	.uleb128 0x1
	.long	.LASF1174
	.value	0x37e
	.uleb128 0x1
	.long	.LASF1175
	.value	0x37f
	.uleb128 0x1
	.long	.LASF1176
	.value	0x380
	.uleb128 0x1
	.long	.LASF1177
	.value	0x381
	.uleb128 0x1
	.long	.LASF1178
	.value	0x382
	.uleb128 0x1
	.long	.LASF1179
	.value	0x383
	.uleb128 0x1
	.long	.LASF1180
	.value	0x384
	.uleb128 0x1
	.long	.LASF1181
	.value	0x385
	.uleb128 0x1
	.long	.LASF1182
	.value	0x386
	.uleb128 0x1
	.long	.LASF1183
	.value	0x387
	.uleb128 0x1
	.long	.LASF1184
	.value	0x388
	.uleb128 0x1
	.long	.LASF1185
	.value	0x389
	.uleb128 0x1
	.long	.LASF1186
	.value	0x38a
	.uleb128 0x1
	.long	.LASF1187
	.value	0x38b
	.uleb128 0x1
	.long	.LASF1188
	.value	0x38c
	.uleb128 0x1
	.long	.LASF1189
	.value	0x38d
	.uleb128 0x1
	.long	.LASF1190
	.value	0x38e
	.uleb128 0x1
	.long	.LASF1191
	.value	0x38f
	.uleb128 0x1
	.long	.LASF1192
	.value	0x390
	.uleb128 0x1
	.long	.LASF1193
	.value	0x391
	.uleb128 0x1
	.long	.LASF1194
	.value	0x392
	.uleb128 0x1
	.long	.LASF1195
	.value	0x393
	.uleb128 0x1
	.long	.LASF1196
	.value	0x394
	.uleb128 0x1
	.long	.LASF1197
	.value	0x395
	.uleb128 0x1
	.long	.LASF1198
	.value	0x396
	.uleb128 0x1
	.long	.LASF1199
	.value	0x397
	.uleb128 0x1
	.long	.LASF1200
	.value	0x398
	.uleb128 0x1
	.long	.LASF1201
	.value	0x399
	.uleb128 0x1
	.long	.LASF1202
	.value	0x39a
	.uleb128 0x1
	.long	.LASF1203
	.value	0x39b
	.uleb128 0x1
	.long	.LASF1204
	.value	0x39c
	.uleb128 0x1
	.long	.LASF1205
	.value	0x39d
	.uleb128 0x1
	.long	.LASF1206
	.value	0x39e
	.uleb128 0x1
	.long	.LASF1207
	.value	0x39f
	.uleb128 0x1
	.long	.LASF1208
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF1209
	.value	0x3a1
	.uleb128 0x1
	.long	.LASF1210
	.value	0x3a2
	.uleb128 0x1
	.long	.LASF1211
	.value	0x3a3
	.uleb128 0x1
	.long	.LASF1212
	.value	0x3a4
	.uleb128 0x1
	.long	.LASF1213
	.value	0x3a5
	.uleb128 0x1
	.long	.LASF1214
	.value	0x3a6
	.uleb128 0x1
	.long	.LASF1215
	.value	0x3a7
	.uleb128 0x1
	.long	.LASF1216
	.value	0x3a8
	.uleb128 0x1
	.long	.LASF1217
	.value	0x3a9
	.uleb128 0x1
	.long	.LASF1218
	.value	0x3aa
	.uleb128 0x1
	.long	.LASF1219
	.value	0x3ab
	.uleb128 0x1
	.long	.LASF1220
	.value	0x3ac
	.uleb128 0x1
	.long	.LASF1221
	.value	0x3ad
	.uleb128 0x1
	.long	.LASF1222
	.value	0x3ae
	.uleb128 0x1
	.long	.LASF1223
	.value	0x3af
	.uleb128 0x1
	.long	.LASF1224
	.value	0x3b0
	.uleb128 0x1
	.long	.LASF1225
	.value	0x3b1
	.uleb128 0x1
	.long	.LASF1226
	.value	0x3b2
	.uleb128 0x1
	.long	.LASF1227
	.value	0x3b3
	.uleb128 0x1
	.long	.LASF1228
	.value	0x3b4
	.uleb128 0x1
	.long	.LASF1229
	.value	0x3b5
	.uleb128 0x1
	.long	.LASF1230
	.value	0x3b6
	.uleb128 0x1
	.long	.LASF1231
	.value	0x3b7
	.uleb128 0x1
	.long	.LASF1232
	.value	0x3b8
	.uleb128 0x1
	.long	.LASF1233
	.value	0x3b9
	.uleb128 0x1
	.long	.LASF1234
	.value	0x3ba
	.uleb128 0x1
	.long	.LASF1235
	.value	0x3bb
	.uleb128 0x1
	.long	.LASF1236
	.value	0x3bc
	.uleb128 0x1
	.long	.LASF1237
	.value	0x3bd
	.uleb128 0x1
	.long	.LASF1238
	.value	0x3be
	.uleb128 0x1
	.long	.LASF1239
	.value	0x3bf
	.uleb128 0x1
	.long	.LASF1240
	.value	0x3c0
	.uleb128 0x1
	.long	.LASF1241
	.value	0x3c1
	.uleb128 0x1
	.long	.LASF1242
	.value	0x3c2
	.uleb128 0x1
	.long	.LASF1243
	.value	0x3c3
	.uleb128 0x1
	.long	.LASF1244
	.value	0x3c4
	.uleb128 0x1
	.long	.LASF1245
	.value	0x3c5
	.uleb128 0x1
	.long	.LASF1246
	.value	0x3c6
	.uleb128 0x1
	.long	.LASF1247
	.value	0x3c7
	.byte	0
	.uleb128 0x17
	.long	.LASF1248
	.byte	0xe
	.value	0x478
	.long	0xa43
	.uleb128 0x24
	.byte	0x38
	.value	0x47b
	.long	0x243f
	.uleb128 0x4
	.long	.LASF1249
	.byte	0xe
	.value	0x47d
	.byte	0xf
	.long	0xa37
	.byte	0
	.uleb128 0x4
	.long	.LASF1250
	.byte	0xe
	.value	0x47e
	.byte	0xa
	.long	0x234
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1251
	.byte	0xe
	.value	0x47f
	.byte	0xa
	.long	0x234
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1252
	.byte	0xe
	.value	0x481
	.byte	0xf
	.long	0x68a
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1253
	.byte	0xe
	.value	0x482
	.byte	0x10
	.long	0x23c8
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1254
	.byte	0xe
	.value	0x483
	.byte	0xa
	.long	0x234
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1255
	.byte	0xe
	.value	0x483
	.byte	0x11
	.long	0x234
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.long	.LASF1256
	.byte	0xe
	.value	0x484
	.long	0x23d4
	.uleb128 0x32
	.byte	0x7
	.byte	0x4
	.long	0x84
	.byte	0xe
	.value	0x48b
	.byte	0xe
	.long	0x2797
	.uleb128 0x2
	.long	.LASF1257
	.byte	0
	.uleb128 0x2
	.long	.LASF1258
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1259
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1260
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1261
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1262
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1263
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1264
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1265
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1266
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1267
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1268
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1269
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1270
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1271
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1272
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1273
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1274
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1275
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1276
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1277
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1278
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1279
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1280
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1281
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1282
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1283
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1284
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1285
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1286
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1287
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1288
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1289
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1290
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1291
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1292
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1293
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1294
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1295
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1296
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1297
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1298
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1299
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1300
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1301
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1302
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1303
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1304
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1305
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1306
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1307
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1308
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1309
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1310
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1311
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1312
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1313
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1314
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1315
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1316
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1317
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1318
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1319
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1320
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1321
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1322
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1323
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1324
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1325
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1326
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1327
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1328
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1329
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1330
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1331
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1332
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1333
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1334
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1335
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1336
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1337
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1338
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1339
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1340
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1341
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1342
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1343
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1344
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1345
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1346
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1347
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1348
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1349
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1350
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1351
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1352
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1353
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1354
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1355
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1356
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1357
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1358
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1359
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1360
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1361
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1362
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1363
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1364
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1365
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1366
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF1367
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF1368
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF1369
	.byte	0x70
	.uleb128 0x2
	.long	.LASF1370
	.byte	0x71
	.uleb128 0x2
	.long	.LASF1371
	.byte	0x72
	.uleb128 0x2
	.long	.LASF1372
	.byte	0x73
	.uleb128 0x2
	.long	.LASF1373
	.byte	0x74
	.uleb128 0x2
	.long	.LASF1374
	.byte	0x75
	.uleb128 0x2
	.long	.LASF1375
	.byte	0x76
	.uleb128 0x2
	.long	.LASF1376
	.byte	0x77
	.uleb128 0x2
	.long	.LASF1377
	.byte	0x78
	.uleb128 0x2
	.long	.LASF1378
	.byte	0x79
	.uleb128 0x2
	.long	.LASF1379
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF1380
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF1381
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF1382
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF1383
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF1384
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF1385
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1386
	.byte	0x81
	.uleb128 0x2
	.long	.LASF1387
	.byte	0x82
	.uleb128 0x2
	.long	.LASF1388
	.byte	0x83
	.uleb128 0x2
	.long	.LASF1389
	.byte	0x84
	.uleb128 0x2
	.long	.LASF1390
	.byte	0x85
	.uleb128 0x2
	.long	.LASF1391
	.byte	0x86
	.uleb128 0x2
	.long	.LASF1392
	.byte	0x87
	.uleb128 0x2
	.long	.LASF1393
	.byte	0x88
	.uleb128 0x2
	.long	.LASF1394
	.byte	0x89
	.byte	0
	.uleb128 0x17
	.long	.LASF1395
	.byte	0xe
	.value	0x517
	.long	0x244b
	.uleb128 0x24
	.byte	0x5c
	.value	0x519
	.long	0x28ee
	.uleb128 0x4
	.long	.LASF1396
	.byte	0xe
	.value	0x51b
	.byte	0x9
	.long	0x118
	.byte	0
	.uleb128 0x4
	.long	.LASF1397
	.byte	0xe
	.value	0x51c
	.byte	0x9
	.long	0x118
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1398
	.byte	0xe
	.value	0x51d
	.byte	0x9
	.long	0x118
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1399
	.byte	0xe
	.value	0x51e
	.byte	0x9
	.long	0x118
	.byte	0xc
	.uleb128 0x4
	.long	.LASF1400
	.byte	0xe
	.value	0x51f
	.byte	0x9
	.long	0x118
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1401
	.byte	0xe
	.value	0x520
	.byte	0x9
	.long	0x118
	.byte	0x14
	.uleb128 0x4
	.long	.LASF1402
	.byte	0xe
	.value	0x521
	.byte	0x9
	.long	0x118
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1403
	.byte	0xe
	.value	0x522
	.byte	0x9
	.long	0x118
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF1404
	.byte	0xe
	.value	0x523
	.byte	0x9
	.long	0x118
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1405
	.byte	0xe
	.value	0x524
	.byte	0x9
	.long	0x118
	.byte	0x24
	.uleb128 0x4
	.long	.LASF1406
	.byte	0xe
	.value	0x525
	.byte	0x9
	.long	0x118
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1407
	.byte	0xe
	.value	0x526
	.byte	0x9
	.long	0x118
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1408
	.byte	0xe
	.value	0x527
	.byte	0x9
	.long	0x118
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1409
	.byte	0xe
	.value	0x528
	.byte	0x9
	.long	0x118
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1410
	.byte	0xe
	.value	0x529
	.byte	0x9
	.long	0x118
	.byte	0x38
	.uleb128 0x4
	.long	.LASF1411
	.byte	0xe
	.value	0x52a
	.byte	0x9
	.long	0x118
	.byte	0x3c
	.uleb128 0x4
	.long	.LASF1412
	.byte	0xe
	.value	0x52b
	.byte	0x9
	.long	0x118
	.byte	0x40
	.uleb128 0x4
	.long	.LASF1413
	.byte	0xe
	.value	0x52c
	.byte	0x9
	.long	0x118
	.byte	0x44
	.uleb128 0x4
	.long	.LASF1414
	.byte	0xe
	.value	0x52d
	.byte	0x9
	.long	0x118
	.byte	0x48
	.uleb128 0x4
	.long	.LASF1415
	.byte	0xe
	.value	0x52e
	.byte	0x9
	.long	0x118
	.byte	0x4c
	.uleb128 0x4
	.long	.LASF1416
	.byte	0xe
	.value	0x52f
	.byte	0x9
	.long	0x118
	.byte	0x50
	.uleb128 0x4
	.long	.LASF1417
	.byte	0xe
	.value	0x530
	.byte	0x9
	.long	0x118
	.byte	0x54
	.uleb128 0x4
	.long	.LASF1418
	.byte	0xe
	.value	0x531
	.byte	0x9
	.long	0x118
	.byte	0x58
	.byte	0
	.uleb128 0x17
	.long	.LASF1419
	.byte	0xe
	.value	0x533
	.long	0x27a3
	.uleb128 0xb
	.long	0x84
	.byte	0xf
	.byte	0x3d
	.byte	0x1
	.long	0x2919
	.uleb128 0x2
	.long	.LASF1420
	.byte	0
	.uleb128 0x2
	.long	.LASF1421
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1422
	.byte	0x2
	.byte	0
	.uleb128 0x15
	.byte	0x18
	.byte	0xf
	.byte	0x44
	.long	0x2954
	.uleb128 0x3
	.long	.LASF1423
	.byte	0xf
	.byte	0x46
	.byte	0xe
	.long	0x2954
	.byte	0
	.uleb128 0x3
	.long	.LASF1251
	.byte	0xf
	.byte	0x47
	.byte	0xa
	.long	0x118
	.byte	0x8
	.uleb128 0xd
	.string	"sx"
	.byte	0xf
	.byte	0x48
	.byte	0xd
	.long	0x5e5
	.byte	0xc
	.uleb128 0xd
	.string	"sy"
	.byte	0xf
	.byte	0x49
	.byte	0xd
	.long	0x5e5
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	0x243f
	.uleb128 0x5
	.long	.LASF1424
	.byte	0xf
	.byte	0x4b
	.byte	0x3
	.long	0x2919
	.uleb128 0x1c
	.long	.LASF1425
	.byte	0xe0
	.byte	0x10
	.byte	0xcf
	.byte	0x10
	.long	0x2b3d
	.uleb128 0x3
	.long	.LASF1426
	.byte	0x10
	.byte	0xd2
	.byte	0x10
	.long	0x6dc
	.byte	0
	.uleb128 0xd
	.string	"x"
	.byte	0x10
	.byte	0xd5
	.byte	0xe
	.long	0x5e5
	.byte	0x18
	.uleb128 0xd
	.string	"y"
	.byte	0x10
	.byte	0xd6
	.byte	0xe
	.long	0x5e5
	.byte	0x1c
	.uleb128 0xd
	.string	"z"
	.byte	0x10
	.byte	0xd7
	.byte	0xe
	.long	0x5e5
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1427
	.byte	0x10
	.byte	0xda
	.byte	0x14
	.long	0x2b3d
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1428
	.byte	0x10
	.byte	0xdb
	.byte	0x14
	.long	0x2b3d
	.byte	0x30
	.uleb128 0x3
	.long	.LASF120
	.byte	0x10
	.byte	0xde
	.byte	0xe
	.long	0x5ff
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1249
	.byte	0x10
	.byte	0xdf
	.byte	0x12
	.long	0xa37
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1250
	.byte	0x10
	.byte	0xe0
	.byte	0xb
	.long	0x118
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1429
	.byte	0x10
	.byte	0xe4
	.byte	0x14
	.long	0x2b3d
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1430
	.byte	0x10
	.byte	0xe5
	.byte	0x14
	.long	0x2b3d
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1431
	.byte	0x10
	.byte	0xe7
	.byte	0x19
	.long	0x2b47
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1432
	.byte	0x10
	.byte	0xea
	.byte	0xe
	.long	0x5e5
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1433
	.byte	0x10
	.byte	0xeb
	.byte	0xe
	.long	0x5e5
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1412
	.byte	0x10
	.byte	0xee
	.byte	0xe
	.long	0x5e5
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1413
	.byte	0x10
	.byte	0xef
	.byte	0xe
	.long	0x5e5
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1434
	.byte	0x10
	.byte	0xf2
	.byte	0xe
	.long	0x5e5
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1435
	.byte	0x10
	.byte	0xf3
	.byte	0xe
	.long	0x5e5
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1436
	.byte	0x10
	.byte	0xf4
	.byte	0xe
	.long	0x5e5
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1437
	.byte	0x10
	.byte	0xf7
	.byte	0xb
	.long	0x118
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF15
	.byte	0x10
	.byte	0xf9
	.byte	0x11
	.long	0x2797
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1438
	.byte	0x10
	.byte	0xfa
	.byte	0x12
	.long	0x2b4c
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1251
	.byte	0x10
	.byte	0xfc
	.byte	0xb
	.long	0x118
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1423
	.byte	0x10
	.byte	0xfd
	.byte	0xf
	.long	0x2954
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1417
	.byte	0x10
	.byte	0xfe
	.byte	0xb
	.long	0x118
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1439
	.byte	0x10
	.byte	0xff
	.byte	0xb
	.long	0x118
	.byte	0xa4
	.uleb128 0x4
	.long	.LASF1440
	.byte	0x10
	.value	0x102
	.byte	0xb
	.long	0x118
	.byte	0xa8
	.uleb128 0x4
	.long	.LASF1441
	.byte	0x10
	.value	0x103
	.byte	0xb
	.long	0x118
	.byte	0xac
	.uleb128 0x4
	.long	.LASF1442
	.byte	0x10
	.value	0x107
	.byte	0x14
	.long	0x2b3d
	.byte	0xb0
	.uleb128 0x4
	.long	.LASF1401
	.byte	0x10
	.value	0x10b
	.byte	0xb
	.long	0x118
	.byte	0xb8
	.uleb128 0x4
	.long	.LASF1443
	.byte	0x10
	.value	0x10f
	.byte	0xb
	.long	0x118
	.byte	0xbc
	.uleb128 0x4
	.long	.LASF1444
	.byte	0x10
	.value	0x113
	.byte	0x16
	.long	0x2d26
	.byte	0xc0
	.uleb128 0x4
	.long	.LASF1445
	.byte	0x10
	.value	0x116
	.byte	0xb
	.long	0x118
	.byte	0xc8
	.uleb128 0x4
	.long	.LASF1446
	.byte	0x10
	.value	0x119
	.byte	0x11
	.long	0x5d9
	.byte	0xcc
	.uleb128 0x4
	.long	.LASF1447
	.byte	0x10
	.value	0x11c
	.byte	0x14
	.long	0x2b3d
	.byte	0xd8
	.byte	0
	.uleb128 0x6
	.long	0x2965
	.uleb128 0x19
	.long	.LASF1448
	.uleb128 0x6
	.long	0x2b42
	.uleb128 0x6
	.long	0x28ee
	.uleb128 0x33
	.long	.LASF1449
	.value	0x140
	.byte	0x11
	.byte	0x53
	.byte	0x10
	.long	0x2d26
	.uleb128 0xd
	.string	"mo"
	.byte	0x11
	.byte	0x55
	.byte	0xe
	.long	0x2d62
	.byte	0
	.uleb128 0x3
	.long	.LASF1450
	.byte	0x11
	.byte	0x56
	.byte	0x13
	.long	0x2d56
	.byte	0x8
	.uleb128 0xd
	.string	"cmd"
	.byte	0x11
	.byte	0x57
	.byte	0xf
	.long	0x20c
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1451
	.byte	0x11
	.byte	0x5c
	.byte	0xe
	.long	0x5e5
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1452
	.byte	0x11
	.byte	0x5e
	.byte	0xe
	.long	0x5e5
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1453
	.byte	0x11
	.byte	0x60
	.byte	0x16
	.long	0x5e5
	.byte	0x1c
	.uleb128 0xd
	.string	"bob"
	.byte	0x11
	.byte	0x62
	.byte	0x16
	.long	0x5e5
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1439
	.byte	0x11
	.byte	0x66
	.byte	0xb
	.long	0x118
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1454
	.byte	0x11
	.byte	0x67
	.byte	0xb
	.long	0x118
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1455
	.byte	0x11
	.byte	0x69
	.byte	0xb
	.long	0x118
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1456
	.byte	0x11
	.byte	0x6c
	.byte	0xb
	.long	0x2d67
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1457
	.byte	0x11
	.byte	0x6d
	.byte	0xe
	.long	0x2d77
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1458
	.byte	0x11
	.byte	0x6e
	.byte	0xe
	.long	0x8b
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1459
	.byte	0x11
	.byte	0x71
	.byte	0xb
	.long	0x2d87
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1460
	.byte	0x11
	.byte	0x72
	.byte	0x12
	.long	0x51f
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1461
	.byte	0x11
	.byte	0x75
	.byte	0x12
	.long	0x51f
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1462
	.byte	0x11
	.byte	0x77
	.byte	0xe
	.long	0x2d97
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1463
	.byte	0x11
	.byte	0x78
	.byte	0xb
	.long	0x2d87
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1464
	.byte	0x11
	.byte	0x79
	.byte	0xb
	.long	0x2d87
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1465
	.byte	0x11
	.byte	0x7c
	.byte	0xb
	.long	0x118
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1466
	.byte	0x11
	.byte	0x7d
	.byte	0xb
	.long	0x118
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1467
	.byte	0x11
	.byte	0x81
	.byte	0xb
	.long	0x118
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1468
	.byte	0x11
	.byte	0x84
	.byte	0xb
	.long	0x118
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1469
	.byte	0x11
	.byte	0x87
	.byte	0xb
	.long	0x118
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1470
	.byte	0x11
	.byte	0x88
	.byte	0xb
	.long	0x118
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1471
	.byte	0x11
	.byte	0x89
	.byte	0xb
	.long	0x118
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1472
	.byte	0x11
	.byte	0x8c
	.byte	0xc
	.long	0x253
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1473
	.byte	0x11
	.byte	0x8f
	.byte	0xb
	.long	0x118
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1474
	.byte	0x11
	.byte	0x90
	.byte	0xb
	.long	0x118
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1475
	.byte	0x11
	.byte	0x93
	.byte	0xe
	.long	0x2d62
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1476
	.byte	0x11
	.byte	0x96
	.byte	0xb
	.long	0x118
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1477
	.byte	0x11
	.byte	0x9a
	.byte	0xb
	.long	0x118
	.byte	0xfc
	.uleb128 0x1d
	.long	.LASF1478
	.byte	0x9e
	.byte	0xb
	.long	0x118
	.value	0x100
	.uleb128 0x1d
	.long	.LASF1479
	.byte	0xa1
	.byte	0xf
	.long	0x2da7
	.value	0x108
	.uleb128 0x1d
	.long	.LASF1480
	.byte	0xa4
	.byte	0xe
	.long	0x8b
	.value	0x138
	.byte	0
	.uleb128 0x6
	.long	0x2b51
	.uleb128 0x17
	.long	.LASF1481
	.byte	0x10
	.value	0x11e
	.long	0x2965
	.uleb128 0xb
	.long	0x84
	.byte	0x11
	.byte	0x36
	.byte	0x1
	.long	0x2d56
	.uleb128 0x2
	.long	.LASF1482
	.byte	0
	.uleb128 0x2
	.long	.LASF1483
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1484
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF1485
	.byte	0x11
	.byte	0x3e
	.byte	0x3
	.long	0x2d37
	.uleb128 0x6
	.long	0x2d2b
	.uleb128 0xa
	.long	0x118
	.long	0x2d77
	.uleb128 0x9
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.long	0x8b
	.long	0x2d87
	.uleb128 0x9
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.long	0x118
	.long	0x2d97
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.long	0x8b
	.long	0x2da7
	.uleb128 0x9
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.long	0x2959
	.long	0x2db7
	.uleb128 0x9
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF1486
	.byte	0x11
	.byte	0xa6
	.byte	0x3
	.long	0x2b51
	.uleb128 0xb
	.long	0x84
	.byte	0x12
	.byte	0x34
	.byte	0x1
	.long	0x2ddc
	.uleb128 0x2
	.long	.LASF1487
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1488
	.byte	0x2
	.byte	0
	.uleb128 0x15
	.byte	0x68
	.byte	0x12
	.byte	0x3e
	.long	0x2e33
	.uleb128 0x3
	.long	.LASF1489
	.byte	0x12
	.byte	0x41
	.byte	0xf
	.long	0x84
	.byte	0
	.uleb128 0x3
	.long	.LASF1490
	.byte	0x12
	.byte	0x43
	.byte	0xb
	.long	0x97
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1491
	.byte	0x12
	.byte	0x45
	.byte	0xb
	.long	0x97
	.byte	0x5
	.uleb128 0x3
	.long	.LASF1444
	.byte	0x12
	.byte	0x46
	.byte	0xb
	.long	0x97
	.byte	0x6
	.uleb128 0x3
	.long	.LASF1492
	.byte	0x12
	.byte	0x47
	.byte	0xb
	.long	0x97
	.byte	0x7
	.uleb128 0x3
	.long	.LASF1493
	.byte	0x12
	.byte	0x48
	.byte	0xf
	.long	0x2e33
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.long	0x20c
	.long	0x2e43
	.uleb128 0x9
	.long	0x43
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.long	.LASF1494
	.byte	0x12
	.byte	0x4a
	.byte	0x3
	.long	0x2ddc
	.uleb128 0x15
	.byte	0x90
	.byte	0x12
	.byte	0x4f
	.long	0x2f41
	.uleb128 0xd
	.string	"id"
	.byte	0x12
	.byte	0x52
	.byte	0xb
	.long	0x234
	.byte	0
	.uleb128 0x3
	.long	.LASF1495
	.byte	0x12
	.byte	0x55
	.byte	0xc
	.long	0x205
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1496
	.byte	0x12
	.byte	0x58
	.byte	0xc
	.long	0x205
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1497
	.byte	0x12
	.byte	0x5a
	.byte	0xc
	.long	0x205
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1498
	.byte	0x12
	.byte	0x5d
	.byte	0xc
	.long	0x205
	.byte	0xe
	.uleb128 0x3
	.long	.LASF1499
	.byte	0x12
	.byte	0x61
	.byte	0xc
	.long	0x205
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1500
	.byte	0x12
	.byte	0x63
	.byte	0xc
	.long	0x205
	.byte	0x12
	.uleb128 0x3
	.long	.LASF1501
	.byte	0x12
	.byte	0x65
	.byte	0xc
	.long	0x205
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1502
	.byte	0x12
	.byte	0x67
	.byte	0xc
	.long	0x205
	.byte	0x16
	.uleb128 0x3
	.long	.LASF1503
	.byte	0x12
	.byte	0x69
	.byte	0xc
	.long	0x205
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1504
	.byte	0x12
	.byte	0x6a
	.byte	0xc
	.long	0x205
	.byte	0x1a
	.uleb128 0xd
	.string	"map"
	.byte	0x12
	.byte	0x6b
	.byte	0xc
	.long	0x205
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1505
	.byte	0x12
	.byte	0x6c
	.byte	0xc
	.long	0x205
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1506
	.byte	0x12
	.byte	0x6f
	.byte	0xc
	.long	0x205
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1507
	.byte	0x12
	.byte	0x70
	.byte	0xc
	.long	0x205
	.byte	0x22
	.uleb128 0x3
	.long	.LASF1508
	.byte	0x12
	.byte	0x78
	.byte	0xc
	.long	0x205
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1509
	.byte	0x12
	.byte	0x7a
	.byte	0xc
	.long	0x205
	.byte	0x26
	.uleb128 0x3
	.long	.LASF1510
	.byte	0x12
	.byte	0x7d
	.byte	0x11
	.long	0x2e43
	.byte	0x28
	.byte	0
	.uleb128 0x5
	.long	.LASF1511
	.byte	0x12
	.byte	0x7f
	.byte	0x3
	.long	0x2e4f
	.uleb128 0x7
	.long	.LASF1512
	.byte	0x13
	.byte	0x31
	.byte	0x11
	.long	0x8b
	.uleb128 0x7
	.long	.LASF1513
	.byte	0x13
	.byte	0x32
	.byte	0x11
	.long	0x8b
	.uleb128 0x7
	.long	.LASF1514
	.byte	0x13
	.byte	0x4d
	.byte	0x12
	.long	0x48d
	.uleb128 0x7
	.long	.LASF1515
	.byte	0x13
	.byte	0x4e
	.byte	0x19
	.long	0x118
	.uleb128 0x7
	.long	.LASF1516
	.byte	0x13
	.byte	0x4f
	.byte	0xd
	.long	0x118
	.uleb128 0x7
	.long	.LASF1517
	.byte	0x13
	.byte	0x51
	.byte	0x12
	.long	0x8b
	.uleb128 0x7
	.long	.LASF1518
	.byte	0x13
	.byte	0x5c
	.byte	0x11
	.long	0x8b
	.uleb128 0x7
	.long	.LASF1502
	.byte	0x13
	.byte	0x60
	.byte	0x11
	.long	0x8b
	.uleb128 0x7
	.long	.LASF1506
	.byte	0x13
	.byte	0x9e
	.byte	0xd
	.long	0x118
	.uleb128 0x7
	.long	.LASF1519
	.byte	0x13
	.byte	0x9f
	.byte	0xd
	.long	0x118
	.uleb128 0x7
	.long	.LASF1520
	.byte	0x13
	.byte	0xb4
	.byte	0x11
	.long	0x8b
	.uleb128 0x7
	.long	.LASF1521
	.byte	0x13
	.byte	0xb7
	.byte	0x11
	.long	0x8b
	.uleb128 0x7
	.long	.LASF1522
	.byte	0x13
	.byte	0xb8
	.byte	0x11
	.long	0x8b
	.uleb128 0x7
	.long	.LASF1523
	.byte	0x13
	.byte	0xd0
	.byte	0xd
	.long	0x118
	.uleb128 0xa
	.long	0x2db7
	.long	0x3005
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF1524
	.byte	0x13
	.byte	0xd4
	.byte	0x11
	.long	0x2ff5
	.uleb128 0xa
	.long	0x8b
	.long	0x3021
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF1525
	.byte	0x13
	.byte	0xd7
	.byte	0x12
	.long	0x3011
	.uleb128 0x7
	.long	.LASF1526
	.byte	0x13
	.byte	0xf5
	.byte	0x10
	.long	0x445
	.uleb128 0x11
	.long	.LASF1527
	.byte	0x13
	.value	0x102
	.byte	0x19
	.long	0x8b
	.uleb128 0x11
	.long	.LASF1528
	.byte	0x13
	.value	0x112
	.byte	0x14
	.long	0x3053
	.uleb128 0x6
	.long	0x2f41
	.uleb128 0x11
	.long	.LASF1529
	.byte	0x13
	.value	0x115
	.byte	0x15
	.long	0x3065
	.uleb128 0x6
	.long	0x2e43
	.uleb128 0x11
	.long	.LASF1530
	.byte	0x13
	.value	0x118
	.byte	0x12
	.long	0x2e33
	.uleb128 0x11
	.long	.LASF1531
	.byte	0x13
	.value	0x11b
	.byte	0xd
	.long	0x118
	.uleb128 0xa
	.long	0x118
	.long	0x3094
	.uleb128 0x9
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x11
	.long	.LASF1532
	.byte	0x13
	.value	0x11c
	.byte	0x19
	.long	0x3084
	.uleb128 0xa
	.long	0x20c
	.long	0x30b7
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.uleb128 0x9
	.long	0x43
	.byte	0xb
	.byte	0
	.uleb128 0x11
	.long	.LASF1533
	.byte	0x13
	.value	0x11e
	.byte	0x19
	.long	0x30a1
	.uleb128 0x11
	.long	.LASF1500
	.byte	0x13
	.value	0x11f
	.byte	0xd
	.long	0x118
	.uleb128 0x12
	.long	0x3046
	.byte	0x2c
	.byte	0xc
	.uleb128 0x9
	.byte	0x3
	.quad	doomcom
	.uleb128 0x12
	.long	0x3058
	.byte	0x2d
	.byte	0xd
	.uleb128 0x9
	.byte	0x3
	.quad	netbuffer
	.uleb128 0x12
	.long	0x306a
	.byte	0x3c
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	localcmds
	.uleb128 0x12
	.long	0x30b7
	.byte	0x3e
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	netcmds
	.uleb128 0x12
	.long	0x3094
	.byte	0x3f
	.byte	0xe
	.uleb128 0x9
	.byte	0x3
	.quad	nettics
	.uleb128 0xa
	.long	0x8b
	.long	0x3136
	.uleb128 0x9
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.long	.LASF1534
	.byte	0x40
	.byte	0xa
	.long	0x3126
	.uleb128 0x9
	.byte	0x3
	.quad	nodeingame
	.uleb128 0x10
	.long	.LASF1535
	.byte	0x41
	.byte	0xa
	.long	0x3126
	.uleb128 0x9
	.byte	0x3
	.quad	remoteresend
	.uleb128 0x10
	.long	.LASF1536
	.byte	0x42
	.byte	0x6
	.long	0x3084
	.uleb128 0x9
	.byte	0x3
	.quad	resendto
	.uleb128 0x10
	.long	.LASF1537
	.byte	0x43
	.byte	0x6
	.long	0x3084
	.uleb128 0x9
	.byte	0x3
	.quad	resendcount
	.uleb128 0x10
	.long	.LASF1538
	.byte	0x45
	.byte	0x6
	.long	0x2d87
	.uleb128 0x9
	.byte	0x3
	.quad	nodeforplayer
	.uleb128 0x12
	.long	0x3077
	.byte	0x47
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	maketic
	.uleb128 0x10
	.long	.LASF1539
	.byte	0x48
	.byte	0x6
	.long	0x118
	.uleb128 0x9
	.byte	0x3
	.quad	lastnettic
	.uleb128 0x10
	.long	.LASF1540
	.byte	0x49
	.byte	0x6
	.long	0x118
	.uleb128 0x9
	.byte	0x3
	.quad	skiptics
	.uleb128 0x12
	.long	0x30c4
	.byte	0x4a
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	ticdup
	.uleb128 0x10
	.long	.LASF1541
	.byte	0x4b
	.byte	0x6
	.long	0x118
	.uleb128 0x9
	.byte	0x3
	.quad	maxsend
	.uleb128 0x10
	.long	.LASF1542
	.byte	0x52
	.byte	0xa
	.long	0x8b
	.uleb128 0x9
	.byte	0x3
	.quad	reboundpacket
	.uleb128 0x10
	.long	.LASF1543
	.byte	0x53
	.byte	0xc
	.long	0x2e43
	.uleb128 0x9
	.byte	0x3
	.quad	reboundstore
	.uleb128 0xa
	.long	0x4a
	.long	0x323a
	.uleb128 0x9
	.long	0x43
	.byte	0x4f
	.byte	0
	.uleb128 0x16
	.long	.LASF1544
	.value	0x103
	.byte	0x9
	.long	0x322a
	.uleb128 0x9
	.byte	0x3
	.quad	exitmsg
	.uleb128 0x16
	.long	.LASF1545
	.value	0x16e
	.byte	0xa
	.long	0x118
	.uleb128 0x9
	.byte	0x3
	.quad	gametime
	.uleb128 0x16
	.long	.LASF1546
	.value	0x275
	.byte	0x5
	.long	0x2d87
	.uleb128 0x9
	.byte	0x3
	.quad	frametics
	.uleb128 0x16
	.long	.LASF1547
	.value	0x276
	.byte	0x5
	.long	0x118
	.uleb128 0x9
	.byte	0x3
	.quad	frameon
	.uleb128 0x16
	.long	.LASF1548
	.value	0x277
	.byte	0x5
	.long	0x2d87
	.uleb128 0x9
	.byte	0x3
	.quad	frameskip
	.uleb128 0x16
	.long	.LASF1549
	.value	0x278
	.byte	0x5
	.long	0x118
	.uleb128 0x9
	.byte	0x3
	.quad	oldnettics
	.uleb128 0x11
	.long	.LASF1550
	.byte	0x1
	.value	0x27a
	.byte	0x10
	.long	0x8b
	.uleb128 0x13
	.long	.LASF1551
	.byte	0x14
	.byte	0x44
	.uleb128 0x13
	.long	.LASF1552
	.byte	0x1
	.byte	0x50
	.uleb128 0x13
	.long	.LASF1553
	.byte	0x15
	.byte	0x2b
	.uleb128 0x1e
	.long	.LASF1558
	.byte	0x19
	.byte	0x31
	.long	0x32f1
	.uleb128 0xc
	.long	0x118
	.byte	0
	.uleb128 0x25
	.long	.LASF1554
	.byte	0x16
	.byte	0xb8
	.byte	0xc
	.long	0x118
	.long	0x3307
	.uleb128 0xc
	.long	0x445
	.byte	0
	.uleb128 0x26
	.long	.LASF1555
	.value	0x16b
	.long	0x118
	.long	0x331d
	.uleb128 0xc
	.long	0x43b
	.uleb128 0x1a
	.byte	0
	.uleb128 0x13
	.long	.LASF1556
	.byte	0x17
	.byte	0x24
	.uleb128 0x25
	.long	.LASF1557
	.byte	0x18
	.byte	0x3d
	.byte	0xe
	.long	0x224
	.long	0x3344
	.uleb128 0xc
	.long	0x224
	.uleb128 0xc
	.long	0x118
	.uleb128 0xc
	.long	0x218
	.byte	0
	.uleb128 0x1e
	.long	.LASF1559
	.byte	0x1
	.byte	0x4f
	.long	0x3355
	.uleb128 0xc
	.long	0x3355
	.byte	0
	.uleb128 0x6
	.long	0x20c
	.uleb128 0x13
	.long	.LASF1560
	.byte	0x1
	.byte	0x4e
	.uleb128 0x13
	.long	.LASF1561
	.byte	0x1a
	.byte	0x40
	.uleb128 0x27
	.long	.LASF1562
	.byte	0x1a
	.byte	0x2d
	.byte	0x5
	.long	0x118
	.uleb128 0x27
	.long	.LASF1563
	.byte	0x14
	.byte	0x3d
	.byte	0x9
	.long	0x8b
	.uleb128 0x13
	.long	.LASF1564
	.byte	0x17
	.byte	0x25
	.uleb128 0x26
	.long	.LASF1565
	.value	0x165
	.long	0x118
	.long	0x33a2
	.uleb128 0xc
	.long	0x44a
	.uleb128 0xc
	.long	0x440
	.uleb128 0x1a
	.byte	0
	.uleb128 0x1e
	.long	.LASF1566
	.byte	0x1a
	.byte	0x59
	.long	0x33b4
	.uleb128 0xc
	.long	0x253
	.uleb128 0x1a
	.byte	0
	.uleb128 0x14
	.long	.LASF1575
	.value	0x27c
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x348c
	.uleb128 0xe
	.string	"i"
	.value	0x27e
	.byte	0xa
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x8
	.long	.LASF1568
	.value	0x27f
	.byte	0xa
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.long	.LASF1569
	.value	0x280
	.byte	0xa
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.long	.LASF1570
	.value	0x281
	.byte	0x10
	.long	0x118
	.uleb128 0x9
	.byte	0x3
	.quad	oldentertics.0
	.uleb128 0x8
	.long	.LASF1571
	.value	0x282
	.byte	0xa
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.long	.LASF1572
	.value	0x283
	.byte	0xa
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.long	.LASF1573
	.value	0x284
	.byte	0xa
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.long	.LASF1574
	.value	0x285
	.byte	0xa
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0xe
	.string	"cmd"
	.value	0x2ef
	.byte	0xd
	.long	0x3355
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"buf"
	.value	0x2f0
	.byte	0x9
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xe
	.string	"j"
	.value	0x2f1
	.byte	0x9
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF1576
	.value	0x25a
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x34c4
	.uleb128 0xe
	.string	"i"
	.value	0x25c
	.byte	0x15
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"j"
	.value	0x25c
	.byte	0x18
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.long	.LASF1577
	.value	0x22b
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x34ef
	.uleb128 0xe
	.string	"i"
	.value	0x22d
	.byte	0x15
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.long	.LASF1578
	.value	0x1dc
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x352a
	.uleb128 0xe
	.string	"i"
	.value	0x1de
	.byte	0xa
	.long	0x118
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x8
	.long	.LASF1579
	.value	0x1df
	.byte	0xd
	.long	0x3126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x14
	.long	.LASF1580
	.value	0x1c5
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3565
	.uleb128 0xe
	.string	"ev"
	.value	0x1c7
	.byte	0xe
	.long	0x3565
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.long	.LASF1581
	.value	0x1c8
	.byte	0xa
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.long	0x11f
	.uleb128 0x14
	.long	.LASF1582
	.value	0x170
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x35ef
	.uleb128 0x8
	.long	.LASF1583
	.value	0x172
	.byte	0x15
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.long	.LASF1584
	.value	0x173
	.byte	0x15
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"i"
	.value	0x174
	.byte	0xc
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.string	"j"
	.value	0x174
	.byte	0xe
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.long	.LASF1585
	.value	0x175
	.byte	0xc
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.long	.LASF1586
	.value	0x176
	.byte	0xc
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF1602
	.byte	0x1
	.value	0x1bc
	.byte	0x3
	.quad	.L63
	.byte	0
	.uleb128 0x14
	.long	.LASF1587
	.value	0x105
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x3688
	.uleb128 0x8
	.long	.LASF1588
	.value	0x107
	.byte	0xa
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.long	.LASF1589
	.value	0x108
	.byte	0xa
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"src"
	.value	0x109
	.byte	0xf
	.long	0x3355
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.long	.LASF1590
	.value	0x109
	.byte	0x15
	.long	0x3355
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.long	.LASF1591
	.value	0x10a
	.byte	0xa
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.long	.LASF1585
	.value	0x10b
	.byte	0xa
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x8
	.long	.LASF1592
	.value	0x156
	.byte	0xb
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF1596
	.byte	0xc0
	.byte	0x9
	.long	0x8b
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x36d6
	.uleb128 0x1b
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x18
	.long	.LASF1593
	.byte	0xe6
	.byte	0x7
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.string	"i"
	.byte	0xe7
	.byte	0x6
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1594
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x373b
	.uleb128 0x29
	.long	.LASF1595
	.byte	0x90
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.long	.LASF1417
	.byte	0x91
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1f
	.string	"i"
	.byte	0xa8
	.byte	0x7
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF1593
	.byte	0xa9
	.byte	0x7
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF1597
	.byte	0x78
	.byte	0x5
	.long	0x118
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x377a
	.uleb128 0x36
	.string	"low"
	.byte	0x1
	.byte	0x78
	.byte	0x15
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.long	.LASF1598
	.byte	0x7a
	.byte	0x9
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x37
	.long	.LASF1599
	.byte	0x1
	.byte	0x62
	.byte	0xa
	.long	0x84
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x37bb
	.uleb128 0x1f
	.string	"c"
	.byte	0x64
	.byte	0xf
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.string	"i"
	.byte	0x65
	.byte	0xa
	.long	0x118
	.uleb128 0x2a
	.string	"l"
	.byte	0x65
	.byte	0xc
	.long	0x118
	.byte	0
	.uleb128 0x38
	.long	.LASF1603
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.long	0x118
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x19
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 17
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x37
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
	.uleb128 0x24
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.sleb128 22
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.sleb128 7
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x34
	.uleb128 0xa
	.byte	0
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
	.uleb128 0x36
	.uleb128 0x5
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
	.uleb128 0x38
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
.LASF1591:
	.string	"realend"
.LASF917:
	.string	"S_BSPI_RUN3"
.LASF918:
	.string	"S_BSPI_RUN4"
.LASF919:
	.string	"S_BSPI_RUN5"
.LASF920:
	.string	"S_BSPI_RUN6"
.LASF921:
	.string	"S_BSPI_RUN7"
.LASF922:
	.string	"S_BSPI_RUN8"
.LASF923:
	.string	"S_BSPI_RUN9"
.LASF207:
	.string	"SPR_YSKU"
.LASF1475:
	.string	"attacker"
.LASF570:
	.string	"S_FIRE10"
.LASF571:
	.string	"S_FIRE11"
.LASF572:
	.string	"S_FIRE12"
.LASF573:
	.string	"S_FIRE13"
.LASF574:
	.string	"S_FIRE14"
.LASF575:
	.string	"S_FIRE15"
.LASF576:
	.string	"S_FIRE16"
.LASF577:
	.string	"S_FIRE17"
.LASF76:
	.string	"_unused2"
.LASF579:
	.string	"S_FIRE19"
.LASF1515:
	.string	"startepisode"
.LASF1391:
	.string	"MT_MISC84"
.LASF1324:
	.string	"MT_MISC20"
.LASF1138:
	.string	"S_MEGA2"
.LASF62:
	.string	"_fileno"
.LASF1140:
	.string	"S_MEGA4"
.LASF1328:
	.string	"MT_MISC24"
.LASF1329:
	.string	"MT_MISC25"
.LASF1331:
	.string	"MT_MISC26"
.LASF1332:
	.string	"MT_MISC27"
.LASF1333:
	.string	"MT_MISC28"
.LASF1336:
	.string	"MT_MISC29"
.LASF769:
	.string	"S_SARG_PAIN2"
.LASF1443:
	.string	"threshold"
.LASF96:
	.string	"wp_pistol"
.LASF248:
	.string	"SPR_COL1"
.LASF249:
	.string	"SPR_COL2"
.LASF250:
	.string	"SPR_COL3"
.LASF251:
	.string	"SPR_COL4"
.LASF260:
	.string	"SPR_COL5"
.LASF254:
	.string	"SPR_COL6"
.LASF1546:
	.string	"frametics"
.LASF580:
	.string	"S_FIRE20"
.LASF581:
	.string	"S_FIRE21"
.LASF582:
	.string	"S_FIRE22"
.LASF583:
	.string	"S_FIRE23"
.LASF584:
	.string	"S_FIRE24"
.LASF234:
	.string	"SPR_COLU"
.LASF586:
	.string	"S_FIRE26"
.LASF587:
	.string	"S_FIRE27"
.LASF588:
	.string	"S_FIRE28"
.LASF589:
	.string	"S_FIRE29"
.LASF1593:
	.string	"realretrans"
.LASF1337:
	.string	"MT_MISC30"
.LASF1252:
	.string	"action"
.LASF1339:
	.string	"MT_MISC32"
.LASF1340:
	.string	"MT_MISC33"
.LASF931:
	.string	"S_BSPI_PAIN"
.LASF1342:
	.string	"MT_MISC35"
.LASF403:
	.string	"S_BFGEXP"
.LASF110:
	.string	"am_misl"
.LASF1345:
	.string	"MT_MISC38"
.LASF1346:
	.string	"MT_MISC39"
.LASF933:
	.string	"S_BSPI_DIE1"
.LASF1422:
	.string	"NUMPSPRITES"
.LASF938:
	.string	"S_BSPI_DIE6"
.LASF634:
	.string	"S_SKEL_RAISE4"
.LASF1451:
	.string	"viewz"
.LASF1512:
	.string	"nomonsters"
.LASF829:
	.string	"S_BOSS_RAISE1"
.LASF830:
	.string	"S_BOSS_RAISE2"
.LASF1271:
	.string	"MT_HEAD"
.LASF831:
	.string	"S_BOSS_RAISE3"
.LASF590:
	.string	"S_FIRE30"
.LASF735:
	.string	"S_TROO_PAIN"
.LASF1024:
	.string	"S_SSWV_DIE1"
.LASF834:
	.string	"S_BOSS_RAISE6"
.LASF1026:
	.string	"S_SSWV_DIE3"
.LASF1027:
	.string	"S_SSWV_DIE4"
.LASF1028:
	.string	"S_SSWV_DIE5"
.LASF202:
	.string	"SPR_BKEY"
.LASF846:
	.string	"S_BOS2_ATK1"
.LASF847:
	.string	"S_BOS2_ATK2"
.LASF848:
	.string	"S_BOS2_ATK3"
.LASF236:
	.string	"SPR_GOR1"
.LASF243:
	.string	"SPR_GOR2"
.LASF67:
	.string	"_shortbuf"
.LASF245:
	.string	"SPR_GOR4"
.LASF246:
	.string	"SPR_GOR5"
.LASF1349:
	.string	"MT_MISC42"
.LASF1350:
	.string	"MT_MISC43"
.LASF603:
	.string	"S_SKEL_RUN1"
.LASF604:
	.string	"S_SKEL_RUN2"
.LASF605:
	.string	"S_SKEL_RUN3"
.LASF606:
	.string	"S_SKEL_RUN4"
.LASF607:
	.string	"S_SKEL_RUN5"
.LASF608:
	.string	"S_SKEL_RUN6"
.LASF609:
	.string	"S_SKEL_RUN7"
.LASF610:
	.string	"S_SKEL_RUN8"
.LASF611:
	.string	"S_SKEL_RUN9"
.LASF99:
	.string	"wp_missile"
.LASF1089:
	.string	"S_BEXP2"
.LASF1399:
	.string	"seestate"
.LASF1498:
	.string	"datalength"
.LASF784:
	.string	"S_HEAD_ATK1"
.LASF785:
	.string	"S_HEAD_ATK2"
.LASF786:
	.string	"S_HEAD_ATK3"
.LASF1038:
	.string	"S_SSWV_RAISE1"
.LASF1039:
	.string	"S_SSWV_RAISE2"
.LASF1040:
	.string	"S_SSWV_RAISE3"
.LASF1041:
	.string	"S_SSWV_RAISE4"
.LASF1042:
	.string	"S_SSWV_RAISE5"
.LASF120:
	.string	"angle"
.LASF1556:
	.string	"I_InitNetwork"
.LASF1266:
	.string	"MT_FATSHOT"
.LASF222:
	.string	"SPR_CELL"
.LASF223:
	.string	"SPR_CELP"
.LASF1204:
	.string	"S_HEARTCOL"
.LASF1121:
	.string	"S_MEDI"
.LASF1128:
	.string	"S_PINV"
.LASF1315:
	.string	"MT_INS"
.LASF1358:
	.string	"MT_MISC51"
.LASF1359:
	.string	"MT_MISC52"
.LASF1313:
	.string	"MT_INV"
.LASF1361:
	.string	"MT_MISC54"
.LASF1218:
	.string	"S_BTORCHSHRT"
.LASF339:
	.string	"S_MISSILEUP"
.LASF1364:
	.string	"MT_MISC57"
.LASF1365:
	.string	"MT_MISC58"
.LASF1366:
	.string	"MT_MISC59"
.LASF516:
	.string	"S_SPOS_RAISE1"
.LASF310:
	.string	"S_SGUNFLASH1"
.LASF311:
	.string	"S_SGUNFLASH2"
.LASF858:
	.string	"S_BOS2_RAISE1"
.LASF859:
	.string	"S_BOS2_RAISE2"
.LASF860:
	.string	"S_BOS2_RAISE3"
.LASF861:
	.string	"S_BOS2_RAISE4"
.LASF862:
	.string	"S_BOS2_RAISE5"
.LASF48:
	.string	"_flags"
.LASF864:
	.string	"S_BOS2_RAISE7"
.LASF623:
	.string	"S_SKEL_PAIN"
.LASF1547:
	.string	"frameon"
.LASF1110:
	.string	"S_RKEY"
.LASF137:
	.string	"next"
.LASF292:
	.string	"S_PISTOLUP"
.LASF978:
	.string	"S_CYBER_DIE8"
.LASF46:
	.string	"__off_t"
.LASF1367:
	.string	"MT_MISC60"
.LASF1368:
	.string	"MT_MISC61"
.LASF1369:
	.string	"MT_MISC62"
.LASF1370:
	.string	"MT_MISC63"
.LASF1371:
	.string	"MT_MISC64"
.LASF1372:
	.string	"MT_MISC65"
.LASF1373:
	.string	"MT_MISC66"
.LASF1374:
	.string	"MT_MISC67"
.LASF407:
	.string	"S_EXPLODE1"
.LASF408:
	.string	"S_EXPLODE2"
.LASF409:
	.string	"S_EXPLODE3"
.LASF1573:
	.string	"counts"
.LASF1555:
	.string	"printf"
.LASF598:
	.string	"S_TRACEEXP1"
.LASF599:
	.string	"S_TRACEEXP2"
.LASF600:
	.string	"S_TRACEEXP3"
.LASF986:
	.string	"S_PAIN_RUN5"
.LASF1088:
	.string	"S_BEXP"
.LASF987:
	.string	"S_PAIN_RUN6"
.LASF1476:
	.string	"extralight"
.LASF1597:
	.string	"ExpandTics"
.LASF1205:
	.string	"S_HEARTCOL2"
.LASF384:
	.string	"S_RBALLX1"
.LASF385:
	.string	"S_RBALLX2"
.LASF1413:
	.string	"height"
.LASF1298:
	.string	"MT_TELEPORTMAN"
.LASF1525:
	.string	"playeringame"
.LASF68:
	.string	"_lock"
.LASF1377:
	.string	"MT_MISC70"
.LASF167:
	.string	"SPR_IFOG"
.LASF1379:
	.string	"MT_MISC72"
.LASF1380:
	.string	"MT_MISC73"
.LASF1381:
	.string	"MT_MISC74"
.LASF1382:
	.string	"MT_MISC75"
.LASF1383:
	.string	"MT_MISC76"
.LASF1211:
	.string	"S_GREENTORCH2"
.LASF1212:
	.string	"S_GREENTORCH3"
.LASF1213:
	.string	"S_GREENTORCH4"
.LASF1052:
	.string	"S_COMMKEEN9"
.LASF701:
	.string	"S_CPOS_PAIN2"
.LASF924:
	.string	"S_BSPI_RUN10"
.LASF925:
	.string	"S_BSPI_RUN11"
.LASF926:
	.string	"S_BSPI_RUN12"
.LASF1008:
	.string	"S_SSWV_RUN1"
.LASF1009:
	.string	"S_SSWV_RUN2"
.LASF1010:
	.string	"S_SSWV_RUN3"
.LASF1011:
	.string	"S_SSWV_RUN4"
.LASF1012:
	.string	"S_SSWV_RUN5"
.LASF1013:
	.string	"S_SSWV_RUN6"
.LASF1014:
	.string	"S_SSWV_RUN7"
.LASF1015:
	.string	"S_SSWV_RUN8"
.LASF1193:
	.string	"S_SKULLCOL"
.LASF1265:
	.string	"MT_FATSO"
.LASF737:
	.string	"S_TROO_DIE1"
.LASF738:
	.string	"S_TROO_DIE2"
.LASF739:
	.string	"S_TROO_DIE3"
.LASF740:
	.string	"S_TROO_DIE4"
.LASF741:
	.string	"S_TROO_DIE5"
.LASF1510:
	.string	"data"
.LASF1118:
	.string	"S_YSKULL"
.LASF1119:
	.string	"S_YSKULL2"
.LASF220:
	.string	"SPR_ROCK"
.LASF1290:
	.string	"MT_ROCKET"
.LASF1388:
	.string	"MT_MISC81"
.LASF1389:
	.string	"MT_MISC82"
.LASF1390:
	.string	"MT_MISC83"
.LASF696:
	.string	"S_CPOS_ATK1"
.LASF697:
	.string	"S_CPOS_ATK2"
.LASF698:
	.string	"S_CPOS_ATK3"
.LASF699:
	.string	"S_CPOS_ATK4"
.LASF1257:
	.string	"MT_PLAYER"
.LASF232:
	.string	"SPR_SHOT"
.LASF425:
	.string	"S_IFOG2"
.LASF426:
	.string	"S_IFOG3"
.LASF427:
	.string	"S_IFOG4"
.LASF428:
	.string	"S_IFOG5"
.LASF161:
	.string	"SPR_PLSE"
.LASF153:
	.string	"SPR_PLSF"
.LASF152:
	.string	"SPR_PLSG"
.LASF821:
	.string	"S_BOSS_PAIN2"
.LASF1506:
	.string	"consoleplayer"
.LASF521:
	.string	"S_VILE_STND"
.LASF1516:
	.string	"startmap"
.LASF1049:
	.string	"S_COMMKEEN6"
.LASF1050:
	.string	"S_COMMKEEN7"
.LASF1051:
	.string	"S_COMMKEEN8"
.LASF160:
	.string	"SPR_PLSS"
.LASF900:
	.string	"S_SPID_PAIN2"
.LASF1414:
	.string	"mass"
.LASF273:
	.string	"SPR_POB1"
.LASF274:
	.string	"SPR_POB2"
.LASF1122:
	.string	"S_SOUL"
.LASF1132:
	.string	"S_PSTR"
.LASF85:
	.string	"sk_hard"
.LASF964:
	.string	"S_CYBER_ATK1"
.LASF965:
	.string	"S_CYBER_ATK2"
.LASF966:
	.string	"S_CYBER_ATK3"
.LASF967:
	.string	"S_CYBER_ATK4"
.LASF26:
	.string	"BT_WEAPONSHIFT"
.LASF23:
	.string	"BT_SPECIALMASK"
.LASF1159:
	.string	"S_BFUG"
.LASF199:
	.string	"SPR_FCAN"
.LASF642:
	.string	"S_FATT_STND"
.LASF1079:
	.string	"S_BRAINEXPLODE1"
.LASF1080:
	.string	"S_BRAINEXPLODE2"
.LASF1081:
	.string	"S_BRAINEXPLODE3"
.LASF363:
	.string	"S_BFGUP"
.LASF204:
	.string	"SPR_YKEY"
.LASF750:
	.string	"S_TROO_RAISE1"
.LASF751:
	.string	"S_TROO_RAISE2"
.LASF752:
	.string	"S_TROO_RAISE3"
.LASF753:
	.string	"S_TROO_RAISE4"
.LASF754:
	.string	"S_TROO_RAISE5"
.LASF1163:
	.string	"S_PLAS"
.LASF1045:
	.string	"S_COMMKEEN2"
.LASF1046:
	.string	"S_COMMKEEN3"
.LASF1047:
	.string	"S_COMMKEEN4"
.LASF1048:
	.string	"S_COMMKEEN5"
.LASF429:
	.string	"S_PLAY"
.LASF995:
	.string	"S_PAIN_DIE2"
.LASF996:
	.string	"S_PAIN_DIE3"
.LASF997:
	.string	"S_PAIN_DIE4"
.LASF998:
	.string	"S_PAIN_DIE5"
.LASF999:
	.string	"S_PAIN_DIE6"
.LASF1268:
	.string	"MT_TROOP"
.LASF550:
	.string	"S_VILE_PAIN2"
.LASF678:
	.string	"S_FATT_RAISE1"
.LASF100:
	.string	"wp_plasma"
.LASF680:
	.string	"S_FATT_RAISE3"
.LASF681:
	.string	"S_FATT_RAISE4"
.LASF682:
	.string	"S_FATT_RAISE5"
.LASF683:
	.string	"S_FATT_RAISE6"
.LASF54:
	.string	"_IO_write_end"
.LASF685:
	.string	"S_FATT_RAISE8"
.LASF394:
	.string	"S_ROCKET"
.LASF1289:
	.string	"MT_HEADSHOT"
.LASF21:
	.string	"BT_USE"
.LASF947:
	.string	"S_ARACH_PLAZ"
.LASF1186:
	.string	"S_STALAGTITE"
.LASF788:
	.string	"S_HEAD_PAIN2"
.LASF789:
	.string	"S_HEAD_PAIN3"
.LASF27:
	.string	"BTS_PAUSE"
.LASF8:
	.string	"byte"
.LASF1575:
	.string	"TryRunTics"
.LASF1561:
	.string	"I_StartTic"
.LASF446:
	.string	"S_PLAY_XDIE2"
.LASF93:
	.string	"it_redskull"
.LASF45:
	.string	"long int"
.LASF1296:
	.string	"MT_TFOG"
.LASF497:
	.string	"S_SPOS_ATK1"
.LASF498:
	.string	"S_SPOS_ATK2"
.LASF499:
	.string	"S_SPOS_ATK3"
.LASF434:
	.string	"S_PLAY_ATK1"
.LASF435:
	.string	"S_PLAY_ATK2"
.LASF187:
	.string	"SPR_APLS"
.LASF1551:
	.string	"G_Ticker"
.LASF1534:
	.string	"nodeingame"
.LASF1539:
	.string	"lastnettic"
.LASF1468:
	.string	"refire"
.LASF19:
	.string	"event_t"
.LASF1215:
	.string	"S_REDTORCH2"
.LASF1216:
	.string	"S_REDTORCH3"
.LASF1217:
	.string	"S_REDTORCH4"
.LASF724:
	.string	"S_TROO_RUN1"
.LASF725:
	.string	"S_TROO_RUN2"
.LASF726:
	.string	"S_TROO_RUN3"
.LASF727:
	.string	"S_TROO_RUN4"
.LASF728:
	.string	"S_TROO_RUN5"
.LASF729:
	.string	"S_TROO_RUN6"
.LASF730:
	.string	"S_TROO_RUN7"
.LASF731:
	.string	"S_TROO_RUN8"
.LASF11:
	.string	"ev_keyup"
.LASF178:
	.string	"SPR_CPOS"
.LASF639:
	.string	"S_FATSHOTX1"
.LASF640:
	.string	"S_FATSHOTX2"
.LASF641:
	.string	"S_FATSHOTX3"
.LASF719:
	.string	"S_CPOS_RAISE5"
.LASF720:
	.string	"S_CPOS_RAISE6"
.LASF721:
	.string	"S_CPOS_RAISE7"
.LASF1507:
	.string	"numplayers"
.LASF95:
	.string	"wp_fist"
.LASF1407:
	.string	"missilestate"
.LASF208:
	.string	"SPR_STIM"
.LASF755:
	.string	"S_SARG_STND"
.LASF980:
	.string	"S_CYBER_DIE10"
.LASF158:
	.string	"SPR_BAL1"
.LASF159:
	.string	"SPR_BAL2"
.LASF181:
	.string	"SPR_BAL7"
.LASF1438:
	.string	"info"
.LASF1174:
	.string	"S_HEADSONSTICK"
.LASF1433:
	.string	"ceilingz"
.LASF1553:
	.string	"M_Ticker"
.LASF631:
	.string	"S_SKEL_RAISE1"
.LASF146:
	.string	"SPR_SHT2"
.LASF285:
	.string	"S_PUNCH1"
.LASF286:
	.string	"S_PUNCH2"
.LASF287:
	.string	"S_PUNCH3"
.LASF288:
	.string	"S_PUNCH4"
.LASF289:
	.string	"S_PUNCH5"
.LASF648:
	.string	"S_FATT_RUN5"
.LASF284:
	.string	"S_PUNCHUP"
.LASF901:
	.string	"S_SPID_DIE1"
.LASF652:
	.string	"S_FATT_RUN9"
.LASF903:
	.string	"S_SPID_DIE3"
.LASF904:
	.string	"S_SPID_DIE4"
.LASF145:
	.string	"SPR_SHTF"
.LASF141:
	.string	"SPR_SHTG"
.LASF423:
	.string	"S_IFOG01"
.LASF424:
	.string	"S_IFOG02"
.LASF909:
	.string	"S_SPID_DIE9"
.LASF1151:
	.string	"S_AMMO"
.LASF12:
	.string	"ev_mouse"
.LASF111:
	.string	"NUMAMMO"
.LASF982:
	.string	"S_PAIN_RUN1"
.LASF983:
	.string	"S_PAIN_RUN2"
.LASF984:
	.string	"S_PAIN_RUN3"
.LASF985:
	.string	"S_PAIN_RUN4"
.LASF267:
	.string	"SPR_HDB1"
.LASF268:
	.string	"SPR_HDB2"
.LASF269:
	.string	"SPR_HDB3"
.LASF270:
	.string	"SPR_HDB4"
.LASF271:
	.string	"SPR_HDB5"
.LASF272:
	.string	"SPR_HDB6"
.LASF1258:
	.string	"MT_POSSESSED"
.LASF317:
	.string	"S_DSGUN3"
.LASF318:
	.string	"S_DSGUN4"
.LASF15:
	.string	"type"
.LASF337:
	.string	"S_MISSILE"
.LASF1165:
	.string	"S_SHOT2"
.LASF1232:
	.string	"S_HANGTLOOKDN"
.LASF1508:
	.string	"angleoffset"
.LASF1559:
	.string	"G_BuildTiccmd"
.LASF1440:
	.string	"movedir"
.LASF709:
	.string	"S_CPOS_XDIE1"
.LASF1563:
	.string	"G_CheckDemoStatus"
.LASF1493:
	.string	"cmds"
.LASF1530:
	.string	"localcmds"
.LASF132:
	.string	"actionf_t"
.LASF127:
	.string	"actionf_v"
.LASF228:
	.string	"SPR_MGUN"
.LASF1270:
	.string	"MT_SHADOWS"
.LASF612:
	.string	"S_SKEL_RUN10"
.LASF613:
	.string	"S_SKEL_RUN11"
.LASF614:
	.string	"S_SKEL_RUN12"
.LASF280:
	.string	"S_NULL"
.LASF822:
	.string	"S_BOSS_DIE1"
.LASF823:
	.string	"S_BOSS_DIE2"
.LASF824:
	.string	"S_BOSS_DIE3"
.LASF825:
	.string	"S_BOSS_DIE4"
.LASF826:
	.string	"S_BOSS_DIE5"
.LASF827:
	.string	"S_BOSS_DIE6"
.LASF828:
	.string	"S_BOSS_DIE7"
.LASF992:
	.string	"S_PAIN_PAIN"
.LASF361:
	.string	"S_BFG"
.LASF25:
	.string	"BT_WEAPONMASK"
.LASF1486:
	.string	"player_t"
.LASF1007:
	.string	"S_SSWV_STND2"
.LASF229:
	.string	"SPR_CSAW"
.LASF1142:
	.string	"S_PMAP"
.LASF61:
	.string	"_chain"
.LASF24:
	.string	"BT_CHANGE"
.LASF1148:
	.string	"S_PVIS"
.LASF362:
	.string	"S_BFGDOWN"
.LASF1282:
	.string	"MT_BOSSBRAIN"
.LASF175:
	.string	"SPR_SKEL"
.LASF357:
	.string	"S_PLASMA1"
.LASF358:
	.string	"S_PLASMA2"
.LASF1222:
	.string	"S_GTORCHSHRT"
.LASF1543:
	.string	"reboundstore"
.LASF1156:
	.string	"S_SHEL"
.LASF913:
	.string	"S_BSPI_STND2"
.LASF9:
	.string	"unsigned char"
.LASF173:
	.string	"SPR_FATB"
.LASF278:
	.string	"NUMSPRITES"
.LASF899:
	.string	"S_SPID_PAIN"
.LASF1531:
	.string	"maketic"
.LASF396:
	.string	"S_BFGSHOT2"
.LASF177:
	.string	"SPR_FATT"
.LASF1123:
	.string	"S_SOUL2"
.LASF1124:
	.string	"S_SOUL3"
.LASF1125:
	.string	"S_SOUL4"
.LASF1126:
	.string	"S_SOUL5"
.LASF1127:
	.string	"S_SOUL6"
.LASF1601:
	.string	"_IO_lock_t"
.LASF883:
	.string	"S_SPID_RUN1"
.LASF884:
	.string	"S_SPID_RUN2"
.LASF885:
	.string	"S_SPID_RUN3"
.LASF886:
	.string	"S_SPID_RUN4"
.LASF887:
	.string	"S_SPID_RUN5"
.LASF888:
	.string	"S_SPID_RUN6"
.LASF889:
	.string	"S_SPID_RUN7"
.LASF890:
	.string	"S_SPID_RUN8"
.LASF124:
	.string	"float"
.LASF1090:
	.string	"S_BEXP3"
.LASF1091:
	.string	"S_BEXP4"
.LASF1179:
	.string	"S_DEADSTICK"
.LASF1477:
	.string	"fixedcolormap"
.LASF1462:
	.string	"weaponowned"
.LASF1299:
	.string	"MT_EXTRABFG"
.LASF1517:
	.string	"autostart"
.LASF469:
	.string	"S_POSS_DIE1"
.LASF470:
	.string	"S_POSS_DIE2"
.LASF471:
	.string	"S_POSS_DIE3"
.LASF472:
	.string	"S_POSS_DIE4"
.LASF473:
	.string	"S_POSS_DIE5"
.LASF299:
	.string	"S_SGUNDOWN"
.LASF148:
	.string	"SPR_CHGF"
.LASF147:
	.string	"SPR_CHGG"
.LASF692:
	.string	"S_CPOS_RUN5"
.LASF951:
	.string	"S_ARACH_PLEX3"
.LASF693:
	.string	"S_CPOS_RUN6"
.LASF953:
	.string	"S_ARACH_PLEX5"
.LASF694:
	.string	"S_CPOS_RUN7"
.LASF1442:
	.string	"target"
.LASF258:
	.string	"SPR_CEYE"
.LASF1598:
	.string	"delta"
.LASF1000:
	.string	"S_PAIN_RAISE1"
.LASF1001:
	.string	"S_PAIN_RAISE2"
.LASF1002:
	.string	"S_PAIN_RAISE3"
.LASF1003:
	.string	"S_PAIN_RAISE4"
.LASF1004:
	.string	"S_PAIN_RAISE5"
.LASF637:
	.string	"S_FATSHOT1"
.LASF638:
	.string	"S_FATSHOT2"
.LASF215:
	.string	"SPR_SUIT"
.LASF865:
	.string	"S_SKULL_STND"
.LASF1526:
	.string	"debugfile"
.LASF81:
	.string	"VERSION"
.LASF1394:
	.string	"NUMMOBJTYPES"
.LASF197:
	.string	"SPR_BAR1"
.LASF312:
	.string	"S_DSGUN"
.LASF1191:
	.string	"S_CANDLESTIK"
.LASF117:
	.string	"pw_allmap"
.LASF1247:
	.string	"NUMSTATES"
.LASF891:
	.string	"S_SPID_RUN9"
.LASF377:
	.string	"S_TBALL1"
.LASF378:
	.string	"S_TBALL2"
.LASF591:
	.string	"S_SMOKE1"
.LASF592:
	.string	"S_SMOKE2"
.LASF593:
	.string	"S_SMOKE3"
.LASF594:
	.string	"S_SMOKE4"
.LASF595:
	.string	"S_SMOKE5"
.LASF814:
	.string	"S_BOSS_RUN6"
.LASF815:
	.string	"S_BOSS_RUN7"
.LASF816:
	.string	"S_BOSS_RUN8"
.LASF180:
	.string	"SPR_HEAD"
.LASF1430:
	.string	"bprev"
.LASF241:
	.string	"SPR_POL1"
.LASF237:
	.string	"SPR_POL2"
.LASF240:
	.string	"SPR_POL3"
.LASF239:
	.string	"SPR_POL4"
.LASF238:
	.string	"SPR_POL5"
.LASF242:
	.string	"SPR_POL6"
.LASF1518:
	.string	"netgame"
.LASF1086:
	.string	"S_BAR1"
.LASF1184:
	.string	"S_MEAT4"
.LASF578:
	.string	"S_FIRE18"
.LASF1300:
	.string	"MT_MISC0"
.LASF1172:
	.string	"S_DEADTORSO"
.LASF314:
	.string	"S_DSGUNUP"
.LASF1571:
	.string	"realtics"
.LASF1397:
	.string	"spawnstate"
.LASF723:
	.string	"S_TROO_STND2"
.LASF1514:
	.string	"startskill"
.LASF1243:
	.string	"S_TECH2LAMP"
.LASF1425:
	.string	"mobj_s"
.LASF1286:
	.string	"MT_SPAWNFIRE"
.LASF1261:
	.string	"MT_FIRE"
.LASF1253:
	.string	"nextstate"
.LASF1595:
	.string	"node"
.LASF1499:
	.string	"numnodes"
.LASF820:
	.string	"S_BOSS_PAIN"
.LASF191:
	.string	"SPR_SSWV"
.LASF53:
	.string	"_IO_write_ptr"
.LASF1229:
	.string	"S_RTORCHSHRT4"
.LASF382:
	.string	"S_RBALL1"
.LASF383:
	.string	"S_RBALL2"
.LASF1434:
	.string	"momx"
.LASF1187:
	.string	"S_TALLGRNCOL"
.LASF1445:
	.string	"lastlook"
.LASF1485:
	.string	"playerstate_t"
.LASF1176:
	.string	"S_HEADONASTICK"
.LASF456:
	.string	"S_POSS_RUN1"
.LASF398:
	.string	"S_BFGLAND2"
.LASF399:
	.string	"S_BFGLAND3"
.LASF400:
	.string	"S_BFGLAND4"
.LASF401:
	.string	"S_BFGLAND5"
.LASF402:
	.string	"S_BFGLAND6"
.LASF462:
	.string	"S_POSS_RUN7"
.LASF463:
	.string	"S_POSS_RUN8"
.LASF1587:
	.string	"GetPackets"
.LASF445:
	.string	"S_PLAY_XDIE1"
.LASF86:
	.string	"sk_nightmare"
.LASF447:
	.string	"S_PLAY_XDIE3"
.LASF448:
	.string	"S_PLAY_XDIE4"
.LASF449:
	.string	"S_PLAY_XDIE5"
.LASF450:
	.string	"S_PLAY_XDIE6"
.LASF451:
	.string	"S_PLAY_XDIE7"
.LASF452:
	.string	"S_PLAY_XDIE8"
.LASF453:
	.string	"S_PLAY_XDIE9"
.LASF851:
	.string	"S_BOS2_DIE1"
.LASF852:
	.string	"S_BOS2_DIE2"
.LASF853:
	.string	"S_BOS2_DIE3"
.LASF854:
	.string	"S_BOS2_DIE4"
.LASF855:
	.string	"S_BOS2_DIE5"
.LASF856:
	.string	"S_BOS2_DIE6"
.LASF857:
	.string	"S_BOS2_DIE7"
.LASF1417:
	.string	"flags"
.LASF777:
	.string	"S_SARG_RAISE2"
.LASF778:
	.string	"S_SARG_RAISE3"
.LASF421:
	.string	"S_TFOG10"
.LASF779:
	.string	"S_SARG_RAISE4"
.LASF1504:
	.string	"episode"
.LASF474:
	.string	"S_POSS_XDIE1"
.LASF475:
	.string	"S_POSS_XDIE2"
.LASF476:
	.string	"S_POSS_XDIE3"
.LASF477:
	.string	"S_POSS_XDIE4"
.LASF478:
	.string	"S_POSS_XDIE5"
.LASF479:
	.string	"S_POSS_XDIE6"
.LASF480:
	.string	"S_POSS_XDIE7"
.LASF107:
	.string	"am_clip"
.LASF482:
	.string	"S_POSS_XDIE9"
.LASF1175:
	.string	"S_GIBS"
.LASF790:
	.string	"S_HEAD_DIE1"
.LASF791:
	.string	"S_HEAD_DIE2"
.LASF792:
	.string	"S_HEAD_DIE3"
.LASF793:
	.string	"S_HEAD_DIE4"
.LASF794:
	.string	"S_HEAD_DIE5"
.LASF795:
	.string	"S_HEAD_DIE6"
.LASF643:
	.string	"S_FATT_STND2"
.LASF1166:
	.string	"S_COLU"
.LASF293:
	.string	"S_PISTOL1"
.LASF294:
	.string	"S_PISTOL2"
.LASF295:
	.string	"S_PISTOL3"
.LASF296:
	.string	"S_PISTOL4"
.LASF632:
	.string	"S_SKEL_RAISE2"
.LASF633:
	.string	"S_SKEL_RAISE3"
.LASF77:
	.string	"FILE"
.LASF635:
	.string	"S_SKEL_RAISE5"
.LASF636:
	.string	"S_SKEL_RAISE6"
.LASF1195:
	.string	"S_BIGTREE"
.LASF1105:
	.string	"S_BON2C"
.LASF1106:
	.string	"S_BON2D"
.LASF411:
	.string	"S_TFOG01"
.LASF412:
	.string	"S_TFOG02"
.LASF230:
	.string	"SPR_LAUN"
.LASF467:
	.string	"S_POSS_PAIN"
.LASF761:
	.string	"S_SARG_RUN5"
.LASF762:
	.string	"S_SARG_RUN6"
.LASF1264:
	.string	"MT_SMOKE"
.LASF1278:
	.string	"MT_CYBORG"
.LASF1415:
	.string	"damage"
.LASF507:
	.string	"S_SPOS_XDIE1"
.LASF508:
	.string	"S_SPOS_XDIE2"
.LASF509:
	.string	"S_SPOS_XDIE3"
.LASF510:
	.string	"S_SPOS_XDIE4"
.LASF511:
	.string	"S_SPOS_XDIE5"
.LASF512:
	.string	"S_SPOS_XDIE6"
.LASF513:
	.string	"S_SPOS_XDIE7"
.LASF514:
	.string	"S_SPOS_XDIE8"
.LASF515:
	.string	"S_SPOS_XDIE9"
.LASF42:
	.string	"size_t"
.LASF1244:
	.string	"S_TECH2LAMP2"
.LASF1481:
	.string	"mobj_t"
.LASF1108:
	.string	"S_BKEY"
.LASF115:
	.string	"pw_invisibility"
.LASF1519:
	.string	"displayplayer"
.LASF195:
	.string	"SPR_ARM1"
.LASF196:
	.string	"SPR_ARM2"
.LASF1260:
	.string	"MT_VILE"
.LASF91:
	.string	"it_blueskull"
.LASF355:
	.string	"S_PLASMADOWN"
.LASF667:
	.string	"S_FATT_PAIN2"
.LASF1065:
	.string	"S_BRAINEYESEE"
.LASF602:
	.string	"S_SKEL_STND2"
.LASF955:
	.string	"S_CYBER_STND2"
.LASF1256:
	.string	"state_t"
.LASF799:
	.string	"S_HEAD_RAISE4"
.LASF1544:
	.string	"exitmsg"
.LASF1025:
	.string	"S_SSWV_DIE2"
.LASF1503:
	.string	"savegame"
.LASF481:
	.string	"S_POSS_XDIE8"
.LASF1155:
	.string	"S_CELP"
.LASF1197:
	.string	"S_EVILEYE"
.LASF1537:
	.string	"resendcount"
.LASF1223:
	.string	"S_GTORCHSHRT2"
.LASF1224:
	.string	"S_GTORCHSHRT3"
.LASF1225:
	.string	"S_GTORCHSHRT4"
.LASF802:
	.string	"S_BRBALL1"
.LASF803:
	.string	"S_BRBALL2"
.LASF1452:
	.string	"viewheight"
.LASF1429:
	.string	"bnext"
.LASF1533:
	.string	"netcmds"
.LASF57:
	.string	"_IO_save_base"
.LASF656:
	.string	"S_FATT_ATK1"
.LASF189:
	.string	"SPR_CYBR"
.LASF657:
	.string	"S_FATT_ATK2"
.LASF560:
	.string	"S_VILE_DIE10"
.LASF150:
	.string	"SPR_MISF"
.LASF149:
	.string	"SPR_MISG"
.LASF1502:
	.string	"deathmatch"
.LASF162:
	.string	"SPR_MISL"
.LASF1114:
	.string	"S_BSKULL"
.LASF193:
	.string	"SPR_BBRN"
.LASF535:
	.string	"S_VILE_ATK1"
.LASF536:
	.string	"S_VILE_ATK2"
.LASF537:
	.string	"S_VILE_ATK3"
.LASF538:
	.string	"S_VILE_ATK4"
.LASF539:
	.string	"S_VILE_ATK5"
.LASF540:
	.string	"S_VILE_ATK6"
.LASF541:
	.string	"S_VILE_ATK7"
.LASF282:
	.string	"S_PUNCH"
.LASF543:
	.string	"S_VILE_ATK9"
.LASF264:
	.string	"SPR_SMBT"
.LASF838:
	.string	"S_BOS2_RUN1"
.LASF839:
	.string	"S_BOS2_RUN2"
.LASF840:
	.string	"S_BOS2_RUN3"
.LASF841:
	.string	"S_BOS2_RUN4"
.LASF842:
	.string	"S_BOS2_RUN5"
.LASF843:
	.string	"S_BOS2_RUN6"
.LASF844:
	.string	"S_BOS2_RUN7"
.LASF845:
	.string	"S_BOS2_RUN8"
.LASF255:
	.string	"SPR_TRE1"
.LASF256:
	.string	"SPR_TRE2"
.LASF1496:
	.string	"command"
.LASF912:
	.string	"S_BSPI_STND"
.LASF1406:
	.string	"meleestate"
.LASF1463:
	.string	"ammo"
.LASF702:
	.string	"S_CPOS_DIE1"
.LASF263:
	.string	"SPR_TRED"
.LASF156:
	.string	"SPR_BLUD"
.LASF658:
	.string	"S_FATT_ATK3"
.LASF659:
	.string	"S_FATT_ATK4"
.LASF660:
	.string	"S_FATT_ATK5"
.LASF661:
	.string	"S_FATT_ATK6"
.LASF662:
	.string	"S_FATT_ATK7"
.LASF663:
	.string	"S_FATT_ATK8"
.LASF664:
	.string	"S_FATT_ATK9"
.LASF166:
	.string	"SPR_TFOG"
.LASF370:
	.string	"S_BLOOD1"
.LASF371:
	.string	"S_BLOOD2"
.LASF372:
	.string	"S_BLOOD3"
.LASF33:
	.string	"eventtail"
.LASF1254:
	.string	"misc1"
.LASF1255:
	.string	"misc2"
.LASF968:
	.string	"S_CYBER_ATK5"
.LASF969:
	.string	"S_CYBER_ATK6"
.LASF71:
	.string	"_wide_data"
.LASF1162:
	.string	"S_LAUN"
.LASF422:
	.string	"S_IFOG"
.LASF1542:
	.string	"reboundpacket"
.LASF169:
	.string	"SPR_POSS"
.LASF174:
	.string	"SPR_FBXP"
.LASF1599:
	.string	"NetbufferChecksum"
.LASF1157:
	.string	"S_SBOX"
.LASF971:
	.string	"S_CYBER_DIE1"
.LASF972:
	.string	"S_CYBER_DIE2"
.LASF973:
	.string	"S_CYBER_DIE3"
.LASF974:
	.string	"S_CYBER_DIE4"
.LASF975:
	.string	"S_CYBER_DIE5"
.LASF976:
	.string	"S_CYBER_DIE6"
.LASF977:
	.string	"S_CYBER_DIE7"
.LASF849:
	.string	"S_BOS2_PAIN"
.LASF979:
	.string	"S_CYBER_DIE9"
.LASF1446:
	.string	"spawnpoint"
.LASF1249:
	.string	"sprite"
.LASF1327:
	.string	"MT_MISC23"
.LASF1192:
	.string	"S_CANDELABRA"
.LASF532:
	.string	"S_VILE_RUN10"
.LASF533:
	.string	"S_VILE_RUN11"
.LASF534:
	.string	"S_VILE_RUN12"
.LASF1152:
	.string	"S_ROCK"
.LASF301:
	.string	"S_SGUN1"
.LASF302:
	.string	"S_SGUN2"
.LASF303:
	.string	"S_SGUN3"
.LASF304:
	.string	"S_SGUN4"
.LASF305:
	.string	"S_SGUN5"
.LASF306:
	.string	"S_SGUN6"
.LASF307:
	.string	"S_SGUN7"
.LASF308:
	.string	"S_SGUN8"
.LASF309:
	.string	"S_SGUN9"
.LASF1396:
	.string	"doomednum"
.LASF298:
	.string	"S_SGUN"
.LASF1188:
	.string	"S_SHRTGRNCOL"
.LASF873:
	.string	"S_SKULL_PAIN"
.LASF1285:
	.string	"MT_SPAWNSHOT"
.LASF1405:
	.string	"painsound"
.LASF1603:
	.string	"NetbufferSize"
.LASF597:
	.string	"S_TRACER2"
.LASF1196:
	.string	"S_TECHPILLAR"
.LASF601:
	.string	"S_SKEL_STND"
.LASF756:
	.string	"S_SARG_STND2"
.LASF1583:
	.string	"nowtime"
.LASF502:
	.string	"S_SPOS_DIE1"
.LASF503:
	.string	"S_SPOS_DIE2"
.LASF504:
	.string	"S_SPOS_DIE3"
.LASF505:
	.string	"S_SPOS_DIE4"
.LASF506:
	.string	"S_SPOS_DIE5"
.LASF1484:
	.string	"PST_REBORN"
.LASF1231:
	.string	"S_HANGBNOBRAIN"
.LASF1528:
	.string	"doomcom"
.LASF765:
	.string	"S_SARG_ATK1"
.LASF766:
	.string	"S_SARG_ATK2"
.LASF767:
	.string	"S_SARG_ATK3"
.LASF356:
	.string	"S_PLASMAUP"
.LASF1251:
	.string	"tics"
.LASF1565:
	.string	"fprintf"
.LASF1538:
	.string	"nodeforplayer"
.LASF1112:
	.string	"S_YKEY"
.LASF1411:
	.string	"speed"
.LASF325:
	.string	"S_DSNR1"
.LASF994:
	.string	"S_PAIN_DIE1"
.LASF1554:
	.string	"fclose"
.LASF524:
	.string	"S_VILE_RUN2"
.LASF1242:
	.string	"S_TECHLAMP4"
.LASF688:
	.string	"S_CPOS_RUN1"
.LASF689:
	.string	"S_CPOS_RUN2"
.LASF690:
	.string	"S_CPOS_RUN3"
.LASF691:
	.string	"S_CPOS_RUN4"
.LASF128:
	.string	"actionf_p1"
.LASF129:
	.string	"actionf_p2"
.LASF226:
	.string	"SPR_BPAK"
.LASF695:
	.string	"S_CPOS_RUN8"
.LASF1092:
	.string	"S_BEXP5"
.LASF122:
	.string	"mapthing_t"
.LASF457:
	.string	"S_POSS_RUN2"
.LASF458:
	.string	"S_POSS_RUN3"
.LASF459:
	.string	"S_POSS_RUN4"
.LASF776:
	.string	"S_SARG_RAISE1"
.LASF460:
	.string	"S_POSS_RUN5"
.LASF130:
	.string	"acp1"
.LASF131:
	.string	"acp2"
.LASF780:
	.string	"S_SARG_RAISE5"
.LASF781:
	.string	"S_SARG_RAISE6"
.LASF1360:
	.string	"MT_MISC53"
.LASF265:
	.string	"SPR_SMGT"
.LASF1056:
	.string	"S_KEENPAIN"
.LASF404:
	.string	"S_BFGEXP2"
.LASF405:
	.string	"S_BFGEXP3"
.LASF406:
	.string	"S_BFGEXP4"
.LASF335:
	.string	"S_CHAINFLASH1"
.LASF336:
	.string	"S_CHAINFLASH2"
.LASF291:
	.string	"S_PISTOLDOWN"
.LASF956:
	.string	"S_CYBER_RUN1"
.LASF957:
	.string	"S_CYBER_RUN2"
.LASF958:
	.string	"S_CYBER_RUN3"
.LASF959:
	.string	"S_CYBER_RUN4"
.LASF960:
	.string	"S_CYBER_RUN5"
.LASF961:
	.string	"S_CYBER_RUN6"
.LASF962:
	.string	"S_CYBER_RUN7"
.LASF963:
	.string	"S_CYBER_RUN8"
.LASF1400:
	.string	"seesound"
.LASF1143:
	.string	"S_PMAP2"
.LASF1144:
	.string	"S_PMAP3"
.LASF1145:
	.string	"S_PMAP4"
.LASF1146:
	.string	"S_PMAP5"
.LASF1147:
	.string	"S_PMAP6"
.LASF1474:
	.string	"bonuscount"
.LASF874:
	.string	"S_SKULL_PAIN2"
.LASF1521:
	.string	"demoplayback"
.LASF1404:
	.string	"painchance"
.LASF700:
	.string	"S_CPOS_PAIN"
.LASF1490:
	.string	"retransmitfrom"
.LASF179:
	.string	"SPR_SARG"
.LASF1586:
	.string	"gameticdiv"
.LASF30:
	.string	"BTS_SAVESHIFT"
.LASF1005:
	.string	"S_PAIN_RAISE6"
.LASF1343:
	.string	"MT_MISC36"
.LASF809:
	.string	"S_BOSS_RUN1"
.LASF810:
	.string	"S_BOSS_RUN2"
.LASF811:
	.string	"S_BOSS_RUN3"
.LASF812:
	.string	"S_BOSS_RUN4"
.LASF813:
	.string	"S_BOSS_RUN5"
.LASF331:
	.string	"S_CHAINUP"
.LASF1600:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1469:
	.string	"killcount"
.LASF950:
	.string	"S_ARACH_PLEX2"
.LASF1194:
	.string	"S_TORCHTREE"
.LASF1006:
	.string	"S_SSWV_STND"
.LASF952:
	.string	"S_ARACH_PLEX4"
.LASF1569:
	.string	"entertic"
.LASF1053:
	.string	"S_COMMKEEN10"
.LASF1054:
	.string	"S_COMMKEEN11"
.LASF1055:
	.string	"S_COMMKEEN12"
.LASF970:
	.string	"S_CYBER_PAIN"
.LASF1180:
	.string	"S_LIVESTICK"
.LASF489:
	.string	"S_SPOS_RUN1"
.LASF247:
	.string	"SPR_SMIT"
.LASF7:
	.string	"boolean"
.LASF492:
	.string	"S_SPOS_RUN4"
.LASF493:
	.string	"S_SPOS_RUN5"
.LASF184:
	.string	"SPR_SKUL"
.LASF495:
	.string	"S_SPOS_RUN7"
.LASF496:
	.string	"S_SPOS_RUN8"
.LASF1153:
	.string	"S_BROK"
.LASF1398:
	.string	"spawnhealth"
.LASF283:
	.string	"S_PUNCHDOWN"
.LASF949:
	.string	"S_ARACH_PLEX"
.LASF1210:
	.string	"S_GREENTORCH"
.LASF103:
	.string	"wp_supershotgun"
.LASF349:
	.string	"S_SAWDOWN"
.LASF59:
	.string	"_IO_save_end"
.LASF1500:
	.string	"ticdup"
.LASF1248:
	.string	"statenum_t"
.LASF1288:
	.string	"MT_TROOPSHOT"
.LASF1273:
	.string	"MT_BRUISERSHOT"
.LASF41:
	.string	"ticcmd_t"
.LASF1393:
	.string	"MT_MISC86"
.LASF954:
	.string	"S_CYBER_STND"
.LASF437:
	.string	"S_PLAY_PAIN2"
.LASF832:
	.string	"S_BOSS_RAISE4"
.LASF833:
	.string	"S_BOSS_RAISE5"
.LASF1250:
	.string	"frame"
.LASF176:
	.string	"SPR_MANF"
.LASF687:
	.string	"S_CPOS_STND2"
.LASF1545:
	.string	"gametime"
.LASF500:
	.string	"S_SPOS_PAIN"
.LASF97:
	.string	"wp_shotgun"
.LASF468:
	.string	"S_POSS_PAIN2"
.LASF1294:
	.string	"MT_PUFF"
.LASF340:
	.string	"S_MISSILE1"
.LASF341:
	.string	"S_MISSILE2"
.LASF342:
	.string	"S_MISSILE3"
.LASF716:
	.string	"S_CPOS_RAISE2"
.LASF717:
	.string	"S_CPOS_RAISE3"
.LASF718:
	.string	"S_CPOS_RAISE4"
.LASF1479:
	.string	"psprites"
.LASF1160:
	.string	"S_MGUN"
.LASF1272:
	.string	"MT_BRUISER"
.LASF225:
	.string	"SPR_SBOX"
.LASF1471:
	.string	"secretcount"
.LASF1395:
	.string	"mobjtype_t"
.LASF1409:
	.string	"xdeathstate"
.LASF1456:
	.string	"powers"
.LASF869:
	.string	"S_SKULL_ATK1"
.LASF870:
	.string	"S_SKULL_ATK2"
.LASF871:
	.string	"S_SKULL_ATK3"
.LASF872:
	.string	"S_SKULL_ATK4"
.LASF850:
	.string	"S_BOS2_PAIN2"
.LASF43:
	.string	"short unsigned int"
.LASF1274:
	.string	"MT_KNIGHT"
.LASF44:
	.string	"signed char"
.LASF35:
	.string	"sidemove"
.LASF1416:
	.string	"activesound"
.LASF501:
	.string	"S_SPOS_PAIN2"
.LASF1592:
	.string	"start"
.LASF665:
	.string	"S_FATT_ATK10"
.LASF1347:
	.string	"MT_MISC40"
.LASF262:
	.string	"SPR_TGRN"
.LASF1420:
	.string	"ps_weapon"
.LASF1319:
	.string	"MT_MEGA"
.LASF164:
	.string	"SPR_BFE1"
.LASF165:
	.string	"SPR_BFE2"
.LASF1560:
	.string	"D_ProcessEvents"
.LASF1353:
	.string	"MT_MISC46"
.LASF1281:
	.string	"MT_KEEN"
.LASF1590:
	.string	"dest"
.LASF1066:
	.string	"S_BRAINEYE1"
.LASF722:
	.string	"S_TROO_STND"
.LASF669:
	.string	"S_FATT_DIE2"
.LASF360:
	.string	"S_PLASMAFLASH2"
.LASF106:
	.string	"weapontype_t"
.LASF38:
	.string	"chatchar"
.LASF413:
	.string	"S_TFOG2"
.LASF414:
	.string	"S_TFOG3"
.LASF415:
	.string	"S_TFOG4"
.LASF416:
	.string	"S_TFOG5"
.LASF417:
	.string	"S_TFOG6"
.LASF418:
	.string	"S_TFOG7"
.LASF419:
	.string	"S_TFOG8"
.LASF420:
	.string	"S_TFOG9"
.LASF835:
	.string	"S_BOSS_RAISE7"
.LASF1465:
	.string	"attackdown"
.LASF140:
	.string	"SPR_TROO"
.LASF47:
	.string	"__off64_t"
.LASF151:
	.string	"SPR_SAWG"
.LASF200:
	.string	"SPR_BON1"
.LASF51:
	.string	"_IO_read_base"
.LASF69:
	.string	"_offset"
.LASF90:
	.string	"it_redcard"
.LASF1189:
	.string	"S_TALLREDCOL"
.LASF1566:
	.string	"I_Error"
.LASF1423:
	.string	"state"
.LASF56:
	.string	"_IO_buf_end"
.LASF1164:
	.string	"S_SHOT"
.LASF1020:
	.string	"S_SSWV_ATK5"
.LASF1169:
	.string	"S_BLOODYTWITCH2"
.LASF1170:
	.string	"S_BLOODYTWITCH3"
.LASF1171:
	.string	"S_BLOODYTWITCH4"
.LASF910:
	.string	"S_SPID_DIE10"
.LASF911:
	.string	"S_SPID_DIE11"
.LASF1457:
	.string	"cards"
.LASF257:
	.string	"SPR_ELEC"
.LASF1058:
	.string	"S_BRAIN"
.LASF1276:
	.string	"MT_SPIDER"
.LASF1141:
	.string	"S_SUIT"
.LASF155:
	.string	"SPR_BFGF"
.LASF154:
	.string	"SPR_BFGG"
.LASF1536:
	.string	"resendto"
.LASF1520:
	.string	"usergame"
.LASF75:
	.string	"_mode"
.LASF1527:
	.string	"singletics"
.LASF981:
	.string	"S_PAIN_STND"
.LASF52:
	.string	"_IO_write_base"
.LASF397:
	.string	"S_BFGLAND"
.LASF1087:
	.string	"S_BAR2"
.LASF1461:
	.string	"pendingweapon"
.LASF138:
	.string	"function"
.LASF108:
	.string	"am_shell"
.LASF1523:
	.string	"gametic"
.LASF1437:
	.string	"validcount"
.LASF1492:
	.string	"numtics"
.LASF1488:
	.string	"CMD_GET"
.LASF1472:
	.string	"message"
.LASF677:
	.string	"S_FATT_DIE10"
.LASF94:
	.string	"NUMCARDS"
.LASF1214:
	.string	"S_REDTORCH"
.LASF1292:
	.string	"MT_BFG"
.LASF461:
	.string	"S_POSS_RUN6"
.LASF171:
	.string	"SPR_VILE"
.LASF1295:
	.string	"MT_BLOOD"
.LASF290:
	.string	"S_PISTOL"
.LASF1564:
	.string	"I_NetCmd"
.LASF5:
	.string	"true"
.LASF84:
	.string	"sk_medium"
.LASF940:
	.string	"S_BSPI_RAISE1"
.LASF941:
	.string	"S_BSPI_RAISE2"
.LASF942:
	.string	"S_BSPI_RAISE3"
.LASF943:
	.string	"S_BSPI_RAISE4"
.LASF944:
	.string	"S_BSPI_RAISE5"
.LASF945:
	.string	"S_BSPI_RAISE6"
.LASF946:
	.string	"S_BSPI_RAISE7"
.LASF13:
	.string	"ev_joystick"
.LASF1435:
	.string	"momy"
.LASF36:
	.string	"angleturn"
.LASF1029:
	.string	"S_SSWV_XDIE1"
.LASF1030:
	.string	"S_SSWV_XDIE2"
.LASF1031:
	.string	"S_SSWV_XDIE3"
.LASF1032:
	.string	"S_SSWV_XDIE4"
.LASF1033:
	.string	"S_SSWV_XDIE5"
.LASF1034:
	.string	"S_SSWV_XDIE6"
.LASF1035:
	.string	"S_SSWV_XDIE7"
.LASF1036:
	.string	"S_SSWV_XDIE8"
.LASF1037:
	.string	"S_SSWV_XDIE9"
.LASF327:
	.string	"S_DSGUNFLASH1"
.LASF328:
	.string	"S_DSGUNFLASH2"
.LASF1326:
	.string	"MT_MISC22"
.LASF1480:
	.string	"didsecret"
.LASF585:
	.string	"S_FIRE25"
.LASF679:
	.string	"S_FATT_RAISE2"
.LASF1362:
	.string	"MT_MISC55"
.LASF1453:
	.string	"deltaviewheight"
.LASF92:
	.string	"it_yellowskull"
.LASF1117:
	.string	"S_RSKULL2"
.LASF1447:
	.string	"tracer"
.LASF684:
	.string	"S_FATT_RAISE7"
.LASF892:
	.string	"S_SPID_RUN10"
.LASF893:
	.string	"S_SPID_RUN11"
.LASF894:
	.string	"S_SPID_RUN12"
.LASF78:
	.string	"_IO_marker"
.LASF1501:
	.string	"extratics"
.LASF1567:
	.string	"rcsid"
.LASF1568:
	.string	"lowtic"
.LASF1570:
	.string	"oldentertics"
.LASF1418:
	.string	"raisestate"
.LASF343:
	.string	"S_MISSILEFLASH1"
.LASF344:
	.string	"S_MISSILEFLASH2"
.LASF345:
	.string	"S_MISSILEFLASH3"
.LASF346:
	.string	"S_MISSILEFLASH4"
.LASF206:
	.string	"SPR_RSKU"
.LASF1549:
	.string	"oldnettics"
.LASF133:
	.string	"think_t"
.LASF34:
	.string	"forwardmove"
.LASF704:
	.string	"S_CPOS_DIE3"
.LASF705:
	.string	"S_CPOS_DIE4"
.LASF706:
	.string	"S_CPOS_DIE5"
.LASF707:
	.string	"S_CPOS_DIE6"
.LASF708:
	.string	"S_CPOS_DIE7"
.LASF1579:
	.string	"gotinfo"
.LASF1149:
	.string	"S_PVIS2"
.LASF1287:
	.string	"MT_BARREL"
.LASF881:
	.string	"S_SPID_STND"
.LASF653:
	.string	"S_FATT_RUN10"
.LASF654:
	.string	"S_FATT_RUN11"
.LASF655:
	.string	"S_FATT_RUN12"
.LASF1529:
	.string	"netbuffer"
.LASF1279:
	.string	"MT_PAIN"
.LASF79:
	.string	"_IO_codecvt"
.LASF1207:
	.string	"S_BLUETORCH2"
.LASF1419:
	.string	"mobjinfo_t"
.LASF1208:
	.string	"S_BLUETORCH3"
.LASF1209:
	.string	"S_BLUETORCH4"
.LASF266:
	.string	"SPR_SMRT"
.LASF1580:
	.string	"CheckAbort"
.LASF368:
	.string	"S_BFGFLASH1"
.LASF369:
	.string	"S_BFGFLASH2"
.LASF902:
	.string	"S_SPID_DIE2"
.LASF1511:
	.string	"doomcom_t"
.LASF183:
	.string	"SPR_BOS2"
.LASF905:
	.string	"S_SPID_DIE5"
.LASF906:
	.string	"S_SPID_DIE6"
.LASF907:
	.string	"S_SPID_DIE7"
.LASF908:
	.string	"S_SPID_DIE8"
.LASF1198:
	.string	"S_EVILEYE2"
.LASF1199:
	.string	"S_EVILEYE3"
.LASF1200:
	.string	"S_EVILEYE4"
.LASF373:
	.string	"S_PUFF1"
.LASF374:
	.string	"S_PUFF2"
.LASF375:
	.string	"S_PUFF3"
.LASF194:
	.string	"SPR_BOSF"
.LASF182:
	.string	"SPR_BOSS"
.LASF1291:
	.string	"MT_PLASMA"
.LASF927:
	.string	"S_BSPI_ATK1"
.LASF928:
	.string	"S_BSPI_ATK2"
.LASF929:
	.string	"S_BSPI_ATK3"
.LASF930:
	.string	"S_BSPI_ATK4"
.LASF1109:
	.string	"S_BKEY2"
.LASF104:
	.string	"NUMWEAPONS"
.LASF914:
	.string	"S_BSPI_SIGHT"
.LASF2:
	.string	"long unsigned int"
.LASF916:
	.string	"S_BSPI_RUN2"
.LASF1060:
	.string	"S_BRAIN_DIE1"
.LASF1061:
	.string	"S_BRAIN_DIE2"
.LASF1062:
	.string	"S_BRAIN_DIE3"
.LASF1063:
	.string	"S_BRAIN_DIE4"
.LASF395:
	.string	"S_BFGSHOT"
.LASF1201:
	.string	"S_FLOATSKULL"
.LASF551:
	.string	"S_VILE_DIE1"
.LASF552:
	.string	"S_VILE_DIE2"
.LASF553:
	.string	"S_VILE_DIE3"
.LASF554:
	.string	"S_VILE_DIE4"
.LASF555:
	.string	"S_VILE_DIE5"
.LASF556:
	.string	"S_VILE_DIE6"
.LASF557:
	.string	"S_VILE_DIE7"
.LASF558:
	.string	"S_VILE_DIE8"
.LASF559:
	.string	"S_VILE_DIE9"
.LASF1473:
	.string	"damagecount"
.LASF235:
	.string	"SPR_SMT2"
.LASF1111:
	.string	"S_RKEY2"
.LASF1082:
	.string	"S_ARM1"
.LASF1084:
	.string	"S_ARM2"
.LASF1177:
	.string	"S_HEADCANDLES"
.LASF213:
	.string	"SPR_PINS"
.LASF807:
	.string	"S_BOSS_STND"
.LASF787:
	.string	"S_HEAD_PAIN"
.LASF89:
	.string	"it_yellowcard"
.LASF1263:
	.string	"MT_TRACER"
.LASF668:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF670:
	.string	"S_FATT_DIE3"
.LASF671:
	.string	"S_FATT_DIE4"
.LASF672:
	.string	"S_FATT_DIE5"
.LASF673:
	.string	"S_FATT_DIE6"
.LASF674:
	.string	"S_FATT_DIE7"
.LASF675:
	.string	"S_FATT_DIE8"
.LASF676:
	.string	"S_FATT_DIE9"
.LASF743:
	.string	"S_TROO_XDIE2"
.LASF744:
	.string	"S_TROO_XDIE3"
.LASF745:
	.string	"S_TROO_XDIE4"
.LASF746:
	.string	"S_TROO_XDIE5"
.LASF747:
	.string	"S_TROO_XDIE6"
.LASF748:
	.string	"S_TROO_XDIE7"
.LASF749:
	.string	"S_TROO_XDIE8"
.LASF218:
	.string	"SPR_CLIP"
.LASF1190:
	.string	"S_SHRTREDCOL"
.LASF1233:
	.string	"S_HANGTSKULL"
.LASF1524:
	.string	"players"
.LASF1513:
	.string	"respawnparm"
.LASF55:
	.string	"_IO_buf_base"
.LASF119:
	.string	"NUMPOWERS"
.LASF1494:
	.string	"doomdata_t"
.LASF1018:
	.string	"S_SSWV_ATK3"
.LASF1019:
	.string	"S_SSWV_ATK4"
.LASF324:
	.string	"S_DSGUN10"
.LASF114:
	.string	"pw_strength"
.LASF522:
	.string	"S_VILE_STND2"
.LASF252:
	.string	"SPR_CAND"
.LASF1269:
	.string	"MT_SERGEANT"
.LASF22:
	.string	"BT_SPECIAL"
.LASF83:
	.string	"sk_easy"
.LASF50:
	.string	"_IO_read_end"
.LASF1120:
	.string	"S_STIM"
.LASF1540:
	.string	"skiptics"
.LASF109:
	.string	"am_cell"
.LASF88:
	.string	"it_bluecard"
.LASF1432:
	.string	"floorz"
.LASF783:
	.string	"S_HEAD_RUN1"
.LASF438:
	.string	"S_PLAY_DIE1"
.LASF439:
	.string	"S_PLAY_DIE2"
.LASF440:
	.string	"S_PLAY_DIE3"
.LASF441:
	.string	"S_PLAY_DIE4"
.LASF134:
	.string	"_IO_FILE"
.LASF443:
	.string	"S_PLAY_DIE6"
.LASF444:
	.string	"S_PLAY_DIE7"
.LASF454:
	.string	"S_POSS_STND"
.LASF410:
	.string	"S_TFOG"
.LASF80:
	.string	"_IO_wide_data"
.LASF1348:
	.string	"MT_MISC41"
.LASF1448:
	.string	"subsector_s"
.LASF770:
	.string	"S_SARG_DIE1"
.LASF771:
	.string	"S_SARG_DIE2"
.LASF772:
	.string	"S_SARG_DIE3"
.LASF773:
	.string	"S_SARG_DIE4"
.LASF1071:
	.string	"S_SPAWNFIRE1"
.LASF1072:
	.string	"S_SPAWNFIRE2"
.LASF1073:
	.string	"S_SPAWNFIRE3"
.LASF1074:
	.string	"S_SPAWNFIRE4"
.LASF1075:
	.string	"S_SPAWNFIRE5"
.LASF1076:
	.string	"S_SPAWNFIRE6"
.LASF1077:
	.string	"S_SPAWNFIRE7"
.LASF1078:
	.string	"S_SPAWNFIRE8"
.LASF742:
	.string	"S_TROO_XDIE1"
.LASF37:
	.string	"consistancy"
.LASF1235:
	.string	"S_HANGTNOBRAIN"
.LASF1576:
	.string	"D_QuitNetGame"
.LASF390:
	.string	"S_PLASEXP2"
.LASF391:
	.string	"S_PLASEXP3"
.LASF392:
	.string	"S_PLASEXP4"
.LASF393:
	.string	"S_PLASEXP5"
.LASF101:
	.string	"wp_bfg"
.LASF1219:
	.string	"S_BTORCHSHRT2"
.LASF1220:
	.string	"S_BTORCHSHRT3"
.LASF1221:
	.string	"S_BTORCHSHRT4"
.LASF523:
	.string	"S_VILE_RUN1"
.LASF313:
	.string	"S_DSGUNDOWN"
.LASF525:
	.string	"S_VILE_RUN3"
.LASF526:
	.string	"S_VILE_RUN4"
.LASF527:
	.string	"S_VILE_RUN5"
.LASF528:
	.string	"S_VILE_RUN6"
.LASF529:
	.string	"S_VILE_RUN7"
.LASF530:
	.string	"S_VILE_RUN8"
.LASF531:
	.string	"S_VILE_RUN9"
.LASF774:
	.string	"S_SARG_DIE5"
.LASF775:
	.string	"S_SARG_DIE6"
.LASF1509:
	.string	"drone"
.LASF1426:
	.string	"thinker"
.LASF1491:
	.string	"starttic"
.LASF615:
	.string	"S_SKEL_FIST1"
.LASF616:
	.string	"S_SKEL_FIST2"
.LASF617:
	.string	"S_SKEL_FIST3"
.LASF618:
	.string	"S_SKEL_FIST4"
.LASF354:
	.string	"S_PLASMA"
.LASF1133:
	.string	"S_PINS"
.LASF1552:
	.string	"D_DoAdvanceDemo"
.LASF1206:
	.string	"S_BLUETORCH"
.LASF644:
	.string	"S_FATT_RUN1"
.LASF645:
	.string	"S_FATT_RUN2"
.LASF646:
	.string	"S_FATT_RUN3"
.LASF647:
	.string	"S_FATT_RUN4"
.LASF116:
	.string	"pw_ironfeet"
.LASF649:
	.string	"S_FATT_RUN6"
.LASF650:
	.string	"S_FATT_RUN7"
.LASF651:
	.string	"S_FATT_RUN8"
.LASF1182:
	.string	"S_MEAT2"
.LASF1183:
	.string	"S_MEAT3"
.LASF74:
	.string	"__pad5"
.LASF1185:
	.string	"S_MEAT5"
.LASF297:
	.string	"S_PISTOLFLASH"
.LASF517:
	.string	"S_SPOS_RAISE2"
.LASF518:
	.string	"S_SPOS_RAISE3"
.LASF519:
	.string	"S_SPOS_RAISE4"
.LASF520:
	.string	"S_SPOS_RAISE5"
.LASF1550:
	.string	"advancedemo"
.LASF209:
	.string	"SPR_MEDI"
.LASF211:
	.string	"SPR_PINV"
.LASF1059:
	.string	"S_BRAIN_PAIN"
.LASF330:
	.string	"S_CHAINDOWN"
.LASF1602:
	.string	"listen"
.LASF549:
	.string	"S_VILE_PAIN"
.LASF1585:
	.string	"realstart"
.LASF596:
	.string	"S_TRACER"
.LASF60:
	.string	"_markers"
.LASF1016:
	.string	"S_SSWV_ATK1"
.LASF1017:
	.string	"S_SSWV_ATK2"
.LASF546:
	.string	"S_VILE_HEAL1"
.LASF547:
	.string	"S_VILE_HEAL2"
.LASF548:
	.string	"S_VILE_HEAL3"
.LASF1021:
	.string	"S_SSWV_ATK6"
.LASF1441:
	.string	"movecount"
.LASF203:
	.string	"SPR_RKEY"
.LASF1167:
	.string	"S_STALAG"
.LASF882:
	.string	"S_SPID_STND2"
.LASF126:
	.string	"angle_t"
.LASF70:
	.string	"_codecvt"
.LASF1168:
	.string	"S_BLOODYTWITCH"
.LASF1237:
	.string	"S_SMALLPOOL"
.LASF1424:
	.string	"pspdef_t"
.LASF1363:
	.string	"MT_MISC56"
.LASF666:
	.string	"S_FATT_PAIN"
.LASF430:
	.string	"S_PLAY_RUN1"
.LASF431:
	.string	"S_PLAY_RUN2"
.LASF432:
	.string	"S_PLAY_RUN3"
.LASF433:
	.string	"S_PLAY_RUN4"
.LASF1158:
	.string	"S_BPAK"
.LASF125:
	.string	"double"
.LASF198:
	.string	"SPR_BEXP"
.LASF1449:
	.string	"player_s"
.LASF1115:
	.string	"S_BSKULL2"
.LASF157:
	.string	"SPR_PUFF"
.LASF1044:
	.string	"S_COMMKEEN"
.LASF1466:
	.string	"usedown"
.LASF836:
	.string	"S_BOS2_STND"
.LASF163:
	.string	"SPR_BFS1"
.LASF1067:
	.string	"S_SPAWN1"
.LASF1068:
	.string	"S_SPAWN2"
.LASF1069:
	.string	"S_SPAWN3"
.LASF1070:
	.string	"S_SPAWN4"
.LASF1240:
	.string	"S_TECHLAMP2"
.LASF1241:
	.string	"S_TECHLAMP3"
.LASF102:
	.string	"wp_chainsaw"
.LASF1277:
	.string	"MT_BABY"
.LASF1464:
	.string	"maxammo"
.LASF1181:
	.string	"S_LIVESTICK2"
.LASF1226:
	.string	"S_RTORCHSHRT"
.LASF1323:
	.string	"MT_MISC19"
.LASF185:
	.string	"SPR_SPID"
.LASF782:
	.string	"S_HEAD_STND"
.LASF1582:
	.string	"NetUpdate"
.LASF757:
	.string	"S_SARG_RUN1"
.LASF758:
	.string	"S_SARG_RUN2"
.LASF16:
	.string	"data1"
.LASF17:
	.string	"data2"
.LASF18:
	.string	"data3"
.LASF763:
	.string	"S_SARG_RUN7"
.LASF764:
	.string	"S_SARG_RUN8"
.LASF1301:
	.string	"MT_MISC1"
.LASF1302:
	.string	"MT_MISC2"
.LASF1303:
	.string	"MT_MISC3"
.LASF1304:
	.string	"MT_MISC4"
.LASF1305:
	.string	"MT_MISC5"
.LASF1306:
	.string	"MT_MISC6"
.LASF1307:
	.string	"MT_MISC7"
.LASF1308:
	.string	"MT_MISC8"
.LASF1309:
	.string	"MT_MISC9"
.LASF347:
	.string	"S_SAW"
.LASF214:
	.string	"SPR_MEGA"
.LASF436:
	.string	"S_PLAY_PAIN"
.LASF388:
	.string	"S_PLASBALL2"
.LASF1421:
	.string	"ps_flash"
.LASF1450:
	.string	"playerstate"
.LASF1578:
	.string	"D_ArbitrateNetStart"
.LASF1558:
	.string	"I_WaitVBL"
.LASF1577:
	.string	"D_CheckNetGame"
.LASF192:
	.string	"SPR_KEEN"
.LASF1022:
	.string	"S_SSWV_PAIN"
.LASF1403:
	.string	"painstate"
.LASF1057:
	.string	"S_KEENPAIN2"
.LASF118:
	.string	"pw_infrared"
.LASF544:
	.string	"S_VILE_ATK10"
.LASF545:
	.string	"S_VILE_ATK11"
.LASF1023:
	.string	"S_SSWV_PAIN2"
.LASF1387:
	.string	"MT_MISC80"
.LASF1410:
	.string	"deathsound"
.LASF1097:
	.string	"S_BON1A"
.LASF1098:
	.string	"S_BON1B"
.LASF1099:
	.string	"S_BON1C"
.LASF1100:
	.string	"S_BON1D"
.LASF1101:
	.string	"S_BON1E"
.LASF212:
	.string	"SPR_PSTR"
.LASF1574:
	.string	"numplaying"
.LASF1325:
	.string	"MT_MISC21"
.LASF768:
	.string	"S_SARG_PAIN"
.LASF201:
	.string	"SPR_BON2"
.LASF1320:
	.string	"MT_CLIP"
.LASF227:
	.string	"SPR_BFUG"
.LASF1375:
	.string	"MT_MISC68"
.LASF1093:
	.string	"S_BBAR1"
.LASF1094:
	.string	"S_BBAR2"
.LASF1095:
	.string	"S_BBAR3"
.LASF281:
	.string	"S_LIGHTDONE"
.LASF932:
	.string	"S_BSPI_PAIN2"
.LASF1458:
	.string	"backpack"
.LASF732:
	.string	"S_TROO_ATK1"
.LASF733:
	.string	"S_TROO_ATK2"
.LASF734:
	.string	"S_TROO_ATK3"
.LASF876:
	.string	"S_SKULL_DIE2"
.LASF877:
	.string	"S_SKULL_DIE3"
.LASF878:
	.string	"S_SKULL_DIE4"
.LASF879:
	.string	"S_SKULL_DIE5"
.LASF880:
	.string	"S_SKULL_DIE6"
.LASF231:
	.string	"SPR_PLAS"
.LASF1103:
	.string	"S_BON2A"
.LASF1104:
	.string	"S_BON2B"
.LASF144:
	.string	"SPR_PISF"
.LASF143:
	.string	"SPR_PISG"
.LASF1107:
	.string	"S_BON2E"
.LASF1330:
	.string	"MT_CHAINGUN"
.LASF1548:
	.string	"frameskip"
.LASF379:
	.string	"S_TBALLX1"
.LASF380:
	.string	"S_TBALLX2"
.LASF381:
	.string	"S_TBALLX3"
.LASF105:
	.string	"wp_nochange"
.LASF442:
	.string	"S_PLAY_DIE5"
.LASF1267:
	.string	"MT_CHAINGUY"
.LASF1139:
	.string	"S_MEGA3"
.LASF875:
	.string	"S_SKULL_DIE1"
.LASF1483:
	.string	"PST_DEAD"
.LASF1238:
	.string	"S_BRAINSTEM"
.LASF1043:
	.string	"S_KEENSTND"
.LASF168:
	.string	"SPR_PLAY"
.LASF73:
	.string	"_freeres_buf"
.LASF1460:
	.string	"readyweapon"
.LASF1178:
	.string	"S_HEADCANDLES2"
.LASF1297:
	.string	"MT_IFOG"
.LASF1495:
	.string	"intnum"
.LASF65:
	.string	"_cur_column"
.LASF259:
	.string	"SPR_FSKU"
.LASF494:
	.string	"S_SPOS_RUN6"
.LASF350:
	.string	"S_SAWUP"
.LASF1083:
	.string	"S_ARM1A"
.LASF686:
	.string	"S_CPOS_STND"
.LASF1338:
	.string	"MT_MISC31"
.LASF1436:
	.string	"momz"
.LASF29:
	.string	"BTS_SAVEMASK"
.LASF1341:
	.string	"MT_MISC34"
.LASF389:
	.string	"S_PLASEXP"
.LASF1344:
	.string	"MT_MISC37"
.LASF1173:
	.string	"S_DEADBOTTOM"
.LASF1230:
	.string	"S_HANGNOGUTS"
.LASF244:
	.string	"SPR_GOR3"
.LASF1402:
	.string	"attacksound"
.LASF1588:
	.string	"netconsole"
.LASF1134:
	.string	"S_PINS2"
.LASF1135:
	.string	"S_PINS3"
.LASF1136:
	.string	"S_PINS4"
.LASF28:
	.string	"BTS_SAVEGAME"
.LASF988:
	.string	"S_PAIN_ATK1"
.LASF989:
	.string	"S_PAIN_ATK2"
.LASF990:
	.string	"S_PAIN_ATK3"
.LASF991:
	.string	"S_PAIN_ATK4"
.LASF300:
	.string	"S_SGUNUP"
.LASF1487:
	.string	"CMD_SEND"
.LASF253:
	.string	"SPR_CBRA"
.LASF1408:
	.string	"deathstate"
.LASF1085:
	.string	"S_ARM2A"
.LASF10:
	.string	"ev_keydown"
.LASF1489:
	.string	"checksum"
.LASF20:
	.string	"BT_ATTACK"
.LASF1113:
	.string	"S_YKEY2"
.LASF563:
	.string	"S_FIRE3"
.LASF1401:
	.string	"reactiontime"
.LASF58:
	.string	"_IO_backup_base"
.LASF568:
	.string	"S_FIRE8"
.LASF808:
	.string	"S_BOSS_STND2"
.LASF32:
	.string	"eventhead"
.LASF49:
	.string	"_IO_read_ptr"
.LASF1581:
	.string	"stoptic"
.LASF703:
	.string	"S_CPOS_DIE2"
.LASF1589:
	.string	"netnode"
.LASF1428:
	.string	"sprev"
.LASF351:
	.string	"S_SAW1"
.LASF352:
	.string	"S_SAW2"
.LASF353:
	.string	"S_SAW3"
.LASF1096:
	.string	"S_BON1"
.LASF1102:
	.string	"S_BON2"
.LASF1444:
	.string	"player"
.LASF348:
	.string	"S_SAWB"
.LASF736:
	.string	"S_TROO_PAIN2"
.LASF72:
	.string	"_freeres_list"
.LASF1505:
	.string	"skill"
.LASF1283:
	.string	"MT_BOSSSPIT"
.LASF1596:
	.string	"HGetPacket"
.LASF561:
	.string	"S_FIRE1"
.LASF562:
	.string	"S_FIRE2"
.LASF123:
	.string	"fixed_t"
.LASF564:
	.string	"S_FIRE4"
.LASF565:
	.string	"S_FIRE5"
.LASF566:
	.string	"S_FIRE6"
.LASF567:
	.string	"S_FIRE7"
.LASF221:
	.string	"SPR_BROK"
.LASF569:
	.string	"S_FIRE9"
.LASF1351:
	.string	"MT_MISC44"
.LASF1352:
	.string	"MT_MISC45"
.LASF1154:
	.string	"S_CELL"
.LASF1354:
	.string	"MT_MISC47"
.LASF219:
	.string	"SPR_AMMO"
.LASF1355:
	.string	"MT_MISC48"
.LASF1356:
	.string	"MT_MISC49"
.LASF867:
	.string	"S_SKULL_RUN1"
.LASF868:
	.string	"S_SKULL_RUN2"
.LASF1234:
	.string	"S_HANGTLOOKUP"
.LASF329:
	.string	"S_CHAIN"
.LASF14:
	.string	"evtype_t"
.LASF359:
	.string	"S_PLASMAFLASH1"
.LASF315:
	.string	"S_DSGUN1"
.LASF316:
	.string	"S_DSGUN2"
.LASF210:
	.string	"SPR_SOUL"
.LASF170:
	.string	"SPR_SPOS"
.LASF319:
	.string	"S_DSGUN5"
.LASF320:
	.string	"S_DSGUN6"
.LASF321:
	.string	"S_DSGUN7"
.LASF322:
	.string	"S_DSGUN8"
.LASF323:
	.string	"S_DSGUN9"
.LASF487:
	.string	"S_SPOS_STND"
.LASF190:
	.string	"SPR_PAIN"
.LASF715:
	.string	"S_CPOS_RAISE1"
.LASF1459:
	.string	"frags"
.LASF1562:
	.string	"I_GetTime"
.LASF64:
	.string	"_old_offset"
.LASF1454:
	.string	"armorpoints"
.LASF39:
	.string	"buttons"
.LASF364:
	.string	"S_BFG1"
.LASF365:
	.string	"S_BFG2"
.LASF366:
	.string	"S_BFG3"
.LASF367:
	.string	"S_BFG4"
.LASF1532:
	.string	"nettics"
.LASF279:
	.string	"spritenum_t"
.LASF326:
	.string	"S_DSNR2"
.LASF866:
	.string	"S_SKULL_STND2"
.LASF1129:
	.string	"S_PINV2"
.LASF1130:
	.string	"S_PINV3"
.LASF759:
	.string	"S_SARG_RUN3"
.LASF760:
	.string	"S_SARG_RUN4"
.LASF1245:
	.string	"S_TECH2LAMP3"
.LASF1246:
	.string	"S_TECH2LAMP4"
.LASF142:
	.string	"SPR_PUNG"
.LASF710:
	.string	"S_CPOS_XDIE2"
.LASF711:
	.string	"S_CPOS_XDIE3"
.LASF712:
	.string	"S_CPOS_XDIE4"
.LASF713:
	.string	"S_CPOS_XDIE5"
.LASF714:
	.string	"S_CPOS_XDIE6"
.LASF895:
	.string	"S_SPID_ATK1"
.LASF896:
	.string	"S_SPID_ATK2"
.LASF897:
	.string	"S_SPID_ATK3"
.LASF63:
	.string	"_flags2"
.LASF619:
	.string	"S_SKEL_MISS1"
.LASF620:
	.string	"S_SKEL_MISS2"
.LASF621:
	.string	"S_SKEL_MISS3"
.LASF622:
	.string	"S_SKEL_MISS4"
.LASF376:
	.string	"S_PUFF4"
.LASF1116:
	.string	"S_RSKULL"
.LASF948:
	.string	"S_ARACH_PLAZ2"
.LASF1357:
	.string	"MT_MISC50"
.LASF796:
	.string	"S_HEAD_RAISE1"
.LASF1392:
	.string	"MT_MISC85"
.LASF797:
	.string	"S_HEAD_RAISE2"
.LASF798:
	.string	"S_HEAD_RAISE3"
.LASF1467:
	.string	"cheats"
.LASF205:
	.string	"SPR_BSKU"
.LASF800:
	.string	"S_HEAD_RAISE5"
.LASF801:
	.string	"S_HEAD_RAISE6"
.LASF1557:
	.string	"memset"
.LASF1335:
	.string	"MT_SUPERSHOTGUN"
.LASF216:
	.string	"SPR_PMAP"
.LASF1064:
	.string	"S_BRAINEYE"
.LASF217:
	.string	"SPR_PVIS"
.LASF1497:
	.string	"remotenode"
.LASF1482:
	.string	"PST_LIVE"
.LASF1293:
	.string	"MT_ARACHPLAZ"
.LASF542:
	.string	"S_VILE_ATK8"
.LASF483:
	.string	"S_POSS_RAISE1"
.LASF484:
	.string	"S_POSS_RAISE2"
.LASF485:
	.string	"S_POSS_RAISE3"
.LASF486:
	.string	"S_POSS_RAISE4"
.LASF338:
	.string	"S_MISSILEDOWN"
.LASF1202:
	.string	"S_FLOATSKULL2"
.LASF1203:
	.string	"S_FLOATSKULL3"
.LASF1137:
	.string	"S_MEGA"
.LASF817:
	.string	"S_BOSS_ATK1"
.LASF818:
	.string	"S_BOSS_ATK2"
.LASF819:
	.string	"S_BOSS_ATK3"
.LASF1431:
	.string	"subsector"
.LASF275:
	.string	"SPR_BRS1"
.LASF1594:
	.string	"HSendPacket"
.LASF624:
	.string	"S_SKEL_PAIN2"
.LASF1161:
	.string	"S_CSAW"
.LASF113:
	.string	"pw_invulnerability"
.LASF804:
	.string	"S_BRBALLX1"
.LASF805:
	.string	"S_BRBALLX2"
.LASF806:
	.string	"S_BRBALLX3"
.LASF934:
	.string	"S_BSPI_DIE2"
.LASF935:
	.string	"S_BSPI_DIE3"
.LASF936:
	.string	"S_BSPI_DIE4"
.LASF937:
	.string	"S_BSPI_DIE5"
.LASF98:
	.string	"wp_chaingun"
.LASF939:
	.string	"S_BSPI_DIE7"
.LASF87:
	.string	"skill_t"
.LASF863:
	.string	"S_BOS2_RAISE6"
.LASF490:
	.string	"S_SPOS_RUN2"
.LASF491:
	.string	"S_SPOS_RUN3"
.LASF993:
	.string	"S_PAIN_PAIN2"
.LASF628:
	.string	"S_SKEL_DIE4"
.LASF224:
	.string	"SPR_SHEL"
.LASF1376:
	.string	"MT_MISC69"
.LASF1455:
	.string	"armortype"
.LASF4:
	.string	"false"
.LASF276:
	.string	"SPR_TLMP"
.LASF455:
	.string	"S_POSS_STND2"
.LASF1334:
	.string	"MT_SHOTGUN"
.LASF1572:
	.string	"availabletics"
.LASF1259:
	.string	"MT_SHOTGUY"
.LASF1470:
	.string	"itemcount"
.LASF1239:
	.string	"S_TECHLAMP"
.LASF1280:
	.string	"MT_WOLFSS"
.LASF837:
	.string	"S_BOS2_STND2"
.LASF1541:
	.string	"maxsend"
.LASF332:
	.string	"S_CHAIN1"
.LASF333:
	.string	"S_CHAIN2"
.LASF334:
	.string	"S_CHAIN3"
.LASF31:
	.string	"events"
.LASF386:
	.string	"S_RBALLX3"
.LASF1535:
	.string	"remoteresend"
.LASF261:
	.string	"SPR_TBLU"
.LASF488:
	.string	"S_SPOS_STND2"
.LASF6:
	.string	"unsigned int"
.LASF1427:
	.string	"snext"
.LASF112:
	.string	"am_noammo"
.LASF135:
	.string	"thinker_s"
.LASF139:
	.string	"thinker_t"
.LASF464:
	.string	"S_POSS_ATK1"
.LASF465:
	.string	"S_POSS_ATK2"
.LASF466:
	.string	"S_POSS_ATK3"
.LASF82:
	.string	"sk_baby"
.LASF1378:
	.string	"MT_MISC71"
.LASF1227:
	.string	"S_RTORCHSHRT2"
.LASF1228:
	.string	"S_RTORCHSHRT3"
.LASF898:
	.string	"S_SPID_ATK4"
.LASF1131:
	.string	"S_PINV4"
.LASF40:
	.string	"short int"
.LASF915:
	.string	"S_BSPI_RUN1"
.LASF1384:
	.string	"MT_MISC77"
.LASF1385:
	.string	"MT_MISC78"
.LASF1386:
	.string	"MT_MISC79"
.LASF1275:
	.string	"MT_SKULL"
.LASF1262:
	.string	"MT_UNDEAD"
.LASF136:
	.string	"prev"
.LASF66:
	.string	"_vtable_offset"
.LASF625:
	.string	"S_SKEL_DIE1"
.LASF626:
	.string	"S_SKEL_DIE2"
.LASF627:
	.string	"S_SKEL_DIE3"
.LASF172:
	.string	"SPR_FIRE"
.LASF629:
	.string	"S_SKEL_DIE5"
.LASF630:
	.string	"S_SKEL_DIE6"
.LASF1522:
	.string	"demorecording"
.LASF1236:
	.string	"S_COLONGIBS"
.LASF277:
	.string	"SPR_TLP2"
.LASF387:
	.string	"S_PLASBALL"
.LASF233:
	.string	"SPR_SGN2"
.LASF121:
	.string	"options"
.LASF186:
	.string	"SPR_BSPI"
.LASF188:
	.string	"SPR_APBX"
.LASF1478:
	.string	"colormap"
.LASF1310:
	.string	"MT_MISC10"
.LASF1311:
	.string	"MT_MISC11"
.LASF1312:
	.string	"MT_MISC12"
.LASF1314:
	.string	"MT_MISC13"
.LASF1316:
	.string	"MT_MISC14"
.LASF1317:
	.string	"MT_MISC15"
.LASF1318:
	.string	"MT_MISC16"
.LASF1321:
	.string	"MT_MISC17"
.LASF1322:
	.string	"MT_MISC18"
.LASF1150:
	.string	"S_CLIP"
.LASF1412:
	.string	"radius"
.LASF1439:
	.string	"health"
.LASF1284:
	.string	"MT_BOSSTARGET"
.LASF1584:
	.string	"newtics"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"d_net.c"
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
