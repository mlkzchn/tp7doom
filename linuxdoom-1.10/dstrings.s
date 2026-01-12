	.file	"dstrings.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "dstrings.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 49
rcsid:
	.string	"$Id: m_bbox.c,v 1.1 1997/02/03 22:45:10 b1 Exp $"
	.globl	endmsg
	.align 8
.LC0:
	.string	"are you sure you want to\nquit this great game?"
	.align 8
.LC1:
	.string	"please don't leave, there's more\ndemons to toast!"
	.align 8
.LC2:
	.string	"let's beat it -- this is turning\ninto a bloodbath!"
	.align 8
.LC3:
	.string	"i wouldn't leave if i were you.\ndos is much worse."
	.align 8
.LC4:
	.string	"you're trying to say you like dos\nbetter than me, right?"
	.align 8
.LC5:
	.string	"don't leave yet -- there's a\ndemon around that corner!"
	.align 8
.LC6:
	.string	"ya know, next time you come in here\ni'm gonna toast ya."
	.align 8
.LC7:
	.string	"go ahead and leave. see if i care.you want to quit?\nthen, thou hast lost an eighth!"
	.align 8
.LC8:
	.string	"don't go now, there's a \ndimensional shambler waiting\nat the dos prompt!"
	.align 8
.LC9:
	.string	"get outta here and go back\nto your boring programs."
	.align 8
.LC10:
	.string	"if i were your boss, i'd \n deathmatch ya in a minute!"
	.align 8
.LC11:
	.string	"look, bud. you leave now\nand you forfeit your body count!"
	.align 8
.LC12:
	.string	"just leave. when you come\nback, i'll be waiting with a bat."
	.align 8
.LC13:
	.string	"you're lucky i don't smack\nyou for thinking about leaving.fuck you, pussy!\nget the fuck out!"
	.align 8
.LC14:
	.string	"you quit and i'll jizz\nin your cystholes!"
	.align 8
.LC15:
	.string	"if you leave, i'll make\nthe lord drink my jizz."
	.align 8
.LC16:
	.string	"hey, ron! can we say\n'fuck' in the game?"
	.align 8
.LC17:
	.string	"i'd leave: this is just\nmore monsters and levels.\nwhat a load."
	.align 8
.LC18:
	.string	"suck it down, asshole!\nyou're a fucking wimp!"
	.align 8
.LC19:
	.string	"don't quit now! we're \nstill spending your money!"
	.align 8
.LC20:
	.string	"THIS IS NO MESSAGE!\nPage intentionally left blank."
	.section	.data.rel.local,"aw"
	.align 32
	.type	endmsg, @object
	.size	endmsg, 184
endmsg:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC10
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.quad	.LC14
	.quad	.LC15
	.quad	.LC16
	.quad	.LC17
	.quad	.LC18
	.quad	.LC19
	.quad	.LC20
	.zero	16
	.text
.Letext0:
	.file 1 "dstrings.c"
	.file 2 "dstrings.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x9c
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.Ldebug_line0
	.uleb128 0x1
	.long	0x41
	.long	0x2e
	.uleb128 0x2
	.long	0x33
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.long	0x1e
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x3
	.long	0x3a
	.uleb128 0x6
	.long	.LASF5
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.long	0x2e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x1
	.long	0x67
	.long	0x67
	.uleb128 0x7
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x3a
	.uleb128 0x9
	.long	.LASF6
	.byte	0x2
	.byte	0x3a
	.byte	0xe
	.long	0x5c
	.uleb128 0x1
	.long	0x67
	.long	0x89
	.uleb128 0x2
	.long	0x33
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.long	0x6d
	.byte	0x1
	.byte	0x23
	.byte	0x7
	.long	0x79
	.uleb128 0x9
	.byte	0x3
	.quad	endmsg
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
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
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"rcsid"
.LASF4:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF2:
	.string	"long unsigned int"
.LASF6:
	.string	"endmsg"
.LASF3:
	.string	"char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"dstrings.c"
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
