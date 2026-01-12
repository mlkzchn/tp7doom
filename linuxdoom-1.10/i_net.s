	.file	"i_net.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "i_net.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 49
rcsid:
	.string	"$Id: m_bbox.c,v 1.1 1997/02/03 22:45:10 b1 Exp $"
	.globl	DOOMPORT
	.data
	.align 4
	.type	DOOMPORT, @object
	.size	DOOMPORT, 4
DOOMPORT:
	.long	5029
	.globl	sendsocket
	.bss
	.align 4
	.type	sendsocket, @object
	.size	sendsocket, 4
sendsocket:
	.zero	4
	.globl	insocket
	.align 4
	.type	insocket, @object
	.size	insocket, 4
insocket:
	.zero	4
	.globl	sendaddress
	.align 32
	.type	sendaddress, @object
	.size	sendaddress, 128
sendaddress:
	.zero	128
	.globl	netget
	.align 8
	.type	netget, @object
	.size	netget, 8
netget:
	.zero	8
	.globl	netsend
	.align 8
	.type	netsend, @object
	.size	netsend, 8
netsend:
	.zero	8
	.section	.rodata
.LC0:
	.string	"can't create socket: %s"
	.text
	.globl	UDPsocket
	.type	UDPsocket, @function
UDPsocket:
.LFB6:
	.file 1 "i_net.c"
	.loc 1 91 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# i_net.c:95:     s = socket (PF_INET, SOCK_DGRAM, IPPROTO_UDP);
	.loc 1 95 9
	movl	$17, %edx	#,
	movl	$2, %esi	#,
	movl	$2, %edi	#,
	call	socket@PLT	#
	movl	%eax, -4(%rbp)	# tmp87, s
# i_net.c:96:     if (s<0)
	.loc 1 96 8
	cmpl	$0, -4(%rbp)	#, s
	jns	.L2	#,
# i_net.c:97: 	I_Error ("can't create socket: %s",strerror(errno));
	.loc 1 97 46
	call	__errno_location@PLT	#
# i_net.c:97: 	I_Error ("can't create socket: %s",strerror(errno));
	.loc 1 97 2 discriminator 1
	movl	(%rax), %eax	# *_1, _2
	movl	%eax, %edi	# _2,
	call	strerror@PLT	#
# i_net.c:97: 	I_Error ("can't create socket: %s",strerror(errno));
	.loc 1 97 2 is_stmt 0 discriminator 2
	movq	%rax, %rsi	# _3,
	leaq	.LC0(%rip), %rax	#, tmp88
	movq	%rax, %rdi	# tmp88,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L2:
# i_net.c:99:     return s;
	.loc 1 99 12 is_stmt 1
	movl	-4(%rbp), %eax	# s, _10
# i_net.c:100: }
	.loc 1 100 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	UDPsocket, .-UDPsocket
	.section	.rodata
.LC1:
	.string	"BindToPort: bind: %s"
	.text
	.globl	BindToLocalPort
	.type	BindToLocalPort, @function
BindToLocalPort:
.LFB7:
	.loc 1 109 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -52(%rbp)	# s, s
	movl	%esi, -56(%rbp)	# port, port
# i_net.c:109: {
	.loc 1 109 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp92
	movq	%rax, -8(%rbp)	# tmp92, D.8238
	xorl	%eax, %eax	# tmp92
# i_net.c:113:     memset (&address, 0, sizeof(address));
	.loc 1 113 5
	leaq	-32(%rbp), %rax	#, tmp86
	movl	$16, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp86,
	call	memset@PLT	#
# i_net.c:114:     address.sin_family = AF_INET;
	.loc 1 114 24
	movw	$2, -32(%rbp)	#, address.sin_family
# i_net.c:115:     address.sin_addr.s_addr = INADDR_ANY;
	.loc 1 115 29
	movl	$0, -28(%rbp)	#, address.sin_addr.s_addr
# i_net.c:116:     address.sin_port = port;
	.loc 1 116 22
	movl	-56(%rbp), %eax	# port, tmp87
	movw	%ax, -30(%rbp)	# _1, address.sin_port
# i_net.c:118:     v = bind (s, (void *)&address, sizeof(address));
	.loc 1 118 9
	leaq	-32(%rbp), %rcx	#, tmp88
	movl	-52(%rbp), %eax	# s, tmp89
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# tmp88,
	movl	%eax, %edi	# tmp89,
	call	bind@PLT	#
	movl	%eax, -36(%rbp)	# tmp90, v
# i_net.c:119:     if (v == -1)
	.loc 1 119 8
	cmpl	$-1, -36(%rbp)	#, v
	jne	.L7	#,
# i_net.c:120: 	I_Error ("BindToPort: bind: %s", strerror(errno));
	.loc 1 120 44
	call	__errno_location@PLT	#
# i_net.c:120: 	I_Error ("BindToPort: bind: %s", strerror(errno));
	.loc 1 120 2 discriminator 1
	movl	(%rax), %eax	# *_2, _3
	movl	%eax, %edi	# _3,
	call	strerror@PLT	#
# i_net.c:120: 	I_Error ("BindToPort: bind: %s", strerror(errno));
	.loc 1 120 2 is_stmt 0 discriminator 2
	movq	%rax, %rsi	# _4,
	leaq	.LC1(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L7:
# i_net.c:121: }
	.loc 1 121 1 is_stmt 1
	nop	
	movq	-8(%rbp), %rax	# D.8238, tmp93
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp93
	je	.L6	#,
	call	__stack_chk_fail@PLT	#
.L6:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	BindToLocalPort, .-BindToLocalPort
	.globl	PacketSend
	.type	PacketSend, @function
PacketSend:
.LFB8:
	.loc 1 128 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
# i_net.c:128: {
	.loc 1 128 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp179
	movq	%rax, -8(%rbp)	# tmp179, D.8241
	xorl	%eax, %eax	# tmp179
# i_net.c:133:     sw.checksum = htonl(netbuffer->checksum);
	.loc 1 133 19
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.0_1
	movl	(%rax), %eax	# netbuffer.0_1->checksum, _2
	sall	$24, %eax	#, _2
	movl	%eax, %edx	# _2, _3
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.1_4
	movl	(%rax), %eax	# netbuffer.1_4->checksum, _5
	sall	$8, %eax	#, _6
	andl	$16711680, %eax	#, _7
	orl	%eax, %edx	# _7, _8
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.2_9
	movl	(%rax), %eax	# netbuffer.2_9->checksum, _10
	movl	%eax, %eax	# _10, _11
	shrq	$8, %rax	#, _12
	andl	$65280, %eax	#, _14
	orl	%eax, %edx	# _14, _15
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.3_16
	movl	(%rax), %eax	# netbuffer.3_16->checksum, _17
	shrl	$24, %eax	#, _18
	orl	%edx, %eax	# _15, _19
# i_net.c:133:     sw.checksum = htonl(netbuffer->checksum);
	.loc 1 133 17
	movl	%eax, -112(%rbp)	# _19, sw.checksum
# i_net.c:134:     sw.player = netbuffer->player;
	.loc 1 134 26
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.4_20
	movzbl	6(%rax), %eax	# netbuffer.4_20->player, _21
# i_net.c:134:     sw.player = netbuffer->player;
	.loc 1 134 15
	movb	%al, -106(%rbp)	# _21, sw.player
# i_net.c:135:     sw.retransmitfrom = netbuffer->retransmitfrom;
	.loc 1 135 34
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.5_22
	movzbl	4(%rax), %eax	# netbuffer.5_22->retransmitfrom, _23
# i_net.c:135:     sw.retransmitfrom = netbuffer->retransmitfrom;
	.loc 1 135 23
	movb	%al, -108(%rbp)	# _23, sw.retransmitfrom
# i_net.c:136:     sw.starttic = netbuffer->starttic;
	.loc 1 136 28
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.6_24
	movzbl	5(%rax), %eax	# netbuffer.6_24->starttic, _25
# i_net.c:136:     sw.starttic = netbuffer->starttic;
	.loc 1 136 17
	movb	%al, -107(%rbp)	# _25, sw.starttic
# i_net.c:137:     sw.numtics = netbuffer->numtics;
	.loc 1 137 27
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.7_26
	movzbl	7(%rax), %eax	# netbuffer.7_26->numtics, _27
# i_net.c:137:     sw.numtics = netbuffer->numtics;
	.loc 1 137 16
	movb	%al, -105(%rbp)	# _27, sw.numtics
# i_net.c:138:     for (c=0 ; c< netbuffer->numtics ; c++)
	.loc 1 138 11
	movl	$0, -116(%rbp)	#, c
# i_net.c:138:     for (c=0 ; c< netbuffer->numtics ; c++)
	.loc 1 138 5
	jmp	.L9	#
.L10:
# i_net.c:140: 	sw.cmds[c].forwardmove = netbuffer->cmds[c].forwardmove;
	.loc 1 140 36
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.8_28
# i_net.c:140: 	sw.cmds[c].forwardmove = netbuffer->cmds[c].forwardmove;
	.loc 1 140 45
	movl	-116(%rbp), %edx	# c, tmp148
	movslq	%edx, %rdx	# tmp148, tmp147
	movzbl	8(%rax,%rdx,8), %edx	# netbuffer.8_28->cmds[c_66].forwardmove, _29
# i_net.c:140: 	sw.cmds[c].forwardmove = netbuffer->cmds[c].forwardmove;
	.loc 1 140 25
	movl	-116(%rbp), %eax	# c, tmp150
	cltq
	movb	%dl, -104(%rbp,%rax,8)	# _29, sw.cmds[c_66].forwardmove
# i_net.c:141: 	sw.cmds[c].sidemove = netbuffer->cmds[c].sidemove;
	.loc 1 141 33
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.9_30
# i_net.c:141: 	sw.cmds[c].sidemove = netbuffer->cmds[c].sidemove;
	.loc 1 141 42
	movl	-116(%rbp), %edx	# c, tmp152
	movslq	%edx, %rdx	# tmp152, tmp151
	movzbl	9(%rax,%rdx,8), %edx	# netbuffer.9_30->cmds[c_66].sidemove, _31
# i_net.c:141: 	sw.cmds[c].sidemove = netbuffer->cmds[c].sidemove;
	.loc 1 141 22
	movl	-116(%rbp), %eax	# c, tmp154
	cltq
	movb	%dl, -103(%rbp,%rax,8)	# _31, sw.cmds[c_66].sidemove
# i_net.c:142: 	sw.cmds[c].angleturn = htons(netbuffer->cmds[c].angleturn);
	.loc 1 142 25
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.10_32
	movl	-116(%rbp), %edx	# c, tmp156
	movslq	%edx, %rdx	# tmp156, tmp155
	movzwl	10(%rax,%rdx,8), %eax	# netbuffer.10_32->cmds[c_66].angleturn, _33
	sall	$8, %eax	#, _33
	movl	%eax, %ecx	# _33, _34
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.11_35
	movl	-116(%rbp), %edx	# c, tmp158
	movslq	%edx, %rdx	# tmp158, tmp157
	movzwl	10(%rax,%rdx,8), %eax	# netbuffer.11_35->cmds[c_66].angleturn, _36
	shrw	$8, %ax	#, _38
	orl	%eax, %ecx	# _39, _34
	movl	%ecx, %edx	# _34, _40
# i_net.c:142: 	sw.cmds[c].angleturn = htons(netbuffer->cmds[c].angleturn);
	.loc 1 142 23
	movl	-116(%rbp), %eax	# c, tmp160
	cltq
	movw	%dx, -102(%rbp,%rax,8)	# _40, sw.cmds[c_66].angleturn
# i_net.c:143: 	sw.cmds[c].consistancy = htons(netbuffer->cmds[c].consistancy);
	.loc 1 143 27
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.12_41
	movl	-116(%rbp), %edx	# c, tmp162
	movslq	%edx, %rdx	# tmp162, tmp161
	movzwl	12(%rax,%rdx,8), %eax	# netbuffer.12_41->cmds[c_66].consistancy, _42
	sall	$8, %eax	#, _42
	movl	%eax, %ecx	# _42, _43
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.13_44
	movl	-116(%rbp), %edx	# c, tmp164
	movslq	%edx, %rdx	# tmp164, tmp163
	movzwl	12(%rax,%rdx,8), %eax	# netbuffer.13_44->cmds[c_66].consistancy, _45
	shrw	$8, %ax	#, _47
	orl	%eax, %ecx	# _48, _43
	movl	%ecx, %edx	# _43, _49
# i_net.c:143: 	sw.cmds[c].consistancy = htons(netbuffer->cmds[c].consistancy);
	.loc 1 143 25
	movl	-116(%rbp), %eax	# c, tmp166
	cltq
	movw	%dx, -100(%rbp,%rax,8)	# _49, sw.cmds[c_66].consistancy
# i_net.c:144: 	sw.cmds[c].chatchar = netbuffer->cmds[c].chatchar;
	.loc 1 144 33
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.14_50
# i_net.c:144: 	sw.cmds[c].chatchar = netbuffer->cmds[c].chatchar;
	.loc 1 144 42
	movl	-116(%rbp), %edx	# c, tmp168
	movslq	%edx, %rdx	# tmp168, tmp167
	movzbl	14(%rax,%rdx,8), %edx	# netbuffer.14_50->cmds[c_66].chatchar, _51
# i_net.c:144: 	sw.cmds[c].chatchar = netbuffer->cmds[c].chatchar;
	.loc 1 144 22
	movl	-116(%rbp), %eax	# c, tmp170
	cltq
	movb	%dl, -98(%rbp,%rax,8)	# _51, sw.cmds[c_66].chatchar
# i_net.c:145: 	sw.cmds[c].buttons = netbuffer->cmds[c].buttons;
	.loc 1 145 32
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.15_52
# i_net.c:145: 	sw.cmds[c].buttons = netbuffer->cmds[c].buttons;
	.loc 1 145 41
	movl	-116(%rbp), %edx	# c, tmp172
	movslq	%edx, %rdx	# tmp172, tmp171
	movzbl	15(%rax,%rdx,8), %edx	# netbuffer.15_52->cmds[c_66].buttons, _53
# i_net.c:145: 	sw.cmds[c].buttons = netbuffer->cmds[c].buttons;
	.loc 1 145 21
	movl	-116(%rbp), %eax	# c, tmp174
	cltq
	movb	%dl, -97(%rbp,%rax,8)	# _53, sw.cmds[c_66].buttons
# i_net.c:138:     for (c=0 ; c< netbuffer->numtics ; c++)
	.loc 1 138 41 discriminator 3
	addl	$1, -116(%rbp)	#, c
.L9:
# i_net.c:138:     for (c=0 ; c< netbuffer->numtics ; c++)
	.loc 1 138 28 discriminator 1
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.16_54
	movzbl	7(%rax), %eax	# netbuffer.16_54->numtics, _55
	movzbl	%al, %eax	# _55, _56
# i_net.c:138:     for (c=0 ; c< netbuffer->numtics ; c++)
	.loc 1 138 17 discriminator 1
	cmpl	%eax, -116(%rbp)	# _56, c
	jl	.L10	#,
# i_net.c:150: 		,0,(void *)&sendaddress[doomcom->remotenode]
	.loc 1 150 34
	movq	doomcom(%rip), %rax	# doomcom, doomcom.17_57
	movzwl	12(%rax), %eax	# doomcom.17_57->remotenode, _58
	cwtl
# i_net.c:150: 		,0,(void *)&sendaddress[doomcom->remotenode]
	.loc 1 150 14
	cltq
	salq	$4, %rax	#, tmp175
	movq	%rax, %rdx	# tmp175, tmp176
	leaq	sendaddress(%rip), %rax	#, tmp177
	leaq	(%rdx,%rax), %rcx	#, _60
# i_net.c:149:     c = sendto (sendsocket , &sw, doomcom->datalength
	.loc 1 149 42
	movq	doomcom(%rip), %rax	# doomcom, doomcom.18_61
	movzwl	14(%rax), %eax	# doomcom.18_61->datalength, _62
# i_net.c:149:     c = sendto (sendsocket , &sw, doomcom->datalength
	.loc 1 149 9
	movswq	%ax, %rdx	# _62, _63
	movl	sendsocket(%rip), %eax	# sendsocket, sendsocket.19_64
	leaq	-112(%rbp), %rsi	#, tmp178
	movl	$16, %r9d	#,
	movq	%rcx, %r8	# _60,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# sendsocket.19_64,
	call	sendto@PLT	#
# i_net.c:149:     c = sendto (sendsocket , &sw, doomcom->datalength
	.loc 1 149 7 discriminator 1
	movl	%eax, -116(%rbp)	# _65, c
# i_net.c:155: }
	.loc 1 155 1
	nop	
	movq	-8(%rbp), %rax	# D.8241, tmp180
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp180
	je	.L11	#,
	call	__stack_chk_fail@PLT	#
.L11:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	PacketSend, .-PacketSend
	.section	.rodata
.LC2:
	.string	"GetPacket: %s"
.LC3:
	.string	"len=%d:p=[0x%x 0x%x] \n"
	.text
	.globl	PacketGet
	.type	PacketGet, @function
PacketGet:
.LFB9:
	.loc 1 162 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
# i_net.c:162: {
	.loc 1 162 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp199
	movq	%rax, -8(%rbp)	# tmp199, D.8242
	xorl	%eax, %eax	# tmp199
# i_net.c:169:     fromlen = sizeof(fromaddress);
	.loc 1 169 13
	movl	$16, -140(%rbp)	#, fromlen
# i_net.c:170:     c = recvfrom (insocket, &sw, sizeof(sw), 0
	.loc 1 170 9
	movl	insocket(%rip), %eax	# insocket, insocket.20_1
	leaq	-140(%rbp), %rcx	#, tmp159
	leaq	-128(%rbp), %rdx	#, tmp160
	leaq	-112(%rbp), %rsi	#, tmp161
	movq	%rcx, %r9	# tmp159,
	movq	%rdx, %r8	# tmp160,
	movl	$0, %ecx	#,
	movl	$104, %edx	#,
	movl	%eax, %edi	# insocket.20_1,
	call	recvfrom@PLT	#
# i_net.c:170:     c = recvfrom (insocket, &sw, sizeof(sw), 0
	.loc 1 170 7 discriminator 1
	movl	%eax, -132(%rbp)	# _2, c
# i_net.c:172:     if (c == -1 )
	.loc 1 172 8
	cmpl	$-1, -132(%rbp)	#, c
	jne	.L13	#,
# i_net.c:174: 	if (errno != EWOULDBLOCK)
	.loc 1 174 6
	call	__errno_location@PLT	#
# i_net.c:174: 	if (errno != EWOULDBLOCK)
	.loc 1 174 6 is_stmt 0 discriminator 1
	movl	(%rax), %eax	# *_3, _4
# i_net.c:174: 	if (errno != EWOULDBLOCK)
	.loc 1 174 5 is_stmt 1 discriminator 1
	cmpl	$11, %eax	#, _4
	je	.L14	#,
# i_net.c:175: 	    I_Error ("GetPacket: %s",strerror(errno));
	.loc 1 175 40
	call	__errno_location@PLT	#
# i_net.c:175: 	    I_Error ("GetPacket: %s",strerror(errno));
	.loc 1 175 6 discriminator 1
	movl	(%rax), %eax	# *_5, _6
	movl	%eax, %edi	# _6,
	call	strerror@PLT	#
# i_net.c:175: 	    I_Error ("GetPacket: %s",strerror(errno));
	.loc 1 175 6 is_stmt 0 discriminator 2
	movq	%rax, %rsi	# _7,
	leaq	.LC2(%rip), %rax	#, tmp162
	movq	%rax, %rdi	# tmp162,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L14:
# i_net.c:176: 	doomcom->remotenode = -1;		// no packet
	.loc 1 176 9 is_stmt 1
	movq	doomcom(%rip), %rax	# doomcom, doomcom.21_8
# i_net.c:176: 	doomcom->remotenode = -1;		// no packet
	.loc 1 176 22
	movw	$-1, 12(%rax)	#, doomcom.21_8->remotenode
# i_net.c:177: 	return;
	.loc 1 177 2
	jmp	.L12	#
.L13:
.LBB2:
# i_net.c:182: 	if (first)
	.loc 1 182 6
	movl	first.0(%rip), %eax	# first, first.22_9
# i_net.c:182: 	if (first)
	.loc 1 182 5
	testl	%eax, %eax	# first.22_9
	je	.L16	#,
# i_net.c:183: 	    printf("len=%d:p=[0x%x 0x%x] \n", c, *(int*)&sw, *((int*)&sw+1));
	.loc 1 183 66
	leaq	-112(%rbp), %rax	#, _10
	addq	$4, %rax	#, _10
# i_net.c:183: 	    printf("len=%d:p=[0x%x 0x%x] \n", c, *(int*)&sw, *((int*)&sw+1));
	.loc 1 183 6
	movl	(%rax), %ecx	# *_10, _11
# i_net.c:183: 	    printf("len=%d:p=[0x%x 0x%x] \n", c, *(int*)&sw, *((int*)&sw+1));
	.loc 1 183 50
	leaq	-112(%rbp), %rax	#, sw.23_12
# i_net.c:183: 	    printf("len=%d:p=[0x%x 0x%x] \n", c, *(int*)&sw, *((int*)&sw+1));
	.loc 1 183 6
	movl	(%rax), %edx	# MEM[(int *)sw.23_12], _13
	movl	-132(%rbp), %eax	# c, tmp163
	movl	%eax, %esi	# tmp163,
	leaq	.LC3(%rip), %rax	#, tmp164
	movq	%rax, %rdi	# tmp164,
	movl	$0, %eax	#,
	call	printf@PLT	#
.L16:
# i_net.c:184: 	first = 0;
	.loc 1 184 8
	movl	$0, first.0(%rip)	#, first
.LBE2:
# i_net.c:188:     for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 188 11
	movl	$0, -136(%rbp)	#, i
# i_net.c:188:     for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 188 5
	jmp	.L17	#
.L20:
# i_net.c:189: 	if ( fromaddress.sin_addr.s_addr == sendaddress[i].sin_addr.s_addr )
	.loc 1 189 27
	movl	-124(%rbp), %edx	# fromaddress.sin_addr.s_addr, _14
# i_net.c:189: 	if ( fromaddress.sin_addr.s_addr == sendaddress[i].sin_addr.s_addr )
	.loc 1 189 61
	movl	-136(%rbp), %eax	# i, tmp166
	cltq
	salq	$4, %rax	#, tmp165
	movq	%rax, %rcx	# tmp165, tmp167
	leaq	4+sendaddress(%rip), %rax	#, tmp168
	movl	(%rcx,%rax), %eax	# sendaddress[i_78].sin_addr.s_addr, _15
# i_net.c:189: 	if ( fromaddress.sin_addr.s_addr == sendaddress[i].sin_addr.s_addr )
	.loc 1 189 5
	cmpl	%eax, %edx	# _15, _14
	je	.L26	#,
# i_net.c:188:     for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 188 39 discriminator 2
	addl	$1, -136(%rbp)	#, i
.L17:
# i_net.c:188:     for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 188 25 discriminator 1
	movq	doomcom(%rip), %rax	# doomcom, doomcom.24_16
	movzwl	16(%rax), %eax	# doomcom.24_16->numnodes, _17
	cwtl
# i_net.c:188:     for (i=0 ; i<doomcom->numnodes ; i++)
	.loc 1 188 17 discriminator 1
	cmpl	%eax, -136(%rbp)	# _18, i
	jl	.L20	#,
	jmp	.L19	#
.L26:
# i_net.c:190: 	    break;
	.loc 1 190 6
	nop	
.L19:
# i_net.c:192:     if (i == doomcom->numnodes)
	.loc 1 192 21
	movq	doomcom(%rip), %rax	# doomcom, doomcom.25_19
	movzwl	16(%rax), %eax	# doomcom.25_19->numnodes, _20
	cwtl
# i_net.c:192:     if (i == doomcom->numnodes)
	.loc 1 192 8
	cmpl	%eax, -136(%rbp)	# _21, i
	jne	.L21	#,
# i_net.c:195: 	doomcom->remotenode = -1;		// no packet
	.loc 1 195 9
	movq	doomcom(%rip), %rax	# doomcom, doomcom.26_22
# i_net.c:195: 	doomcom->remotenode = -1;		// no packet
	.loc 1 195 22
	movw	$-1, 12(%rax)	#, doomcom.26_22->remotenode
# i_net.c:196: 	return;
	.loc 1 196 2
	jmp	.L12	#
.L21:
# i_net.c:199:     doomcom->remotenode = i;			// good packet from a game player
	.loc 1 199 12
	movq	doomcom(%rip), %rax	# doomcom, doomcom.27_23
# i_net.c:199:     doomcom->remotenode = i;			// good packet from a game player
	.loc 1 199 25
	movl	-136(%rbp), %edx	# i, tmp169
	movw	%dx, 12(%rax)	# _24, doomcom.27_23->remotenode
# i_net.c:200:     doomcom->datalength = c;
	.loc 1 200 12
	movq	doomcom(%rip), %rax	# doomcom, doomcom.28_25
# i_net.c:200:     doomcom->datalength = c;
	.loc 1 200 25
	movl	-132(%rbp), %edx	# c, tmp170
	movw	%dx, 14(%rax)	# _26, doomcom.28_25->datalength
# i_net.c:203:     netbuffer->checksum = ntohl(sw.checksum);
	.loc 1 203 27
	movl	-112(%rbp), %eax	# sw.checksum, _27
	sall	$24, %eax	#, _27
	movl	%eax, %edx	# _27, _28
	movl	-112(%rbp), %eax	# sw.checksum, _29
	sall	$8, %eax	#, _30
	andl	$16711680, %eax	#, _31
	orl	%eax, %edx	# _31, _32
	movl	-112(%rbp), %eax	# sw.checksum, _33
	movl	%eax, %eax	# _33, _34
	shrq	$8, %rax	#, _35
	andl	$65280, %eax	#, _37
	movl	%edx, %ecx	# _32, _32
	orl	%eax, %ecx	# _37, _32
	movl	-112(%rbp), %eax	# sw.checksum, _39
	shrl	$24, %eax	#, _39
	movl	%eax, %edx	# _39, _40
# i_net.c:203:     netbuffer->checksum = ntohl(sw.checksum);
	.loc 1 203 14
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.29_41
# i_net.c:203:     netbuffer->checksum = ntohl(sw.checksum);
	.loc 1 203 27
	orl	%ecx, %edx	# _38, _42
# i_net.c:203:     netbuffer->checksum = ntohl(sw.checksum);
	.loc 1 203 25
	movl	%edx, (%rax)	# _42, netbuffer.29_41->checksum
# i_net.c:204:     netbuffer->player = sw.player;
	.loc 1 204 14
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.30_43
# i_net.c:204:     netbuffer->player = sw.player;
	.loc 1 204 27
	movzbl	-106(%rbp), %edx	# sw.player, _44
# i_net.c:204:     netbuffer->player = sw.player;
	.loc 1 204 23
	movb	%dl, 6(%rax)	# _44, netbuffer.30_43->player
# i_net.c:205:     netbuffer->retransmitfrom = sw.retransmitfrom;
	.loc 1 205 14
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.31_45
# i_net.c:205:     netbuffer->retransmitfrom = sw.retransmitfrom;
	.loc 1 205 35
	movzbl	-108(%rbp), %edx	# sw.retransmitfrom, _46
# i_net.c:205:     netbuffer->retransmitfrom = sw.retransmitfrom;
	.loc 1 205 31
	movb	%dl, 4(%rax)	# _46, netbuffer.31_45->retransmitfrom
# i_net.c:206:     netbuffer->starttic = sw.starttic;
	.loc 1 206 14
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.32_47
# i_net.c:206:     netbuffer->starttic = sw.starttic;
	.loc 1 206 29
	movzbl	-107(%rbp), %edx	# sw.starttic, _48
# i_net.c:206:     netbuffer->starttic = sw.starttic;
	.loc 1 206 25
	movb	%dl, 5(%rax)	# _48, netbuffer.32_47->starttic
# i_net.c:207:     netbuffer->numtics = sw.numtics;
	.loc 1 207 14
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.33_49
# i_net.c:207:     netbuffer->numtics = sw.numtics;
	.loc 1 207 28
	movzbl	-105(%rbp), %edx	# sw.numtics, _50
# i_net.c:207:     netbuffer->numtics = sw.numtics;
	.loc 1 207 24
	movb	%dl, 7(%rax)	# _50, netbuffer.33_49->numtics
# i_net.c:209:     for (c=0 ; c< netbuffer->numtics ; c++)
	.loc 1 209 11
	movl	$0, -132(%rbp)	#, c
# i_net.c:209:     for (c=0 ; c< netbuffer->numtics ; c++)
	.loc 1 209 5
	jmp	.L22	#
.L23:
# i_net.c:211: 	netbuffer->cmds[c].forwardmove = sw.cmds[c].forwardmove;
	.loc 1 211 11
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.34_51
# i_net.c:211: 	netbuffer->cmds[c].forwardmove = sw.cmds[c].forwardmove;
	.loc 1 211 45
	movl	-132(%rbp), %edx	# c, tmp172
	movslq	%edx, %rdx	# tmp172, tmp171
	movzbl	-104(%rbp,%rdx,8), %ecx	# sw.cmds[c_79].forwardmove, _52
# i_net.c:211: 	netbuffer->cmds[c].forwardmove = sw.cmds[c].forwardmove;
	.loc 1 211 33
	movl	-132(%rbp), %edx	# c, tmp174
	movslq	%edx, %rdx	# tmp174, tmp173
	movb	%cl, 8(%rax,%rdx,8)	# _52, netbuffer.34_51->cmds[c_79].forwardmove
# i_net.c:212: 	netbuffer->cmds[c].sidemove = sw.cmds[c].sidemove;
	.loc 1 212 11
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.35_53
# i_net.c:212: 	netbuffer->cmds[c].sidemove = sw.cmds[c].sidemove;
	.loc 1 212 42
	movl	-132(%rbp), %edx	# c, tmp176
	movslq	%edx, %rdx	# tmp176, tmp175
	movzbl	-103(%rbp,%rdx,8), %ecx	# sw.cmds[c_79].sidemove, _54
# i_net.c:212: 	netbuffer->cmds[c].sidemove = sw.cmds[c].sidemove;
	.loc 1 212 30
	movl	-132(%rbp), %edx	# c, tmp178
	movslq	%edx, %rdx	# tmp178, tmp177
	movb	%cl, 9(%rax,%rdx,8)	# _54, netbuffer.35_53->cmds[c_79].sidemove
# i_net.c:213: 	netbuffer->cmds[c].angleturn = ntohs(sw.cmds[c].angleturn);
	.loc 1 213 33
	movl	-132(%rbp), %eax	# c, tmp180
	cltq
	movzwl	-102(%rbp,%rax,8), %eax	# sw.cmds[c_79].angleturn, _55
	sall	$8, %eax	#, _55
	movl	%eax, %edx	# _55, _56
	movl	-132(%rbp), %eax	# c, tmp182
	cltq
	movzwl	-102(%rbp,%rax,8), %eax	# sw.cmds[c_79].angleturn, _57
	shrw	$8, %ax	#, _59
	movl	%eax, %ecx	# _59, _60
# i_net.c:213: 	netbuffer->cmds[c].angleturn = ntohs(sw.cmds[c].angleturn);
	.loc 1 213 11
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.36_61
# i_net.c:213: 	netbuffer->cmds[c].angleturn = ntohs(sw.cmds[c].angleturn);
	.loc 1 213 33
	orl	%edx, %ecx	# _56, _62
# i_net.c:213: 	netbuffer->cmds[c].angleturn = ntohs(sw.cmds[c].angleturn);
	.loc 1 213 31
	movl	-132(%rbp), %edx	# c, tmp184
	movslq	%edx, %rdx	# tmp184, tmp183
	movw	%cx, 10(%rax,%rdx,8)	# _62, netbuffer.36_61->cmds[c_79].angleturn
# i_net.c:214: 	netbuffer->cmds[c].consistancy = ntohs(sw.cmds[c].consistancy);
	.loc 1 214 35
	movl	-132(%rbp), %eax	# c, tmp186
	cltq
	movzwl	-100(%rbp,%rax,8), %eax	# sw.cmds[c_79].consistancy, _63
	sall	$8, %eax	#, _63
	movl	%eax, %edx	# _63, _64
	movl	-132(%rbp), %eax	# c, tmp188
	cltq
	movzwl	-100(%rbp,%rax,8), %eax	# sw.cmds[c_79].consistancy, _65
	shrw	$8, %ax	#, _67
	movl	%eax, %ecx	# _67, _68
# i_net.c:214: 	netbuffer->cmds[c].consistancy = ntohs(sw.cmds[c].consistancy);
	.loc 1 214 11
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.37_69
# i_net.c:214: 	netbuffer->cmds[c].consistancy = ntohs(sw.cmds[c].consistancy);
	.loc 1 214 35
	orl	%edx, %ecx	# _64, _70
# i_net.c:214: 	netbuffer->cmds[c].consistancy = ntohs(sw.cmds[c].consistancy);
	.loc 1 214 33
	movl	-132(%rbp), %edx	# c, tmp190
	movslq	%edx, %rdx	# tmp190, tmp189
	movw	%cx, 12(%rax,%rdx,8)	# _70, netbuffer.37_69->cmds[c_79].consistancy
# i_net.c:215: 	netbuffer->cmds[c].chatchar = sw.cmds[c].chatchar;
	.loc 1 215 11
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.38_71
# i_net.c:215: 	netbuffer->cmds[c].chatchar = sw.cmds[c].chatchar;
	.loc 1 215 42
	movl	-132(%rbp), %edx	# c, tmp192
	movslq	%edx, %rdx	# tmp192, tmp191
	movzbl	-98(%rbp,%rdx,8), %ecx	# sw.cmds[c_79].chatchar, _72
# i_net.c:215: 	netbuffer->cmds[c].chatchar = sw.cmds[c].chatchar;
	.loc 1 215 30
	movl	-132(%rbp), %edx	# c, tmp194
	movslq	%edx, %rdx	# tmp194, tmp193
	movb	%cl, 14(%rax,%rdx,8)	# _72, netbuffer.38_71->cmds[c_79].chatchar
# i_net.c:216: 	netbuffer->cmds[c].buttons = sw.cmds[c].buttons;
	.loc 1 216 11
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.39_73
# i_net.c:216: 	netbuffer->cmds[c].buttons = sw.cmds[c].buttons;
	.loc 1 216 41
	movl	-132(%rbp), %edx	# c, tmp196
	movslq	%edx, %rdx	# tmp196, tmp195
	movzbl	-97(%rbp,%rdx,8), %ecx	# sw.cmds[c_79].buttons, _74
# i_net.c:216: 	netbuffer->cmds[c].buttons = sw.cmds[c].buttons;
	.loc 1 216 29
	movl	-132(%rbp), %edx	# c, tmp198
	movslq	%edx, %rdx	# tmp198, tmp197
	movb	%cl, 15(%rax,%rdx,8)	# _74, netbuffer.39_73->cmds[c_79].buttons
# i_net.c:209:     for (c=0 ; c< netbuffer->numtics ; c++)
	.loc 1 209 41 discriminator 3
	addl	$1, -132(%rbp)	#, c
.L22:
# i_net.c:209:     for (c=0 ; c< netbuffer->numtics ; c++)
	.loc 1 209 28 discriminator 1
	movq	netbuffer(%rip), %rax	# netbuffer, netbuffer.40_75
	movzbl	7(%rax), %eax	# netbuffer.40_75->numtics, _76
	movzbl	%al, %eax	# _76, _77
# i_net.c:209:     for (c=0 ; c< netbuffer->numtics ; c++)
	.loc 1 209 17 discriminator 1
	cmpl	%eax, -132(%rbp)	# _77, c
	jl	.L23	#,
.L12:
# i_net.c:218: }
	.loc 1 218 1
	movq	-8(%rbp), %rax	# D.8242, tmp200
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp200
	je	.L25	#,
	call	__stack_chk_fail@PLT	#
.L25:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	PacketGet, .-PacketGet
	.section	.rodata
	.align 8
.LC4:
	.string	"GetLocalAddress : gethostname: errno %d"
	.align 8
.LC5:
	.string	"GetLocalAddress : gethostbyname: couldn't get local host"
	.text
	.globl	GetLocalAddress
	.type	GetLocalAddress, @function
GetLocalAddress:
.LFB10:
	.loc 1 223 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$1056, %rsp	#,
# i_net.c:223: {
	.loc 1 223 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp96
	movq	%rax, -8(%rbp)	# tmp96, D.8245
	xorl	%eax, %eax	# tmp96
# i_net.c:229:     v = gethostname (hostname, sizeof(hostname));
	.loc 1 229 9
	leaq	-1040(%rbp), %rax	#, tmp88
	movl	$1024, %esi	#,
	movq	%rax, %rdi	# tmp88,
	call	gethostname@PLT	#
	movl	%eax, -1052(%rbp)	# tmp89, v
# i_net.c:230:     if (v == -1)
	.loc 1 230 8
	cmpl	$-1, -1052(%rbp)	#, v
	jne	.L28	#,
# i_net.c:231: 	I_Error ("GetLocalAddress : gethostname: errno %d",errno);
	.loc 1 231 53
	call	__errno_location@PLT	#
# i_net.c:231: 	I_Error ("GetLocalAddress : gethostname: errno %d",errno);
	.loc 1 231 2 discriminator 1
	movl	(%rax), %eax	# *_1, _2
	movl	%eax, %esi	# _2,
	leaq	.LC4(%rip), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L28:
# i_net.c:233:     hostentry = gethostbyname (hostname);
	.loc 1 233 17
	leaq	-1040(%rbp), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	gethostbyname@PLT	#
	movq	%rax, -1048(%rbp)	# tmp92, hostentry
# i_net.c:234:     if (!hostentry)
	.loc 1 234 8
	cmpq	$0, -1048(%rbp)	#, hostentry
	jne	.L29	#,
# i_net.c:235: 	I_Error ("GetLocalAddress : gethostbyname: couldn't get local host");
	.loc 1 235 2
	leaq	.LC5(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L29:
# i_net.c:237:     return *(int *)hostentry->h_addr_list[0];
	.loc 1 237 29
	movq	-1048(%rbp), %rax	# hostentry, tmp94
	movq	24(%rax), %rax	# hostentry_12->h_addr_list, _3
# i_net.c:237:     return *(int *)hostentry->h_addr_list[0];
	.loc 1 237 13
	movq	(%rax), %rax	# *_3, _4
# i_net.c:237:     return *(int *)hostentry->h_addr_list[0];
	.loc 1 237 12
	movl	(%rax), %eax	# MEM[(int *)_4], _14
# i_net.c:238: }
	.loc 1 238 1
	movq	-8(%rbp), %rdx	# D.8245, tmp97
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp97
	je	.L31	#,
	call	__stack_chk_fail@PLT	#
.L31:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	GetLocalAddress, .-GetLocalAddress
	.section	.rodata
.LC6:
	.string	"-dup"
.LC7:
	.string	"-extratic"
.LC8:
	.string	"-port"
.LC9:
	.string	"using alternate port %i\n"
.LC10:
	.string	"-net"
	.align 8
.LC11:
	.string	"gethostbyname: couldn't find %s"
	.text
	.globl	I_InitNetwork
	.type	I_InitNetwork, @function
I_InitNetwork:
.LFB11:
	.loc 1 245 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
# i_net.c:245: {
	.loc 1 245 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp248
	movq	%rax, -24(%rbp)	# tmp248, D.8248
	xorl	%eax, %eax	# tmp248
# i_net.c:246:     boolean		trueval = true;
	.loc 1 246 14
	movl	$1, -44(%rbp)	#, trueval
# i_net.c:251:     doomcom = malloc (sizeof (*doomcom) );
	.loc 1 251 15
	movl	$144, %edi	#,
	call	malloc@PLT	#
# i_net.c:251:     doomcom = malloc (sizeof (*doomcom) );
	.loc 1 251 13 discriminator 1
	movq	%rax, doomcom(%rip)	# _1, doomcom
# i_net.c:252:     memset (doomcom, 0, sizeof(*doomcom) );
	.loc 1 252 5
	movq	doomcom(%rip), %rax	# doomcom, doomcom.41_2
	movl	$144, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# doomcom.41_2,
	call	memset@PLT	#
# i_net.c:255:     i = M_CheckParm ("-dup");
	.loc 1 255 9
	leaq	.LC6(%rip), %rax	#, tmp214
	movq	%rax, %rdi	# tmp214,
	call	M_CheckParm@PLT	#
	movl	%eax, -40(%rbp)	# tmp215, i
# i_net.c:256:     if (i && i< myargc-1)
	.loc 1 256 8
	cmpl	$0, -40(%rbp)	#, i
	je	.L33	#,
# i_net.c:256:     if (i && i< myargc-1)
	.loc 1 256 23 discriminator 1
	movl	myargc(%rip), %eax	# myargc, myargc.42_3
	subl	$1, %eax	#, _4
# i_net.c:256:     if (i && i< myargc-1)
	.loc 1 256 11 discriminator 1
	cmpl	%eax, -40(%rbp)	# _4, i
	jge	.L33	#,
# i_net.c:258: 	doomcom->ticdup = myargv[i+1][0]-'0';
	.loc 1 258 26
	movq	myargv(%rip), %rax	# myargv, myargv.43_5
	movl	-40(%rbp), %edx	# i, tmp216
	movslq	%edx, %rdx	# tmp216, _6
	addq	$1, %rdx	#, _7
	salq	$3, %rdx	#, _8
	addq	%rdx, %rax	# _8, _9
	movq	(%rax), %rax	# *_9, _10
# i_net.c:258: 	doomcom->ticdup = myargv[i+1][0]-'0';
	.loc 1 258 31
	movzbl	(%rax), %eax	# *_10, _11
	cbtw
# i_net.c:258: 	doomcom->ticdup = myargv[i+1][0]-'0';
	.loc 1 258 34
	leal	-48(%rax), %edx	#, _13
# i_net.c:258: 	doomcom->ticdup = myargv[i+1][0]-'0';
	.loc 1 258 9
	movq	doomcom(%rip), %rax	# doomcom, doomcom.44_14
# i_net.c:258: 	doomcom->ticdup = myargv[i+1][0]-'0';
	.loc 1 258 18
	movw	%dx, 18(%rax)	# _15, doomcom.44_14->ticdup
# i_net.c:259: 	if (doomcom->ticdup < 1)
	.loc 1 259 13
	movq	doomcom(%rip), %rax	# doomcom, doomcom.45_16
	movzwl	18(%rax), %eax	# doomcom.45_16->ticdup, _17
# i_net.c:259: 	if (doomcom->ticdup < 1)
	.loc 1 259 5
	testw	%ax, %ax	# _17
	jg	.L34	#,
# i_net.c:260: 	    doomcom->ticdup = 1;
	.loc 1 260 13
	movq	doomcom(%rip), %rax	# doomcom, doomcom.46_18
# i_net.c:260: 	    doomcom->ticdup = 1;
	.loc 1 260 22
	movw	$1, 18(%rax)	#, doomcom.46_18->ticdup
.L34:
# i_net.c:261: 	if (doomcom->ticdup > 9)
	.loc 1 261 13
	movq	doomcom(%rip), %rax	# doomcom, doomcom.47_19
	movzwl	18(%rax), %eax	# doomcom.47_19->ticdup, _20
# i_net.c:261: 	if (doomcom->ticdup > 9)
	.loc 1 261 5
	cmpw	$9, %ax	#, _20
	jle	.L36	#,
# i_net.c:262: 	    doomcom->ticdup = 9;
	.loc 1 262 13
	movq	doomcom(%rip), %rax	# doomcom, doomcom.48_21
# i_net.c:262: 	    doomcom->ticdup = 9;
	.loc 1 262 22
	movw	$9, 18(%rax)	#, doomcom.48_21->ticdup
# i_net.c:261: 	if (doomcom->ticdup > 9)
	.loc 1 261 5
	jmp	.L36	#
.L33:
# i_net.c:265: 	doomcom-> ticdup = 1;
	.loc 1 265 9
	movq	doomcom(%rip), %rax	# doomcom, doomcom.49_22
# i_net.c:265: 	doomcom-> ticdup = 1;
	.loc 1 265 19
	movw	$1, 18(%rax)	#, doomcom.49_22->ticdup
.L36:
# i_net.c:267:     if (M_CheckParm ("-extratic"))
	.loc 1 267 9
	leaq	.LC7(%rip), %rax	#, tmp217
	movq	%rax, %rdi	# tmp217,
	call	M_CheckParm@PLT	#
# i_net.c:267:     if (M_CheckParm ("-extratic"))
	.loc 1 267 8 discriminator 1
	testl	%eax, %eax	# _23
	je	.L37	#,
# i_net.c:268: 	doomcom-> extratics = 1;
	.loc 1 268 9
	movq	doomcom(%rip), %rax	# doomcom, doomcom.50_24
# i_net.c:268: 	doomcom-> extratics = 1;
	.loc 1 268 22
	movw	$1, 20(%rax)	#, doomcom.50_24->extratics
	jmp	.L38	#
.L37:
# i_net.c:270: 	doomcom-> extratics = 0;
	.loc 1 270 9
	movq	doomcom(%rip), %rax	# doomcom, doomcom.51_25
# i_net.c:270: 	doomcom-> extratics = 0;
	.loc 1 270 22
	movw	$0, 20(%rax)	#, doomcom.51_25->extratics
.L38:
# i_net.c:272:     p = M_CheckParm ("-port");
	.loc 1 272 9
	leaq	.LC8(%rip), %rax	#, tmp218
	movq	%rax, %rdi	# tmp218,
	call	M_CheckParm@PLT	#
	movl	%eax, -36(%rbp)	# tmp219, p
# i_net.c:273:     if (p && p<myargc-1)
	.loc 1 273 8
	cmpl	$0, -36(%rbp)	#, p
	je	.L39	#,
# i_net.c:273:     if (p && p<myargc-1)
	.loc 1 273 22 discriminator 1
	movl	myargc(%rip), %eax	# myargc, myargc.52_26
	subl	$1, %eax	#, _27
# i_net.c:273:     if (p && p<myargc-1)
	.loc 1 273 11 discriminator 1
	cmpl	%eax, -36(%rbp)	# _27, p
	jge	.L39	#,
# i_net.c:275: 	DOOMPORT = atoi (myargv[p+1]);
	.loc 1 275 25
	movq	myargv(%rip), %rax	# myargv, myargv.53_28
	movl	-36(%rbp), %edx	# p, tmp220
	movslq	%edx, %rdx	# tmp220, _29
	addq	$1, %rdx	#, _30
	salq	$3, %rdx	#, _31
	addq	%rdx, %rax	# _31, _32
# i_net.c:275: 	DOOMPORT = atoi (myargv[p+1]);
	.loc 1 275 13
	movq	(%rax), %rax	# *_32, _33
	movq	%rax, %rdi	# _33,
	call	atoi@PLT	#
# i_net.c:275: 	DOOMPORT = atoi (myargv[p+1]);
	.loc 1 275 11 discriminator 1
	movl	%eax, DOOMPORT(%rip)	# _34, DOOMPORT
# i_net.c:276: 	printf ("using alternate port %i\n",DOOMPORT);
	.loc 1 276 2
	movl	DOOMPORT(%rip), %eax	# DOOMPORT, DOOMPORT.54_35
	movl	%eax, %esi	# DOOMPORT.54_35,
	leaq	.LC9(%rip), %rax	#, tmp221
	movq	%rax, %rdi	# tmp221,
	movl	$0, %eax	#,
	call	printf@PLT	#
.L39:
# i_net.c:281:     i = M_CheckParm ("-net");
	.loc 1 281 9
	leaq	.LC10(%rip), %rax	#, tmp222
	movq	%rax, %rdi	# tmp222,
	call	M_CheckParm@PLT	#
	movl	%eax, -40(%rbp)	# tmp223, i
# i_net.c:282:     if (!i)
	.loc 1 282 8
	cmpl	$0, -40(%rbp)	#, i
	jne	.L40	#,
# i_net.c:285: 	netgame = false;
	.loc 1 285 10
	movl	$0, netgame(%rip)	#, netgame
# i_net.c:286: 	doomcom->id = DOOMCOM_ID;
	.loc 1 286 9
	movq	doomcom(%rip), %rax	# doomcom, doomcom.55_36
# i_net.c:286: 	doomcom->id = DOOMCOM_ID;
	.loc 1 286 14
	movq	$305419896, (%rax)	#, doomcom.55_36->id
# i_net.c:287: 	doomcom->numplayers = doomcom->numnodes = 1;
	.loc 1 287 31
	movq	doomcom(%rip), %rax	# doomcom, doomcom.56_37
# i_net.c:287: 	doomcom->numplayers = doomcom->numnodes = 1;
	.loc 1 287 42
	movw	$1, 16(%rax)	#, doomcom.56_37->numnodes
# i_net.c:287: 	doomcom->numplayers = doomcom->numnodes = 1;
	.loc 1 287 9
	movq	doomcom(%rip), %rdx	# doomcom, doomcom.57_38
# i_net.c:287: 	doomcom->numplayers = doomcom->numnodes = 1;
	.loc 1 287 31
	movzwl	16(%rax), %eax	# doomcom.56_37->numnodes, _39
# i_net.c:287: 	doomcom->numplayers = doomcom->numnodes = 1;
	.loc 1 287 22
	movw	%ax, 34(%rdx)	# _39, doomcom.57_38->numplayers
# i_net.c:288: 	doomcom->deathmatch = false;
	.loc 1 288 9
	movq	doomcom(%rip), %rax	# doomcom, doomcom.58_40
# i_net.c:288: 	doomcom->deathmatch = false;
	.loc 1 288 22
	movw	$0, 22(%rax)	#, doomcom.58_40->deathmatch
# i_net.c:289: 	doomcom->consoleplayer = 0;
	.loc 1 289 9
	movq	doomcom(%rip), %rax	# doomcom, doomcom.59_41
# i_net.c:289: 	doomcom->consoleplayer = 0;
	.loc 1 289 25
	movw	$0, 32(%rax)	#, doomcom.59_41->consoleplayer
	jmp	.L32	#
.L40:
# i_net.c:293:     netsend = PacketSend;
	.loc 1 293 13
	leaq	PacketSend(%rip), %rax	#, tmp224
	movq	%rax, netsend(%rip)	# tmp224, netsend
# i_net.c:294:     netget = PacketGet;
	.loc 1 294 12
	leaq	PacketGet(%rip), %rax	#, tmp225
	movq	%rax, netget(%rip)	# tmp225, netget
# i_net.c:295:     netgame = true;
	.loc 1 295 13
	movl	$1, netgame(%rip)	#, netgame
# i_net.c:298:     doomcom->consoleplayer = myargv[i+1][0]-'1';
	.loc 1 298 36
	movq	myargv(%rip), %rax	# myargv, myargv.60_42
	movl	-40(%rbp), %edx	# i, tmp226
	movslq	%edx, %rdx	# tmp226, _43
	addq	$1, %rdx	#, _44
	salq	$3, %rdx	#, _45
	addq	%rdx, %rax	# _45, _46
	movq	(%rax), %rax	# *_46, _47
# i_net.c:298:     doomcom->consoleplayer = myargv[i+1][0]-'1';
	.loc 1 298 41
	movzbl	(%rax), %eax	# *_47, _48
	cbtw
# i_net.c:298:     doomcom->consoleplayer = myargv[i+1][0]-'1';
	.loc 1 298 44
	leal	-49(%rax), %edx	#, _50
# i_net.c:298:     doomcom->consoleplayer = myargv[i+1][0]-'1';
	.loc 1 298 12
	movq	doomcom(%rip), %rax	# doomcom, doomcom.61_51
# i_net.c:298:     doomcom->consoleplayer = myargv[i+1][0]-'1';
	.loc 1 298 28
	movw	%dx, 32(%rax)	# _52, doomcom.61_51->consoleplayer
# i_net.c:300:     doomcom->numnodes = 1;	// this node for sure
	.loc 1 300 12
	movq	doomcom(%rip), %rax	# doomcom, doomcom.62_53
# i_net.c:300:     doomcom->numnodes = 1;	// this node for sure
	.loc 1 300 23
	movw	$1, 16(%rax)	#, doomcom.62_53->numnodes
# i_net.c:302:     i++;
	.loc 1 302 6
	addl	$1, -40(%rbp)	#, i
# i_net.c:303:     while (++i < myargc && myargv[i][0] != '-')
	.loc 1 303 11
	jmp	.L42	#
.L47:
# i_net.c:305: 	sendaddress[doomcom->numnodes].sin_family = AF_INET;
	.loc 1 305 21
	movq	doomcom(%rip), %rax	# doomcom, doomcom.63_54
	movzwl	16(%rax), %eax	# doomcom.63_54->numnodes, _55
	cwtl
# i_net.c:305: 	sendaddress[doomcom->numnodes].sin_family = AF_INET;
	.loc 1 305 44
	cltq
	salq	$4, %rax	#, tmp227
	movq	%rax, %rdx	# tmp227, tmp228
	leaq	sendaddress(%rip), %rax	#, tmp229
	movw	$2, (%rdx,%rax)	#, sendaddress[_56].sin_family
# i_net.c:306: 	sendaddress[doomcom->numnodes].sin_port = htons(DOOMPORT);
	.loc 1 306 44
	movl	DOOMPORT(%rip), %eax	# DOOMPORT, DOOMPORT.64_57
	sall	$8, %eax	#, _58
	movl	%eax, %edx	# _58, _59
	movl	DOOMPORT(%rip), %eax	# DOOMPORT, DOOMPORT.65_60
	shrw	$8, %ax	#, _62
	orl	%eax, %edx	# _63, _64
# i_net.c:306: 	sendaddress[doomcom->numnodes].sin_port = htons(DOOMPORT);
	.loc 1 306 21
	movq	doomcom(%rip), %rax	# doomcom, doomcom.66_65
	movzwl	16(%rax), %eax	# doomcom.66_65->numnodes, _66
	cwtl
# i_net.c:306: 	sendaddress[doomcom->numnodes].sin_port = htons(DOOMPORT);
	.loc 1 306 44
	movl	%edx, %ecx	# _64, _68
# i_net.c:306: 	sendaddress[doomcom->numnodes].sin_port = htons(DOOMPORT);
	.loc 1 306 42
	cltq
	salq	$4, %rax	#, tmp230
	movq	%rax, %rdx	# tmp230, tmp231
	leaq	2+sendaddress(%rip), %rax	#, tmp232
	movw	%cx, (%rdx,%rax)	# _68, sendaddress[_67].sin_port
# i_net.c:307: 	if (myargv[i][0] == '.')
	.loc 1 307 12
	movq	myargv(%rip), %rax	# myargv, myargv.67_69
	movl	-40(%rbp), %edx	# i, tmp233
	movslq	%edx, %rdx	# tmp233, _70
	salq	$3, %rdx	#, _71
	addq	%rdx, %rax	# _71, _72
	movq	(%rax), %rax	# *_72, _73
# i_net.c:307: 	if (myargv[i][0] == '.')
	.loc 1 307 15
	movzbl	(%rax), %eax	# *_73, _74
# i_net.c:307: 	if (myargv[i][0] == '.')
	.loc 1 307 5
	cmpb	$46, %al	#, _74
	jne	.L43	#,
# i_net.c:310: 		= inet_addr (myargv[i]+1);
	.loc 1 310 22
	movq	myargv(%rip), %rax	# myargv, myargv.68_75
	movl	-40(%rbp), %edx	# i, tmp234
	movslq	%edx, %rdx	# tmp234, _76
	salq	$3, %rdx	#, _77
	addq	%rdx, %rax	# _77, _78
	movq	(%rax), %rax	# *_78, _79
# i_net.c:310: 		= inet_addr (myargv[i]+1);
	.loc 1 310 25
	addq	$1, %rax	#, _80
# i_net.c:309: 	    sendaddress[doomcom->numnodes].sin_addr.s_addr 
	.loc 1 309 25
	movq	doomcom(%rip), %rdx	# doomcom, doomcom.69_81
	movzwl	16(%rdx), %edx	# doomcom.69_81->numnodes, _82
	movswl	%dx, %ebx	# _82, _83
# i_net.c:310: 		= inet_addr (myargv[i]+1);
	.loc 1 310 5
	movq	%rax, %rdi	# _80,
	call	inet_addr@PLT	#
# i_net.c:310: 		= inet_addr (myargv[i]+1);
	.loc 1 310 3 discriminator 1
	movslq	%ebx, %rdx	# _83, tmp235
	movq	%rdx, %rcx	# tmp235, tmp235
	salq	$4, %rcx	#, tmp235
	leaq	4+sendaddress(%rip), %rdx	#, tmp237
	movl	%eax, (%rcx,%rdx)	# _84, sendaddress[_83].sin_addr.s_addr
	jmp	.L44	#
.L43:
# i_net.c:314: 	    hostentry = gethostbyname (myargv[i]);
	.loc 1 314 39
	movq	myargv(%rip), %rax	# myargv, myargv.70_85
	movl	-40(%rbp), %edx	# i, tmp238
	movslq	%edx, %rdx	# tmp238, _86
	salq	$3, %rdx	#, _87
	addq	%rdx, %rax	# _87, _88
# i_net.c:314: 	    hostentry = gethostbyname (myargv[i]);
	.loc 1 314 18
	movq	(%rax), %rax	# *_88, _89
	movq	%rax, %rdi	# _89,
	call	gethostbyname@PLT	#
	movq	%rax, -32(%rbp)	# tmp239, hostentry
# i_net.c:315: 	    if (!hostentry)
	.loc 1 315 9
	cmpq	$0, -32(%rbp)	#, hostentry
	jne	.L45	#,
# i_net.c:316: 		I_Error ("gethostbyname: couldn't find %s", myargv[i]);
	.loc 1 316 53
	movq	myargv(%rip), %rax	# myargv, myargv.71_90
	movl	-40(%rbp), %edx	# i, tmp240
	movslq	%edx, %rdx	# tmp240, _91
	salq	$3, %rdx	#, _92
	addq	%rdx, %rax	# _92, _93
# i_net.c:316: 		I_Error ("gethostbyname: couldn't find %s", myargv[i]);
	.loc 1 316 3
	movq	(%rax), %rax	# *_93, _94
	movq	%rax, %rsi	# _94,
	leaq	.LC11(%rip), %rax	#, tmp241
	movq	%rax, %rdi	# tmp241,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L45:
# i_net.c:318: 		= *(int *)hostentry->h_addr_list[0];
	.loc 1 318 22
	movq	-32(%rbp), %rax	# hostentry, tmp242
	movq	24(%rax), %rax	# hostentry_173->h_addr_list, _95
# i_net.c:318: 		= *(int *)hostentry->h_addr_list[0];
	.loc 1 318 6
	movq	(%rax), %rax	# *_95, _96
# i_net.c:318: 		= *(int *)hostentry->h_addr_list[0];
	.loc 1 318 5
	movl	(%rax), %edx	# MEM[(int *)_96], _97
# i_net.c:317: 	    sendaddress[doomcom->numnodes].sin_addr.s_addr 
	.loc 1 317 25
	movq	doomcom(%rip), %rax	# doomcom, doomcom.72_98
	movzwl	16(%rax), %eax	# doomcom.72_98->numnodes, _99
	cwtl
# i_net.c:318: 		= *(int *)hostentry->h_addr_list[0];
	.loc 1 318 5
	movl	%edx, %ecx	# _97, _101
# i_net.c:318: 		= *(int *)hostentry->h_addr_list[0];
	.loc 1 318 3
	cltq
	salq	$4, %rax	#, tmp243
	movq	%rax, %rdx	# tmp243, tmp244
	leaq	4+sendaddress(%rip), %rax	#, tmp245
	movl	%ecx, (%rdx,%rax)	# _101, sendaddress[_100].sin_addr.s_addr
.L44:
# i_net.c:320: 	doomcom->numnodes++;
	.loc 1 320 9
	movq	doomcom(%rip), %rax	# doomcom, doomcom.73_102
	movzwl	16(%rax), %edx	# doomcom.73_102->numnodes, _103
# i_net.c:320: 	doomcom->numnodes++;
	.loc 1 320 19
	addl	$1, %edx	#, _106
	movw	%dx, 16(%rax)	# _107, doomcom.73_102->numnodes
.L42:
# i_net.c:303:     while (++i < myargc && myargv[i][0] != '-')
	.loc 1 303 25
	addl	$1, -40(%rbp)	#, i
# i_net.c:303:     while (++i < myargc && myargv[i][0] != '-')
	.loc 1 303 16
	movl	myargc(%rip), %eax	# myargc, myargc.74_108
# i_net.c:303:     while (++i < myargc && myargv[i][0] != '-')
	.loc 1 303 25
	cmpl	%eax, -40(%rbp)	# myargc.74_108, i
	jge	.L46	#,
# i_net.c:303:     while (++i < myargc && myargv[i][0] != '-')
	.loc 1 303 34 discriminator 1
	movq	myargv(%rip), %rax	# myargv, myargv.75_109
	movl	-40(%rbp), %edx	# i, tmp246
	movslq	%edx, %rdx	# tmp246, _110
	salq	$3, %rdx	#, _111
	addq	%rdx, %rax	# _111, _112
	movq	(%rax), %rax	# *_112, _113
# i_net.c:303:     while (++i < myargc && myargv[i][0] != '-')
	.loc 1 303 37 discriminator 1
	movzbl	(%rax), %eax	# *_113, _114
# i_net.c:303:     while (++i < myargc && myargv[i][0] != '-')
	.loc 1 303 25 discriminator 1
	cmpb	$45, %al	#, _114
	jne	.L47	#,
.L46:
# i_net.c:323:     doomcom->id = DOOMCOM_ID;
	.loc 1 323 12
	movq	doomcom(%rip), %rax	# doomcom, doomcom.76_115
# i_net.c:323:     doomcom->id = DOOMCOM_ID;
	.loc 1 323 17
	movq	$305419896, (%rax)	#, doomcom.76_115->id
# i_net.c:324:     doomcom->numplayers = doomcom->numnodes;
	.loc 1 324 34
	movq	doomcom(%rip), %rdx	# doomcom, doomcom.77_116
# i_net.c:324:     doomcom->numplayers = doomcom->numnodes;
	.loc 1 324 12
	movq	doomcom(%rip), %rax	# doomcom, doomcom.78_117
# i_net.c:324:     doomcom->numplayers = doomcom->numnodes;
	.loc 1 324 34
	movzwl	16(%rdx), %edx	# doomcom.77_116->numnodes, _118
# i_net.c:324:     doomcom->numplayers = doomcom->numnodes;
	.loc 1 324 25
	movw	%dx, 34(%rax)	# _118, doomcom.78_117->numplayers
# i_net.c:327:     insocket = UDPsocket ();
	.loc 1 327 16
	call	UDPsocket	#
# i_net.c:327:     insocket = UDPsocket ();
	.loc 1 327 14 discriminator 1
	movl	%eax, insocket(%rip)	# _119, insocket
# i_net.c:328:     BindToLocalPort (insocket,htons(DOOMPORT));
	.loc 1 328 31
	movl	DOOMPORT(%rip), %eax	# DOOMPORT, DOOMPORT.79_120
	sall	$8, %eax	#, _121
	movl	%eax, %edx	# _121, _122
	movl	DOOMPORT(%rip), %eax	# DOOMPORT, DOOMPORT.80_123
	shrw	$8, %ax	#, _125
	orl	%edx, %eax	# _122, _127
# i_net.c:328:     BindToLocalPort (insocket,htons(DOOMPORT));
	.loc 1 328 5
	movzwl	%ax, %edx	# _128, _129
	movl	insocket(%rip), %eax	# insocket, insocket.81_130
	movl	%edx, %esi	# _129,
	movl	%eax, %edi	# insocket.81_130,
	call	BindToLocalPort	#
# i_net.c:329:     ioctl (insocket, FIONBIO, &trueval);
	.loc 1 329 5
	movl	insocket(%rip), %eax	# insocket, insocket.82_131
	leaq	-44(%rbp), %rdx	#, tmp247
	movl	$21537, %esi	#,
	movl	%eax, %edi	# insocket.82_131,
	movl	$0, %eax	#,
	call	ioctl@PLT	#
# i_net.c:331:     sendsocket = UDPsocket ();
	.loc 1 331 18
	call	UDPsocket	#
# i_net.c:331:     sendsocket = UDPsocket ();
	.loc 1 331 16 discriminator 1
	movl	%eax, sendsocket(%rip)	# _132, sendsocket
.L32:
# i_net.c:332: }
	.loc 1 332 1
	movq	-24(%rbp), %rax	# D.8248, tmp249
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp249
	je	.L48	#,
	call	__stack_chk_fail@PLT	#
.L48:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	I_InitNetwork, .-I_InitNetwork
	.section	.rodata
.LC12:
	.string	"Bad net cmd: %i\n"
	.text
	.globl	I_NetCmd
	.type	I_NetCmd, @function
I_NetCmd:
.LFB12:
	.loc 1 336 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# i_net.c:337:     if (doomcom->command == CMD_SEND)
	.loc 1 337 16
	movq	doomcom(%rip), %rax	# doomcom, doomcom.83_1
	movzwl	10(%rax), %eax	# doomcom.83_1->command, _2
# i_net.c:337:     if (doomcom->command == CMD_SEND)
	.loc 1 337 8
	cmpw	$1, %ax	#, _2
	jne	.L50	#,
# i_net.c:339: 	netsend ();
	.loc 1 339 2
	movq	netsend(%rip), %rax	# netsend, netsend.84_3
	call	*%rax	# netsend.84_3
.LVL0:
# i_net.c:347: }
	.loc 1 347 1
	jmp	.L53	#
.L50:
# i_net.c:341:     else if (doomcom->command == CMD_GET)
	.loc 1 341 21
	movq	doomcom(%rip), %rax	# doomcom, doomcom.85_4
	movzwl	10(%rax), %eax	# doomcom.85_4->command, _5
# i_net.c:341:     else if (doomcom->command == CMD_GET)
	.loc 1 341 13
	cmpw	$2, %ax	#, _5
	jne	.L52	#,
# i_net.c:343: 	netget ();
	.loc 1 343 2
	movq	netget(%rip), %rax	# netget, netget.86_6
	call	*%rax	# netget.86_6
.LVL1:
# i_net.c:347: }
	.loc 1 347 1
	jmp	.L53	#
.L52:
# i_net.c:346: 	I_Error ("Bad net cmd: %i\n",doomcom->command);
	.loc 1 346 38
	movq	doomcom(%rip), %rax	# doomcom, doomcom.87_7
	movzwl	10(%rax), %eax	# doomcom.87_7->command, _8
# i_net.c:346: 	I_Error ("Bad net cmd: %i\n",doomcom->command);
	.loc 1 346 2
	cwtl
	movl	%eax, %esi	# _9,
	leaq	.LC12(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L53:
# i_net.c:347: }
	.loc 1 347 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	I_NetCmd, .-I_NetCmd
	.data
	.align 4
	.type	first.0, @object
	.size	first.0, 4
first.0:
	.long	1
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/socket.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/sockaddr.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 8 "/usr/include/netinet/in.h"
	.file 9 "/usr/include/netdb.h"
	.file 10 "doomtype.h"
	.file 11 "d_ticcmd.h"
	.file 12 "doomdef.h"
	.file 13 "info.h"
	.file 14 "p_pspr.h"
	.file 15 "d_net.h"
	.file 16 "m_argv.h"
	.file 17 "doomstat.h"
	.file 18 "/usr/include/x86_64-linux-gnu/sys/ioctl.h"
	.file 19 "/usr/include/arpa/inet.h"
	.file 20 "/usr/include/stdlib.h"
	.file 21 "/usr/include/unistd.h"
	.file 22 "/usr/include/stdio.h"
	.file 23 "/usr/include/x86_64-linux-gnu/sys/socket.h"
	.file 24 "/usr/include/string.h"
	.file 25 "/usr/include/x86_64-linux-gnu/bits/socket_type.h"
	.file 26 "i_system.h"
	.file 27 "/usr/include/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2c1c
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x19
	.long	.LASF1461
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xc
	.long	0x51
	.long	0x3e
	.uleb128 0xe
	.long	0x43
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.long	0x2e
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x12
	.long	0x4a
	.uleb128 0xb
	.long	.LASF1447
	.byte	0x18
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x5
	.long	.LASF11
	.byte	0x2
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x1a
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF4
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.long	.LASF6
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.long	.LASF7
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.long	.LASF10
	.uleb128 0x5
	.long	.LASF12
	.byte	0x3
	.byte	0x28
	.byte	0x1c
	.long	0x93
	.uleb128 0x5
	.long	.LASF13
	.byte	0x3
	.byte	0x2a
	.byte	0x16
	.long	0x9a
	.uleb128 0x1b
	.byte	0x8
	.uleb128 0x13
	.long	0xc7
	.uleb128 0x5
	.long	.LASF14
	.byte	0x3
	.byte	0xc2
	.byte	0x1b
	.long	0x7e
	.uleb128 0x7
	.long	0x4a
	.uleb128 0x5
	.long	.LASF15
	.byte	0x3
	.byte	0xd2
	.byte	0x17
	.long	0x9a
	.uleb128 0x5
	.long	.LASF16
	.byte	0x4
	.byte	0x6c
	.byte	0x13
	.long	0xce
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF17
	.uleb128 0x7
	.long	0x103
	.uleb128 0x1c
	.uleb128 0x7
	.long	0x51
	.uleb128 0x5
	.long	.LASF18
	.byte	0x5
	.byte	0x21
	.byte	0x15
	.long	0xdf
	.uleb128 0x1d
	.long	.LASF1462
	.byte	0x7
	.byte	0x4
	.long	0x9a
	.byte	0x19
	.byte	0x18
	.byte	0x6
	.long	0x162
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
	.uleb128 0x2
	.long	.LASF25
	.byte	0xa
	.uleb128 0x1e
	.long	.LASF26
	.long	0x80000
	.uleb128 0x1
	.long	.LASF27
	.value	0x800
	.byte	0
	.uleb128 0x5
	.long	.LASF28
	.byte	0x6
	.byte	0x1c
	.byte	0x1c
	.long	0x93
	.uleb128 0xf
	.long	.LASF34
	.byte	0x10
	.byte	0x5
	.byte	0xb7
	.long	0x195
	.uleb128 0x3
	.long	.LASF29
	.byte	0x5
	.byte	0xb9
	.byte	0x5
	.long	0x162
	.byte	0
	.uleb128 0x3
	.long	.LASF30
	.byte	0x5
	.byte	0xba
	.byte	0xa
	.long	0x19a
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.long	0x16e
	.uleb128 0xc
	.long	0x4a
	.long	0x1aa
	.uleb128 0xe
	.long	0x43
	.byte	0xd
	.byte	0
	.uleb128 0x5
	.long	.LASF31
	.byte	0x7
	.byte	0x19
	.byte	0x14
	.long	0xaf
	.uleb128 0x5
	.long	.LASF32
	.byte	0x7
	.byte	0x1a
	.byte	0x14
	.long	0xbb
	.uleb128 0x5
	.long	.LASF33
	.byte	0x8
	.byte	0x1e
	.byte	0x12
	.long	0x1b6
	.uleb128 0xf
	.long	.LASF35
	.byte	0x4
	.byte	0x8
	.byte	0x1f
	.long	0x1e8
	.uleb128 0x3
	.long	.LASF36
	.byte	0x8
	.byte	0x21
	.byte	0xf
	.long	0x1c2
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x9a
	.byte	0x8
	.byte	0x29
	.byte	0x3
	.long	0x2a5
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
	.byte	0x4
	.uleb128 0x2
	.long	.LASF41
	.byte	0x6
	.uleb128 0x2
	.long	.LASF42
	.byte	0x8
	.uleb128 0x2
	.long	.LASF43
	.byte	0xc
	.uleb128 0x2
	.long	.LASF44
	.byte	0x11
	.uleb128 0x2
	.long	.LASF45
	.byte	0x16
	.uleb128 0x2
	.long	.LASF46
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF47
	.byte	0x21
	.uleb128 0x2
	.long	.LASF48
	.byte	0x29
	.uleb128 0x2
	.long	.LASF49
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF50
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF51
	.byte	0x32
	.uleb128 0x2
	.long	.LASF52
	.byte	0x33
	.uleb128 0x2
	.long	.LASF53
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF54
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF55
	.byte	0x62
	.uleb128 0x2
	.long	.LASF56
	.byte	0x67
	.uleb128 0x2
	.long	.LASF57
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF58
	.byte	0x73
	.uleb128 0x2
	.long	.LASF59
	.byte	0x84
	.uleb128 0x2
	.long	.LASF60
	.byte	0x88
	.uleb128 0x2
	.long	.LASF61
	.byte	0x89
	.uleb128 0x2
	.long	.LASF62
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF63
	.byte	0xff
	.uleb128 0x1
	.long	.LASF64
	.value	0x106
	.uleb128 0x1
	.long	.LASF65
	.value	0x107
	.byte	0
	.uleb128 0x5
	.long	.LASF66
	.byte	0x8
	.byte	0x7d
	.byte	0x12
	.long	0x1aa
	.uleb128 0x8
	.long	0x9a
	.byte	0x8
	.byte	0x81
	.byte	0x3
	.long	0x363
	.uleb128 0x2
	.long	.LASF67
	.byte	0x7
	.uleb128 0x2
	.long	.LASF68
	.byte	0x9
	.uleb128 0x2
	.long	.LASF69
	.byte	0xb
	.uleb128 0x2
	.long	.LASF70
	.byte	0xd
	.uleb128 0x2
	.long	.LASF71
	.byte	0xf
	.uleb128 0x2
	.long	.LASF72
	.byte	0x15
	.uleb128 0x2
	.long	.LASF73
	.byte	0x17
	.uleb128 0x2
	.long	.LASF74
	.byte	0x19
	.uleb128 0x2
	.long	.LASF75
	.byte	0x25
	.uleb128 0x2
	.long	.LASF76
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF77
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF78
	.byte	0x39
	.uleb128 0x2
	.long	.LASF79
	.byte	0x45
	.uleb128 0x2
	.long	.LASF80
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF81
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF82
	.byte	0x57
	.uleb128 0x2
	.long	.LASF83
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF84
	.value	0x200
	.uleb128 0x1
	.long	.LASF85
	.value	0x201
	.uleb128 0x1
	.long	.LASF86
	.value	0x202
	.uleb128 0x1
	.long	.LASF87
	.value	0x208
	.uleb128 0x1
	.long	.LASF88
	.value	0x200
	.uleb128 0x1
	.long	.LASF89
	.value	0x201
	.uleb128 0x1
	.long	.LASF90
	.value	0x208
	.uleb128 0x1
	.long	.LASF91
	.value	0x400
	.uleb128 0x1
	.long	.LASF92
	.value	0x1388
	.byte	0
	.uleb128 0xf
	.long	.LASF93
	.byte	0x10
	.byte	0x8
	.byte	0xf7
	.long	0x3a4
	.uleb128 0x3
	.long	.LASF94
	.byte	0x8
	.byte	0xf9
	.byte	0x5
	.long	0x162
	.byte	0
	.uleb128 0x3
	.long	.LASF95
	.byte	0x8
	.byte	0xfa
	.byte	0xf
	.long	0x2a5
	.byte	0x2
	.uleb128 0x3
	.long	.LASF96
	.byte	0x8
	.byte	0xfb
	.byte	0x14
	.long	0x1ce
	.byte	0x4
	.uleb128 0x3
	.long	.LASF97
	.byte	0x8
	.byte	0xfe
	.byte	0x13
	.long	0x3a4
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x8c
	.long	0x3b4
	.uleb128 0xe
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.long	0xda
	.uleb128 0xf
	.long	.LASF98
	.byte	0x20
	.byte	0x9
	.byte	0x62
	.long	0x407
	.uleb128 0x3
	.long	.LASF99
	.byte	0x9
	.byte	0x64
	.byte	0x9
	.long	0xda
	.byte	0
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.byte	0x65
	.byte	0xa
	.long	0x3b4
	.byte	0x8
	.uleb128 0x3
	.long	.LASF101
	.byte	0x9
	.byte	0x66
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF102
	.byte	0x9
	.byte	0x67
	.byte	0x7
	.long	0x77
	.byte	0x14
	.uleb128 0x3
	.long	.LASF103
	.byte	0x9
	.byte	0x68
	.byte	0xa
	.long	0x3b4
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.long	0x16e
	.uleb128 0x13
	.long	0x407
	.uleb128 0x8
	.long	0x9a
	.byte	0xa
	.byte	0x22
	.byte	0xe
	.long	0x42a
	.uleb128 0x2
	.long	.LASF104
	.byte	0
	.uleb128 0x2
	.long	.LASF105
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF106
	.byte	0xa
	.byte	0x22
	.byte	0x1c
	.long	0x411
	.uleb128 0x5
	.long	.LASF107
	.byte	0xa
	.byte	0x24
	.byte	0x17
	.long	0x8c
	.uleb128 0x14
	.byte	0x8
	.byte	0xb
	.byte	0x24
	.long	0x499
	.uleb128 0x3
	.long	.LASF108
	.byte	0xb
	.byte	0x26
	.byte	0xa
	.long	0x4a
	.byte	0
	.uleb128 0x3
	.long	.LASF109
	.byte	0xb
	.byte	0x27
	.byte	0xa
	.long	0x4a
	.byte	0x1
	.uleb128 0x3
	.long	.LASF110
	.byte	0xb
	.byte	0x28
	.byte	0xb
	.long	0xa8
	.byte	0x2
	.uleb128 0x3
	.long	.LASF111
	.byte	0xb
	.byte	0x29
	.byte	0xb
	.long	0xa8
	.byte	0x4
	.uleb128 0x3
	.long	.LASF112
	.byte	0xb
	.byte	0x2a
	.byte	0xa
	.long	0x436
	.byte	0x6
	.uleb128 0x3
	.long	.LASF113
	.byte	0xb
	.byte	0x2b
	.byte	0xa
	.long	0x436
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF114
	.byte	0xb
	.byte	0x2c
	.byte	0x3
	.long	0x442
	.uleb128 0x8
	.long	0x9a
	.byte	0xc
	.byte	0xa3
	.byte	0x1
	.long	0x4dc
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
	.uleb128 0x8
	.long	0x9a
	.byte	0xc
	.byte	0xb5
	.byte	0x1
	.long	0x52b
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
	.uleb128 0x8
	.long	0x9a
	.byte	0xc
	.byte	0xca
	.byte	0x1
	.long	0x55c
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
	.uleb128 0x8
	.long	0x9a
	.byte	0xc
	.byte	0xd7
	.byte	0x1
	.long	0x593
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
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.long	.LASF146
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.long	.LASF147
	.uleb128 0x8
	.long	0x9a
	.byte	0xd
	.byte	0x1f
	.byte	0x1
	.long	0x8f0
	.uleb128 0x2
	.long	.LASF148
	.byte	0
	.uleb128 0x2
	.long	.LASF149
	.byte	0x1
	.uleb128 0x2
	.long	.LASF150
	.byte	0x2
	.uleb128 0x2
	.long	.LASF151
	.byte	0x3
	.uleb128 0x2
	.long	.LASF152
	.byte	0x4
	.uleb128 0x2
	.long	.LASF153
	.byte	0x5
	.uleb128 0x2
	.long	.LASF154
	.byte	0x6
	.uleb128 0x2
	.long	.LASF155
	.byte	0x7
	.uleb128 0x2
	.long	.LASF156
	.byte	0x8
	.uleb128 0x2
	.long	.LASF157
	.byte	0x9
	.uleb128 0x2
	.long	.LASF158
	.byte	0xa
	.uleb128 0x2
	.long	.LASF159
	.byte	0xb
	.uleb128 0x2
	.long	.LASF160
	.byte	0xc
	.uleb128 0x2
	.long	.LASF161
	.byte	0xd
	.uleb128 0x2
	.long	.LASF162
	.byte	0xe
	.uleb128 0x2
	.long	.LASF163
	.byte	0xf
	.uleb128 0x2
	.long	.LASF164
	.byte	0x10
	.uleb128 0x2
	.long	.LASF165
	.byte	0x11
	.uleb128 0x2
	.long	.LASF166
	.byte	0x12
	.uleb128 0x2
	.long	.LASF167
	.byte	0x13
	.uleb128 0x2
	.long	.LASF168
	.byte	0x14
	.uleb128 0x2
	.long	.LASF169
	.byte	0x15
	.uleb128 0x2
	.long	.LASF170
	.byte	0x16
	.uleb128 0x2
	.long	.LASF171
	.byte	0x17
	.uleb128 0x2
	.long	.LASF172
	.byte	0x18
	.uleb128 0x2
	.long	.LASF173
	.byte	0x19
	.uleb128 0x2
	.long	.LASF174
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF175
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF176
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF177
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF178
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF179
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF180
	.byte	0x20
	.uleb128 0x2
	.long	.LASF181
	.byte	0x21
	.uleb128 0x2
	.long	.LASF182
	.byte	0x22
	.uleb128 0x2
	.long	.LASF183
	.byte	0x23
	.uleb128 0x2
	.long	.LASF184
	.byte	0x24
	.uleb128 0x2
	.long	.LASF185
	.byte	0x25
	.uleb128 0x2
	.long	.LASF186
	.byte	0x26
	.uleb128 0x2
	.long	.LASF187
	.byte	0x27
	.uleb128 0x2
	.long	.LASF188
	.byte	0x28
	.uleb128 0x2
	.long	.LASF189
	.byte	0x29
	.uleb128 0x2
	.long	.LASF190
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF191
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF192
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF193
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF194
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF195
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF196
	.byte	0x30
	.uleb128 0x2
	.long	.LASF197
	.byte	0x31
	.uleb128 0x2
	.long	.LASF198
	.byte	0x32
	.uleb128 0x2
	.long	.LASF199
	.byte	0x33
	.uleb128 0x2
	.long	.LASF200
	.byte	0x34
	.uleb128 0x2
	.long	.LASF201
	.byte	0x35
	.uleb128 0x2
	.long	.LASF202
	.byte	0x36
	.uleb128 0x2
	.long	.LASF203
	.byte	0x37
	.uleb128 0x2
	.long	.LASF204
	.byte	0x38
	.uleb128 0x2
	.long	.LASF205
	.byte	0x39
	.uleb128 0x2
	.long	.LASF206
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF207
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF208
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF209
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF210
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF211
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF212
	.byte	0x40
	.uleb128 0x2
	.long	.LASF213
	.byte	0x41
	.uleb128 0x2
	.long	.LASF214
	.byte	0x42
	.uleb128 0x2
	.long	.LASF215
	.byte	0x43
	.uleb128 0x2
	.long	.LASF216
	.byte	0x44
	.uleb128 0x2
	.long	.LASF217
	.byte	0x45
	.uleb128 0x2
	.long	.LASF218
	.byte	0x46
	.uleb128 0x2
	.long	.LASF219
	.byte	0x47
	.uleb128 0x2
	.long	.LASF220
	.byte	0x48
	.uleb128 0x2
	.long	.LASF221
	.byte	0x49
	.uleb128 0x2
	.long	.LASF222
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF223
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF224
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF225
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF226
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF227
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF228
	.byte	0x50
	.uleb128 0x2
	.long	.LASF229
	.byte	0x51
	.uleb128 0x2
	.long	.LASF230
	.byte	0x52
	.uleb128 0x2
	.long	.LASF231
	.byte	0x53
	.uleb128 0x2
	.long	.LASF232
	.byte	0x54
	.uleb128 0x2
	.long	.LASF233
	.byte	0x55
	.uleb128 0x2
	.long	.LASF234
	.byte	0x56
	.uleb128 0x2
	.long	.LASF235
	.byte	0x57
	.uleb128 0x2
	.long	.LASF236
	.byte	0x58
	.uleb128 0x2
	.long	.LASF237
	.byte	0x59
	.uleb128 0x2
	.long	.LASF238
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF239
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF240
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF241
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF242
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF243
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF244
	.byte	0x60
	.uleb128 0x2
	.long	.LASF245
	.byte	0x61
	.uleb128 0x2
	.long	.LASF246
	.byte	0x62
	.uleb128 0x2
	.long	.LASF247
	.byte	0x63
	.uleb128 0x2
	.long	.LASF248
	.byte	0x64
	.uleb128 0x2
	.long	.LASF249
	.byte	0x65
	.uleb128 0x2
	.long	.LASF250
	.byte	0x66
	.uleb128 0x2
	.long	.LASF251
	.byte	0x67
	.uleb128 0x2
	.long	.LASF252
	.byte	0x68
	.uleb128 0x2
	.long	.LASF253
	.byte	0x69
	.uleb128 0x2
	.long	.LASF254
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF255
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF256
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF257
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF258
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF259
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF260
	.byte	0x70
	.uleb128 0x2
	.long	.LASF261
	.byte	0x71
	.uleb128 0x2
	.long	.LASF262
	.byte	0x72
	.uleb128 0x2
	.long	.LASF263
	.byte	0x73
	.uleb128 0x2
	.long	.LASF264
	.byte	0x74
	.uleb128 0x2
	.long	.LASF265
	.byte	0x75
	.uleb128 0x2
	.long	.LASF266
	.byte	0x76
	.uleb128 0x2
	.long	.LASF267
	.byte	0x77
	.uleb128 0x2
	.long	.LASF268
	.byte	0x78
	.uleb128 0x2
	.long	.LASF269
	.byte	0x79
	.uleb128 0x2
	.long	.LASF270
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF271
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF272
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF273
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF274
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF275
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF276
	.byte	0x80
	.uleb128 0x2
	.long	.LASF277
	.byte	0x81
	.uleb128 0x2
	.long	.LASF278
	.byte	0x82
	.uleb128 0x2
	.long	.LASF279
	.byte	0x83
	.uleb128 0x2
	.long	.LASF280
	.byte	0x84
	.uleb128 0x2
	.long	.LASF281
	.byte	0x85
	.uleb128 0x2
	.long	.LASF282
	.byte	0x86
	.uleb128 0x2
	.long	.LASF283
	.byte	0x87
	.uleb128 0x2
	.long	.LASF284
	.byte	0x88
	.uleb128 0x2
	.long	.LASF285
	.byte	0x89
	.uleb128 0x2
	.long	.LASF286
	.byte	0x8a
	.byte	0
	.uleb128 0x8
	.long	0x9a
	.byte	0xd
	.byte	0xaf
	.byte	0x1
	.long	0x2275
	.uleb128 0x2
	.long	.LASF287
	.byte	0
	.uleb128 0x2
	.long	.LASF288
	.byte	0x1
	.uleb128 0x2
	.long	.LASF289
	.byte	0x2
	.uleb128 0x2
	.long	.LASF290
	.byte	0x3
	.uleb128 0x2
	.long	.LASF291
	.byte	0x4
	.uleb128 0x2
	.long	.LASF292
	.byte	0x5
	.uleb128 0x2
	.long	.LASF293
	.byte	0x6
	.uleb128 0x2
	.long	.LASF294
	.byte	0x7
	.uleb128 0x2
	.long	.LASF295
	.byte	0x8
	.uleb128 0x2
	.long	.LASF296
	.byte	0x9
	.uleb128 0x2
	.long	.LASF297
	.byte	0xa
	.uleb128 0x2
	.long	.LASF298
	.byte	0xb
	.uleb128 0x2
	.long	.LASF299
	.byte	0xc
	.uleb128 0x2
	.long	.LASF300
	.byte	0xd
	.uleb128 0x2
	.long	.LASF301
	.byte	0xe
	.uleb128 0x2
	.long	.LASF302
	.byte	0xf
	.uleb128 0x2
	.long	.LASF303
	.byte	0x10
	.uleb128 0x2
	.long	.LASF304
	.byte	0x11
	.uleb128 0x2
	.long	.LASF305
	.byte	0x12
	.uleb128 0x2
	.long	.LASF306
	.byte	0x13
	.uleb128 0x2
	.long	.LASF307
	.byte	0x14
	.uleb128 0x2
	.long	.LASF308
	.byte	0x15
	.uleb128 0x2
	.long	.LASF309
	.byte	0x16
	.uleb128 0x2
	.long	.LASF310
	.byte	0x17
	.uleb128 0x2
	.long	.LASF311
	.byte	0x18
	.uleb128 0x2
	.long	.LASF312
	.byte	0x19
	.uleb128 0x2
	.long	.LASF313
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF314
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF315
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF316
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF317
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF318
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF319
	.byte	0x20
	.uleb128 0x2
	.long	.LASF320
	.byte	0x21
	.uleb128 0x2
	.long	.LASF321
	.byte	0x22
	.uleb128 0x2
	.long	.LASF322
	.byte	0x23
	.uleb128 0x2
	.long	.LASF323
	.byte	0x24
	.uleb128 0x2
	.long	.LASF324
	.byte	0x25
	.uleb128 0x2
	.long	.LASF325
	.byte	0x26
	.uleb128 0x2
	.long	.LASF326
	.byte	0x27
	.uleb128 0x2
	.long	.LASF327
	.byte	0x28
	.uleb128 0x2
	.long	.LASF328
	.byte	0x29
	.uleb128 0x2
	.long	.LASF329
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF330
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF331
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF332
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF333
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF334
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF335
	.byte	0x30
	.uleb128 0x2
	.long	.LASF336
	.byte	0x31
	.uleb128 0x2
	.long	.LASF337
	.byte	0x32
	.uleb128 0x2
	.long	.LASF338
	.byte	0x33
	.uleb128 0x2
	.long	.LASF339
	.byte	0x34
	.uleb128 0x2
	.long	.LASF340
	.byte	0x35
	.uleb128 0x2
	.long	.LASF341
	.byte	0x36
	.uleb128 0x2
	.long	.LASF342
	.byte	0x37
	.uleb128 0x2
	.long	.LASF343
	.byte	0x38
	.uleb128 0x2
	.long	.LASF344
	.byte	0x39
	.uleb128 0x2
	.long	.LASF345
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF346
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF347
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF348
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF349
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF350
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF351
	.byte	0x40
	.uleb128 0x2
	.long	.LASF352
	.byte	0x41
	.uleb128 0x2
	.long	.LASF353
	.byte	0x42
	.uleb128 0x2
	.long	.LASF354
	.byte	0x43
	.uleb128 0x2
	.long	.LASF355
	.byte	0x44
	.uleb128 0x2
	.long	.LASF356
	.byte	0x45
	.uleb128 0x2
	.long	.LASF357
	.byte	0x46
	.uleb128 0x2
	.long	.LASF358
	.byte	0x47
	.uleb128 0x2
	.long	.LASF359
	.byte	0x48
	.uleb128 0x2
	.long	.LASF360
	.byte	0x49
	.uleb128 0x2
	.long	.LASF361
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF362
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF363
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF364
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF365
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF366
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF367
	.byte	0x50
	.uleb128 0x2
	.long	.LASF368
	.byte	0x51
	.uleb128 0x2
	.long	.LASF369
	.byte	0x52
	.uleb128 0x2
	.long	.LASF370
	.byte	0x53
	.uleb128 0x2
	.long	.LASF371
	.byte	0x54
	.uleb128 0x2
	.long	.LASF372
	.byte	0x55
	.uleb128 0x2
	.long	.LASF373
	.byte	0x56
	.uleb128 0x2
	.long	.LASF374
	.byte	0x57
	.uleb128 0x2
	.long	.LASF375
	.byte	0x58
	.uleb128 0x2
	.long	.LASF376
	.byte	0x59
	.uleb128 0x2
	.long	.LASF377
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF378
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF379
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF380
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF381
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF382
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF383
	.byte	0x60
	.uleb128 0x2
	.long	.LASF384
	.byte	0x61
	.uleb128 0x2
	.long	.LASF385
	.byte	0x62
	.uleb128 0x2
	.long	.LASF386
	.byte	0x63
	.uleb128 0x2
	.long	.LASF387
	.byte	0x64
	.uleb128 0x2
	.long	.LASF388
	.byte	0x65
	.uleb128 0x2
	.long	.LASF389
	.byte	0x66
	.uleb128 0x2
	.long	.LASF390
	.byte	0x67
	.uleb128 0x2
	.long	.LASF391
	.byte	0x68
	.uleb128 0x2
	.long	.LASF392
	.byte	0x69
	.uleb128 0x2
	.long	.LASF393
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF394
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF395
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF396
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF397
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF398
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF399
	.byte	0x70
	.uleb128 0x2
	.long	.LASF400
	.byte	0x71
	.uleb128 0x2
	.long	.LASF401
	.byte	0x72
	.uleb128 0x2
	.long	.LASF402
	.byte	0x73
	.uleb128 0x2
	.long	.LASF403
	.byte	0x74
	.uleb128 0x2
	.long	.LASF404
	.byte	0x75
	.uleb128 0x2
	.long	.LASF405
	.byte	0x76
	.uleb128 0x2
	.long	.LASF406
	.byte	0x77
	.uleb128 0x2
	.long	.LASF407
	.byte	0x78
	.uleb128 0x2
	.long	.LASF408
	.byte	0x79
	.uleb128 0x2
	.long	.LASF409
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF410
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF411
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF412
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF413
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF414
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF415
	.byte	0x80
	.uleb128 0x2
	.long	.LASF416
	.byte	0x81
	.uleb128 0x2
	.long	.LASF417
	.byte	0x82
	.uleb128 0x2
	.long	.LASF418
	.byte	0x83
	.uleb128 0x2
	.long	.LASF419
	.byte	0x84
	.uleb128 0x2
	.long	.LASF420
	.byte	0x85
	.uleb128 0x2
	.long	.LASF421
	.byte	0x86
	.uleb128 0x2
	.long	.LASF422
	.byte	0x87
	.uleb128 0x2
	.long	.LASF423
	.byte	0x88
	.uleb128 0x2
	.long	.LASF424
	.byte	0x89
	.uleb128 0x2
	.long	.LASF425
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF426
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF427
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF428
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF429
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF430
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF431
	.byte	0x90
	.uleb128 0x2
	.long	.LASF432
	.byte	0x91
	.uleb128 0x2
	.long	.LASF433
	.byte	0x92
	.uleb128 0x2
	.long	.LASF434
	.byte	0x93
	.uleb128 0x2
	.long	.LASF435
	.byte	0x94
	.uleb128 0x2
	.long	.LASF436
	.byte	0x95
	.uleb128 0x2
	.long	.LASF437
	.byte	0x96
	.uleb128 0x2
	.long	.LASF438
	.byte	0x97
	.uleb128 0x2
	.long	.LASF439
	.byte	0x98
	.uleb128 0x2
	.long	.LASF440
	.byte	0x99
	.uleb128 0x2
	.long	.LASF441
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF442
	.byte	0x9b
	.uleb128 0x2
	.long	.LASF443
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF444
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF445
	.byte	0x9e
	.uleb128 0x2
	.long	.LASF446
	.byte	0x9f
	.uleb128 0x2
	.long	.LASF447
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF448
	.byte	0xa1
	.uleb128 0x2
	.long	.LASF449
	.byte	0xa2
	.uleb128 0x2
	.long	.LASF450
	.byte	0xa3
	.uleb128 0x2
	.long	.LASF451
	.byte	0xa4
	.uleb128 0x2
	.long	.LASF452
	.byte	0xa5
	.uleb128 0x2
	.long	.LASF453
	.byte	0xa6
	.uleb128 0x2
	.long	.LASF454
	.byte	0xa7
	.uleb128 0x2
	.long	.LASF455
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF456
	.byte	0xa9
	.uleb128 0x2
	.long	.LASF457
	.byte	0xaa
	.uleb128 0x2
	.long	.LASF458
	.byte	0xab
	.uleb128 0x2
	.long	.LASF459
	.byte	0xac
	.uleb128 0x2
	.long	.LASF460
	.byte	0xad
	.uleb128 0x2
	.long	.LASF461
	.byte	0xae
	.uleb128 0x2
	.long	.LASF462
	.byte	0xaf
	.uleb128 0x2
	.long	.LASF463
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF464
	.byte	0xb1
	.uleb128 0x2
	.long	.LASF465
	.byte	0xb2
	.uleb128 0x2
	.long	.LASF466
	.byte	0xb3
	.uleb128 0x2
	.long	.LASF467
	.byte	0xb4
	.uleb128 0x2
	.long	.LASF468
	.byte	0xb5
	.uleb128 0x2
	.long	.LASF469
	.byte	0xb6
	.uleb128 0x2
	.long	.LASF470
	.byte	0xb7
	.uleb128 0x2
	.long	.LASF471
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF472
	.byte	0xb9
	.uleb128 0x2
	.long	.LASF473
	.byte	0xba
	.uleb128 0x2
	.long	.LASF474
	.byte	0xbb
	.uleb128 0x2
	.long	.LASF475
	.byte	0xbc
	.uleb128 0x2
	.long	.LASF476
	.byte	0xbd
	.uleb128 0x2
	.long	.LASF477
	.byte	0xbe
	.uleb128 0x2
	.long	.LASF478
	.byte	0xbf
	.uleb128 0x2
	.long	.LASF479
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF480
	.byte	0xc1
	.uleb128 0x2
	.long	.LASF481
	.byte	0xc2
	.uleb128 0x2
	.long	.LASF482
	.byte	0xc3
	.uleb128 0x2
	.long	.LASF483
	.byte	0xc4
	.uleb128 0x2
	.long	.LASF484
	.byte	0xc5
	.uleb128 0x2
	.long	.LASF485
	.byte	0xc6
	.uleb128 0x2
	.long	.LASF486
	.byte	0xc7
	.uleb128 0x2
	.long	.LASF487
	.byte	0xc8
	.uleb128 0x2
	.long	.LASF488
	.byte	0xc9
	.uleb128 0x2
	.long	.LASF489
	.byte	0xca
	.uleb128 0x2
	.long	.LASF490
	.byte	0xcb
	.uleb128 0x2
	.long	.LASF491
	.byte	0xcc
	.uleb128 0x2
	.long	.LASF492
	.byte	0xcd
	.uleb128 0x2
	.long	.LASF493
	.byte	0xce
	.uleb128 0x2
	.long	.LASF494
	.byte	0xcf
	.uleb128 0x2
	.long	.LASF495
	.byte	0xd0
	.uleb128 0x2
	.long	.LASF496
	.byte	0xd1
	.uleb128 0x2
	.long	.LASF497
	.byte	0xd2
	.uleb128 0x2
	.long	.LASF498
	.byte	0xd3
	.uleb128 0x2
	.long	.LASF499
	.byte	0xd4
	.uleb128 0x2
	.long	.LASF500
	.byte	0xd5
	.uleb128 0x2
	.long	.LASF501
	.byte	0xd6
	.uleb128 0x2
	.long	.LASF502
	.byte	0xd7
	.uleb128 0x2
	.long	.LASF503
	.byte	0xd8
	.uleb128 0x2
	.long	.LASF504
	.byte	0xd9
	.uleb128 0x2
	.long	.LASF505
	.byte	0xda
	.uleb128 0x2
	.long	.LASF506
	.byte	0xdb
	.uleb128 0x2
	.long	.LASF507
	.byte	0xdc
	.uleb128 0x2
	.long	.LASF508
	.byte	0xdd
	.uleb128 0x2
	.long	.LASF509
	.byte	0xde
	.uleb128 0x2
	.long	.LASF510
	.byte	0xdf
	.uleb128 0x2
	.long	.LASF511
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF512
	.byte	0xe1
	.uleb128 0x2
	.long	.LASF513
	.byte	0xe2
	.uleb128 0x2
	.long	.LASF514
	.byte	0xe3
	.uleb128 0x2
	.long	.LASF515
	.byte	0xe4
	.uleb128 0x2
	.long	.LASF516
	.byte	0xe5
	.uleb128 0x2
	.long	.LASF517
	.byte	0xe6
	.uleb128 0x2
	.long	.LASF518
	.byte	0xe7
	.uleb128 0x2
	.long	.LASF519
	.byte	0xe8
	.uleb128 0x2
	.long	.LASF520
	.byte	0xe9
	.uleb128 0x2
	.long	.LASF521
	.byte	0xea
	.uleb128 0x2
	.long	.LASF522
	.byte	0xeb
	.uleb128 0x2
	.long	.LASF523
	.byte	0xec
	.uleb128 0x2
	.long	.LASF524
	.byte	0xed
	.uleb128 0x2
	.long	.LASF525
	.byte	0xee
	.uleb128 0x2
	.long	.LASF526
	.byte	0xef
	.uleb128 0x2
	.long	.LASF527
	.byte	0xf0
	.uleb128 0x2
	.long	.LASF528
	.byte	0xf1
	.uleb128 0x2
	.long	.LASF529
	.byte	0xf2
	.uleb128 0x2
	.long	.LASF530
	.byte	0xf3
	.uleb128 0x2
	.long	.LASF531
	.byte	0xf4
	.uleb128 0x2
	.long	.LASF532
	.byte	0xf5
	.uleb128 0x2
	.long	.LASF533
	.byte	0xf6
	.uleb128 0x2
	.long	.LASF534
	.byte	0xf7
	.uleb128 0x2
	.long	.LASF535
	.byte	0xf8
	.uleb128 0x2
	.long	.LASF536
	.byte	0xf9
	.uleb128 0x2
	.long	.LASF537
	.byte	0xfa
	.uleb128 0x2
	.long	.LASF538
	.byte	0xfb
	.uleb128 0x2
	.long	.LASF539
	.byte	0xfc
	.uleb128 0x2
	.long	.LASF540
	.byte	0xfd
	.uleb128 0x2
	.long	.LASF541
	.byte	0xfe
	.uleb128 0x2
	.long	.LASF542
	.byte	0xff
	.uleb128 0x1
	.long	.LASF543
	.value	0x100
	.uleb128 0x1
	.long	.LASF544
	.value	0x101
	.uleb128 0x1
	.long	.LASF545
	.value	0x102
	.uleb128 0x1
	.long	.LASF546
	.value	0x103
	.uleb128 0x1
	.long	.LASF547
	.value	0x104
	.uleb128 0x1
	.long	.LASF548
	.value	0x105
	.uleb128 0x1
	.long	.LASF549
	.value	0x106
	.uleb128 0x1
	.long	.LASF550
	.value	0x107
	.uleb128 0x1
	.long	.LASF551
	.value	0x108
	.uleb128 0x1
	.long	.LASF552
	.value	0x109
	.uleb128 0x1
	.long	.LASF553
	.value	0x10a
	.uleb128 0x1
	.long	.LASF554
	.value	0x10b
	.uleb128 0x1
	.long	.LASF555
	.value	0x10c
	.uleb128 0x1
	.long	.LASF556
	.value	0x10d
	.uleb128 0x1
	.long	.LASF557
	.value	0x10e
	.uleb128 0x1
	.long	.LASF558
	.value	0x10f
	.uleb128 0x1
	.long	.LASF559
	.value	0x110
	.uleb128 0x1
	.long	.LASF560
	.value	0x111
	.uleb128 0x1
	.long	.LASF561
	.value	0x112
	.uleb128 0x1
	.long	.LASF562
	.value	0x113
	.uleb128 0x1
	.long	.LASF563
	.value	0x114
	.uleb128 0x1
	.long	.LASF564
	.value	0x115
	.uleb128 0x1
	.long	.LASF565
	.value	0x116
	.uleb128 0x1
	.long	.LASF566
	.value	0x117
	.uleb128 0x1
	.long	.LASF567
	.value	0x118
	.uleb128 0x1
	.long	.LASF568
	.value	0x119
	.uleb128 0x1
	.long	.LASF569
	.value	0x11a
	.uleb128 0x1
	.long	.LASF570
	.value	0x11b
	.uleb128 0x1
	.long	.LASF571
	.value	0x11c
	.uleb128 0x1
	.long	.LASF572
	.value	0x11d
	.uleb128 0x1
	.long	.LASF573
	.value	0x11e
	.uleb128 0x1
	.long	.LASF574
	.value	0x11f
	.uleb128 0x1
	.long	.LASF575
	.value	0x120
	.uleb128 0x1
	.long	.LASF576
	.value	0x121
	.uleb128 0x1
	.long	.LASF577
	.value	0x122
	.uleb128 0x1
	.long	.LASF578
	.value	0x123
	.uleb128 0x1
	.long	.LASF579
	.value	0x124
	.uleb128 0x1
	.long	.LASF580
	.value	0x125
	.uleb128 0x1
	.long	.LASF581
	.value	0x126
	.uleb128 0x1
	.long	.LASF582
	.value	0x127
	.uleb128 0x1
	.long	.LASF583
	.value	0x128
	.uleb128 0x1
	.long	.LASF584
	.value	0x129
	.uleb128 0x1
	.long	.LASF585
	.value	0x12a
	.uleb128 0x1
	.long	.LASF586
	.value	0x12b
	.uleb128 0x1
	.long	.LASF587
	.value	0x12c
	.uleb128 0x1
	.long	.LASF588
	.value	0x12d
	.uleb128 0x1
	.long	.LASF589
	.value	0x12e
	.uleb128 0x1
	.long	.LASF590
	.value	0x12f
	.uleb128 0x1
	.long	.LASF591
	.value	0x130
	.uleb128 0x1
	.long	.LASF592
	.value	0x131
	.uleb128 0x1
	.long	.LASF593
	.value	0x132
	.uleb128 0x1
	.long	.LASF594
	.value	0x133
	.uleb128 0x1
	.long	.LASF595
	.value	0x134
	.uleb128 0x1
	.long	.LASF596
	.value	0x135
	.uleb128 0x1
	.long	.LASF597
	.value	0x136
	.uleb128 0x1
	.long	.LASF598
	.value	0x137
	.uleb128 0x1
	.long	.LASF599
	.value	0x138
	.uleb128 0x1
	.long	.LASF600
	.value	0x139
	.uleb128 0x1
	.long	.LASF601
	.value	0x13a
	.uleb128 0x1
	.long	.LASF602
	.value	0x13b
	.uleb128 0x1
	.long	.LASF603
	.value	0x13c
	.uleb128 0x1
	.long	.LASF604
	.value	0x13d
	.uleb128 0x1
	.long	.LASF605
	.value	0x13e
	.uleb128 0x1
	.long	.LASF606
	.value	0x13f
	.uleb128 0x1
	.long	.LASF607
	.value	0x140
	.uleb128 0x1
	.long	.LASF608
	.value	0x141
	.uleb128 0x1
	.long	.LASF609
	.value	0x142
	.uleb128 0x1
	.long	.LASF610
	.value	0x143
	.uleb128 0x1
	.long	.LASF611
	.value	0x144
	.uleb128 0x1
	.long	.LASF612
	.value	0x145
	.uleb128 0x1
	.long	.LASF613
	.value	0x146
	.uleb128 0x1
	.long	.LASF614
	.value	0x147
	.uleb128 0x1
	.long	.LASF615
	.value	0x148
	.uleb128 0x1
	.long	.LASF616
	.value	0x149
	.uleb128 0x1
	.long	.LASF617
	.value	0x14a
	.uleb128 0x1
	.long	.LASF618
	.value	0x14b
	.uleb128 0x1
	.long	.LASF619
	.value	0x14c
	.uleb128 0x1
	.long	.LASF620
	.value	0x14d
	.uleb128 0x1
	.long	.LASF621
	.value	0x14e
	.uleb128 0x1
	.long	.LASF622
	.value	0x14f
	.uleb128 0x1
	.long	.LASF623
	.value	0x150
	.uleb128 0x1
	.long	.LASF624
	.value	0x151
	.uleb128 0x1
	.long	.LASF625
	.value	0x152
	.uleb128 0x1
	.long	.LASF626
	.value	0x153
	.uleb128 0x1
	.long	.LASF627
	.value	0x154
	.uleb128 0x1
	.long	.LASF628
	.value	0x155
	.uleb128 0x1
	.long	.LASF629
	.value	0x156
	.uleb128 0x1
	.long	.LASF630
	.value	0x157
	.uleb128 0x1
	.long	.LASF631
	.value	0x158
	.uleb128 0x1
	.long	.LASF632
	.value	0x159
	.uleb128 0x1
	.long	.LASF633
	.value	0x15a
	.uleb128 0x1
	.long	.LASF634
	.value	0x15b
	.uleb128 0x1
	.long	.LASF635
	.value	0x15c
	.uleb128 0x1
	.long	.LASF636
	.value	0x15d
	.uleb128 0x1
	.long	.LASF637
	.value	0x15e
	.uleb128 0x1
	.long	.LASF638
	.value	0x15f
	.uleb128 0x1
	.long	.LASF639
	.value	0x160
	.uleb128 0x1
	.long	.LASF640
	.value	0x161
	.uleb128 0x1
	.long	.LASF641
	.value	0x162
	.uleb128 0x1
	.long	.LASF642
	.value	0x163
	.uleb128 0x1
	.long	.LASF643
	.value	0x164
	.uleb128 0x1
	.long	.LASF644
	.value	0x165
	.uleb128 0x1
	.long	.LASF645
	.value	0x166
	.uleb128 0x1
	.long	.LASF646
	.value	0x167
	.uleb128 0x1
	.long	.LASF647
	.value	0x168
	.uleb128 0x1
	.long	.LASF648
	.value	0x169
	.uleb128 0x1
	.long	.LASF649
	.value	0x16a
	.uleb128 0x1
	.long	.LASF650
	.value	0x16b
	.uleb128 0x1
	.long	.LASF651
	.value	0x16c
	.uleb128 0x1
	.long	.LASF652
	.value	0x16d
	.uleb128 0x1
	.long	.LASF653
	.value	0x16e
	.uleb128 0x1
	.long	.LASF654
	.value	0x16f
	.uleb128 0x1
	.long	.LASF655
	.value	0x170
	.uleb128 0x1
	.long	.LASF656
	.value	0x171
	.uleb128 0x1
	.long	.LASF657
	.value	0x172
	.uleb128 0x1
	.long	.LASF658
	.value	0x173
	.uleb128 0x1
	.long	.LASF659
	.value	0x174
	.uleb128 0x1
	.long	.LASF660
	.value	0x175
	.uleb128 0x1
	.long	.LASF661
	.value	0x176
	.uleb128 0x1
	.long	.LASF662
	.value	0x177
	.uleb128 0x1
	.long	.LASF663
	.value	0x178
	.uleb128 0x1
	.long	.LASF664
	.value	0x179
	.uleb128 0x1
	.long	.LASF665
	.value	0x17a
	.uleb128 0x1
	.long	.LASF666
	.value	0x17b
	.uleb128 0x1
	.long	.LASF667
	.value	0x17c
	.uleb128 0x1
	.long	.LASF668
	.value	0x17d
	.uleb128 0x1
	.long	.LASF669
	.value	0x17e
	.uleb128 0x1
	.long	.LASF670
	.value	0x17f
	.uleb128 0x1
	.long	.LASF671
	.value	0x180
	.uleb128 0x1
	.long	.LASF672
	.value	0x181
	.uleb128 0x1
	.long	.LASF673
	.value	0x182
	.uleb128 0x1
	.long	.LASF674
	.value	0x183
	.uleb128 0x1
	.long	.LASF675
	.value	0x184
	.uleb128 0x1
	.long	.LASF676
	.value	0x185
	.uleb128 0x1
	.long	.LASF677
	.value	0x186
	.uleb128 0x1
	.long	.LASF678
	.value	0x187
	.uleb128 0x1
	.long	.LASF679
	.value	0x188
	.uleb128 0x1
	.long	.LASF680
	.value	0x189
	.uleb128 0x1
	.long	.LASF681
	.value	0x18a
	.uleb128 0x1
	.long	.LASF682
	.value	0x18b
	.uleb128 0x1
	.long	.LASF683
	.value	0x18c
	.uleb128 0x1
	.long	.LASF684
	.value	0x18d
	.uleb128 0x1
	.long	.LASF685
	.value	0x18e
	.uleb128 0x1
	.long	.LASF686
	.value	0x18f
	.uleb128 0x1
	.long	.LASF687
	.value	0x190
	.uleb128 0x1
	.long	.LASF688
	.value	0x191
	.uleb128 0x1
	.long	.LASF689
	.value	0x192
	.uleb128 0x1
	.long	.LASF690
	.value	0x193
	.uleb128 0x1
	.long	.LASF691
	.value	0x194
	.uleb128 0x1
	.long	.LASF692
	.value	0x195
	.uleb128 0x1
	.long	.LASF693
	.value	0x196
	.uleb128 0x1
	.long	.LASF694
	.value	0x197
	.uleb128 0x1
	.long	.LASF695
	.value	0x198
	.uleb128 0x1
	.long	.LASF696
	.value	0x199
	.uleb128 0x1
	.long	.LASF697
	.value	0x19a
	.uleb128 0x1
	.long	.LASF698
	.value	0x19b
	.uleb128 0x1
	.long	.LASF699
	.value	0x19c
	.uleb128 0x1
	.long	.LASF700
	.value	0x19d
	.uleb128 0x1
	.long	.LASF701
	.value	0x19e
	.uleb128 0x1
	.long	.LASF702
	.value	0x19f
	.uleb128 0x1
	.long	.LASF703
	.value	0x1a0
	.uleb128 0x1
	.long	.LASF704
	.value	0x1a1
	.uleb128 0x1
	.long	.LASF705
	.value	0x1a2
	.uleb128 0x1
	.long	.LASF706
	.value	0x1a3
	.uleb128 0x1
	.long	.LASF707
	.value	0x1a4
	.uleb128 0x1
	.long	.LASF708
	.value	0x1a5
	.uleb128 0x1
	.long	.LASF709
	.value	0x1a6
	.uleb128 0x1
	.long	.LASF710
	.value	0x1a7
	.uleb128 0x1
	.long	.LASF711
	.value	0x1a8
	.uleb128 0x1
	.long	.LASF712
	.value	0x1a9
	.uleb128 0x1
	.long	.LASF713
	.value	0x1aa
	.uleb128 0x1
	.long	.LASF714
	.value	0x1ab
	.uleb128 0x1
	.long	.LASF715
	.value	0x1ac
	.uleb128 0x1
	.long	.LASF716
	.value	0x1ad
	.uleb128 0x1
	.long	.LASF717
	.value	0x1ae
	.uleb128 0x1
	.long	.LASF718
	.value	0x1af
	.uleb128 0x1
	.long	.LASF719
	.value	0x1b0
	.uleb128 0x1
	.long	.LASF720
	.value	0x1b1
	.uleb128 0x1
	.long	.LASF721
	.value	0x1b2
	.uleb128 0x1
	.long	.LASF722
	.value	0x1b3
	.uleb128 0x1
	.long	.LASF723
	.value	0x1b4
	.uleb128 0x1
	.long	.LASF724
	.value	0x1b5
	.uleb128 0x1
	.long	.LASF725
	.value	0x1b6
	.uleb128 0x1
	.long	.LASF726
	.value	0x1b7
	.uleb128 0x1
	.long	.LASF727
	.value	0x1b8
	.uleb128 0x1
	.long	.LASF728
	.value	0x1b9
	.uleb128 0x1
	.long	.LASF729
	.value	0x1ba
	.uleb128 0x1
	.long	.LASF730
	.value	0x1bb
	.uleb128 0x1
	.long	.LASF731
	.value	0x1bc
	.uleb128 0x1
	.long	.LASF732
	.value	0x1bd
	.uleb128 0x1
	.long	.LASF733
	.value	0x1be
	.uleb128 0x1
	.long	.LASF734
	.value	0x1bf
	.uleb128 0x1
	.long	.LASF735
	.value	0x1c0
	.uleb128 0x1
	.long	.LASF736
	.value	0x1c1
	.uleb128 0x1
	.long	.LASF737
	.value	0x1c2
	.uleb128 0x1
	.long	.LASF738
	.value	0x1c3
	.uleb128 0x1
	.long	.LASF739
	.value	0x1c4
	.uleb128 0x1
	.long	.LASF740
	.value	0x1c5
	.uleb128 0x1
	.long	.LASF741
	.value	0x1c6
	.uleb128 0x1
	.long	.LASF742
	.value	0x1c7
	.uleb128 0x1
	.long	.LASF743
	.value	0x1c8
	.uleb128 0x1
	.long	.LASF744
	.value	0x1c9
	.uleb128 0x1
	.long	.LASF745
	.value	0x1ca
	.uleb128 0x1
	.long	.LASF746
	.value	0x1cb
	.uleb128 0x1
	.long	.LASF747
	.value	0x1cc
	.uleb128 0x1
	.long	.LASF748
	.value	0x1cd
	.uleb128 0x1
	.long	.LASF749
	.value	0x1ce
	.uleb128 0x1
	.long	.LASF750
	.value	0x1cf
	.uleb128 0x1
	.long	.LASF751
	.value	0x1d0
	.uleb128 0x1
	.long	.LASF752
	.value	0x1d1
	.uleb128 0x1
	.long	.LASF753
	.value	0x1d2
	.uleb128 0x1
	.long	.LASF754
	.value	0x1d3
	.uleb128 0x1
	.long	.LASF755
	.value	0x1d4
	.uleb128 0x1
	.long	.LASF756
	.value	0x1d5
	.uleb128 0x1
	.long	.LASF757
	.value	0x1d6
	.uleb128 0x1
	.long	.LASF758
	.value	0x1d7
	.uleb128 0x1
	.long	.LASF759
	.value	0x1d8
	.uleb128 0x1
	.long	.LASF760
	.value	0x1d9
	.uleb128 0x1
	.long	.LASF761
	.value	0x1da
	.uleb128 0x1
	.long	.LASF762
	.value	0x1db
	.uleb128 0x1
	.long	.LASF763
	.value	0x1dc
	.uleb128 0x1
	.long	.LASF764
	.value	0x1dd
	.uleb128 0x1
	.long	.LASF765
	.value	0x1de
	.uleb128 0x1
	.long	.LASF766
	.value	0x1df
	.uleb128 0x1
	.long	.LASF767
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF768
	.value	0x1e1
	.uleb128 0x1
	.long	.LASF769
	.value	0x1e2
	.uleb128 0x1
	.long	.LASF770
	.value	0x1e3
	.uleb128 0x1
	.long	.LASF771
	.value	0x1e4
	.uleb128 0x1
	.long	.LASF772
	.value	0x1e5
	.uleb128 0x1
	.long	.LASF773
	.value	0x1e6
	.uleb128 0x1
	.long	.LASF774
	.value	0x1e7
	.uleb128 0x1
	.long	.LASF775
	.value	0x1e8
	.uleb128 0x1
	.long	.LASF776
	.value	0x1e9
	.uleb128 0x1
	.long	.LASF777
	.value	0x1ea
	.uleb128 0x1
	.long	.LASF778
	.value	0x1eb
	.uleb128 0x1
	.long	.LASF779
	.value	0x1ec
	.uleb128 0x1
	.long	.LASF780
	.value	0x1ed
	.uleb128 0x1
	.long	.LASF781
	.value	0x1ee
	.uleb128 0x1
	.long	.LASF782
	.value	0x1ef
	.uleb128 0x1
	.long	.LASF783
	.value	0x1f0
	.uleb128 0x1
	.long	.LASF784
	.value	0x1f1
	.uleb128 0x1
	.long	.LASF785
	.value	0x1f2
	.uleb128 0x1
	.long	.LASF786
	.value	0x1f3
	.uleb128 0x1
	.long	.LASF787
	.value	0x1f4
	.uleb128 0x1
	.long	.LASF788
	.value	0x1f5
	.uleb128 0x1
	.long	.LASF789
	.value	0x1f6
	.uleb128 0x1
	.long	.LASF790
	.value	0x1f7
	.uleb128 0x1
	.long	.LASF791
	.value	0x1f8
	.uleb128 0x1
	.long	.LASF792
	.value	0x1f9
	.uleb128 0x1
	.long	.LASF793
	.value	0x1fa
	.uleb128 0x1
	.long	.LASF794
	.value	0x1fb
	.uleb128 0x1
	.long	.LASF795
	.value	0x1fc
	.uleb128 0x1
	.long	.LASF796
	.value	0x1fd
	.uleb128 0x1
	.long	.LASF797
	.value	0x1fe
	.uleb128 0x1
	.long	.LASF798
	.value	0x1ff
	.uleb128 0x1
	.long	.LASF799
	.value	0x200
	.uleb128 0x1
	.long	.LASF800
	.value	0x201
	.uleb128 0x1
	.long	.LASF801
	.value	0x202
	.uleb128 0x1
	.long	.LASF802
	.value	0x203
	.uleb128 0x1
	.long	.LASF803
	.value	0x204
	.uleb128 0x1
	.long	.LASF804
	.value	0x205
	.uleb128 0x1
	.long	.LASF805
	.value	0x206
	.uleb128 0x1
	.long	.LASF806
	.value	0x207
	.uleb128 0x1
	.long	.LASF807
	.value	0x208
	.uleb128 0x1
	.long	.LASF808
	.value	0x209
	.uleb128 0x1
	.long	.LASF809
	.value	0x20a
	.uleb128 0x1
	.long	.LASF810
	.value	0x20b
	.uleb128 0x1
	.long	.LASF811
	.value	0x20c
	.uleb128 0x1
	.long	.LASF812
	.value	0x20d
	.uleb128 0x1
	.long	.LASF813
	.value	0x20e
	.uleb128 0x1
	.long	.LASF814
	.value	0x20f
	.uleb128 0x1
	.long	.LASF815
	.value	0x210
	.uleb128 0x1
	.long	.LASF816
	.value	0x211
	.uleb128 0x1
	.long	.LASF817
	.value	0x212
	.uleb128 0x1
	.long	.LASF818
	.value	0x213
	.uleb128 0x1
	.long	.LASF819
	.value	0x214
	.uleb128 0x1
	.long	.LASF820
	.value	0x215
	.uleb128 0x1
	.long	.LASF821
	.value	0x216
	.uleb128 0x1
	.long	.LASF822
	.value	0x217
	.uleb128 0x1
	.long	.LASF823
	.value	0x218
	.uleb128 0x1
	.long	.LASF824
	.value	0x219
	.uleb128 0x1
	.long	.LASF825
	.value	0x21a
	.uleb128 0x1
	.long	.LASF826
	.value	0x21b
	.uleb128 0x1
	.long	.LASF827
	.value	0x21c
	.uleb128 0x1
	.long	.LASF828
	.value	0x21d
	.uleb128 0x1
	.long	.LASF829
	.value	0x21e
	.uleb128 0x1
	.long	.LASF830
	.value	0x21f
	.uleb128 0x1
	.long	.LASF831
	.value	0x220
	.uleb128 0x1
	.long	.LASF832
	.value	0x221
	.uleb128 0x1
	.long	.LASF833
	.value	0x222
	.uleb128 0x1
	.long	.LASF834
	.value	0x223
	.uleb128 0x1
	.long	.LASF835
	.value	0x224
	.uleb128 0x1
	.long	.LASF836
	.value	0x225
	.uleb128 0x1
	.long	.LASF837
	.value	0x226
	.uleb128 0x1
	.long	.LASF838
	.value	0x227
	.uleb128 0x1
	.long	.LASF839
	.value	0x228
	.uleb128 0x1
	.long	.LASF840
	.value	0x229
	.uleb128 0x1
	.long	.LASF841
	.value	0x22a
	.uleb128 0x1
	.long	.LASF842
	.value	0x22b
	.uleb128 0x1
	.long	.LASF843
	.value	0x22c
	.uleb128 0x1
	.long	.LASF844
	.value	0x22d
	.uleb128 0x1
	.long	.LASF845
	.value	0x22e
	.uleb128 0x1
	.long	.LASF846
	.value	0x22f
	.uleb128 0x1
	.long	.LASF847
	.value	0x230
	.uleb128 0x1
	.long	.LASF848
	.value	0x231
	.uleb128 0x1
	.long	.LASF849
	.value	0x232
	.uleb128 0x1
	.long	.LASF850
	.value	0x233
	.uleb128 0x1
	.long	.LASF851
	.value	0x234
	.uleb128 0x1
	.long	.LASF852
	.value	0x235
	.uleb128 0x1
	.long	.LASF853
	.value	0x236
	.uleb128 0x1
	.long	.LASF854
	.value	0x237
	.uleb128 0x1
	.long	.LASF855
	.value	0x238
	.uleb128 0x1
	.long	.LASF856
	.value	0x239
	.uleb128 0x1
	.long	.LASF857
	.value	0x23a
	.uleb128 0x1
	.long	.LASF858
	.value	0x23b
	.uleb128 0x1
	.long	.LASF859
	.value	0x23c
	.uleb128 0x1
	.long	.LASF860
	.value	0x23d
	.uleb128 0x1
	.long	.LASF861
	.value	0x23e
	.uleb128 0x1
	.long	.LASF862
	.value	0x23f
	.uleb128 0x1
	.long	.LASF863
	.value	0x240
	.uleb128 0x1
	.long	.LASF864
	.value	0x241
	.uleb128 0x1
	.long	.LASF865
	.value	0x242
	.uleb128 0x1
	.long	.LASF866
	.value	0x243
	.uleb128 0x1
	.long	.LASF867
	.value	0x244
	.uleb128 0x1
	.long	.LASF868
	.value	0x245
	.uleb128 0x1
	.long	.LASF869
	.value	0x246
	.uleb128 0x1
	.long	.LASF870
	.value	0x247
	.uleb128 0x1
	.long	.LASF871
	.value	0x248
	.uleb128 0x1
	.long	.LASF872
	.value	0x249
	.uleb128 0x1
	.long	.LASF873
	.value	0x24a
	.uleb128 0x1
	.long	.LASF874
	.value	0x24b
	.uleb128 0x1
	.long	.LASF875
	.value	0x24c
	.uleb128 0x1
	.long	.LASF876
	.value	0x24d
	.uleb128 0x1
	.long	.LASF877
	.value	0x24e
	.uleb128 0x1
	.long	.LASF878
	.value	0x24f
	.uleb128 0x1
	.long	.LASF879
	.value	0x250
	.uleb128 0x1
	.long	.LASF880
	.value	0x251
	.uleb128 0x1
	.long	.LASF881
	.value	0x252
	.uleb128 0x1
	.long	.LASF882
	.value	0x253
	.uleb128 0x1
	.long	.LASF883
	.value	0x254
	.uleb128 0x1
	.long	.LASF884
	.value	0x255
	.uleb128 0x1
	.long	.LASF885
	.value	0x256
	.uleb128 0x1
	.long	.LASF886
	.value	0x257
	.uleb128 0x1
	.long	.LASF887
	.value	0x258
	.uleb128 0x1
	.long	.LASF888
	.value	0x259
	.uleb128 0x1
	.long	.LASF889
	.value	0x25a
	.uleb128 0x1
	.long	.LASF890
	.value	0x25b
	.uleb128 0x1
	.long	.LASF891
	.value	0x25c
	.uleb128 0x1
	.long	.LASF892
	.value	0x25d
	.uleb128 0x1
	.long	.LASF893
	.value	0x25e
	.uleb128 0x1
	.long	.LASF894
	.value	0x25f
	.uleb128 0x1
	.long	.LASF895
	.value	0x260
	.uleb128 0x1
	.long	.LASF896
	.value	0x261
	.uleb128 0x1
	.long	.LASF897
	.value	0x262
	.uleb128 0x1
	.long	.LASF898
	.value	0x263
	.uleb128 0x1
	.long	.LASF899
	.value	0x264
	.uleb128 0x1
	.long	.LASF900
	.value	0x265
	.uleb128 0x1
	.long	.LASF901
	.value	0x266
	.uleb128 0x1
	.long	.LASF902
	.value	0x267
	.uleb128 0x1
	.long	.LASF903
	.value	0x268
	.uleb128 0x1
	.long	.LASF904
	.value	0x269
	.uleb128 0x1
	.long	.LASF905
	.value	0x26a
	.uleb128 0x1
	.long	.LASF906
	.value	0x26b
	.uleb128 0x1
	.long	.LASF907
	.value	0x26c
	.uleb128 0x1
	.long	.LASF908
	.value	0x26d
	.uleb128 0x1
	.long	.LASF909
	.value	0x26e
	.uleb128 0x1
	.long	.LASF910
	.value	0x26f
	.uleb128 0x1
	.long	.LASF911
	.value	0x270
	.uleb128 0x1
	.long	.LASF912
	.value	0x271
	.uleb128 0x1
	.long	.LASF913
	.value	0x272
	.uleb128 0x1
	.long	.LASF914
	.value	0x273
	.uleb128 0x1
	.long	.LASF915
	.value	0x274
	.uleb128 0x1
	.long	.LASF916
	.value	0x275
	.uleb128 0x1
	.long	.LASF917
	.value	0x276
	.uleb128 0x1
	.long	.LASF918
	.value	0x277
	.uleb128 0x1
	.long	.LASF919
	.value	0x278
	.uleb128 0x1
	.long	.LASF920
	.value	0x279
	.uleb128 0x1
	.long	.LASF921
	.value	0x27a
	.uleb128 0x1
	.long	.LASF922
	.value	0x27b
	.uleb128 0x1
	.long	.LASF923
	.value	0x27c
	.uleb128 0x1
	.long	.LASF924
	.value	0x27d
	.uleb128 0x1
	.long	.LASF925
	.value	0x27e
	.uleb128 0x1
	.long	.LASF926
	.value	0x27f
	.uleb128 0x1
	.long	.LASF927
	.value	0x280
	.uleb128 0x1
	.long	.LASF928
	.value	0x281
	.uleb128 0x1
	.long	.LASF929
	.value	0x282
	.uleb128 0x1
	.long	.LASF930
	.value	0x283
	.uleb128 0x1
	.long	.LASF931
	.value	0x284
	.uleb128 0x1
	.long	.LASF932
	.value	0x285
	.uleb128 0x1
	.long	.LASF933
	.value	0x286
	.uleb128 0x1
	.long	.LASF934
	.value	0x287
	.uleb128 0x1
	.long	.LASF935
	.value	0x288
	.uleb128 0x1
	.long	.LASF936
	.value	0x289
	.uleb128 0x1
	.long	.LASF937
	.value	0x28a
	.uleb128 0x1
	.long	.LASF938
	.value	0x28b
	.uleb128 0x1
	.long	.LASF939
	.value	0x28c
	.uleb128 0x1
	.long	.LASF940
	.value	0x28d
	.uleb128 0x1
	.long	.LASF941
	.value	0x28e
	.uleb128 0x1
	.long	.LASF942
	.value	0x28f
	.uleb128 0x1
	.long	.LASF943
	.value	0x290
	.uleb128 0x1
	.long	.LASF944
	.value	0x291
	.uleb128 0x1
	.long	.LASF945
	.value	0x292
	.uleb128 0x1
	.long	.LASF946
	.value	0x293
	.uleb128 0x1
	.long	.LASF947
	.value	0x294
	.uleb128 0x1
	.long	.LASF948
	.value	0x295
	.uleb128 0x1
	.long	.LASF949
	.value	0x296
	.uleb128 0x1
	.long	.LASF950
	.value	0x297
	.uleb128 0x1
	.long	.LASF951
	.value	0x298
	.uleb128 0x1
	.long	.LASF952
	.value	0x299
	.uleb128 0x1
	.long	.LASF953
	.value	0x29a
	.uleb128 0x1
	.long	.LASF954
	.value	0x29b
	.uleb128 0x1
	.long	.LASF955
	.value	0x29c
	.uleb128 0x1
	.long	.LASF956
	.value	0x29d
	.uleb128 0x1
	.long	.LASF957
	.value	0x29e
	.uleb128 0x1
	.long	.LASF958
	.value	0x29f
	.uleb128 0x1
	.long	.LASF959
	.value	0x2a0
	.uleb128 0x1
	.long	.LASF960
	.value	0x2a1
	.uleb128 0x1
	.long	.LASF961
	.value	0x2a2
	.uleb128 0x1
	.long	.LASF962
	.value	0x2a3
	.uleb128 0x1
	.long	.LASF963
	.value	0x2a4
	.uleb128 0x1
	.long	.LASF964
	.value	0x2a5
	.uleb128 0x1
	.long	.LASF965
	.value	0x2a6
	.uleb128 0x1
	.long	.LASF966
	.value	0x2a7
	.uleb128 0x1
	.long	.LASF967
	.value	0x2a8
	.uleb128 0x1
	.long	.LASF968
	.value	0x2a9
	.uleb128 0x1
	.long	.LASF969
	.value	0x2aa
	.uleb128 0x1
	.long	.LASF970
	.value	0x2ab
	.uleb128 0x1
	.long	.LASF971
	.value	0x2ac
	.uleb128 0x1
	.long	.LASF972
	.value	0x2ad
	.uleb128 0x1
	.long	.LASF973
	.value	0x2ae
	.uleb128 0x1
	.long	.LASF974
	.value	0x2af
	.uleb128 0x1
	.long	.LASF975
	.value	0x2b0
	.uleb128 0x1
	.long	.LASF976
	.value	0x2b1
	.uleb128 0x1
	.long	.LASF977
	.value	0x2b2
	.uleb128 0x1
	.long	.LASF978
	.value	0x2b3
	.uleb128 0x1
	.long	.LASF979
	.value	0x2b4
	.uleb128 0x1
	.long	.LASF980
	.value	0x2b5
	.uleb128 0x1
	.long	.LASF981
	.value	0x2b6
	.uleb128 0x1
	.long	.LASF982
	.value	0x2b7
	.uleb128 0x1
	.long	.LASF983
	.value	0x2b8
	.uleb128 0x1
	.long	.LASF984
	.value	0x2b9
	.uleb128 0x1
	.long	.LASF985
	.value	0x2ba
	.uleb128 0x1
	.long	.LASF986
	.value	0x2bb
	.uleb128 0x1
	.long	.LASF987
	.value	0x2bc
	.uleb128 0x1
	.long	.LASF988
	.value	0x2bd
	.uleb128 0x1
	.long	.LASF989
	.value	0x2be
	.uleb128 0x1
	.long	.LASF990
	.value	0x2bf
	.uleb128 0x1
	.long	.LASF991
	.value	0x2c0
	.uleb128 0x1
	.long	.LASF992
	.value	0x2c1
	.uleb128 0x1
	.long	.LASF993
	.value	0x2c2
	.uleb128 0x1
	.long	.LASF994
	.value	0x2c3
	.uleb128 0x1
	.long	.LASF995
	.value	0x2c4
	.uleb128 0x1
	.long	.LASF996
	.value	0x2c5
	.uleb128 0x1
	.long	.LASF997
	.value	0x2c6
	.uleb128 0x1
	.long	.LASF998
	.value	0x2c7
	.uleb128 0x1
	.long	.LASF999
	.value	0x2c8
	.uleb128 0x1
	.long	.LASF1000
	.value	0x2c9
	.uleb128 0x1
	.long	.LASF1001
	.value	0x2ca
	.uleb128 0x1
	.long	.LASF1002
	.value	0x2cb
	.uleb128 0x1
	.long	.LASF1003
	.value	0x2cc
	.uleb128 0x1
	.long	.LASF1004
	.value	0x2cd
	.uleb128 0x1
	.long	.LASF1005
	.value	0x2ce
	.uleb128 0x1
	.long	.LASF1006
	.value	0x2cf
	.uleb128 0x1
	.long	.LASF1007
	.value	0x2d0
	.uleb128 0x1
	.long	.LASF1008
	.value	0x2d1
	.uleb128 0x1
	.long	.LASF1009
	.value	0x2d2
	.uleb128 0x1
	.long	.LASF1010
	.value	0x2d3
	.uleb128 0x1
	.long	.LASF1011
	.value	0x2d4
	.uleb128 0x1
	.long	.LASF1012
	.value	0x2d5
	.uleb128 0x1
	.long	.LASF1013
	.value	0x2d6
	.uleb128 0x1
	.long	.LASF1014
	.value	0x2d7
	.uleb128 0x1
	.long	.LASF1015
	.value	0x2d8
	.uleb128 0x1
	.long	.LASF1016
	.value	0x2d9
	.uleb128 0x1
	.long	.LASF1017
	.value	0x2da
	.uleb128 0x1
	.long	.LASF1018
	.value	0x2db
	.uleb128 0x1
	.long	.LASF1019
	.value	0x2dc
	.uleb128 0x1
	.long	.LASF1020
	.value	0x2dd
	.uleb128 0x1
	.long	.LASF1021
	.value	0x2de
	.uleb128 0x1
	.long	.LASF1022
	.value	0x2df
	.uleb128 0x1
	.long	.LASF1023
	.value	0x2e0
	.uleb128 0x1
	.long	.LASF1024
	.value	0x2e1
	.uleb128 0x1
	.long	.LASF1025
	.value	0x2e2
	.uleb128 0x1
	.long	.LASF1026
	.value	0x2e3
	.uleb128 0x1
	.long	.LASF1027
	.value	0x2e4
	.uleb128 0x1
	.long	.LASF1028
	.value	0x2e5
	.uleb128 0x1
	.long	.LASF1029
	.value	0x2e6
	.uleb128 0x1
	.long	.LASF1030
	.value	0x2e7
	.uleb128 0x1
	.long	.LASF1031
	.value	0x2e8
	.uleb128 0x1
	.long	.LASF1032
	.value	0x2e9
	.uleb128 0x1
	.long	.LASF1033
	.value	0x2ea
	.uleb128 0x1
	.long	.LASF1034
	.value	0x2eb
	.uleb128 0x1
	.long	.LASF1035
	.value	0x2ec
	.uleb128 0x1
	.long	.LASF1036
	.value	0x2ed
	.uleb128 0x1
	.long	.LASF1037
	.value	0x2ee
	.uleb128 0x1
	.long	.LASF1038
	.value	0x2ef
	.uleb128 0x1
	.long	.LASF1039
	.value	0x2f0
	.uleb128 0x1
	.long	.LASF1040
	.value	0x2f1
	.uleb128 0x1
	.long	.LASF1041
	.value	0x2f2
	.uleb128 0x1
	.long	.LASF1042
	.value	0x2f3
	.uleb128 0x1
	.long	.LASF1043
	.value	0x2f4
	.uleb128 0x1
	.long	.LASF1044
	.value	0x2f5
	.uleb128 0x1
	.long	.LASF1045
	.value	0x2f6
	.uleb128 0x1
	.long	.LASF1046
	.value	0x2f7
	.uleb128 0x1
	.long	.LASF1047
	.value	0x2f8
	.uleb128 0x1
	.long	.LASF1048
	.value	0x2f9
	.uleb128 0x1
	.long	.LASF1049
	.value	0x2fa
	.uleb128 0x1
	.long	.LASF1050
	.value	0x2fb
	.uleb128 0x1
	.long	.LASF1051
	.value	0x2fc
	.uleb128 0x1
	.long	.LASF1052
	.value	0x2fd
	.uleb128 0x1
	.long	.LASF1053
	.value	0x2fe
	.uleb128 0x1
	.long	.LASF1054
	.value	0x2ff
	.uleb128 0x1
	.long	.LASF1055
	.value	0x300
	.uleb128 0x1
	.long	.LASF1056
	.value	0x301
	.uleb128 0x1
	.long	.LASF1057
	.value	0x302
	.uleb128 0x1
	.long	.LASF1058
	.value	0x303
	.uleb128 0x1
	.long	.LASF1059
	.value	0x304
	.uleb128 0x1
	.long	.LASF1060
	.value	0x305
	.uleb128 0x1
	.long	.LASF1061
	.value	0x306
	.uleb128 0x1
	.long	.LASF1062
	.value	0x307
	.uleb128 0x1
	.long	.LASF1063
	.value	0x308
	.uleb128 0x1
	.long	.LASF1064
	.value	0x309
	.uleb128 0x1
	.long	.LASF1065
	.value	0x30a
	.uleb128 0x1
	.long	.LASF1066
	.value	0x30b
	.uleb128 0x1
	.long	.LASF1067
	.value	0x30c
	.uleb128 0x1
	.long	.LASF1068
	.value	0x30d
	.uleb128 0x1
	.long	.LASF1069
	.value	0x30e
	.uleb128 0x1
	.long	.LASF1070
	.value	0x30f
	.uleb128 0x1
	.long	.LASF1071
	.value	0x310
	.uleb128 0x1
	.long	.LASF1072
	.value	0x311
	.uleb128 0x1
	.long	.LASF1073
	.value	0x312
	.uleb128 0x1
	.long	.LASF1074
	.value	0x313
	.uleb128 0x1
	.long	.LASF1075
	.value	0x314
	.uleb128 0x1
	.long	.LASF1076
	.value	0x315
	.uleb128 0x1
	.long	.LASF1077
	.value	0x316
	.uleb128 0x1
	.long	.LASF1078
	.value	0x317
	.uleb128 0x1
	.long	.LASF1079
	.value	0x318
	.uleb128 0x1
	.long	.LASF1080
	.value	0x319
	.uleb128 0x1
	.long	.LASF1081
	.value	0x31a
	.uleb128 0x1
	.long	.LASF1082
	.value	0x31b
	.uleb128 0x1
	.long	.LASF1083
	.value	0x31c
	.uleb128 0x1
	.long	.LASF1084
	.value	0x31d
	.uleb128 0x1
	.long	.LASF1085
	.value	0x31e
	.uleb128 0x1
	.long	.LASF1086
	.value	0x31f
	.uleb128 0x1
	.long	.LASF1087
	.value	0x320
	.uleb128 0x1
	.long	.LASF1088
	.value	0x321
	.uleb128 0x1
	.long	.LASF1089
	.value	0x322
	.uleb128 0x1
	.long	.LASF1090
	.value	0x323
	.uleb128 0x1
	.long	.LASF1091
	.value	0x324
	.uleb128 0x1
	.long	.LASF1092
	.value	0x325
	.uleb128 0x1
	.long	.LASF1093
	.value	0x326
	.uleb128 0x1
	.long	.LASF1094
	.value	0x327
	.uleb128 0x1
	.long	.LASF1095
	.value	0x328
	.uleb128 0x1
	.long	.LASF1096
	.value	0x329
	.uleb128 0x1
	.long	.LASF1097
	.value	0x32a
	.uleb128 0x1
	.long	.LASF1098
	.value	0x32b
	.uleb128 0x1
	.long	.LASF1099
	.value	0x32c
	.uleb128 0x1
	.long	.LASF1100
	.value	0x32d
	.uleb128 0x1
	.long	.LASF1101
	.value	0x32e
	.uleb128 0x1
	.long	.LASF1102
	.value	0x32f
	.uleb128 0x1
	.long	.LASF1103
	.value	0x330
	.uleb128 0x1
	.long	.LASF1104
	.value	0x331
	.uleb128 0x1
	.long	.LASF1105
	.value	0x332
	.uleb128 0x1
	.long	.LASF1106
	.value	0x333
	.uleb128 0x1
	.long	.LASF1107
	.value	0x334
	.uleb128 0x1
	.long	.LASF1108
	.value	0x335
	.uleb128 0x1
	.long	.LASF1109
	.value	0x336
	.uleb128 0x1
	.long	.LASF1110
	.value	0x337
	.uleb128 0x1
	.long	.LASF1111
	.value	0x338
	.uleb128 0x1
	.long	.LASF1112
	.value	0x339
	.uleb128 0x1
	.long	.LASF1113
	.value	0x33a
	.uleb128 0x1
	.long	.LASF1114
	.value	0x33b
	.uleb128 0x1
	.long	.LASF1115
	.value	0x33c
	.uleb128 0x1
	.long	.LASF1116
	.value	0x33d
	.uleb128 0x1
	.long	.LASF1117
	.value	0x33e
	.uleb128 0x1
	.long	.LASF1118
	.value	0x33f
	.uleb128 0x1
	.long	.LASF1119
	.value	0x340
	.uleb128 0x1
	.long	.LASF1120
	.value	0x341
	.uleb128 0x1
	.long	.LASF1121
	.value	0x342
	.uleb128 0x1
	.long	.LASF1122
	.value	0x343
	.uleb128 0x1
	.long	.LASF1123
	.value	0x344
	.uleb128 0x1
	.long	.LASF1124
	.value	0x345
	.uleb128 0x1
	.long	.LASF1125
	.value	0x346
	.uleb128 0x1
	.long	.LASF1126
	.value	0x347
	.uleb128 0x1
	.long	.LASF1127
	.value	0x348
	.uleb128 0x1
	.long	.LASF1128
	.value	0x349
	.uleb128 0x1
	.long	.LASF1129
	.value	0x34a
	.uleb128 0x1
	.long	.LASF1130
	.value	0x34b
	.uleb128 0x1
	.long	.LASF1131
	.value	0x34c
	.uleb128 0x1
	.long	.LASF1132
	.value	0x34d
	.uleb128 0x1
	.long	.LASF1133
	.value	0x34e
	.uleb128 0x1
	.long	.LASF1134
	.value	0x34f
	.uleb128 0x1
	.long	.LASF1135
	.value	0x350
	.uleb128 0x1
	.long	.LASF1136
	.value	0x351
	.uleb128 0x1
	.long	.LASF1137
	.value	0x352
	.uleb128 0x1
	.long	.LASF1138
	.value	0x353
	.uleb128 0x1
	.long	.LASF1139
	.value	0x354
	.uleb128 0x1
	.long	.LASF1140
	.value	0x355
	.uleb128 0x1
	.long	.LASF1141
	.value	0x356
	.uleb128 0x1
	.long	.LASF1142
	.value	0x357
	.uleb128 0x1
	.long	.LASF1143
	.value	0x358
	.uleb128 0x1
	.long	.LASF1144
	.value	0x359
	.uleb128 0x1
	.long	.LASF1145
	.value	0x35a
	.uleb128 0x1
	.long	.LASF1146
	.value	0x35b
	.uleb128 0x1
	.long	.LASF1147
	.value	0x35c
	.uleb128 0x1
	.long	.LASF1148
	.value	0x35d
	.uleb128 0x1
	.long	.LASF1149
	.value	0x35e
	.uleb128 0x1
	.long	.LASF1150
	.value	0x35f
	.uleb128 0x1
	.long	.LASF1151
	.value	0x360
	.uleb128 0x1
	.long	.LASF1152
	.value	0x361
	.uleb128 0x1
	.long	.LASF1153
	.value	0x362
	.uleb128 0x1
	.long	.LASF1154
	.value	0x363
	.uleb128 0x1
	.long	.LASF1155
	.value	0x364
	.uleb128 0x1
	.long	.LASF1156
	.value	0x365
	.uleb128 0x1
	.long	.LASF1157
	.value	0x366
	.uleb128 0x1
	.long	.LASF1158
	.value	0x367
	.uleb128 0x1
	.long	.LASF1159
	.value	0x368
	.uleb128 0x1
	.long	.LASF1160
	.value	0x369
	.uleb128 0x1
	.long	.LASF1161
	.value	0x36a
	.uleb128 0x1
	.long	.LASF1162
	.value	0x36b
	.uleb128 0x1
	.long	.LASF1163
	.value	0x36c
	.uleb128 0x1
	.long	.LASF1164
	.value	0x36d
	.uleb128 0x1
	.long	.LASF1165
	.value	0x36e
	.uleb128 0x1
	.long	.LASF1166
	.value	0x36f
	.uleb128 0x1
	.long	.LASF1167
	.value	0x370
	.uleb128 0x1
	.long	.LASF1168
	.value	0x371
	.uleb128 0x1
	.long	.LASF1169
	.value	0x372
	.uleb128 0x1
	.long	.LASF1170
	.value	0x373
	.uleb128 0x1
	.long	.LASF1171
	.value	0x374
	.uleb128 0x1
	.long	.LASF1172
	.value	0x375
	.uleb128 0x1
	.long	.LASF1173
	.value	0x376
	.uleb128 0x1
	.long	.LASF1174
	.value	0x377
	.uleb128 0x1
	.long	.LASF1175
	.value	0x378
	.uleb128 0x1
	.long	.LASF1176
	.value	0x379
	.uleb128 0x1
	.long	.LASF1177
	.value	0x37a
	.uleb128 0x1
	.long	.LASF1178
	.value	0x37b
	.uleb128 0x1
	.long	.LASF1179
	.value	0x37c
	.uleb128 0x1
	.long	.LASF1180
	.value	0x37d
	.uleb128 0x1
	.long	.LASF1181
	.value	0x37e
	.uleb128 0x1
	.long	.LASF1182
	.value	0x37f
	.uleb128 0x1
	.long	.LASF1183
	.value	0x380
	.uleb128 0x1
	.long	.LASF1184
	.value	0x381
	.uleb128 0x1
	.long	.LASF1185
	.value	0x382
	.uleb128 0x1
	.long	.LASF1186
	.value	0x383
	.uleb128 0x1
	.long	.LASF1187
	.value	0x384
	.uleb128 0x1
	.long	.LASF1188
	.value	0x385
	.uleb128 0x1
	.long	.LASF1189
	.value	0x386
	.uleb128 0x1
	.long	.LASF1190
	.value	0x387
	.uleb128 0x1
	.long	.LASF1191
	.value	0x388
	.uleb128 0x1
	.long	.LASF1192
	.value	0x389
	.uleb128 0x1
	.long	.LASF1193
	.value	0x38a
	.uleb128 0x1
	.long	.LASF1194
	.value	0x38b
	.uleb128 0x1
	.long	.LASF1195
	.value	0x38c
	.uleb128 0x1
	.long	.LASF1196
	.value	0x38d
	.uleb128 0x1
	.long	.LASF1197
	.value	0x38e
	.uleb128 0x1
	.long	.LASF1198
	.value	0x38f
	.uleb128 0x1
	.long	.LASF1199
	.value	0x390
	.uleb128 0x1
	.long	.LASF1200
	.value	0x391
	.uleb128 0x1
	.long	.LASF1201
	.value	0x392
	.uleb128 0x1
	.long	.LASF1202
	.value	0x393
	.uleb128 0x1
	.long	.LASF1203
	.value	0x394
	.uleb128 0x1
	.long	.LASF1204
	.value	0x395
	.uleb128 0x1
	.long	.LASF1205
	.value	0x396
	.uleb128 0x1
	.long	.LASF1206
	.value	0x397
	.uleb128 0x1
	.long	.LASF1207
	.value	0x398
	.uleb128 0x1
	.long	.LASF1208
	.value	0x399
	.uleb128 0x1
	.long	.LASF1209
	.value	0x39a
	.uleb128 0x1
	.long	.LASF1210
	.value	0x39b
	.uleb128 0x1
	.long	.LASF1211
	.value	0x39c
	.uleb128 0x1
	.long	.LASF1212
	.value	0x39d
	.uleb128 0x1
	.long	.LASF1213
	.value	0x39e
	.uleb128 0x1
	.long	.LASF1214
	.value	0x39f
	.uleb128 0x1
	.long	.LASF1215
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF1216
	.value	0x3a1
	.uleb128 0x1
	.long	.LASF1217
	.value	0x3a2
	.uleb128 0x1
	.long	.LASF1218
	.value	0x3a3
	.uleb128 0x1
	.long	.LASF1219
	.value	0x3a4
	.uleb128 0x1
	.long	.LASF1220
	.value	0x3a5
	.uleb128 0x1
	.long	.LASF1221
	.value	0x3a6
	.uleb128 0x1
	.long	.LASF1222
	.value	0x3a7
	.uleb128 0x1
	.long	.LASF1223
	.value	0x3a8
	.uleb128 0x1
	.long	.LASF1224
	.value	0x3a9
	.uleb128 0x1
	.long	.LASF1225
	.value	0x3aa
	.uleb128 0x1
	.long	.LASF1226
	.value	0x3ab
	.uleb128 0x1
	.long	.LASF1227
	.value	0x3ac
	.uleb128 0x1
	.long	.LASF1228
	.value	0x3ad
	.uleb128 0x1
	.long	.LASF1229
	.value	0x3ae
	.uleb128 0x1
	.long	.LASF1230
	.value	0x3af
	.uleb128 0x1
	.long	.LASF1231
	.value	0x3b0
	.uleb128 0x1
	.long	.LASF1232
	.value	0x3b1
	.uleb128 0x1
	.long	.LASF1233
	.value	0x3b2
	.uleb128 0x1
	.long	.LASF1234
	.value	0x3b3
	.uleb128 0x1
	.long	.LASF1235
	.value	0x3b4
	.uleb128 0x1
	.long	.LASF1236
	.value	0x3b5
	.uleb128 0x1
	.long	.LASF1237
	.value	0x3b6
	.uleb128 0x1
	.long	.LASF1238
	.value	0x3b7
	.uleb128 0x1
	.long	.LASF1239
	.value	0x3b8
	.uleb128 0x1
	.long	.LASF1240
	.value	0x3b9
	.uleb128 0x1
	.long	.LASF1241
	.value	0x3ba
	.uleb128 0x1
	.long	.LASF1242
	.value	0x3bb
	.uleb128 0x1
	.long	.LASF1243
	.value	0x3bc
	.uleb128 0x1
	.long	.LASF1244
	.value	0x3bd
	.uleb128 0x1
	.long	.LASF1245
	.value	0x3be
	.uleb128 0x1
	.long	.LASF1246
	.value	0x3bf
	.uleb128 0x1
	.long	.LASF1247
	.value	0x3c0
	.uleb128 0x1
	.long	.LASF1248
	.value	0x3c1
	.uleb128 0x1
	.long	.LASF1249
	.value	0x3c2
	.uleb128 0x1
	.long	.LASF1250
	.value	0x3c3
	.uleb128 0x1
	.long	.LASF1251
	.value	0x3c4
	.uleb128 0x1
	.long	.LASF1252
	.value	0x3c5
	.uleb128 0x1
	.long	.LASF1253
	.value	0x3c6
	.uleb128 0x1
	.long	.LASF1254
	.value	0x3c7
	.byte	0
	.uleb128 0x1f
	.byte	0x7
	.byte	0x4
	.long	0x9a
	.byte	0xd
	.value	0x48b
	.byte	0xe
	.long	0x25c1
	.uleb128 0x2
	.long	.LASF1255
	.byte	0
	.uleb128 0x2
	.long	.LASF1256
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1257
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1258
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1259
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1260
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1261
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1262
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1263
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1264
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1265
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1266
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1267
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1268
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1269
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1270
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1271
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1272
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1273
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1274
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1275
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1276
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1277
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1278
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1279
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1280
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1281
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1282
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1283
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1284
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1285
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1286
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1287
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1288
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1289
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1290
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1291
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1292
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1293
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1294
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1295
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1296
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1297
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1298
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1299
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1300
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1301
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1302
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1303
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1304
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1305
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1306
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1307
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1308
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1309
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1310
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1311
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1312
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1313
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1314
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1315
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1316
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1317
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1318
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1319
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1320
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1321
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1322
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1323
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1324
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1325
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1326
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1327
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1328
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1329
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1330
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1331
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1332
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1333
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1334
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1335
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1336
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1337
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1338
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1339
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1340
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1341
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1342
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1343
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1344
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1345
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1346
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1347
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1348
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1349
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1350
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1351
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1352
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1353
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1354
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1355
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1356
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1357
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1358
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1359
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1360
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1361
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1362
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1363
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1364
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF1365
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF1366
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF1367
	.byte	0x70
	.uleb128 0x2
	.long	.LASF1368
	.byte	0x71
	.uleb128 0x2
	.long	.LASF1369
	.byte	0x72
	.uleb128 0x2
	.long	.LASF1370
	.byte	0x73
	.uleb128 0x2
	.long	.LASF1371
	.byte	0x74
	.uleb128 0x2
	.long	.LASF1372
	.byte	0x75
	.uleb128 0x2
	.long	.LASF1373
	.byte	0x76
	.uleb128 0x2
	.long	.LASF1374
	.byte	0x77
	.uleb128 0x2
	.long	.LASF1375
	.byte	0x78
	.uleb128 0x2
	.long	.LASF1376
	.byte	0x79
	.uleb128 0x2
	.long	.LASF1377
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF1378
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF1379
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF1380
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF1381
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF1382
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF1383
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1384
	.byte	0x81
	.uleb128 0x2
	.long	.LASF1385
	.byte	0x82
	.uleb128 0x2
	.long	.LASF1386
	.byte	0x83
	.uleb128 0x2
	.long	.LASF1387
	.byte	0x84
	.uleb128 0x2
	.long	.LASF1388
	.byte	0x85
	.uleb128 0x2
	.long	.LASF1389
	.byte	0x86
	.uleb128 0x2
	.long	.LASF1390
	.byte	0x87
	.uleb128 0x2
	.long	.LASF1391
	.byte	0x88
	.uleb128 0x2
	.long	.LASF1392
	.byte	0x89
	.byte	0
	.uleb128 0x8
	.long	0x9a
	.byte	0xe
	.byte	0x3d
	.byte	0x1
	.long	0x25e0
	.uleb128 0x2
	.long	.LASF1393
	.byte	0
	.uleb128 0x2
	.long	.LASF1394
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1395
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	0x9a
	.byte	0xf
	.byte	0x34
	.byte	0x1
	.long	0x25f9
	.uleb128 0x2
	.long	.LASF1396
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1397
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.byte	0x68
	.byte	0xf
	.byte	0x3e
	.long	0x2650
	.uleb128 0x3
	.long	.LASF1398
	.byte	0xf
	.byte	0x41
	.byte	0xf
	.long	0x9a
	.byte	0
	.uleb128 0x3
	.long	.LASF1399
	.byte	0xf
	.byte	0x43
	.byte	0xb
	.long	0x436
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1400
	.byte	0xf
	.byte	0x45
	.byte	0xb
	.long	0x436
	.byte	0x5
	.uleb128 0x3
	.long	.LASF1401
	.byte	0xf
	.byte	0x46
	.byte	0xb
	.long	0x436
	.byte	0x6
	.uleb128 0x3
	.long	.LASF1402
	.byte	0xf
	.byte	0x47
	.byte	0xb
	.long	0x436
	.byte	0x7
	.uleb128 0x3
	.long	.LASF1403
	.byte	0xf
	.byte	0x48
	.byte	0xf
	.long	0x2650
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x499
	.long	0x2660
	.uleb128 0xe
	.long	0x43
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.long	.LASF1404
	.byte	0xf
	.byte	0x4a
	.byte	0x3
	.long	0x25f9
	.uleb128 0x14
	.byte	0x90
	.byte	0xf
	.byte	0x4f
	.long	0x275c
	.uleb128 0x17
	.string	"id"
	.byte	0x52
	.byte	0xb
	.long	0x7e
	.byte	0
	.uleb128 0x3
	.long	.LASF1405
	.byte	0xf
	.byte	0x55
	.byte	0xc
	.long	0xa8
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1406
	.byte	0xf
	.byte	0x58
	.byte	0xc
	.long	0xa8
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1407
	.byte	0xf
	.byte	0x5a
	.byte	0xc
	.long	0xa8
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1408
	.byte	0xf
	.byte	0x5d
	.byte	0xc
	.long	0xa8
	.byte	0xe
	.uleb128 0x3
	.long	.LASF1409
	.byte	0xf
	.byte	0x61
	.byte	0xc
	.long	0xa8
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1410
	.byte	0xf
	.byte	0x63
	.byte	0xc
	.long	0xa8
	.byte	0x12
	.uleb128 0x3
	.long	.LASF1411
	.byte	0xf
	.byte	0x65
	.byte	0xc
	.long	0xa8
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1412
	.byte	0xf
	.byte	0x67
	.byte	0xc
	.long	0xa8
	.byte	0x16
	.uleb128 0x3
	.long	.LASF1413
	.byte	0xf
	.byte	0x69
	.byte	0xc
	.long	0xa8
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1414
	.byte	0xf
	.byte	0x6a
	.byte	0xc
	.long	0xa8
	.byte	0x1a
	.uleb128 0x17
	.string	"map"
	.byte	0x6b
	.byte	0xc
	.long	0xa8
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1415
	.byte	0xf
	.byte	0x6c
	.byte	0xc
	.long	0xa8
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1416
	.byte	0xf
	.byte	0x6f
	.byte	0xc
	.long	0xa8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1417
	.byte	0xf
	.byte	0x70
	.byte	0xc
	.long	0xa8
	.byte	0x22
	.uleb128 0x3
	.long	.LASF1418
	.byte	0xf
	.byte	0x78
	.byte	0xc
	.long	0xa8
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1419
	.byte	0xf
	.byte	0x7a
	.byte	0xc
	.long	0xa8
	.byte	0x26
	.uleb128 0x3
	.long	.LASF1420
	.byte	0xf
	.byte	0x7d
	.byte	0x11
	.long	0x2660
	.byte	0x28
	.byte	0
	.uleb128 0x5
	.long	.LASF1421
	.byte	0xf
	.byte	0x7f
	.byte	0x3
	.long	0x266c
	.uleb128 0x15
	.long	.LASF1422
	.byte	0x10
	.byte	0x1d
	.byte	0xd
	.long	0x77
	.uleb128 0x15
	.long	.LASF1423
	.byte	0x10
	.byte	0x1e
	.byte	0x10
	.long	0x3b4
	.uleb128 0x15
	.long	.LASF1424
	.byte	0x11
	.byte	0x5c
	.byte	0x11
	.long	0x42a
	.uleb128 0xc
	.long	0x4a
	.long	0x279d
	.uleb128 0x20
	.long	0x43
	.value	0x3ff
	.byte	0
	.uleb128 0x18
	.long	.LASF1425
	.value	0x112
	.byte	0x14
	.long	0x27a9
	.uleb128 0x7
	.long	0x275c
	.uleb128 0x18
	.long	.LASF1426
	.value	0x115
	.byte	0x15
	.long	0x27ba
	.uleb128 0x7
	.long	0x2660
	.uleb128 0xd
	.long	.LASF1427
	.byte	0x4c
	.byte	0x5
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	DOOMPORT
	.uleb128 0xd
	.long	.LASF1428
	.byte	0x4e
	.byte	0x7
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	sendsocket
	.uleb128 0xd
	.long	.LASF1429
	.byte	0x4f
	.byte	0x7
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	insocket
	.uleb128 0xc
	.long	0x363
	.long	0x280e
	.uleb128 0xe
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.long	.LASF1430
	.byte	0x51
	.byte	0x14
	.long	0x27fe
	.uleb128 0x9
	.byte	0x3
	.quad	sendaddress
	.uleb128 0x21
	.uleb128 0xd
	.long	.LASF1431
	.byte	0x53
	.byte	0x8
	.long	0x2839
	.uleb128 0x9
	.byte	0x3
	.quad	netget
	.uleb128 0x7
	.long	0x2823
	.uleb128 0xd
	.long	.LASF1432
	.byte	0x54
	.byte	0x8
	.long	0x2839
	.uleb128 0x9
	.byte	0x3
	.quad	netsend
	.uleb128 0x9
	.long	.LASF1433
	.byte	0x12
	.byte	0x2a
	.byte	0xc
	.long	0x77
	.long	0x286f
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x43
	.uleb128 0x16
	.byte	0
	.uleb128 0x9
	.long	.LASF1434
	.byte	0x13
	.byte	0x22
	.byte	0x12
	.long	0x1c2
	.long	0x2885
	.uleb128 0x4
	.long	0x104
	.byte	0
	.uleb128 0x9
	.long	.LASF1435
	.byte	0x14
	.byte	0x69
	.byte	0xc
	.long	0x77
	.long	0x289b
	.uleb128 0x4
	.long	0x104
	.byte	0
	.uleb128 0x9
	.long	.LASF1436
	.byte	0x10
	.byte	0x22
	.byte	0x5
	.long	0x77
	.long	0x28b1
	.uleb128 0x4
	.long	0xda
	.byte	0
	.uleb128 0x10
	.long	.LASF1437
	.byte	0x14
	.value	0x2a0
	.byte	0xe
	.long	0xc7
	.long	0x28c8
	.uleb128 0x4
	.long	0x6b
	.byte	0
	.uleb128 0x9
	.long	.LASF1438
	.byte	0x9
	.byte	0x8e
	.byte	0x18
	.long	0x28de
	.long	0x28de
	.uleb128 0x4
	.long	0x104
	.byte	0
	.uleb128 0x7
	.long	0x3b9
	.uleb128 0x10
	.long	.LASF1439
	.byte	0x15
	.value	0x38f
	.byte	0xc
	.long	0x77
	.long	0x28ff
	.uleb128 0x4
	.long	0xda
	.uleb128 0x4
	.long	0x6b
	.byte	0
	.uleb128 0x10
	.long	.LASF1440
	.byte	0x16
	.value	0x16b
	.byte	0xc
	.long	0x77
	.long	0x2917
	.uleb128 0x4
	.long	0x104
	.uleb128 0x16
	.byte	0
	.uleb128 0x9
	.long	.LASF1441
	.byte	0x17
	.byte	0xa3
	.byte	0x10
	.long	0xeb
	.long	0x2946
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0xc9
	.uleb128 0x4
	.long	0x6b
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x40c
	.uleb128 0x4
	.long	0x294b
	.byte	0
	.uleb128 0x7
	.long	0x109
	.uleb128 0x13
	.long	0x2946
	.uleb128 0x9
	.long	.LASF1442
	.byte	0x17
	.byte	0x98
	.byte	0x10
	.long	0xeb
	.long	0x297f
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0xfe
	.uleb128 0x4
	.long	0x6b
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x297f
	.uleb128 0x4
	.long	0x109
	.byte	0
	.uleb128 0x7
	.long	0x195
	.uleb128 0x9
	.long	.LASF1443
	.byte	0x17
	.byte	0x70
	.byte	0xc
	.long	0x77
	.long	0x29a4
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x297f
	.uleb128 0x4
	.long	0x109
	.byte	0
	.uleb128 0x9
	.long	.LASF1444
	.byte	0x18
	.byte	0x3d
	.byte	0xe
	.long	0xc7
	.long	0x29c4
	.uleb128 0x4
	.long	0xc7
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x6b
	.byte	0
	.uleb128 0x22
	.long	.LASF1463
	.byte	0x1a
	.byte	0x59
	.byte	0x6
	.long	0x29d7
	.uleb128 0x4
	.long	0xda
	.uleb128 0x16
	.byte	0
	.uleb128 0x10
	.long	.LASF1445
	.byte	0x18
	.value	0x1a3
	.byte	0xe
	.long	0xda
	.long	0x29ee
	.uleb128 0x4
	.long	0x77
	.byte	0
	.uleb128 0x23
	.long	.LASF1464
	.byte	0x1b
	.byte	0x25
	.byte	0xd
	.long	0x29fa
	.uleb128 0x7
	.long	0x77
	.uleb128 0x9
	.long	.LASF1446
	.byte	0x17
	.byte	0x66
	.byte	0xc
	.long	0x77
	.long	0x2a1f
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x77
	.byte	0
	.uleb128 0x24
	.long	.LASF1465
	.byte	0x1
	.value	0x14f
	.byte	0x6
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.long	.LASF1451
	.byte	0xf4
	.byte	0x6
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a8c
	.uleb128 0xb
	.long	.LASF1448
	.byte	0xf6
	.byte	0xe
	.long	0x42a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xa
	.string	"i"
	.byte	0xf7
	.byte	0xb
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.string	"p"
	.byte	0xf8
	.byte	0xb
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xb
	.long	.LASF1449
	.byte	0xf9
	.byte	0x15
	.long	0x28de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.long	.LASF1466
	.byte	0x1
	.byte	0xde
	.byte	0x5
	.long	0x77
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ada
	.uleb128 0xb
	.long	.LASF1450
	.byte	0xe0
	.byte	0xb
	.long	0x278c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0xb
	.long	.LASF1449
	.byte	0xe1
	.byte	0x15
	.long	0x28de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0xa
	.string	"v"
	.byte	0xe2
	.byte	0xb
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1068
	.byte	0
	.uleb128 0x11
	.long	.LASF1452
	.byte	0xa1
	.byte	0x6
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b65
	.uleb128 0xa
	.string	"i"
	.byte	0xa3
	.byte	0xb
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0xa
	.string	"c"
	.byte	0xa4
	.byte	0xb
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0xb
	.long	.LASF1453
	.byte	0xa5
	.byte	0x18
	.long	0x363
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0xb
	.long	.LASF1454
	.byte	0xa6
	.byte	0xb
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0xa
	.string	"sw"
	.byte	0xa7
	.byte	0x11
	.long	0x2660
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x26
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0xb
	.long	.LASF1455
	.byte	0xb5
	.byte	0xd
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	first.0
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF1456
	.byte	0x7f
	.byte	0x6
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b9e
	.uleb128 0xa
	.string	"c"
	.byte	0x81
	.byte	0xa
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0xa
	.string	"sw"
	.byte	0x82
	.byte	0x10
	.long	0x2660
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x11
	.long	.LASF1457
	.byte	0x6a
	.byte	0x1
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bf4
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.byte	0x6b
	.byte	0x7
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.long	.LASF1458
	.byte	0x1
	.byte	0x6c
	.byte	0x7
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xa
	.string	"v"
	.byte	0x6e
	.byte	0xb
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xb
	.long	.LASF1459
	.byte	0x6f
	.byte	0x18
	.long	0x363
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x29
	.long	.LASF1460
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.long	0x77
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.string	"s"
	.byte	0x5c
	.byte	0x9
	.long	0x77
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x16
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 15
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
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 17
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
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
.LASF922:
	.string	"S_BSPI_RUN1"
.LASF923:
	.string	"S_BSPI_RUN2"
.LASF924:
	.string	"S_BSPI_RUN3"
.LASF925:
	.string	"S_BSPI_RUN4"
.LASF926:
	.string	"S_BSPI_RUN5"
.LASF927:
	.string	"S_BSPI_RUN6"
.LASF928:
	.string	"S_BSPI_RUN7"
.LASF929:
	.string	"S_BSPI_RUN8"
.LASF930:
	.string	"S_BSPI_RUN9"
.LASF215:
	.string	"SPR_YSKU"
.LASF1203:
	.string	"S_TECHPILLAR"
.LASF577:
	.string	"S_FIRE10"
.LASF578:
	.string	"S_FIRE11"
.LASF579:
	.string	"S_FIRE12"
.LASF580:
	.string	"S_FIRE13"
.LASF581:
	.string	"S_FIRE14"
.LASF582:
	.string	"S_FIRE15"
.LASF583:
	.string	"S_FIRE16"
.LASF584:
	.string	"S_FIRE17"
.LASF585:
	.string	"S_FIRE18"
.LASF586:
	.string	"S_FIRE19"
.LASF1389:
	.string	"MT_MISC84"
.LASF1322:
	.string	"MT_MISC20"
.LASF1145:
	.string	"S_MEGA2"
.LASF1146:
	.string	"S_MEGA3"
.LASF1147:
	.string	"S_MEGA4"
.LASF1326:
	.string	"MT_MISC24"
.LASF1327:
	.string	"MT_MISC25"
.LASF1329:
	.string	"MT_MISC26"
.LASF1330:
	.string	"MT_MISC27"
.LASF1331:
	.string	"MT_MISC28"
.LASF1334:
	.string	"MT_MISC29"
.LASF776:
	.string	"S_SARG_PAIN2"
.LASF123:
	.string	"wp_pistol"
.LASF256:
	.string	"SPR_COL1"
.LASF257:
	.string	"SPR_COL2"
.LASF258:
	.string	"SPR_COL3"
.LASF259:
	.string	"SPR_COL4"
.LASF268:
	.string	"SPR_COL5"
.LASF262:
	.string	"SPR_COL6"
.LASF1455:
	.string	"first"
.LASF49:
	.string	"IPPROTO_RSVP"
.LASF587:
	.string	"S_FIRE20"
.LASF588:
	.string	"S_FIRE21"
.LASF589:
	.string	"S_FIRE22"
.LASF590:
	.string	"S_FIRE23"
.LASF591:
	.string	"S_FIRE24"
.LASF242:
	.string	"SPR_COLU"
.LASF593:
	.string	"S_FIRE26"
.LASF594:
	.string	"S_FIRE27"
.LASF595:
	.string	"S_FIRE28"
.LASF596:
	.string	"S_FIRE29"
.LASF1335:
	.string	"MT_MISC30"
.LASF1336:
	.string	"MT_MISC31"
.LASF1337:
	.string	"MT_MISC32"
.LASF1338:
	.string	"MT_MISC33"
.LASF938:
	.string	"S_BSPI_PAIN"
.LASF1340:
	.string	"MT_MISC35"
.LASF410:
	.string	"S_BFGEXP"
.LASF46:
	.string	"IPPROTO_TP"
.LASF1343:
	.string	"MT_MISC38"
.LASF1344:
	.string	"MT_MISC39"
.LASF166:
	.string	"SPR_BAL1"
.LASF940:
	.string	"S_BSPI_DIE1"
.LASF1395:
	.string	"NUMPSPRITES"
.LASF945:
	.string	"S_BSPI_DIE6"
.LASF836:
	.string	"S_BOSS_RAISE1"
.LASF837:
	.string	"S_BOSS_RAISE2"
.LASF1269:
	.string	"MT_HEAD"
.LASF838:
	.string	"S_BOSS_RAISE3"
.LASF597:
	.string	"S_FIRE30"
.LASF742:
	.string	"S_TROO_PAIN"
.LASF1031:
	.string	"S_SSWV_DIE1"
.LASF841:
	.string	"S_BOSS_RAISE6"
.LASF1033:
	.string	"S_SSWV_DIE3"
.LASF1034:
	.string	"S_SSWV_DIE4"
.LASF1035:
	.string	"S_SSWV_DIE5"
.LASF210:
	.string	"SPR_BKEY"
.LASF853:
	.string	"S_BOS2_ATK1"
.LASF854:
	.string	"S_BOS2_ATK2"
.LASF855:
	.string	"S_BOS2_ATK3"
.LASF244:
	.string	"SPR_GOR1"
.LASF251:
	.string	"SPR_GOR2"
.LASF252:
	.string	"SPR_GOR3"
.LASF253:
	.string	"SPR_GOR4"
.LASF254:
	.string	"SPR_GOR5"
.LASF1347:
	.string	"MT_MISC42"
.LASF1348:
	.string	"MT_MISC43"
.LASF610:
	.string	"S_SKEL_RUN1"
.LASF611:
	.string	"S_SKEL_RUN2"
.LASF93:
	.string	"sockaddr_in"
.LASF28:
	.string	"sa_family_t"
.LASF614:
	.string	"S_SKEL_RUN5"
.LASF615:
	.string	"S_SKEL_RUN6"
.LASF616:
	.string	"S_SKEL_RUN7"
.LASF617:
	.string	"S_SKEL_RUN8"
.LASF24:
	.string	"SOCK_DCCP"
.LASF126:
	.string	"wp_missile"
.LASF1096:
	.string	"S_BEXP2"
.LASF1098:
	.string	"S_BEXP4"
.LASF791:
	.string	"S_HEAD_ATK1"
.LASF792:
	.string	"S_HEAD_ATK2"
.LASF793:
	.string	"S_HEAD_ATK3"
.LASF1045:
	.string	"S_SSWV_RAISE1"
.LASF1046:
	.string	"S_SSWV_RAISE2"
.LASF1047:
	.string	"S_SSWV_RAISE3"
.LASF1048:
	.string	"S_SSWV_RAISE4"
.LASF1049:
	.string	"S_SSWV_RAISE5"
.LASF1451:
	.string	"I_InitNetwork"
.LASF1264:
	.string	"MT_FATSHOT"
.LASF230:
	.string	"SPR_CELL"
.LASF231:
	.string	"SPR_CELP"
.LASF1211:
	.string	"S_HEARTCOL"
.LASF1128:
	.string	"S_MEDI"
.LASF1135:
	.string	"S_PINV"
.LASF1313:
	.string	"MT_INS"
.LASF1356:
	.string	"MT_MISC51"
.LASF1357:
	.string	"MT_MISC52"
.LASF1311:
	.string	"MT_INV"
.LASF1359:
	.string	"MT_MISC54"
.LASF1225:
	.string	"S_BTORCHSHRT"
.LASF346:
	.string	"S_MISSILEUP"
.LASF30:
	.string	"sa_data"
.LASF1363:
	.string	"MT_MISC58"
.LASF1364:
	.string	"MT_MISC59"
.LASF523:
	.string	"S_SPOS_RAISE1"
.LASF31:
	.string	"uint16_t"
.LASF44:
	.string	"IPPROTO_UDP"
.LASF97:
	.string	"sin_zero"
.LASF318:
	.string	"S_SGUNFLASH2"
.LASF865:
	.string	"S_BOS2_RAISE1"
.LASF866:
	.string	"S_BOS2_RAISE2"
.LASF867:
	.string	"S_BOS2_RAISE3"
.LASF868:
	.string	"S_BOS2_RAISE4"
.LASF66:
	.string	"in_port_t"
.LASF870:
	.string	"S_BOS2_RAISE6"
.LASF871:
	.string	"S_BOS2_RAISE7"
.LASF630:
	.string	"S_SKEL_PAIN"
.LASF978:
	.string	"S_CYBER_DIE1"
.LASF1117:
	.string	"S_RKEY"
.LASF299:
	.string	"S_PISTOLUP"
.LASF985:
	.string	"S_CYBER_DIE8"
.LASF80:
	.string	"IPPORT_RJE"
.LASF1365:
	.string	"MT_MISC60"
.LASF1366:
	.string	"MT_MISC61"
.LASF1367:
	.string	"MT_MISC62"
.LASF1368:
	.string	"MT_MISC63"
.LASF1369:
	.string	"MT_MISC64"
.LASF1370:
	.string	"MT_MISC65"
.LASF1371:
	.string	"MT_MISC66"
.LASF1372:
	.string	"MT_MISC67"
.LASF414:
	.string	"S_EXPLODE1"
.LASF415:
	.string	"S_EXPLODE2"
.LASF416:
	.string	"S_EXPLODE3"
.LASF1440:
	.string	"printf"
.LASF605:
	.string	"S_TRACEEXP1"
.LASF606:
	.string	"S_TRACEEXP2"
.LASF607:
	.string	"S_TRACEEXP3"
.LASF72:
	.string	"IPPORT_FTP"
.LASF993:
	.string	"S_PAIN_RUN5"
.LASF1095:
	.string	"S_BEXP"
.LASF994:
	.string	"S_PAIN_RUN6"
.LASF1212:
	.string	"S_HEARTCOL2"
.LASF90:
	.string	"IPPORT_ROUTESERVER"
.LASF1296:
	.string	"MT_TELEPORTMAN"
.LASF1375:
	.string	"MT_MISC70"
.LASF175:
	.string	"SPR_IFOG"
.LASF1377:
	.string	"MT_MISC72"
.LASF1378:
	.string	"MT_MISC73"
.LASF1379:
	.string	"MT_MISC74"
.LASF1380:
	.string	"MT_MISC75"
.LASF1381:
	.string	"MT_MISC76"
.LASF1218:
	.string	"S_GREENTORCH2"
.LASF1219:
	.string	"S_GREENTORCH3"
.LASF1220:
	.string	"S_GREENTORCH4"
.LASF1059:
	.string	"S_COMMKEEN9"
.LASF708:
	.string	"S_CPOS_PAIN2"
.LASF931:
	.string	"S_BSPI_RUN10"
.LASF932:
	.string	"S_BSPI_RUN11"
.LASF933:
	.string	"S_BSPI_RUN12"
.LASF1015:
	.string	"S_SSWV_RUN1"
.LASF1016:
	.string	"S_SSWV_RUN2"
.LASF1017:
	.string	"S_SSWV_RUN3"
.LASF1018:
	.string	"S_SSWV_RUN4"
.LASF1019:
	.string	"S_SSWV_RUN5"
.LASF1020:
	.string	"S_SSWV_RUN6"
.LASF98:
	.string	"hostent"
.LASF1022:
	.string	"S_SSWV_RUN8"
.LASF1200:
	.string	"S_SKULLCOL"
.LASF32:
	.string	"uint32_t"
.LASF1263:
	.string	"MT_FATSO"
.LASF744:
	.string	"S_TROO_DIE1"
.LASF745:
	.string	"S_TROO_DIE2"
.LASF746:
	.string	"S_TROO_DIE3"
.LASF747:
	.string	"S_TROO_DIE4"
.LASF748:
	.string	"S_TROO_DIE5"
.LASF1420:
	.string	"data"
.LASF77:
	.string	"IPPORT_WHOIS"
.LASF1125:
	.string	"S_YSKULL"
.LASF1126:
	.string	"S_YSKULL2"
.LASF228:
	.string	"SPR_ROCK"
.LASF1288:
	.string	"MT_ROCKET"
.LASF1386:
	.string	"MT_MISC81"
.LASF1387:
	.string	"MT_MISC82"
.LASF1388:
	.string	"MT_MISC83"
.LASF703:
	.string	"S_CPOS_ATK1"
.LASF704:
	.string	"S_CPOS_ATK2"
.LASF705:
	.string	"S_CPOS_ATK3"
.LASF706:
	.string	"S_CPOS_ATK4"
.LASF1255:
	.string	"MT_PLAYER"
.LASF240:
	.string	"SPR_SHOT"
.LASF432:
	.string	"S_IFOG2"
.LASF433:
	.string	"S_IFOG3"
.LASF434:
	.string	"S_IFOG4"
.LASF435:
	.string	"S_IFOG5"
.LASF169:
	.string	"SPR_PLSE"
.LASF161:
	.string	"SPR_PLSF"
.LASF160:
	.string	"SPR_PLSG"
.LASF828:
	.string	"S_BOSS_PAIN2"
.LASF528:
	.string	"S_VILE_STND"
.LASF29:
	.string	"sa_family"
.LASF1056:
	.string	"S_COMMKEEN6"
.LASF1057:
	.string	"S_COMMKEEN7"
.LASF1058:
	.string	"S_COMMKEEN8"
.LASF168:
	.string	"SPR_PLSS"
.LASF99:
	.string	"h_name"
.LASF75:
	.string	"IPPORT_TIMESERVER"
.LASF281:
	.string	"SPR_POB1"
.LASF282:
	.string	"SPR_POB2"
.LASF1129:
	.string	"S_SOUL"
.LASF1229:
	.string	"S_GTORCHSHRT"
.LASF1139:
	.string	"S_PSTR"
.LASF971:
	.string	"S_CYBER_ATK1"
.LASF972:
	.string	"S_CYBER_ATK2"
.LASF103:
	.string	"h_addr_list"
.LASF974:
	.string	"S_CYBER_ATK4"
.LASF975:
	.string	"S_CYBER_ATK5"
.LASF976:
	.string	"S_CYBER_ATK6"
.LASF1252:
	.string	"S_TECH2LAMP3"
.LASF1166:
	.string	"S_BFUG"
.LASF207:
	.string	"SPR_FCAN"
.LASF649:
	.string	"S_FATT_STND"
.LASF1086:
	.string	"S_BRAINEXPLODE1"
.LASF91:
	.string	"IPPORT_RESERVED"
.LASF1088:
	.string	"S_BRAINEXPLODE3"
.LASF1431:
	.string	"netget"
.LASF370:
	.string	"S_BFGUP"
.LASF212:
	.string	"SPR_YKEY"
.LASF757:
	.string	"S_TROO_RAISE1"
.LASF758:
	.string	"S_TROO_RAISE2"
.LASF759:
	.string	"S_TROO_RAISE3"
.LASF760:
	.string	"S_TROO_RAISE4"
.LASF761:
	.string	"S_TROO_RAISE5"
.LASF1170:
	.string	"S_PLAS"
.LASF1052:
	.string	"S_COMMKEEN2"
.LASF1053:
	.string	"S_COMMKEEN3"
.LASF1054:
	.string	"S_COMMKEEN4"
.LASF1055:
	.string	"S_COMMKEEN5"
.LASF436:
	.string	"S_PLAY"
.LASF1002:
	.string	"S_PAIN_DIE2"
.LASF1003:
	.string	"S_PAIN_DIE3"
.LASF1004:
	.string	"S_PAIN_DIE4"
.LASF1005:
	.string	"S_PAIN_DIE5"
.LASF1006:
	.string	"S_PAIN_DIE6"
.LASF1266:
	.string	"MT_TROOP"
.LASF557:
	.string	"S_VILE_PAIN2"
.LASF685:
	.string	"S_FATT_RAISE1"
.LASF127:
	.string	"wp_plasma"
.LASF687:
	.string	"S_FATT_RAISE3"
.LASF688:
	.string	"S_FATT_RAISE4"
.LASF689:
	.string	"S_FATT_RAISE5"
.LASF690:
	.string	"S_FATT_RAISE6"
.LASF691:
	.string	"S_FATT_RAISE7"
.LASF692:
	.string	"S_FATT_RAISE8"
.LASF401:
	.string	"S_ROCKET"
.LASF1287:
	.string	"MT_HEADSHOT"
.LASF36:
	.string	"s_addr"
.LASF954:
	.string	"S_ARACH_PLAZ"
.LASF1193:
	.string	"S_STALAGTITE"
.LASF795:
	.string	"S_HEAD_PAIN2"
.LASF796:
	.string	"S_HEAD_PAIN3"
.LASF107:
	.string	"byte"
.LASF120:
	.string	"it_redskull"
.LASF1294:
	.string	"MT_TFOG"
.LASF504:
	.string	"S_SPOS_ATK1"
.LASF505:
	.string	"S_SPOS_ATK2"
.LASF506:
	.string	"S_SPOS_ATK3"
.LASF441:
	.string	"S_PLAY_ATK1"
.LASF442:
	.string	"S_PLAY_ATK2"
.LASF79:
	.string	"IPPORT_TFTP"
.LASF195:
	.string	"SPR_APLS"
.LASF61:
	.string	"IPPROTO_MPLS"
.LASF102:
	.string	"h_length"
.LASF1222:
	.string	"S_REDTORCH2"
.LASF1223:
	.string	"S_REDTORCH3"
.LASF1224:
	.string	"S_REDTORCH4"
.LASF731:
	.string	"S_TROO_RUN1"
.LASF732:
	.string	"S_TROO_RUN2"
.LASF733:
	.string	"S_TROO_RUN3"
.LASF734:
	.string	"S_TROO_RUN4"
.LASF735:
	.string	"S_TROO_RUN5"
.LASF736:
	.string	"S_TROO_RUN6"
.LASF737:
	.string	"S_TROO_RUN7"
.LASF738:
	.string	"S_TROO_RUN8"
.LASF186:
	.string	"SPR_CPOS"
.LASF646:
	.string	"S_FATSHOTX1"
.LASF647:
	.string	"S_FATSHOTX2"
.LASF648:
	.string	"S_FATSHOTX3"
.LASF726:
	.string	"S_CPOS_RAISE5"
.LASF727:
	.string	"S_CPOS_RAISE6"
.LASF728:
	.string	"S_CPOS_RAISE7"
.LASF1417:
	.string	"numplayers"
.LASF122:
	.string	"wp_fist"
.LASF216:
	.string	"SPR_STIM"
.LASF762:
	.string	"S_SARG_STND"
.LASF40:
	.string	"IPPROTO_IPIP"
.LASF987:
	.string	"S_CYBER_DIE10"
.LASF94:
	.string	"sin_family"
.LASF167:
	.string	"SPR_BAL2"
.LASF189:
	.string	"SPR_BAL7"
.LASF1181:
	.string	"S_HEADSONSTICK"
.LASF638:
	.string	"S_SKEL_RAISE1"
.LASF154:
	.string	"SPR_SHT2"
.LASF292:
	.string	"S_PUNCH1"
.LASF293:
	.string	"S_PUNCH2"
.LASF294:
	.string	"S_PUNCH3"
.LASF295:
	.string	"S_PUNCH4"
.LASF296:
	.string	"S_PUNCH5"
.LASF655:
	.string	"S_FATT_RUN5"
.LASF291:
	.string	"S_PUNCHUP"
.LASF908:
	.string	"S_SPID_DIE1"
.LASF659:
	.string	"S_FATT_RUN9"
.LASF910:
	.string	"S_SPID_DIE3"
.LASF911:
	.string	"S_SPID_DIE4"
.LASF153:
	.string	"SPR_SHTF"
.LASF149:
	.string	"SPR_SHTG"
.LASF430:
	.string	"S_IFOG01"
.LASF431:
	.string	"S_IFOG02"
.LASF916:
	.string	"S_SPID_DIE9"
.LASF21:
	.string	"SOCK_RAW"
.LASF1158:
	.string	"S_AMMO"
.LASF85:
	.string	"IPPORT_LOGINSERVER"
.LASF137:
	.string	"NUMAMMO"
.LASF81:
	.string	"IPPORT_FINGER"
.LASF989:
	.string	"S_PAIN_RUN1"
.LASF990:
	.string	"S_PAIN_RUN2"
.LASF991:
	.string	"S_PAIN_RUN3"
.LASF992:
	.string	"S_PAIN_RUN4"
.LASF275:
	.string	"SPR_HDB1"
.LASF276:
	.string	"SPR_HDB2"
.LASF277:
	.string	"SPR_HDB3"
.LASF278:
	.string	"SPR_HDB4"
.LASF279:
	.string	"SPR_HDB5"
.LASF280:
	.string	"SPR_HDB6"
.LASF1256:
	.string	"MT_POSSESSED"
.LASF324:
	.string	"S_DSGUN3"
.LASF325:
	.string	"S_DSGUN4"
.LASF344:
	.string	"S_MISSILE"
.LASF319:
	.string	"S_DSGUN"
.LASF1172:
	.string	"S_SHOT2"
.LASF1239:
	.string	"S_HANGTLOOKDN"
.LASF1418:
	.string	"angleoffset"
.LASF391:
	.string	"S_RBALLX1"
.LASF716:
	.string	"S_CPOS_XDIE1"
.LASF12:
	.string	"__uint16_t"
.LASF1403:
	.string	"cmds"
.LASF95:
	.string	"sin_port"
.LASF236:
	.string	"SPR_MGUN"
.LASF1268:
	.string	"MT_SHADOWS"
.LASF619:
	.string	"S_SKEL_RUN10"
.LASF620:
	.string	"S_SKEL_RUN11"
.LASF621:
	.string	"S_SKEL_RUN12"
.LASF287:
	.string	"S_NULL"
.LASF829:
	.string	"S_BOSS_DIE1"
.LASF830:
	.string	"S_BOSS_DIE2"
.LASF831:
	.string	"S_BOSS_DIE3"
.LASF832:
	.string	"S_BOSS_DIE4"
.LASF833:
	.string	"S_BOSS_DIE5"
.LASF834:
	.string	"S_BOSS_DIE6"
.LASF835:
	.string	"S_BOSS_DIE7"
.LASF999:
	.string	"S_PAIN_PAIN"
.LASF368:
	.string	"S_BFG"
.LASF1014:
	.string	"S_SSWV_STND2"
.LASF237:
	.string	"SPR_CSAW"
.LASF1149:
	.string	"S_PMAP"
.LASF1042:
	.string	"S_SSWV_XDIE7"
.LASF1155:
	.string	"S_PVIS"
.LASF369:
	.string	"S_BFGDOWN"
.LASF1438:
	.string	"gethostbyname"
.LASF1280:
	.string	"MT_BOSSBRAIN"
.LASF27:
	.string	"SOCK_NONBLOCK"
.LASF183:
	.string	"SPR_SKEL"
.LASF364:
	.string	"S_PLASMA1"
.LASF365:
	.string	"S_PLASMA2"
.LASF22:
	.string	"SOCK_RDM"
.LASF1163:
	.string	"S_SHEL"
.LASF1437:
	.string	"malloc"
.LASF920:
	.string	"S_BSPI_STND2"
.LASF6:
	.string	"unsigned char"
.LASF181:
	.string	"SPR_FATB"
.LASF286:
	.string	"NUMSPRITES"
.LASF65:
	.string	"IPPROTO_MAX"
.LASF403:
	.string	"S_BFGSHOT2"
.LASF185:
	.string	"SPR_FATT"
.LASF20:
	.string	"SOCK_DGRAM"
.LASF1130:
	.string	"S_SOUL2"
.LASF1131:
	.string	"S_SOUL3"
.LASF1132:
	.string	"S_SOUL4"
.LASF1133:
	.string	"S_SOUL5"
.LASF1134:
	.string	"S_SOUL6"
.LASF890:
	.string	"S_SPID_RUN1"
.LASF891:
	.string	"S_SPID_RUN2"
.LASF892:
	.string	"S_SPID_RUN3"
.LASF893:
	.string	"S_SPID_RUN4"
.LASF269:
	.string	"SPR_TBLU"
.LASF895:
	.string	"S_SPID_RUN6"
.LASF896:
	.string	"S_SPID_RUN7"
.LASF897:
	.string	"S_SPID_RUN8"
.LASF146:
	.string	"float"
.LASF1097:
	.string	"S_BEXP3"
.LASF57:
	.string	"IPPROTO_COMP"
.LASF1186:
	.string	"S_DEADSTICK"
.LASF1297:
	.string	"MT_EXTRABFG"
.LASF476:
	.string	"S_POSS_DIE1"
.LASF477:
	.string	"S_POSS_DIE2"
.LASF478:
	.string	"S_POSS_DIE3"
.LASF479:
	.string	"S_POSS_DIE4"
.LASF480:
	.string	"S_POSS_DIE5"
.LASF306:
	.string	"S_SGUNDOWN"
.LASF156:
	.string	"SPR_CHGF"
.LASF155:
	.string	"SPR_CHGG"
.LASF957:
	.string	"S_ARACH_PLEX2"
.LASF958:
	.string	"S_ARACH_PLEX3"
.LASF959:
	.string	"S_ARACH_PLEX4"
.LASF960:
	.string	"S_ARACH_PLEX5"
.LASF701:
	.string	"S_CPOS_RUN7"
.LASF266:
	.string	"SPR_CEYE"
.LASF1087:
	.string	"S_BRAINEXPLODE2"
.LASF1007:
	.string	"S_PAIN_RAISE1"
.LASF1008:
	.string	"S_PAIN_RAISE2"
.LASF1009:
	.string	"S_PAIN_RAISE3"
.LASF1010:
	.string	"S_PAIN_RAISE4"
.LASF1011:
	.string	"S_PAIN_RAISE5"
.LASF644:
	.string	"S_FATSHOT1"
.LASF645:
	.string	"S_FATSHOT2"
.LASF223:
	.string	"SPR_SUIT"
.LASF872:
	.string	"S_SKULL_STND"
.LASF906:
	.string	"S_SPID_PAIN"
.LASF1392:
	.string	"NUMMOBJTYPES"
.LASF205:
	.string	"SPR_BAR1"
.LASF88:
	.string	"IPPORT_BIFFUDP"
.LASF894:
	.string	"S_SPID_RUN5"
.LASF1198:
	.string	"S_CANDLESTIK"
.LASF1457:
	.string	"BindToLocalPort"
.LASF143:
	.string	"pw_allmap"
.LASF1254:
	.string	"NUMSTATES"
.LASF898:
	.string	"S_SPID_RUN9"
.LASF384:
	.string	"S_TBALL1"
.LASF385:
	.string	"S_TBALL2"
.LASF598:
	.string	"S_SMOKE1"
.LASF599:
	.string	"S_SMOKE2"
.LASF600:
	.string	"S_SMOKE3"
.LASF601:
	.string	"S_SMOKE4"
.LASF602:
	.string	"S_SMOKE5"
.LASF821:
	.string	"S_BOSS_RUN6"
.LASF822:
	.string	"S_BOSS_RUN7"
.LASF823:
	.string	"S_BOSS_RUN8"
.LASF188:
	.string	"SPR_HEAD"
.LASF249:
	.string	"SPR_POL1"
.LASF245:
	.string	"SPR_POL2"
.LASF248:
	.string	"SPR_POL3"
.LASF247:
	.string	"SPR_POL4"
.LASF246:
	.string	"SPR_POL5"
.LASF250:
	.string	"SPR_POL6"
.LASF1424:
	.string	"netgame"
.LASF1093:
	.string	"S_BAR1"
.LASF1298:
	.string	"MT_MISC0"
.LASF1179:
	.string	"S_DEADTORSO"
.LASF321:
	.string	"S_DSGUNUP"
.LASF730:
	.string	"S_TROO_STND2"
.LASF1250:
	.string	"S_TECH2LAMP"
.LASF1284:
	.string	"MT_SPAWNFIRE"
.LASF1259:
	.string	"MT_FIRE"
.LASF1342:
	.string	"MT_MISC37"
.LASF827:
	.string	"S_BOSS_PAIN"
.LASF199:
	.string	"SPR_SSWV"
.LASF389:
	.string	"S_RBALL1"
.LASF390:
	.string	"S_RBALL2"
.LASF1194:
	.string	"S_TALLGRNCOL"
.LASF1448:
	.string	"trueval"
.LASF55:
	.string	"IPPROTO_ENCAP"
.LASF513:
	.string	"S_SPOS_DIE5"
.LASF1183:
	.string	"S_HEADONASTICK"
.LASF463:
	.string	"S_POSS_RUN1"
.LASF405:
	.string	"S_BFGLAND2"
.LASF406:
	.string	"S_BFGLAND3"
.LASF407:
	.string	"S_BFGLAND4"
.LASF408:
	.string	"S_BFGLAND5"
.LASF409:
	.string	"S_BFGLAND6"
.LASF469:
	.string	"S_POSS_RUN7"
.LASF470:
	.string	"S_POSS_RUN8"
.LASF452:
	.string	"S_PLAY_XDIE1"
.LASF453:
	.string	"S_PLAY_XDIE2"
.LASF454:
	.string	"S_PLAY_XDIE3"
.LASF455:
	.string	"S_PLAY_XDIE4"
.LASF456:
	.string	"S_PLAY_XDIE5"
.LASF457:
	.string	"S_PLAY_XDIE6"
.LASF458:
	.string	"S_PLAY_XDIE7"
.LASF459:
	.string	"S_PLAY_XDIE8"
.LASF460:
	.string	"S_PLAY_XDIE9"
.LASF858:
	.string	"S_BOS2_DIE1"
.LASF859:
	.string	"S_BOS2_DIE2"
.LASF860:
	.string	"S_BOS2_DIE3"
.LASF861:
	.string	"S_BOS2_DIE4"
.LASF862:
	.string	"S_BOS2_DIE5"
.LASF863:
	.string	"S_BOS2_DIE6"
.LASF864:
	.string	"S_BOS2_DIE7"
.LASF784:
	.string	"S_SARG_RAISE2"
.LASF428:
	.string	"S_TFOG10"
.LASF786:
	.string	"S_SARG_RAISE4"
.LASF1414:
	.string	"episode"
.LASF481:
	.string	"S_POSS_XDIE1"
.LASF482:
	.string	"S_POSS_XDIE2"
.LASF483:
	.string	"S_POSS_XDIE3"
.LASF484:
	.string	"S_POSS_XDIE4"
.LASF485:
	.string	"S_POSS_XDIE5"
.LASF486:
	.string	"S_POSS_XDIE6"
.LASF487:
	.string	"S_POSS_XDIE7"
.LASF133:
	.string	"am_clip"
.LASF489:
	.string	"S_POSS_XDIE9"
.LASF1182:
	.string	"S_GIBS"
.LASF797:
	.string	"S_HEAD_DIE1"
.LASF798:
	.string	"S_HEAD_DIE2"
.LASF799:
	.string	"S_HEAD_DIE3"
.LASF800:
	.string	"S_HEAD_DIE4"
.LASF801:
	.string	"S_HEAD_DIE5"
.LASF802:
	.string	"S_HEAD_DIE6"
.LASF650:
	.string	"S_FATT_STND2"
.LASF1173:
	.string	"S_COLU"
.LASF300:
	.string	"S_PISTOL1"
.LASF301:
	.string	"S_PISTOL2"
.LASF302:
	.string	"S_PISTOL3"
.LASF303:
	.string	"S_PISTOL4"
.LASF639:
	.string	"S_SKEL_RAISE2"
.LASF640:
	.string	"S_SKEL_RAISE3"
.LASF641:
	.string	"S_SKEL_RAISE4"
.LASF642:
	.string	"S_SKEL_RAISE5"
.LASF643:
	.string	"S_SKEL_RAISE6"
.LASF1202:
	.string	"S_BIGTREE"
.LASF1441:
	.string	"recvfrom"
.LASF1112:
	.string	"S_BON2C"
.LASF1113:
	.string	"S_BON2D"
.LASF418:
	.string	"S_TFOG01"
.LASF419:
	.string	"S_TFOG02"
.LASF238:
	.string	"SPR_LAUN"
.LASF474:
	.string	"S_POSS_PAIN"
.LASF809:
	.string	"S_BRBALL1"
.LASF810:
	.string	"S_BRBALL2"
.LASF770:
	.string	"S_SARG_RUN7"
.LASF1276:
	.string	"MT_CYBORG"
.LASF1408:
	.string	"datalength"
.LASF514:
	.string	"S_SPOS_XDIE1"
.LASF515:
	.string	"S_SPOS_XDIE2"
.LASF516:
	.string	"S_SPOS_XDIE3"
.LASF517:
	.string	"S_SPOS_XDIE4"
.LASF518:
	.string	"S_SPOS_XDIE5"
.LASF519:
	.string	"S_SPOS_XDIE6"
.LASF520:
	.string	"S_SPOS_XDIE7"
.LASF521:
	.string	"S_SPOS_XDIE8"
.LASF522:
	.string	"S_SPOS_XDIE9"
.LASF74:
	.string	"IPPORT_SMTP"
.LASF11:
	.string	"size_t"
.LASF1115:
	.string	"S_BKEY"
.LASF141:
	.string	"pw_invisibility"
.LASF203:
	.string	"SPR_ARM1"
.LASF204:
	.string	"SPR_ARM2"
.LASF1258:
	.string	"MT_VILE"
.LASF118:
	.string	"it_blueskull"
.LASF362:
	.string	"S_PLASMADOWN"
.LASF674:
	.string	"S_FATT_PAIN2"
.LASF1072:
	.string	"S_BRAINEYESEE"
.LASF609:
	.string	"S_SKEL_STND2"
.LASF962:
	.string	"S_CYBER_STND2"
.LASF806:
	.string	"S_HEAD_RAISE4"
.LASF1032:
	.string	"S_SSWV_DIE2"
.LASF1413:
	.string	"savegame"
.LASF488:
	.string	"S_POSS_XDIE8"
.LASF1162:
	.string	"S_CELP"
.LASF1204:
	.string	"S_EVILEYE"
.LASF1230:
	.string	"S_GTORCHSHRT2"
.LASF1231:
	.string	"S_GTORCHSHRT3"
.LASF1232:
	.string	"S_GTORCHSHRT4"
.LASF39:
	.string	"IPPROTO_IGMP"
.LASF663:
	.string	"S_FATT_ATK1"
.LASF197:
	.string	"SPR_CYBR"
.LASF664:
	.string	"S_FATT_ATK2"
.LASF567:
	.string	"S_VILE_DIE10"
.LASF158:
	.string	"SPR_MISF"
.LASF157:
	.string	"SPR_MISG"
.LASF1412:
	.string	"deathmatch"
.LASF18:
	.string	"socklen_t"
.LASF1121:
	.string	"S_BSKULL"
.LASF201:
	.string	"SPR_BBRN"
.LASF542:
	.string	"S_VILE_ATK1"
.LASF543:
	.string	"S_VILE_ATK2"
.LASF544:
	.string	"S_VILE_ATK3"
.LASF545:
	.string	"S_VILE_ATK4"
.LASF546:
	.string	"S_VILE_ATK5"
.LASF547:
	.string	"S_VILE_ATK6"
.LASF548:
	.string	"S_VILE_ATK7"
.LASF289:
	.string	"S_PUNCH"
.LASF550:
	.string	"S_VILE_ATK9"
.LASF272:
	.string	"SPR_SMBT"
.LASF48:
	.string	"IPPROTO_IPV6"
.LASF845:
	.string	"S_BOS2_RUN1"
.LASF846:
	.string	"S_BOS2_RUN2"
.LASF847:
	.string	"S_BOS2_RUN3"
.LASF848:
	.string	"S_BOS2_RUN4"
.LASF849:
	.string	"S_BOS2_RUN5"
.LASF850:
	.string	"S_BOS2_RUN6"
.LASF851:
	.string	"S_BOS2_RUN7"
.LASF852:
	.string	"S_BOS2_RUN8"
.LASF263:
	.string	"SPR_TRE1"
.LASF264:
	.string	"SPR_TRE2"
.LASF1406:
	.string	"command"
.LASF919:
	.string	"S_BSPI_STND"
.LASF709:
	.string	"S_CPOS_DIE1"
.LASF271:
	.string	"SPR_TRED"
.LASF164:
	.string	"SPR_BLUD"
.LASF665:
	.string	"S_FATT_ATK3"
.LASF666:
	.string	"S_FATT_ATK4"
.LASF667:
	.string	"S_FATT_ATK5"
.LASF668:
	.string	"S_FATT_ATK6"
.LASF669:
	.string	"S_FATT_ATK7"
.LASF670:
	.string	"S_FATT_ATK8"
.LASF671:
	.string	"S_FATT_ATK9"
.LASF174:
	.string	"SPR_TFOG"
.LASF377:
	.string	"S_BLOOD1"
.LASF378:
	.string	"S_BLOOD2"
.LASF379:
	.string	"S_BLOOD3"
.LASF973:
	.string	"S_CYBER_ATK3"
.LASF110:
	.string	"angleturn"
.LASF1169:
	.string	"S_LAUN"
.LASF429:
	.string	"S_IFOG"
.LASF177:
	.string	"SPR_POSS"
.LASF182:
	.string	"SPR_FBXP"
.LASF47:
	.string	"IPPROTO_DCCP"
.LASF979:
	.string	"S_CYBER_DIE2"
.LASF980:
	.string	"S_CYBER_DIE3"
.LASF981:
	.string	"S_CYBER_DIE4"
.LASF982:
	.string	"S_CYBER_DIE5"
.LASF983:
	.string	"S_CYBER_DIE6"
.LASF984:
	.string	"S_CYBER_DIE7"
.LASF856:
	.string	"S_BOS2_PAIN"
.LASF986:
	.string	"S_CYBER_DIE9"
.LASF1325:
	.string	"MT_MISC23"
.LASF1449:
	.string	"hostentry"
.LASF1199:
	.string	"S_CANDELABRA"
.LASF539:
	.string	"S_VILE_RUN10"
.LASF540:
	.string	"S_VILE_RUN11"
.LASF541:
	.string	"S_VILE_RUN12"
.LASF1159:
	.string	"S_ROCK"
.LASF308:
	.string	"S_SGUN1"
.LASF309:
	.string	"S_SGUN2"
.LASF310:
	.string	"S_SGUN3"
.LASF311:
	.string	"S_SGUN4"
.LASF312:
	.string	"S_SGUN5"
.LASF313:
	.string	"S_SGUN6"
.LASF314:
	.string	"S_SGUN7"
.LASF315:
	.string	"S_SGUN8"
.LASF316:
	.string	"S_SGUN9"
.LASF305:
	.string	"S_SGUN"
.LASF1195:
	.string	"S_SHRTGRNCOL"
.LASF880:
	.string	"S_SKULL_PAIN"
.LASF1283:
	.string	"MT_SPAWNSHOT"
.LASF604:
	.string	"S_TRACER2"
.LASF67:
	.string	"IPPORT_ECHO"
.LASF608:
	.string	"S_SKEL_STND"
.LASF763:
	.string	"S_SARG_STND2"
.LASF1436:
	.string	"M_CheckParm"
.LASF509:
	.string	"S_SPOS_DIE1"
.LASF510:
	.string	"S_SPOS_DIE2"
.LASF511:
	.string	"S_SPOS_DIE3"
.LASF512:
	.string	"S_SPOS_DIE4"
.LASF15:
	.string	"__socklen_t"
.LASF1459:
	.string	"address"
.LASF1238:
	.string	"S_HANGBNOBRAIN"
.LASF1425:
	.string	"doomcom"
.LASF772:
	.string	"S_SARG_ATK1"
.LASF773:
	.string	"S_SARG_ATK2"
.LASF774:
	.string	"S_SARG_ATK3"
.LASF363:
	.string	"S_PLASMAUP"
.LASF1119:
	.string	"S_YKEY"
.LASF1423:
	.string	"myargv"
.LASF1001:
	.string	"S_PAIN_DIE1"
.LASF14:
	.string	"__ssize_t"
.LASF531:
	.string	"S_VILE_RUN2"
.LASF76:
	.string	"IPPORT_NAMESERVER"
.LASF1249:
	.string	"S_TECHLAMP4"
.LASF695:
	.string	"S_CPOS_RUN1"
.LASF696:
	.string	"S_CPOS_RUN2"
.LASF697:
	.string	"S_CPOS_RUN3"
.LASF698:
	.string	"S_CPOS_RUN4"
.LASF699:
	.string	"S_CPOS_RUN5"
.LASF700:
	.string	"S_CPOS_RUN6"
.LASF234:
	.string	"SPR_BPAK"
.LASF702:
	.string	"S_CPOS_RUN8"
.LASF1099:
	.string	"S_BEXP5"
.LASF1445:
	.string	"strerror"
.LASF464:
	.string	"S_POSS_RUN2"
.LASF465:
	.string	"S_POSS_RUN3"
.LASF466:
	.string	"S_POSS_RUN4"
.LASF783:
	.string	"S_SARG_RAISE1"
.LASF467:
	.string	"S_POSS_RUN5"
.LASF785:
	.string	"S_SARG_RAISE3"
.LASF468:
	.string	"S_POSS_RUN6"
.LASF787:
	.string	"S_SARG_RAISE5"
.LASF788:
	.string	"S_SARG_RAISE6"
.LASF64:
	.string	"IPPROTO_MPTCP"
.LASF1443:
	.string	"bind"
.LASF273:
	.string	"SPR_SMGT"
.LASF1063:
	.string	"S_KEENPAIN"
.LASF411:
	.string	"S_BFGEXP2"
.LASF412:
	.string	"S_BFGEXP3"
.LASF413:
	.string	"S_BFGEXP4"
.LASF86:
	.string	"IPPORT_CMDSERVER"
.LASF342:
	.string	"S_CHAINFLASH1"
.LASF343:
	.string	"S_CHAINFLASH2"
.LASF298:
	.string	"S_PISTOLDOWN"
.LASF963:
	.string	"S_CYBER_RUN1"
.LASF964:
	.string	"S_CYBER_RUN2"
.LASF965:
	.string	"S_CYBER_RUN3"
.LASF966:
	.string	"S_CYBER_RUN4"
.LASF967:
	.string	"S_CYBER_RUN5"
.LASF968:
	.string	"S_CYBER_RUN6"
.LASF969:
	.string	"S_CYBER_RUN7"
.LASF970:
	.string	"S_CYBER_RUN8"
.LASF1432:
	.string	"netsend"
.LASF1150:
	.string	"S_PMAP2"
.LASF1151:
	.string	"S_PMAP3"
.LASF1152:
	.string	"S_PMAP4"
.LASF1153:
	.string	"S_PMAP5"
.LASF1154:
	.string	"S_PMAP6"
.LASF881:
	.string	"S_SKULL_PAIN2"
.LASF1075:
	.string	"S_SPAWN2"
.LASF707:
	.string	"S_CPOS_PAIN"
.LASF1399:
	.string	"retransmitfrom"
.LASF187:
	.string	"SPR_SARG"
.LASF1012:
	.string	"S_PAIN_RAISE6"
.LASF1341:
	.string	"MT_MISC36"
.LASF816:
	.string	"S_BOSS_RUN1"
.LASF817:
	.string	"S_BOSS_RUN2"
.LASF818:
	.string	"S_BOSS_RUN3"
.LASF819:
	.string	"S_BOSS_RUN4"
.LASF820:
	.string	"S_BOSS_RUN5"
.LASF338:
	.string	"S_CHAINUP"
.LASF1461:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1201:
	.string	"S_TORCHTREE"
.LASF1013:
	.string	"S_SSWV_STND"
.LASF1060:
	.string	"S_COMMKEEN10"
.LASF1061:
	.string	"S_COMMKEEN11"
.LASF1062:
	.string	"S_COMMKEEN12"
.LASF977:
	.string	"S_CYBER_PAIN"
.LASF496:
	.string	"S_SPOS_RUN1"
.LASF255:
	.string	"SPR_SMIT"
.LASF106:
	.string	"boolean"
.LASF499:
	.string	"S_SPOS_RUN4"
.LASF500:
	.string	"S_SPOS_RUN5"
.LASF192:
	.string	"SPR_SKUL"
.LASF502:
	.string	"S_SPOS_RUN7"
.LASF503:
	.string	"S_SPOS_RUN8"
.LASF1160:
	.string	"S_BROK"
.LASF290:
	.string	"S_PUNCHDOWN"
.LASF956:
	.string	"S_ARACH_PLEX"
.LASF1217:
	.string	"S_GREENTORCH"
.LASF130:
	.string	"wp_supershotgun"
.LASF356:
	.string	"S_SAWDOWN"
.LASF1410:
	.string	"ticdup"
.LASF1286:
	.string	"MT_TROOPSHOT"
.LASF1271:
	.string	"MT_BRUISERSHOT"
.LASF87:
	.string	"IPPORT_EFSSERVER"
.LASF114:
	.string	"ticcmd_t"
.LASF1391:
	.string	"MT_MISC86"
.LASF1393:
	.string	"ps_weapon"
.LASF444:
	.string	"S_PLAY_PAIN2"
.LASF839:
	.string	"S_BOSS_RAISE4"
.LASF840:
	.string	"S_BOSS_RAISE5"
.LASF184:
	.string	"SPR_MANF"
.LASF694:
	.string	"S_CPOS_STND2"
.LASF507:
	.string	"S_SPOS_PAIN"
.LASF1439:
	.string	"gethostname"
.LASF124:
	.string	"wp_shotgun"
.LASF475:
	.string	"S_POSS_PAIN2"
.LASF1292:
	.string	"MT_PUFF"
.LASF347:
	.string	"S_MISSILE1"
.LASF348:
	.string	"S_MISSILE2"
.LASF349:
	.string	"S_MISSILE3"
.LASF723:
	.string	"S_CPOS_RAISE2"
.LASF724:
	.string	"S_CPOS_RAISE3"
.LASF725:
	.string	"S_CPOS_RAISE4"
.LASF1167:
	.string	"S_MGUN"
.LASF1270:
	.string	"MT_BRUISER"
.LASF233:
	.string	"SPR_SBOX"
.LASF876:
	.string	"S_SKULL_ATK1"
.LASF877:
	.string	"S_SKULL_ATK2"
.LASF878:
	.string	"S_SKULL_ATK3"
.LASF879:
	.string	"S_SKULL_ATK4"
.LASF857:
	.string	"S_BOS2_PAIN2"
.LASF7:
	.string	"short unsigned int"
.LASF1272:
	.string	"MT_KNIGHT"
.LASF9:
	.string	"signed char"
.LASF109:
	.string	"sidemove"
.LASF1456:
	.string	"PacketSend"
.LASF508:
	.string	"S_SPOS_PAIN2"
.LASF672:
	.string	"S_FATT_ATK10"
.LASF19:
	.string	"SOCK_STREAM"
.LASF270:
	.string	"SPR_TGRN"
.LASF1317:
	.string	"MT_MEGA"
.LASF172:
	.string	"SPR_BFE1"
.LASF173:
	.string	"SPR_BFE2"
.LASF1351:
	.string	"MT_MISC46"
.LASF1279:
	.string	"MT_KEEN"
.LASF53:
	.string	"IPPROTO_MTP"
.LASF1073:
	.string	"S_BRAINEYE1"
.LASF729:
	.string	"S_TROO_STND"
.LASF676:
	.string	"S_FATT_DIE2"
.LASF367:
	.string	"S_PLASMAFLASH2"
.LASF1442:
	.string	"sendto"
.LASF112:
	.string	"chatchar"
.LASF420:
	.string	"S_TFOG2"
.LASF421:
	.string	"S_TFOG3"
.LASF422:
	.string	"S_TFOG4"
.LASF423:
	.string	"S_TFOG5"
.LASF424:
	.string	"S_TFOG6"
.LASF425:
	.string	"S_TFOG7"
.LASF426:
	.string	"S_TFOG8"
.LASF427:
	.string	"S_TFOG9"
.LASF842:
	.string	"S_BOSS_RAISE7"
.LASF148:
	.string	"SPR_TROO"
.LASF1429:
	.string	"insocket"
.LASF92:
	.string	"IPPORT_USERRESERVED"
.LASF159:
	.string	"SPR_SAWG"
.LASF208:
	.string	"SPR_BON1"
.LASF209:
	.string	"SPR_BON2"
.LASF42:
	.string	"IPPROTO_EGP"
.LASF117:
	.string	"it_redcard"
.LASF1196:
	.string	"S_TALLREDCOL"
.LASF1463:
	.string	"I_Error"
.LASF34:
	.string	"sockaddr"
.LASF1171:
	.string	"S_SHOT"
.LASF1027:
	.string	"S_SSWV_ATK5"
.LASF1176:
	.string	"S_BLOODYTWITCH2"
.LASF1177:
	.string	"S_BLOODYTWITCH3"
.LASF1178:
	.string	"S_BLOODYTWITCH4"
.LASF917:
	.string	"S_SPID_DIE10"
.LASF918:
	.string	"S_SPID_DIE11"
.LASF612:
	.string	"S_SKEL_RUN3"
.LASF613:
	.string	"S_SKEL_RUN4"
.LASF618:
	.string	"S_SKEL_RUN9"
.LASF265:
	.string	"SPR_ELEC"
.LASF1065:
	.string	"S_BRAIN"
.LASF1274:
	.string	"MT_SPIDER"
.LASF1148:
	.string	"S_SUIT"
.LASF163:
	.string	"SPR_BFGF"
.LASF162:
	.string	"SPR_BFGG"
.LASF988:
	.string	"S_PAIN_STND"
.LASF404:
	.string	"S_BFGLAND"
.LASF1094:
	.string	"S_BAR2"
.LASF1416:
	.string	"consoleplayer"
.LASF134:
	.string	"am_shell"
.LASF1402:
	.string	"numtics"
.LASF1397:
	.string	"CMD_GET"
.LASF684:
	.string	"S_FATT_DIE10"
.LASF121:
	.string	"NUMCARDS"
.LASF1221:
	.string	"S_REDTORCH"
.LASF1290:
	.string	"MT_BFG"
.LASF317:
	.string	"S_SGUNFLASH1"
.LASF179:
	.string	"SPR_VILE"
.LASF1293:
	.string	"MT_BLOOD"
.LASF297:
	.string	"S_PISTOL"
.LASF1465:
	.string	"I_NetCmd"
.LASF105:
	.string	"true"
.LASF529:
	.string	"S_VILE_STND2"
.LASF947:
	.string	"S_BSPI_RAISE1"
.LASF948:
	.string	"S_BSPI_RAISE2"
.LASF949:
	.string	"S_BSPI_RAISE3"
.LASF950:
	.string	"S_BSPI_RAISE4"
.LASF951:
	.string	"S_BSPI_RAISE5"
.LASF952:
	.string	"S_BSPI_RAISE6"
.LASF953:
	.string	"S_BSPI_RAISE7"
.LASF1409:
	.string	"numnodes"
.LASF4:
	.string	"long int"
.LASF1036:
	.string	"S_SSWV_XDIE1"
.LASF1037:
	.string	"S_SSWV_XDIE2"
.LASF1038:
	.string	"S_SSWV_XDIE3"
.LASF1039:
	.string	"S_SSWV_XDIE4"
.LASF1040:
	.string	"S_SSWV_XDIE5"
.LASF1041:
	.string	"S_SSWV_XDIE6"
.LASF25:
	.string	"SOCK_PACKET"
.LASF1043:
	.string	"S_SSWV_XDIE8"
.LASF1044:
	.string	"S_SSWV_XDIE9"
.LASF334:
	.string	"S_DSGUNFLASH1"
.LASF335:
	.string	"S_DSGUNFLASH2"
.LASF1324:
	.string	"MT_MISC22"
.LASF592:
	.string	"S_FIRE25"
.LASF686:
	.string	"S_FATT_RAISE2"
.LASF1360:
	.string	"MT_MISC55"
.LASF119:
	.string	"it_yellowskull"
.LASF1124:
	.string	"S_RSKULL2"
.LASF1466:
	.string	"GetLocalAddress"
.LASF899:
	.string	"S_SPID_RUN10"
.LASF900:
	.string	"S_SPID_RUN11"
.LASF901:
	.string	"S_SPID_RUN12"
.LASF1411:
	.string	"extratics"
.LASF68:
	.string	"IPPORT_DISCARD"
.LASF1447:
	.string	"rcsid"
.LASF350:
	.string	"S_MISSILEFLASH1"
.LASF351:
	.string	"S_MISSILEFLASH2"
.LASF352:
	.string	"S_MISSILEFLASH3"
.LASF353:
	.string	"S_MISSILEFLASH4"
.LASF214:
	.string	"SPR_RSKU"
.LASF108:
	.string	"forwardmove"
.LASF70:
	.string	"IPPORT_DAYTIME"
.LASF711:
	.string	"S_CPOS_DIE3"
.LASF1435:
	.string	"atoi"
.LASF712:
	.string	"S_CPOS_DIE4"
.LASF713:
	.string	"S_CPOS_DIE5"
.LASF714:
	.string	"S_CPOS_DIE6"
.LASF715:
	.string	"S_CPOS_DIE7"
.LASF1156:
	.string	"S_PVIS2"
.LASF1285:
	.string	"MT_BARREL"
.LASF888:
	.string	"S_SPID_STND"
.LASF35:
	.string	"in_addr"
.LASF73:
	.string	"IPPORT_TELNET"
.LASF23:
	.string	"SOCK_SEQPACKET"
.LASF660:
	.string	"S_FATT_RUN10"
.LASF661:
	.string	"S_FATT_RUN11"
.LASF662:
	.string	"S_FATT_RUN12"
.LASF1234:
	.string	"S_RTORCHSHRT2"
.LASF1426:
	.string	"netbuffer"
.LASF1277:
	.string	"MT_PAIN"
.LASF1214:
	.string	"S_BLUETORCH2"
.LASF1215:
	.string	"S_BLUETORCH3"
.LASF1216:
	.string	"S_BLUETORCH4"
.LASF274:
	.string	"SPR_SMRT"
.LASF375:
	.string	"S_BFGFLASH1"
.LASF376:
	.string	"S_BFGFLASH2"
.LASF909:
	.string	"S_SPID_DIE2"
.LASF1421:
	.string	"doomcom_t"
.LASF191:
	.string	"SPR_BOS2"
.LASF912:
	.string	"S_SPID_DIE5"
.LASF913:
	.string	"S_SPID_DIE6"
.LASF914:
	.string	"S_SPID_DIE7"
.LASF915:
	.string	"S_SPID_DIE8"
.LASF1205:
	.string	"S_EVILEYE2"
.LASF1206:
	.string	"S_EVILEYE3"
.LASF1207:
	.string	"S_EVILEYE4"
.LASF380:
	.string	"S_PUFF1"
.LASF381:
	.string	"S_PUFF2"
.LASF382:
	.string	"S_PUFF3"
.LASF202:
	.string	"SPR_BOSF"
.LASF190:
	.string	"SPR_BOSS"
.LASF1289:
	.string	"MT_PLASMA"
.LASF934:
	.string	"S_BSPI_ATK1"
.LASF935:
	.string	"S_BSPI_ATK2"
.LASF936:
	.string	"S_BSPI_ATK3"
.LASF937:
	.string	"S_BSPI_ATK4"
.LASF1116:
	.string	"S_BKEY2"
.LASF131:
	.string	"NUMWEAPONS"
.LASF921:
	.string	"S_BSPI_SIGHT"
.LASF2:
	.string	"long unsigned int"
.LASF1067:
	.string	"S_BRAIN_DIE1"
.LASF1068:
	.string	"S_BRAIN_DIE2"
.LASF1069:
	.string	"S_BRAIN_DIE3"
.LASF1070:
	.string	"S_BRAIN_DIE4"
.LASF402:
	.string	"S_BFGSHOT"
.LASF1208:
	.string	"S_FLOATSKULL"
.LASF56:
	.string	"IPPROTO_PIM"
.LASF558:
	.string	"S_VILE_DIE1"
.LASF559:
	.string	"S_VILE_DIE2"
.LASF560:
	.string	"S_VILE_DIE3"
.LASF561:
	.string	"S_VILE_DIE4"
.LASF562:
	.string	"S_VILE_DIE5"
.LASF563:
	.string	"S_VILE_DIE6"
.LASF564:
	.string	"S_VILE_DIE7"
.LASF565:
	.string	"S_VILE_DIE8"
.LASF566:
	.string	"S_VILE_DIE9"
.LASF243:
	.string	"SPR_SMT2"
.LASF1118:
	.string	"S_RKEY2"
.LASF1089:
	.string	"S_ARM1"
.LASF1091:
	.string	"S_ARM2"
.LASF1184:
	.string	"S_HEADCANDLES"
.LASF221:
	.string	"SPR_PINS"
.LASF814:
	.string	"S_BOSS_STND"
.LASF1464:
	.string	"__errno_location"
.LASF794:
	.string	"S_HEAD_PAIN"
.LASF116:
	.string	"it_yellowcard"
.LASF1261:
	.string	"MT_TRACER"
.LASF675:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF677:
	.string	"S_FATT_DIE3"
.LASF678:
	.string	"S_FATT_DIE4"
.LASF679:
	.string	"S_FATT_DIE5"
.LASF680:
	.string	"S_FATT_DIE6"
.LASF681:
	.string	"S_FATT_DIE7"
.LASF682:
	.string	"S_FATT_DIE8"
.LASF683:
	.string	"S_FATT_DIE9"
.LASF750:
	.string	"S_TROO_XDIE2"
.LASF751:
	.string	"S_TROO_XDIE3"
.LASF752:
	.string	"S_TROO_XDIE4"
.LASF753:
	.string	"S_TROO_XDIE5"
.LASF754:
	.string	"S_TROO_XDIE6"
.LASF755:
	.string	"S_TROO_XDIE7"
.LASF756:
	.string	"S_TROO_XDIE8"
.LASF226:
	.string	"SPR_CLIP"
.LASF1197:
	.string	"S_SHRTREDCOL"
.LASF96:
	.string	"sin_addr"
.LASF1240:
	.string	"S_HANGTSKULL"
.LASF145:
	.string	"NUMPOWERS"
.LASF1404:
	.string	"doomdata_t"
.LASF1025:
	.string	"S_SSWV_ATK3"
.LASF1026:
	.string	"S_SSWV_ATK4"
.LASF331:
	.string	"S_DSGUN10"
.LASF140:
	.string	"pw_strength"
.LASF260:
	.string	"SPR_CAND"
.LASF1267:
	.string	"MT_SERGEANT"
.LASF1187:
	.string	"S_LIVESTICK"
.LASF1127:
	.string	"S_STIM"
.LASF135:
	.string	"am_cell"
.LASF115:
	.string	"it_bluecard"
.LASF790:
	.string	"S_HEAD_RUN1"
.LASF445:
	.string	"S_PLAY_DIE1"
.LASF446:
	.string	"S_PLAY_DIE2"
.LASF447:
	.string	"S_PLAY_DIE3"
.LASF448:
	.string	"S_PLAY_DIE4"
.LASF449:
	.string	"S_PLAY_DIE5"
.LASF450:
	.string	"S_PLAY_DIE6"
.LASF451:
	.string	"S_PLAY_DIE7"
.LASF33:
	.string	"in_addr_t"
.LASF461:
	.string	"S_POSS_STND"
.LASF417:
	.string	"S_TFOG"
.LASF1345:
	.string	"MT_MISC40"
.LASF1346:
	.string	"MT_MISC41"
.LASF777:
	.string	"S_SARG_DIE1"
.LASF778:
	.string	"S_SARG_DIE2"
.LASF779:
	.string	"S_SARG_DIE3"
.LASF780:
	.string	"S_SARG_DIE4"
.LASF1078:
	.string	"S_SPAWNFIRE1"
.LASF1079:
	.string	"S_SPAWNFIRE2"
.LASF1080:
	.string	"S_SPAWNFIRE3"
.LASF1081:
	.string	"S_SPAWNFIRE4"
.LASF52:
	.string	"IPPROTO_AH"
.LASF1083:
	.string	"S_SPAWNFIRE6"
.LASF1084:
	.string	"S_SPAWNFIRE7"
.LASF1085:
	.string	"S_SPAWNFIRE8"
.LASF749:
	.string	"S_TROO_XDIE1"
.LASF111:
	.string	"consistancy"
.LASF1242:
	.string	"S_HANGTNOBRAIN"
.LASF397:
	.string	"S_PLASEXP2"
.LASF398:
	.string	"S_PLASEXP3"
.LASF399:
	.string	"S_PLASEXP4"
.LASF400:
	.string	"S_PLASEXP5"
.LASF128:
	.string	"wp_bfg"
.LASF1226:
	.string	"S_BTORCHSHRT2"
.LASF1227:
	.string	"S_BTORCHSHRT3"
.LASF1228:
	.string	"S_BTORCHSHRT4"
.LASF530:
	.string	"S_VILE_RUN1"
.LASF320:
	.string	"S_DSGUNDOWN"
.LASF532:
	.string	"S_VILE_RUN3"
.LASF533:
	.string	"S_VILE_RUN4"
.LASF534:
	.string	"S_VILE_RUN5"
.LASF535:
	.string	"S_VILE_RUN6"
.LASF536:
	.string	"S_VILE_RUN7"
.LASF537:
	.string	"S_VILE_RUN8"
.LASF538:
	.string	"S_VILE_RUN9"
.LASF781:
	.string	"S_SARG_DIE5"
.LASF782:
	.string	"S_SARG_DIE6"
.LASF1419:
	.string	"drone"
.LASF63:
	.string	"IPPROTO_RAW"
.LASF1400:
	.string	"starttic"
.LASF622:
	.string	"S_SKEL_FIST1"
.LASF623:
	.string	"S_SKEL_FIST2"
.LASF624:
	.string	"S_SKEL_FIST3"
.LASF625:
	.string	"S_SKEL_FIST4"
.LASF361:
	.string	"S_PLASMA"
.LASF1140:
	.string	"S_PINS"
.LASF1213:
	.string	"S_BLUETORCH"
.LASF651:
	.string	"S_FATT_RUN1"
.LASF652:
	.string	"S_FATT_RUN2"
.LASF653:
	.string	"S_FATT_RUN3"
.LASF654:
	.string	"S_FATT_RUN4"
.LASF142:
	.string	"pw_ironfeet"
.LASF656:
	.string	"S_FATT_RUN6"
.LASF657:
	.string	"S_FATT_RUN7"
.LASF658:
	.string	"S_FATT_RUN8"
.LASF1189:
	.string	"S_MEAT2"
.LASF1190:
	.string	"S_MEAT3"
.LASF1191:
	.string	"S_MEAT4"
.LASF1192:
	.string	"S_MEAT5"
.LASF304:
	.string	"S_PISTOLFLASH"
.LASF524:
	.string	"S_SPOS_RAISE2"
.LASF525:
	.string	"S_SPOS_RAISE3"
.LASF526:
	.string	"S_SPOS_RAISE4"
.LASF527:
	.string	"S_SPOS_RAISE5"
.LASF217:
	.string	"SPR_MEDI"
.LASF219:
	.string	"SPR_PINV"
.LASF1066:
	.string	"S_BRAIN_PAIN"
.LASF337:
	.string	"S_CHAINDOWN"
.LASF556:
	.string	"S_VILE_PAIN"
.LASF603:
	.string	"S_TRACER"
.LASF89:
	.string	"IPPORT_WHOSERVER"
.LASF1023:
	.string	"S_SSWV_ATK1"
.LASF1024:
	.string	"S_SSWV_ATK2"
.LASF553:
	.string	"S_VILE_HEAL1"
.LASF554:
	.string	"S_VILE_HEAL2"
.LASF555:
	.string	"S_VILE_HEAL3"
.LASF1028:
	.string	"S_SSWV_ATK6"
.LASF211:
	.string	"SPR_RKEY"
.LASF78:
	.string	"IPPORT_MTP"
.LASF1174:
	.string	"S_STALAG"
.LASF889:
	.string	"S_SPID_STND2"
.LASF1358:
	.string	"MT_MISC53"
.LASF1175:
	.string	"S_BLOODYTWITCH"
.LASF1244:
	.string	"S_SMALLPOOL"
.LASF51:
	.string	"IPPROTO_ESP"
.LASF1361:
	.string	"MT_MISC56"
.LASF673:
	.string	"S_FATT_PAIN"
.LASF1362:
	.string	"MT_MISC57"
.LASF437:
	.string	"S_PLAY_RUN1"
.LASF438:
	.string	"S_PLAY_RUN2"
.LASF439:
	.string	"S_PLAY_RUN3"
.LASF440:
	.string	"S_PLAY_RUN4"
.LASF1165:
	.string	"S_BPAK"
.LASF147:
	.string	"double"
.LASF206:
	.string	"SPR_BEXP"
.LASF1122:
	.string	"S_BSKULL2"
.LASF165:
	.string	"SPR_PUFF"
.LASF1051:
	.string	"S_COMMKEEN"
.LASF1458:
	.string	"port"
.LASF843:
	.string	"S_BOS2_STND"
.LASF171:
	.string	"SPR_BFS1"
.LASF1074:
	.string	"S_SPAWN1"
.LASF16:
	.string	"ssize_t"
.LASF1076:
	.string	"S_SPAWN3"
.LASF1077:
	.string	"S_SPAWN4"
.LASF1247:
	.string	"S_TECHLAMP2"
.LASF1248:
	.string	"S_TECHLAMP3"
.LASF129:
	.string	"wp_chainsaw"
.LASF1275:
	.string	"MT_BABY"
.LASF1188:
	.string	"S_LIVESTICK2"
.LASF1233:
	.string	"S_RTORCHSHRT"
.LASF1450:
	.string	"hostname"
.LASF1321:
	.string	"MT_MISC19"
.LASF193:
	.string	"SPR_SPID"
.LASF789:
	.string	"S_HEAD_STND"
.LASF1433:
	.string	"ioctl"
.LASF764:
	.string	"S_SARG_RUN1"
.LASF765:
	.string	"S_SARG_RUN2"
.LASF766:
	.string	"S_SARG_RUN3"
.LASF767:
	.string	"S_SARG_RUN4"
.LASF768:
	.string	"S_SARG_RUN5"
.LASF769:
	.string	"S_SARG_RUN6"
.LASF13:
	.string	"__uint32_t"
.LASF771:
	.string	"S_SARG_RUN8"
.LASF1299:
	.string	"MT_MISC1"
.LASF1300:
	.string	"MT_MISC2"
.LASF1301:
	.string	"MT_MISC3"
.LASF1302:
	.string	"MT_MISC4"
.LASF1303:
	.string	"MT_MISC5"
.LASF1304:
	.string	"MT_MISC6"
.LASF1305:
	.string	"MT_MISC7"
.LASF1306:
	.string	"MT_MISC8"
.LASF1307:
	.string	"MT_MISC9"
.LASF354:
	.string	"S_SAW"
.LASF222:
	.string	"SPR_MEGA"
.LASF443:
	.string	"S_PLAY_PAIN"
.LASF395:
	.string	"S_PLASBALL2"
.LASF60:
	.string	"IPPROTO_UDPLITE"
.LASF26:
	.string	"SOCK_CLOEXEC"
.LASF200:
	.string	"SPR_KEEN"
.LASF1029:
	.string	"S_SSWV_PAIN"
.LASF1064:
	.string	"S_KEENPAIN2"
.LASF144:
	.string	"pw_infrared"
.LASF551:
	.string	"S_VILE_ATK10"
.LASF552:
	.string	"S_VILE_ATK11"
.LASF1030:
	.string	"S_SSWV_PAIN2"
.LASF1385:
	.string	"MT_MISC80"
.LASF1104:
	.string	"S_BON1A"
.LASF1105:
	.string	"S_BON1B"
.LASF1106:
	.string	"S_BON1C"
.LASF1107:
	.string	"S_BON1D"
.LASF1108:
	.string	"S_BON1E"
.LASF69:
	.string	"IPPORT_SYSTAT"
.LASF220:
	.string	"SPR_PSTR"
.LASF1323:
	.string	"MT_MISC21"
.LASF775:
	.string	"S_SARG_PAIN"
.LASF1318:
	.string	"MT_CLIP"
.LASF235:
	.string	"SPR_BFUG"
.LASF1373:
	.string	"MT_MISC68"
.LASF1100:
	.string	"S_BBAR1"
.LASF1101:
	.string	"S_BBAR2"
.LASF1102:
	.string	"S_BBAR3"
.LASF288:
	.string	"S_LIGHTDONE"
.LASF939:
	.string	"S_BSPI_PAIN2"
.LASF739:
	.string	"S_TROO_ATK1"
.LASF740:
	.string	"S_TROO_ATK2"
.LASF741:
	.string	"S_TROO_ATK3"
.LASF883:
	.string	"S_SKULL_DIE2"
.LASF884:
	.string	"S_SKULL_DIE3"
.LASF885:
	.string	"S_SKULL_DIE4"
.LASF886:
	.string	"S_SKULL_DIE5"
.LASF887:
	.string	"S_SKULL_DIE6"
.LASF239:
	.string	"SPR_PLAS"
.LASF1110:
	.string	"S_BON2A"
.LASF1111:
	.string	"S_BON2B"
.LASF152:
	.string	"SPR_PISF"
.LASF151:
	.string	"SPR_PISG"
.LASF1114:
	.string	"S_BON2E"
.LASF100:
	.string	"h_aliases"
.LASF1328:
	.string	"MT_CHAINGUN"
.LASF386:
	.string	"S_TBALLX1"
.LASF387:
	.string	"S_TBALLX2"
.LASF388:
	.string	"S_TBALLX3"
.LASF132:
	.string	"wp_nochange"
.LASF1265:
	.string	"MT_CHAINGUY"
.LASF882:
	.string	"S_SKULL_DIE1"
.LASF1245:
	.string	"S_BRAINSTEM"
.LASF170:
	.string	"SPR_MISL"
.LASF1050:
	.string	"S_KEENSTND"
.LASF176:
	.string	"SPR_PLAY"
.LASF1446:
	.string	"socket"
.LASF17:
	.string	"long long unsigned int"
.LASF1185:
	.string	"S_HEADCANDLES2"
.LASF1295:
	.string	"MT_IFOG"
.LASF1405:
	.string	"intnum"
.LASF267:
	.string	"SPR_FSKU"
.LASF501:
	.string	"S_SPOS_RUN6"
.LASF357:
	.string	"S_SAWUP"
.LASF1090:
	.string	"S_ARM1A"
.LASF693:
	.string	"S_CPOS_STND"
.LASF101:
	.string	"h_addrtype"
.LASF1164:
	.string	"S_SBOX"
.LASF1339:
	.string	"MT_MISC34"
.LASF396:
	.string	"S_PLASEXP"
.LASF54:
	.string	"IPPROTO_BEETPH"
.LASF37:
	.string	"IPPROTO_IP"
.LASF1180:
	.string	"S_DEADBOTTOM"
.LASF1237:
	.string	"S_HANGNOGUTS"
.LASF84:
	.string	"IPPORT_EXECSERVER"
.LASF1142:
	.string	"S_PINS3"
.LASF1143:
	.string	"S_PINS4"
.LASF995:
	.string	"S_PAIN_ATK1"
.LASF996:
	.string	"S_PAIN_ATK2"
.LASF997:
	.string	"S_PAIN_ATK3"
.LASF998:
	.string	"S_PAIN_ATK4"
.LASF1428:
	.string	"sendsocket"
.LASF307:
	.string	"S_SGUNUP"
.LASF1460:
	.string	"UDPsocket"
.LASF1396:
	.string	"CMD_SEND"
.LASF261:
	.string	"SPR_CBRA"
.LASF1092:
	.string	"S_ARM2A"
.LASF961:
	.string	"S_CYBER_STND"
.LASF1398:
	.string	"checksum"
.LASF43:
	.string	"IPPROTO_PUP"
.LASF1430:
	.string	"sendaddress"
.LASF1120:
	.string	"S_YKEY2"
.LASF575:
	.string	"S_FIRE8"
.LASF815:
	.string	"S_BOSS_STND2"
.LASF710:
	.string	"S_CPOS_DIE2"
.LASF358:
	.string	"S_SAW1"
.LASF359:
	.string	"S_SAW2"
.LASF360:
	.string	"S_SAW3"
.LASF1407:
	.string	"remotenode"
.LASF1462:
	.string	"__socket_type"
.LASF1103:
	.string	"S_BON1"
.LASF1109:
	.string	"S_BON2"
.LASF1401:
	.string	"player"
.LASF355:
	.string	"S_SAWB"
.LASF743:
	.string	"S_TROO_PAIN2"
.LASF1415:
	.string	"skill"
.LASF1281:
	.string	"MT_BOSSSPIT"
.LASF568:
	.string	"S_FIRE1"
.LASF569:
	.string	"S_FIRE2"
.LASF570:
	.string	"S_FIRE3"
.LASF571:
	.string	"S_FIRE4"
.LASF572:
	.string	"S_FIRE5"
.LASF573:
	.string	"S_FIRE6"
.LASF574:
	.string	"S_FIRE7"
.LASF229:
	.string	"SPR_BROK"
.LASF576:
	.string	"S_FIRE9"
.LASF1349:
	.string	"MT_MISC44"
.LASF62:
	.string	"IPPROTO_ETHERNET"
.LASF1350:
	.string	"MT_MISC45"
.LASF1161:
	.string	"S_CELL"
.LASF1352:
	.string	"MT_MISC47"
.LASF227:
	.string	"SPR_AMMO"
.LASF1353:
	.string	"MT_MISC48"
.LASF1354:
	.string	"MT_MISC49"
.LASF874:
	.string	"S_SKULL_RUN1"
.LASF875:
	.string	"S_SKULL_RUN2"
.LASF1241:
	.string	"S_HANGTLOOKUP"
.LASF336:
	.string	"S_CHAIN"
.LASF136:
	.string	"am_misl"
.LASF366:
	.string	"S_PLASMAFLASH1"
.LASF322:
	.string	"S_DSGUN1"
.LASF323:
	.string	"S_DSGUN2"
.LASF218:
	.string	"SPR_SOUL"
.LASF178:
	.string	"SPR_SPOS"
.LASF326:
	.string	"S_DSGUN5"
.LASF327:
	.string	"S_DSGUN6"
.LASF328:
	.string	"S_DSGUN7"
.LASF329:
	.string	"S_DSGUN8"
.LASF330:
	.string	"S_DSGUN9"
.LASF494:
	.string	"S_SPOS_STND"
.LASF198:
	.string	"SPR_PAIN"
.LASF722:
	.string	"S_CPOS_RAISE1"
.LASF83:
	.string	"IPPORT_SUPDUP"
.LASF113:
	.string	"buttons"
.LASF371:
	.string	"S_BFG1"
.LASF372:
	.string	"S_BFG2"
.LASF373:
	.string	"S_BFG3"
.LASF374:
	.string	"S_BFG4"
.LASF907:
	.string	"S_SPID_PAIN2"
.LASF332:
	.string	"S_DSNR1"
.LASF333:
	.string	"S_DSNR2"
.LASF1452:
	.string	"PacketGet"
.LASF873:
	.string	"S_SKULL_STND2"
.LASF1136:
	.string	"S_PINV2"
.LASF1137:
	.string	"S_PINV3"
.LASF1138:
	.string	"S_PINV4"
.LASF1251:
	.string	"S_TECH2LAMP2"
.LASF58:
	.string	"IPPROTO_L2TP"
.LASF1253:
	.string	"S_TECH2LAMP4"
.LASF1422:
	.string	"myargc"
.LASF5:
	.string	"long long int"
.LASF150:
	.string	"SPR_PUNG"
.LASF717:
	.string	"S_CPOS_XDIE2"
.LASF718:
	.string	"S_CPOS_XDIE3"
.LASF719:
	.string	"S_CPOS_XDIE4"
.LASF720:
	.string	"S_CPOS_XDIE5"
.LASF721:
	.string	"S_CPOS_XDIE6"
.LASF902:
	.string	"S_SPID_ATK1"
.LASF903:
	.string	"S_SPID_ATK2"
.LASF45:
	.string	"IPPROTO_IDP"
.LASF905:
	.string	"S_SPID_ATK4"
.LASF626:
	.string	"S_SKEL_MISS1"
.LASF627:
	.string	"S_SKEL_MISS2"
.LASF628:
	.string	"S_SKEL_MISS3"
.LASF629:
	.string	"S_SKEL_MISS4"
.LASF383:
	.string	"S_PUFF4"
.LASF1123:
	.string	"S_RSKULL"
.LASF955:
	.string	"S_ARACH_PLAZ2"
.LASF1355:
	.string	"MT_MISC50"
.LASF803:
	.string	"S_HEAD_RAISE1"
.LASF1390:
	.string	"MT_MISC85"
.LASF804:
	.string	"S_HEAD_RAISE2"
.LASF805:
	.string	"S_HEAD_RAISE3"
.LASF213:
	.string	"SPR_BSKU"
.LASF807:
	.string	"S_HEAD_RAISE5"
.LASF808:
	.string	"S_HEAD_RAISE6"
.LASF1444:
	.string	"memset"
.LASF1453:
	.string	"fromaddress"
.LASF1333:
	.string	"MT_SUPERSHOTGUN"
.LASF224:
	.string	"SPR_PMAP"
.LASF1071:
	.string	"S_BRAINEYE"
.LASF225:
	.string	"SPR_PVIS"
.LASF631:
	.string	"S_SKEL_PAIN2"
.LASF59:
	.string	"IPPROTO_SCTP"
.LASF1394:
	.string	"ps_flash"
.LASF1291:
	.string	"MT_ARACHPLAZ"
.LASF549:
	.string	"S_VILE_ATK8"
.LASF490:
	.string	"S_POSS_RAISE1"
.LASF491:
	.string	"S_POSS_RAISE2"
.LASF492:
	.string	"S_POSS_RAISE3"
.LASF493:
	.string	"S_POSS_RAISE4"
.LASF345:
	.string	"S_MISSILEDOWN"
.LASF1209:
	.string	"S_FLOATSKULL2"
.LASF1210:
	.string	"S_FLOATSKULL3"
.LASF1141:
	.string	"S_PINS2"
.LASF1427:
	.string	"DOOMPORT"
.LASF1144:
	.string	"S_MEGA"
.LASF824:
	.string	"S_BOSS_ATK1"
.LASF825:
	.string	"S_BOSS_ATK2"
.LASF826:
	.string	"S_BOSS_ATK3"
.LASF283:
	.string	"SPR_BRS1"
.LASF50:
	.string	"IPPROTO_GRE"
.LASF1168:
	.string	"S_CSAW"
.LASF139:
	.string	"pw_invulnerability"
.LASF811:
	.string	"S_BRBALLX1"
.LASF812:
	.string	"S_BRBALLX2"
.LASF813:
	.string	"S_BRBALLX3"
.LASF941:
	.string	"S_BSPI_DIE2"
.LASF942:
	.string	"S_BSPI_DIE3"
.LASF943:
	.string	"S_BSPI_DIE4"
.LASF944:
	.string	"S_BSPI_DIE5"
.LASF125:
	.string	"wp_chaingun"
.LASF946:
	.string	"S_BSPI_DIE7"
.LASF869:
	.string	"S_BOS2_RAISE5"
.LASF497:
	.string	"S_SPOS_RUN2"
.LASF498:
	.string	"S_SPOS_RUN3"
.LASF1000:
	.string	"S_PAIN_PAIN2"
.LASF635:
	.string	"S_SKEL_DIE4"
.LASF232:
	.string	"SPR_SHEL"
.LASF1374:
	.string	"MT_MISC69"
.LASF104:
	.string	"false"
.LASF284:
	.string	"SPR_TLMP"
.LASF462:
	.string	"S_POSS_STND2"
.LASF1332:
	.string	"MT_SHOTGUN"
.LASF1257:
	.string	"MT_SHOTGUY"
.LASF41:
	.string	"IPPROTO_TCP"
.LASF1246:
	.string	"S_TECHLAMP"
.LASF1278:
	.string	"MT_WOLFSS"
.LASF1434:
	.string	"inet_addr"
.LASF844:
	.string	"S_BOS2_STND2"
.LASF339:
	.string	"S_CHAIN1"
.LASF340:
	.string	"S_CHAIN2"
.LASF341:
	.string	"S_CHAIN3"
.LASF392:
	.string	"S_RBALLX2"
.LASF393:
	.string	"S_RBALLX3"
.LASF71:
	.string	"IPPORT_NETSTAT"
.LASF495:
	.string	"S_SPOS_STND2"
.LASF8:
	.string	"unsigned int"
.LASF138:
	.string	"am_noammo"
.LASF1454:
	.string	"fromlen"
.LASF1082:
	.string	"S_SPAWNFIRE5"
.LASF471:
	.string	"S_POSS_ATK1"
.LASF472:
	.string	"S_POSS_ATK2"
.LASF473:
	.string	"S_POSS_ATK3"
.LASF1376:
	.string	"MT_MISC71"
.LASF904:
	.string	"S_SPID_ATK3"
.LASF1235:
	.string	"S_RTORCHSHRT3"
.LASF1236:
	.string	"S_RTORCHSHRT4"
.LASF10:
	.string	"short int"
.LASF1382:
	.string	"MT_MISC77"
.LASF1383:
	.string	"MT_MISC78"
.LASF1384:
	.string	"MT_MISC79"
.LASF1273:
	.string	"MT_SKULL"
.LASF1260:
	.string	"MT_UNDEAD"
.LASF632:
	.string	"S_SKEL_DIE1"
.LASF633:
	.string	"S_SKEL_DIE2"
.LASF634:
	.string	"S_SKEL_DIE3"
.LASF180:
	.string	"SPR_FIRE"
.LASF636:
	.string	"S_SKEL_DIE5"
.LASF637:
	.string	"S_SKEL_DIE6"
.LASF38:
	.string	"IPPROTO_ICMP"
.LASF82:
	.string	"IPPORT_TTYLINK"
.LASF1243:
	.string	"S_COLONGIBS"
.LASF1262:
	.string	"MT_SMOKE"
.LASF285:
	.string	"SPR_TLP2"
.LASF394:
	.string	"S_PLASBALL"
.LASF241:
	.string	"SPR_SGN2"
.LASF194:
	.string	"SPR_BSPI"
.LASF196:
	.string	"SPR_APBX"
.LASF1308:
	.string	"MT_MISC10"
.LASF1309:
	.string	"MT_MISC11"
.LASF1310:
	.string	"MT_MISC12"
.LASF1312:
	.string	"MT_MISC13"
.LASF1314:
	.string	"MT_MISC14"
.LASF1315:
	.string	"MT_MISC15"
.LASF1316:
	.string	"MT_MISC16"
.LASF1319:
	.string	"MT_MISC17"
.LASF1320:
	.string	"MT_MISC18"
.LASF1157:
	.string	"S_CLIP"
.LASF1021:
	.string	"S_SSWV_RUN7"
.LASF1282:
	.string	"MT_BOSSTARGET"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10"
.LASF0:
	.string	"i_net.c"
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
