	.file	"m_menu.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "m_menu.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 49
rcsid:
	.string	"$Id: m_menu.c,v 1.7 1997/02/03 22:45:10 b1 Exp $"
	.globl	mouseSensitivity
	.bss
	.align 4
	.type	mouseSensitivity, @object
	.size	mouseSensitivity, 4
mouseSensitivity:
	.zero	4
	.globl	showMessages
	.align 4
	.type	showMessages, @object
	.size	showMessages, 4
showMessages:
	.zero	4
	.globl	detailLevel
	.align 4
	.type	detailLevel, @object
	.size	detailLevel, 4
detailLevel:
	.zero	4
	.globl	screenblocks
	.align 4
	.type	screenblocks, @object
	.size	screenblocks, 4
screenblocks:
	.zero	4
	.globl	screenSize
	.align 4
	.type	screenSize, @object
	.size	screenSize, 4
screenSize:
	.zero	4
	.globl	quickSaveSlot
	.align 4
	.type	quickSaveSlot, @object
	.size	quickSaveSlot, 4
quickSaveSlot:
	.zero	4
	.globl	messageToPrint
	.align 4
	.type	messageToPrint, @object
	.size	messageToPrint, 4
messageToPrint:
	.zero	4
	.globl	messageString
	.align 8
	.type	messageString, @object
	.size	messageString, 8
messageString:
	.zero	8
	.globl	messx
	.align 4
	.type	messx, @object
	.size	messx, 4
messx:
	.zero	4
	.globl	messy
	.align 4
	.type	messy, @object
	.size	messy, 4
messy:
	.zero	4
	.globl	messageLastMenuActive
	.align 4
	.type	messageLastMenuActive, @object
	.size	messageLastMenuActive, 4
messageLastMenuActive:
	.zero	4
	.globl	messageNeedsInput
	.align 4
	.type	messageNeedsInput, @object
	.size	messageNeedsInput, 4
messageNeedsInput:
	.zero	4
	.globl	messageRoutine
	.align 8
	.type	messageRoutine, @object
	.size	messageRoutine, 8
messageRoutine:
	.zero	8
	.globl	gammamsg
	.data
	.align 32
	.type	gammamsg, @object
	.size	gammamsg, 130
gammamsg:
	.string	"Gamma correction OFF"
	.zero	5
	.string	"Gamma correction level 1"
	.zero	1
	.string	"Gamma correction level 2"
	.zero	1
	.string	"Gamma correction level 3"
	.zero	1
	.string	"Gamma correction level 4"
	.zero	1
	.globl	saveStringEnter
	.bss
	.align 4
	.type	saveStringEnter, @object
	.size	saveStringEnter, 4
saveStringEnter:
	.zero	4
	.globl	saveSlot
	.align 4
	.type	saveSlot, @object
	.size	saveSlot, 4
saveSlot:
	.zero	4
	.globl	saveCharIndex
	.align 4
	.type	saveCharIndex, @object
	.size	saveCharIndex, 4
saveCharIndex:
	.zero	4
	.globl	saveOldString
	.align 16
	.type	saveOldString, @object
	.size	saveOldString, 24
saveOldString:
	.zero	24
	.globl	inhelpscreens
	.align 4
	.type	inhelpscreens, @object
	.size	inhelpscreens, 4
inhelpscreens:
	.zero	4
	.globl	menuactive
	.align 4
	.type	menuactive, @object
	.size	menuactive, 4
menuactive:
	.zero	4
	.globl	savegamestrings
	.align 32
	.type	savegamestrings, @object
	.size	savegamestrings, 240
savegamestrings:
	.zero	240
	.globl	endstring
	.align 32
	.type	endstring, @object
	.size	endstring, 160
endstring:
	.zero	160
	.globl	itemOn
	.align 2
	.type	itemOn, @object
	.size	itemOn, 2
itemOn:
	.zero	2
	.globl	skullAnimCounter
	.align 2
	.type	skullAnimCounter, @object
	.size	skullAnimCounter, 2
skullAnimCounter:
	.zero	2
	.globl	whichSkull
	.align 2
	.type	whichSkull, @object
	.size	whichSkull, 2
whichSkull:
	.zero	2
	.globl	skullName
	.data
	.align 16
	.type	skullName, @object
	.size	skullName, 18
skullName:
	.string	"M_SKULL1"
	.string	"M_SKULL2"
	.globl	currentMenu
	.bss
	.align 8
	.type	currentMenu, @object
	.size	currentMenu, 8
currentMenu:
	.zero	8
	.globl	main_e
	.align 4
	.type	main_e, @object
	.size	main_e, 4
main_e:
	.zero	4
	.globl	MainMenu
	.section	.data.rel.local,"aw"
	.align 32
	.type	MainMenu, @object
	.size	MainMenu, 192
MainMenu:
# status:
	.value	1
# name:
	.string	"M_NGAME"
	.zero	2
# routine:
	.zero	4
	.quad	M_NewGame
# alphaKey:
	.byte	110
	.zero	7
# status:
	.value	1
# name:
	.string	"M_OPTION"
	.zero	1
# routine:
	.zero	4
	.quad	M_Options
# alphaKey:
	.byte	111
	.zero	7
# status:
	.value	1
# name:
	.string	"M_LOADG"
	.zero	2
# routine:
	.zero	4
	.quad	M_LoadGame
# alphaKey:
	.byte	108
	.zero	7
# status:
	.value	1
# name:
	.string	"M_SAVEG"
	.zero	2
# routine:
	.zero	4
	.quad	M_SaveGame
# alphaKey:
	.byte	115
	.zero	7
# status:
	.value	1
# name:
	.string	"M_RDTHIS"
	.zero	1
# routine:
	.zero	4
	.quad	M_ReadThis
# alphaKey:
	.byte	114
	.zero	7
# status:
	.value	1
# name:
	.string	"M_QUITG"
	.zero	2
# routine:
	.zero	4
	.quad	M_QuitDOOM
# alphaKey:
	.byte	113
	.zero	7
	.globl	MainDef
	.align 32
	.type	MainDef, @object
	.size	MainDef, 40
MainDef:
# numitems:
	.value	6
# prevMenu:
	.zero	6
	.quad	0
# menuitems:
	.quad	MainMenu
# routine:
	.quad	M_DrawMainMenu
# x:
	.value	97
# y:
	.value	64
# lastOn:
	.value	0
	.zero	2
	.globl	episodes_e
	.bss
	.align 4
	.type	episodes_e, @object
	.size	episodes_e, 4
episodes_e:
	.zero	4
	.globl	EpisodeMenu
	.section	.data.rel.local
	.align 32
	.type	EpisodeMenu, @object
	.size	EpisodeMenu, 128
EpisodeMenu:
# status:
	.value	1
# name:
	.string	"M_EPI1"
	.zero	3
# routine:
	.zero	4
	.quad	M_Episode
# alphaKey:
	.byte	107
	.zero	7
# status:
	.value	1
# name:
	.string	"M_EPI2"
	.zero	3
# routine:
	.zero	4
	.quad	M_Episode
# alphaKey:
	.byte	116
	.zero	7
# status:
	.value	1
# name:
	.string	"M_EPI3"
	.zero	3
# routine:
	.zero	4
	.quad	M_Episode
# alphaKey:
	.byte	105
	.zero	7
# status:
	.value	1
# name:
	.string	"M_EPI4"
	.zero	3
# routine:
	.zero	4
	.quad	M_Episode
# alphaKey:
	.byte	116
	.zero	7
	.globl	EpiDef
	.align 32
	.type	EpiDef, @object
	.size	EpiDef, 40
EpiDef:
# numitems:
	.value	4
# prevMenu:
	.zero	6
	.quad	MainDef
# menuitems:
	.quad	EpisodeMenu
# routine:
	.quad	M_DrawEpisode
# x:
	.value	48
# y:
	.value	63
# lastOn:
	.value	0
	.zero	2
	.globl	newgame_e
	.bss
	.align 4
	.type	newgame_e, @object
	.size	newgame_e, 4
newgame_e:
	.zero	4
	.globl	NewGameMenu
	.section	.data.rel.local
	.align 32
	.type	NewGameMenu, @object
	.size	NewGameMenu, 160
NewGameMenu:
# status:
	.value	1
# name:
	.string	"M_JKILL"
	.zero	2
# routine:
	.zero	4
	.quad	M_ChooseSkill
# alphaKey:
	.byte	105
	.zero	7
# status:
	.value	1
# name:
	.string	"M_ROUGH"
	.zero	2
# routine:
	.zero	4
	.quad	M_ChooseSkill
# alphaKey:
	.byte	104
	.zero	7
# status:
	.value	1
# name:
	.string	"M_HURT"
	.zero	3
# routine:
	.zero	4
	.quad	M_ChooseSkill
# alphaKey:
	.byte	104
	.zero	7
# status:
	.value	1
# name:
	.string	"M_ULTRA"
	.zero	2
# routine:
	.zero	4
	.quad	M_ChooseSkill
# alphaKey:
	.byte	117
	.zero	7
# status:
	.value	1
# name:
	.string	"M_NMARE"
	.zero	2
# routine:
	.zero	4
	.quad	M_ChooseSkill
# alphaKey:
	.byte	110
	.zero	7
	.globl	NewDef
	.align 32
	.type	NewDef, @object
	.size	NewDef, 40
NewDef:
# numitems:
	.value	5
# prevMenu:
	.zero	6
	.quad	EpiDef
# menuitems:
	.quad	NewGameMenu
# routine:
	.quad	M_DrawNewGame
# x:
	.value	48
# y:
	.value	63
# lastOn:
	.value	2
	.zero	2
	.globl	options_e
	.bss
	.align 4
	.type	options_e, @object
	.size	options_e, 4
options_e:
	.zero	4
	.globl	OptionsMenu
	.section	.data.rel.local
	.align 32
	.type	OptionsMenu, @object
	.size	OptionsMenu, 256
OptionsMenu:
# status:
	.value	1
# name:
	.string	"M_ENDGAM"
	.zero	1
# routine:
	.zero	4
	.quad	M_EndGame
# alphaKey:
	.byte	101
	.zero	7
# status:
	.value	1
# name:
	.string	"M_MESSG"
	.zero	2
# routine:
	.zero	4
	.quad	M_ChangeMessages
# alphaKey:
	.byte	109
	.zero	7
# status:
	.value	1
# name:
	.string	"M_DETAIL"
	.zero	1
# routine:
	.zero	4
	.quad	M_ChangeDetail
# alphaKey:
	.byte	103
	.zero	7
# status:
	.value	2
# name:
	.string	"M_SCRNSZ"
	.zero	1
# routine:
	.zero	4
	.quad	M_SizeDisplay
# alphaKey:
	.byte	115
	.zero	7
# status:
	.value	-1
# name:
	.string	""
	.zero	9
# routine:
	.zero	4
	.quad	0
	.zero	8
# status:
	.value	2
# name:
	.string	"M_MSENS"
	.zero	2
# routine:
	.zero	4
	.quad	M_ChangeSensitivity
# alphaKey:
	.byte	109
	.zero	7
# status:
	.value	-1
# name:
	.string	""
	.zero	9
# routine:
	.zero	4
	.quad	0
	.zero	8
# status:
	.value	1
# name:
	.string	"M_SVOL"
	.zero	3
# routine:
	.zero	4
	.quad	M_Sound
# alphaKey:
	.byte	115
	.zero	7
	.globl	OptionsDef
	.align 32
	.type	OptionsDef, @object
	.size	OptionsDef, 40
OptionsDef:
# numitems:
	.value	8
# prevMenu:
	.zero	6
	.quad	MainDef
# menuitems:
	.quad	OptionsMenu
# routine:
	.quad	M_DrawOptions
# x:
	.value	60
# y:
	.value	37
# lastOn:
	.value	0
	.zero	2
	.globl	read_e
	.bss
	.align 4
	.type	read_e, @object
	.size	read_e, 4
read_e:
	.zero	4
	.globl	ReadMenu1
	.section	.data.rel.local
	.align 32
	.type	ReadMenu1, @object
	.size	ReadMenu1, 32
ReadMenu1:
# status:
	.value	1
# name:
	.string	""
	.zero	9
# routine:
	.zero	4
	.quad	M_ReadThis2
# alphaKey:
	.byte	0
	.zero	7
	.globl	ReadDef1
	.align 32
	.type	ReadDef1, @object
	.size	ReadDef1, 40
ReadDef1:
# numitems:
	.value	1
# prevMenu:
	.zero	6
	.quad	MainDef
# menuitems:
	.quad	ReadMenu1
# routine:
	.quad	M_DrawReadThis1
# x:
	.value	280
# y:
	.value	185
# lastOn:
	.value	0
	.zero	2
	.globl	read_e2
	.bss
	.align 4
	.type	read_e2, @object
	.size	read_e2, 4
read_e2:
	.zero	4
	.globl	ReadMenu2
	.section	.data.rel.local
	.align 32
	.type	ReadMenu2, @object
	.size	ReadMenu2, 32
ReadMenu2:
# status:
	.value	1
# name:
	.string	""
	.zero	9
# routine:
	.zero	4
	.quad	M_FinishReadThis
# alphaKey:
	.byte	0
	.zero	7
	.globl	ReadDef2
	.align 32
	.type	ReadDef2, @object
	.size	ReadDef2, 40
ReadDef2:
# numitems:
	.value	1
# prevMenu:
	.zero	6
	.quad	ReadDef1
# menuitems:
	.quad	ReadMenu2
# routine:
	.quad	M_DrawReadThis2
# x:
	.value	330
# y:
	.value	175
# lastOn:
	.value	0
	.zero	2
	.globl	sound_e
	.bss
	.align 4
	.type	sound_e, @object
	.size	sound_e, 4
sound_e:
	.zero	4
	.globl	SoundMenu
	.section	.data.rel.local
	.align 32
	.type	SoundMenu, @object
	.size	SoundMenu, 128
SoundMenu:
# status:
	.value	2
# name:
	.string	"M_SFXVOL"
	.zero	1
# routine:
	.zero	4
	.quad	M_SfxVol
# alphaKey:
	.byte	115
	.zero	7
# status:
	.value	-1
# name:
	.string	""
	.zero	9
# routine:
	.zero	4
	.quad	0
	.zero	8
# status:
	.value	2
# name:
	.string	"M_MUSVOL"
	.zero	1
# routine:
	.zero	4
	.quad	M_MusicVol
# alphaKey:
	.byte	109
	.zero	7
# status:
	.value	-1
# name:
	.string	""
	.zero	9
# routine:
	.zero	4
	.quad	0
	.zero	8
	.globl	SoundDef
	.align 32
	.type	SoundDef, @object
	.size	SoundDef, 40
SoundDef:
# numitems:
	.value	4
# prevMenu:
	.zero	6
	.quad	OptionsDef
# menuitems:
	.quad	SoundMenu
# routine:
	.quad	M_DrawSound
# x:
	.value	80
# y:
	.value	64
# lastOn:
	.value	0
	.zero	2
	.globl	load_e
	.bss
	.align 4
	.type	load_e, @object
	.size	load_e, 4
load_e:
	.zero	4
	.globl	LoadMenu
	.section	.data.rel.local
	.align 32
	.type	LoadMenu, @object
	.size	LoadMenu, 192
LoadMenu:
# status:
	.value	1
# name:
	.string	""
	.zero	9
# routine:
	.zero	4
	.quad	M_LoadSelect
# alphaKey:
	.byte	49
	.zero	7
# status:
	.value	1
# name:
	.string	""
	.zero	9
# routine:
	.zero	4
	.quad	M_LoadSelect
# alphaKey:
	.byte	50
	.zero	7
# status:
	.value	1
# name:
	.string	""
	.zero	9
# routine:
	.zero	4
	.quad	M_LoadSelect
# alphaKey:
	.byte	51
	.zero	7
# status:
	.value	1
# name:
	.string	""
	.zero	9
# routine:
	.zero	4
	.quad	M_LoadSelect
# alphaKey:
	.byte	52
	.zero	7
# status:
	.value	1
# name:
	.string	""
	.zero	9
# routine:
	.zero	4
	.quad	M_LoadSelect
# alphaKey:
	.byte	53
	.zero	7
# status:
	.value	1
# name:
	.string	""
	.zero	9
# routine:
	.zero	4
	.quad	M_LoadSelect
# alphaKey:
	.byte	54
	.zero	7
	.globl	LoadDef
	.align 32
	.type	LoadDef, @object
	.size	LoadDef, 40
LoadDef:
# numitems:
	.value	6
# prevMenu:
	.zero	6
	.quad	MainDef
# menuitems:
	.quad	LoadMenu
# routine:
	.quad	M_DrawLoad
# x:
	.value	80
# y:
	.value	54
# lastOn:
	.value	0
	.zero	2
	.globl	SaveMenu
	.align 32
	.type	SaveMenu, @object
	.size	SaveMenu, 192
SaveMenu:
# status:
	.value	1
# name:
	.string	""
	.zero	9
# routine:
	.zero	4
	.quad	M_SaveSelect
# alphaKey:
	.byte	49
	.zero	7
# status:
	.value	1
# name:
	.string	""
	.zero	9
# routine:
	.zero	4
	.quad	M_SaveSelect
# alphaKey:
	.byte	50
	.zero	7
# status:
	.value	1
# name:
	.string	""
	.zero	9
# routine:
	.zero	4
	.quad	M_SaveSelect
# alphaKey:
	.byte	51
	.zero	7
# status:
	.value	1
# name:
	.string	""
	.zero	9
# routine:
	.zero	4
	.quad	M_SaveSelect
# alphaKey:
	.byte	52
	.zero	7
# status:
	.value	1
# name:
	.string	""
	.zero	9
# routine:
	.zero	4
	.quad	M_SaveSelect
# alphaKey:
	.byte	53
	.zero	7
# status:
	.value	1
# name:
	.string	""
	.zero	9
# routine:
	.zero	4
	.quad	M_SaveSelect
# alphaKey:
	.byte	54
	.zero	7
	.globl	SaveDef
	.align 32
	.type	SaveDef, @object
	.size	SaveDef, 40
SaveDef:
# numitems:
	.value	6
# prevMenu:
	.zero	6
	.quad	MainDef
# menuitems:
	.quad	SaveMenu
# routine:
	.quad	M_DrawSave
# x:
	.value	80
# y:
	.value	54
# lastOn:
	.value	0
	.zero	2
	.section	.rodata
.LC0:
	.string	"-cdrom"
.LC1:
	.string	"c:\\doomdata\\doomsav%d.dsg"
.LC2:
	.string	"doomsav%d.dsg"
	.text
	.globl	M_ReadSaveStrings
	.type	M_ReadSaveStrings, @function
M_ReadSaveStrings:
.LFB6:
	.file 1 "m_menu.c"
	.loc 1 512 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$288, %rsp	#,
# m_menu.c:512: {
	.loc 1 512 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp115
	movq	%rax, -8(%rbp)	# tmp115, D.9385
	xorl	%eax, %eax	# tmp115
# m_menu.c:518:     for (i = 0;i < load_end;i++)
	.loc 1 518 12
	movl	$0, -284(%rbp)	#, i
# m_menu.c:518:     for (i = 0;i < load_end;i++)
	.loc 1 518 5
	jmp	.L2	#
.L7:
# m_menu.c:520: 	if (M_CheckParm("-cdrom"))
	.loc 1 520 6
	leaq	.LC0(%rip), %rax	#, tmp86
	movq	%rax, %rdi	# tmp86,
	call	M_CheckParm@PLT	#
# m_menu.c:520: 	if (M_CheckParm("-cdrom"))
	.loc 1 520 5 discriminator 1
	testl	%eax, %eax	# _1
	je	.L3	#,
# m_menu.c:521: 	    sprintf(name,"c:\\doomdata\\"SAVEGAMENAME"%d.dsg",i);
	.loc 1 521 6
	movl	-284(%rbp), %edx	# i, tmp87
	leaq	-272(%rbp), %rax	#, tmp88
	leaq	.LC1(%rip), %rcx	#, tmp89
	movq	%rcx, %rsi	# tmp89,
	movq	%rax, %rdi	# tmp88,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
	jmp	.L4	#
.L3:
# m_menu.c:523: 	    sprintf(name,SAVEGAMENAME"%d.dsg",i);
	.loc 1 523 6
	movl	-284(%rbp), %edx	# i, tmp90
	leaq	-272(%rbp), %rax	#, tmp91
	leaq	.LC2(%rip), %rcx	#, tmp92
	movq	%rcx, %rsi	# tmp92,
	movq	%rax, %rdi	# tmp91,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
.L4:
# m_menu.c:525: 	handle = open (name, O_RDONLY | 0, 0666);
	.loc 1 525 11
	leaq	-272(%rbp), %rax	#, tmp93
	movl	$438, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp93,
	movl	$0, %eax	#,
	call	open@PLT	#
	movl	%eax, -280(%rbp)	# tmp94, handle
# m_menu.c:526: 	if (handle == -1)
	.loc 1 526 5
	cmpl	$-1, -280(%rbp)	#, handle
	jne	.L5	#,
# m_menu.c:528: 	    strcpy(&savegamestrings[i][0],EMPTYSTRING);
	.loc 1 528 6
	movl	-284(%rbp), %eax	# i, tmp96
	movslq	%eax, %rdx	# tmp96, tmp95
	movq	%rdx, %rax	# tmp95, tmp97
	addq	%rax, %rax	# tmp97
	addq	%rdx, %rax	# tmp95, tmp97
	salq	$3, %rax	#, tmp98
	leaq	savegamestrings(%rip), %rdx	#, tmp99
	addq	%rdx, %rax	# tmp99, _2
	movabsq	$7814625484434599269, %rsi	#, tmp118
	movq	%rsi, (%rax)	# tmp118, MEM <char[1:11]> [(void *)_2]
	movl	$7630700, 7(%rax)	#, MEM <char[1:11]> [(void *)_2]
# m_menu.c:529: 	    LoadMenu[i].status = 0;
	.loc 1 529 25
	movl	-284(%rbp), %eax	# i, tmp101
	cltq
	salq	$5, %rax	#, tmp100
	movq	%rax, %rdx	# tmp100, tmp102
	leaq	LoadMenu(%rip), %rax	#, tmp103
	movw	$0, (%rdx,%rax)	#, LoadMenu[i_5].status
# m_menu.c:530: 	    continue;
	.loc 1 530 6
	jmp	.L6	#
.L5:
# m_menu.c:532: 	count = read (handle, &savegamestrings[i], SAVESTRINGSIZE);
	.loc 1 532 24
	movl	-284(%rbp), %eax	# i, tmp105
	movslq	%eax, %rdx	# tmp105, tmp104
	movq	%rdx, %rax	# tmp104, tmp106
	addq	%rax, %rax	# tmp106
	addq	%rdx, %rax	# tmp104, tmp106
	salq	$3, %rax	#, tmp107
	leaq	savegamestrings(%rip), %rdx	#, tmp108
	leaq	(%rax,%rdx), %rcx	#, _3
# m_menu.c:532: 	count = read (handle, &savegamestrings[i], SAVESTRINGSIZE);
	.loc 1 532 10
	movl	-280(%rbp), %eax	# handle, tmp109
	movl	$24, %edx	#,
	movq	%rcx, %rsi	# _3,
	movl	%eax, %edi	# tmp109,
	call	read@PLT	#
# m_menu.c:532: 	count = read (handle, &savegamestrings[i], SAVESTRINGSIZE);
	.loc 1 532 8 discriminator 1
	movl	%eax, -276(%rbp)	# _4, count
# m_menu.c:533: 	close (handle);
	.loc 1 533 2
	movl	-280(%rbp), %eax	# handle, tmp110
	movl	%eax, %edi	# tmp110,
	call	close@PLT	#
# m_menu.c:534: 	LoadMenu[i].status = 1;
	.loc 1 534 21
	movl	-284(%rbp), %eax	# i, tmp112
	cltq
	salq	$5, %rax	#, tmp111
	movq	%rax, %rdx	# tmp111, tmp113
	leaq	LoadMenu(%rip), %rax	#, tmp114
	movw	$1, (%rdx,%rax)	#, LoadMenu[i_5].status
.L6:
# m_menu.c:518:     for (i = 0;i < load_end;i++)
	.loc 1 518 30 discriminator 2
	addl	$1, -284(%rbp)	#, i
.L2:
# m_menu.c:518:     for (i = 0;i < load_end;i++)
	.loc 1 518 18 discriminator 1
	cmpl	$5, -284(%rbp)	#, i
	jle	.L7	#,
# m_menu.c:536: }
	.loc 1 536 1
	nop	
	movq	-8(%rbp), %rax	# D.9385, tmp116
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp116
	je	.L8	#,
	call	__stack_chk_fail@PLT	#
.L8:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	M_ReadSaveStrings, .-M_ReadSaveStrings
	.section	.rodata
.LC3:
	.string	"M_LOADG"
	.text
	.globl	M_DrawLoad
	.type	M_DrawLoad, @function
M_DrawLoad:
.LFB7:
	.loc 1 543 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# m_menu.c:546:     V_DrawPatchDirect (72,28,0,W_CacheLumpName("M_LOADG",PU_CACHE));
	.loc 1 546 32
	movl	$101, %esi	#,
	leaq	.LC3(%rip), %rax	#, tmp96
	movq	%rax, %rdi	# tmp96,
	call	W_CacheLumpName@PLT	#
# m_menu.c:546:     V_DrawPatchDirect (72,28,0,W_CacheLumpName("M_LOADG",PU_CACHE));
	.loc 1 546 5 discriminator 1
	movq	%rax, %rcx	# _1,
	movl	$0, %edx	#,
	movl	$28, %esi	#,
	movl	$72, %edi	#,
	call	V_DrawPatchDirect@PLT	#
# m_menu.c:547:     for (i = 0;i < load_end; i++)
	.loc 1 547 12
	movl	$0, -4(%rbp)	#, i
# m_menu.c:547:     for (i = 0;i < load_end; i++)
	.loc 1 547 5
	jmp	.L10	#
.L11:
# m_menu.c:549: 	M_DrawSaveLoadBorder(LoadDef.x,LoadDef.y+LINEHEIGHT*i);
	.loc 1 549 40
	movzwl	34+LoadDef(%rip), %eax	# LoadDef.y, _2
	cwtl
# m_menu.c:549: 	M_DrawSaveLoadBorder(LoadDef.x,LoadDef.y+LINEHEIGHT*i);
	.loc 1 549 53
	movl	-4(%rbp), %edx	# i, tmp97
	sall	$4, %edx	#, _4
# m_menu.c:549: 	M_DrawSaveLoadBorder(LoadDef.x,LoadDef.y+LINEHEIGHT*i);
	.loc 1 549 2
	addl	%eax, %edx	# _3, _5
# m_menu.c:549: 	M_DrawSaveLoadBorder(LoadDef.x,LoadDef.y+LINEHEIGHT*i);
	.loc 1 549 30
	movzwl	32+LoadDef(%rip), %eax	# LoadDef.x, _6
# m_menu.c:549: 	M_DrawSaveLoadBorder(LoadDef.x,LoadDef.y+LINEHEIGHT*i);
	.loc 1 549 2
	cwtl
	movl	%edx, %esi	# _5,
	movl	%eax, %edi	# _7,
	call	M_DrawSaveLoadBorder	#
# m_menu.c:550: 	M_WriteText(LoadDef.x,LoadDef.y+LINEHEIGHT*i,savegamestrings[i]);
	.loc 1 550 62
	movl	-4(%rbp), %eax	# i, tmp99
	movslq	%eax, %rdx	# tmp99, tmp98
	movq	%rdx, %rax	# tmp98, tmp100
	addq	%rax, %rax	# tmp100
	addq	%rdx, %rax	# tmp98, tmp100
	salq	$3, %rax	#, tmp101
	leaq	savegamestrings(%rip), %rdx	#, tmp102
	addq	%rax, %rdx	# tmp100, _8
# m_menu.c:550: 	M_WriteText(LoadDef.x,LoadDef.y+LINEHEIGHT*i,savegamestrings[i]);
	.loc 1 550 31
	movzwl	34+LoadDef(%rip), %eax	# LoadDef.y, _9
	cwtl
# m_menu.c:550: 	M_WriteText(LoadDef.x,LoadDef.y+LINEHEIGHT*i,savegamestrings[i]);
	.loc 1 550 44
	movl	-4(%rbp), %ecx	# i, tmp103
	sall	$4, %ecx	#, _11
# m_menu.c:550: 	M_WriteText(LoadDef.x,LoadDef.y+LINEHEIGHT*i,savegamestrings[i]);
	.loc 1 550 2
	addl	%eax, %ecx	# _10, _12
# m_menu.c:550: 	M_WriteText(LoadDef.x,LoadDef.y+LINEHEIGHT*i,savegamestrings[i]);
	.loc 1 550 21
	movzwl	32+LoadDef(%rip), %eax	# LoadDef.x, _13
# m_menu.c:550: 	M_WriteText(LoadDef.x,LoadDef.y+LINEHEIGHT*i,savegamestrings[i]);
	.loc 1 550 2
	cwtl
	movl	%ecx, %esi	# _12,
	movl	%eax, %edi	# _14,
	call	M_WriteText	#
# m_menu.c:547:     for (i = 0;i < load_end; i++)
	.loc 1 547 31 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L10:
# m_menu.c:547:     for (i = 0;i < load_end; i++)
	.loc 1 547 18 discriminator 1
	cmpl	$5, -4(%rbp)	#, i
	jle	.L11	#,
# m_menu.c:552: }
	.loc 1 552 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	M_DrawLoad, .-M_DrawLoad
	.section	.rodata
.LC4:
	.string	"M_LSLEFT"
.LC5:
	.string	"M_LSCNTR"
.LC6:
	.string	"M_LSRGHT"
	.text
	.globl	M_DrawSaveLoadBorder
	.type	M_DrawSaveLoadBorder, @function
M_DrawSaveLoadBorder:
.LFB8:
	.loc 1 560 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# x, x
	movl	%esi, -24(%rbp)	# y, y
# m_menu.c:563:     V_DrawPatchDirect (x-8,y+7,0,W_CacheLumpName("M_LSLEFT",PU_CACHE));
	.loc 1 563 34
	movl	$101, %esi	#,
	leaq	.LC4(%rip), %rax	#, tmp89
	movq	%rax, %rdi	# tmp89,
	call	W_CacheLumpName@PLT	#
	movq	%rax, %rdx	#, _1
# m_menu.c:563:     V_DrawPatchDirect (x-8,y+7,0,W_CacheLumpName("M_LSLEFT",PU_CACHE));
	.loc 1 563 5 discriminator 1
	movl	-24(%rbp), %eax	# y, tmp90
	leal	7(%rax), %esi	#, _2
	movl	-20(%rbp), %eax	# x, tmp91
	subl	$8, %eax	#, _3
	movq	%rdx, %rcx	# _1,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _3,
	call	V_DrawPatchDirect@PLT	#
# m_menu.c:565:     for (i = 0;i < 24;i++)
	.loc 1 565 12
	movl	$0, -4(%rbp)	#, i
# m_menu.c:565:     for (i = 0;i < 24;i++)
	.loc 1 565 5
	jmp	.L13	#
.L14:
# m_menu.c:567: 	V_DrawPatchDirect (x,y+7,0,W_CacheLumpName("M_LSCNTR",PU_CACHE));
	.loc 1 567 29
	movl	$101, %esi	#,
	leaq	.LC5(%rip), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	call	W_CacheLumpName@PLT	#
	movq	%rax, %rdx	#, _4
# m_menu.c:567: 	V_DrawPatchDirect (x,y+7,0,W_CacheLumpName("M_LSCNTR",PU_CACHE));
	.loc 1 567 2 discriminator 1
	movl	-24(%rbp), %eax	# y, tmp93
	leal	7(%rax), %esi	#, _5
	movl	-20(%rbp), %eax	# x, tmp94
	movq	%rdx, %rcx	# _4,
	movl	$0, %edx	#,
	movl	%eax, %edi	# tmp94,
	call	V_DrawPatchDirect@PLT	#
# m_menu.c:568: 	x += 8;
	.loc 1 568 4
	addl	$8, -20(%rbp)	#, x
# m_menu.c:565:     for (i = 0;i < 24;i++)
	.loc 1 565 24 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L13:
# m_menu.c:565:     for (i = 0;i < 24;i++)
	.loc 1 565 18 discriminator 1
	cmpl	$23, -4(%rbp)	#, i
	jle	.L14	#,
# m_menu.c:571:     V_DrawPatchDirect (x,y+7,0,W_CacheLumpName("M_LSRGHT",PU_CACHE));
	.loc 1 571 32
	movl	$101, %esi	#,
	leaq	.LC6(%rip), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	W_CacheLumpName@PLT	#
	movq	%rax, %rdx	#, _6
# m_menu.c:571:     V_DrawPatchDirect (x,y+7,0,W_CacheLumpName("M_LSRGHT",PU_CACHE));
	.loc 1 571 5 discriminator 1
	movl	-24(%rbp), %eax	# y, tmp96
	leal	7(%rax), %esi	#, _7
	movl	-20(%rbp), %eax	# x, tmp97
	movq	%rdx, %rcx	# _6,
	movl	$0, %edx	#,
	movl	%eax, %edi	# tmp97,
	call	V_DrawPatchDirect@PLT	#
# m_menu.c:572: }
	.loc 1 572 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	M_DrawSaveLoadBorder, .-M_DrawSaveLoadBorder
	.globl	M_LoadSelect
	.type	M_LoadSelect, @function
M_LoadSelect:
.LFB9:
	.loc 1 580 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$288, %rsp	#,
	movl	%edi, -276(%rbp)	# choice, choice
# m_menu.c:580: {
	.loc 1 580 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp91
	movq	%rax, -8(%rbp)	# tmp91, D.9394
	xorl	%eax, %eax	# tmp91
# m_menu.c:583:     if (M_CheckParm("-cdrom"))
	.loc 1 583 9
	leaq	.LC0(%rip), %rax	#, tmp83
	movq	%rax, %rdi	# tmp83,
	call	M_CheckParm@PLT	#
# m_menu.c:583:     if (M_CheckParm("-cdrom"))
	.loc 1 583 8 discriminator 1
	testl	%eax, %eax	# _1
	je	.L16	#,
# m_menu.c:584: 	sprintf(name,"c:\\doomdata\\"SAVEGAMENAME"%d.dsg",choice);
	.loc 1 584 2
	movl	-276(%rbp), %edx	# choice, tmp84
	leaq	-272(%rbp), %rax	#, tmp85
	leaq	.LC1(%rip), %rcx	#, tmp86
	movq	%rcx, %rsi	# tmp86,
	movq	%rax, %rdi	# tmp85,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
	jmp	.L17	#
.L16:
# m_menu.c:586: 	sprintf(name,SAVEGAMENAME"%d.dsg",choice);
	.loc 1 586 2
	movl	-276(%rbp), %edx	# choice, tmp87
	leaq	-272(%rbp), %rax	#, tmp88
	leaq	.LC2(%rip), %rcx	#, tmp89
	movq	%rcx, %rsi	# tmp89,
	movq	%rax, %rdi	# tmp88,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
.L17:
# m_menu.c:587:     G_LoadGame (name);
	.loc 1 587 5
	leaq	-272(%rbp), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	call	G_LoadGame@PLT	#
# m_menu.c:588:     M_ClearMenus ();
	.loc 1 588 5
	call	M_ClearMenus	#
# m_menu.c:589: }
	.loc 1 589 1
	nop	
	movq	-8(%rbp), %rax	# D.9394, tmp92
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp92
	je	.L18	#,
	call	__stack_chk_fail@PLT	#
.L18:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	M_LoadSelect, .-M_LoadSelect
	.section	.rodata
	.align 8
.LC7:
	.string	"you can't do load while in a net game!\n\npress a key."
	.text
	.globl	M_LoadGame
	.type	M_LoadGame, @function
M_LoadGame:
.LFB10:
	.loc 1 595 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# choice, choice
# m_menu.c:596:     if (netgame)
	.loc 1 596 9
	movl	netgame(%rip), %eax	# netgame, netgame.0_1
# m_menu.c:596:     if (netgame)
	.loc 1 596 8
	testl	%eax, %eax	# netgame.0_1
	je	.L20	#,
# m_menu.c:598: 	M_StartMessage(LOADNET,NULL,false);
	.loc 1 598 2
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	leaq	.LC7(%rip), %rax	#, tmp83
	movq	%rax, %rdi	# tmp83,
	call	M_StartMessage	#
# m_menu.c:599: 	return;
	.loc 1 599 2
	jmp	.L19	#
.L20:
# m_menu.c:602:     M_SetupNextMenu(&LoadDef);
	.loc 1 602 5
	leaq	LoadDef(%rip), %rax	#, tmp84
	movq	%rax, %rdi	# tmp84,
	call	M_SetupNextMenu	#
# m_menu.c:603:     M_ReadSaveStrings();
	.loc 1 603 5
	call	M_ReadSaveStrings	#
.L19:
# m_menu.c:604: }
	.loc 1 604 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	M_LoadGame, .-M_LoadGame
	.section	.rodata
.LC8:
	.string	"M_SAVEG"
.LC9:
	.string	"_"
	.text
	.globl	M_DrawSave
	.type	M_DrawSave, @function
M_DrawSave:
.LFB11:
	.loc 1 611 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# m_menu.c:614:     V_DrawPatchDirect (72,28,0,W_CacheLumpName("M_SAVEG",PU_CACHE));
	.loc 1 614 32
	movl	$101, %esi	#,
	leaq	.LC8(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	W_CacheLumpName@PLT	#
# m_menu.c:614:     V_DrawPatchDirect (72,28,0,W_CacheLumpName("M_SAVEG",PU_CACHE));
	.loc 1 614 5 discriminator 1
	movq	%rax, %rcx	# _1,
	movl	$0, %edx	#,
	movl	$28, %esi	#,
	movl	$72, %edi	#,
	call	V_DrawPatchDirect@PLT	#
# m_menu.c:615:     for (i = 0;i < load_end; i++)
	.loc 1 615 12
	movl	$0, -4(%rbp)	#, i
# m_menu.c:615:     for (i = 0;i < load_end; i++)
	.loc 1 615 5
	jmp	.L23	#
.L24:
# m_menu.c:617: 	M_DrawSaveLoadBorder(LoadDef.x,LoadDef.y+LINEHEIGHT*i);
	.loc 1 617 40
	movzwl	34+LoadDef(%rip), %eax	# LoadDef.y, _2
	cwtl
# m_menu.c:617: 	M_DrawSaveLoadBorder(LoadDef.x,LoadDef.y+LINEHEIGHT*i);
	.loc 1 617 53
	movl	-4(%rbp), %edx	# i, tmp108
	sall	$4, %edx	#, _4
# m_menu.c:617: 	M_DrawSaveLoadBorder(LoadDef.x,LoadDef.y+LINEHEIGHT*i);
	.loc 1 617 2
	addl	%eax, %edx	# _3, _5
# m_menu.c:617: 	M_DrawSaveLoadBorder(LoadDef.x,LoadDef.y+LINEHEIGHT*i);
	.loc 1 617 30
	movzwl	32+LoadDef(%rip), %eax	# LoadDef.x, _6
# m_menu.c:617: 	M_DrawSaveLoadBorder(LoadDef.x,LoadDef.y+LINEHEIGHT*i);
	.loc 1 617 2
	cwtl
	movl	%edx, %esi	# _5,
	movl	%eax, %edi	# _7,
	call	M_DrawSaveLoadBorder	#
# m_menu.c:618: 	M_WriteText(LoadDef.x,LoadDef.y+LINEHEIGHT*i,savegamestrings[i]);
	.loc 1 618 62
	movl	-4(%rbp), %eax	# i, tmp110
	movslq	%eax, %rdx	# tmp110, tmp109
	movq	%rdx, %rax	# tmp109, tmp111
	addq	%rax, %rax	# tmp111
	addq	%rdx, %rax	# tmp109, tmp111
	salq	$3, %rax	#, tmp112
	leaq	savegamestrings(%rip), %rdx	#, tmp113
	addq	%rax, %rdx	# tmp111, _8
# m_menu.c:618: 	M_WriteText(LoadDef.x,LoadDef.y+LINEHEIGHT*i,savegamestrings[i]);
	.loc 1 618 31
	movzwl	34+LoadDef(%rip), %eax	# LoadDef.y, _9
	cwtl
# m_menu.c:618: 	M_WriteText(LoadDef.x,LoadDef.y+LINEHEIGHT*i,savegamestrings[i]);
	.loc 1 618 44
	movl	-4(%rbp), %ecx	# i, tmp114
	sall	$4, %ecx	#, _11
# m_menu.c:618: 	M_WriteText(LoadDef.x,LoadDef.y+LINEHEIGHT*i,savegamestrings[i]);
	.loc 1 618 2
	addl	%eax, %ecx	# _10, _12
# m_menu.c:618: 	M_WriteText(LoadDef.x,LoadDef.y+LINEHEIGHT*i,savegamestrings[i]);
	.loc 1 618 21
	movzwl	32+LoadDef(%rip), %eax	# LoadDef.x, _13
# m_menu.c:618: 	M_WriteText(LoadDef.x,LoadDef.y+LINEHEIGHT*i,savegamestrings[i]);
	.loc 1 618 2
	cwtl
	movl	%ecx, %esi	# _12,
	movl	%eax, %edi	# _14,
	call	M_WriteText	#
# m_menu.c:615:     for (i = 0;i < load_end; i++)
	.loc 1 615 31 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L23:
# m_menu.c:615:     for (i = 0;i < load_end; i++)
	.loc 1 615 18 discriminator 1
	cmpl	$5, -4(%rbp)	#, i
	jle	.L24	#,
# m_menu.c:621:     if (saveStringEnter)
	.loc 1 621 9
	movl	saveStringEnter(%rip), %eax	# saveStringEnter, saveStringEnter.1_15
# m_menu.c:621:     if (saveStringEnter)
	.loc 1 621 8
	testl	%eax, %eax	# saveStringEnter.1_15
	je	.L26	#,
# m_menu.c:623: 	i = M_StringWidth(savegamestrings[saveSlot]);
	.loc 1 623 35
	movl	saveSlot(%rip), %eax	# saveSlot, saveSlot.2_16
	movslq	%eax, %rdx	# saveSlot.2_16, tmp115
	movq	%rdx, %rax	# tmp115, tmp116
	addq	%rax, %rax	# tmp116
	addq	%rdx, %rax	# tmp115, tmp116
	salq	$3, %rax	#, tmp117
	leaq	savegamestrings(%rip), %rdx	#, tmp118
	addq	%rdx, %rax	# tmp118, _17
# m_menu.c:623: 	i = M_StringWidth(savegamestrings[saveSlot]);
	.loc 1 623 6
	movq	%rax, %rdi	# _17,
	call	M_StringWidth	#
	movl	%eax, -4(%rbp)	# tmp119, i
# m_menu.c:624: 	M_WriteText(LoadDef.x + i,LoadDef.y+LINEHEIGHT*saveSlot,"_");
	.loc 1 624 35
	movzwl	34+LoadDef(%rip), %eax	# LoadDef.y, _18
	cwtl
# m_menu.c:624: 	M_WriteText(LoadDef.x + i,LoadDef.y+LINEHEIGHT*saveSlot,"_");
	.loc 1 624 48
	movl	saveSlot(%rip), %edx	# saveSlot, saveSlot.3_20
	sall	$4, %edx	#, _21
# m_menu.c:624: 	M_WriteText(LoadDef.x + i,LoadDef.y+LINEHEIGHT*saveSlot,"_");
	.loc 1 624 2
	leal	(%rax,%rdx), %ecx	#, _22
# m_menu.c:624: 	M_WriteText(LoadDef.x + i,LoadDef.y+LINEHEIGHT*saveSlot,"_");
	.loc 1 624 21
	movzwl	32+LoadDef(%rip), %eax	# LoadDef.x, _23
	movswl	%ax, %edx	# _23, _24
# m_menu.c:624: 	M_WriteText(LoadDef.x + i,LoadDef.y+LINEHEIGHT*saveSlot,"_");
	.loc 1 624 2
	movl	-4(%rbp), %eax	# i, tmp120
	addl	%edx, %eax	# _24, _25
	leaq	.LC9(%rip), %rdx	#, tmp121
	movl	%ecx, %esi	# _22,
	movl	%eax, %edi	# _25,
	call	M_WriteText	#
.L26:
# m_menu.c:626: }
	.loc 1 626 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	M_DrawSave, .-M_DrawSave
	.globl	M_DoSave
	.type	M_DoSave, @function
M_DoSave:
.LFB12:
	.loc 1 632 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# slot, slot
# m_menu.c:633:     G_SaveGame (slot,savegamestrings[slot]);
	.loc 1 633 37
	movl	-4(%rbp), %eax	# slot, tmp85
	movslq	%eax, %rdx	# tmp85, tmp84
	movq	%rdx, %rax	# tmp84, tmp86
	addq	%rax, %rax	# tmp86
	addq	%rdx, %rax	# tmp84, tmp86
	salq	$3, %rax	#, tmp87
	leaq	savegamestrings(%rip), %rdx	#, tmp88
	addq	%rax, %rdx	# tmp86, _1
# m_menu.c:633:     G_SaveGame (slot,savegamestrings[slot]);
	.loc 1 633 5
	movl	-4(%rbp), %eax	# slot, tmp89
	movq	%rdx, %rsi	# _1,
	movl	%eax, %edi	# tmp89,
	call	G_SaveGame@PLT	#
# m_menu.c:634:     M_ClearMenus ();
	.loc 1 634 5
	call	M_ClearMenus	#
# m_menu.c:637:     if (quickSaveSlot == -2)
	.loc 1 637 23
	movl	quickSaveSlot(%rip), %eax	# quickSaveSlot, quickSaveSlot.4_2
# m_menu.c:637:     if (quickSaveSlot == -2)
	.loc 1 637 8
	cmpl	$-2, %eax	#, quickSaveSlot.4_2
	jne	.L29	#,
# m_menu.c:638: 	quickSaveSlot = slot;
	.loc 1 638 16
	movl	-4(%rbp), %eax	# slot, tmp90
	movl	%eax, quickSaveSlot(%rip)	# tmp90, quickSaveSlot
.L29:
# m_menu.c:639: }
	.loc 1 639 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	M_DoSave, .-M_DoSave
	.section	.rodata
.LC10:
	.string	"empty slot"
	.text
	.globl	M_SaveSelect
	.type	M_SaveSelect, @function
M_SaveSelect:
.LFB13:
	.loc 1 645 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# choice, choice
# m_menu.c:647:     saveStringEnter = 1;
	.loc 1 647 21
	movl	$1, saveStringEnter(%rip)	#, saveStringEnter
# m_menu.c:649:     saveSlot = choice;
	.loc 1 649 14
	movl	-4(%rbp), %eax	# choice, tmp88
	movl	%eax, saveSlot(%rip)	# tmp88, saveSlot
# m_menu.c:650:     strcpy(saveOldString,savegamestrings[choice]);
	.loc 1 650 41
	movl	-4(%rbp), %eax	# choice, tmp90
	movslq	%eax, %rdx	# tmp90, tmp89
	movq	%rdx, %rax	# tmp89, tmp91
	addq	%rax, %rax	# tmp91
	addq	%rdx, %rax	# tmp89, tmp91
	salq	$3, %rax	#, tmp92
	leaq	savegamestrings(%rip), %rdx	#, tmp93
	addq	%rdx, %rax	# tmp93, _1
# m_menu.c:650:     strcpy(saveOldString,savegamestrings[choice]);
	.loc 1 650 5
	movq	%rax, %rsi	# _1,
	leaq	saveOldString(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	strcpy@PLT	#
# m_menu.c:651:     if (!strcmp(savegamestrings[choice],EMPTYSTRING))
	.loc 1 651 32
	movl	-4(%rbp), %eax	# choice, tmp96
	movslq	%eax, %rdx	# tmp96, tmp95
	movq	%rdx, %rax	# tmp95, tmp97
	addq	%rax, %rax	# tmp97
	addq	%rdx, %rax	# tmp95, tmp97
	salq	$3, %rax	#, tmp98
	leaq	savegamestrings(%rip), %rdx	#, tmp99
	addq	%rdx, %rax	# tmp99, _2
# m_menu.c:651:     if (!strcmp(savegamestrings[choice],EMPTYSTRING))
	.loc 1 651 10
	leaq	.LC10(%rip), %rdx	#, tmp100
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# _2,
	call	strcmp@PLT	#
# m_menu.c:651:     if (!strcmp(savegamestrings[choice],EMPTYSTRING))
	.loc 1 651 8 discriminator 1
	testl	%eax, %eax	# _3
	jne	.L31	#,
# m_menu.c:652: 	savegamestrings[choice][0] = 0;
	.loc 1 652 29
	movl	-4(%rbp), %eax	# choice, tmp102
	movslq	%eax, %rdx	# tmp102, tmp101
	movq	%rdx, %rax	# tmp101, tmp104
	addq	%rax, %rax	# tmp104
	addq	%rdx, %rax	# tmp101, tmp104
	salq	$3, %rax	#, tmp105
	movq	%rax, %rdx	# tmp104, tmp103
	leaq	savegamestrings(%rip), %rax	#, tmp106
	movb	$0, (%rdx,%rax)	#, savegamestrings[choice_10(D)][0]
.L31:
# m_menu.c:653:     saveCharIndex = strlen(savegamestrings[choice]);
	.loc 1 653 43
	movl	-4(%rbp), %eax	# choice, tmp108
	movslq	%eax, %rdx	# tmp108, tmp107
	movq	%rdx, %rax	# tmp107, tmp109
	addq	%rax, %rax	# tmp109
	addq	%rdx, %rax	# tmp107, tmp109
	salq	$3, %rax	#, tmp110
	leaq	savegamestrings(%rip), %rdx	#, tmp111
	addq	%rdx, %rax	# tmp111, _4
# m_menu.c:653:     saveCharIndex = strlen(savegamestrings[choice]);
	.loc 1 653 21
	movq	%rax, %rdi	# _4,
	call	strlen@PLT	#
# m_menu.c:653:     saveCharIndex = strlen(savegamestrings[choice]);
	.loc 1 653 19 discriminator 1
	movl	%eax, saveCharIndex(%rip)	# _6, saveCharIndex
# m_menu.c:654: }
	.loc 1 654 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE13:
	.size	M_SaveSelect, .-M_SaveSelect
	.section	.rodata
	.align 8
.LC11:
	.string	"you can't save if you aren't playing!\n\npress a key."
	.text
	.globl	M_SaveGame
	.type	M_SaveGame, @function
M_SaveGame:
.LFB14:
	.loc 1 660 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# choice, choice
# m_menu.c:661:     if (!usergame)
	.loc 1 661 9
	movl	usergame(%rip), %eax	# usergame, usergame.5_1
# m_menu.c:661:     if (!usergame)
	.loc 1 661 8
	testl	%eax, %eax	# usergame.5_1
	jne	.L33	#,
# m_menu.c:663: 	M_StartMessage(SAVEDEAD,NULL,false);
	.loc 1 663 2
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	leaq	.LC11(%rip), %rax	#, tmp84
	movq	%rax, %rdi	# tmp84,
	call	M_StartMessage	#
# m_menu.c:664: 	return;
	.loc 1 664 2
	jmp	.L32	#
.L33:
# m_menu.c:667:     if (gamestate != GS_LEVEL)
	.loc 1 667 19
	movl	gamestate(%rip), %eax	# gamestate, gamestate.6_2
# m_menu.c:667:     if (gamestate != GS_LEVEL)
	.loc 1 667 8
	testl	%eax, %eax	# gamestate.6_2
	jne	.L36	#,
# m_menu.c:670:     M_SetupNextMenu(&SaveDef);
	.loc 1 670 5
	leaq	SaveDef(%rip), %rax	#, tmp85
	movq	%rax, %rdi	# tmp85,
	call	M_SetupNextMenu	#
# m_menu.c:671:     M_ReadSaveStrings();
	.loc 1 671 5
	call	M_ReadSaveStrings	#
	jmp	.L32	#
.L36:
# m_menu.c:668: 	return;
	.loc 1 668 2
	nop	
.L32:
# m_menu.c:672: }
	.loc 1 672 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE14:
	.size	M_SaveGame, .-M_SaveGame
	.globl	tempstring
	.bss
	.align 32
	.type	tempstring, @object
	.size	tempstring, 80
tempstring:
	.zero	80
	.text
	.globl	M_QuickSaveResponse
	.type	M_QuickSaveResponse, @function
M_QuickSaveResponse:
.LFB15:
	.loc 1 682 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# ch, ch
# m_menu.c:683:     if (ch == 'y')
	.loc 1 683 8
	cmpl	$121, -4(%rbp)	#, ch
	jne	.L39	#,
# m_menu.c:685: 	M_DoSave(quickSaveSlot);
	.loc 1 685 2
	movl	quickSaveSlot(%rip), %eax	# quickSaveSlot, quickSaveSlot.7_1
	movl	%eax, %edi	# quickSaveSlot.7_1,
	call	M_DoSave	#
# m_menu.c:686: 	S_StartSound(NULL,sfx_swtchx);
	.loc 1 686 2
	movl	$24, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
.L39:
# m_menu.c:688: }
	.loc 1 688 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE15:
	.size	M_QuickSaveResponse, .-M_QuickSaveResponse
	.section	.rodata
	.align 8
.LC12:
	.string	"quicksave over your game named\n\n'%s'?\n\npress y or n."
	.text
	.globl	M_QuickSave
	.type	M_QuickSave, @function
M_QuickSave:
.LFB16:
	.loc 1 691 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# m_menu.c:692:     if (!usergame)
	.loc 1 692 9
	movl	usergame(%rip), %eax	# usergame, usergame.8_1
# m_menu.c:692:     if (!usergame)
	.loc 1 692 8
	testl	%eax, %eax	# usergame.8_1
	jne	.L41	#,
# m_menu.c:694: 	S_StartSound(NULL,sfx_oof);
	.loc 1 694 2
	movl	$34, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
# m_menu.c:695: 	return;
	.loc 1 695 2
	jmp	.L40	#
.L41:
# m_menu.c:698:     if (gamestate != GS_LEVEL)
	.loc 1 698 19
	movl	gamestate(%rip), %eax	# gamestate, gamestate.9_2
# m_menu.c:698:     if (gamestate != GS_LEVEL)
	.loc 1 698 8
	testl	%eax, %eax	# gamestate.9_2
	jne	.L45	#,
# m_menu.c:701:     if (quickSaveSlot < 0)
	.loc 1 701 23
	movl	quickSaveSlot(%rip), %eax	# quickSaveSlot, quickSaveSlot.10_3
# m_menu.c:701:     if (quickSaveSlot < 0)
	.loc 1 701 8
	testl	%eax, %eax	# quickSaveSlot.10_3
	jns	.L44	#,
# m_menu.c:703: 	M_StartControlPanel();
	.loc 1 703 2
	call	M_StartControlPanel	#
# m_menu.c:704: 	M_ReadSaveStrings();
	.loc 1 704 2
	call	M_ReadSaveStrings	#
# m_menu.c:705: 	M_SetupNextMenu(&SaveDef);
	.loc 1 705 2
	leaq	SaveDef(%rip), %rax	#, tmp87
	movq	%rax, %rdi	# tmp87,
	call	M_SetupNextMenu	#
# m_menu.c:706: 	quickSaveSlot = -2;	// means to pick a slot now
	.loc 1 706 16
	movl	$-2, quickSaveSlot(%rip)	#, quickSaveSlot
# m_menu.c:707: 	return;
	.loc 1 707 2
	jmp	.L40	#
.L44:
# m_menu.c:709:     sprintf(tempstring,QSPROMPT,savegamestrings[quickSaveSlot]);
	.loc 1 709 48
	movl	quickSaveSlot(%rip), %eax	# quickSaveSlot, quickSaveSlot.11_4
	movslq	%eax, %rdx	# quickSaveSlot.11_4, tmp88
	movq	%rdx, %rax	# tmp88, tmp89
	addq	%rax, %rax	# tmp89
	addq	%rdx, %rax	# tmp88, tmp89
	salq	$3, %rax	#, tmp90
	leaq	savegamestrings(%rip), %rdx	#, tmp91
	addq	%rdx, %rax	# tmp91, _5
# m_menu.c:709:     sprintf(tempstring,QSPROMPT,savegamestrings[quickSaveSlot]);
	.loc 1 709 5
	movq	%rax, %rdx	# _5,
	leaq	.LC12(%rip), %rax	#, tmp92
	movq	%rax, %rsi	# tmp92,
	leaq	tempstring(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# m_menu.c:710:     M_StartMessage(tempstring,M_QuickSaveResponse,true);
	.loc 1 710 5
	movl	$1, %edx	#,
	leaq	M_QuickSaveResponse(%rip), %rax	#, tmp94
	movq	%rax, %rsi	# tmp94,
	leaq	tempstring(%rip), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	M_StartMessage	#
	jmp	.L40	#
.L45:
# m_menu.c:699: 	return;
	.loc 1 699 2
	nop	
.L40:
# m_menu.c:711: }
	.loc 1 711 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE16:
	.size	M_QuickSave, .-M_QuickSave
	.globl	M_QuickLoadResponse
	.type	M_QuickLoadResponse, @function
M_QuickLoadResponse:
.LFB17:
	.loc 1 719 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# ch, ch
# m_menu.c:720:     if (ch == 'y')
	.loc 1 720 8
	cmpl	$121, -4(%rbp)	#, ch
	jne	.L48	#,
# m_menu.c:722: 	M_LoadSelect(quickSaveSlot);
	.loc 1 722 2
	movl	quickSaveSlot(%rip), %eax	# quickSaveSlot, quickSaveSlot.12_1
	movl	%eax, %edi	# quickSaveSlot.12_1,
	call	M_LoadSelect	#
# m_menu.c:723: 	S_StartSound(NULL,sfx_swtchx);
	.loc 1 723 2
	movl	$24, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
.L48:
# m_menu.c:725: }
	.loc 1 725 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE17:
	.size	M_QuickLoadResponse, .-M_QuickLoadResponse
	.section	.rodata
	.align 8
.LC13:
	.string	"you can't quickload during a netgame!\n\npress a key."
	.align 8
.LC14:
	.string	"you haven't picked a quicksave slot yet!\n\npress a key."
	.align 8
.LC15:
	.string	"do you want to quickload the game named\n\n'%s'?\n\npress y or n."
	.text
	.globl	M_QuickLoad
	.type	M_QuickLoad, @function
M_QuickLoad:
.LFB18:
	.loc 1 729 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# m_menu.c:730:     if (netgame)
	.loc 1 730 9
	movl	netgame(%rip), %eax	# netgame, netgame.13_1
# m_menu.c:730:     if (netgame)
	.loc 1 730 8
	testl	%eax, %eax	# netgame.13_1
	je	.L50	#,
# m_menu.c:732: 	M_StartMessage(QLOADNET,NULL,false);
	.loc 1 732 2
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	leaq	.LC13(%rip), %rax	#, tmp86
	movq	%rax, %rdi	# tmp86,
	call	M_StartMessage	#
# m_menu.c:733: 	return;
	.loc 1 733 2
	jmp	.L49	#
.L50:
# m_menu.c:736:     if (quickSaveSlot < 0)
	.loc 1 736 23
	movl	quickSaveSlot(%rip), %eax	# quickSaveSlot, quickSaveSlot.14_2
# m_menu.c:736:     if (quickSaveSlot < 0)
	.loc 1 736 8
	testl	%eax, %eax	# quickSaveSlot.14_2
	jns	.L52	#,
# m_menu.c:738: 	M_StartMessage(QSAVESPOT,NULL,false);
	.loc 1 738 2
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	leaq	.LC14(%rip), %rax	#, tmp87
	movq	%rax, %rdi	# tmp87,
	call	M_StartMessage	#
# m_menu.c:739: 	return;
	.loc 1 739 2
	jmp	.L49	#
.L52:
# m_menu.c:741:     sprintf(tempstring,QLPROMPT,savegamestrings[quickSaveSlot]);
	.loc 1 741 48
	movl	quickSaveSlot(%rip), %eax	# quickSaveSlot, quickSaveSlot.15_3
	movslq	%eax, %rdx	# quickSaveSlot.15_3, tmp88
	movq	%rdx, %rax	# tmp88, tmp89
	addq	%rax, %rax	# tmp89
	addq	%rdx, %rax	# tmp88, tmp89
	salq	$3, %rax	#, tmp90
	leaq	savegamestrings(%rip), %rdx	#, tmp91
	addq	%rdx, %rax	# tmp91, _4
# m_menu.c:741:     sprintf(tempstring,QLPROMPT,savegamestrings[quickSaveSlot]);
	.loc 1 741 5
	movq	%rax, %rdx	# _4,
	leaq	.LC15(%rip), %rax	#, tmp92
	movq	%rax, %rsi	# tmp92,
	leaq	tempstring(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# m_menu.c:742:     M_StartMessage(tempstring,M_QuickLoadResponse,true);
	.loc 1 742 5
	movl	$1, %edx	#,
	leaq	M_QuickLoadResponse(%rip), %rax	#, tmp94
	movq	%rax, %rsi	# tmp94,
	leaq	tempstring(%rip), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	M_StartMessage	#
.L49:
# m_menu.c:743: }
	.loc 1 743 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE18:
	.size	M_QuickLoad, .-M_QuickLoad
	.section	.rodata
.LC16:
	.string	"HELP"
.LC17:
	.string	"HELP1"
	.text
	.globl	M_DrawReadThis1
	.type	M_DrawReadThis1, @function
M_DrawReadThis1:
.LFB19:
	.loc 1 753 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# m_menu.c:754:     inhelpscreens = true;
	.loc 1 754 19
	movl	$1, inhelpscreens(%rip)	#, inhelpscreens
# m_menu.c:755:     switch ( gamemode )
	.loc 1 755 5
	movl	gamemode(%rip), %eax	# gamemode, gamemode.16_1
	cmpl	$3, %eax	#, gamemode.16_1
	je	.L54	#,
	cmpl	$3, %eax	#, gamemode.16_1
	ja	.L58	#,
	cmpl	$1, %eax	#, gamemode.16_1
	jbe	.L54	#,
	cmpl	$2, %eax	#, gamemode.16_1
	jne	.L58	#,
# m_menu.c:758: 	V_DrawPatchDirect (0,0,0,W_CacheLumpName("HELP",PU_CACHE));
	.loc 1 758 27
	movl	$101, %esi	#,
	leaq	.LC16(%rip), %rax	#, tmp85
	movq	%rax, %rdi	# tmp85,
	call	W_CacheLumpName@PLT	#
# m_menu.c:758: 	V_DrawPatchDirect (0,0,0,W_CacheLumpName("HELP",PU_CACHE));
	.loc 1 758 2 discriminator 1
	movq	%rax, %rcx	# _2,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	V_DrawPatchDirect@PLT	#
# m_menu.c:759: 	break;
	.loc 1 759 2
	jmp	.L56	#
.L54:
# m_menu.c:763: 	V_DrawPatchDirect (0,0,0,W_CacheLumpName("HELP1",PU_CACHE));
	.loc 1 763 27
	movl	$101, %esi	#,
	leaq	.LC17(%rip), %rax	#, tmp86
	movq	%rax, %rdi	# tmp86,
	call	W_CacheLumpName@PLT	#
# m_menu.c:763: 	V_DrawPatchDirect (0,0,0,W_CacheLumpName("HELP1",PU_CACHE));
	.loc 1 763 2 discriminator 1
	movq	%rax, %rcx	# _3,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	V_DrawPatchDirect@PLT	#
# m_menu.c:764: 	break;
	.loc 1 764 2
	jmp	.L56	#
.L58:
# m_menu.c:766: 	break;
	.loc 1 766 2
	nop	
.L56:
# m_menu.c:768:     return;
	.loc 1 768 5
	nop	
# m_menu.c:769: }
	.loc 1 769 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE19:
	.size	M_DrawReadThis1, .-M_DrawReadThis1
	.section	.rodata
.LC18:
	.string	"CREDIT"
.LC19:
	.string	"HELP2"
	.text
	.globl	M_DrawReadThis2
	.type	M_DrawReadThis2, @function
M_DrawReadThis2:
.LFB20:
	.loc 1 777 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# m_menu.c:778:     inhelpscreens = true;
	.loc 1 778 19
	movl	$1, inhelpscreens(%rip)	#, inhelpscreens
# m_menu.c:779:     switch ( gamemode )
	.loc 1 779 5
	movl	gamemode(%rip), %eax	# gamemode, gamemode.17_1
	cmpl	$1, %eax	#, gamemode.17_1
	jbe	.L60	#,
	subl	$2, %eax	#, _11
	cmpl	$1, %eax	#, _11
	ja	.L64	#,
# m_menu.c:784: 	V_DrawPatchDirect (0,0,0,W_CacheLumpName("CREDIT",PU_CACHE));
	.loc 1 784 27
	movl	$101, %esi	#,
	leaq	.LC18(%rip), %rax	#, tmp86
	movq	%rax, %rdi	# tmp86,
	call	W_CacheLumpName@PLT	#
# m_menu.c:784: 	V_DrawPatchDirect (0,0,0,W_CacheLumpName("CREDIT",PU_CACHE));
	.loc 1 784 2 discriminator 1
	movq	%rax, %rcx	# _2,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	V_DrawPatchDirect@PLT	#
# m_menu.c:785: 	break;
	.loc 1 785 2
	jmp	.L62	#
.L60:
# m_menu.c:788: 	V_DrawPatchDirect (0,0,0,W_CacheLumpName("HELP2",PU_CACHE));
	.loc 1 788 27
	movl	$101, %esi	#,
	leaq	.LC19(%rip), %rax	#, tmp87
	movq	%rax, %rdi	# tmp87,
	call	W_CacheLumpName@PLT	#
# m_menu.c:788: 	V_DrawPatchDirect (0,0,0,W_CacheLumpName("HELP2",PU_CACHE));
	.loc 1 788 2 discriminator 1
	movq	%rax, %rcx	# _3,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	V_DrawPatchDirect@PLT	#
# m_menu.c:789: 	break;
	.loc 1 789 2
	jmp	.L62	#
.L64:
# m_menu.c:791: 	break;
	.loc 1 791 2
	nop	
.L62:
# m_menu.c:793:     return;
	.loc 1 793 5
	nop	
# m_menu.c:794: }
	.loc 1 794 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE20:
	.size	M_DrawReadThis2, .-M_DrawReadThis2
	.section	.rodata
.LC20:
	.string	"M_SVOL"
	.text
	.globl	M_DrawSound
	.type	M_DrawSound, @function
M_DrawSound:
.LFB21:
	.loc 1 801 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# m_menu.c:802:     V_DrawPatchDirect (60,38,0,W_CacheLumpName("M_SVOL",PU_CACHE));
	.loc 1 802 32
	movl	$101, %esi	#,
	leaq	.LC20(%rip), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	W_CacheLumpName@PLT	#
# m_menu.c:802:     V_DrawPatchDirect (60,38,0,W_CacheLumpName("M_SVOL",PU_CACHE));
	.loc 1 802 5 discriminator 1
	movq	%rax, %rcx	# _1,
	movl	$0, %edx	#,
	movl	$38, %esi	#,
	movl	$60, %edi	#,
	call	V_DrawPatchDirect@PLT	#
# m_menu.c:804:     M_DrawThermo(SoundDef.x,SoundDef.y+LINEHEIGHT*(sfx_vol+1),
	.loc 1 804 5
	movl	snd_SfxVolume(%rip), %edx	# snd_SfxVolume, snd_SfxVolume.18_2
# m_menu.c:804:     M_DrawThermo(SoundDef.x,SoundDef.y+LINEHEIGHT*(sfx_vol+1),
	.loc 1 804 37
	movzwl	34+SoundDef(%rip), %eax	# SoundDef.y, _3
	cwtl
# m_menu.c:804:     M_DrawThermo(SoundDef.x,SoundDef.y+LINEHEIGHT*(sfx_vol+1),
	.loc 1 804 5
	leal	16(%rax), %esi	#, _5
# m_menu.c:804:     M_DrawThermo(SoundDef.x,SoundDef.y+LINEHEIGHT*(sfx_vol+1),
	.loc 1 804 26
	movzwl	32+SoundDef(%rip), %eax	# SoundDef.x, _6
# m_menu.c:804:     M_DrawThermo(SoundDef.x,SoundDef.y+LINEHEIGHT*(sfx_vol+1),
	.loc 1 804 5
	cwtl
	movl	%edx, %ecx	# snd_SfxVolume.18_2,
	movl	$16, %edx	#,
	movl	%eax, %edi	# _7,
	call	M_DrawThermo	#
# m_menu.c:807:     M_DrawThermo(SoundDef.x,SoundDef.y+LINEHEIGHT*(music_vol+1),
	.loc 1 807 5
	movl	snd_MusicVolume(%rip), %edx	# snd_MusicVolume, snd_MusicVolume.19_8
# m_menu.c:807:     M_DrawThermo(SoundDef.x,SoundDef.y+LINEHEIGHT*(music_vol+1),
	.loc 1 807 37
	movzwl	34+SoundDef(%rip), %eax	# SoundDef.y, _9
	cwtl
# m_menu.c:807:     M_DrawThermo(SoundDef.x,SoundDef.y+LINEHEIGHT*(music_vol+1),
	.loc 1 807 5
	leal	48(%rax), %esi	#, _11
# m_menu.c:807:     M_DrawThermo(SoundDef.x,SoundDef.y+LINEHEIGHT*(music_vol+1),
	.loc 1 807 26
	movzwl	32+SoundDef(%rip), %eax	# SoundDef.x, _12
# m_menu.c:807:     M_DrawThermo(SoundDef.x,SoundDef.y+LINEHEIGHT*(music_vol+1),
	.loc 1 807 5
	cwtl
	movl	%edx, %ecx	# snd_MusicVolume.19_8,
	movl	$16, %edx	#,
	movl	%eax, %edi	# _13,
	call	M_DrawThermo	#
# m_menu.c:809: }
	.loc 1 809 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE21:
	.size	M_DrawSound, .-M_DrawSound
	.globl	M_Sound
	.type	M_Sound, @function
M_Sound:
.LFB22:
	.loc 1 812 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# choice, choice
# m_menu.c:813:     M_SetupNextMenu(&SoundDef);
	.loc 1 813 5
	leaq	SoundDef(%rip), %rax	#, tmp82
	movq	%rax, %rdi	# tmp82,
	call	M_SetupNextMenu	#
# m_menu.c:814: }
	.loc 1 814 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE22:
	.size	M_Sound, .-M_Sound
	.globl	M_SfxVol
	.type	M_SfxVol, @function
M_SfxVol:
.LFB23:
	.loc 1 817 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# choice, choice
# m_menu.c:818:     switch(choice)
	.loc 1 818 5
	cmpl	$0, -4(%rbp)	#, choice
	je	.L68	#,
	cmpl	$1, -4(%rbp)	#, choice
	je	.L69	#,
	jmp	.L70	#
.L68:
# m_menu.c:821: 	if (snd_SfxVolume)
	.loc 1 821 6
	movl	snd_SfxVolume(%rip), %eax	# snd_SfxVolume, snd_SfxVolume.20_1
# m_menu.c:821: 	if (snd_SfxVolume)
	.loc 1 821 5
	testl	%eax, %eax	# snd_SfxVolume.20_1
	je	.L73	#,
# m_menu.c:822: 	    snd_SfxVolume--;
	.loc 1 822 19
	movl	snd_SfxVolume(%rip), %eax	# snd_SfxVolume, snd_SfxVolume.21_2
	subl	$1, %eax	#, _3
	movl	%eax, snd_SfxVolume(%rip)	# _3, snd_SfxVolume
# m_menu.c:823: 	break;
	.loc 1 823 2
	jmp	.L73	#
.L69:
# m_menu.c:825: 	if (snd_SfxVolume < 15)
	.loc 1 825 20
	movl	snd_SfxVolume(%rip), %eax	# snd_SfxVolume, snd_SfxVolume.22_4
# m_menu.c:825: 	if (snd_SfxVolume < 15)
	.loc 1 825 5
	cmpl	$14, %eax	#, snd_SfxVolume.22_4
	jg	.L74	#,
# m_menu.c:826: 	    snd_SfxVolume++;
	.loc 1 826 19
	movl	snd_SfxVolume(%rip), %eax	# snd_SfxVolume, snd_SfxVolume.23_5
	addl	$1, %eax	#, _6
	movl	%eax, snd_SfxVolume(%rip)	# _6, snd_SfxVolume
# m_menu.c:827: 	break;
	.loc 1 827 2
	jmp	.L74	#
.L73:
# m_menu.c:823: 	break;
	.loc 1 823 2
	nop	
	jmp	.L70	#
.L74:
# m_menu.c:827: 	break;
	.loc 1 827 2
	nop	
.L70:
# m_menu.c:830:     S_SetSfxVolume(snd_SfxVolume /* *8 */);
	.loc 1 830 5
	movl	snd_SfxVolume(%rip), %eax	# snd_SfxVolume, snd_SfxVolume.24_7
	movl	%eax, %edi	# snd_SfxVolume.24_7,
	call	S_SetSfxVolume@PLT	#
# m_menu.c:831: }
	.loc 1 831 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE23:
	.size	M_SfxVol, .-M_SfxVol
	.globl	M_MusicVol
	.type	M_MusicVol, @function
M_MusicVol:
.LFB24:
	.loc 1 834 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# choice, choice
# m_menu.c:835:     switch(choice)
	.loc 1 835 5
	cmpl	$0, -4(%rbp)	#, choice
	je	.L76	#,
	cmpl	$1, -4(%rbp)	#, choice
	je	.L77	#,
	jmp	.L78	#
.L76:
# m_menu.c:838: 	if (snd_MusicVolume)
	.loc 1 838 6
	movl	snd_MusicVolume(%rip), %eax	# snd_MusicVolume, snd_MusicVolume.25_1
# m_menu.c:838: 	if (snd_MusicVolume)
	.loc 1 838 5
	testl	%eax, %eax	# snd_MusicVolume.25_1
	je	.L81	#,
# m_menu.c:839: 	    snd_MusicVolume--;
	.loc 1 839 21
	movl	snd_MusicVolume(%rip), %eax	# snd_MusicVolume, snd_MusicVolume.26_2
	subl	$1, %eax	#, _3
	movl	%eax, snd_MusicVolume(%rip)	# _3, snd_MusicVolume
# m_menu.c:840: 	break;
	.loc 1 840 2
	jmp	.L81	#
.L77:
# m_menu.c:842: 	if (snd_MusicVolume < 15)
	.loc 1 842 22
	movl	snd_MusicVolume(%rip), %eax	# snd_MusicVolume, snd_MusicVolume.27_4
# m_menu.c:842: 	if (snd_MusicVolume < 15)
	.loc 1 842 5
	cmpl	$14, %eax	#, snd_MusicVolume.27_4
	jg	.L82	#,
# m_menu.c:843: 	    snd_MusicVolume++;
	.loc 1 843 21
	movl	snd_MusicVolume(%rip), %eax	# snd_MusicVolume, snd_MusicVolume.28_5
	addl	$1, %eax	#, _6
	movl	%eax, snd_MusicVolume(%rip)	# _6, snd_MusicVolume
# m_menu.c:844: 	break;
	.loc 1 844 2
	jmp	.L82	#
.L81:
# m_menu.c:840: 	break;
	.loc 1 840 2
	nop	
	jmp	.L78	#
.L82:
# m_menu.c:844: 	break;
	.loc 1 844 2
	nop	
.L78:
# m_menu.c:847:     S_SetMusicVolume(snd_MusicVolume /* *8 */);
	.loc 1 847 5
	movl	snd_MusicVolume(%rip), %eax	# snd_MusicVolume, snd_MusicVolume.29_7
	movl	%eax, %edi	# snd_MusicVolume.29_7,
	call	S_SetMusicVolume@PLT	#
# m_menu.c:848: }
	.loc 1 848 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE24:
	.size	M_MusicVol, .-M_MusicVol
	.section	.rodata
.LC21:
	.string	"M_DOOM"
	.text
	.globl	M_DrawMainMenu
	.type	M_DrawMainMenu, @function
M_DrawMainMenu:
.LFB25:
	.loc 1 857 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# m_menu.c:858:     V_DrawPatchDirect (94,2,0,W_CacheLumpName("M_DOOM",PU_CACHE));
	.loc 1 858 31
	movl	$101, %esi	#,
	leaq	.LC21(%rip), %rax	#, tmp83
	movq	%rax, %rdi	# tmp83,
	call	W_CacheLumpName@PLT	#
# m_menu.c:858:     V_DrawPatchDirect (94,2,0,W_CacheLumpName("M_DOOM",PU_CACHE));
	.loc 1 858 5 discriminator 1
	movq	%rax, %rcx	# _1,
	movl	$0, %edx	#,
	movl	$2, %esi	#,
	movl	$94, %edi	#,
	call	V_DrawPatchDirect@PLT	#
# m_menu.c:859: }
	.loc 1 859 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE25:
	.size	M_DrawMainMenu, .-M_DrawMainMenu
	.section	.rodata
.LC22:
	.string	"M_NEWG"
.LC23:
	.string	"M_SKILL"
	.text
	.globl	M_DrawNewGame
	.type	M_DrawNewGame, @function
M_DrawNewGame:
.LFB26:
	.loc 1 868 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# m_menu.c:869:     V_DrawPatchDirect (96,14,0,W_CacheLumpName("M_NEWG",PU_CACHE));
	.loc 1 869 32
	movl	$101, %esi	#,
	leaq	.LC22(%rip), %rax	#, tmp84
	movq	%rax, %rdi	# tmp84,
	call	W_CacheLumpName@PLT	#
# m_menu.c:869:     V_DrawPatchDirect (96,14,0,W_CacheLumpName("M_NEWG",PU_CACHE));
	.loc 1 869 5 discriminator 1
	movq	%rax, %rcx	# _1,
	movl	$0, %edx	#,
	movl	$14, %esi	#,
	movl	$96, %edi	#,
	call	V_DrawPatchDirect@PLT	#
# m_menu.c:870:     V_DrawPatchDirect (54,38,0,W_CacheLumpName("M_SKILL",PU_CACHE));
	.loc 1 870 32
	movl	$101, %esi	#,
	leaq	.LC23(%rip), %rax	#, tmp85
	movq	%rax, %rdi	# tmp85,
	call	W_CacheLumpName@PLT	#
# m_menu.c:870:     V_DrawPatchDirect (54,38,0,W_CacheLumpName("M_SKILL",PU_CACHE));
	.loc 1 870 5 discriminator 1
	movq	%rax, %rcx	# _2,
	movl	$0, %edx	#,
	movl	$38, %esi	#,
	movl	$54, %edi	#,
	call	V_DrawPatchDirect@PLT	#
# m_menu.c:871: }
	.loc 1 871 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE26:
	.size	M_DrawNewGame, .-M_DrawNewGame
	.section	.rodata
	.align 8
.LC24:
	.string	"you can't start a new game\nwhile in a network game.\n\npress a key."
	.text
	.globl	M_NewGame
	.type	M_NewGame, @function
M_NewGame:
.LFB27:
	.loc 1 874 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# choice, choice
# m_menu.c:875:     if (netgame && !demoplayback)
	.loc 1 875 9
	movl	netgame(%rip), %eax	# netgame, netgame.30_1
# m_menu.c:875:     if (netgame && !demoplayback)
	.loc 1 875 8
	testl	%eax, %eax	# netgame.30_1
	je	.L86	#,
# m_menu.c:875:     if (netgame && !demoplayback)
	.loc 1 875 20 discriminator 1
	movl	demoplayback(%rip), %eax	# demoplayback, demoplayback.31_2
# m_menu.c:875:     if (netgame && !demoplayback)
	.loc 1 875 17 discriminator 1
	testl	%eax, %eax	# demoplayback.31_2
	jne	.L86	#,
# m_menu.c:877: 	M_StartMessage(NEWGAME,NULL,false);
	.loc 1 877 2
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	leaq	.LC24(%rip), %rax	#, tmp85
	movq	%rax, %rdi	# tmp85,
	call	M_StartMessage	#
# m_menu.c:878: 	return;
	.loc 1 878 2
	jmp	.L85	#
.L86:
# m_menu.c:881:     if ( gamemode == commercial )
	.loc 1 881 19
	movl	gamemode(%rip), %eax	# gamemode, gamemode.32_3
# m_menu.c:881:     if ( gamemode == commercial )
	.loc 1 881 8
	cmpl	$2, %eax	#, gamemode.32_3
	jne	.L88	#,
# m_menu.c:882: 	M_SetupNextMenu(&NewDef);
	.loc 1 882 2
	leaq	NewDef(%rip), %rax	#, tmp86
	movq	%rax, %rdi	# tmp86,
	call	M_SetupNextMenu	#
	jmp	.L85	#
.L88:
# m_menu.c:884: 	M_SetupNextMenu(&EpiDef);
	.loc 1 884 2
	leaq	EpiDef(%rip), %rax	#, tmp87
	movq	%rax, %rdi	# tmp87,
	call	M_SetupNextMenu	#
.L85:
# m_menu.c:885: }
	.loc 1 885 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE27:
	.size	M_NewGame, .-M_NewGame
	.globl	epi
	.bss
	.align 4
	.type	epi, @object
	.size	epi, 4
epi:
	.zero	4
	.section	.rodata
.LC25:
	.string	"M_EPISOD"
	.text
	.globl	M_DrawEpisode
	.type	M_DrawEpisode, @function
M_DrawEpisode:
.LFB28:
	.loc 1 894 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# m_menu.c:895:     V_DrawPatchDirect (54,38,0,W_CacheLumpName("M_EPISOD",PU_CACHE));
	.loc 1 895 32
	movl	$101, %esi	#,
	leaq	.LC25(%rip), %rax	#, tmp83
	movq	%rax, %rdi	# tmp83,
	call	W_CacheLumpName@PLT	#
# m_menu.c:895:     V_DrawPatchDirect (54,38,0,W_CacheLumpName("M_EPISOD",PU_CACHE));
	.loc 1 895 5 discriminator 1
	movq	%rax, %rcx	# _1,
	movl	$0, %edx	#,
	movl	$38, %esi	#,
	movl	$54, %edi	#,
	call	V_DrawPatchDirect@PLT	#
# m_menu.c:896: }
	.loc 1 896 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE28:
	.size	M_DrawEpisode, .-M_DrawEpisode
	.globl	M_VerifyNightmare
	.type	M_VerifyNightmare, @function
M_VerifyNightmare:
.LFB29:
	.loc 1 899 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# ch, ch
# m_menu.c:900:     if (ch != 'y')
	.loc 1 900 8
	cmpl	$121, -4(%rbp)	#, ch
	jne	.L93	#,
# m_menu.c:903:     G_DeferedInitNew(nightmare,epi+1,1);
	.loc 1 903 5
	movl	epi(%rip), %eax	# epi, epi.33_1
	addl	$1, %eax	#, _2
	movl	$1, %edx	#,
	movl	%eax, %esi	# _2,
	movl	$4, %edi	#,
	call	G_DeferedInitNew@PLT	#
# m_menu.c:904:     M_ClearMenus ();
	.loc 1 904 5
	call	M_ClearMenus	#
	jmp	.L90	#
.L93:
# m_menu.c:901: 	return;
	.loc 1 901 2
	nop	
.L90:
# m_menu.c:905: }
	.loc 1 905 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE29:
	.size	M_VerifyNightmare, .-M_VerifyNightmare
	.section	.rodata
	.align 8
.LC26:
	.string	"are you sure? this skill level\nisn't even remotely fair.\n\npress y or n."
	.text
	.globl	M_ChooseSkill
	.type	M_ChooseSkill, @function
M_ChooseSkill:
.LFB30:
	.loc 1 908 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# choice, choice
# m_menu.c:909:     if (choice == nightmare)
	.loc 1 909 8
	cmpl	$4, -4(%rbp)	#, choice
	jne	.L95	#,
# m_menu.c:911: 	M_StartMessage(NIGHTMARE,M_VerifyNightmare,true);
	.loc 1 911 2
	movl	$1, %edx	#,
	leaq	M_VerifyNightmare(%rip), %rax	#, tmp85
	movq	%rax, %rsi	# tmp85,
	leaq	.LC26(%rip), %rax	#, tmp86
	movq	%rax, %rdi	# tmp86,
	call	M_StartMessage	#
# m_menu.c:912: 	return;
	.loc 1 912 2
	jmp	.L94	#
.L95:
# m_menu.c:915:     G_DeferedInitNew(choice,epi+1,1);
	.loc 1 915 5
	movl	epi(%rip), %eax	# epi, epi.34_1
	leal	1(%rax), %ecx	#, _2
	movl	-4(%rbp), %eax	# choice, choice.35_3
	movl	$1, %edx	#,
	movl	%ecx, %esi	# _2,
	movl	%eax, %edi	# choice.35_3,
	call	G_DeferedInitNew@PLT	#
# m_menu.c:916:     M_ClearMenus ();
	.loc 1 916 5
	call	M_ClearMenus	#
.L94:
# m_menu.c:917: }
	.loc 1 917 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE30:
	.size	M_ChooseSkill, .-M_ChooseSkill
	.section	.rodata
	.align 8
.LC27:
	.string	"this is the shareware version of doom.\n\nyou need to order the entire trilogy.\n\npress a key."
	.align 8
.LC28:
	.string	"M_Episode: 4th episode requires UltimateDOOM\n"
	.text
	.globl	M_Episode
	.type	M_Episode, @function
M_Episode:
.LFB31:
	.loc 1 920 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# choice, choice
# m_menu.c:921:     if ( (gamemode == shareware)
	.loc 1 921 20
	movl	gamemode(%rip), %eax	# gamemode, gamemode.36_1
# m_menu.c:921:     if ( (gamemode == shareware)
	.loc 1 921 8
	testl	%eax, %eax	# gamemode.36_1
	jne	.L98	#,
# m_menu.c:922: 	 && choice)
	.loc 1 922 3
	cmpl	$0, -4(%rbp)	#, choice
	je	.L98	#,
# m_menu.c:924: 	M_StartMessage(SWSTRING,NULL,false);
	.loc 1 924 2
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	leaq	.LC27(%rip), %rax	#, tmp85
	movq	%rax, %rdi	# tmp85,
	call	M_StartMessage	#
# m_menu.c:925: 	M_SetupNextMenu(&ReadDef1);
	.loc 1 925 2
	leaq	ReadDef1(%rip), %rax	#, tmp86
	movq	%rax, %rdi	# tmp86,
	call	M_SetupNextMenu	#
# m_menu.c:926: 	return;
	.loc 1 926 2
	jmp	.L97	#
.L98:
# m_menu.c:930:     if ( (gamemode == registered)
	.loc 1 930 20
	movl	gamemode(%rip), %eax	# gamemode, gamemode.37_2
# m_menu.c:930:     if ( (gamemode == registered)
	.loc 1 930 8
	cmpl	$1, %eax	#, gamemode.37_2
	jne	.L100	#,
# m_menu.c:931: 	 && (choice > 2))
	.loc 1 931 3
	cmpl	$2, -4(%rbp)	#, choice
	jle	.L100	#,
# m_menu.c:933:       fprintf( stderr,
	.loc 1 933 7
	movq	stderr(%rip), %rax	# stderr, stderr.38_3
	movq	%rax, %rcx	# stderr.38_3,
	movl	$45, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC28(%rip), %rax	#, tmp87
	movq	%rax, %rdi	# tmp87,
	call	fwrite@PLT	#
# m_menu.c:935:       choice = 0;
	.loc 1 935 14
	movl	$0, -4(%rbp)	#, choice
.L100:
# m_menu.c:938:     epi = choice;
	.loc 1 938 9
	movl	-4(%rbp), %eax	# choice, tmp88
	movl	%eax, epi(%rip)	# tmp88, epi
# m_menu.c:939:     M_SetupNextMenu(&NewDef);
	.loc 1 939 5
	leaq	NewDef(%rip), %rax	#, tmp89
	movq	%rax, %rdi	# tmp89,
	call	M_SetupNextMenu	#
.L97:
# m_menu.c:940: }
	.loc 1 940 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE31:
	.size	M_Episode, .-M_Episode
	.globl	detailNames
	.data
	.align 16
	.type	detailNames, @object
	.size	detailNames, 18
detailNames:
	.string	"M_GDHIGH"
	.string	"M_GDLOW"
	.zero	1
	.globl	msgNames
	.align 16
	.type	msgNames, @object
	.size	msgNames, 18
msgNames:
	.string	"M_MSGOFF"
	.string	"M_MSGON"
	.zero	1
	.section	.rodata
.LC29:
	.string	"M_OPTTTL"
	.text
	.globl	M_DrawOptions
	.type	M_DrawOptions, @function
M_DrawOptions:
.LFB32:
	.loc 1 952 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# m_menu.c:953:     V_DrawPatchDirect (108,15,0,W_CacheLumpName("M_OPTTTL",PU_CACHE));
	.loc 1 953 33
	movl	$101, %esi	#,
	leaq	.LC29(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	W_CacheLumpName@PLT	#
# m_menu.c:953:     V_DrawPatchDirect (108,15,0,W_CacheLumpName("M_OPTTTL",PU_CACHE));
	.loc 1 953 5 discriminator 1
	movq	%rax, %rcx	# _1,
	movl	$0, %edx	#,
	movl	$15, %esi	#,
	movl	$108, %edi	#,
	call	V_DrawPatchDirect@PLT	#
# m_menu.c:956: 		       W_CacheLumpName(detailNames[detailLevel],PU_CACHE));
	.loc 1 956 37
	movl	detailLevel(%rip), %eax	# detailLevel, detailLevel.39_2
	movslq	%eax, %rdx	# detailLevel.39_2, tmp114
	movq	%rdx, %rax	# tmp114, tmp115
	salq	$3, %rax	#, tmp115
	addq	%rdx, %rax	# tmp114, tmp115
	leaq	detailNames(%rip), %rdx	#, tmp116
	addq	%rdx, %rax	# tmp116, _3
# m_menu.c:956: 		       W_CacheLumpName(detailNames[detailLevel],PU_CACHE));
	.loc 1 956 10
	movl	$101, %esi	#,
	movq	%rax, %rdi	# _3,
	call	W_CacheLumpName@PLT	#
	movq	%rax, %rdx	#, _4
# m_menu.c:955:     V_DrawPatchDirect (OptionsDef.x + 175,OptionsDef.y+LINEHEIGHT*detail,0,
	.loc 1 955 53
	movzwl	34+OptionsDef(%rip), %eax	# OptionsDef.y, _5
	cwtl
# m_menu.c:955:     V_DrawPatchDirect (OptionsDef.x + 175,OptionsDef.y+LINEHEIGHT*detail,0,
	.loc 1 955 5
	leal	32(%rax), %esi	#, _7
# m_menu.c:955:     V_DrawPatchDirect (OptionsDef.x + 175,OptionsDef.y+LINEHEIGHT*detail,0,
	.loc 1 955 34
	movzwl	32+OptionsDef(%rip), %eax	# OptionsDef.x, _8
	cwtl
# m_menu.c:955:     V_DrawPatchDirect (OptionsDef.x + 175,OptionsDef.y+LINEHEIGHT*detail,0,
	.loc 1 955 5
	addl	$175, %eax	#, _10
	movq	%rdx, %rcx	# _4,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _10,
	call	V_DrawPatchDirect@PLT	#
# m_menu.c:959: 		       W_CacheLumpName(msgNames[showMessages],PU_CACHE));
	.loc 1 959 34
	movl	showMessages(%rip), %eax	# showMessages, showMessages.40_11
	movslq	%eax, %rdx	# showMessages.40_11, tmp117
	movq	%rdx, %rax	# tmp117, tmp118
	salq	$3, %rax	#, tmp118
	addq	%rdx, %rax	# tmp117, tmp118
	leaq	msgNames(%rip), %rdx	#, tmp119
	addq	%rdx, %rax	# tmp119, _12
# m_menu.c:959: 		       W_CacheLumpName(msgNames[showMessages],PU_CACHE));
	.loc 1 959 10
	movl	$101, %esi	#,
	movq	%rax, %rdi	# _12,
	call	W_CacheLumpName@PLT	#
	movq	%rax, %rdx	#, _13
# m_menu.c:958:     V_DrawPatchDirect (OptionsDef.x + 120,OptionsDef.y+LINEHEIGHT*messages,0,
	.loc 1 958 53
	movzwl	34+OptionsDef(%rip), %eax	# OptionsDef.y, _14
	cwtl
# m_menu.c:958:     V_DrawPatchDirect (OptionsDef.x + 120,OptionsDef.y+LINEHEIGHT*messages,0,
	.loc 1 958 5
	leal	16(%rax), %esi	#, _16
# m_menu.c:958:     V_DrawPatchDirect (OptionsDef.x + 120,OptionsDef.y+LINEHEIGHT*messages,0,
	.loc 1 958 34
	movzwl	32+OptionsDef(%rip), %eax	# OptionsDef.x, _17
	cwtl
# m_menu.c:958:     V_DrawPatchDirect (OptionsDef.x + 120,OptionsDef.y+LINEHEIGHT*messages,0,
	.loc 1 958 5
	addl	$120, %eax	#, _19
	movq	%rdx, %rcx	# _13,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _19,
	call	V_DrawPatchDirect@PLT	#
# m_menu.c:961:     M_DrawThermo(OptionsDef.x,OptionsDef.y+LINEHEIGHT*(mousesens+1),
	.loc 1 961 5
	movl	mouseSensitivity(%rip), %edx	# mouseSensitivity, mouseSensitivity.41_20
# m_menu.c:961:     M_DrawThermo(OptionsDef.x,OptionsDef.y+LINEHEIGHT*(mousesens+1),
	.loc 1 961 41
	movzwl	34+OptionsDef(%rip), %eax	# OptionsDef.y, _21
	cwtl
# m_menu.c:961:     M_DrawThermo(OptionsDef.x,OptionsDef.y+LINEHEIGHT*(mousesens+1),
	.loc 1 961 5
	leal	96(%rax), %esi	#, _23
# m_menu.c:961:     M_DrawThermo(OptionsDef.x,OptionsDef.y+LINEHEIGHT*(mousesens+1),
	.loc 1 961 28
	movzwl	32+OptionsDef(%rip), %eax	# OptionsDef.x, _24
# m_menu.c:961:     M_DrawThermo(OptionsDef.x,OptionsDef.y+LINEHEIGHT*(mousesens+1),
	.loc 1 961 5
	cwtl
	movl	%edx, %ecx	# mouseSensitivity.41_20,
	movl	$10, %edx	#,
	movl	%eax, %edi	# _25,
	call	M_DrawThermo	#
# m_menu.c:964:     M_DrawThermo(OptionsDef.x,OptionsDef.y+LINEHEIGHT*(scrnsize+1),
	.loc 1 964 5
	movl	screenSize(%rip), %edx	# screenSize, screenSize.42_26
# m_menu.c:964:     M_DrawThermo(OptionsDef.x,OptionsDef.y+LINEHEIGHT*(scrnsize+1),
	.loc 1 964 41
	movzwl	34+OptionsDef(%rip), %eax	# OptionsDef.y, _27
	cwtl
# m_menu.c:964:     M_DrawThermo(OptionsDef.x,OptionsDef.y+LINEHEIGHT*(scrnsize+1),
	.loc 1 964 5
	leal	64(%rax), %esi	#, _29
# m_menu.c:964:     M_DrawThermo(OptionsDef.x,OptionsDef.y+LINEHEIGHT*(scrnsize+1),
	.loc 1 964 28
	movzwl	32+OptionsDef(%rip), %eax	# OptionsDef.x, _30
# m_menu.c:964:     M_DrawThermo(OptionsDef.x,OptionsDef.y+LINEHEIGHT*(scrnsize+1),
	.loc 1 964 5
	cwtl
	movl	%edx, %ecx	# screenSize.42_26,
	movl	$9, %edx	#,
	movl	%eax, %edi	# _31,
	call	M_DrawThermo	#
# m_menu.c:966: }
	.loc 1 966 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE32:
	.size	M_DrawOptions, .-M_DrawOptions
	.globl	M_Options
	.type	M_Options, @function
M_Options:
.LFB33:
	.loc 1 969 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# choice, choice
# m_menu.c:970:     M_SetupNextMenu(&OptionsDef);
	.loc 1 970 5
	leaq	OptionsDef(%rip), %rax	#, tmp82
	movq	%rax, %rdi	# tmp82,
	call	M_SetupNextMenu	#
# m_menu.c:971: }
	.loc 1 971 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE33:
	.size	M_Options, .-M_Options
	.section	.rodata
.LC30:
	.string	"Messages OFF"
.LC31:
	.string	"Messages ON"
	.text
	.globl	M_ChangeMessages
	.type	M_ChangeMessages, @function
M_ChangeMessages:
.LFB34:
	.loc 1 979 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# choice, choice
# m_menu.c:981:     choice = 0;
	.loc 1 981 12
	movl	$0, -4(%rbp)	#, choice
# m_menu.c:982:     showMessages = 1 - showMessages;
	.loc 1 982 22
	movl	showMessages(%rip), %eax	# showMessages, showMessages.43_1
	movl	$1, %edx	#, tmp87
	subl	%eax, %edx	# showMessages.43_1, _2
# m_menu.c:982:     showMessages = 1 - showMessages;
	.loc 1 982 18
	movl	%edx, showMessages(%rip)	# _2, showMessages
# m_menu.c:984:     if (!showMessages)
	.loc 1 984 9
	movl	showMessages(%rip), %eax	# showMessages, showMessages.44_3
# m_menu.c:984:     if (!showMessages)
	.loc 1 984 8
	testl	%eax, %eax	# showMessages.44_3
	jne	.L104	#,
# m_menu.c:985: 	players[consoleplayer].message = MSGOFF;
	.loc 1 985 24
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.45_4
# m_menu.c:985: 	players[consoleplayer].message = MSGOFF;
	.loc 1 985 33
	movslq	%eax, %rdx	# consoleplayer.45_4, tmp88
	movq	%rdx, %rax	# tmp88, tmp90
	salq	$2, %rax	#, tmp90
	addq	%rdx, %rax	# tmp88, tmp90
	salq	$6, %rax	#, tmp91
	movq	%rax, %rcx	# tmp90, tmp89
	leaq	224+players(%rip), %rax	#, tmp92
	leaq	.LC30(%rip), %rdx	#, tmp93
	movq	%rdx, (%rcx,%rax)	# tmp93, players[consoleplayer.45_4].message
	jmp	.L105	#
.L104:
# m_menu.c:987: 	players[consoleplayer].message = MSGON ;
	.loc 1 987 24
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.46_5
# m_menu.c:987: 	players[consoleplayer].message = MSGON ;
	.loc 1 987 33
	movslq	%eax, %rdx	# consoleplayer.46_5, tmp94
	movq	%rdx, %rax	# tmp94, tmp96
	salq	$2, %rax	#, tmp96
	addq	%rdx, %rax	# tmp94, tmp96
	salq	$6, %rax	#, tmp97
	movq	%rax, %rcx	# tmp96, tmp95
	leaq	224+players(%rip), %rax	#, tmp98
	leaq	.LC31(%rip), %rdx	#, tmp99
	movq	%rdx, (%rcx,%rax)	# tmp99, players[consoleplayer.46_5].message
.L105:
# m_menu.c:989:     message_dontfuckwithme = true;
	.loc 1 989 28
	movl	$1, message_dontfuckwithme(%rip)	#, message_dontfuckwithme
# m_menu.c:990: }
	.loc 1 990 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE34:
	.size	M_ChangeMessages, .-M_ChangeMessages
	.globl	M_EndGameResponse
	.type	M_EndGameResponse, @function
M_EndGameResponse:
.LFB35:
	.loc 1 997 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# ch, ch
# m_menu.c:998:     if (ch != 'y')
	.loc 1 998 8
	cmpl	$121, -4(%rbp)	#, ch
	jne	.L109	#,
# m_menu.c:1001:     currentMenu->lastOn = itemOn;
	.loc 1 1001 16
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.47_1
# m_menu.c:1001:     currentMenu->lastOn = itemOn;
	.loc 1 1001 25
	movzwl	itemOn(%rip), %edx	# itemOn, itemOn.48_2
	movw	%dx, 36(%rax)	# itemOn.48_2, currentMenu.47_1->lastOn
# m_menu.c:1002:     M_ClearMenus ();
	.loc 1 1002 5
	call	M_ClearMenus	#
# m_menu.c:1003:     D_StartTitle ();
	.loc 1 1003 5
	call	D_StartTitle@PLT	#
	jmp	.L106	#
.L109:
# m_menu.c:999: 	return;
	.loc 1 999 2
	nop	
.L106:
# m_menu.c:1004: }
	.loc 1 1004 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE35:
	.size	M_EndGameResponse, .-M_EndGameResponse
	.section	.rodata
	.align 8
.LC32:
	.string	"you can't end a netgame!\n\npress a key."
	.align 8
.LC33:
	.string	"are you sure you want to end the game?\n\npress y or n."
	.text
	.globl	M_EndGame
	.type	M_EndGame, @function
M_EndGame:
.LFB36:
	.loc 1 1007 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# choice, choice
# m_menu.c:1008:     choice = 0;
	.loc 1 1008 12
	movl	$0, -4(%rbp)	#, choice
# m_menu.c:1009:     if (!usergame)
	.loc 1 1009 9
	movl	usergame(%rip), %eax	# usergame, usergame.49_1
# m_menu.c:1009:     if (!usergame)
	.loc 1 1009 8
	testl	%eax, %eax	# usergame.49_1
	jne	.L111	#,
# m_menu.c:1011: 	S_StartSound(NULL,sfx_oof);
	.loc 1 1011 2
	movl	$34, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
# m_menu.c:1012: 	return;
	.loc 1 1012 2
	jmp	.L110	#
.L111:
# m_menu.c:1015:     if (netgame)
	.loc 1 1015 9
	movl	netgame(%rip), %eax	# netgame, netgame.50_2
# m_menu.c:1015:     if (netgame)
	.loc 1 1015 8
	testl	%eax, %eax	# netgame.50_2
	je	.L113	#,
# m_menu.c:1017: 	M_StartMessage(NETEND,NULL,false);
	.loc 1 1017 2
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	leaq	.LC32(%rip), %rax	#, tmp84
	movq	%rax, %rdi	# tmp84,
	call	M_StartMessage	#
# m_menu.c:1018: 	return;
	.loc 1 1018 2
	jmp	.L110	#
.L113:
# m_menu.c:1021:     M_StartMessage(ENDGAME,M_EndGameResponse,true);
	.loc 1 1021 5
	movl	$1, %edx	#,
	leaq	M_EndGameResponse(%rip), %rax	#, tmp85
	movq	%rax, %rsi	# tmp85,
	leaq	.LC33(%rip), %rax	#, tmp86
	movq	%rax, %rdi	# tmp86,
	call	M_StartMessage	#
.L110:
# m_menu.c:1022: }
	.loc 1 1022 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE36:
	.size	M_EndGame, .-M_EndGame
	.globl	M_ReadThis
	.type	M_ReadThis, @function
M_ReadThis:
.LFB37:
	.loc 1 1031 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# choice, choice
# m_menu.c:1032:     choice = 0;
	.loc 1 1032 12
	movl	$0, -4(%rbp)	#, choice
# m_menu.c:1033:     M_SetupNextMenu(&ReadDef1);
	.loc 1 1033 5
	leaq	ReadDef1(%rip), %rax	#, tmp82
	movq	%rax, %rdi	# tmp82,
	call	M_SetupNextMenu	#
# m_menu.c:1034: }
	.loc 1 1034 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE37:
	.size	M_ReadThis, .-M_ReadThis
	.globl	M_ReadThis2
	.type	M_ReadThis2, @function
M_ReadThis2:
.LFB38:
	.loc 1 1037 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# choice, choice
# m_menu.c:1038:     choice = 0;
	.loc 1 1038 12
	movl	$0, -4(%rbp)	#, choice
# m_menu.c:1039:     M_SetupNextMenu(&ReadDef2);
	.loc 1 1039 5
	leaq	ReadDef2(%rip), %rax	#, tmp82
	movq	%rax, %rdi	# tmp82,
	call	M_SetupNextMenu	#
# m_menu.c:1040: }
	.loc 1 1040 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE38:
	.size	M_ReadThis2, .-M_ReadThis2
	.globl	M_FinishReadThis
	.type	M_FinishReadThis, @function
M_FinishReadThis:
.LFB39:
	.loc 1 1043 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# choice, choice
# m_menu.c:1044:     choice = 0;
	.loc 1 1044 12
	movl	$0, -4(%rbp)	#, choice
# m_menu.c:1045:     M_SetupNextMenu(&MainDef);
	.loc 1 1045 5
	leaq	MainDef(%rip), %rax	#, tmp82
	movq	%rax, %rdi	# tmp82,
	call	M_SetupNextMenu	#
# m_menu.c:1046: }
	.loc 1 1046 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE39:
	.size	M_FinishReadThis, .-M_FinishReadThis
	.globl	quitsounds
	.data
	.align 32
	.type	quitsounds, @object
	.size	quitsounds, 32
quitsounds:
	.long	57
	.long	26
	.long	27
	.long	31
	.long	35
	.long	36
	.long	38
	.long	52
	.globl	quitsounds2
	.align 32
	.type	quitsounds2, @object
	.size	quitsounds2, 32
quitsounds2:
	.long	80
	.long	93
	.long	95
	.long	31
	.long	56
	.long	72
	.long	78
	.long	52
	.text
	.globl	M_QuitResponse
	.type	M_QuitResponse, @function
M_QuitResponse:
.LFB40:
	.loc 1 1081 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# ch, ch
# m_menu.c:1082:     if (ch != 'y')
	.loc 1 1082 8
	cmpl	$121, -4(%rbp)	#, ch
	jne	.L123	#,
# m_menu.c:1084:     if (!netgame)
	.loc 1 1084 9
	movl	netgame(%rip), %eax	# netgame, netgame.51_1
# m_menu.c:1084:     if (!netgame)
	.loc 1 1084 8
	testl	%eax, %eax	# netgame.51_1
	jne	.L120	#,
# m_menu.c:1086: 	if (gamemode == commercial)
	.loc 1 1086 15
	movl	gamemode(%rip), %eax	# gamemode, gamemode.52_2
# m_menu.c:1086: 	if (gamemode == commercial)
	.loc 1 1086 5
	cmpl	$2, %eax	#, gamemode.52_2
	jne	.L121	#,
# m_menu.c:1087: 	    S_StartSound(NULL,quitsounds2[(gametic>>2)&7]);
	.loc 1 1087 44
	movl	gametic(%rip), %eax	# gametic, gametic.53_3
	sarl	$2, %eax	#, _4
# m_menu.c:1087: 	    S_StartSound(NULL,quitsounds2[(gametic>>2)&7]);
	.loc 1 1087 48
	andl	$7, %eax	#, _5
# m_menu.c:1087: 	    S_StartSound(NULL,quitsounds2[(gametic>>2)&7]);
	.loc 1 1087 6
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp93
	leaq	quitsounds2(%rip), %rax	#, tmp94
	movl	(%rdx,%rax), %eax	# quitsounds2[_5], _6
	movl	%eax, %esi	# _6,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
	jmp	.L122	#
.L121:
# m_menu.c:1089: 	    S_StartSound(NULL,quitsounds[(gametic>>2)&7]);
	.loc 1 1089 43
	movl	gametic(%rip), %eax	# gametic, gametic.54_7
	sarl	$2, %eax	#, _8
# m_menu.c:1089: 	    S_StartSound(NULL,quitsounds[(gametic>>2)&7]);
	.loc 1 1089 47
	andl	$7, %eax	#, _9
# m_menu.c:1089: 	    S_StartSound(NULL,quitsounds[(gametic>>2)&7]);
	.loc 1 1089 6
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp96
	leaq	quitsounds(%rip), %rax	#, tmp97
	movl	(%rdx,%rax), %eax	# quitsounds[_9], _10
	movl	%eax, %esi	# _10,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
.L122:
# m_menu.c:1090: 	I_WaitVBL(105);
	.loc 1 1090 2
	movl	$105, %edi	#,
	call	I_WaitVBL@PLT	#
.L120:
# m_menu.c:1092:     I_Quit ();
	.loc 1 1092 5
	call	I_Quit@PLT	#
	jmp	.L117	#
.L123:
# m_menu.c:1083: 	return;
	.loc 1 1083 2
	nop	
.L117:
# m_menu.c:1093: }
	.loc 1 1093 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE40:
	.size	M_QuitResponse, .-M_QuitResponse
	.section	.rodata
.LC34:
	.string	"%s\n\n(press y to quit)"
	.text
	.globl	M_QuitDOOM
	.type	M_QuitDOOM, @function
M_QuitDOOM:
.LFB41:
	.loc 1 1099 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# choice, choice
# m_menu.c:1102:   if (language != english )
	.loc 1 1102 16
	movl	language(%rip), %eax	# language, language.55_1
# m_menu.c:1102:   if (language != english )
	.loc 1 1102 6
	testl	%eax, %eax	# language.55_1
	je	.L125	#,
# m_menu.c:1103:     sprintf(endstring,"%s\n\n"DOSY, endmsg[0] );
	.loc 1 1103 5
	movq	endmsg(%rip), %rax	# endmsg[0], _2
	movq	%rax, %rdx	# _2,
	leaq	.LC34(%rip), %rax	#, tmp88
	movq	%rax, %rsi	# tmp88,
	leaq	endstring(%rip), %rax	#, tmp89
	movq	%rax, %rdi	# tmp89,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
	jmp	.L126	#
.L125:
# m_menu.c:1105:     sprintf(endstring,"%s\n\n"DOSY, endmsg[ (gametic%(NUM_QUITMESSAGES-2))+1 ]);
	.loc 1 1105 53
	movl	gametic(%rip), %ecx	# gametic, gametic.56_3
	movslq	%ecx, %rax	# gametic.56_3, tmp90
	imulq	$1717986919, %rax, %rax	#, tmp90, tmp91
	shrq	$32, %rax	#, tmp92
	movl	%eax, %edx	# tmp92, tmp93
	sarl	$3, %edx	#, tmp93
	movl	%ecx, %eax	# gametic.56_3, tmp94
	sarl	$31, %eax	#, tmp94
	subl	%eax, %edx	# tmp94, _4
	movl	%edx, %eax	# _4, tmp95
	sall	$2, %eax	#, tmp95
	addl	%edx, %eax	# _4, tmp95
	sall	$2, %eax	#, tmp96
	subl	%eax, %ecx	# tmp95, gametic.56_3
	movl	%ecx, %edx	# gametic.56_3, _4
# m_menu.c:1105:     sprintf(endstring,"%s\n\n"DOSY, endmsg[ (gametic%(NUM_QUITMESSAGES-2))+1 ]);
	.loc 1 1105 75
	leal	1(%rdx), %eax	#, _5
# m_menu.c:1105:     sprintf(endstring,"%s\n\n"DOSY, endmsg[ (gametic%(NUM_QUITMESSAGES-2))+1 ]);
	.loc 1 1105 5
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp98
	leaq	endmsg(%rip), %rax	#, tmp99
	movq	(%rdx,%rax), %rax	# endmsg[_5], _6
	movq	%rax, %rdx	# _6,
	leaq	.LC34(%rip), %rax	#, tmp100
	movq	%rax, %rsi	# tmp100,
	leaq	endstring(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
.L126:
# m_menu.c:1107:   M_StartMessage(endstring,M_QuitResponse,true);
	.loc 1 1107 3
	movl	$1, %edx	#,
	leaq	M_QuitResponse(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	endstring(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	M_StartMessage	#
# m_menu.c:1108: }
	.loc 1 1108 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE41:
	.size	M_QuitDOOM, .-M_QuitDOOM
	.globl	M_ChangeSensitivity
	.type	M_ChangeSensitivity, @function
M_ChangeSensitivity:
.LFB42:
	.loc 1 1114 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# choice, choice
# m_menu.c:1115:     switch(choice)
	.loc 1 1115 5
	cmpl	$0, -4(%rbp)	#, choice
	je	.L128	#,
	cmpl	$1, -4(%rbp)	#, choice
	je	.L129	#,
# m_menu.c:1126: }
	.loc 1 1126 1
	jmp	.L135	#
.L128:
# m_menu.c:1118: 	if (mouseSensitivity)
	.loc 1 1118 6
	movl	mouseSensitivity(%rip), %eax	# mouseSensitivity, mouseSensitivity.57_1
# m_menu.c:1118: 	if (mouseSensitivity)
	.loc 1 1118 5
	testl	%eax, %eax	# mouseSensitivity.57_1
	je	.L133	#,
# m_menu.c:1119: 	    mouseSensitivity--;
	.loc 1 1119 22
	movl	mouseSensitivity(%rip), %eax	# mouseSensitivity, mouseSensitivity.58_2
	subl	$1, %eax	#, _3
	movl	%eax, mouseSensitivity(%rip)	# _3, mouseSensitivity
# m_menu.c:1120: 	break;
	.loc 1 1120 2
	jmp	.L133	#
.L129:
# m_menu.c:1122: 	if (mouseSensitivity < 9)
	.loc 1 1122 23
	movl	mouseSensitivity(%rip), %eax	# mouseSensitivity, mouseSensitivity.59_4
# m_menu.c:1122: 	if (mouseSensitivity < 9)
	.loc 1 1122 5
	cmpl	$8, %eax	#, mouseSensitivity.59_4
	jg	.L134	#,
# m_menu.c:1123: 	    mouseSensitivity++;
	.loc 1 1123 22
	movl	mouseSensitivity(%rip), %eax	# mouseSensitivity, mouseSensitivity.60_5
	addl	$1, %eax	#, _6
	movl	%eax, mouseSensitivity(%rip)	# _6, mouseSensitivity
# m_menu.c:1124: 	break;
	.loc 1 1124 2
	jmp	.L134	#
.L133:
# m_menu.c:1120: 	break;
	.loc 1 1120 2
	nop	
	jmp	.L135	#
.L134:
# m_menu.c:1124: 	break;
	.loc 1 1124 2
	nop	
.L135:
# m_menu.c:1126: }
	.loc 1 1126 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE42:
	.size	M_ChangeSensitivity, .-M_ChangeSensitivity
	.section	.rodata
	.align 8
.LC35:
	.string	"M_ChangeDetail: low detail mode n.a.\n"
	.text
	.globl	M_ChangeDetail
	.type	M_ChangeDetail, @function
M_ChangeDetail:
.LFB43:
	.loc 1 1132 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# choice, choice
# m_menu.c:1133:     choice = 0;
	.loc 1 1133 12
	movl	$0, -4(%rbp)	#, choice
# m_menu.c:1134:     detailLevel = 1 - detailLevel;
	.loc 1 1134 21
	movl	detailLevel(%rip), %eax	# detailLevel, detailLevel.61_1
	movl	$1, %edx	#, tmp85
	subl	%eax, %edx	# detailLevel.61_1, _2
# m_menu.c:1134:     detailLevel = 1 - detailLevel;
	.loc 1 1134 17
	movl	%edx, detailLevel(%rip)	# _2, detailLevel
# m_menu.c:1137:     fprintf( stderr, "M_ChangeDetail: low detail mode n.a.\n");
	.loc 1 1137 5
	movq	stderr(%rip), %rax	# stderr, stderr.62_3
	movq	%rax, %rcx	# stderr.62_3,
	movl	$37, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC35(%rip), %rax	#, tmp86
	movq	%rax, %rdi	# tmp86,
	call	fwrite@PLT	#
# m_menu.c:1139:     return;
	.loc 1 1139 5
	nop	
# m_menu.c:1147: }
	.loc 1 1147 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE43:
	.size	M_ChangeDetail, .-M_ChangeDetail
	.globl	M_SizeDisplay
	.type	M_SizeDisplay, @function
M_SizeDisplay:
.LFB44:
	.loc 1 1153 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# choice, choice
# m_menu.c:1154:     switch(choice)
	.loc 1 1154 5
	cmpl	$0, -4(%rbp)	#, choice
	je	.L139	#,
	cmpl	$1, -4(%rbp)	#, choice
	je	.L140	#,
	jmp	.L141	#
.L139:
# m_menu.c:1157: 	if (screenSize > 0)
	.loc 1 1157 17
	movl	screenSize(%rip), %eax	# screenSize, screenSize.63_1
# m_menu.c:1157: 	if (screenSize > 0)
	.loc 1 1157 5
	testl	%eax, %eax	# screenSize.63_1
	jle	.L144	#,
# m_menu.c:1159: 	    screenblocks--;
	.loc 1 1159 18
	movl	screenblocks(%rip), %eax	# screenblocks, screenblocks.64_2
	subl	$1, %eax	#, _3
	movl	%eax, screenblocks(%rip)	# _3, screenblocks
# m_menu.c:1160: 	    screenSize--;
	.loc 1 1160 16
	movl	screenSize(%rip), %eax	# screenSize, screenSize.65_4
	subl	$1, %eax	#, _5
	movl	%eax, screenSize(%rip)	# _5, screenSize
# m_menu.c:1162: 	break;
	.loc 1 1162 2
	jmp	.L144	#
.L140:
# m_menu.c:1164: 	if (screenSize < 8)
	.loc 1 1164 17
	movl	screenSize(%rip), %eax	# screenSize, screenSize.66_6
# m_menu.c:1164: 	if (screenSize < 8)
	.loc 1 1164 5
	cmpl	$7, %eax	#, screenSize.66_6
	jg	.L145	#,
# m_menu.c:1166: 	    screenblocks++;
	.loc 1 1166 18
	movl	screenblocks(%rip), %eax	# screenblocks, screenblocks.67_7
	addl	$1, %eax	#, _8
	movl	%eax, screenblocks(%rip)	# _8, screenblocks
# m_menu.c:1167: 	    screenSize++;
	.loc 1 1167 16
	movl	screenSize(%rip), %eax	# screenSize, screenSize.68_9
	addl	$1, %eax	#, _10
	movl	%eax, screenSize(%rip)	# _10, screenSize
# m_menu.c:1169: 	break;
	.loc 1 1169 2
	jmp	.L145	#
.L144:
# m_menu.c:1162: 	break;
	.loc 1 1162 2
	nop	
	jmp	.L141	#
.L145:
# m_menu.c:1169: 	break;
	.loc 1 1169 2
	nop	
.L141:
# m_menu.c:1173:     R_SetViewSize (screenblocks, detailLevel);
	.loc 1 1173 5
	movl	detailLevel(%rip), %edx	# detailLevel, detailLevel.69_11
	movl	screenblocks(%rip), %eax	# screenblocks, screenblocks.70_12
	movl	%edx, %esi	# detailLevel.69_11,
	movl	%eax, %edi	# screenblocks.70_12,
	call	R_SetViewSize@PLT	#
# m_menu.c:1174: }
	.loc 1 1174 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE44:
	.size	M_SizeDisplay, .-M_SizeDisplay
	.section	.rodata
.LC36:
	.string	"M_THERML"
.LC37:
	.string	"M_THERMM"
.LC38:
	.string	"M_THERMR"
.LC39:
	.string	"M_THERMO"
	.text
	.globl	M_DrawThermo
	.type	M_DrawThermo, @function
M_DrawThermo:
.LFB45:
	.loc 1 1188 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# x, x
	movl	%esi, -24(%rbp)	# y, y
	movl	%edx, -28(%rbp)	# thermWidth, thermWidth
	movl	%ecx, -32(%rbp)	# thermDot, thermDot
# m_menu.c:1192:     xx = x;
	.loc 1 1192 8
	movl	-20(%rbp), %eax	# x, tmp89
	movl	%eax, -8(%rbp)	# tmp89, xx
# m_menu.c:1193:     V_DrawPatchDirect (xx,y,0,W_CacheLumpName("M_THERML",PU_CACHE));
	.loc 1 1193 31
	movl	$101, %esi	#,
	leaq	.LC36(%rip), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	call	W_CacheLumpName@PLT	#
	movq	%rax, %rdx	#, _1
# m_menu.c:1193:     V_DrawPatchDirect (xx,y,0,W_CacheLumpName("M_THERML",PU_CACHE));
	.loc 1 1193 5 discriminator 1
	movl	-24(%rbp), %esi	# y, tmp91
	movl	-8(%rbp), %eax	# xx, tmp92
	movq	%rdx, %rcx	# _1,
	movl	$0, %edx	#,
	movl	%eax, %edi	# tmp92,
	call	V_DrawPatchDirect@PLT	#
# m_menu.c:1194:     xx += 8;
	.loc 1 1194 8
	addl	$8, -8(%rbp)	#, xx
# m_menu.c:1195:     for (i=0;i<thermWidth;i++)
	.loc 1 1195 11
	movl	$0, -4(%rbp)	#, i
# m_menu.c:1195:     for (i=0;i<thermWidth;i++)
	.loc 1 1195 5
	jmp	.L147	#
.L148:
# m_menu.c:1197: 	V_DrawPatchDirect (xx,y,0,W_CacheLumpName("M_THERMM",PU_CACHE));
	.loc 1 1197 28
	movl	$101, %esi	#,
	leaq	.LC37(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	W_CacheLumpName@PLT	#
	movq	%rax, %rdx	#, _2
# m_menu.c:1197: 	V_DrawPatchDirect (xx,y,0,W_CacheLumpName("M_THERMM",PU_CACHE));
	.loc 1 1197 2 discriminator 1
	movl	-24(%rbp), %esi	# y, tmp94
	movl	-8(%rbp), %eax	# xx, tmp95
	movq	%rdx, %rcx	# _2,
	movl	$0, %edx	#,
	movl	%eax, %edi	# tmp95,
	call	V_DrawPatchDirect@PLT	#
# m_menu.c:1198: 	xx += 8;
	.loc 1 1198 5
	addl	$8, -8(%rbp)	#, xx
# m_menu.c:1195:     for (i=0;i<thermWidth;i++)
	.loc 1 1195 28 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L147:
# m_menu.c:1195:     for (i=0;i<thermWidth;i++)
	.loc 1 1195 15 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp96
	cmpl	-28(%rbp), %eax	# thermWidth, tmp96
	jl	.L148	#,
# m_menu.c:1200:     V_DrawPatchDirect (xx,y,0,W_CacheLumpName("M_THERMR",PU_CACHE));
	.loc 1 1200 31
	movl	$101, %esi	#,
	leaq	.LC38(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	W_CacheLumpName@PLT	#
	movq	%rax, %rdx	#, _3
# m_menu.c:1200:     V_DrawPatchDirect (xx,y,0,W_CacheLumpName("M_THERMR",PU_CACHE));
	.loc 1 1200 5 discriminator 1
	movl	-24(%rbp), %esi	# y, tmp98
	movl	-8(%rbp), %eax	# xx, tmp99
	movq	%rdx, %rcx	# _3,
	movl	$0, %edx	#,
	movl	%eax, %edi	# tmp99,
	call	V_DrawPatchDirect@PLT	#
# m_menu.c:1203: 		       0,W_CacheLumpName("M_THERMO",PU_CACHE));
	.loc 1 1203 12
	movl	$101, %esi	#,
	leaq	.LC39(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	W_CacheLumpName@PLT	#
	movq	%rax, %rdx	#, _4
# m_menu.c:1202:     V_DrawPatchDirect ((x+8) + thermDot*8,y,
	.loc 1 1202 26
	movl	-20(%rbp), %eax	# x, tmp101
	leal	8(%rax), %ecx	#, _5
# m_menu.c:1202:     V_DrawPatchDirect ((x+8) + thermDot*8,y,
	.loc 1 1202 40
	movl	-32(%rbp), %eax	# thermDot, tmp102
	sall	$3, %eax	#, _6
# m_menu.c:1202:     V_DrawPatchDirect ((x+8) + thermDot*8,y,
	.loc 1 1202 5
	leal	(%rcx,%rax), %edi	#, _7
	movl	-24(%rbp), %eax	# y, tmp103
	movq	%rdx, %rcx	# _4,
	movl	$0, %edx	#,
	movl	%eax, %esi	# tmp103,
	call	V_DrawPatchDirect@PLT	#
# m_menu.c:1204: }
	.loc 1 1204 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE45:
	.size	M_DrawThermo, .-M_DrawThermo
	.section	.rodata
.LC40:
	.string	"M_CELL1"
	.text
	.globl	M_DrawEmptyCell
	.type	M_DrawEmptyCell, @function
M_DrawEmptyCell:
.LFB46:
	.loc 1 1212 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# menu, menu
	movl	%esi, -12(%rbp)	# item, item
# m_menu.c:1214: 		       W_CacheLumpName("M_CELL1",PU_CACHE));
	.loc 1 1214 10
	movl	$101, %esi	#,
	leaq	.LC40(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	W_CacheLumpName@PLT	#
	movq	%rax, %rdx	#, _1
# m_menu.c:1213:     V_DrawPatchDirect (menu->x - 10,        menu->y+item*LINEHEIGHT - 1, 0,
	.loc 1 1213 49
	movq	-8(%rbp), %rax	# menu, tmp92
	movzwl	34(%rax), %eax	# menu_12(D)->y, _2
	cwtl
# m_menu.c:1213:     V_DrawPatchDirect (menu->x - 10,        menu->y+item*LINEHEIGHT - 1, 0,
	.loc 1 1213 57
	movl	-12(%rbp), %ecx	# item, tmp93
	sall	$4, %ecx	#, _4
# m_menu.c:1213:     V_DrawPatchDirect (menu->x - 10,        menu->y+item*LINEHEIGHT - 1, 0,
	.loc 1 1213 52
	addl	%ecx, %eax	# _4, _5
# m_menu.c:1213:     V_DrawPatchDirect (menu->x - 10,        menu->y+item*LINEHEIGHT - 1, 0,
	.loc 1 1213 5
	leal	-1(%rax), %esi	#, _6
# m_menu.c:1213:     V_DrawPatchDirect (menu->x - 10,        menu->y+item*LINEHEIGHT - 1, 0,
	.loc 1 1213 28
	movq	-8(%rbp), %rax	# menu, tmp94
	movzwl	32(%rax), %eax	# menu_12(D)->x, _7
	cwtl
# m_menu.c:1213:     V_DrawPatchDirect (menu->x - 10,        menu->y+item*LINEHEIGHT - 1, 0,
	.loc 1 1213 5
	subl	$10, %eax	#, _9
	movq	%rdx, %rcx	# _1,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _9,
	call	V_DrawPatchDirect@PLT	#
# m_menu.c:1215: }
	.loc 1 1215 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE46:
	.size	M_DrawEmptyCell, .-M_DrawEmptyCell
	.section	.rodata
.LC41:
	.string	"M_CELL2"
	.text
	.globl	M_DrawSelCell
	.type	M_DrawSelCell, @function
M_DrawSelCell:
.LFB47:
	.loc 1 1221 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# menu, menu
	movl	%esi, -12(%rbp)	# item, item
# m_menu.c:1223: 		       W_CacheLumpName("M_CELL2",PU_CACHE));
	.loc 1 1223 10
	movl	$101, %esi	#,
	leaq	.LC41(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	W_CacheLumpName@PLT	#
	movq	%rax, %rdx	#, _1
# m_menu.c:1222:     V_DrawPatchDirect (menu->x - 10,        menu->y+item*LINEHEIGHT - 1, 0,
	.loc 1 1222 49
	movq	-8(%rbp), %rax	# menu, tmp92
	movzwl	34(%rax), %eax	# menu_12(D)->y, _2
	cwtl
# m_menu.c:1222:     V_DrawPatchDirect (menu->x - 10,        menu->y+item*LINEHEIGHT - 1, 0,
	.loc 1 1222 57
	movl	-12(%rbp), %ecx	# item, tmp93
	sall	$4, %ecx	#, _4
# m_menu.c:1222:     V_DrawPatchDirect (menu->x - 10,        menu->y+item*LINEHEIGHT - 1, 0,
	.loc 1 1222 52
	addl	%ecx, %eax	# _4, _5
# m_menu.c:1222:     V_DrawPatchDirect (menu->x - 10,        menu->y+item*LINEHEIGHT - 1, 0,
	.loc 1 1222 5
	leal	-1(%rax), %esi	#, _6
# m_menu.c:1222:     V_DrawPatchDirect (menu->x - 10,        menu->y+item*LINEHEIGHT - 1, 0,
	.loc 1 1222 28
	movq	-8(%rbp), %rax	# menu, tmp94
	movzwl	32(%rax), %eax	# menu_12(D)->x, _7
	cwtl
# m_menu.c:1222:     V_DrawPatchDirect (menu->x - 10,        menu->y+item*LINEHEIGHT - 1, 0,
	.loc 1 1222 5
	subl	$10, %eax	#, _9
	movq	%rdx, %rcx	# _1,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _9,
	call	V_DrawPatchDirect@PLT	#
# m_menu.c:1224: }
	.loc 1 1224 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE47:
	.size	M_DrawSelCell, .-M_DrawSelCell
	.globl	M_StartMessage
	.type	M_StartMessage, @function
M_StartMessage:
.LFB48:
	.loc 1 1232 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# string, string
	movq	%rsi, -16(%rbp)	# routine, routine
	movl	%edx, -20(%rbp)	# input, input
# m_menu.c:1233:     messageLastMenuActive = menuactive;
	.loc 1 1233 27
	movl	menuactive(%rip), %eax	# menuactive, menuactive.71_1
	movl	%eax, messageLastMenuActive(%rip)	# menuactive.72_2, messageLastMenuActive
# m_menu.c:1234:     messageToPrint = 1;
	.loc 1 1234 20
	movl	$1, messageToPrint(%rip)	#, messageToPrint
# m_menu.c:1235:     messageString = string;
	.loc 1 1235 19
	movq	-8(%rbp), %rax	# string, tmp85
	movq	%rax, messageString(%rip)	# tmp85, messageString
# m_menu.c:1236:     messageRoutine = routine;
	.loc 1 1236 20
	movq	-16(%rbp), %rax	# routine, routine.73_3
	movq	%rax, messageRoutine(%rip)	# routine.73_3, messageRoutine
# m_menu.c:1237:     messageNeedsInput = input;
	.loc 1 1237 23
	movl	-20(%rbp), %eax	# input, tmp86
	movl	%eax, messageNeedsInput(%rip)	# tmp86, messageNeedsInput
# m_menu.c:1238:     menuactive = true;
	.loc 1 1238 16
	movl	$1, menuactive(%rip)	#, menuactive
# m_menu.c:1239:     return;
	.loc 1 1239 5
	nop	
# m_menu.c:1240: }
	.loc 1 1240 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE48:
	.size	M_StartMessage, .-M_StartMessage
	.globl	M_StopMessage
	.type	M_StopMessage, @function
M_StopMessage:
.LFB49:
	.loc 1 1245 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# m_menu.c:1246:     menuactive = messageLastMenuActive;
	.loc 1 1246 16
	movl	messageLastMenuActive(%rip), %eax	# messageLastMenuActive, messageLastMenuActive.74_1
	movl	%eax, menuactive(%rip)	# messageLastMenuActive.75_2, menuactive
# m_menu.c:1247:     messageToPrint = 0;
	.loc 1 1247 20
	movl	$0, messageToPrint(%rip)	#, messageToPrint
# m_menu.c:1248: }
	.loc 1 1248 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE49:
	.size	M_StopMessage, .-M_StopMessage
	.globl	M_StringWidth
	.type	M_StringWidth, @function
M_StringWidth:
.LFB50:
	.loc 1 1256 1
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
	movq	%rdi, -40(%rbp)	# string, string
# m_menu.c:1258:     int             w = 0;
	.loc 1 1258 21
	movl	$0, -24(%rbp)	#, w
# m_menu.c:1261:     for (i = 0;i < strlen(string);i++)
	.loc 1 1261 12
	movl	$0, -28(%rbp)	#, i
# m_menu.c:1261:     for (i = 0;i < strlen(string);i++)
	.loc 1 1261 5
	jmp	.L155	#
.L159:
# m_menu.c:1263: 	c = toupper(string[i]) - HU_FONTSTART;
	.loc 1 1263 20
	movl	-28(%rbp), %eax	# i, tmp94
	movslq	%eax, %rdx	# tmp94, _1
	movq	-40(%rbp), %rax	# string, tmp95
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
# m_menu.c:1263: 	c = toupper(string[i]) - HU_FONTSTART;
	.loc 1 1263 6
	movsbl	%al, %eax	# _3, _4
	movl	%eax, %edi	# _4,
	call	toupper@PLT	#
# m_menu.c:1263: 	c = toupper(string[i]) - HU_FONTSTART;
	.loc 1 1263 4 discriminator 1
	subl	$33, %eax	#, tmp96
	movl	%eax, -20(%rbp)	# tmp96, c
# m_menu.c:1264: 	if (c < 0 || c >= HU_FONTSIZE)
	.loc 1 1264 5
	cmpl	$0, -20(%rbp)	#, c
	js	.L156	#,
# m_menu.c:1264: 	if (c < 0 || c >= HU_FONTSIZE)
	.loc 1 1264 12 discriminator 1
	cmpl	$62, -20(%rbp)	#, c
	jle	.L157	#,
.L156:
# m_menu.c:1265: 	    w += 4;
	.loc 1 1265 8
	addl	$4, -24(%rbp)	#, w
	jmp	.L158	#
.L157:
# m_menu.c:1267: 	    w += SHORT (hu_font[c]->width);
	.loc 1 1267 11
	movl	-20(%rbp), %eax	# c, tmp98
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp99
	leaq	hu_font(%rip), %rax	#, tmp100
	movq	(%rdx,%rax), %rax	# hu_font[c_19], _6
	movzwl	(%rax), %eax	# _6->width, _7
	cwtl
# m_menu.c:1267: 	    w += SHORT (hu_font[c]->width);
	.loc 1 1267 8
	addl	%eax, -24(%rbp)	# _8, w
.L158:
# m_menu.c:1261:     for (i = 0;i < strlen(string);i++)
	.loc 1 1261 36 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L155:
# m_menu.c:1261:     for (i = 0;i < strlen(string);i++)
	.loc 1 1261 18 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp101
	movslq	%eax, %rbx	# tmp101, _9
# m_menu.c:1261:     for (i = 0;i < strlen(string);i++)
	.loc 1 1261 20 discriminator 1
	movq	-40(%rbp), %rax	# string, tmp102
	movq	%rax, %rdi	# tmp102,
	call	strlen@PLT	#
# m_menu.c:1261:     for (i = 0;i < strlen(string);i++)
	.loc 1 1261 18 discriminator 1
	cmpq	%rax, %rbx	# _10, _9
	jb	.L159	#,
# m_menu.c:1270:     return w;
	.loc 1 1270 12
	movl	-24(%rbp), %eax	# w, _18
# m_menu.c:1271: }
	.loc 1 1271 1
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE50:
	.size	M_StringWidth, .-M_StringWidth
	.globl	M_StringHeight
	.type	M_StringHeight, @function
M_StringHeight:
.LFB51:
	.loc 1 1279 1
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
	movq	%rdi, -40(%rbp)	# string, string
# m_menu.c:1282:     int             height = SHORT(hu_font[0]->height);
	.loc 1 1282 30
	movq	hu_font(%rip), %rax	# hu_font[0], _1
	movzwl	2(%rax), %eax	# _1->height, _2
# m_menu.c:1282:     int             height = SHORT(hu_font[0]->height);
	.loc 1 1282 21
	cwtl
	movl	%eax, -20(%rbp)	# tmp91, height
# m_menu.c:1284:     h = height;
	.loc 1 1284 7
	movl	-20(%rbp), %eax	# height, tmp92
	movl	%eax, -24(%rbp)	# tmp92, h
# m_menu.c:1285:     for (i = 0;i < strlen(string);i++)
	.loc 1 1285 12
	movl	$0, -28(%rbp)	#, i
# m_menu.c:1285:     for (i = 0;i < strlen(string);i++)
	.loc 1 1285 5
	jmp	.L162	#
.L164:
# m_menu.c:1286: 	if (string[i] == '\n')
	.loc 1 1286 12
	movl	-28(%rbp), %eax	# i, tmp93
	movslq	%eax, %rdx	# tmp93, _3
	movq	-40(%rbp), %rax	# string, tmp94
	addq	%rdx, %rax	# _3, _4
	movzbl	(%rax), %eax	# *_4, _5
# m_menu.c:1286: 	if (string[i] == '\n')
	.loc 1 1286 5
	cmpb	$10, %al	#, _5
	jne	.L163	#,
# m_menu.c:1287: 	    h += height;
	.loc 1 1287 8
	movl	-20(%rbp), %eax	# height, tmp95
	addl	%eax, -24(%rbp)	# tmp95, h
.L163:
# m_menu.c:1285:     for (i = 0;i < strlen(string);i++)
	.loc 1 1285 36 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L162:
# m_menu.c:1285:     for (i = 0;i < strlen(string);i++)
	.loc 1 1285 18 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp96
	movslq	%eax, %rbx	# tmp96, _6
# m_menu.c:1285:     for (i = 0;i < strlen(string);i++)
	.loc 1 1285 20 discriminator 1
	movq	-40(%rbp), %rax	# string, tmp97
	movq	%rax, %rdi	# tmp97,
	call	strlen@PLT	#
# m_menu.c:1285:     for (i = 0;i < strlen(string);i++)
	.loc 1 1285 18 discriminator 1
	cmpq	%rax, %rbx	# _7, _6
	jb	.L164	#,
# m_menu.c:1289:     return h;
	.loc 1 1289 12
	movl	-24(%rbp), %eax	# h, _16
# m_menu.c:1290: }
	.loc 1 1290 1
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE51:
	.size	M_StringHeight, .-M_StringHeight
	.globl	M_WriteText
	.type	M_WriteText, @function
M_WriteText:
.LFB52:
	.loc 1 1301 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# x, x
	movl	%esi, -40(%rbp)	# y, y
	movq	%rdx, -48(%rbp)	# string, string
# m_menu.c:1309:     ch = string;
	.loc 1 1309 8
	movq	-48(%rbp), %rax	# string, tmp89
	movq	%rax, -8(%rbp)	# tmp89, ch
# m_menu.c:1310:     cx = x;
	.loc 1 1310 8
	movl	-36(%rbp), %eax	# x, tmp90
	movl	%eax, -24(%rbp)	# tmp90, cx
# m_menu.c:1311:     cy = y;
	.loc 1 1311 8
	movl	-40(%rbp), %eax	# y, tmp91
	movl	%eax, -20(%rbp)	# tmp91, cy
.L174:
# m_menu.c:1315: 	c = *ch++;
	.loc 1 1315 9
	movq	-8(%rbp), %rax	# ch, ch.76_1
	leaq	1(%rax), %rdx	#, tmp92
	movq	%rdx, -8(%rbp)	# tmp92, ch
# m_menu.c:1315: 	c = *ch++;
	.loc 1 1315 6
	movzbl	(%rax), %eax	# *ch.76_1, _2
# m_menu.c:1315: 	c = *ch++;
	.loc 1 1315 4
	movsbl	%al, %eax	# _2, tmp93
	movl	%eax, -16(%rbp)	# tmp93, c
# m_menu.c:1316: 	if (!c)
	.loc 1 1316 5
	cmpl	$0, -16(%rbp)	#, c
	je	.L175	#,
# m_menu.c:1318: 	if (c == '\n')
	.loc 1 1318 5
	cmpl	$10, -16(%rbp)	#, c
	jne	.L169	#,
# m_menu.c:1320: 	    cx = x;
	.loc 1 1320 9
	movl	-36(%rbp), %eax	# x, tmp94
	movl	%eax, -24(%rbp)	# tmp94, cx
# m_menu.c:1321: 	    cy += 12;
	.loc 1 1321 9
	addl	$12, -20(%rbp)	#, cy
# m_menu.c:1322: 	    continue;
	.loc 1 1322 6
	jmp	.L170	#
.L169:
# m_menu.c:1325: 	c = toupper(c) - HU_FONTSTART;
	.loc 1 1325 6
	movl	-16(%rbp), %eax	# c, tmp95
	movl	%eax, %edi	# tmp95,
	call	toupper@PLT	#
# m_menu.c:1325: 	c = toupper(c) - HU_FONTSTART;
	.loc 1 1325 4 discriminator 1
	subl	$33, %eax	#, tmp96
	movl	%eax, -16(%rbp)	# tmp96, c
# m_menu.c:1326: 	if (c < 0 || c>= HU_FONTSIZE)
	.loc 1 1326 5
	cmpl	$0, -16(%rbp)	#, c
	js	.L171	#,
# m_menu.c:1326: 	if (c < 0 || c>= HU_FONTSIZE)
	.loc 1 1326 12 discriminator 2
	cmpl	$62, -16(%rbp)	#, c
	jle	.L172	#,
.L171:
# m_menu.c:1328: 	    cx += 4;
	.loc 1 1328 9
	addl	$4, -24(%rbp)	#, cx
# m_menu.c:1329: 	    continue;
	.loc 1 1329 6
	jmp	.L170	#
.L172:
# m_menu.c:1332: 	w = SHORT (hu_font[c]->width);
	.loc 1 1332 6
	movl	-16(%rbp), %eax	# c, tmp98
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp99
	leaq	hu_font(%rip), %rax	#, tmp100
	movq	(%rdx,%rax), %rax	# hu_font[c_24], _4
	movzwl	(%rax), %eax	# _4->width, _5
# m_menu.c:1332: 	w = SHORT (hu_font[c]->width);
	.loc 1 1332 4
	cwtl
	movl	%eax, -12(%rbp)	# tmp101, w
# m_menu.c:1333: 	if (cx+w > SCREENWIDTH)
	.loc 1 1333 8
	movl	-24(%rbp), %edx	# cx, tmp102
	movl	-12(%rbp), %eax	# w, tmp103
	addl	%edx, %eax	# tmp102, _6
# m_menu.c:1333: 	if (cx+w > SCREENWIDTH)
	.loc 1 1333 5
	cmpl	$320, %eax	#, _6
	jg	.L176	#,
# m_menu.c:1335: 	V_DrawPatchDirect(cx, cy, 0, hu_font[c]);
	.loc 1 1335 2
	movl	-16(%rbp), %eax	# c, tmp105
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp106
	leaq	hu_font(%rip), %rax	#, tmp107
	movq	(%rdx,%rax), %rdx	# hu_font[c_24], _7
	movl	-20(%rbp), %esi	# cy, tmp108
	movl	-24(%rbp), %eax	# cx, tmp109
	movq	%rdx, %rcx	# _7,
	movl	$0, %edx	#,
	movl	%eax, %edi	# tmp109,
	call	V_DrawPatchDirect@PLT	#
# m_menu.c:1336: 	cx+=w;
	.loc 1 1336 4
	movl	-12(%rbp), %eax	# w, tmp110
	addl	%eax, -24(%rbp)	# tmp110, cx
.L170:
# m_menu.c:1315: 	c = *ch++;
	.loc 1 1315 4
	jmp	.L174	#
.L175:
# m_menu.c:1317: 	    break;
	.loc 1 1317 6
	nop	
	jmp	.L177	#
.L176:
# m_menu.c:1334: 	    break;
	.loc 1 1334 6
	nop	
.L177:
# m_menu.c:1338: }
	.loc 1 1338 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE52:
	.size	M_WriteText, .-M_WriteText
	.section	.rodata
.LC42:
	.string	"PLAYPAL"
	.text
	.globl	M_Responder
	.type	M_Responder, @function
M_Responder:
.LFB53:
	.loc 1 1350 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# ev, ev
# m_menu.c:1360:     ch = -1;
	.loc 1 1360 8
	movl	$-1, -8(%rbp)	#, ch
# m_menu.c:1362:     if (ev->type == ev_joystick && joywait < I_GetTime())
	.loc 1 1362 11
	movq	-24(%rbp), %rax	# ev, tmp347
	movl	(%rax), %eax	# ev_308(D)->type, _1
# m_menu.c:1362:     if (ev->type == ev_joystick && joywait < I_GetTime())
	.loc 1 1362 8
	cmpl	$3, %eax	#, _1
	jne	.L179	#,
# m_menu.c:1362:     if (ev->type == ev_joystick && joywait < I_GetTime())
	.loc 1 1362 46 discriminator 1
	call	I_GetTime@PLT	#
	movl	%eax, %edx	#, _2
# m_menu.c:1362:     if (ev->type == ev_joystick && joywait < I_GetTime())
	.loc 1 1362 44 discriminator 1
	movl	joywait.7(%rip), %eax	# joywait, joywait.77_3
# m_menu.c:1362:     if (ev->type == ev_joystick && joywait < I_GetTime())
	.loc 1 1362 33 discriminator 1
	cmpl	%eax, %edx	# joywait.77_3, _2
	jle	.L179	#,
# m_menu.c:1364: 	if (ev->data3 == -1)
	.loc 1 1364 8
	movq	-24(%rbp), %rax	# ev, tmp348
	movl	12(%rax), %eax	# ev_308(D)->data3, _4
# m_menu.c:1364: 	if (ev->data3 == -1)
	.loc 1 1364 5
	cmpl	$-1, %eax	#, _4
	jne	.L180	#,
# m_menu.c:1366: 	    ch = KEY_UPARROW;
	.loc 1 1366 9
	movl	$173, -8(%rbp)	#, ch
# m_menu.c:1367: 	    joywait = I_GetTime() + 5;
	.loc 1 1367 16
	call	I_GetTime@PLT	#
# m_menu.c:1367: 	    joywait = I_GetTime() + 5;
	.loc 1 1367 28 discriminator 1
	addl	$5, %eax	#, _6
# m_menu.c:1367: 	    joywait = I_GetTime() + 5;
	.loc 1 1367 14 discriminator 1
	movl	%eax, joywait.7(%rip)	# _6, joywait
	jmp	.L181	#
.L180:
# m_menu.c:1369: 	else if (ev->data3 == 1)
	.loc 1 1369 13
	movq	-24(%rbp), %rax	# ev, tmp349
	movl	12(%rax), %eax	# ev_308(D)->data3, _7
# m_menu.c:1369: 	else if (ev->data3 == 1)
	.loc 1 1369 10
	cmpl	$1, %eax	#, _7
	jne	.L181	#,
# m_menu.c:1371: 	    ch = KEY_DOWNARROW;
	.loc 1 1371 9
	movl	$175, -8(%rbp)	#, ch
# m_menu.c:1372: 	    joywait = I_GetTime() + 5;
	.loc 1 1372 16
	call	I_GetTime@PLT	#
# m_menu.c:1372: 	    joywait = I_GetTime() + 5;
	.loc 1 1372 28 discriminator 1
	addl	$5, %eax	#, _9
# m_menu.c:1372: 	    joywait = I_GetTime() + 5;
	.loc 1 1372 14 discriminator 1
	movl	%eax, joywait.7(%rip)	# _9, joywait
.L181:
# m_menu.c:1375: 	if (ev->data2 == -1)
	.loc 1 1375 8
	movq	-24(%rbp), %rax	# ev, tmp350
	movl	8(%rax), %eax	# ev_308(D)->data2, _10
# m_menu.c:1375: 	if (ev->data2 == -1)
	.loc 1 1375 5
	cmpl	$-1, %eax	#, _10
	jne	.L182	#,
# m_menu.c:1377: 	    ch = KEY_LEFTARROW;
	.loc 1 1377 9
	movl	$172, -8(%rbp)	#, ch
# m_menu.c:1378: 	    joywait = I_GetTime() + 2;
	.loc 1 1378 16
	call	I_GetTime@PLT	#
# m_menu.c:1378: 	    joywait = I_GetTime() + 2;
	.loc 1 1378 28 discriminator 1
	addl	$2, %eax	#, _12
# m_menu.c:1378: 	    joywait = I_GetTime() + 2;
	.loc 1 1378 14 discriminator 1
	movl	%eax, joywait.7(%rip)	# _12, joywait
	jmp	.L183	#
.L182:
# m_menu.c:1380: 	else if (ev->data2 == 1)
	.loc 1 1380 13
	movq	-24(%rbp), %rax	# ev, tmp351
	movl	8(%rax), %eax	# ev_308(D)->data2, _13
# m_menu.c:1380: 	else if (ev->data2 == 1)
	.loc 1 1380 10
	cmpl	$1, %eax	#, _13
	jne	.L183	#,
# m_menu.c:1382: 	    ch = KEY_RIGHTARROW;
	.loc 1 1382 9
	movl	$174, -8(%rbp)	#, ch
# m_menu.c:1383: 	    joywait = I_GetTime() + 2;
	.loc 1 1383 16
	call	I_GetTime@PLT	#
# m_menu.c:1383: 	    joywait = I_GetTime() + 2;
	.loc 1 1383 28 discriminator 1
	addl	$2, %eax	#, _15
# m_menu.c:1383: 	    joywait = I_GetTime() + 2;
	.loc 1 1383 14 discriminator 1
	movl	%eax, joywait.7(%rip)	# _15, joywait
.L183:
# m_menu.c:1386: 	if (ev->data1&1)
	.loc 1 1386 8
	movq	-24(%rbp), %rax	# ev, tmp352
	movl	4(%rax), %eax	# ev_308(D)->data1, _16
# m_menu.c:1386: 	if (ev->data1&1)
	.loc 1 1386 15
	andl	$1, %eax	#, _17
# m_menu.c:1386: 	if (ev->data1&1)
	.loc 1 1386 5
	testl	%eax, %eax	# _17
	je	.L184	#,
# m_menu.c:1388: 	    ch = KEY_ENTER;
	.loc 1 1388 9
	movl	$13, -8(%rbp)	#, ch
# m_menu.c:1389: 	    joywait = I_GetTime() + 5;
	.loc 1 1389 16
	call	I_GetTime@PLT	#
# m_menu.c:1389: 	    joywait = I_GetTime() + 5;
	.loc 1 1389 28 discriminator 1
	addl	$5, %eax	#, _19
# m_menu.c:1389: 	    joywait = I_GetTime() + 5;
	.loc 1 1389 14 discriminator 1
	movl	%eax, joywait.7(%rip)	# _19, joywait
.L184:
# m_menu.c:1391: 	if (ev->data1&2)
	.loc 1 1391 8
	movq	-24(%rbp), %rax	# ev, tmp353
	movl	4(%rax), %eax	# ev_308(D)->data1, _20
# m_menu.c:1391: 	if (ev->data1&2)
	.loc 1 1391 15
	andl	$2, %eax	#, _21
# m_menu.c:1391: 	if (ev->data1&2)
	.loc 1 1391 5
	testl	%eax, %eax	# _21
	je	.L186	#,
# m_menu.c:1393: 	    ch = KEY_BACKSPACE;
	.loc 1 1393 9
	movl	$127, -8(%rbp)	#, ch
# m_menu.c:1394: 	    joywait = I_GetTime() + 5;
	.loc 1 1394 16
	call	I_GetTime@PLT	#
# m_menu.c:1394: 	    joywait = I_GetTime() + 5;
	.loc 1 1394 28 discriminator 1
	addl	$5, %eax	#, _23
# m_menu.c:1394: 	    joywait = I_GetTime() + 5;
	.loc 1 1394 14 discriminator 1
	movl	%eax, joywait.7(%rip)	# _23, joywait
# m_menu.c:1391: 	if (ev->data1&2)
	.loc 1 1391 5
	jmp	.L186	#
.L179:
# m_menu.c:1399: 	if (ev->type == ev_mouse && mousewait < I_GetTime())
	.loc 1 1399 8
	movq	-24(%rbp), %rax	# ev, tmp354
	movl	(%rax), %eax	# ev_308(D)->type, _24
# m_menu.c:1399: 	if (ev->type == ev_mouse && mousewait < I_GetTime())
	.loc 1 1399 5
	cmpl	$2, %eax	#, _24
	jne	.L187	#,
# m_menu.c:1399: 	if (ev->type == ev_mouse && mousewait < I_GetTime())
	.loc 1 1399 42 discriminator 1
	call	I_GetTime@PLT	#
	movl	%eax, %edx	#, _25
# m_menu.c:1399: 	if (ev->type == ev_mouse && mousewait < I_GetTime())
	.loc 1 1399 40 discriminator 1
	movl	mousewait.6(%rip), %eax	# mousewait, mousewait.78_26
# m_menu.c:1399: 	if (ev->type == ev_mouse && mousewait < I_GetTime())
	.loc 1 1399 27 discriminator 1
	cmpl	%eax, %edx	# mousewait.78_26, _25
	jle	.L187	#,
# m_menu.c:1401: 	    mousey += ev->data3;
	.loc 1 1401 18
	movq	-24(%rbp), %rax	# ev, tmp355
	movl	12(%rax), %edx	# ev_308(D)->data3, _27
# m_menu.c:1401: 	    mousey += ev->data3;
	.loc 1 1401 13
	movl	mousey.5(%rip), %eax	# mousey, mousey.79_28
	addl	%edx, %eax	# _27, _29
	movl	%eax, mousey.5(%rip)	# _29, mousey
# m_menu.c:1402: 	    if (mousey < lasty-30)
	.loc 1 1402 24
	movl	lasty.4(%rip), %eax	# lasty, lasty.80_30
	leal	-30(%rax), %edx	#, _31
# m_menu.c:1402: 	    if (mousey < lasty-30)
	.loc 1 1402 17
	movl	mousey.5(%rip), %eax	# mousey, mousey.81_32
# m_menu.c:1402: 	    if (mousey < lasty-30)
	.loc 1 1402 9
	cmpl	%eax, %edx	# mousey.81_32, _31
	jle	.L188	#,
# m_menu.c:1404: 		ch = KEY_DOWNARROW;
	.loc 1 1404 6
	movl	$175, -8(%rbp)	#, ch
# m_menu.c:1405: 		mousewait = I_GetTime() + 5;
	.loc 1 1405 15
	call	I_GetTime@PLT	#
# m_menu.c:1405: 		mousewait = I_GetTime() + 5;
	.loc 1 1405 27 discriminator 1
	addl	$5, %eax	#, _34
# m_menu.c:1405: 		mousewait = I_GetTime() + 5;
	.loc 1 1405 13 discriminator 1
	movl	%eax, mousewait.6(%rip)	# _34, mousewait
# m_menu.c:1406: 		mousey = lasty -= 30;
	.loc 1 1406 18
	movl	lasty.4(%rip), %eax	# lasty, lasty.82_35
	subl	$30, %eax	#, _36
	movl	%eax, lasty.4(%rip)	# _36, lasty
# m_menu.c:1406: 		mousey = lasty -= 30;
	.loc 1 1406 10
	movl	lasty.4(%rip), %eax	# lasty, lasty.83_37
	movl	%eax, mousey.5(%rip)	# lasty.83_37, mousey
	jmp	.L189	#
.L188:
# m_menu.c:1408: 	    else if (mousey > lasty+30)
	.loc 1 1408 29
	movl	lasty.4(%rip), %eax	# lasty, lasty.84_38
	leal	30(%rax), %edx	#, _39
# m_menu.c:1408: 	    else if (mousey > lasty+30)
	.loc 1 1408 22
	movl	mousey.5(%rip), %eax	# mousey, mousey.85_40
# m_menu.c:1408: 	    else if (mousey > lasty+30)
	.loc 1 1408 14
	cmpl	%eax, %edx	# mousey.85_40, _39
	jge	.L189	#,
# m_menu.c:1410: 		ch = KEY_UPARROW;
	.loc 1 1410 6
	movl	$173, -8(%rbp)	#, ch
# m_menu.c:1411: 		mousewait = I_GetTime() + 5;
	.loc 1 1411 15
	call	I_GetTime@PLT	#
# m_menu.c:1411: 		mousewait = I_GetTime() + 5;
	.loc 1 1411 27 discriminator 1
	addl	$5, %eax	#, _42
# m_menu.c:1411: 		mousewait = I_GetTime() + 5;
	.loc 1 1411 13 discriminator 1
	movl	%eax, mousewait.6(%rip)	# _42, mousewait
# m_menu.c:1412: 		mousey = lasty += 30;
	.loc 1 1412 18
	movl	lasty.4(%rip), %eax	# lasty, lasty.86_43
	addl	$30, %eax	#, _44
	movl	%eax, lasty.4(%rip)	# _44, lasty
# m_menu.c:1412: 		mousey = lasty += 30;
	.loc 1 1412 10
	movl	lasty.4(%rip), %eax	# lasty, lasty.87_45
	movl	%eax, mousey.5(%rip)	# lasty.87_45, mousey
.L189:
# m_menu.c:1415: 	    mousex += ev->data2;
	.loc 1 1415 18
	movq	-24(%rbp), %rax	# ev, tmp356
	movl	8(%rax), %edx	# ev_308(D)->data2, _46
# m_menu.c:1415: 	    mousex += ev->data2;
	.loc 1 1415 13
	movl	mousex.3(%rip), %eax	# mousex, mousex.88_47
	addl	%edx, %eax	# _46, _48
	movl	%eax, mousex.3(%rip)	# _48, mousex
# m_menu.c:1416: 	    if (mousex < lastx-30)
	.loc 1 1416 24
	movl	lastx.2(%rip), %eax	# lastx, lastx.89_49
	leal	-30(%rax), %edx	#, _50
# m_menu.c:1416: 	    if (mousex < lastx-30)
	.loc 1 1416 17
	movl	mousex.3(%rip), %eax	# mousex, mousex.90_51
# m_menu.c:1416: 	    if (mousex < lastx-30)
	.loc 1 1416 9
	cmpl	%eax, %edx	# mousex.90_51, _50
	jle	.L190	#,
# m_menu.c:1418: 		ch = KEY_LEFTARROW;
	.loc 1 1418 6
	movl	$172, -8(%rbp)	#, ch
# m_menu.c:1419: 		mousewait = I_GetTime() + 5;
	.loc 1 1419 15
	call	I_GetTime@PLT	#
# m_menu.c:1419: 		mousewait = I_GetTime() + 5;
	.loc 1 1419 27 discriminator 1
	addl	$5, %eax	#, _53
# m_menu.c:1419: 		mousewait = I_GetTime() + 5;
	.loc 1 1419 13 discriminator 1
	movl	%eax, mousewait.6(%rip)	# _53, mousewait
# m_menu.c:1420: 		mousex = lastx -= 30;
	.loc 1 1420 18
	movl	lastx.2(%rip), %eax	# lastx, lastx.91_54
	subl	$30, %eax	#, _55
	movl	%eax, lastx.2(%rip)	# _55, lastx
# m_menu.c:1420: 		mousex = lastx -= 30;
	.loc 1 1420 10
	movl	lastx.2(%rip), %eax	# lastx, lastx.92_56
	movl	%eax, mousex.3(%rip)	# lastx.92_56, mousex
	jmp	.L191	#
.L190:
# m_menu.c:1422: 	    else if (mousex > lastx+30)
	.loc 1 1422 29
	movl	lastx.2(%rip), %eax	# lastx, lastx.93_57
	leal	30(%rax), %edx	#, _58
# m_menu.c:1422: 	    else if (mousex > lastx+30)
	.loc 1 1422 22
	movl	mousex.3(%rip), %eax	# mousex, mousex.94_59
# m_menu.c:1422: 	    else if (mousex > lastx+30)
	.loc 1 1422 14
	cmpl	%eax, %edx	# mousex.94_59, _58
	jge	.L191	#,
# m_menu.c:1424: 		ch = KEY_RIGHTARROW;
	.loc 1 1424 6
	movl	$174, -8(%rbp)	#, ch
# m_menu.c:1425: 		mousewait = I_GetTime() + 5;
	.loc 1 1425 15
	call	I_GetTime@PLT	#
# m_menu.c:1425: 		mousewait = I_GetTime() + 5;
	.loc 1 1425 27 discriminator 1
	addl	$5, %eax	#, _61
# m_menu.c:1425: 		mousewait = I_GetTime() + 5;
	.loc 1 1425 13 discriminator 1
	movl	%eax, mousewait.6(%rip)	# _61, mousewait
# m_menu.c:1426: 		mousex = lastx += 30;
	.loc 1 1426 18
	movl	lastx.2(%rip), %eax	# lastx, lastx.95_62
	addl	$30, %eax	#, _63
	movl	%eax, lastx.2(%rip)	# _63, lastx
# m_menu.c:1426: 		mousex = lastx += 30;
	.loc 1 1426 10
	movl	lastx.2(%rip), %eax	# lastx, lastx.96_64
	movl	%eax, mousex.3(%rip)	# lastx.96_64, mousex
.L191:
# m_menu.c:1429: 	    if (ev->data1&1)
	.loc 1 1429 12
	movq	-24(%rbp), %rax	# ev, tmp357
	movl	4(%rax), %eax	# ev_308(D)->data1, _65
# m_menu.c:1429: 	    if (ev->data1&1)
	.loc 1 1429 19
	andl	$1, %eax	#, _66
# m_menu.c:1429: 	    if (ev->data1&1)
	.loc 1 1429 9
	testl	%eax, %eax	# _66
	je	.L192	#,
# m_menu.c:1431: 		ch = KEY_ENTER;
	.loc 1 1431 6
	movl	$13, -8(%rbp)	#, ch
# m_menu.c:1432: 		mousewait = I_GetTime() + 15;
	.loc 1 1432 15
	call	I_GetTime@PLT	#
# m_menu.c:1432: 		mousewait = I_GetTime() + 15;
	.loc 1 1432 27 discriminator 1
	addl	$15, %eax	#, _68
# m_menu.c:1432: 		mousewait = I_GetTime() + 15;
	.loc 1 1432 13 discriminator 1
	movl	%eax, mousewait.6(%rip)	# _68, mousewait
.L192:
# m_menu.c:1435: 	    if (ev->data1&2)
	.loc 1 1435 12
	movq	-24(%rbp), %rax	# ev, tmp358
	movl	4(%rax), %eax	# ev_308(D)->data1, _69
# m_menu.c:1435: 	    if (ev->data1&2)
	.loc 1 1435 19
	andl	$2, %eax	#, _70
# m_menu.c:1435: 	    if (ev->data1&2)
	.loc 1 1435 9
	testl	%eax, %eax	# _70
	je	.L186	#,
# m_menu.c:1437: 		ch = KEY_BACKSPACE;
	.loc 1 1437 6
	movl	$127, -8(%rbp)	#, ch
# m_menu.c:1438: 		mousewait = I_GetTime() + 15;
	.loc 1 1438 15
	call	I_GetTime@PLT	#
# m_menu.c:1438: 		mousewait = I_GetTime() + 15;
	.loc 1 1438 27 discriminator 1
	addl	$15, %eax	#, _72
# m_menu.c:1438: 		mousewait = I_GetTime() + 15;
	.loc 1 1438 13 discriminator 1
	movl	%eax, mousewait.6(%rip)	# _72, mousewait
# m_menu.c:1435: 	    if (ev->data1&2)
	.loc 1 1435 9
	jmp	.L186	#
.L187:
# m_menu.c:1442: 	    if (ev->type == ev_keydown)
	.loc 1 1442 12
	movq	-24(%rbp), %rax	# ev, tmp359
	movl	(%rax), %eax	# ev_308(D)->type, _73
# m_menu.c:1442: 	    if (ev->type == ev_keydown)
	.loc 1 1442 9
	testl	%eax, %eax	# _73
	jne	.L186	#,
# m_menu.c:1444: 		ch = ev->data1;
	.loc 1 1444 6
	movq	-24(%rbp), %rax	# ev, tmp360
	movl	4(%rax), %eax	# ev_308(D)->data1, tmp361
	movl	%eax, -8(%rbp)	# tmp361, ch
.L186:
# m_menu.c:1448:     if (ch == -1)
	.loc 1 1448 8
	cmpl	$-1, -8(%rbp)	#, ch
	jne	.L194	#,
# m_menu.c:1449: 	return false;
	.loc 1 1449 9
	movl	$0, %eax	#, _278
	jmp	.L195	#
.L194:
# m_menu.c:1453:     if (saveStringEnter)
	.loc 1 1453 9
	movl	saveStringEnter(%rip), %eax	# saveStringEnter, saveStringEnter.97_74
# m_menu.c:1453:     if (saveStringEnter)
	.loc 1 1453 8
	testl	%eax, %eax	# saveStringEnter.97_74
	je	.L196	#,
# m_menu.c:1455: 	switch(ch)
	.loc 1 1455 2
	cmpl	$127, -8(%rbp)	#, ch
	je	.L197	#,
	cmpl	$127, -8(%rbp)	#, ch
	jg	.L198	#,
	cmpl	$13, -8(%rbp)	#, ch
	je	.L199	#,
	cmpl	$27, -8(%rbp)	#, ch
	je	.L200	#,
	jmp	.L198	#
.L197:
# m_menu.c:1458: 	    if (saveCharIndex > 0)
	.loc 1 1458 24
	movl	saveCharIndex(%rip), %eax	# saveCharIndex, saveCharIndex.98_75
# m_menu.c:1458: 	    if (saveCharIndex > 0)
	.loc 1 1458 9
	testl	%eax, %eax	# saveCharIndex.98_75
	jle	.L260	#,
# m_menu.c:1460: 		saveCharIndex--;
	.loc 1 1460 16
	movl	saveCharIndex(%rip), %eax	# saveCharIndex, saveCharIndex.99_76
	subl	$1, %eax	#, _77
	movl	%eax, saveCharIndex(%rip)	# _77, saveCharIndex
# m_menu.c:1461: 		savegamestrings[saveSlot][saveCharIndex] = 0;
	.loc 1 1461 28
	movl	saveSlot(%rip), %eax	# saveSlot, saveSlot.100_78
	movl	saveCharIndex(%rip), %edx	# saveCharIndex, saveCharIndex.101_79
# m_menu.c:1461: 		savegamestrings[saveSlot][saveCharIndex] = 0;
	.loc 1 1461 44
	movslq	%edx, %rcx	# saveCharIndex.101_79, tmp362
	movslq	%eax, %rdx	# saveSlot.100_78, tmp363
	movq	%rdx, %rax	# tmp363, tmp364
	addq	%rax, %rax	# tmp364
	addq	%rdx, %rax	# tmp363, tmp364
	salq	$3, %rax	#, tmp365
	leaq	(%rax,%rcx), %rdx	#, tmp366
	leaq	savegamestrings(%rip), %rax	#, tmp368
	addq	%rdx, %rax	# tmp366, tmp367
	movb	$0, (%rax)	#, savegamestrings[saveSlot.100_78][saveCharIndex.101_79]
# m_menu.c:1463: 	    break;
	.loc 1 1463 6
	jmp	.L260	#
.L200:
# m_menu.c:1466: 	    saveStringEnter = 0;
	.loc 1 1466 22
	movl	$0, saveStringEnter(%rip)	#, saveStringEnter
# m_menu.c:1467: 	    strcpy(&savegamestrings[saveSlot][0],saveOldString);
	.loc 1 1467 39
	movl	saveSlot(%rip), %eax	# saveSlot, saveSlot.102_80
# m_menu.c:1467: 	    strcpy(&savegamestrings[saveSlot][0],saveOldString);
	.loc 1 1467 6
	movslq	%eax, %rdx	# saveSlot.102_80, tmp369
	movq	%rdx, %rax	# tmp369, tmp370
	addq	%rax, %rax	# tmp370
	addq	%rdx, %rax	# tmp369, tmp370
	salq	$3, %rax	#, tmp371
	leaq	savegamestrings(%rip), %rdx	#, tmp372
	addq	%rdx, %rax	# tmp372, _81
	leaq	saveOldString(%rip), %rdx	#, tmp373
	movq	%rdx, %rsi	# tmp373,
	movq	%rax, %rdi	# _81,
	call	strcpy@PLT	#
# m_menu.c:1468: 	    break;
	.loc 1 1468 6
	jmp	.L202	#
.L199:
# m_menu.c:1471: 	    saveStringEnter = 0;
	.loc 1 1471 22
	movl	$0, saveStringEnter(%rip)	#, saveStringEnter
# m_menu.c:1472: 	    if (savegamestrings[saveSlot][0])
	.loc 1 1472 35
	movl	saveSlot(%rip), %eax	# saveSlot, saveSlot.103_82
	movslq	%eax, %rdx	# saveSlot.103_82, tmp374
	movq	%rdx, %rax	# tmp374, tmp376
	addq	%rax, %rax	# tmp376
	addq	%rdx, %rax	# tmp374, tmp376
	salq	$3, %rax	#, tmp377
	movq	%rax, %rdx	# tmp376, tmp375
	leaq	savegamestrings(%rip), %rax	#, tmp378
	movzbl	(%rdx,%rax), %eax	# savegamestrings[saveSlot.103_82][0], _83
# m_menu.c:1472: 	    if (savegamestrings[saveSlot][0])
	.loc 1 1472 9
	testb	%al, %al	# _83
	je	.L261	#,
# m_menu.c:1473: 		M_DoSave(saveSlot);
	.loc 1 1473 3
	movl	saveSlot(%rip), %eax	# saveSlot, saveSlot.104_84
	movl	%eax, %edi	# saveSlot.104_84,
	call	M_DoSave	#
# m_menu.c:1474: 	    break;
	.loc 1 1474 6
	jmp	.L261	#
.L198:
# m_menu.c:1477: 	    ch = toupper(ch);
	.loc 1 1477 11
	movl	-8(%rbp), %eax	# ch, tmp379
	movl	%eax, %edi	# tmp379,
	call	toupper@PLT	#
	movl	%eax, -8(%rbp)	# tmp380, ch
# m_menu.c:1478: 	    if (ch != 32)
	.loc 1 1478 9
	cmpl	$32, -8(%rbp)	#, ch
	je	.L204	#,
# m_menu.c:1479: 		if (ch-HU_FONTSTART < 0 || ch-HU_FONTSTART >= HU_FONTSIZE)
	.loc 1 1479 6
	cmpl	$32, -8(%rbp)	#, ch
	jle	.L202	#,
# m_menu.c:1479: 		if (ch-HU_FONTSTART < 0 || ch-HU_FONTSTART >= HU_FONTSIZE)
	.loc 1 1479 27 discriminator 1
	cmpl	$95, -8(%rbp)	#, ch
	jg	.L202	#,
.L204:
# m_menu.c:1481: 	    if (ch >= 32 && ch <= 127 &&
	.loc 1 1481 9
	cmpl	$31, -8(%rbp)	#, ch
	jle	.L262	#,
# m_menu.c:1481: 	    if (ch >= 32 && ch <= 127 &&
	.loc 1 1481 19 discriminator 1
	cmpl	$127, -8(%rbp)	#, ch
	jg	.L262	#,
# m_menu.c:1482: 		saveCharIndex < SAVESTRINGSIZE-1 &&
	.loc 1 1482 17
	movl	saveCharIndex(%rip), %eax	# saveCharIndex, saveCharIndex.105_85
# m_menu.c:1481: 	    if (ch >= 32 && ch <= 127 &&
	.loc 1 1481 32 discriminator 2
	cmpl	$22, %eax	#, saveCharIndex.105_85
	jg	.L262	#,
# m_menu.c:1483: 		M_StringWidth(savegamestrings[saveSlot]) <
	.loc 1 1483 32
	movl	saveSlot(%rip), %eax	# saveSlot, saveSlot.106_86
	movslq	%eax, %rdx	# saveSlot.106_86, tmp381
	movq	%rdx, %rax	# tmp381, tmp382
	addq	%rax, %rax	# tmp382
	addq	%rdx, %rax	# tmp381, tmp382
	salq	$3, %rax	#, tmp383
	leaq	savegamestrings(%rip), %rdx	#, tmp384
	addq	%rdx, %rax	# tmp384, _87
# m_menu.c:1483: 		M_StringWidth(savegamestrings[saveSlot]) <
	.loc 1 1483 3
	movq	%rax, %rdi	# _87,
	call	M_StringWidth	#
# m_menu.c:1482: 		saveCharIndex < SAVESTRINGSIZE-1 &&
	.loc 1 1482 36
	cmpl	$175, %eax	#, _88
	jg	.L262	#,
# m_menu.c:1486: 		savegamestrings[saveSlot][saveCharIndex++] = ch;
	.loc 1 1486 28
	movl	saveSlot(%rip), %esi	# saveSlot, saveSlot.107_89
# m_menu.c:1486: 		savegamestrings[saveSlot][saveCharIndex++] = ch;
	.loc 1 1486 42
	movl	saveCharIndex(%rip), %eax	# saveCharIndex, saveCharIndex.108_90
	leal	1(%rax), %edx	#, _92
	movl	%edx, saveCharIndex(%rip)	# _92, saveCharIndex
# m_menu.c:1486: 		savegamestrings[saveSlot][saveCharIndex++] = ch;
	.loc 1 1486 46
	movl	-8(%rbp), %edx	# ch, tmp385
	movl	%edx, %edi	# tmp385, _93
	movslq	%eax, %rcx	# saveCharIndex.108_90, tmp386
	movslq	%esi, %rdx	# saveSlot.107_89, tmp387
	movq	%rdx, %rax	# tmp387, tmp388
	addq	%rax, %rax	# tmp388
	addq	%rdx, %rax	# tmp387, tmp388
	salq	$3, %rax	#, tmp389
	leaq	(%rax,%rcx), %rdx	#, tmp390
	leaq	savegamestrings(%rip), %rax	#, tmp392
	addq	%rdx, %rax	# tmp390, tmp391
	movb	%dil, (%rax)	# _93, savegamestrings[saveSlot.107_89][saveCharIndex.109_91]
# m_menu.c:1487: 		savegamestrings[saveSlot][saveCharIndex] = 0;
	.loc 1 1487 28
	movl	saveSlot(%rip), %eax	# saveSlot, saveSlot.110_94
	movl	saveCharIndex(%rip), %edx	# saveCharIndex, saveCharIndex.111_95
# m_menu.c:1487: 		savegamestrings[saveSlot][saveCharIndex] = 0;
	.loc 1 1487 44
	movslq	%edx, %rcx	# saveCharIndex.111_95, tmp393
	movslq	%eax, %rdx	# saveSlot.110_94, tmp394
	movq	%rdx, %rax	# tmp394, tmp395
	addq	%rax, %rax	# tmp395
	addq	%rdx, %rax	# tmp394, tmp395
	salq	$3, %rax	#, tmp396
	leaq	(%rax,%rcx), %rdx	#, tmp397
	leaq	savegamestrings(%rip), %rax	#, tmp399
	addq	%rdx, %rax	# tmp397, tmp398
	movb	$0, (%rax)	#, savegamestrings[saveSlot.110_94][saveCharIndex.111_95]
# m_menu.c:1489: 	    break;
	.loc 1 1489 6
	jmp	.L262	#
.L260:
# m_menu.c:1463: 	    break;
	.loc 1 1463 6
	nop	
	jmp	.L202	#
.L261:
# m_menu.c:1474: 	    break;
	.loc 1 1474 6
	nop	
	jmp	.L202	#
.L262:
# m_menu.c:1489: 	    break;
	.loc 1 1489 6
	nop	
.L202:
# m_menu.c:1491: 	return true;
	.loc 1 1491 9
	movl	$1, %eax	#, _278
	jmp	.L195	#
.L196:
# m_menu.c:1495:     if (messageToPrint)
	.loc 1 1495 9
	movl	messageToPrint(%rip), %eax	# messageToPrint, messageToPrint.112_96
# m_menu.c:1495:     if (messageToPrint)
	.loc 1 1495 8
	testl	%eax, %eax	# messageToPrint.112_96
	je	.L206	#,
# m_menu.c:1497: 	if (messageNeedsInput == true &&
	.loc 1 1497 24
	movl	messageNeedsInput(%rip), %eax	# messageNeedsInput, messageNeedsInput.113_97
# m_menu.c:1497: 	if (messageNeedsInput == true &&
	.loc 1 1497 5
	cmpl	$1, %eax	#, messageNeedsInput.113_97
	jne	.L207	#,
# m_menu.c:1497: 	if (messageNeedsInput == true &&
	.loc 1 1497 32 discriminator 1
	cmpl	$32, -8(%rbp)	#, ch
	je	.L207	#,
# m_menu.c:1498: 	    !(ch == ' ' || ch == 'n' || ch == 'y' || ch == KEY_ESCAPE))
	.loc 1 1498 18
	cmpl	$110, -8(%rbp)	#, ch
	je	.L207	#,
# m_menu.c:1498: 	    !(ch == ' ' || ch == 'n' || ch == 'y' || ch == KEY_ESCAPE))
	.loc 1 1498 31 discriminator 1
	cmpl	$121, -8(%rbp)	#, ch
	je	.L207	#,
# m_menu.c:1498: 	    !(ch == ' ' || ch == 'n' || ch == 'y' || ch == KEY_ESCAPE))
	.loc 1 1498 6 discriminator 2
	cmpl	$27, -8(%rbp)	#, ch
	je	.L207	#,
# m_menu.c:1499: 	    return false;
	.loc 1 1499 13
	movl	$0, %eax	#, _278
	jmp	.L195	#
.L207:
# m_menu.c:1501: 	menuactive = messageLastMenuActive;
	.loc 1 1501 13
	movl	messageLastMenuActive(%rip), %eax	# messageLastMenuActive, messageLastMenuActive.114_98
	movl	%eax, menuactive(%rip)	# messageLastMenuActive.115_99, menuactive
# m_menu.c:1502: 	messageToPrint = 0;
	.loc 1 1502 17
	movl	$0, messageToPrint(%rip)	#, messageToPrint
# m_menu.c:1503: 	if (messageRoutine)
	.loc 1 1503 6
	movq	messageRoutine(%rip), %rax	# messageRoutine, messageRoutine.116_100
# m_menu.c:1503: 	if (messageRoutine)
	.loc 1 1503 5
	testq	%rax, %rax	# messageRoutine.116_100
	je	.L208	#,
# m_menu.c:1504: 	    messageRoutine(ch);
	.loc 1 1504 6
	movq	messageRoutine(%rip), %rdx	# messageRoutine, messageRoutine.117_101
	movl	-8(%rbp), %eax	# ch, tmp400
	movl	%eax, %edi	# tmp400,
	call	*%rdx	# messageRoutine.117_101
.LVL0:
.L208:
# m_menu.c:1506: 	menuactive = false;
	.loc 1 1506 13
	movl	$0, menuactive(%rip)	#, menuactive
# m_menu.c:1507: 	S_StartSound(NULL,sfx_swtchx);
	.loc 1 1507 2
	movl	$24, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
# m_menu.c:1508: 	return true;
	.loc 1 1508 9
	movl	$1, %eax	#, _278
	jmp	.L195	#
.L206:
# m_menu.c:1511:     if (devparm && ch == KEY_F1)
	.loc 1 1511 9
	movl	devparm(%rip), %eax	# devparm, devparm.118_102
# m_menu.c:1511:     if (devparm && ch == KEY_F1)
	.loc 1 1511 8
	testl	%eax, %eax	# devparm.118_102
	je	.L209	#,
# m_menu.c:1511:     if (devparm && ch == KEY_F1)
	.loc 1 1511 17 discriminator 1
	cmpl	$187, -8(%rbp)	#, ch
	jne	.L209	#,
# m_menu.c:1513: 	G_ScreenShot ();
	.loc 1 1513 2
	call	G_ScreenShot@PLT	#
# m_menu.c:1514: 	return true;
	.loc 1 1514 9
	movl	$1, %eax	#, _278
	jmp	.L195	#
.L209:
# m_menu.c:1519:     if (!menuactive)
	.loc 1 1519 9
	movl	menuactive(%rip), %eax	# menuactive, menuactive.119_103
# m_menu.c:1519:     if (!menuactive)
	.loc 1 1519 8
	testl	%eax, %eax	# menuactive.119_103
	jne	.L210	#,
# m_menu.c:1520: 	switch(ch)
	.loc 1 1520 2
	cmpl	$215, -8(%rbp)	#, ch
	jg	.L210	#,
	cmpl	$187, -8(%rbp)	#, ch
	jge	.L211	#,
	cmpl	$45, -8(%rbp)	#, ch
	je	.L212	#,
	cmpl	$61, -8(%rbp)	#, ch
	je	.L213	#,
	jmp	.L210	#
.L211:
	movl	-8(%rbp), %eax	# ch, tmp402
	subl	$187, %eax	#, tmp401
	cmpl	$28, %eax	#, tmp401
	ja	.L210	#,
	movl	%eax, %eax	# tmp401, tmp403
	leaq	0(,%rax,4), %rdx	#, tmp404
	leaq	.L215(%rip), %rax	#, tmp405
	movl	(%rdx,%rax), %eax	#, tmp406
	cltq
	leaq	.L215(%rip), %rdx	#, tmp409
	addq	%rdx, %rax	# tmp409, tmp408
	notrack jmp	*%rax	# tmp408
	.section	.rodata
	.align 4
	.align 4
.L215:
	.long	.L225-.L215
	.long	.L224-.L215
	.long	.L223-.L215
	.long	.L222-.L215
	.long	.L221-.L215
	.long	.L220-.L215
	.long	.L219-.L215
	.long	.L218-.L215
	.long	.L217-.L215
	.long	.L216-.L215
	.long	.L210-.L215
	.long	.L210-.L215
	.long	.L210-.L215
	.long	.L210-.L215
	.long	.L210-.L215
	.long	.L210-.L215
	.long	.L210-.L215
	.long	.L210-.L215
	.long	.L210-.L215
	.long	.L210-.L215
	.long	.L210-.L215
	.long	.L210-.L215
	.long	.L210-.L215
	.long	.L210-.L215
	.long	.L210-.L215
	.long	.L210-.L215
	.long	.L210-.L215
	.long	.L210-.L215
	.long	.L214-.L215
	.text
.L212:
# m_menu.c:1523: 	    if (automapactive || chat_on)
	.loc 1 1523 10
	movl	automapactive(%rip), %eax	# automapactive, automapactive.120_104
# m_menu.c:1523: 	    if (automapactive || chat_on)
	.loc 1 1523 9
	testl	%eax, %eax	# automapactive.120_104
	jne	.L226	#,
# m_menu.c:1523: 	    if (automapactive || chat_on)
	.loc 1 1523 24 discriminator 1
	movl	chat_on(%rip), %eax	# chat_on, chat_on.121_105
	testl	%eax, %eax	# chat_on.121_105
	je	.L227	#,
.L226:
# m_menu.c:1524: 		return false;
	.loc 1 1524 10
	movl	$0, %eax	#, _278
	jmp	.L195	#
.L227:
# m_menu.c:1525: 	    M_SizeDisplay(0);
	.loc 1 1525 6
	movl	$0, %edi	#,
	call	M_SizeDisplay	#
# m_menu.c:1526: 	    S_StartSound(NULL,sfx_stnmov);
	.loc 1 1526 6
	movl	$22, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
# m_menu.c:1527: 	    return true;
	.loc 1 1527 13
	movl	$1, %eax	#, _278
	jmp	.L195	#
.L213:
# m_menu.c:1530: 	    if (automapactive || chat_on)
	.loc 1 1530 10
	movl	automapactive(%rip), %eax	# automapactive, automapactive.122_106
# m_menu.c:1530: 	    if (automapactive || chat_on)
	.loc 1 1530 9
	testl	%eax, %eax	# automapactive.122_106
	jne	.L228	#,
# m_menu.c:1530: 	    if (automapactive || chat_on)
	.loc 1 1530 24 discriminator 1
	movl	chat_on(%rip), %eax	# chat_on, chat_on.123_107
	testl	%eax, %eax	# chat_on.123_107
	je	.L229	#,
.L228:
# m_menu.c:1531: 		return false;
	.loc 1 1531 10
	movl	$0, %eax	#, _278
	jmp	.L195	#
.L229:
# m_menu.c:1532: 	    M_SizeDisplay(1);
	.loc 1 1532 6
	movl	$1, %edi	#,
	call	M_SizeDisplay	#
# m_menu.c:1533: 	    S_StartSound(NULL,sfx_stnmov);
	.loc 1 1533 6
	movl	$22, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
# m_menu.c:1534: 	    return true;
	.loc 1 1534 13
	movl	$1, %eax	#, _278
	jmp	.L195	#
.L225:
# m_menu.c:1537: 	    M_StartControlPanel ();
	.loc 1 1537 6
	call	M_StartControlPanel	#
# m_menu.c:1539: 	    if ( gamemode == retail )
	.loc 1 1539 20
	movl	gamemode(%rip), %eax	# gamemode, gamemode.124_108
# m_menu.c:1539: 	    if ( gamemode == retail )
	.loc 1 1539 9
	cmpl	$3, %eax	#, gamemode.124_108
	jne	.L230	#,
# m_menu.c:1540: 	      currentMenu = &ReadDef2;
	.loc 1 1540 20
	leaq	ReadDef2(%rip), %rax	#, tmp410
	movq	%rax, currentMenu(%rip)	# tmp410, currentMenu
	jmp	.L231	#
.L230:
# m_menu.c:1542: 	      currentMenu = &ReadDef1;
	.loc 1 1542 20
	leaq	ReadDef1(%rip), %rax	#, tmp411
	movq	%rax, currentMenu(%rip)	# tmp411, currentMenu
.L231:
# m_menu.c:1544: 	    itemOn = 0;
	.loc 1 1544 13
	movw	$0, itemOn(%rip)	#, itemOn
# m_menu.c:1545: 	    S_StartSound(NULL,sfx_swtchn);
	.loc 1 1545 6
	movl	$23, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
# m_menu.c:1546: 	    return true;
	.loc 1 1546 13
	movl	$1, %eax	#, _278
	jmp	.L195	#
.L224:
# m_menu.c:1549: 	    M_StartControlPanel();
	.loc 1 1549 6
	call	M_StartControlPanel	#
# m_menu.c:1550: 	    S_StartSound(NULL,sfx_swtchn);
	.loc 1 1550 6
	movl	$23, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
# m_menu.c:1551: 	    M_SaveGame(0);
	.loc 1 1551 6
	movl	$0, %edi	#,
	call	M_SaveGame	#
# m_menu.c:1552: 	    return true;
	.loc 1 1552 13
	movl	$1, %eax	#, _278
	jmp	.L195	#
.L223:
# m_menu.c:1555: 	    M_StartControlPanel();
	.loc 1 1555 6
	call	M_StartControlPanel	#
# m_menu.c:1556: 	    S_StartSound(NULL,sfx_swtchn);
	.loc 1 1556 6
	movl	$23, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
# m_menu.c:1557: 	    M_LoadGame(0);
	.loc 1 1557 6
	movl	$0, %edi	#,
	call	M_LoadGame	#
# m_menu.c:1558: 	    return true;
	.loc 1 1558 13
	movl	$1, %eax	#, _278
	jmp	.L195	#
.L222:
# m_menu.c:1561: 	    M_StartControlPanel ();
	.loc 1 1561 6
	call	M_StartControlPanel	#
# m_menu.c:1562: 	    currentMenu = &SoundDef;
	.loc 1 1562 18
	leaq	SoundDef(%rip), %rax	#, tmp412
	movq	%rax, currentMenu(%rip)	# tmp412, currentMenu
# m_menu.c:1563: 	    itemOn = sfx_vol;
	.loc 1 1563 13
	movw	$0, itemOn(%rip)	#, itemOn
# m_menu.c:1564: 	    S_StartSound(NULL,sfx_swtchn);
	.loc 1 1564 6
	movl	$23, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
# m_menu.c:1565: 	    return true;
	.loc 1 1565 13
	movl	$1, %eax	#, _278
	jmp	.L195	#
.L221:
# m_menu.c:1568: 	    M_ChangeDetail(0);
	.loc 1 1568 6
	movl	$0, %edi	#,
	call	M_ChangeDetail	#
# m_menu.c:1569: 	    S_StartSound(NULL,sfx_swtchn);
	.loc 1 1569 6
	movl	$23, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
# m_menu.c:1570: 	    return true;
	.loc 1 1570 13
	movl	$1, %eax	#, _278
	jmp	.L195	#
.L220:
# m_menu.c:1573: 	    S_StartSound(NULL,sfx_swtchn);
	.loc 1 1573 6
	movl	$23, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
# m_menu.c:1574: 	    M_QuickSave();
	.loc 1 1574 6
	call	M_QuickSave	#
# m_menu.c:1575: 	    return true;
	.loc 1 1575 13
	movl	$1, %eax	#, _278
	jmp	.L195	#
.L219:
# m_menu.c:1578: 	    S_StartSound(NULL,sfx_swtchn);
	.loc 1 1578 6
	movl	$23, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
# m_menu.c:1579: 	    M_EndGame(0);
	.loc 1 1579 6
	movl	$0, %edi	#,
	call	M_EndGame	#
# m_menu.c:1580: 	    return true;
	.loc 1 1580 13
	movl	$1, %eax	#, _278
	jmp	.L195	#
.L218:
# m_menu.c:1583: 	    M_ChangeMessages(0);
	.loc 1 1583 6
	movl	$0, %edi	#,
	call	M_ChangeMessages	#
# m_menu.c:1584: 	    S_StartSound(NULL,sfx_swtchn);
	.loc 1 1584 6
	movl	$23, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
# m_menu.c:1585: 	    return true;
	.loc 1 1585 13
	movl	$1, %eax	#, _278
	jmp	.L195	#
.L217:
# m_menu.c:1588: 	    S_StartSound(NULL,sfx_swtchn);
	.loc 1 1588 6
	movl	$23, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
# m_menu.c:1589: 	    M_QuickLoad();
	.loc 1 1589 6
	call	M_QuickLoad	#
# m_menu.c:1590: 	    return true;
	.loc 1 1590 13
	movl	$1, %eax	#, _278
	jmp	.L195	#
.L216:
# m_menu.c:1593: 	    S_StartSound(NULL,sfx_swtchn);
	.loc 1 1593 6
	movl	$23, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
# m_menu.c:1594: 	    M_QuitDOOM(0);
	.loc 1 1594 6
	movl	$0, %edi	#,
	call	M_QuitDOOM	#
# m_menu.c:1595: 	    return true;
	.loc 1 1595 13
	movl	$1, %eax	#, _278
	jmp	.L195	#
.L214:
# m_menu.c:1598: 	    usegamma++;
	.loc 1 1598 14
	movl	usegamma(%rip), %eax	# usegamma, usegamma.125_109
	addl	$1, %eax	#, _110
	movl	%eax, usegamma(%rip)	# _110, usegamma
# m_menu.c:1599: 	    if (usegamma > 4)
	.loc 1 1599 19
	movl	usegamma(%rip), %eax	# usegamma, usegamma.126_111
# m_menu.c:1599: 	    if (usegamma > 4)
	.loc 1 1599 9
	cmpl	$4, %eax	#, usegamma.126_111
	jle	.L232	#,
# m_menu.c:1600: 		usegamma = 0;
	.loc 1 1600 12
	movl	$0, usegamma(%rip)	#, usegamma
.L232:
# m_menu.c:1601: 	    players[consoleplayer].message = gammamsg[usegamma];
	.loc 1 1601 47
	movl	usegamma(%rip), %eax	# usegamma, usegamma.127_112
# m_menu.c:1601: 	    players[consoleplayer].message = gammamsg[usegamma];
	.loc 1 1601 28
	movl	consoleplayer(%rip), %esi	# consoleplayer, consoleplayer.128_113
# m_menu.c:1601: 	    players[consoleplayer].message = gammamsg[usegamma];
	.loc 1 1601 39
	movslq	%eax, %rdx	# usegamma.127_112, tmp413
	movq	%rdx, %rax	# tmp413, tmp414
	addq	%rax, %rax	# tmp414
	addq	%rdx, %rax	# tmp413, tmp414
	salq	$2, %rax	#, tmp414
	addq	%rdx, %rax	# tmp413, tmp414
	addq	%rax, %rax	# tmp415
	leaq	gammamsg(%rip), %rdx	#, tmp416
	leaq	(%rax,%rdx), %rcx	#, _114
# m_menu.c:1601: 	    players[consoleplayer].message = gammamsg[usegamma];
	.loc 1 1601 37
	movslq	%esi, %rdx	# consoleplayer.128_113, tmp417
	movq	%rdx, %rax	# tmp417, tmp419
	salq	$2, %rax	#, tmp419
	addq	%rdx, %rax	# tmp417, tmp419
	salq	$6, %rax	#, tmp420
	movq	%rax, %rdx	# tmp419, tmp418
	leaq	224+players(%rip), %rax	#, tmp421
	movq	%rcx, (%rdx,%rax)	# _114, players[consoleplayer.128_113].message
# m_menu.c:1602: 	    I_SetPalette (W_CacheLumpName ("PLAYPAL",PU_CACHE));
	.loc 1 1602 20
	movl	$101, %esi	#,
	leaq	.LC42(%rip), %rax	#, tmp422
	movq	%rax, %rdi	# tmp422,
	call	W_CacheLumpName@PLT	#
# m_menu.c:1602: 	    I_SetPalette (W_CacheLumpName ("PLAYPAL",PU_CACHE));
	.loc 1 1602 6 discriminator 1
	movq	%rax, %rdi	# _115,
	call	I_SetPalette@PLT	#
# m_menu.c:1603: 	    return true;
	.loc 1 1603 13
	movl	$1, %eax	#, _278
	jmp	.L195	#
.L210:
# m_menu.c:1609:     if (!menuactive)
	.loc 1 1609 9
	movl	menuactive(%rip), %eax	# menuactive, menuactive.129_116
# m_menu.c:1609:     if (!menuactive)
	.loc 1 1609 8
	testl	%eax, %eax	# menuactive.129_116
	jne	.L233	#,
# m_menu.c:1611: 	if (ch == KEY_ESCAPE)
	.loc 1 1611 5
	cmpl	$27, -8(%rbp)	#, ch
	jne	.L234	#,
# m_menu.c:1613: 	    M_StartControlPanel ();
	.loc 1 1613 6
	call	M_StartControlPanel	#
# m_menu.c:1614: 	    S_StartSound(NULL,sfx_swtchn);
	.loc 1 1614 6
	movl	$23, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
# m_menu.c:1615: 	    return true;
	.loc 1 1615 13
	movl	$1, %eax	#, _278
	jmp	.L195	#
.L234:
# m_menu.c:1617: 	return false;
	.loc 1 1617 9
	movl	$0, %eax	#, _278
	jmp	.L195	#
.L233:
# m_menu.c:1622:     switch (ch)
	.loc 1 1622 5
	cmpl	$175, -8(%rbp)	#, ch
	je	.L235	#,
	cmpl	$175, -8(%rbp)	#, ch
	jg	.L236	#,
	cmpl	$174, -8(%rbp)	#, ch
	je	.L237	#,
	cmpl	$174, -8(%rbp)	#, ch
	jg	.L236	#,
	cmpl	$173, -8(%rbp)	#, ch
	je	.L238	#,
	cmpl	$173, -8(%rbp)	#, ch
	jg	.L236	#,
	cmpl	$172, -8(%rbp)	#, ch
	je	.L239	#,
	cmpl	$172, -8(%rbp)	#, ch
	jg	.L236	#,
	cmpl	$127, -8(%rbp)	#, ch
	je	.L240	#,
	cmpl	$127, -8(%rbp)	#, ch
	jg	.L236	#,
	cmpl	$13, -8(%rbp)	#, ch
	je	.L241	#,
	cmpl	$27, -8(%rbp)	#, ch
	je	.L242	#,
	jmp	.L236	#
.L235:
# m_menu.c:1627: 	    if (itemOn+1 > currentMenu->numitems-1)
	.loc 1 1627 19
	movzwl	itemOn(%rip), %eax	# itemOn, itemOn.130_117
	movswl	%ax, %edx	# itemOn.130_117, _118
# m_menu.c:1627: 	    if (itemOn+1 > currentMenu->numitems-1)
	.loc 1 1627 32
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.131_119
	movzwl	(%rax), %eax	# currentMenu.131_119->numitems, _120
	cwtl
# m_menu.c:1627: 	    if (itemOn+1 > currentMenu->numitems-1)
	.loc 1 1627 42
	subl	$1, %eax	#, _122
# m_menu.c:1627: 	    if (itemOn+1 > currentMenu->numitems-1)
	.loc 1 1627 9
	cmpl	%eax, %edx	# _122, _118
	jl	.L243	#,
# m_menu.c:1628: 		itemOn = 0;
	.loc 1 1628 10
	movw	$0, itemOn(%rip)	#, itemOn
	jmp	.L244	#
.L243:
# m_menu.c:1629: 	    else itemOn++;
	.loc 1 1629 17
	movzwl	itemOn(%rip), %eax	# itemOn, itemOn.132_123
	addl	$1, %eax	#, _126
	movw	%ax, itemOn(%rip)	# _127, itemOn
.L244:
# m_menu.c:1630: 	    S_StartSound(NULL,sfx_pstop);
	.loc 1 1630 6
	movl	$19, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
# m_menu.c:1631: 	} while(currentMenu->menuitems[itemOn].status==-1);
	.loc 1 1631 21
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.135_128
	movq	16(%rax), %rax	# currentMenu.135_128->menuitems, _129
# m_menu.c:1631: 	} while(currentMenu->menuitems[itemOn].status==-1);
	.loc 1 1631 32
	movzwl	itemOn(%rip), %edx	# itemOn, itemOn.136_130
	movswq	%dx, %rdx	# itemOn.136_130, _131
	salq	$5, %rdx	#, _132
	addq	%rdx, %rax	# _132, _133
# m_menu.c:1631: 	} while(currentMenu->menuitems[itemOn].status==-1);
	.loc 1 1631 40
	movzwl	(%rax), %eax	# _133->status, _134
# m_menu.c:1631: 	} while(currentMenu->menuitems[itemOn].status==-1);
	.loc 1 1631 47
	cmpw	$-1, %ax	#, _134
	jne	.L245	#,
# m_menu.c:1624:       case KEY_DOWNARROW:
	.loc 1 1624 7
	nop	
	jmp	.L235	#
.L245:
# m_menu.c:1632: 	return true;
	.loc 1 1632 9
	movl	$1, %eax	#, _278
	jmp	.L195	#
.L238:
# m_menu.c:1637: 	    if (!itemOn)
	.loc 1 1637 10
	movzwl	itemOn(%rip), %eax	# itemOn, itemOn.137_135
# m_menu.c:1637: 	    if (!itemOn)
	.loc 1 1637 9
	testw	%ax, %ax	# itemOn.137_135
	jne	.L246	#,
# m_menu.c:1638: 		itemOn = currentMenu->numitems-1;
	.loc 1 1638 23
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.138_136
	movzwl	(%rax), %eax	# currentMenu.138_136->numitems, _137
# m_menu.c:1638: 		itemOn = currentMenu->numitems-1;
	.loc 1 1638 33
	subl	$1, %eax	#, _139
# m_menu.c:1638: 		itemOn = currentMenu->numitems-1;
	.loc 1 1638 10
	movw	%ax, itemOn(%rip)	# _140, itemOn
	jmp	.L247	#
.L246:
# m_menu.c:1639: 	    else itemOn--;
	.loc 1 1639 17
	movzwl	itemOn(%rip), %eax	# itemOn, itemOn.139_141
	subl	$1, %eax	#, _144
	movw	%ax, itemOn(%rip)	# _145, itemOn
.L247:
# m_menu.c:1640: 	    S_StartSound(NULL,sfx_pstop);
	.loc 1 1640 6
	movl	$19, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
# m_menu.c:1641: 	} while(currentMenu->menuitems[itemOn].status==-1);
	.loc 1 1641 21
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.142_146
	movq	16(%rax), %rax	# currentMenu.142_146->menuitems, _147
# m_menu.c:1641: 	} while(currentMenu->menuitems[itemOn].status==-1);
	.loc 1 1641 32
	movzwl	itemOn(%rip), %edx	# itemOn, itemOn.143_148
	movswq	%dx, %rdx	# itemOn.143_148, _149
	salq	$5, %rdx	#, _150
	addq	%rdx, %rax	# _150, _151
# m_menu.c:1641: 	} while(currentMenu->menuitems[itemOn].status==-1);
	.loc 1 1641 40
	movzwl	(%rax), %eax	# _151->status, _152
# m_menu.c:1641: 	} while(currentMenu->menuitems[itemOn].status==-1);
	.loc 1 1641 47
	cmpw	$-1, %ax	#, _152
	jne	.L248	#,
# m_menu.c:1634:       case KEY_UPARROW:
	.loc 1 1634 7
	nop	
	jmp	.L238	#
.L248:
# m_menu.c:1642: 	return true;
	.loc 1 1642 9
	movl	$1, %eax	#, _278
	jmp	.L195	#
.L239:
# m_menu.c:1645: 	if (currentMenu->menuitems[itemOn].routine &&
	.loc 1 1645 17
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.144_153
	movq	16(%rax), %rax	# currentMenu.144_153->menuitems, _154
# m_menu.c:1645: 	if (currentMenu->menuitems[itemOn].routine &&
	.loc 1 1645 28
	movzwl	itemOn(%rip), %edx	# itemOn, itemOn.145_155
	movswq	%dx, %rdx	# itemOn.145_155, _156
	salq	$5, %rdx	#, _157
	addq	%rdx, %rax	# _157, _158
# m_menu.c:1645: 	if (currentMenu->menuitems[itemOn].routine &&
	.loc 1 1645 36
	movq	16(%rax), %rax	# _158->routine, _159
# m_menu.c:1645: 	if (currentMenu->menuitems[itemOn].routine &&
	.loc 1 1645 5
	testq	%rax, %rax	# _159
	je	.L249	#,
# m_menu.c:1646: 	    currentMenu->menuitems[itemOn].status == 2)
	.loc 1 1646 17
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.146_160
	movq	16(%rax), %rax	# currentMenu.146_160->menuitems, _161
# m_menu.c:1646: 	    currentMenu->menuitems[itemOn].status == 2)
	.loc 1 1646 28
	movzwl	itemOn(%rip), %edx	# itemOn, itemOn.147_162
	movswq	%dx, %rdx	# itemOn.147_162, _163
	salq	$5, %rdx	#, _164
	addq	%rdx, %rax	# _164, _165
# m_menu.c:1646: 	    currentMenu->menuitems[itemOn].status == 2)
	.loc 1 1646 36
	movzwl	(%rax), %eax	# _165->status, _166
# m_menu.c:1645: 	if (currentMenu->menuitems[itemOn].routine &&
	.loc 1 1645 45 discriminator 1
	cmpw	$2, %ax	#, _166
	jne	.L249	#,
# m_menu.c:1648: 	    S_StartSound(NULL,sfx_stnmov);
	.loc 1 1648 6
	movl	$22, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
# m_menu.c:1649: 	    currentMenu->menuitems[itemOn].routine(0);
	.loc 1 1649 17
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.148_167
	movq	16(%rax), %rax	# currentMenu.148_167->menuitems, _168
# m_menu.c:1649: 	    currentMenu->menuitems[itemOn].routine(0);
	.loc 1 1649 28
	movzwl	itemOn(%rip), %edx	# itemOn, itemOn.149_169
	movswq	%dx, %rdx	# itemOn.149_169, _170
	salq	$5, %rdx	#, _171
	addq	%rdx, %rax	# _171, _172
# m_menu.c:1649: 	    currentMenu->menuitems[itemOn].routine(0);
	.loc 1 1649 36
	movq	16(%rax), %rax	# _172->routine, _173
# m_menu.c:1649: 	    currentMenu->menuitems[itemOn].routine(0);
	.loc 1 1649 6
	movl	$0, %edi	#,
	call	*%rax	# _173
.LVL1:
.L249:
# m_menu.c:1651: 	return true;
	.loc 1 1651 9
	movl	$1, %eax	#, _278
	jmp	.L195	#
.L237:
# m_menu.c:1654: 	if (currentMenu->menuitems[itemOn].routine &&
	.loc 1 1654 17
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.150_174
	movq	16(%rax), %rax	# currentMenu.150_174->menuitems, _175
# m_menu.c:1654: 	if (currentMenu->menuitems[itemOn].routine &&
	.loc 1 1654 28
	movzwl	itemOn(%rip), %edx	# itemOn, itemOn.151_176
	movswq	%dx, %rdx	# itemOn.151_176, _177
	salq	$5, %rdx	#, _178
	addq	%rdx, %rax	# _178, _179
# m_menu.c:1654: 	if (currentMenu->menuitems[itemOn].routine &&
	.loc 1 1654 36
	movq	16(%rax), %rax	# _179->routine, _180
# m_menu.c:1654: 	if (currentMenu->menuitems[itemOn].routine &&
	.loc 1 1654 5
	testq	%rax, %rax	# _180
	je	.L250	#,
# m_menu.c:1655: 	    currentMenu->menuitems[itemOn].status == 2)
	.loc 1 1655 17
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.152_181
	movq	16(%rax), %rax	# currentMenu.152_181->menuitems, _182
# m_menu.c:1655: 	    currentMenu->menuitems[itemOn].status == 2)
	.loc 1 1655 28
	movzwl	itemOn(%rip), %edx	# itemOn, itemOn.153_183
	movswq	%dx, %rdx	# itemOn.153_183, _184
	salq	$5, %rdx	#, _185
	addq	%rdx, %rax	# _185, _186
# m_menu.c:1655: 	    currentMenu->menuitems[itemOn].status == 2)
	.loc 1 1655 36
	movzwl	(%rax), %eax	# _186->status, _187
# m_menu.c:1654: 	if (currentMenu->menuitems[itemOn].routine &&
	.loc 1 1654 45 discriminator 1
	cmpw	$2, %ax	#, _187
	jne	.L250	#,
# m_menu.c:1657: 	    S_StartSound(NULL,sfx_stnmov);
	.loc 1 1657 6
	movl	$22, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
# m_menu.c:1658: 	    currentMenu->menuitems[itemOn].routine(1);
	.loc 1 1658 17
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.154_188
	movq	16(%rax), %rax	# currentMenu.154_188->menuitems, _189
# m_menu.c:1658: 	    currentMenu->menuitems[itemOn].routine(1);
	.loc 1 1658 28
	movzwl	itemOn(%rip), %edx	# itemOn, itemOn.155_190
	movswq	%dx, %rdx	# itemOn.155_190, _191
	salq	$5, %rdx	#, _192
	addq	%rdx, %rax	# _192, _193
# m_menu.c:1658: 	    currentMenu->menuitems[itemOn].routine(1);
	.loc 1 1658 36
	movq	16(%rax), %rax	# _193->routine, _194
# m_menu.c:1658: 	    currentMenu->menuitems[itemOn].routine(1);
	.loc 1 1658 6
	movl	$1, %edi	#,
	call	*%rax	# _194
.LVL2:
.L250:
# m_menu.c:1660: 	return true;
	.loc 1 1660 9
	movl	$1, %eax	#, _278
	jmp	.L195	#
.L241:
# m_menu.c:1663: 	if (currentMenu->menuitems[itemOn].routine &&
	.loc 1 1663 17
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.156_195
	movq	16(%rax), %rax	# currentMenu.156_195->menuitems, _196
# m_menu.c:1663: 	if (currentMenu->menuitems[itemOn].routine &&
	.loc 1 1663 28
	movzwl	itemOn(%rip), %edx	# itemOn, itemOn.157_197
	movswq	%dx, %rdx	# itemOn.157_197, _198
	salq	$5, %rdx	#, _199
	addq	%rdx, %rax	# _199, _200
# m_menu.c:1663: 	if (currentMenu->menuitems[itemOn].routine &&
	.loc 1 1663 36
	movq	16(%rax), %rax	# _200->routine, _201
# m_menu.c:1663: 	if (currentMenu->menuitems[itemOn].routine &&
	.loc 1 1663 5
	testq	%rax, %rax	# _201
	je	.L251	#,
# m_menu.c:1664: 	    currentMenu->menuitems[itemOn].status)
	.loc 1 1664 17
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.158_202
	movq	16(%rax), %rax	# currentMenu.158_202->menuitems, _203
# m_menu.c:1664: 	    currentMenu->menuitems[itemOn].status)
	.loc 1 1664 28
	movzwl	itemOn(%rip), %edx	# itemOn, itemOn.159_204
	movswq	%dx, %rdx	# itemOn.159_204, _205
	salq	$5, %rdx	#, _206
	addq	%rdx, %rax	# _206, _207
# m_menu.c:1664: 	    currentMenu->menuitems[itemOn].status)
	.loc 1 1664 36
	movzwl	(%rax), %eax	# _207->status, _208
# m_menu.c:1663: 	if (currentMenu->menuitems[itemOn].routine &&
	.loc 1 1663 45 discriminator 1
	testw	%ax, %ax	# _208
	je	.L251	#,
# m_menu.c:1666: 	    currentMenu->lastOn = itemOn;
	.loc 1 1666 17
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.160_209
# m_menu.c:1666: 	    currentMenu->lastOn = itemOn;
	.loc 1 1666 26
	movzwl	itemOn(%rip), %edx	# itemOn, itemOn.161_210
	movw	%dx, 36(%rax)	# itemOn.161_210, currentMenu.160_209->lastOn
# m_menu.c:1667: 	    if (currentMenu->menuitems[itemOn].status == 2)
	.loc 1 1667 21
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.162_211
	movq	16(%rax), %rax	# currentMenu.162_211->menuitems, _212
# m_menu.c:1667: 	    if (currentMenu->menuitems[itemOn].status == 2)
	.loc 1 1667 32
	movzwl	itemOn(%rip), %edx	# itemOn, itemOn.163_213
	movswq	%dx, %rdx	# itemOn.163_213, _214
	salq	$5, %rdx	#, _215
	addq	%rdx, %rax	# _215, _216
# m_menu.c:1667: 	    if (currentMenu->menuitems[itemOn].status == 2)
	.loc 1 1667 40
	movzwl	(%rax), %eax	# _216->status, _217
# m_menu.c:1667: 	    if (currentMenu->menuitems[itemOn].status == 2)
	.loc 1 1667 9
	cmpw	$2, %ax	#, _217
	jne	.L252	#,
# m_menu.c:1669: 		currentMenu->menuitems[itemOn].routine(1);      // right arrow
	.loc 1 1669 14
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.164_218
	movq	16(%rax), %rax	# currentMenu.164_218->menuitems, _219
# m_menu.c:1669: 		currentMenu->menuitems[itemOn].routine(1);      // right arrow
	.loc 1 1669 25
	movzwl	itemOn(%rip), %edx	# itemOn, itemOn.165_220
	movswq	%dx, %rdx	# itemOn.165_220, _221
	salq	$5, %rdx	#, _222
	addq	%rdx, %rax	# _222, _223
# m_menu.c:1669: 		currentMenu->menuitems[itemOn].routine(1);      // right arrow
	.loc 1 1669 33
	movq	16(%rax), %rax	# _223->routine, _224
# m_menu.c:1669: 		currentMenu->menuitems[itemOn].routine(1);      // right arrow
	.loc 1 1669 3
	movl	$1, %edi	#,
	call	*%rax	# _224
.LVL3:
# m_menu.c:1670: 		S_StartSound(NULL,sfx_stnmov);
	.loc 1 1670 3
	movl	$22, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
	jmp	.L251	#
.L252:
# m_menu.c:1674: 		currentMenu->menuitems[itemOn].routine(itemOn);
	.loc 1 1674 14
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.166_225
	movq	16(%rax), %rax	# currentMenu.166_225->menuitems, _226
# m_menu.c:1674: 		currentMenu->menuitems[itemOn].routine(itemOn);
	.loc 1 1674 25
	movzwl	itemOn(%rip), %edx	# itemOn, itemOn.167_227
	movswq	%dx, %rdx	# itemOn.167_227, _228
	salq	$5, %rdx	#, _229
	addq	%rdx, %rax	# _229, _230
# m_menu.c:1674: 		currentMenu->menuitems[itemOn].routine(itemOn);
	.loc 1 1674 33
	movq	16(%rax), %rdx	# _230->routine, _231
# m_menu.c:1674: 		currentMenu->menuitems[itemOn].routine(itemOn);
	.loc 1 1674 3
	movzwl	itemOn(%rip), %eax	# itemOn, itemOn.168_232
	cwtl
	movl	%eax, %edi	# _233,
	call	*%rdx	# _231
.LVL4:
# m_menu.c:1675: 		S_StartSound(NULL,sfx_pistol);
	.loc 1 1675 3
	movl	$1, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
.L251:
# m_menu.c:1678: 	return true;
	.loc 1 1678 9
	movl	$1, %eax	#, _278
	jmp	.L195	#
.L242:
# m_menu.c:1681: 	currentMenu->lastOn = itemOn;
	.loc 1 1681 13
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.169_234
# m_menu.c:1681: 	currentMenu->lastOn = itemOn;
	.loc 1 1681 22
	movzwl	itemOn(%rip), %edx	# itemOn, itemOn.170_235
	movw	%dx, 36(%rax)	# itemOn.170_235, currentMenu.169_234->lastOn
# m_menu.c:1682: 	M_ClearMenus ();
	.loc 1 1682 2
	call	M_ClearMenus	#
# m_menu.c:1683: 	S_StartSound(NULL,sfx_swtchx);
	.loc 1 1683 2
	movl	$24, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
# m_menu.c:1684: 	return true;
	.loc 1 1684 9
	movl	$1, %eax	#, _278
	jmp	.L195	#
.L240:
# m_menu.c:1687: 	currentMenu->lastOn = itemOn;
	.loc 1 1687 13
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.171_236
# m_menu.c:1687: 	currentMenu->lastOn = itemOn;
	.loc 1 1687 22
	movzwl	itemOn(%rip), %edx	# itemOn, itemOn.172_237
	movw	%dx, 36(%rax)	# itemOn.172_237, currentMenu.171_236->lastOn
# m_menu.c:1688: 	if (currentMenu->prevMenu)
	.loc 1 1688 17
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.173_238
	movq	8(%rax), %rax	# currentMenu.173_238->prevMenu, _239
# m_menu.c:1688: 	if (currentMenu->prevMenu)
	.loc 1 1688 5
	testq	%rax, %rax	# _239
	je	.L253	#,
# m_menu.c:1690: 	    currentMenu = currentMenu->prevMenu;
	.loc 1 1690 31
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.174_240
	movq	8(%rax), %rax	# currentMenu.174_240->prevMenu, _241
# m_menu.c:1690: 	    currentMenu = currentMenu->prevMenu;
	.loc 1 1690 18
	movq	%rax, currentMenu(%rip)	# _241, currentMenu
# m_menu.c:1691: 	    itemOn = currentMenu->lastOn;
	.loc 1 1691 26
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.175_242
	movzwl	36(%rax), %eax	# currentMenu.175_242->lastOn, _243
# m_menu.c:1691: 	    itemOn = currentMenu->lastOn;
	.loc 1 1691 13
	movw	%ax, itemOn(%rip)	# _243, itemOn
# m_menu.c:1692: 	    S_StartSound(NULL,sfx_swtchn);
	.loc 1 1692 6
	movl	$23, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
.L253:
# m_menu.c:1694: 	return true;
	.loc 1 1694 9
	movl	$1, %eax	#, _278
	jmp	.L195	#
.L236:
# m_menu.c:1697: 	for (i = itemOn+1;i < currentMenu->numitems;i++)
	.loc 1 1697 17
	movzwl	itemOn(%rip), %eax	# itemOn, itemOn.176_244
	cwtl
# m_menu.c:1697: 	for (i = itemOn+1;i < currentMenu->numitems;i++)
	.loc 1 1697 9
	addl	$1, %eax	#, tmp423
	movl	%eax, -4(%rbp)	# tmp423, i
# m_menu.c:1697: 	for (i = itemOn+1;i < currentMenu->numitems;i++)
	.loc 1 1697 2
	jmp	.L254	#
.L256:
# m_menu.c:1698: 	    if (currentMenu->menuitems[i].alphaKey == ch)
	.loc 1 1698 21
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.177_246
	movq	16(%rax), %rax	# currentMenu.177_246->menuitems, _247
# m_menu.c:1698: 	    if (currentMenu->menuitems[i].alphaKey == ch)
	.loc 1 1698 32
	movl	-4(%rbp), %edx	# i, tmp424
	movslq	%edx, %rdx	# tmp424, _248
	salq	$5, %rdx	#, _249
	addq	%rdx, %rax	# _249, _250
# m_menu.c:1698: 	    if (currentMenu->menuitems[i].alphaKey == ch)
	.loc 1 1698 35
	movzbl	24(%rax), %eax	# _250->alphaKey, _251
	movsbl	%al, %eax	# _251, _252
# m_menu.c:1698: 	    if (currentMenu->menuitems[i].alphaKey == ch)
	.loc 1 1698 9
	cmpl	%eax, -8(%rbp)	# _252, ch
	jne	.L255	#,
# m_menu.c:1700: 		itemOn = i;
	.loc 1 1700 10
	movl	-4(%rbp), %eax	# i, tmp425
	movw	%ax, itemOn(%rip)	# _253, itemOn
# m_menu.c:1701: 		S_StartSound(NULL,sfx_pstop);
	.loc 1 1701 3
	movl	$19, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
# m_menu.c:1702: 		return true;
	.loc 1 1702 10
	movl	$1, %eax	#, _278
	jmp	.L195	#
.L255:
# m_menu.c:1697: 	for (i = itemOn+1;i < currentMenu->numitems;i++)
	.loc 1 1697 47 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L254:
# m_menu.c:1697: 	for (i = itemOn+1;i < currentMenu->numitems;i++)
	.loc 1 1697 35 discriminator 1
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.178_254
	movzwl	(%rax), %eax	# currentMenu.178_254->numitems, _255
	cwtl
# m_menu.c:1697: 	for (i = itemOn+1;i < currentMenu->numitems;i++)
	.loc 1 1697 22 discriminator 1
	cmpl	%eax, -4(%rbp)	# _256, i
	jl	.L256	#,
# m_menu.c:1704: 	for (i = 0;i <= itemOn;i++)
	.loc 1 1704 9
	movl	$0, -4(%rbp)	#, i
# m_menu.c:1704: 	for (i = 0;i <= itemOn;i++)
	.loc 1 1704 2
	jmp	.L257	#
.L259:
# m_menu.c:1705: 	    if (currentMenu->menuitems[i].alphaKey == ch)
	.loc 1 1705 21
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.179_257
	movq	16(%rax), %rax	# currentMenu.179_257->menuitems, _258
# m_menu.c:1705: 	    if (currentMenu->menuitems[i].alphaKey == ch)
	.loc 1 1705 32
	movl	-4(%rbp), %edx	# i, tmp426
	movslq	%edx, %rdx	# tmp426, _259
	salq	$5, %rdx	#, _260
	addq	%rdx, %rax	# _260, _261
# m_menu.c:1705: 	    if (currentMenu->menuitems[i].alphaKey == ch)
	.loc 1 1705 35
	movzbl	24(%rax), %eax	# _261->alphaKey, _262
	movsbl	%al, %eax	# _262, _263
# m_menu.c:1705: 	    if (currentMenu->menuitems[i].alphaKey == ch)
	.loc 1 1705 9
	cmpl	%eax, -8(%rbp)	# _263, ch
	jne	.L258	#,
# m_menu.c:1707: 		itemOn = i;
	.loc 1 1707 10
	movl	-4(%rbp), %eax	# i, tmp427
	movw	%ax, itemOn(%rip)	# _264, itemOn
# m_menu.c:1708: 		S_StartSound(NULL,sfx_pstop);
	.loc 1 1708 3
	movl	$19, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
# m_menu.c:1709: 		return true;
	.loc 1 1709 10
	movl	$1, %eax	#, _278
	jmp	.L195	#
.L258:
# m_menu.c:1704: 	for (i = 0;i <= itemOn;i++)
	.loc 1 1704 26 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L257:
# m_menu.c:1704: 	for (i = 0;i <= itemOn;i++)
	.loc 1 1704 15 discriminator 1
	movzwl	itemOn(%rip), %eax	# itemOn, itemOn.180_265
	cwtl
	cmpl	%eax, -4(%rbp)	# _266, i
	jle	.L259	#,
# m_menu.c:1711: 	break;
	.loc 1 1711 2
	nop	
# m_menu.c:1715:     return false;
	.loc 1 1715 12
	movl	$0, %eax	#, _278
.L195:
# m_menu.c:1716: }
	.loc 1 1716 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE53:
	.size	M_Responder, .-M_Responder
	.globl	M_StartControlPanel
	.type	M_StartControlPanel, @function
M_StartControlPanel:
.LFB54:
	.loc 1 1724 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# m_menu.c:1726:     if (menuactive)
	.loc 1 1726 9
	movl	menuactive(%rip), %eax	# menuactive, menuactive.181_1
# m_menu.c:1726:     if (menuactive)
	.loc 1 1726 8
	testl	%eax, %eax	# menuactive.181_1
	jne	.L266	#,
# m_menu.c:1729:     menuactive = 1;
	.loc 1 1729 16
	movl	$1, menuactive(%rip)	#, menuactive
# m_menu.c:1730:     currentMenu = &MainDef;         // JDC
	.loc 1 1730 17
	leaq	MainDef(%rip), %rax	#, tmp85
	movq	%rax, currentMenu(%rip)	# tmp85, currentMenu
# m_menu.c:1731:     itemOn = currentMenu->lastOn;   // JDC
	.loc 1 1731 25
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.182_2
	movzwl	36(%rax), %eax	# currentMenu.182_2->lastOn, _3
# m_menu.c:1731:     itemOn = currentMenu->lastOn;   // JDC
	.loc 1 1731 12
	movw	%ax, itemOn(%rip)	# _3, itemOn
	jmp	.L263	#
.L266:
# m_menu.c:1727: 	return;
	.loc 1 1727 2
	nop	
.L263:
# m_menu.c:1732: }
	.loc 1 1732 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE54:
	.size	M_StartControlPanel, .-M_StartControlPanel
	.globl	M_Drawer
	.type	M_Drawer, @function
M_Drawer:
.LFB55:
	.loc 1 1741 1
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
# m_menu.c:1741: {
	.loc 1 1741 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp209
	movq	%rax, -24(%rbp)	# tmp209, D.9431
	xorl	%eax, %eax	# tmp209
# m_menu.c:1749:     inhelpscreens = false;
	.loc 1 1749 19
	movl	$0, inhelpscreens(%rip)	#, inhelpscreens
# m_menu.c:1753:     if (messageToPrint)
	.loc 1 1753 9
	movl	messageToPrint(%rip), %eax	# messageToPrint, messageToPrint.183_1
# m_menu.c:1753:     if (messageToPrint)
	.loc 1 1753 8
	testl	%eax, %eax	# messageToPrint.183_1
	je	.L268	#,
# m_menu.c:1755: 	start = 0;
	.loc 1 1755 8
	movl	$0, -68(%rbp)	#, start
# m_menu.c:1756: 	y = 100 - M_StringHeight(messageString)/2;
	.loc 1 1756 12
	movq	messageString(%rip), %rax	# messageString, messageString.184_2
	movq	%rax, %rdi	# messageString.184_2,
	call	M_StringHeight	#
# m_menu.c:1756: 	y = 100 - M_StringHeight(messageString)/2;
	.loc 1 1756 41 discriminator 1
	movl	%eax, %edx	# _3, tmp187
	shrl	$31, %edx	#, tmp187
	addl	%edx, %eax	# tmp187, tmp188
	sarl	%eax	# tmp189
	negl	%eax	# tmp189
# m_menu.c:1756: 	y = 100 - M_StringHeight(messageString)/2;
	.loc 1 1756 10 discriminator 1
	addl	$100, %eax	#, _6
# m_menu.c:1756: 	y = 100 - M_StringHeight(messageString)/2;
	.loc 1 1756 4 discriminator 1
	movw	%ax, y.1(%rip)	# _7, y
# m_menu.c:1757: 	while(*(messageString+start))
	.loc 1 1757 7
	jmp	.L269	#
.L275:
# m_menu.c:1759: 	    for (i = 0;i < strlen(messageString+start);i++)
	.loc 1 1759 13
	movw	$0, -72(%rbp)	#, i
# m_menu.c:1759: 	    for (i = 0;i < strlen(messageString+start);i++)
	.loc 1 1759 6
	jmp	.L270	#
.L273:
# m_menu.c:1760: 		if (*(messageString+start+i) == '\n')
	.loc 1 1760 28
	movq	messageString(%rip), %rax	# messageString, messageString.185_8
	movl	-68(%rbp), %edx	# start, tmp190
	movslq	%edx, %rcx	# tmp190, _9
	movswq	-72(%rbp), %rdx	# i, _10
	addq	%rcx, %rdx	# _9, _11
	addq	%rdx, %rax	# _11, _12
# m_menu.c:1760: 		if (*(messageString+start+i) == '\n')
	.loc 1 1760 7
	movzbl	(%rax), %eax	# *_12, _13
# m_menu.c:1760: 		if (*(messageString+start+i) == '\n')
	.loc 1 1760 6
	cmpb	$10, %al	#, _13
	jne	.L271	#,
# m_menu.c:1762: 		    memset(string,0,40);
	.loc 1 1762 7
	leaq	-64(%rbp), %rax	#, tmp191
	movl	$40, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp191,
	call	memset@PLT	#
# m_menu.c:1763: 		    strncpy(string,messageString+start,i);
	.loc 1 1763 7
	movswq	-72(%rbp), %rdx	# i, _14
	movq	messageString(%rip), %rcx	# messageString, messageString.186_15
	movl	-68(%rbp), %eax	# start, tmp192
	cltq
# m_menu.c:1763: 		    strncpy(string,messageString+start,i);
	.loc 1 1763 35
	addq	%rax, %rcx	# _16, _17
# m_menu.c:1763: 		    strncpy(string,messageString+start,i);
	.loc 1 1763 7
	leaq	-64(%rbp), %rax	#, tmp193
	movq	%rcx, %rsi	# _17,
	movq	%rax, %rdi	# tmp193,
	call	strncpy@PLT	#
# m_menu.c:1764: 		    start += i+1;
	.loc 1 1764 17
	movswl	-72(%rbp), %eax	# i, _18
	addl	$1, %eax	#, _19
# m_menu.c:1764: 		    start += i+1;
	.loc 1 1764 13
	addl	%eax, -68(%rbp)	# _19, start
# m_menu.c:1765: 		    break;
	.loc 1 1765 7
	jmp	.L272	#
.L271:
# m_menu.c:1759: 	    for (i = 0;i < strlen(messageString+start);i++)
	.loc 1 1759 50 discriminator 2
	movzwl	-72(%rbp), %eax	# i, i.187_20
	addl	$1, %eax	#, _22
	movw	%ax, -72(%rbp)	# _22, i
.L270:
# m_menu.c:1759: 	    for (i = 0;i < strlen(messageString+start);i++)
	.loc 1 1759 19 discriminator 1
	movswq	-72(%rbp), %rbx	# i, _23
# m_menu.c:1759: 	    for (i = 0;i < strlen(messageString+start);i++)
	.loc 1 1759 21 discriminator 1
	movq	messageString(%rip), %rdx	# messageString, messageString.189_24
	movl	-68(%rbp), %eax	# start, tmp194
	cltq
# m_menu.c:1759: 	    for (i = 0;i < strlen(messageString+start);i++)
	.loc 1 1759 41 discriminator 1
	addq	%rdx, %rax	# messageString.189_24, _26
# m_menu.c:1759: 	    for (i = 0;i < strlen(messageString+start);i++)
	.loc 1 1759 21 discriminator 1
	movq	%rax, %rdi	# _26,
	call	strlen@PLT	#
# m_menu.c:1759: 	    for (i = 0;i < strlen(messageString+start);i++)
	.loc 1 1759 19 discriminator 1
	cmpq	%rax, %rbx	# _27, _23
	jb	.L273	#,
.L272:
# m_menu.c:1768: 	    if (i == strlen(messageString+start))
	.loc 1 1768 12
	movswq	-72(%rbp), %rbx	# i, _28
# m_menu.c:1768: 	    if (i == strlen(messageString+start))
	.loc 1 1768 15
	movq	messageString(%rip), %rdx	# messageString, messageString.190_29
	movl	-68(%rbp), %eax	# start, tmp195
	cltq
# m_menu.c:1768: 	    if (i == strlen(messageString+start))
	.loc 1 1768 35
	addq	%rdx, %rax	# messageString.190_29, _31
# m_menu.c:1768: 	    if (i == strlen(messageString+start))
	.loc 1 1768 15
	movq	%rax, %rdi	# _31,
	call	strlen@PLT	#
# m_menu.c:1768: 	    if (i == strlen(messageString+start))
	.loc 1 1768 9 discriminator 1
	cmpq	%rax, %rbx	# _32, _28
	jne	.L274	#,
# m_menu.c:1770: 		strcpy(string,messageString+start);
	.loc 1 1770 3
	movq	messageString(%rip), %rdx	# messageString, messageString.191_33
	movl	-68(%rbp), %eax	# start, tmp196
	cltq
# m_menu.c:1770: 		strcpy(string,messageString+start);
	.loc 1 1770 30
	addq	%rax, %rdx	# _34, _35
# m_menu.c:1770: 		strcpy(string,messageString+start);
	.loc 1 1770 3
	leaq	-64(%rbp), %rax	#, tmp197
	movq	%rdx, %rsi	# _35,
	movq	%rax, %rdi	# tmp197,
	call	strcpy@PLT	#
# m_menu.c:1771: 		start += i;
	.loc 1 1771 9
	movswl	-72(%rbp), %eax	# i, _36
	addl	%eax, -68(%rbp)	# _36, start
.L274:
# m_menu.c:1774: 	    x = 160 - M_StringWidth(string)/2;
	.loc 1 1774 16
	leaq	-64(%rbp), %rax	#, tmp198
	movq	%rax, %rdi	# tmp198,
	call	M_StringWidth	#
# m_menu.c:1774: 	    x = 160 - M_StringWidth(string)/2;
	.loc 1 1774 37 discriminator 1
	movl	%eax, %edx	# _37, tmp199
	shrl	$31, %edx	#, tmp199
	addl	%edx, %eax	# tmp199, tmp200
	sarl	%eax	# tmp201
	negl	%eax	# tmp201
# m_menu.c:1774: 	    x = 160 - M_StringWidth(string)/2;
	.loc 1 1774 14 discriminator 1
	addw	$160, %ax	#, _40
# m_menu.c:1774: 	    x = 160 - M_StringWidth(string)/2;
	.loc 1 1774 8 discriminator 1
	movw	%ax, x.0(%rip)	# _41, x
# m_menu.c:1775: 	    M_WriteText(x,y,string);
	.loc 1 1775 6
	movzwl	y.1(%rip), %eax	# y, y.192_42
	movswl	%ax, %ecx	# y.192_42, _43
	movzwl	x.0(%rip), %eax	# x, x.193_44
	cwtl
	leaq	-64(%rbp), %rdx	#, tmp202
	movl	%ecx, %esi	# _43,
	movl	%eax, %edi	# _45,
	call	M_WriteText	#
# m_menu.c:1776: 	    y += SHORT(hu_font[0]->height);
	.loc 1 1776 11
	movq	hu_font(%rip), %rax	# hu_font[0], _46
	movzwl	2(%rax), %eax	# _46->height, _47
	movl	%eax, %edx	# _47, _48
# m_menu.c:1776: 	    y += SHORT(hu_font[0]->height);
	.loc 1 1776 8
	movzwl	y.1(%rip), %eax	# y, y.194_49
	addl	%edx, %eax	# _48, _51
	movw	%ax, y.1(%rip)	# _52, y
.L269:
# m_menu.c:1757: 	while(*(messageString+start))
	.loc 1 1757 23
	movq	messageString(%rip), %rdx	# messageString, messageString.196_53
	movl	-68(%rbp), %eax	# start, tmp203
	cltq
	addq	%rdx, %rax	# messageString.196_53, _55
# m_menu.c:1757: 	while(*(messageString+start))
	.loc 1 1757 8
	movzbl	(%rax), %eax	# *_55, _56
	testb	%al, %al	# _56
	jne	.L275	#,
# m_menu.c:1778: 	return;
	.loc 1 1778 2
	jmp	.L267	#
.L268:
# m_menu.c:1781:     if (!menuactive)
	.loc 1 1781 9
	movl	menuactive(%rip), %eax	# menuactive, menuactive.197_57
# m_menu.c:1781:     if (!menuactive)
	.loc 1 1781 8
	testl	%eax, %eax	# menuactive.197_57
	je	.L284	#,
# m_menu.c:1784:     if (currentMenu->routine)
	.loc 1 1784 20
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.198_58
	movq	24(%rax), %rax	# currentMenu.198_58->routine, _59
# m_menu.c:1784:     if (currentMenu->routine)
	.loc 1 1784 8
	testq	%rax, %rax	# _59
	je	.L278	#,
# m_menu.c:1785: 	currentMenu->routine();         // call Draw routine
	.loc 1 1785 13
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.199_60
	movq	24(%rax), %rdx	# currentMenu.199_60->routine, _61
# m_menu.c:1785: 	currentMenu->routine();         // call Draw routine
	.loc 1 1785 2
	movl	$0, %eax	#,
	call	*%rdx	# _61
.LVL5:
.L278:
# m_menu.c:1788:     x = currentMenu->x;
	.loc 1 1788 20
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.200_62
	movzwl	32(%rax), %eax	# currentMenu.200_62->x, _63
# m_menu.c:1788:     x = currentMenu->x;
	.loc 1 1788 7
	movw	%ax, x.0(%rip)	# _63, x
# m_menu.c:1789:     y = currentMenu->y;
	.loc 1 1789 20
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.201_64
	movzwl	34(%rax), %eax	# currentMenu.201_64->y, _65
# m_menu.c:1789:     y = currentMenu->y;
	.loc 1 1789 7
	movw	%ax, y.1(%rip)	# _65, y
# m_menu.c:1790:     max = currentMenu->numitems;
	.loc 1 1790 22
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.202_66
# m_menu.c:1790:     max = currentMenu->numitems;
	.loc 1 1790 9
	movzwl	(%rax), %eax	# currentMenu.202_66->numitems, tmp204
	movw	%ax, -70(%rbp)	# tmp204, max
# m_menu.c:1792:     for (i=0;i<max;i++)
	.loc 1 1792 11
	movw	$0, -72(%rbp)	#, i
# m_menu.c:1792:     for (i=0;i<max;i++)
	.loc 1 1792 5
	jmp	.L279	#
.L281:
# m_menu.c:1794: 	if (currentMenu->menuitems[i].name[0])
	.loc 1 1794 17
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.203_67
	movq	16(%rax), %rax	# currentMenu.203_67->menuitems, _68
# m_menu.c:1794: 	if (currentMenu->menuitems[i].name[0])
	.loc 1 1794 28
	movswq	-72(%rbp), %rdx	# i, _69
	salq	$5, %rdx	#, _70
	addq	%rdx, %rax	# _70, _71
# m_menu.c:1794: 	if (currentMenu->menuitems[i].name[0])
	.loc 1 1794 36
	movzbl	2(%rax), %eax	# _71->name[0], _72
# m_menu.c:1794: 	if (currentMenu->menuitems[i].name[0])
	.loc 1 1794 5
	testb	%al, %al	# _72
	je	.L280	#,
# m_menu.c:1796: 			       W_CacheLumpName(currentMenu->menuitems[i].name ,PU_CACHE));
	.loc 1 1796 38
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.204_73
	movq	16(%rax), %rax	# currentMenu.204_73->menuitems, _74
# m_menu.c:1796: 			       W_CacheLumpName(currentMenu->menuitems[i].name ,PU_CACHE));
	.loc 1 1796 49
	movswq	-72(%rbp), %rdx	# i, _75
	salq	$5, %rdx	#, _76
	addq	%rdx, %rax	# _76, _77
# m_menu.c:1796: 			       W_CacheLumpName(currentMenu->menuitems[i].name ,PU_CACHE));
	.loc 1 1796 52
	addq	$2, %rax	#, _78
# m_menu.c:1796: 			       W_CacheLumpName(currentMenu->menuitems[i].name ,PU_CACHE));
	.loc 1 1796 11
	movl	$101, %esi	#,
	movq	%rax, %rdi	# _78,
	call	W_CacheLumpName@PLT	#
	movq	%rax, %rdx	#, _79
# m_menu.c:1795: 	    V_DrawPatchDirect (x,y,0,
	.loc 1 1795 6
	movzwl	y.1(%rip), %eax	# y, y.205_80
	movswl	%ax, %esi	# y.205_80, _81
	movzwl	x.0(%rip), %eax	# x, x.206_82
	cwtl
	movq	%rdx, %rcx	# _79,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _83,
	call	V_DrawPatchDirect@PLT	#
.L280:
# m_menu.c:1797: 	y += LINEHEIGHT;
	.loc 1 1797 4
	movzwl	y.1(%rip), %eax	# y, y.207_84
	addl	$16, %eax	#, _86
	movw	%ax, y.1(%rip)	# _87, y
# m_menu.c:1792:     for (i=0;i<max;i++)
	.loc 1 1792 21 discriminator 2
	movzwl	-72(%rbp), %eax	# i, i.209_88
	addl	$1, %eax	#, _90
	movw	%ax, -72(%rbp)	# _90, i
.L279:
# m_menu.c:1792:     for (i=0;i<max;i++)
	.loc 1 1792 15 discriminator 1
	movzwl	-72(%rbp), %eax	# i, tmp205
	cmpw	-70(%rbp), %ax	# max, tmp205
	jl	.L281	#,
# m_menu.c:1803: 		      W_CacheLumpName(skullName[whichSkull],PU_CACHE));
	.loc 1 1803 34
	movzwl	whichSkull(%rip), %eax	# whichSkull, whichSkull.211_91
	cwtl
	movslq	%eax, %rdx	# _92, tmp206
	movq	%rdx, %rax	# tmp206, tmp207
	salq	$3, %rax	#, tmp207
	addq	%rdx, %rax	# tmp206, tmp207
	leaq	skullName(%rip), %rdx	#, tmp208
	addq	%rdx, %rax	# tmp208, _93
# m_menu.c:1803: 		      W_CacheLumpName(skullName[whichSkull],PU_CACHE));
	.loc 1 1803 9
	movl	$101, %esi	#,
	movq	%rax, %rdi	# _93,
	call	W_CacheLumpName@PLT	#
	movq	%rax, %rdx	#, _94
# m_menu.c:1802:     V_DrawPatchDirect(x + SKULLXOFF,currentMenu->y - 5 + itemOn*LINEHEIGHT, 0,
	.loc 1 1802 48
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.212_95
	movzwl	34(%rax), %eax	# currentMenu.212_95->y, _96
	cwtl
# m_menu.c:1802:     V_DrawPatchDirect(x + SKULLXOFF,currentMenu->y - 5 + itemOn*LINEHEIGHT, 0,
	.loc 1 1802 52
	leal	-5(%rax), %ecx	#, _98
# m_menu.c:1802:     V_DrawPatchDirect(x + SKULLXOFF,currentMenu->y - 5 + itemOn*LINEHEIGHT, 0,
	.loc 1 1802 64
	movzwl	itemOn(%rip), %eax	# itemOn, itemOn.213_99
	cwtl
	sall	$4, %eax	#, _101
# m_menu.c:1802:     V_DrawPatchDirect(x + SKULLXOFF,currentMenu->y - 5 + itemOn*LINEHEIGHT, 0,
	.loc 1 1802 5
	leal	(%rcx,%rax), %esi	#, _102
	movzwl	x.0(%rip), %eax	# x, x.214_103
	cwtl
	subl	$32, %eax	#, _105
	movq	%rdx, %rcx	# _94,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _105,
	call	V_DrawPatchDirect@PLT	#
	jmp	.L267	#
.L284:
# m_menu.c:1782: 	return;
	.loc 1 1782 2
	nop	
.L267:
# m_menu.c:1805: }
	.loc 1 1805 1
	movq	-24(%rbp), %rax	# D.9431, tmp210
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp210
	je	.L283	#,
	call	__stack_chk_fail@PLT	#
.L283:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE55:
	.size	M_Drawer, .-M_Drawer
	.globl	M_ClearMenus
	.type	M_ClearMenus, @function
M_ClearMenus:
.LFB56:
	.loc 1 1812 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# m_menu.c:1813:     menuactive = 0;
	.loc 1 1813 16
	movl	$0, menuactive(%rip)	#, menuactive
# m_menu.c:1816: }
	.loc 1 1816 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE56:
	.size	M_ClearMenus, .-M_ClearMenus
	.globl	M_SetupNextMenu
	.type	M_SetupNextMenu, @function
M_SetupNextMenu:
.LFB57:
	.loc 1 1825 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# menudef, menudef
# m_menu.c:1826:     currentMenu = menudef;
	.loc 1 1826 17
	movq	-8(%rbp), %rax	# menudef, tmp84
	movq	%rax, currentMenu(%rip)	# tmp84, currentMenu
# m_menu.c:1827:     itemOn = currentMenu->lastOn;
	.loc 1 1827 25
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.215_1
	movzwl	36(%rax), %eax	# currentMenu.215_1->lastOn, _2
# m_menu.c:1827:     itemOn = currentMenu->lastOn;
	.loc 1 1827 12
	movw	%ax, itemOn(%rip)	# _2, itemOn
# m_menu.c:1828: }
	.loc 1 1828 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE57:
	.size	M_SetupNextMenu, .-M_SetupNextMenu
	.globl	M_Ticker
	.type	M_Ticker, @function
M_Ticker:
.LFB58:
	.loc 1 1835 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# m_menu.c:1836:     if (--skullAnimCounter <= 0)
	.loc 1 1836 9
	movzwl	skullAnimCounter(%rip), %eax	# skullAnimCounter, skullAnimCounter.216_1
	subl	$1, %eax	#, _3
# m_menu.c:1836:     if (--skullAnimCounter <= 0)
	.loc 1 1836 8
	movw	%ax, skullAnimCounter(%rip)	# _4, skullAnimCounter
# m_menu.c:1836:     if (--skullAnimCounter <= 0)
	.loc 1 1836 9
	movzwl	skullAnimCounter(%rip), %eax	# skullAnimCounter, skullAnimCounter.218_5
# m_menu.c:1836:     if (--skullAnimCounter <= 0)
	.loc 1 1836 8
	testw	%ax, %ax	# skullAnimCounter.218_5
	jg	.L289	#,
# m_menu.c:1838: 	whichSkull ^= 1;
	.loc 1 1838 13
	movzwl	whichSkull(%rip), %eax	# whichSkull, whichSkull.219_6
	xorl	$1, %eax	#, _7
	movw	%ax, whichSkull(%rip)	# _7, whichSkull
# m_menu.c:1839: 	skullAnimCounter = 8;
	.loc 1 1839 19
	movw	$8, skullAnimCounter(%rip)	#, skullAnimCounter
.L289:
# m_menu.c:1841: }
	.loc 1 1841 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE58:
	.size	M_Ticker, .-M_Ticker
	.globl	M_Init
	.type	M_Init, @function
M_Init:
.LFB59:
	.loc 1 1848 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# m_menu.c:1849:     currentMenu = &MainDef;
	.loc 1 1849 17
	leaq	MainDef(%rip), %rax	#, tmp101
	movq	%rax, currentMenu(%rip)	# tmp101, currentMenu
# m_menu.c:1850:     menuactive = 0;
	.loc 1 1850 16
	movl	$0, menuactive(%rip)	#, menuactive
# m_menu.c:1851:     itemOn = currentMenu->lastOn;
	.loc 1 1851 25
	movq	currentMenu(%rip), %rax	# currentMenu, currentMenu.220_1
	movzwl	36(%rax), %eax	# currentMenu.220_1->lastOn, _2
# m_menu.c:1851:     itemOn = currentMenu->lastOn;
	.loc 1 1851 12
	movw	%ax, itemOn(%rip)	# _2, itemOn
# m_menu.c:1852:     whichSkull = 0;
	.loc 1 1852 16
	movw	$0, whichSkull(%rip)	#, whichSkull
# m_menu.c:1853:     skullAnimCounter = 10;
	.loc 1 1853 22
	movw	$10, skullAnimCounter(%rip)	#, skullAnimCounter
# m_menu.c:1854:     screenSize = screenblocks - 3;
	.loc 1 1854 31
	movl	screenblocks(%rip), %eax	# screenblocks, screenblocks.221_3
	subl	$3, %eax	#, _4
# m_menu.c:1854:     screenSize = screenblocks - 3;
	.loc 1 1854 16
	movl	%eax, screenSize(%rip)	# _4, screenSize
# m_menu.c:1855:     messageToPrint = 0;
	.loc 1 1855 20
	movl	$0, messageToPrint(%rip)	#, messageToPrint
# m_menu.c:1856:     messageString = NULL;
	.loc 1 1856 19
	movq	$0, messageString(%rip)	#, messageString
# m_menu.c:1857:     messageLastMenuActive = menuactive;
	.loc 1 1857 27
	movl	menuactive(%rip), %eax	# menuactive, menuactive.222_5
	movl	%eax, messageLastMenuActive(%rip)	# menuactive.223_6, messageLastMenuActive
# m_menu.c:1858:     quickSaveSlot = -1;
	.loc 1 1858 19
	movl	$-1, quickSaveSlot(%rip)	#, quickSaveSlot
# m_menu.c:1864:     switch ( gamemode )
	.loc 1 1864 5
	movl	gamemode(%rip), %eax	# gamemode, gamemode.224_7
	cmpl	$1, %eax	#, gamemode.224_7
	jbe	.L291	#,
	cmpl	$2, %eax	#, gamemode.224_7
	jne	.L294	#,
# m_menu.c:1870: 	MainMenu[readthis] = MainMenu[quitdoom];
	.loc 1 1870 21
	movq	160+MainMenu(%rip), %rax	# MainMenu[5], tmp102
	movq	168+MainMenu(%rip), %rdx	# MainMenu[5],
	movq	%rax, 128+MainMenu(%rip)	# tmp102, MainMenu[4]
	movq	%rdx, 136+MainMenu(%rip)	#, MainMenu[4]
	movq	176+MainMenu(%rip), %rax	# MainMenu[5], tmp103
	movq	184+MainMenu(%rip), %rdx	# MainMenu[5],
	movq	%rax, 144+MainMenu(%rip)	# tmp103, MainMenu[4]
	movq	%rdx, 152+MainMenu(%rip)	#, MainMenu[4]
# m_menu.c:1871: 	MainDef.numitems--;
	.loc 1 1871 9
	movzwl	MainDef(%rip), %eax	# MainDef.numitems, _8
# m_menu.c:1871: 	MainDef.numitems--;
	.loc 1 1871 18
	subl	$1, %eax	#, _11
	movw	%ax, MainDef(%rip)	# _12, MainDef.numitems
# m_menu.c:1872: 	MainDef.y += 8;
	.loc 1 1872 9
	movzwl	34+MainDef(%rip), %eax	# MainDef.y, _13
# m_menu.c:1872: 	MainDef.y += 8;
	.loc 1 1872 12
	addl	$8, %eax	#, _15
	movw	%ax, 34+MainDef(%rip)	# _16, MainDef.y
# m_menu.c:1873: 	NewDef.prevMenu = &MainDef;
	.loc 1 1873 18
	leaq	MainDef(%rip), %rax	#, tmp104
	movq	%rax, 8+NewDef(%rip)	# tmp104, NewDef.prevMenu
# m_menu.c:1874: 	ReadDef1.routine = M_DrawReadThis1;
	.loc 1 1874 19
	leaq	M_DrawReadThis1(%rip), %rax	#, tmp105
	movq	%rax, 24+ReadDef1(%rip)	# tmp105, ReadDef1.routine
# m_menu.c:1875: 	ReadDef1.x = 330;
	.loc 1 1875 13
	movw	$330, 32+ReadDef1(%rip)	#, ReadDef1.x
# m_menu.c:1876: 	ReadDef1.y = 165;
	.loc 1 1876 13
	movw	$165, 34+ReadDef1(%rip)	#, ReadDef1.y
# m_menu.c:1877: 	ReadMenu1[0].routine = M_FinishReadThis;
	.loc 1 1877 23
	leaq	M_FinishReadThis(%rip), %rax	#, tmp106
	movq	%rax, 16+ReadMenu1(%rip)	# tmp106, ReadMenu1[0].routine
# m_menu.c:1878: 	break;
	.loc 1 1878 2
	jmp	.L293	#
.L291:
# m_menu.c:1884: 	EpiDef.numitems--;
	.loc 1 1884 8
	movzwl	EpiDef(%rip), %eax	# EpiDef.numitems, _17
# m_menu.c:1884: 	EpiDef.numitems--;
	.loc 1 1884 17
	subl	$1, %eax	#, _20
	movw	%ax, EpiDef(%rip)	# _21, EpiDef.numitems
# m_menu.c:1885: 	break;
	.loc 1 1885 2
	jmp	.L293	#
.L294:
# m_menu.c:1889: 	break;
	.loc 1 1889 2
	nop	
.L293:
# m_menu.c:1892: }
	.loc 1 1892 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE59:
	.size	M_Init, .-M_Init
	.local	joywait.7
	.comm	joywait.7,4,4
	.local	mousewait.6
	.comm	mousewait.6,4,4
	.local	mousey.5
	.comm	mousey.5,4,4
	.local	lasty.4
	.comm	lasty.4,4,4
	.local	mousex.3
	.comm	mousex.3,4,4
	.local	lastx.2
	.comm	lastx.2,4,4
	.local	y.1
	.comm	y.1,2,2
	.local	x.0
	.comm	x.0,2,2
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/unistd.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "doomdef.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "dstrings.h"
	.file 10 "doomtype.h"
	.file 11 "d_event.h"
	.file 12 "d_ticcmd.h"
	.file 13 "m_fixed.h"
	.file 14 "d_think.h"
	.file 15 "tables.h"
	.file 16 "doomdata.h"
	.file 17 "info.h"
	.file 18 "p_mobj.h"
	.file 19 "r_defs.h"
	.file 20 "d_player.h"
	.file 21 "p_pspr.h"
	.file 22 "v_video.h"
	.file 23 "doomstat.h"
	.file 24 "sounds.h"
	.file 25 "/usr/include/string.h"
	.file 26 "/usr/include/ctype.h"
	.file 27 "i_video.h"
	.file 28 "r_main.h"
	.file 29 "g_game.h"
	.file 30 "i_system.h"
	.file 31 "d_main.h"
	.file 32 "s_sound.h"
	.file 33 "w_wad.h"
	.file 34 "/usr/include/fcntl.h"
	.file 35 "m_argv.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4a40
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x2a
	.long	.LASF1861
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xc
	.long	0x51
	.long	0x3e
	.uleb128 0x9
	.long	0x43
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.long	0x2e
	.uleb128 0x13
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x13
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x27
	.long	0x4a
	.uleb128 0x2b
	.long	.LASF1794
	.byte	0x1
	.byte	0x1a
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x13
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x13
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x13
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x13
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2c
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x13
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x6
	.long	.LASF10
	.byte	0x2
	.byte	0x98
	.byte	0x19
	.long	0x96
	.uleb128 0x6
	.long	.LASF11
	.byte	0x2
	.byte	0x99
	.byte	0x1b
	.long	0x96
	.uleb128 0x2d
	.byte	0x8
	.uleb128 0x6
	.long	.LASF12
	.byte	0x2
	.byte	0xc2
	.byte	0x1b
	.long	0x96
	.uleb128 0xa
	.long	0x4a
	.uleb128 0x6
	.long	.LASF13
	.byte	0x3
	.byte	0xdc
	.byte	0x13
	.long	0xb7
	.uleb128 0x6
	.long	.LASF14
	.byte	0x4
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x13
	.byte	0x8
	.byte	0x7
	.long	.LASF15
	.uleb128 0xc
	.long	0x4a
	.long	0xf7
	.uleb128 0x9
	.long	0x43
	.byte	0x27
	.byte	0
	.uleb128 0x13
	.byte	0x8
	.byte	0x5
	.long	.LASF16
	.uleb128 0xa
	.long	0x51
	.uleb128 0x1a
	.long	.LASF135
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x28a
	.uleb128 0x3
	.long	.LASF17
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x8f
	.byte	0
	.uleb128 0x3
	.long	.LASF18
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0xc3
	.byte	0x8
	.uleb128 0x3
	.long	.LASF19
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0xc3
	.byte	0x10
	.uleb128 0x3
	.long	.LASF20
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0xc3
	.byte	0x18
	.uleb128 0x3
	.long	.LASF21
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0xc3
	.byte	0x20
	.uleb128 0x3
	.long	.LASF22
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0xc3
	.byte	0x28
	.uleb128 0x3
	.long	.LASF23
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0xc3
	.byte	0x30
	.uleb128 0x3
	.long	.LASF24
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0xc3
	.byte	0x38
	.uleb128 0x3
	.long	.LASF25
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0xc3
	.byte	0x40
	.uleb128 0x3
	.long	.LASF26
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0xc3
	.byte	0x48
	.uleb128 0x3
	.long	.LASF27
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0xc3
	.byte	0x50
	.uleb128 0x3
	.long	.LASF28
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0xc3
	.byte	0x58
	.uleb128 0x3
	.long	.LASF29
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x2a3
	.byte	0x60
	.uleb128 0x3
	.long	.LASF30
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x2a8
	.byte	0x68
	.uleb128 0x3
	.long	.LASF31
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x8f
	.byte	0x70
	.uleb128 0x3
	.long	.LASF32
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x8f
	.byte	0x74
	.uleb128 0x3
	.long	.LASF33
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x9d
	.byte	0x78
	.uleb128 0x3
	.long	.LASF34
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x73
	.byte	0x80
	.uleb128 0x3
	.long	.LASF35
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x81
	.byte	0x82
	.uleb128 0x3
	.long	.LASF36
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x2ad
	.byte	0x83
	.uleb128 0x3
	.long	.LASF37
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x2bd
	.byte	0x88
	.uleb128 0x3
	.long	.LASF38
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0xa9
	.byte	0x90
	.uleb128 0x3
	.long	.LASF39
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x2c7
	.byte	0x98
	.uleb128 0x3
	.long	.LASF40
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x2d1
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF41
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x2a8
	.byte	0xa8
	.uleb128 0x3
	.long	.LASF42
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0xb5
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF43
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0xd4
	.byte	0xb8
	.uleb128 0x3
	.long	.LASF44
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x8f
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF45
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x2d6
	.byte	0xc4
	.byte	0
	.uleb128 0x6
	.long	.LASF46
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0x103
	.uleb128 0x2e
	.long	.LASF1862
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0x20
	.long	.LASF47
	.uleb128 0xa
	.long	0x29e
	.uleb128 0xa
	.long	0x103
	.uleb128 0xc
	.long	0x4a
	.long	0x2bd
	.uleb128 0x9
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x296
	.uleb128 0x20
	.long	.LASF48
	.uleb128 0xa
	.long	0x2c2
	.uleb128 0x20
	.long	.LASF49
	.uleb128 0xa
	.long	0x2cc
	.uleb128 0xc
	.long	0x4a
	.long	0x2e6
	.uleb128 0x9
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.long	0x28a
	.uleb128 0x10
	.long	.LASF104
	.byte	0x8
	.byte	0x97
	.byte	0xe
	.long	0x2e6
	.uleb128 0x11
	.long	0x7a
	.byte	0x7
	.byte	0x27
	.byte	0x1
	.long	0x322
	.uleb128 0x1
	.long	.LASF50
	.byte	0
	.uleb128 0x1
	.long	.LASF51
	.byte	0x1
	.uleb128 0x1
	.long	.LASF52
	.byte	0x2
	.uleb128 0x1
	.long	.LASF53
	.byte	0x3
	.uleb128 0x1
	.long	.LASF54
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	.LASF55
	.byte	0x7
	.byte	0x2f
	.byte	0x3
	.long	0x2f7
	.uleb128 0x11
	.long	0x7a
	.byte	0x7
	.byte	0x40
	.byte	0x1
	.long	0x353
	.uleb128 0x1
	.long	.LASF56
	.byte	0
	.uleb128 0x1
	.long	.LASF57
	.byte	0x1
	.uleb128 0x1
	.long	.LASF58
	.byte	0x2
	.uleb128 0x1
	.long	.LASF59
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF60
	.byte	0x7
	.byte	0x46
	.byte	0x3
	.long	0x32e
	.uleb128 0x11
	.long	0x7a
	.byte	0x7
	.byte	0x80
	.byte	0x1
	.long	0x384
	.uleb128 0x1
	.long	.LASF61
	.byte	0
	.uleb128 0x1
	.long	.LASF62
	.byte	0x1
	.uleb128 0x1
	.long	.LASF63
	.byte	0x2
	.uleb128 0x1
	.long	.LASF64
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF65
	.byte	0x7
	.byte	0x85
	.byte	0x3
	.long	0x35f
	.uleb128 0x11
	.long	0x7a
	.byte	0x7
	.byte	0x94
	.byte	0x1
	.long	0x3bb
	.uleb128 0x1
	.long	.LASF66
	.byte	0
	.uleb128 0x1
	.long	.LASF67
	.byte	0x1
	.uleb128 0x1
	.long	.LASF68
	.byte	0x2
	.uleb128 0x1
	.long	.LASF69
	.byte	0x3
	.uleb128 0x1
	.long	.LASF70
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	.LASF71
	.byte	0x7
	.byte	0x9a
	.byte	0x3
	.long	0x390
	.uleb128 0x11
	.long	0x7a
	.byte	0x7
	.byte	0xa3
	.byte	0x1
	.long	0x3fe
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
	.byte	0
	.uleb128 0x11
	.long	0x7a
	.byte	0x7
	.byte	0xb5
	.byte	0x1
	.long	0x44d
	.uleb128 0x1
	.long	.LASF79
	.byte	0
	.uleb128 0x1
	.long	.LASF80
	.byte	0x1
	.uleb128 0x1
	.long	.LASF81
	.byte	0x2
	.uleb128 0x1
	.long	.LASF82
	.byte	0x3
	.uleb128 0x1
	.long	.LASF83
	.byte	0x4
	.uleb128 0x1
	.long	.LASF84
	.byte	0x5
	.uleb128 0x1
	.long	.LASF85
	.byte	0x6
	.uleb128 0x1
	.long	.LASF86
	.byte	0x7
	.uleb128 0x1
	.long	.LASF87
	.byte	0x8
	.uleb128 0x1
	.long	.LASF88
	.byte	0x9
	.uleb128 0x1
	.long	.LASF89
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.long	.LASF90
	.byte	0x7
	.byte	0xc5
	.byte	0x3
	.long	0x3fe
	.uleb128 0x11
	.long	0x7a
	.byte	0x7
	.byte	0xca
	.byte	0x1
	.long	0x48a
	.uleb128 0x1
	.long	.LASF91
	.byte	0
	.uleb128 0x1
	.long	.LASF92
	.byte	0x1
	.uleb128 0x1
	.long	.LASF93
	.byte	0x2
	.uleb128 0x1
	.long	.LASF94
	.byte	0x3
	.uleb128 0x1
	.long	.LASF95
	.byte	0x4
	.uleb128 0x1
	.long	.LASF96
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.long	0x7a
	.byte	0x7
	.byte	0xd7
	.byte	0x1
	.long	0x4c1
	.uleb128 0x1
	.long	.LASF97
	.byte	0
	.uleb128 0x1
	.long	.LASF98
	.byte	0x1
	.uleb128 0x1
	.long	.LASF99
	.byte	0x2
	.uleb128 0x1
	.long	.LASF100
	.byte	0x3
	.uleb128 0x1
	.long	.LASF101
	.byte	0x4
	.uleb128 0x1
	.long	.LASF102
	.byte	0x5
	.uleb128 0x1
	.long	.LASF103
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.long	0xc3
	.long	0x4cc
	.uleb128 0x2f
	.byte	0
	.uleb128 0x10
	.long	.LASF105
	.byte	0x9
	.byte	0x3a
	.byte	0xe
	.long	0x4c1
	.uleb128 0x11
	.long	0x7a
	.byte	0xa
	.byte	0x22
	.byte	0xe
	.long	0x4f1
	.uleb128 0x1
	.long	.LASF106
	.byte	0
	.uleb128 0x1
	.long	.LASF107
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.long	.LASF108
	.byte	0xa
	.byte	0x22
	.byte	0x1c
	.long	0x4d8
	.uleb128 0x6
	.long	.LASF109
	.byte	0xa
	.byte	0x24
	.byte	0x17
	.long	0x6c
	.uleb128 0x11
	.long	0x7a
	.byte	0xb
	.byte	0x24
	.byte	0x1
	.long	0x52e
	.uleb128 0x1
	.long	.LASF110
	.byte	0
	.uleb128 0x1
	.long	.LASF111
	.byte	0x1
	.uleb128 0x1
	.long	.LASF112
	.byte	0x2
	.uleb128 0x1
	.long	.LASF113
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF114
	.byte	0xb
	.byte	0x29
	.byte	0x3
	.long	0x509
	.uleb128 0x17
	.byte	0x10
	.byte	0xb
	.byte	0x2c
	.long	0x577
	.uleb128 0x3
	.long	.LASF115
	.byte	0xb
	.byte	0x2e
	.byte	0xe
	.long	0x52e
	.byte	0
	.uleb128 0x3
	.long	.LASF116
	.byte	0xb
	.byte	0x2f
	.byte	0xa
	.long	0x8f
	.byte	0x4
	.uleb128 0x3
	.long	.LASF117
	.byte	0xb
	.byte	0x30
	.byte	0xa
	.long	0x8f
	.byte	0x8
	.uleb128 0x3
	.long	.LASF118
	.byte	0xb
	.byte	0x31
	.byte	0xa
	.long	0x8f
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.long	.LASF119
	.byte	0xb
	.byte	0x32
	.byte	0x3
	.long	0x53a
	.uleb128 0x17
	.byte	0x8
	.byte	0xc
	.byte	0x24
	.long	0x5da
	.uleb128 0x3
	.long	.LASF120
	.byte	0xc
	.byte	0x26
	.byte	0xa
	.long	0x4a
	.byte	0
	.uleb128 0x3
	.long	.LASF121
	.byte	0xc
	.byte	0x27
	.byte	0xa
	.long	0x4a
	.byte	0x1
	.uleb128 0x3
	.long	.LASF122
	.byte	0xc
	.byte	0x28
	.byte	0xb
	.long	0x88
	.byte	0x2
	.uleb128 0x3
	.long	.LASF123
	.byte	0xc
	.byte	0x29
	.byte	0xb
	.long	0x88
	.byte	0x4
	.uleb128 0x3
	.long	.LASF124
	.byte	0xc
	.byte	0x2a
	.byte	0xa
	.long	0x4fd
	.byte	0x6
	.uleb128 0x3
	.long	.LASF125
	.byte	0xc
	.byte	0x2b
	.byte	0xa
	.long	0x4fd
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.long	.LASF126
	.byte	0xc
	.byte	0x2c
	.byte	0x3
	.long	0x583
	.uleb128 0x6
	.long	.LASF127
	.byte	0xd
	.byte	0x26
	.byte	0xd
	.long	0x8f
	.uleb128 0x6
	.long	.LASF128
	.byte	0xe
	.byte	0x29
	.byte	0x11
	.long	0x5fe
	.uleb128 0xa
	.long	0x603
	.uleb128 0x30
	.long	0x60a
	.uleb128 0x21
	.byte	0
	.uleb128 0x6
	.long	.LASF129
	.byte	0xe
	.byte	0x2a
	.byte	0x11
	.long	0x616
	.uleb128 0xa
	.long	0x61b
	.uleb128 0x22
	.long	0x626
	.uleb128 0x4
	.long	0xb5
	.byte	0
	.uleb128 0x6
	.long	.LASF130
	.byte	0xe
	.byte	0x2b
	.byte	0x11
	.long	0x632
	.uleb128 0xa
	.long	0x637
	.uleb128 0x22
	.long	0x647
	.uleb128 0x4
	.long	0xb5
	.uleb128 0x4
	.long	0xb5
	.byte	0
	.uleb128 0x31
	.byte	0x8
	.byte	0xe
	.byte	0x2d
	.byte	0x9
	.long	0x671
	.uleb128 0x28
	.long	.LASF131
	.byte	0x2f
	.long	0x60a
	.uleb128 0x32
	.string	"acv"
	.byte	0xe
	.byte	0x30
	.byte	0xd
	.long	0x5f2
	.uleb128 0x28
	.long	.LASF132
	.byte	0x31
	.long	0x626
	.byte	0
	.uleb128 0x6
	.long	.LASF133
	.byte	0xe
	.byte	0x33
	.byte	0x3
	.long	0x647
	.uleb128 0x6
	.long	.LASF134
	.byte	0xe
	.byte	0x3c
	.byte	0x14
	.long	0x671
	.uleb128 0x1a
	.long	.LASF136
	.byte	0x18
	.byte	0xe
	.byte	0x40
	.byte	0x10
	.long	0x6be
	.uleb128 0x3
	.long	.LASF137
	.byte	0xe
	.byte	0x42
	.byte	0x17
	.long	0x6be
	.byte	0
	.uleb128 0x3
	.long	.LASF138
	.byte	0xe
	.byte	0x43
	.byte	0x17
	.long	0x6be
	.byte	0x8
	.uleb128 0x3
	.long	.LASF139
	.byte	0xe
	.byte	0x44
	.byte	0xe
	.long	0x67d
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.long	0x689
	.uleb128 0x6
	.long	.LASF140
	.byte	0xe
	.byte	0x46
	.byte	0x3
	.long	0x689
	.uleb128 0x13
	.byte	0x4
	.byte	0x4
	.long	.LASF141
	.uleb128 0x13
	.byte	0x8
	.byte	0x4
	.long	.LASF142
	.uleb128 0x6
	.long	.LASF143
	.byte	0xf
	.byte	0x4e
	.byte	0x12
	.long	0x7a
	.uleb128 0xc
	.long	0x88
	.long	0x6f9
	.uleb128 0x9
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.byte	0xa
	.byte	0x10
	.byte	0xcb
	.long	0x73f
	.uleb128 0xe
	.string	"x"
	.byte	0x10
	.byte	0xcd
	.byte	0xc
	.long	0x88
	.byte	0
	.uleb128 0xe
	.string	"y"
	.byte	0x10
	.byte	0xce
	.byte	0xc
	.long	0x88
	.byte	0x2
	.uleb128 0x3
	.long	.LASF144
	.byte	0x10
	.byte	0xcf
	.byte	0xc
	.long	0x88
	.byte	0x4
	.uleb128 0x3
	.long	.LASF115
	.byte	0x10
	.byte	0xd0
	.byte	0xc
	.long	0x88
	.byte	0x6
	.uleb128 0x3
	.long	.LASF145
	.byte	0x10
	.byte	0xd1
	.byte	0xc
	.long	0x88
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	.LASF146
	.byte	0x10
	.byte	0xd2
	.byte	0x3
	.long	0x6f9
	.uleb128 0x11
	.long	0x7a
	.byte	0x11
	.byte	0x1f
	.byte	0x1
	.long	0xa9a
	.uleb128 0x1
	.long	.LASF147
	.byte	0
	.uleb128 0x1
	.long	.LASF148
	.byte	0x1
	.uleb128 0x1
	.long	.LASF149
	.byte	0x2
	.uleb128 0x1
	.long	.LASF150
	.byte	0x3
	.uleb128 0x1
	.long	.LASF151
	.byte	0x4
	.uleb128 0x1
	.long	.LASF152
	.byte	0x5
	.uleb128 0x1
	.long	.LASF153
	.byte	0x6
	.uleb128 0x1
	.long	.LASF154
	.byte	0x7
	.uleb128 0x1
	.long	.LASF155
	.byte	0x8
	.uleb128 0x1
	.long	.LASF156
	.byte	0x9
	.uleb128 0x1
	.long	.LASF157
	.byte	0xa
	.uleb128 0x1
	.long	.LASF158
	.byte	0xb
	.uleb128 0x1
	.long	.LASF159
	.byte	0xc
	.uleb128 0x1
	.long	.LASF160
	.byte	0xd
	.uleb128 0x1
	.long	.LASF161
	.byte	0xe
	.uleb128 0x1
	.long	.LASF162
	.byte	0xf
	.uleb128 0x1
	.long	.LASF163
	.byte	0x10
	.uleb128 0x1
	.long	.LASF164
	.byte	0x11
	.uleb128 0x1
	.long	.LASF165
	.byte	0x12
	.uleb128 0x1
	.long	.LASF166
	.byte	0x13
	.uleb128 0x1
	.long	.LASF167
	.byte	0x14
	.uleb128 0x1
	.long	.LASF168
	.byte	0x15
	.uleb128 0x1
	.long	.LASF169
	.byte	0x16
	.uleb128 0x1
	.long	.LASF170
	.byte	0x17
	.uleb128 0x1
	.long	.LASF171
	.byte	0x18
	.uleb128 0x1
	.long	.LASF172
	.byte	0x19
	.uleb128 0x1
	.long	.LASF173
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF174
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF175
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF176
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF177
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF178
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF179
	.byte	0x20
	.uleb128 0x1
	.long	.LASF180
	.byte	0x21
	.uleb128 0x1
	.long	.LASF181
	.byte	0x22
	.uleb128 0x1
	.long	.LASF182
	.byte	0x23
	.uleb128 0x1
	.long	.LASF183
	.byte	0x24
	.uleb128 0x1
	.long	.LASF184
	.byte	0x25
	.uleb128 0x1
	.long	.LASF185
	.byte	0x26
	.uleb128 0x1
	.long	.LASF186
	.byte	0x27
	.uleb128 0x1
	.long	.LASF187
	.byte	0x28
	.uleb128 0x1
	.long	.LASF188
	.byte	0x29
	.uleb128 0x1
	.long	.LASF189
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF190
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF191
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF192
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF193
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF194
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF195
	.byte	0x30
	.uleb128 0x1
	.long	.LASF196
	.byte	0x31
	.uleb128 0x1
	.long	.LASF197
	.byte	0x32
	.uleb128 0x1
	.long	.LASF198
	.byte	0x33
	.uleb128 0x1
	.long	.LASF199
	.byte	0x34
	.uleb128 0x1
	.long	.LASF200
	.byte	0x35
	.uleb128 0x1
	.long	.LASF201
	.byte	0x36
	.uleb128 0x1
	.long	.LASF202
	.byte	0x37
	.uleb128 0x1
	.long	.LASF203
	.byte	0x38
	.uleb128 0x1
	.long	.LASF204
	.byte	0x39
	.uleb128 0x1
	.long	.LASF205
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF206
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF207
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF208
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF209
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF210
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF211
	.byte	0x40
	.uleb128 0x1
	.long	.LASF212
	.byte	0x41
	.uleb128 0x1
	.long	.LASF213
	.byte	0x42
	.uleb128 0x1
	.long	.LASF214
	.byte	0x43
	.uleb128 0x1
	.long	.LASF215
	.byte	0x44
	.uleb128 0x1
	.long	.LASF216
	.byte	0x45
	.uleb128 0x1
	.long	.LASF217
	.byte	0x46
	.uleb128 0x1
	.long	.LASF218
	.byte	0x47
	.uleb128 0x1
	.long	.LASF219
	.byte	0x48
	.uleb128 0x1
	.long	.LASF220
	.byte	0x49
	.uleb128 0x1
	.long	.LASF221
	.byte	0x4a
	.uleb128 0x1
	.long	.LASF222
	.byte	0x4b
	.uleb128 0x1
	.long	.LASF223
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF224
	.byte	0x4d
	.uleb128 0x1
	.long	.LASF225
	.byte	0x4e
	.uleb128 0x1
	.long	.LASF226
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF227
	.byte	0x50
	.uleb128 0x1
	.long	.LASF228
	.byte	0x51
	.uleb128 0x1
	.long	.LASF229
	.byte	0x52
	.uleb128 0x1
	.long	.LASF230
	.byte	0x53
	.uleb128 0x1
	.long	.LASF231
	.byte	0x54
	.uleb128 0x1
	.long	.LASF232
	.byte	0x55
	.uleb128 0x1
	.long	.LASF233
	.byte	0x56
	.uleb128 0x1
	.long	.LASF234
	.byte	0x57
	.uleb128 0x1
	.long	.LASF235
	.byte	0x58
	.uleb128 0x1
	.long	.LASF236
	.byte	0x59
	.uleb128 0x1
	.long	.LASF237
	.byte	0x5a
	.uleb128 0x1
	.long	.LASF238
	.byte	0x5b
	.uleb128 0x1
	.long	.LASF239
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF240
	.byte	0x5d
	.uleb128 0x1
	.long	.LASF241
	.byte	0x5e
	.uleb128 0x1
	.long	.LASF242
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF243
	.byte	0x60
	.uleb128 0x1
	.long	.LASF244
	.byte	0x61
	.uleb128 0x1
	.long	.LASF245
	.byte	0x62
	.uleb128 0x1
	.long	.LASF246
	.byte	0x63
	.uleb128 0x1
	.long	.LASF247
	.byte	0x64
	.uleb128 0x1
	.long	.LASF248
	.byte	0x65
	.uleb128 0x1
	.long	.LASF249
	.byte	0x66
	.uleb128 0x1
	.long	.LASF250
	.byte	0x67
	.uleb128 0x1
	.long	.LASF251
	.byte	0x68
	.uleb128 0x1
	.long	.LASF252
	.byte	0x69
	.uleb128 0x1
	.long	.LASF253
	.byte	0x6a
	.uleb128 0x1
	.long	.LASF254
	.byte	0x6b
	.uleb128 0x1
	.long	.LASF255
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF256
	.byte	0x6d
	.uleb128 0x1
	.long	.LASF257
	.byte	0x6e
	.uleb128 0x1
	.long	.LASF258
	.byte	0x6f
	.uleb128 0x1
	.long	.LASF259
	.byte	0x70
	.uleb128 0x1
	.long	.LASF260
	.byte	0x71
	.uleb128 0x1
	.long	.LASF261
	.byte	0x72
	.uleb128 0x1
	.long	.LASF262
	.byte	0x73
	.uleb128 0x1
	.long	.LASF263
	.byte	0x74
	.uleb128 0x1
	.long	.LASF264
	.byte	0x75
	.uleb128 0x1
	.long	.LASF265
	.byte	0x76
	.uleb128 0x1
	.long	.LASF266
	.byte	0x77
	.uleb128 0x1
	.long	.LASF267
	.byte	0x78
	.uleb128 0x1
	.long	.LASF268
	.byte	0x79
	.uleb128 0x1
	.long	.LASF269
	.byte	0x7a
	.uleb128 0x1
	.long	.LASF270
	.byte	0x7b
	.uleb128 0x1
	.long	.LASF271
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF272
	.byte	0x7d
	.uleb128 0x1
	.long	.LASF273
	.byte	0x7e
	.uleb128 0x1
	.long	.LASF274
	.byte	0x7f
	.uleb128 0x1
	.long	.LASF275
	.byte	0x80
	.uleb128 0x1
	.long	.LASF276
	.byte	0x81
	.uleb128 0x1
	.long	.LASF277
	.byte	0x82
	.uleb128 0x1
	.long	.LASF278
	.byte	0x83
	.uleb128 0x1
	.long	.LASF279
	.byte	0x84
	.uleb128 0x1
	.long	.LASF280
	.byte	0x85
	.uleb128 0x1
	.long	.LASF281
	.byte	0x86
	.uleb128 0x1
	.long	.LASF282
	.byte	0x87
	.uleb128 0x1
	.long	.LASF283
	.byte	0x88
	.uleb128 0x1
	.long	.LASF284
	.byte	0x89
	.uleb128 0x1
	.long	.LASF285
	.byte	0x8a
	.byte	0
	.uleb128 0x6
	.long	.LASF286
	.byte	0x11
	.byte	0xac
	.byte	0x3
	.long	0x74b
	.uleb128 0x11
	.long	0x7a
	.byte	0x11
	.byte	0xaf
	.byte	0x1
	.long	0x242b
	.uleb128 0x1
	.long	.LASF287
	.byte	0
	.uleb128 0x1
	.long	.LASF288
	.byte	0x1
	.uleb128 0x1
	.long	.LASF289
	.byte	0x2
	.uleb128 0x1
	.long	.LASF290
	.byte	0x3
	.uleb128 0x1
	.long	.LASF291
	.byte	0x4
	.uleb128 0x1
	.long	.LASF292
	.byte	0x5
	.uleb128 0x1
	.long	.LASF293
	.byte	0x6
	.uleb128 0x1
	.long	.LASF294
	.byte	0x7
	.uleb128 0x1
	.long	.LASF295
	.byte	0x8
	.uleb128 0x1
	.long	.LASF296
	.byte	0x9
	.uleb128 0x1
	.long	.LASF297
	.byte	0xa
	.uleb128 0x1
	.long	.LASF298
	.byte	0xb
	.uleb128 0x1
	.long	.LASF299
	.byte	0xc
	.uleb128 0x1
	.long	.LASF300
	.byte	0xd
	.uleb128 0x1
	.long	.LASF301
	.byte	0xe
	.uleb128 0x1
	.long	.LASF302
	.byte	0xf
	.uleb128 0x1
	.long	.LASF303
	.byte	0x10
	.uleb128 0x1
	.long	.LASF304
	.byte	0x11
	.uleb128 0x1
	.long	.LASF305
	.byte	0x12
	.uleb128 0x1
	.long	.LASF306
	.byte	0x13
	.uleb128 0x1
	.long	.LASF307
	.byte	0x14
	.uleb128 0x1
	.long	.LASF308
	.byte	0x15
	.uleb128 0x1
	.long	.LASF309
	.byte	0x16
	.uleb128 0x1
	.long	.LASF310
	.byte	0x17
	.uleb128 0x1
	.long	.LASF311
	.byte	0x18
	.uleb128 0x1
	.long	.LASF312
	.byte	0x19
	.uleb128 0x1
	.long	.LASF313
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF314
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF315
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF316
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF317
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF318
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF319
	.byte	0x20
	.uleb128 0x1
	.long	.LASF320
	.byte	0x21
	.uleb128 0x1
	.long	.LASF321
	.byte	0x22
	.uleb128 0x1
	.long	.LASF322
	.byte	0x23
	.uleb128 0x1
	.long	.LASF323
	.byte	0x24
	.uleb128 0x1
	.long	.LASF324
	.byte	0x25
	.uleb128 0x1
	.long	.LASF325
	.byte	0x26
	.uleb128 0x1
	.long	.LASF326
	.byte	0x27
	.uleb128 0x1
	.long	.LASF327
	.byte	0x28
	.uleb128 0x1
	.long	.LASF328
	.byte	0x29
	.uleb128 0x1
	.long	.LASF329
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF330
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF331
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF332
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF333
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF334
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF335
	.byte	0x30
	.uleb128 0x1
	.long	.LASF336
	.byte	0x31
	.uleb128 0x1
	.long	.LASF337
	.byte	0x32
	.uleb128 0x1
	.long	.LASF338
	.byte	0x33
	.uleb128 0x1
	.long	.LASF339
	.byte	0x34
	.uleb128 0x1
	.long	.LASF340
	.byte	0x35
	.uleb128 0x1
	.long	.LASF341
	.byte	0x36
	.uleb128 0x1
	.long	.LASF342
	.byte	0x37
	.uleb128 0x1
	.long	.LASF343
	.byte	0x38
	.uleb128 0x1
	.long	.LASF344
	.byte	0x39
	.uleb128 0x1
	.long	.LASF345
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF346
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF347
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF348
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF349
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF350
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF351
	.byte	0x40
	.uleb128 0x1
	.long	.LASF352
	.byte	0x41
	.uleb128 0x1
	.long	.LASF353
	.byte	0x42
	.uleb128 0x1
	.long	.LASF354
	.byte	0x43
	.uleb128 0x1
	.long	.LASF355
	.byte	0x44
	.uleb128 0x1
	.long	.LASF356
	.byte	0x45
	.uleb128 0x1
	.long	.LASF357
	.byte	0x46
	.uleb128 0x1
	.long	.LASF358
	.byte	0x47
	.uleb128 0x1
	.long	.LASF359
	.byte	0x48
	.uleb128 0x1
	.long	.LASF360
	.byte	0x49
	.uleb128 0x1
	.long	.LASF361
	.byte	0x4a
	.uleb128 0x1
	.long	.LASF362
	.byte	0x4b
	.uleb128 0x1
	.long	.LASF363
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF364
	.byte	0x4d
	.uleb128 0x1
	.long	.LASF365
	.byte	0x4e
	.uleb128 0x1
	.long	.LASF366
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF367
	.byte	0x50
	.uleb128 0x1
	.long	.LASF368
	.byte	0x51
	.uleb128 0x1
	.long	.LASF369
	.byte	0x52
	.uleb128 0x1
	.long	.LASF370
	.byte	0x53
	.uleb128 0x1
	.long	.LASF371
	.byte	0x54
	.uleb128 0x1
	.long	.LASF372
	.byte	0x55
	.uleb128 0x1
	.long	.LASF373
	.byte	0x56
	.uleb128 0x1
	.long	.LASF374
	.byte	0x57
	.uleb128 0x1
	.long	.LASF375
	.byte	0x58
	.uleb128 0x1
	.long	.LASF376
	.byte	0x59
	.uleb128 0x1
	.long	.LASF377
	.byte	0x5a
	.uleb128 0x1
	.long	.LASF378
	.byte	0x5b
	.uleb128 0x1
	.long	.LASF379
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF380
	.byte	0x5d
	.uleb128 0x1
	.long	.LASF381
	.byte	0x5e
	.uleb128 0x1
	.long	.LASF382
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF383
	.byte	0x60
	.uleb128 0x1
	.long	.LASF384
	.byte	0x61
	.uleb128 0x1
	.long	.LASF385
	.byte	0x62
	.uleb128 0x1
	.long	.LASF386
	.byte	0x63
	.uleb128 0x1
	.long	.LASF387
	.byte	0x64
	.uleb128 0x1
	.long	.LASF388
	.byte	0x65
	.uleb128 0x1
	.long	.LASF389
	.byte	0x66
	.uleb128 0x1
	.long	.LASF390
	.byte	0x67
	.uleb128 0x1
	.long	.LASF391
	.byte	0x68
	.uleb128 0x1
	.long	.LASF392
	.byte	0x69
	.uleb128 0x1
	.long	.LASF393
	.byte	0x6a
	.uleb128 0x1
	.long	.LASF394
	.byte	0x6b
	.uleb128 0x1
	.long	.LASF395
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF396
	.byte	0x6d
	.uleb128 0x1
	.long	.LASF397
	.byte	0x6e
	.uleb128 0x1
	.long	.LASF398
	.byte	0x6f
	.uleb128 0x1
	.long	.LASF399
	.byte	0x70
	.uleb128 0x1
	.long	.LASF400
	.byte	0x71
	.uleb128 0x1
	.long	.LASF401
	.byte	0x72
	.uleb128 0x1
	.long	.LASF402
	.byte	0x73
	.uleb128 0x1
	.long	.LASF403
	.byte	0x74
	.uleb128 0x1
	.long	.LASF404
	.byte	0x75
	.uleb128 0x1
	.long	.LASF405
	.byte	0x76
	.uleb128 0x1
	.long	.LASF406
	.byte	0x77
	.uleb128 0x1
	.long	.LASF407
	.byte	0x78
	.uleb128 0x1
	.long	.LASF408
	.byte	0x79
	.uleb128 0x1
	.long	.LASF409
	.byte	0x7a
	.uleb128 0x1
	.long	.LASF410
	.byte	0x7b
	.uleb128 0x1
	.long	.LASF411
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF412
	.byte	0x7d
	.uleb128 0x1
	.long	.LASF413
	.byte	0x7e
	.uleb128 0x1
	.long	.LASF414
	.byte	0x7f
	.uleb128 0x1
	.long	.LASF415
	.byte	0x80
	.uleb128 0x1
	.long	.LASF416
	.byte	0x81
	.uleb128 0x1
	.long	.LASF417
	.byte	0x82
	.uleb128 0x1
	.long	.LASF418
	.byte	0x83
	.uleb128 0x1
	.long	.LASF419
	.byte	0x84
	.uleb128 0x1
	.long	.LASF420
	.byte	0x85
	.uleb128 0x1
	.long	.LASF421
	.byte	0x86
	.uleb128 0x1
	.long	.LASF422
	.byte	0x87
	.uleb128 0x1
	.long	.LASF423
	.byte	0x88
	.uleb128 0x1
	.long	.LASF424
	.byte	0x89
	.uleb128 0x1
	.long	.LASF425
	.byte	0x8a
	.uleb128 0x1
	.long	.LASF426
	.byte	0x8b
	.uleb128 0x1
	.long	.LASF427
	.byte	0x8c
	.uleb128 0x1
	.long	.LASF428
	.byte	0x8d
	.uleb128 0x1
	.long	.LASF429
	.byte	0x8e
	.uleb128 0x1
	.long	.LASF430
	.byte	0x8f
	.uleb128 0x1
	.long	.LASF431
	.byte	0x90
	.uleb128 0x1
	.long	.LASF432
	.byte	0x91
	.uleb128 0x1
	.long	.LASF433
	.byte	0x92
	.uleb128 0x1
	.long	.LASF434
	.byte	0x93
	.uleb128 0x1
	.long	.LASF435
	.byte	0x94
	.uleb128 0x1
	.long	.LASF436
	.byte	0x95
	.uleb128 0x1
	.long	.LASF437
	.byte	0x96
	.uleb128 0x1
	.long	.LASF438
	.byte	0x97
	.uleb128 0x1
	.long	.LASF439
	.byte	0x98
	.uleb128 0x1
	.long	.LASF440
	.byte	0x99
	.uleb128 0x1
	.long	.LASF441
	.byte	0x9a
	.uleb128 0x1
	.long	.LASF442
	.byte	0x9b
	.uleb128 0x1
	.long	.LASF443
	.byte	0x9c
	.uleb128 0x1
	.long	.LASF444
	.byte	0x9d
	.uleb128 0x1
	.long	.LASF445
	.byte	0x9e
	.uleb128 0x1
	.long	.LASF446
	.byte	0x9f
	.uleb128 0x1
	.long	.LASF447
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF448
	.byte	0xa1
	.uleb128 0x1
	.long	.LASF449
	.byte	0xa2
	.uleb128 0x1
	.long	.LASF450
	.byte	0xa3
	.uleb128 0x1
	.long	.LASF451
	.byte	0xa4
	.uleb128 0x1
	.long	.LASF452
	.byte	0xa5
	.uleb128 0x1
	.long	.LASF453
	.byte	0xa6
	.uleb128 0x1
	.long	.LASF454
	.byte	0xa7
	.uleb128 0x1
	.long	.LASF455
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF456
	.byte	0xa9
	.uleb128 0x1
	.long	.LASF457
	.byte	0xaa
	.uleb128 0x1
	.long	.LASF458
	.byte	0xab
	.uleb128 0x1
	.long	.LASF459
	.byte	0xac
	.uleb128 0x1
	.long	.LASF460
	.byte	0xad
	.uleb128 0x1
	.long	.LASF461
	.byte	0xae
	.uleb128 0x1
	.long	.LASF462
	.byte	0xaf
	.uleb128 0x1
	.long	.LASF463
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF464
	.byte	0xb1
	.uleb128 0x1
	.long	.LASF465
	.byte	0xb2
	.uleb128 0x1
	.long	.LASF466
	.byte	0xb3
	.uleb128 0x1
	.long	.LASF467
	.byte	0xb4
	.uleb128 0x1
	.long	.LASF468
	.byte	0xb5
	.uleb128 0x1
	.long	.LASF469
	.byte	0xb6
	.uleb128 0x1
	.long	.LASF470
	.byte	0xb7
	.uleb128 0x1
	.long	.LASF471
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF472
	.byte	0xb9
	.uleb128 0x1
	.long	.LASF473
	.byte	0xba
	.uleb128 0x1
	.long	.LASF474
	.byte	0xbb
	.uleb128 0x1
	.long	.LASF475
	.byte	0xbc
	.uleb128 0x1
	.long	.LASF476
	.byte	0xbd
	.uleb128 0x1
	.long	.LASF477
	.byte	0xbe
	.uleb128 0x1
	.long	.LASF478
	.byte	0xbf
	.uleb128 0x1
	.long	.LASF479
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF480
	.byte	0xc1
	.uleb128 0x1
	.long	.LASF481
	.byte	0xc2
	.uleb128 0x1
	.long	.LASF482
	.byte	0xc3
	.uleb128 0x1
	.long	.LASF483
	.byte	0xc4
	.uleb128 0x1
	.long	.LASF484
	.byte	0xc5
	.uleb128 0x1
	.long	.LASF485
	.byte	0xc6
	.uleb128 0x1
	.long	.LASF486
	.byte	0xc7
	.uleb128 0x1
	.long	.LASF487
	.byte	0xc8
	.uleb128 0x1
	.long	.LASF488
	.byte	0xc9
	.uleb128 0x1
	.long	.LASF489
	.byte	0xca
	.uleb128 0x1
	.long	.LASF490
	.byte	0xcb
	.uleb128 0x1
	.long	.LASF491
	.byte	0xcc
	.uleb128 0x1
	.long	.LASF492
	.byte	0xcd
	.uleb128 0x1
	.long	.LASF493
	.byte	0xce
	.uleb128 0x1
	.long	.LASF494
	.byte	0xcf
	.uleb128 0x1
	.long	.LASF495
	.byte	0xd0
	.uleb128 0x1
	.long	.LASF496
	.byte	0xd1
	.uleb128 0x1
	.long	.LASF497
	.byte	0xd2
	.uleb128 0x1
	.long	.LASF498
	.byte	0xd3
	.uleb128 0x1
	.long	.LASF499
	.byte	0xd4
	.uleb128 0x1
	.long	.LASF500
	.byte	0xd5
	.uleb128 0x1
	.long	.LASF501
	.byte	0xd6
	.uleb128 0x1
	.long	.LASF502
	.byte	0xd7
	.uleb128 0x1
	.long	.LASF503
	.byte	0xd8
	.uleb128 0x1
	.long	.LASF504
	.byte	0xd9
	.uleb128 0x1
	.long	.LASF505
	.byte	0xda
	.uleb128 0x1
	.long	.LASF506
	.byte	0xdb
	.uleb128 0x1
	.long	.LASF507
	.byte	0xdc
	.uleb128 0x1
	.long	.LASF508
	.byte	0xdd
	.uleb128 0x1
	.long	.LASF509
	.byte	0xde
	.uleb128 0x1
	.long	.LASF510
	.byte	0xdf
	.uleb128 0x1
	.long	.LASF511
	.byte	0xe0
	.uleb128 0x1
	.long	.LASF512
	.byte	0xe1
	.uleb128 0x1
	.long	.LASF513
	.byte	0xe2
	.uleb128 0x1
	.long	.LASF514
	.byte	0xe3
	.uleb128 0x1
	.long	.LASF515
	.byte	0xe4
	.uleb128 0x1
	.long	.LASF516
	.byte	0xe5
	.uleb128 0x1
	.long	.LASF517
	.byte	0xe6
	.uleb128 0x1
	.long	.LASF518
	.byte	0xe7
	.uleb128 0x1
	.long	.LASF519
	.byte	0xe8
	.uleb128 0x1
	.long	.LASF520
	.byte	0xe9
	.uleb128 0x1
	.long	.LASF521
	.byte	0xea
	.uleb128 0x1
	.long	.LASF522
	.byte	0xeb
	.uleb128 0x1
	.long	.LASF523
	.byte	0xec
	.uleb128 0x1
	.long	.LASF524
	.byte	0xed
	.uleb128 0x1
	.long	.LASF525
	.byte	0xee
	.uleb128 0x1
	.long	.LASF526
	.byte	0xef
	.uleb128 0x1
	.long	.LASF527
	.byte	0xf0
	.uleb128 0x1
	.long	.LASF528
	.byte	0xf1
	.uleb128 0x1
	.long	.LASF529
	.byte	0xf2
	.uleb128 0x1
	.long	.LASF530
	.byte	0xf3
	.uleb128 0x1
	.long	.LASF531
	.byte	0xf4
	.uleb128 0x1
	.long	.LASF532
	.byte	0xf5
	.uleb128 0x1
	.long	.LASF533
	.byte	0xf6
	.uleb128 0x1
	.long	.LASF534
	.byte	0xf7
	.uleb128 0x1
	.long	.LASF535
	.byte	0xf8
	.uleb128 0x1
	.long	.LASF536
	.byte	0xf9
	.uleb128 0x1
	.long	.LASF537
	.byte	0xfa
	.uleb128 0x1
	.long	.LASF538
	.byte	0xfb
	.uleb128 0x1
	.long	.LASF539
	.byte	0xfc
	.uleb128 0x1
	.long	.LASF540
	.byte	0xfd
	.uleb128 0x1
	.long	.LASF541
	.byte	0xfe
	.uleb128 0x1
	.long	.LASF542
	.byte	0xff
	.uleb128 0x2
	.long	.LASF543
	.value	0x100
	.uleb128 0x2
	.long	.LASF544
	.value	0x101
	.uleb128 0x2
	.long	.LASF545
	.value	0x102
	.uleb128 0x2
	.long	.LASF546
	.value	0x103
	.uleb128 0x2
	.long	.LASF547
	.value	0x104
	.uleb128 0x2
	.long	.LASF548
	.value	0x105
	.uleb128 0x2
	.long	.LASF549
	.value	0x106
	.uleb128 0x2
	.long	.LASF550
	.value	0x107
	.uleb128 0x2
	.long	.LASF551
	.value	0x108
	.uleb128 0x2
	.long	.LASF552
	.value	0x109
	.uleb128 0x2
	.long	.LASF553
	.value	0x10a
	.uleb128 0x2
	.long	.LASF554
	.value	0x10b
	.uleb128 0x2
	.long	.LASF555
	.value	0x10c
	.uleb128 0x2
	.long	.LASF556
	.value	0x10d
	.uleb128 0x2
	.long	.LASF557
	.value	0x10e
	.uleb128 0x2
	.long	.LASF558
	.value	0x10f
	.uleb128 0x2
	.long	.LASF559
	.value	0x110
	.uleb128 0x2
	.long	.LASF560
	.value	0x111
	.uleb128 0x2
	.long	.LASF561
	.value	0x112
	.uleb128 0x2
	.long	.LASF562
	.value	0x113
	.uleb128 0x2
	.long	.LASF563
	.value	0x114
	.uleb128 0x2
	.long	.LASF564
	.value	0x115
	.uleb128 0x2
	.long	.LASF565
	.value	0x116
	.uleb128 0x2
	.long	.LASF566
	.value	0x117
	.uleb128 0x2
	.long	.LASF567
	.value	0x118
	.uleb128 0x2
	.long	.LASF568
	.value	0x119
	.uleb128 0x2
	.long	.LASF569
	.value	0x11a
	.uleb128 0x2
	.long	.LASF570
	.value	0x11b
	.uleb128 0x2
	.long	.LASF571
	.value	0x11c
	.uleb128 0x2
	.long	.LASF572
	.value	0x11d
	.uleb128 0x2
	.long	.LASF573
	.value	0x11e
	.uleb128 0x2
	.long	.LASF574
	.value	0x11f
	.uleb128 0x2
	.long	.LASF575
	.value	0x120
	.uleb128 0x2
	.long	.LASF576
	.value	0x121
	.uleb128 0x2
	.long	.LASF577
	.value	0x122
	.uleb128 0x2
	.long	.LASF578
	.value	0x123
	.uleb128 0x2
	.long	.LASF579
	.value	0x124
	.uleb128 0x2
	.long	.LASF580
	.value	0x125
	.uleb128 0x2
	.long	.LASF581
	.value	0x126
	.uleb128 0x2
	.long	.LASF582
	.value	0x127
	.uleb128 0x2
	.long	.LASF583
	.value	0x128
	.uleb128 0x2
	.long	.LASF584
	.value	0x129
	.uleb128 0x2
	.long	.LASF585
	.value	0x12a
	.uleb128 0x2
	.long	.LASF586
	.value	0x12b
	.uleb128 0x2
	.long	.LASF587
	.value	0x12c
	.uleb128 0x2
	.long	.LASF588
	.value	0x12d
	.uleb128 0x2
	.long	.LASF589
	.value	0x12e
	.uleb128 0x2
	.long	.LASF590
	.value	0x12f
	.uleb128 0x2
	.long	.LASF591
	.value	0x130
	.uleb128 0x2
	.long	.LASF592
	.value	0x131
	.uleb128 0x2
	.long	.LASF593
	.value	0x132
	.uleb128 0x2
	.long	.LASF594
	.value	0x133
	.uleb128 0x2
	.long	.LASF595
	.value	0x134
	.uleb128 0x2
	.long	.LASF596
	.value	0x135
	.uleb128 0x2
	.long	.LASF597
	.value	0x136
	.uleb128 0x2
	.long	.LASF598
	.value	0x137
	.uleb128 0x2
	.long	.LASF599
	.value	0x138
	.uleb128 0x2
	.long	.LASF600
	.value	0x139
	.uleb128 0x2
	.long	.LASF601
	.value	0x13a
	.uleb128 0x2
	.long	.LASF602
	.value	0x13b
	.uleb128 0x2
	.long	.LASF603
	.value	0x13c
	.uleb128 0x2
	.long	.LASF604
	.value	0x13d
	.uleb128 0x2
	.long	.LASF605
	.value	0x13e
	.uleb128 0x2
	.long	.LASF606
	.value	0x13f
	.uleb128 0x2
	.long	.LASF607
	.value	0x140
	.uleb128 0x2
	.long	.LASF608
	.value	0x141
	.uleb128 0x2
	.long	.LASF609
	.value	0x142
	.uleb128 0x2
	.long	.LASF610
	.value	0x143
	.uleb128 0x2
	.long	.LASF611
	.value	0x144
	.uleb128 0x2
	.long	.LASF612
	.value	0x145
	.uleb128 0x2
	.long	.LASF613
	.value	0x146
	.uleb128 0x2
	.long	.LASF614
	.value	0x147
	.uleb128 0x2
	.long	.LASF615
	.value	0x148
	.uleb128 0x2
	.long	.LASF616
	.value	0x149
	.uleb128 0x2
	.long	.LASF617
	.value	0x14a
	.uleb128 0x2
	.long	.LASF618
	.value	0x14b
	.uleb128 0x2
	.long	.LASF619
	.value	0x14c
	.uleb128 0x2
	.long	.LASF620
	.value	0x14d
	.uleb128 0x2
	.long	.LASF621
	.value	0x14e
	.uleb128 0x2
	.long	.LASF622
	.value	0x14f
	.uleb128 0x2
	.long	.LASF623
	.value	0x150
	.uleb128 0x2
	.long	.LASF624
	.value	0x151
	.uleb128 0x2
	.long	.LASF625
	.value	0x152
	.uleb128 0x2
	.long	.LASF626
	.value	0x153
	.uleb128 0x2
	.long	.LASF627
	.value	0x154
	.uleb128 0x2
	.long	.LASF628
	.value	0x155
	.uleb128 0x2
	.long	.LASF629
	.value	0x156
	.uleb128 0x2
	.long	.LASF630
	.value	0x157
	.uleb128 0x2
	.long	.LASF631
	.value	0x158
	.uleb128 0x2
	.long	.LASF632
	.value	0x159
	.uleb128 0x2
	.long	.LASF633
	.value	0x15a
	.uleb128 0x2
	.long	.LASF634
	.value	0x15b
	.uleb128 0x2
	.long	.LASF635
	.value	0x15c
	.uleb128 0x2
	.long	.LASF636
	.value	0x15d
	.uleb128 0x2
	.long	.LASF637
	.value	0x15e
	.uleb128 0x2
	.long	.LASF638
	.value	0x15f
	.uleb128 0x2
	.long	.LASF639
	.value	0x160
	.uleb128 0x2
	.long	.LASF640
	.value	0x161
	.uleb128 0x2
	.long	.LASF641
	.value	0x162
	.uleb128 0x2
	.long	.LASF642
	.value	0x163
	.uleb128 0x2
	.long	.LASF643
	.value	0x164
	.uleb128 0x2
	.long	.LASF644
	.value	0x165
	.uleb128 0x2
	.long	.LASF645
	.value	0x166
	.uleb128 0x2
	.long	.LASF646
	.value	0x167
	.uleb128 0x2
	.long	.LASF647
	.value	0x168
	.uleb128 0x2
	.long	.LASF648
	.value	0x169
	.uleb128 0x2
	.long	.LASF649
	.value	0x16a
	.uleb128 0x2
	.long	.LASF650
	.value	0x16b
	.uleb128 0x2
	.long	.LASF651
	.value	0x16c
	.uleb128 0x2
	.long	.LASF652
	.value	0x16d
	.uleb128 0x2
	.long	.LASF653
	.value	0x16e
	.uleb128 0x2
	.long	.LASF654
	.value	0x16f
	.uleb128 0x2
	.long	.LASF655
	.value	0x170
	.uleb128 0x2
	.long	.LASF656
	.value	0x171
	.uleb128 0x2
	.long	.LASF657
	.value	0x172
	.uleb128 0x2
	.long	.LASF658
	.value	0x173
	.uleb128 0x2
	.long	.LASF659
	.value	0x174
	.uleb128 0x2
	.long	.LASF660
	.value	0x175
	.uleb128 0x2
	.long	.LASF661
	.value	0x176
	.uleb128 0x2
	.long	.LASF662
	.value	0x177
	.uleb128 0x2
	.long	.LASF663
	.value	0x178
	.uleb128 0x2
	.long	.LASF664
	.value	0x179
	.uleb128 0x2
	.long	.LASF665
	.value	0x17a
	.uleb128 0x2
	.long	.LASF666
	.value	0x17b
	.uleb128 0x2
	.long	.LASF667
	.value	0x17c
	.uleb128 0x2
	.long	.LASF668
	.value	0x17d
	.uleb128 0x2
	.long	.LASF669
	.value	0x17e
	.uleb128 0x2
	.long	.LASF670
	.value	0x17f
	.uleb128 0x2
	.long	.LASF671
	.value	0x180
	.uleb128 0x2
	.long	.LASF672
	.value	0x181
	.uleb128 0x2
	.long	.LASF673
	.value	0x182
	.uleb128 0x2
	.long	.LASF674
	.value	0x183
	.uleb128 0x2
	.long	.LASF675
	.value	0x184
	.uleb128 0x2
	.long	.LASF676
	.value	0x185
	.uleb128 0x2
	.long	.LASF677
	.value	0x186
	.uleb128 0x2
	.long	.LASF678
	.value	0x187
	.uleb128 0x2
	.long	.LASF679
	.value	0x188
	.uleb128 0x2
	.long	.LASF680
	.value	0x189
	.uleb128 0x2
	.long	.LASF681
	.value	0x18a
	.uleb128 0x2
	.long	.LASF682
	.value	0x18b
	.uleb128 0x2
	.long	.LASF683
	.value	0x18c
	.uleb128 0x2
	.long	.LASF684
	.value	0x18d
	.uleb128 0x2
	.long	.LASF685
	.value	0x18e
	.uleb128 0x2
	.long	.LASF686
	.value	0x18f
	.uleb128 0x2
	.long	.LASF687
	.value	0x190
	.uleb128 0x2
	.long	.LASF688
	.value	0x191
	.uleb128 0x2
	.long	.LASF689
	.value	0x192
	.uleb128 0x2
	.long	.LASF690
	.value	0x193
	.uleb128 0x2
	.long	.LASF691
	.value	0x194
	.uleb128 0x2
	.long	.LASF692
	.value	0x195
	.uleb128 0x2
	.long	.LASF693
	.value	0x196
	.uleb128 0x2
	.long	.LASF694
	.value	0x197
	.uleb128 0x2
	.long	.LASF695
	.value	0x198
	.uleb128 0x2
	.long	.LASF696
	.value	0x199
	.uleb128 0x2
	.long	.LASF697
	.value	0x19a
	.uleb128 0x2
	.long	.LASF698
	.value	0x19b
	.uleb128 0x2
	.long	.LASF699
	.value	0x19c
	.uleb128 0x2
	.long	.LASF700
	.value	0x19d
	.uleb128 0x2
	.long	.LASF701
	.value	0x19e
	.uleb128 0x2
	.long	.LASF702
	.value	0x19f
	.uleb128 0x2
	.long	.LASF703
	.value	0x1a0
	.uleb128 0x2
	.long	.LASF704
	.value	0x1a1
	.uleb128 0x2
	.long	.LASF705
	.value	0x1a2
	.uleb128 0x2
	.long	.LASF706
	.value	0x1a3
	.uleb128 0x2
	.long	.LASF707
	.value	0x1a4
	.uleb128 0x2
	.long	.LASF708
	.value	0x1a5
	.uleb128 0x2
	.long	.LASF709
	.value	0x1a6
	.uleb128 0x2
	.long	.LASF710
	.value	0x1a7
	.uleb128 0x2
	.long	.LASF711
	.value	0x1a8
	.uleb128 0x2
	.long	.LASF712
	.value	0x1a9
	.uleb128 0x2
	.long	.LASF713
	.value	0x1aa
	.uleb128 0x2
	.long	.LASF714
	.value	0x1ab
	.uleb128 0x2
	.long	.LASF715
	.value	0x1ac
	.uleb128 0x2
	.long	.LASF716
	.value	0x1ad
	.uleb128 0x2
	.long	.LASF717
	.value	0x1ae
	.uleb128 0x2
	.long	.LASF718
	.value	0x1af
	.uleb128 0x2
	.long	.LASF719
	.value	0x1b0
	.uleb128 0x2
	.long	.LASF720
	.value	0x1b1
	.uleb128 0x2
	.long	.LASF721
	.value	0x1b2
	.uleb128 0x2
	.long	.LASF722
	.value	0x1b3
	.uleb128 0x2
	.long	.LASF723
	.value	0x1b4
	.uleb128 0x2
	.long	.LASF724
	.value	0x1b5
	.uleb128 0x2
	.long	.LASF725
	.value	0x1b6
	.uleb128 0x2
	.long	.LASF726
	.value	0x1b7
	.uleb128 0x2
	.long	.LASF727
	.value	0x1b8
	.uleb128 0x2
	.long	.LASF728
	.value	0x1b9
	.uleb128 0x2
	.long	.LASF729
	.value	0x1ba
	.uleb128 0x2
	.long	.LASF730
	.value	0x1bb
	.uleb128 0x2
	.long	.LASF731
	.value	0x1bc
	.uleb128 0x2
	.long	.LASF732
	.value	0x1bd
	.uleb128 0x2
	.long	.LASF733
	.value	0x1be
	.uleb128 0x2
	.long	.LASF734
	.value	0x1bf
	.uleb128 0x2
	.long	.LASF735
	.value	0x1c0
	.uleb128 0x2
	.long	.LASF736
	.value	0x1c1
	.uleb128 0x2
	.long	.LASF737
	.value	0x1c2
	.uleb128 0x2
	.long	.LASF738
	.value	0x1c3
	.uleb128 0x2
	.long	.LASF739
	.value	0x1c4
	.uleb128 0x2
	.long	.LASF740
	.value	0x1c5
	.uleb128 0x2
	.long	.LASF741
	.value	0x1c6
	.uleb128 0x2
	.long	.LASF742
	.value	0x1c7
	.uleb128 0x2
	.long	.LASF743
	.value	0x1c8
	.uleb128 0x2
	.long	.LASF744
	.value	0x1c9
	.uleb128 0x2
	.long	.LASF745
	.value	0x1ca
	.uleb128 0x2
	.long	.LASF746
	.value	0x1cb
	.uleb128 0x2
	.long	.LASF747
	.value	0x1cc
	.uleb128 0x2
	.long	.LASF748
	.value	0x1cd
	.uleb128 0x2
	.long	.LASF749
	.value	0x1ce
	.uleb128 0x2
	.long	.LASF750
	.value	0x1cf
	.uleb128 0x2
	.long	.LASF751
	.value	0x1d0
	.uleb128 0x2
	.long	.LASF752
	.value	0x1d1
	.uleb128 0x2
	.long	.LASF753
	.value	0x1d2
	.uleb128 0x2
	.long	.LASF754
	.value	0x1d3
	.uleb128 0x2
	.long	.LASF755
	.value	0x1d4
	.uleb128 0x2
	.long	.LASF756
	.value	0x1d5
	.uleb128 0x2
	.long	.LASF757
	.value	0x1d6
	.uleb128 0x2
	.long	.LASF758
	.value	0x1d7
	.uleb128 0x2
	.long	.LASF759
	.value	0x1d8
	.uleb128 0x2
	.long	.LASF760
	.value	0x1d9
	.uleb128 0x2
	.long	.LASF761
	.value	0x1da
	.uleb128 0x2
	.long	.LASF762
	.value	0x1db
	.uleb128 0x2
	.long	.LASF763
	.value	0x1dc
	.uleb128 0x2
	.long	.LASF764
	.value	0x1dd
	.uleb128 0x2
	.long	.LASF765
	.value	0x1de
	.uleb128 0x2
	.long	.LASF766
	.value	0x1df
	.uleb128 0x2
	.long	.LASF767
	.value	0x1e0
	.uleb128 0x2
	.long	.LASF768
	.value	0x1e1
	.uleb128 0x2
	.long	.LASF769
	.value	0x1e2
	.uleb128 0x2
	.long	.LASF770
	.value	0x1e3
	.uleb128 0x2
	.long	.LASF771
	.value	0x1e4
	.uleb128 0x2
	.long	.LASF772
	.value	0x1e5
	.uleb128 0x2
	.long	.LASF773
	.value	0x1e6
	.uleb128 0x2
	.long	.LASF774
	.value	0x1e7
	.uleb128 0x2
	.long	.LASF775
	.value	0x1e8
	.uleb128 0x2
	.long	.LASF776
	.value	0x1e9
	.uleb128 0x2
	.long	.LASF777
	.value	0x1ea
	.uleb128 0x2
	.long	.LASF778
	.value	0x1eb
	.uleb128 0x2
	.long	.LASF779
	.value	0x1ec
	.uleb128 0x2
	.long	.LASF780
	.value	0x1ed
	.uleb128 0x2
	.long	.LASF781
	.value	0x1ee
	.uleb128 0x2
	.long	.LASF782
	.value	0x1ef
	.uleb128 0x2
	.long	.LASF783
	.value	0x1f0
	.uleb128 0x2
	.long	.LASF784
	.value	0x1f1
	.uleb128 0x2
	.long	.LASF785
	.value	0x1f2
	.uleb128 0x2
	.long	.LASF786
	.value	0x1f3
	.uleb128 0x2
	.long	.LASF787
	.value	0x1f4
	.uleb128 0x2
	.long	.LASF788
	.value	0x1f5
	.uleb128 0x2
	.long	.LASF789
	.value	0x1f6
	.uleb128 0x2
	.long	.LASF790
	.value	0x1f7
	.uleb128 0x2
	.long	.LASF791
	.value	0x1f8
	.uleb128 0x2
	.long	.LASF792
	.value	0x1f9
	.uleb128 0x2
	.long	.LASF793
	.value	0x1fa
	.uleb128 0x2
	.long	.LASF794
	.value	0x1fb
	.uleb128 0x2
	.long	.LASF795
	.value	0x1fc
	.uleb128 0x2
	.long	.LASF796
	.value	0x1fd
	.uleb128 0x2
	.long	.LASF797
	.value	0x1fe
	.uleb128 0x2
	.long	.LASF798
	.value	0x1ff
	.uleb128 0x2
	.long	.LASF799
	.value	0x200
	.uleb128 0x2
	.long	.LASF800
	.value	0x201
	.uleb128 0x2
	.long	.LASF801
	.value	0x202
	.uleb128 0x2
	.long	.LASF802
	.value	0x203
	.uleb128 0x2
	.long	.LASF803
	.value	0x204
	.uleb128 0x2
	.long	.LASF804
	.value	0x205
	.uleb128 0x2
	.long	.LASF805
	.value	0x206
	.uleb128 0x2
	.long	.LASF806
	.value	0x207
	.uleb128 0x2
	.long	.LASF807
	.value	0x208
	.uleb128 0x2
	.long	.LASF808
	.value	0x209
	.uleb128 0x2
	.long	.LASF809
	.value	0x20a
	.uleb128 0x2
	.long	.LASF810
	.value	0x20b
	.uleb128 0x2
	.long	.LASF811
	.value	0x20c
	.uleb128 0x2
	.long	.LASF812
	.value	0x20d
	.uleb128 0x2
	.long	.LASF813
	.value	0x20e
	.uleb128 0x2
	.long	.LASF814
	.value	0x20f
	.uleb128 0x2
	.long	.LASF815
	.value	0x210
	.uleb128 0x2
	.long	.LASF816
	.value	0x211
	.uleb128 0x2
	.long	.LASF817
	.value	0x212
	.uleb128 0x2
	.long	.LASF818
	.value	0x213
	.uleb128 0x2
	.long	.LASF819
	.value	0x214
	.uleb128 0x2
	.long	.LASF820
	.value	0x215
	.uleb128 0x2
	.long	.LASF821
	.value	0x216
	.uleb128 0x2
	.long	.LASF822
	.value	0x217
	.uleb128 0x2
	.long	.LASF823
	.value	0x218
	.uleb128 0x2
	.long	.LASF824
	.value	0x219
	.uleb128 0x2
	.long	.LASF825
	.value	0x21a
	.uleb128 0x2
	.long	.LASF826
	.value	0x21b
	.uleb128 0x2
	.long	.LASF827
	.value	0x21c
	.uleb128 0x2
	.long	.LASF828
	.value	0x21d
	.uleb128 0x2
	.long	.LASF829
	.value	0x21e
	.uleb128 0x2
	.long	.LASF830
	.value	0x21f
	.uleb128 0x2
	.long	.LASF831
	.value	0x220
	.uleb128 0x2
	.long	.LASF832
	.value	0x221
	.uleb128 0x2
	.long	.LASF833
	.value	0x222
	.uleb128 0x2
	.long	.LASF834
	.value	0x223
	.uleb128 0x2
	.long	.LASF835
	.value	0x224
	.uleb128 0x2
	.long	.LASF836
	.value	0x225
	.uleb128 0x2
	.long	.LASF837
	.value	0x226
	.uleb128 0x2
	.long	.LASF838
	.value	0x227
	.uleb128 0x2
	.long	.LASF839
	.value	0x228
	.uleb128 0x2
	.long	.LASF840
	.value	0x229
	.uleb128 0x2
	.long	.LASF841
	.value	0x22a
	.uleb128 0x2
	.long	.LASF842
	.value	0x22b
	.uleb128 0x2
	.long	.LASF843
	.value	0x22c
	.uleb128 0x2
	.long	.LASF844
	.value	0x22d
	.uleb128 0x2
	.long	.LASF845
	.value	0x22e
	.uleb128 0x2
	.long	.LASF846
	.value	0x22f
	.uleb128 0x2
	.long	.LASF847
	.value	0x230
	.uleb128 0x2
	.long	.LASF848
	.value	0x231
	.uleb128 0x2
	.long	.LASF849
	.value	0x232
	.uleb128 0x2
	.long	.LASF850
	.value	0x233
	.uleb128 0x2
	.long	.LASF851
	.value	0x234
	.uleb128 0x2
	.long	.LASF852
	.value	0x235
	.uleb128 0x2
	.long	.LASF853
	.value	0x236
	.uleb128 0x2
	.long	.LASF854
	.value	0x237
	.uleb128 0x2
	.long	.LASF855
	.value	0x238
	.uleb128 0x2
	.long	.LASF856
	.value	0x239
	.uleb128 0x2
	.long	.LASF857
	.value	0x23a
	.uleb128 0x2
	.long	.LASF858
	.value	0x23b
	.uleb128 0x2
	.long	.LASF859
	.value	0x23c
	.uleb128 0x2
	.long	.LASF860
	.value	0x23d
	.uleb128 0x2
	.long	.LASF861
	.value	0x23e
	.uleb128 0x2
	.long	.LASF862
	.value	0x23f
	.uleb128 0x2
	.long	.LASF863
	.value	0x240
	.uleb128 0x2
	.long	.LASF864
	.value	0x241
	.uleb128 0x2
	.long	.LASF865
	.value	0x242
	.uleb128 0x2
	.long	.LASF866
	.value	0x243
	.uleb128 0x2
	.long	.LASF867
	.value	0x244
	.uleb128 0x2
	.long	.LASF868
	.value	0x245
	.uleb128 0x2
	.long	.LASF869
	.value	0x246
	.uleb128 0x2
	.long	.LASF870
	.value	0x247
	.uleb128 0x2
	.long	.LASF871
	.value	0x248
	.uleb128 0x2
	.long	.LASF872
	.value	0x249
	.uleb128 0x2
	.long	.LASF873
	.value	0x24a
	.uleb128 0x2
	.long	.LASF874
	.value	0x24b
	.uleb128 0x2
	.long	.LASF875
	.value	0x24c
	.uleb128 0x2
	.long	.LASF876
	.value	0x24d
	.uleb128 0x2
	.long	.LASF877
	.value	0x24e
	.uleb128 0x2
	.long	.LASF878
	.value	0x24f
	.uleb128 0x2
	.long	.LASF879
	.value	0x250
	.uleb128 0x2
	.long	.LASF880
	.value	0x251
	.uleb128 0x2
	.long	.LASF881
	.value	0x252
	.uleb128 0x2
	.long	.LASF882
	.value	0x253
	.uleb128 0x2
	.long	.LASF883
	.value	0x254
	.uleb128 0x2
	.long	.LASF884
	.value	0x255
	.uleb128 0x2
	.long	.LASF885
	.value	0x256
	.uleb128 0x2
	.long	.LASF886
	.value	0x257
	.uleb128 0x2
	.long	.LASF887
	.value	0x258
	.uleb128 0x2
	.long	.LASF888
	.value	0x259
	.uleb128 0x2
	.long	.LASF889
	.value	0x25a
	.uleb128 0x2
	.long	.LASF890
	.value	0x25b
	.uleb128 0x2
	.long	.LASF891
	.value	0x25c
	.uleb128 0x2
	.long	.LASF892
	.value	0x25d
	.uleb128 0x2
	.long	.LASF893
	.value	0x25e
	.uleb128 0x2
	.long	.LASF894
	.value	0x25f
	.uleb128 0x2
	.long	.LASF895
	.value	0x260
	.uleb128 0x2
	.long	.LASF896
	.value	0x261
	.uleb128 0x2
	.long	.LASF897
	.value	0x262
	.uleb128 0x2
	.long	.LASF898
	.value	0x263
	.uleb128 0x2
	.long	.LASF899
	.value	0x264
	.uleb128 0x2
	.long	.LASF900
	.value	0x265
	.uleb128 0x2
	.long	.LASF901
	.value	0x266
	.uleb128 0x2
	.long	.LASF902
	.value	0x267
	.uleb128 0x2
	.long	.LASF903
	.value	0x268
	.uleb128 0x2
	.long	.LASF904
	.value	0x269
	.uleb128 0x2
	.long	.LASF905
	.value	0x26a
	.uleb128 0x2
	.long	.LASF906
	.value	0x26b
	.uleb128 0x2
	.long	.LASF907
	.value	0x26c
	.uleb128 0x2
	.long	.LASF908
	.value	0x26d
	.uleb128 0x2
	.long	.LASF909
	.value	0x26e
	.uleb128 0x2
	.long	.LASF910
	.value	0x26f
	.uleb128 0x2
	.long	.LASF911
	.value	0x270
	.uleb128 0x2
	.long	.LASF912
	.value	0x271
	.uleb128 0x2
	.long	.LASF913
	.value	0x272
	.uleb128 0x2
	.long	.LASF914
	.value	0x273
	.uleb128 0x2
	.long	.LASF915
	.value	0x274
	.uleb128 0x2
	.long	.LASF916
	.value	0x275
	.uleb128 0x2
	.long	.LASF917
	.value	0x276
	.uleb128 0x2
	.long	.LASF918
	.value	0x277
	.uleb128 0x2
	.long	.LASF919
	.value	0x278
	.uleb128 0x2
	.long	.LASF920
	.value	0x279
	.uleb128 0x2
	.long	.LASF921
	.value	0x27a
	.uleb128 0x2
	.long	.LASF922
	.value	0x27b
	.uleb128 0x2
	.long	.LASF923
	.value	0x27c
	.uleb128 0x2
	.long	.LASF924
	.value	0x27d
	.uleb128 0x2
	.long	.LASF925
	.value	0x27e
	.uleb128 0x2
	.long	.LASF926
	.value	0x27f
	.uleb128 0x2
	.long	.LASF927
	.value	0x280
	.uleb128 0x2
	.long	.LASF928
	.value	0x281
	.uleb128 0x2
	.long	.LASF929
	.value	0x282
	.uleb128 0x2
	.long	.LASF930
	.value	0x283
	.uleb128 0x2
	.long	.LASF931
	.value	0x284
	.uleb128 0x2
	.long	.LASF932
	.value	0x285
	.uleb128 0x2
	.long	.LASF933
	.value	0x286
	.uleb128 0x2
	.long	.LASF934
	.value	0x287
	.uleb128 0x2
	.long	.LASF935
	.value	0x288
	.uleb128 0x2
	.long	.LASF936
	.value	0x289
	.uleb128 0x2
	.long	.LASF937
	.value	0x28a
	.uleb128 0x2
	.long	.LASF938
	.value	0x28b
	.uleb128 0x2
	.long	.LASF939
	.value	0x28c
	.uleb128 0x2
	.long	.LASF940
	.value	0x28d
	.uleb128 0x2
	.long	.LASF941
	.value	0x28e
	.uleb128 0x2
	.long	.LASF942
	.value	0x28f
	.uleb128 0x2
	.long	.LASF943
	.value	0x290
	.uleb128 0x2
	.long	.LASF944
	.value	0x291
	.uleb128 0x2
	.long	.LASF945
	.value	0x292
	.uleb128 0x2
	.long	.LASF946
	.value	0x293
	.uleb128 0x2
	.long	.LASF947
	.value	0x294
	.uleb128 0x2
	.long	.LASF948
	.value	0x295
	.uleb128 0x2
	.long	.LASF949
	.value	0x296
	.uleb128 0x2
	.long	.LASF950
	.value	0x297
	.uleb128 0x2
	.long	.LASF951
	.value	0x298
	.uleb128 0x2
	.long	.LASF952
	.value	0x299
	.uleb128 0x2
	.long	.LASF953
	.value	0x29a
	.uleb128 0x2
	.long	.LASF954
	.value	0x29b
	.uleb128 0x2
	.long	.LASF955
	.value	0x29c
	.uleb128 0x2
	.long	.LASF956
	.value	0x29d
	.uleb128 0x2
	.long	.LASF957
	.value	0x29e
	.uleb128 0x2
	.long	.LASF958
	.value	0x29f
	.uleb128 0x2
	.long	.LASF959
	.value	0x2a0
	.uleb128 0x2
	.long	.LASF960
	.value	0x2a1
	.uleb128 0x2
	.long	.LASF961
	.value	0x2a2
	.uleb128 0x2
	.long	.LASF962
	.value	0x2a3
	.uleb128 0x2
	.long	.LASF963
	.value	0x2a4
	.uleb128 0x2
	.long	.LASF964
	.value	0x2a5
	.uleb128 0x2
	.long	.LASF965
	.value	0x2a6
	.uleb128 0x2
	.long	.LASF966
	.value	0x2a7
	.uleb128 0x2
	.long	.LASF967
	.value	0x2a8
	.uleb128 0x2
	.long	.LASF968
	.value	0x2a9
	.uleb128 0x2
	.long	.LASF969
	.value	0x2aa
	.uleb128 0x2
	.long	.LASF970
	.value	0x2ab
	.uleb128 0x2
	.long	.LASF971
	.value	0x2ac
	.uleb128 0x2
	.long	.LASF972
	.value	0x2ad
	.uleb128 0x2
	.long	.LASF973
	.value	0x2ae
	.uleb128 0x2
	.long	.LASF974
	.value	0x2af
	.uleb128 0x2
	.long	.LASF975
	.value	0x2b0
	.uleb128 0x2
	.long	.LASF976
	.value	0x2b1
	.uleb128 0x2
	.long	.LASF977
	.value	0x2b2
	.uleb128 0x2
	.long	.LASF978
	.value	0x2b3
	.uleb128 0x2
	.long	.LASF979
	.value	0x2b4
	.uleb128 0x2
	.long	.LASF980
	.value	0x2b5
	.uleb128 0x2
	.long	.LASF981
	.value	0x2b6
	.uleb128 0x2
	.long	.LASF982
	.value	0x2b7
	.uleb128 0x2
	.long	.LASF983
	.value	0x2b8
	.uleb128 0x2
	.long	.LASF984
	.value	0x2b9
	.uleb128 0x2
	.long	.LASF985
	.value	0x2ba
	.uleb128 0x2
	.long	.LASF986
	.value	0x2bb
	.uleb128 0x2
	.long	.LASF987
	.value	0x2bc
	.uleb128 0x2
	.long	.LASF988
	.value	0x2bd
	.uleb128 0x2
	.long	.LASF989
	.value	0x2be
	.uleb128 0x2
	.long	.LASF990
	.value	0x2bf
	.uleb128 0x2
	.long	.LASF991
	.value	0x2c0
	.uleb128 0x2
	.long	.LASF992
	.value	0x2c1
	.uleb128 0x2
	.long	.LASF993
	.value	0x2c2
	.uleb128 0x2
	.long	.LASF994
	.value	0x2c3
	.uleb128 0x2
	.long	.LASF995
	.value	0x2c4
	.uleb128 0x2
	.long	.LASF996
	.value	0x2c5
	.uleb128 0x2
	.long	.LASF997
	.value	0x2c6
	.uleb128 0x2
	.long	.LASF998
	.value	0x2c7
	.uleb128 0x2
	.long	.LASF999
	.value	0x2c8
	.uleb128 0x2
	.long	.LASF1000
	.value	0x2c9
	.uleb128 0x2
	.long	.LASF1001
	.value	0x2ca
	.uleb128 0x2
	.long	.LASF1002
	.value	0x2cb
	.uleb128 0x2
	.long	.LASF1003
	.value	0x2cc
	.uleb128 0x2
	.long	.LASF1004
	.value	0x2cd
	.uleb128 0x2
	.long	.LASF1005
	.value	0x2ce
	.uleb128 0x2
	.long	.LASF1006
	.value	0x2cf
	.uleb128 0x2
	.long	.LASF1007
	.value	0x2d0
	.uleb128 0x2
	.long	.LASF1008
	.value	0x2d1
	.uleb128 0x2
	.long	.LASF1009
	.value	0x2d2
	.uleb128 0x2
	.long	.LASF1010
	.value	0x2d3
	.uleb128 0x2
	.long	.LASF1011
	.value	0x2d4
	.uleb128 0x2
	.long	.LASF1012
	.value	0x2d5
	.uleb128 0x2
	.long	.LASF1013
	.value	0x2d6
	.uleb128 0x2
	.long	.LASF1014
	.value	0x2d7
	.uleb128 0x2
	.long	.LASF1015
	.value	0x2d8
	.uleb128 0x2
	.long	.LASF1016
	.value	0x2d9
	.uleb128 0x2
	.long	.LASF1017
	.value	0x2da
	.uleb128 0x2
	.long	.LASF1018
	.value	0x2db
	.uleb128 0x2
	.long	.LASF1019
	.value	0x2dc
	.uleb128 0x2
	.long	.LASF1020
	.value	0x2dd
	.uleb128 0x2
	.long	.LASF1021
	.value	0x2de
	.uleb128 0x2
	.long	.LASF1022
	.value	0x2df
	.uleb128 0x2
	.long	.LASF1023
	.value	0x2e0
	.uleb128 0x2
	.long	.LASF1024
	.value	0x2e1
	.uleb128 0x2
	.long	.LASF1025
	.value	0x2e2
	.uleb128 0x2
	.long	.LASF1026
	.value	0x2e3
	.uleb128 0x2
	.long	.LASF1027
	.value	0x2e4
	.uleb128 0x2
	.long	.LASF1028
	.value	0x2e5
	.uleb128 0x2
	.long	.LASF1029
	.value	0x2e6
	.uleb128 0x2
	.long	.LASF1030
	.value	0x2e7
	.uleb128 0x2
	.long	.LASF1031
	.value	0x2e8
	.uleb128 0x2
	.long	.LASF1032
	.value	0x2e9
	.uleb128 0x2
	.long	.LASF1033
	.value	0x2ea
	.uleb128 0x2
	.long	.LASF1034
	.value	0x2eb
	.uleb128 0x2
	.long	.LASF1035
	.value	0x2ec
	.uleb128 0x2
	.long	.LASF1036
	.value	0x2ed
	.uleb128 0x2
	.long	.LASF1037
	.value	0x2ee
	.uleb128 0x2
	.long	.LASF1038
	.value	0x2ef
	.uleb128 0x2
	.long	.LASF1039
	.value	0x2f0
	.uleb128 0x2
	.long	.LASF1040
	.value	0x2f1
	.uleb128 0x2
	.long	.LASF1041
	.value	0x2f2
	.uleb128 0x2
	.long	.LASF1042
	.value	0x2f3
	.uleb128 0x2
	.long	.LASF1043
	.value	0x2f4
	.uleb128 0x2
	.long	.LASF1044
	.value	0x2f5
	.uleb128 0x2
	.long	.LASF1045
	.value	0x2f6
	.uleb128 0x2
	.long	.LASF1046
	.value	0x2f7
	.uleb128 0x2
	.long	.LASF1047
	.value	0x2f8
	.uleb128 0x2
	.long	.LASF1048
	.value	0x2f9
	.uleb128 0x2
	.long	.LASF1049
	.value	0x2fa
	.uleb128 0x2
	.long	.LASF1050
	.value	0x2fb
	.uleb128 0x2
	.long	.LASF1051
	.value	0x2fc
	.uleb128 0x2
	.long	.LASF1052
	.value	0x2fd
	.uleb128 0x2
	.long	.LASF1053
	.value	0x2fe
	.uleb128 0x2
	.long	.LASF1054
	.value	0x2ff
	.uleb128 0x2
	.long	.LASF1055
	.value	0x300
	.uleb128 0x2
	.long	.LASF1056
	.value	0x301
	.uleb128 0x2
	.long	.LASF1057
	.value	0x302
	.uleb128 0x2
	.long	.LASF1058
	.value	0x303
	.uleb128 0x2
	.long	.LASF1059
	.value	0x304
	.uleb128 0x2
	.long	.LASF1060
	.value	0x305
	.uleb128 0x2
	.long	.LASF1061
	.value	0x306
	.uleb128 0x2
	.long	.LASF1062
	.value	0x307
	.uleb128 0x2
	.long	.LASF1063
	.value	0x308
	.uleb128 0x2
	.long	.LASF1064
	.value	0x309
	.uleb128 0x2
	.long	.LASF1065
	.value	0x30a
	.uleb128 0x2
	.long	.LASF1066
	.value	0x30b
	.uleb128 0x2
	.long	.LASF1067
	.value	0x30c
	.uleb128 0x2
	.long	.LASF1068
	.value	0x30d
	.uleb128 0x2
	.long	.LASF1069
	.value	0x30e
	.uleb128 0x2
	.long	.LASF1070
	.value	0x30f
	.uleb128 0x2
	.long	.LASF1071
	.value	0x310
	.uleb128 0x2
	.long	.LASF1072
	.value	0x311
	.uleb128 0x2
	.long	.LASF1073
	.value	0x312
	.uleb128 0x2
	.long	.LASF1074
	.value	0x313
	.uleb128 0x2
	.long	.LASF1075
	.value	0x314
	.uleb128 0x2
	.long	.LASF1076
	.value	0x315
	.uleb128 0x2
	.long	.LASF1077
	.value	0x316
	.uleb128 0x2
	.long	.LASF1078
	.value	0x317
	.uleb128 0x2
	.long	.LASF1079
	.value	0x318
	.uleb128 0x2
	.long	.LASF1080
	.value	0x319
	.uleb128 0x2
	.long	.LASF1081
	.value	0x31a
	.uleb128 0x2
	.long	.LASF1082
	.value	0x31b
	.uleb128 0x2
	.long	.LASF1083
	.value	0x31c
	.uleb128 0x2
	.long	.LASF1084
	.value	0x31d
	.uleb128 0x2
	.long	.LASF1085
	.value	0x31e
	.uleb128 0x2
	.long	.LASF1086
	.value	0x31f
	.uleb128 0x2
	.long	.LASF1087
	.value	0x320
	.uleb128 0x2
	.long	.LASF1088
	.value	0x321
	.uleb128 0x2
	.long	.LASF1089
	.value	0x322
	.uleb128 0x2
	.long	.LASF1090
	.value	0x323
	.uleb128 0x2
	.long	.LASF1091
	.value	0x324
	.uleb128 0x2
	.long	.LASF1092
	.value	0x325
	.uleb128 0x2
	.long	.LASF1093
	.value	0x326
	.uleb128 0x2
	.long	.LASF1094
	.value	0x327
	.uleb128 0x2
	.long	.LASF1095
	.value	0x328
	.uleb128 0x2
	.long	.LASF1096
	.value	0x329
	.uleb128 0x2
	.long	.LASF1097
	.value	0x32a
	.uleb128 0x2
	.long	.LASF1098
	.value	0x32b
	.uleb128 0x2
	.long	.LASF1099
	.value	0x32c
	.uleb128 0x2
	.long	.LASF1100
	.value	0x32d
	.uleb128 0x2
	.long	.LASF1101
	.value	0x32e
	.uleb128 0x2
	.long	.LASF1102
	.value	0x32f
	.uleb128 0x2
	.long	.LASF1103
	.value	0x330
	.uleb128 0x2
	.long	.LASF1104
	.value	0x331
	.uleb128 0x2
	.long	.LASF1105
	.value	0x332
	.uleb128 0x2
	.long	.LASF1106
	.value	0x333
	.uleb128 0x2
	.long	.LASF1107
	.value	0x334
	.uleb128 0x2
	.long	.LASF1108
	.value	0x335
	.uleb128 0x2
	.long	.LASF1109
	.value	0x336
	.uleb128 0x2
	.long	.LASF1110
	.value	0x337
	.uleb128 0x2
	.long	.LASF1111
	.value	0x338
	.uleb128 0x2
	.long	.LASF1112
	.value	0x339
	.uleb128 0x2
	.long	.LASF1113
	.value	0x33a
	.uleb128 0x2
	.long	.LASF1114
	.value	0x33b
	.uleb128 0x2
	.long	.LASF1115
	.value	0x33c
	.uleb128 0x2
	.long	.LASF1116
	.value	0x33d
	.uleb128 0x2
	.long	.LASF1117
	.value	0x33e
	.uleb128 0x2
	.long	.LASF1118
	.value	0x33f
	.uleb128 0x2
	.long	.LASF1119
	.value	0x340
	.uleb128 0x2
	.long	.LASF1120
	.value	0x341
	.uleb128 0x2
	.long	.LASF1121
	.value	0x342
	.uleb128 0x2
	.long	.LASF1122
	.value	0x343
	.uleb128 0x2
	.long	.LASF1123
	.value	0x344
	.uleb128 0x2
	.long	.LASF1124
	.value	0x345
	.uleb128 0x2
	.long	.LASF1125
	.value	0x346
	.uleb128 0x2
	.long	.LASF1126
	.value	0x347
	.uleb128 0x2
	.long	.LASF1127
	.value	0x348
	.uleb128 0x2
	.long	.LASF1128
	.value	0x349
	.uleb128 0x2
	.long	.LASF1129
	.value	0x34a
	.uleb128 0x2
	.long	.LASF1130
	.value	0x34b
	.uleb128 0x2
	.long	.LASF1131
	.value	0x34c
	.uleb128 0x2
	.long	.LASF1132
	.value	0x34d
	.uleb128 0x2
	.long	.LASF1133
	.value	0x34e
	.uleb128 0x2
	.long	.LASF1134
	.value	0x34f
	.uleb128 0x2
	.long	.LASF1135
	.value	0x350
	.uleb128 0x2
	.long	.LASF1136
	.value	0x351
	.uleb128 0x2
	.long	.LASF1137
	.value	0x352
	.uleb128 0x2
	.long	.LASF1138
	.value	0x353
	.uleb128 0x2
	.long	.LASF1139
	.value	0x354
	.uleb128 0x2
	.long	.LASF1140
	.value	0x355
	.uleb128 0x2
	.long	.LASF1141
	.value	0x356
	.uleb128 0x2
	.long	.LASF1142
	.value	0x357
	.uleb128 0x2
	.long	.LASF1143
	.value	0x358
	.uleb128 0x2
	.long	.LASF1144
	.value	0x359
	.uleb128 0x2
	.long	.LASF1145
	.value	0x35a
	.uleb128 0x2
	.long	.LASF1146
	.value	0x35b
	.uleb128 0x2
	.long	.LASF1147
	.value	0x35c
	.uleb128 0x2
	.long	.LASF1148
	.value	0x35d
	.uleb128 0x2
	.long	.LASF1149
	.value	0x35e
	.uleb128 0x2
	.long	.LASF1150
	.value	0x35f
	.uleb128 0x2
	.long	.LASF1151
	.value	0x360
	.uleb128 0x2
	.long	.LASF1152
	.value	0x361
	.uleb128 0x2
	.long	.LASF1153
	.value	0x362
	.uleb128 0x2
	.long	.LASF1154
	.value	0x363
	.uleb128 0x2
	.long	.LASF1155
	.value	0x364
	.uleb128 0x2
	.long	.LASF1156
	.value	0x365
	.uleb128 0x2
	.long	.LASF1157
	.value	0x366
	.uleb128 0x2
	.long	.LASF1158
	.value	0x367
	.uleb128 0x2
	.long	.LASF1159
	.value	0x368
	.uleb128 0x2
	.long	.LASF1160
	.value	0x369
	.uleb128 0x2
	.long	.LASF1161
	.value	0x36a
	.uleb128 0x2
	.long	.LASF1162
	.value	0x36b
	.uleb128 0x2
	.long	.LASF1163
	.value	0x36c
	.uleb128 0x2
	.long	.LASF1164
	.value	0x36d
	.uleb128 0x2
	.long	.LASF1165
	.value	0x36e
	.uleb128 0x2
	.long	.LASF1166
	.value	0x36f
	.uleb128 0x2
	.long	.LASF1167
	.value	0x370
	.uleb128 0x2
	.long	.LASF1168
	.value	0x371
	.uleb128 0x2
	.long	.LASF1169
	.value	0x372
	.uleb128 0x2
	.long	.LASF1170
	.value	0x373
	.uleb128 0x2
	.long	.LASF1171
	.value	0x374
	.uleb128 0x2
	.long	.LASF1172
	.value	0x375
	.uleb128 0x2
	.long	.LASF1173
	.value	0x376
	.uleb128 0x2
	.long	.LASF1174
	.value	0x377
	.uleb128 0x2
	.long	.LASF1175
	.value	0x378
	.uleb128 0x2
	.long	.LASF1176
	.value	0x379
	.uleb128 0x2
	.long	.LASF1177
	.value	0x37a
	.uleb128 0x2
	.long	.LASF1178
	.value	0x37b
	.uleb128 0x2
	.long	.LASF1179
	.value	0x37c
	.uleb128 0x2
	.long	.LASF1180
	.value	0x37d
	.uleb128 0x2
	.long	.LASF1181
	.value	0x37e
	.uleb128 0x2
	.long	.LASF1182
	.value	0x37f
	.uleb128 0x2
	.long	.LASF1183
	.value	0x380
	.uleb128 0x2
	.long	.LASF1184
	.value	0x381
	.uleb128 0x2
	.long	.LASF1185
	.value	0x382
	.uleb128 0x2
	.long	.LASF1186
	.value	0x383
	.uleb128 0x2
	.long	.LASF1187
	.value	0x384
	.uleb128 0x2
	.long	.LASF1188
	.value	0x385
	.uleb128 0x2
	.long	.LASF1189
	.value	0x386
	.uleb128 0x2
	.long	.LASF1190
	.value	0x387
	.uleb128 0x2
	.long	.LASF1191
	.value	0x388
	.uleb128 0x2
	.long	.LASF1192
	.value	0x389
	.uleb128 0x2
	.long	.LASF1193
	.value	0x38a
	.uleb128 0x2
	.long	.LASF1194
	.value	0x38b
	.uleb128 0x2
	.long	.LASF1195
	.value	0x38c
	.uleb128 0x2
	.long	.LASF1196
	.value	0x38d
	.uleb128 0x2
	.long	.LASF1197
	.value	0x38e
	.uleb128 0x2
	.long	.LASF1198
	.value	0x38f
	.uleb128 0x2
	.long	.LASF1199
	.value	0x390
	.uleb128 0x2
	.long	.LASF1200
	.value	0x391
	.uleb128 0x2
	.long	.LASF1201
	.value	0x392
	.uleb128 0x2
	.long	.LASF1202
	.value	0x393
	.uleb128 0x2
	.long	.LASF1203
	.value	0x394
	.uleb128 0x2
	.long	.LASF1204
	.value	0x395
	.uleb128 0x2
	.long	.LASF1205
	.value	0x396
	.uleb128 0x2
	.long	.LASF1206
	.value	0x397
	.uleb128 0x2
	.long	.LASF1207
	.value	0x398
	.uleb128 0x2
	.long	.LASF1208
	.value	0x399
	.uleb128 0x2
	.long	.LASF1209
	.value	0x39a
	.uleb128 0x2
	.long	.LASF1210
	.value	0x39b
	.uleb128 0x2
	.long	.LASF1211
	.value	0x39c
	.uleb128 0x2
	.long	.LASF1212
	.value	0x39d
	.uleb128 0x2
	.long	.LASF1213
	.value	0x39e
	.uleb128 0x2
	.long	.LASF1214
	.value	0x39f
	.uleb128 0x2
	.long	.LASF1215
	.value	0x3a0
	.uleb128 0x2
	.long	.LASF1216
	.value	0x3a1
	.uleb128 0x2
	.long	.LASF1217
	.value	0x3a2
	.uleb128 0x2
	.long	.LASF1218
	.value	0x3a3
	.uleb128 0x2
	.long	.LASF1219
	.value	0x3a4
	.uleb128 0x2
	.long	.LASF1220
	.value	0x3a5
	.uleb128 0x2
	.long	.LASF1221
	.value	0x3a6
	.uleb128 0x2
	.long	.LASF1222
	.value	0x3a7
	.uleb128 0x2
	.long	.LASF1223
	.value	0x3a8
	.uleb128 0x2
	.long	.LASF1224
	.value	0x3a9
	.uleb128 0x2
	.long	.LASF1225
	.value	0x3aa
	.uleb128 0x2
	.long	.LASF1226
	.value	0x3ab
	.uleb128 0x2
	.long	.LASF1227
	.value	0x3ac
	.uleb128 0x2
	.long	.LASF1228
	.value	0x3ad
	.uleb128 0x2
	.long	.LASF1229
	.value	0x3ae
	.uleb128 0x2
	.long	.LASF1230
	.value	0x3af
	.uleb128 0x2
	.long	.LASF1231
	.value	0x3b0
	.uleb128 0x2
	.long	.LASF1232
	.value	0x3b1
	.uleb128 0x2
	.long	.LASF1233
	.value	0x3b2
	.uleb128 0x2
	.long	.LASF1234
	.value	0x3b3
	.uleb128 0x2
	.long	.LASF1235
	.value	0x3b4
	.uleb128 0x2
	.long	.LASF1236
	.value	0x3b5
	.uleb128 0x2
	.long	.LASF1237
	.value	0x3b6
	.uleb128 0x2
	.long	.LASF1238
	.value	0x3b7
	.uleb128 0x2
	.long	.LASF1239
	.value	0x3b8
	.uleb128 0x2
	.long	.LASF1240
	.value	0x3b9
	.uleb128 0x2
	.long	.LASF1241
	.value	0x3ba
	.uleb128 0x2
	.long	.LASF1242
	.value	0x3bb
	.uleb128 0x2
	.long	.LASF1243
	.value	0x3bc
	.uleb128 0x2
	.long	.LASF1244
	.value	0x3bd
	.uleb128 0x2
	.long	.LASF1245
	.value	0x3be
	.uleb128 0x2
	.long	.LASF1246
	.value	0x3bf
	.uleb128 0x2
	.long	.LASF1247
	.value	0x3c0
	.uleb128 0x2
	.long	.LASF1248
	.value	0x3c1
	.uleb128 0x2
	.long	.LASF1249
	.value	0x3c2
	.uleb128 0x2
	.long	.LASF1250
	.value	0x3c3
	.uleb128 0x2
	.long	.LASF1251
	.value	0x3c4
	.uleb128 0x2
	.long	.LASF1252
	.value	0x3c5
	.uleb128 0x2
	.long	.LASF1253
	.value	0x3c6
	.uleb128 0x2
	.long	.LASF1254
	.value	0x3c7
	.byte	0
	.uleb128 0x1b
	.long	.LASF1255
	.byte	0x11
	.value	0x478
	.long	0xaa6
	.uleb128 0x23
	.byte	0x38
	.byte	0x11
	.value	0x47b
	.long	0x24a3
	.uleb128 0x5
	.long	.LASF1256
	.byte	0x11
	.value	0x47d
	.byte	0xf
	.long	0xa9a
	.byte	0
	.uleb128 0x5
	.long	.LASF1257
	.byte	0x11
	.value	0x47e
	.byte	0xa
	.long	0x96
	.byte	0x8
	.uleb128 0x5
	.long	.LASF1258
	.byte	0x11
	.value	0x47f
	.byte	0xa
	.long	0x96
	.byte	0x10
	.uleb128 0x5
	.long	.LASF1259
	.byte	0x11
	.value	0x481
	.byte	0xf
	.long	0x671
	.byte	0x18
	.uleb128 0x5
	.long	.LASF1260
	.byte	0x11
	.value	0x482
	.byte	0x10
	.long	0x242b
	.byte	0x20
	.uleb128 0x5
	.long	.LASF1261
	.byte	0x11
	.value	0x483
	.byte	0xa
	.long	0x96
	.byte	0x28
	.uleb128 0x5
	.long	.LASF1262
	.byte	0x11
	.value	0x483
	.byte	0x11
	.long	0x96
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.long	.LASF1263
	.byte	0x11
	.value	0x484
	.long	0x2437
	.uleb128 0x18
	.long	0x7a
	.byte	0x11
	.value	0x48b
	.byte	0xe
	.long	0x27f9
	.uleb128 0x1
	.long	.LASF1264
	.byte	0
	.uleb128 0x1
	.long	.LASF1265
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1266
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1267
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1268
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1269
	.byte	0x5
	.uleb128 0x1
	.long	.LASF1270
	.byte	0x6
	.uleb128 0x1
	.long	.LASF1271
	.byte	0x7
	.uleb128 0x1
	.long	.LASF1272
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1273
	.byte	0x9
	.uleb128 0x1
	.long	.LASF1274
	.byte	0xa
	.uleb128 0x1
	.long	.LASF1275
	.byte	0xb
	.uleb128 0x1
	.long	.LASF1276
	.byte	0xc
	.uleb128 0x1
	.long	.LASF1277
	.byte	0xd
	.uleb128 0x1
	.long	.LASF1278
	.byte	0xe
	.uleb128 0x1
	.long	.LASF1279
	.byte	0xf
	.uleb128 0x1
	.long	.LASF1280
	.byte	0x10
	.uleb128 0x1
	.long	.LASF1281
	.byte	0x11
	.uleb128 0x1
	.long	.LASF1282
	.byte	0x12
	.uleb128 0x1
	.long	.LASF1283
	.byte	0x13
	.uleb128 0x1
	.long	.LASF1284
	.byte	0x14
	.uleb128 0x1
	.long	.LASF1285
	.byte	0x15
	.uleb128 0x1
	.long	.LASF1286
	.byte	0x16
	.uleb128 0x1
	.long	.LASF1287
	.byte	0x17
	.uleb128 0x1
	.long	.LASF1288
	.byte	0x18
	.uleb128 0x1
	.long	.LASF1289
	.byte	0x19
	.uleb128 0x1
	.long	.LASF1290
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF1291
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF1292
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF1293
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF1294
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF1295
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF1296
	.byte	0x20
	.uleb128 0x1
	.long	.LASF1297
	.byte	0x21
	.uleb128 0x1
	.long	.LASF1298
	.byte	0x22
	.uleb128 0x1
	.long	.LASF1299
	.byte	0x23
	.uleb128 0x1
	.long	.LASF1300
	.byte	0x24
	.uleb128 0x1
	.long	.LASF1301
	.byte	0x25
	.uleb128 0x1
	.long	.LASF1302
	.byte	0x26
	.uleb128 0x1
	.long	.LASF1303
	.byte	0x27
	.uleb128 0x1
	.long	.LASF1304
	.byte	0x28
	.uleb128 0x1
	.long	.LASF1305
	.byte	0x29
	.uleb128 0x1
	.long	.LASF1306
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF1307
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF1308
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF1309
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF1310
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF1311
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF1312
	.byte	0x30
	.uleb128 0x1
	.long	.LASF1313
	.byte	0x31
	.uleb128 0x1
	.long	.LASF1314
	.byte	0x32
	.uleb128 0x1
	.long	.LASF1315
	.byte	0x33
	.uleb128 0x1
	.long	.LASF1316
	.byte	0x34
	.uleb128 0x1
	.long	.LASF1317
	.byte	0x35
	.uleb128 0x1
	.long	.LASF1318
	.byte	0x36
	.uleb128 0x1
	.long	.LASF1319
	.byte	0x37
	.uleb128 0x1
	.long	.LASF1320
	.byte	0x38
	.uleb128 0x1
	.long	.LASF1321
	.byte	0x39
	.uleb128 0x1
	.long	.LASF1322
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF1323
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF1324
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF1325
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF1326
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF1327
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF1328
	.byte	0x40
	.uleb128 0x1
	.long	.LASF1329
	.byte	0x41
	.uleb128 0x1
	.long	.LASF1330
	.byte	0x42
	.uleb128 0x1
	.long	.LASF1331
	.byte	0x43
	.uleb128 0x1
	.long	.LASF1332
	.byte	0x44
	.uleb128 0x1
	.long	.LASF1333
	.byte	0x45
	.uleb128 0x1
	.long	.LASF1334
	.byte	0x46
	.uleb128 0x1
	.long	.LASF1335
	.byte	0x47
	.uleb128 0x1
	.long	.LASF1336
	.byte	0x48
	.uleb128 0x1
	.long	.LASF1337
	.byte	0x49
	.uleb128 0x1
	.long	.LASF1338
	.byte	0x4a
	.uleb128 0x1
	.long	.LASF1339
	.byte	0x4b
	.uleb128 0x1
	.long	.LASF1340
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF1341
	.byte	0x4d
	.uleb128 0x1
	.long	.LASF1342
	.byte	0x4e
	.uleb128 0x1
	.long	.LASF1343
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF1344
	.byte	0x50
	.uleb128 0x1
	.long	.LASF1345
	.byte	0x51
	.uleb128 0x1
	.long	.LASF1346
	.byte	0x52
	.uleb128 0x1
	.long	.LASF1347
	.byte	0x53
	.uleb128 0x1
	.long	.LASF1348
	.byte	0x54
	.uleb128 0x1
	.long	.LASF1349
	.byte	0x55
	.uleb128 0x1
	.long	.LASF1350
	.byte	0x56
	.uleb128 0x1
	.long	.LASF1351
	.byte	0x57
	.uleb128 0x1
	.long	.LASF1352
	.byte	0x58
	.uleb128 0x1
	.long	.LASF1353
	.byte	0x59
	.uleb128 0x1
	.long	.LASF1354
	.byte	0x5a
	.uleb128 0x1
	.long	.LASF1355
	.byte	0x5b
	.uleb128 0x1
	.long	.LASF1356
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF1357
	.byte	0x5d
	.uleb128 0x1
	.long	.LASF1358
	.byte	0x5e
	.uleb128 0x1
	.long	.LASF1359
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF1360
	.byte	0x60
	.uleb128 0x1
	.long	.LASF1361
	.byte	0x61
	.uleb128 0x1
	.long	.LASF1362
	.byte	0x62
	.uleb128 0x1
	.long	.LASF1363
	.byte	0x63
	.uleb128 0x1
	.long	.LASF1364
	.byte	0x64
	.uleb128 0x1
	.long	.LASF1365
	.byte	0x65
	.uleb128 0x1
	.long	.LASF1366
	.byte	0x66
	.uleb128 0x1
	.long	.LASF1367
	.byte	0x67
	.uleb128 0x1
	.long	.LASF1368
	.byte	0x68
	.uleb128 0x1
	.long	.LASF1369
	.byte	0x69
	.uleb128 0x1
	.long	.LASF1370
	.byte	0x6a
	.uleb128 0x1
	.long	.LASF1371
	.byte	0x6b
	.uleb128 0x1
	.long	.LASF1372
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF1373
	.byte	0x6d
	.uleb128 0x1
	.long	.LASF1374
	.byte	0x6e
	.uleb128 0x1
	.long	.LASF1375
	.byte	0x6f
	.uleb128 0x1
	.long	.LASF1376
	.byte	0x70
	.uleb128 0x1
	.long	.LASF1377
	.byte	0x71
	.uleb128 0x1
	.long	.LASF1378
	.byte	0x72
	.uleb128 0x1
	.long	.LASF1379
	.byte	0x73
	.uleb128 0x1
	.long	.LASF1380
	.byte	0x74
	.uleb128 0x1
	.long	.LASF1381
	.byte	0x75
	.uleb128 0x1
	.long	.LASF1382
	.byte	0x76
	.uleb128 0x1
	.long	.LASF1383
	.byte	0x77
	.uleb128 0x1
	.long	.LASF1384
	.byte	0x78
	.uleb128 0x1
	.long	.LASF1385
	.byte	0x79
	.uleb128 0x1
	.long	.LASF1386
	.byte	0x7a
	.uleb128 0x1
	.long	.LASF1387
	.byte	0x7b
	.uleb128 0x1
	.long	.LASF1388
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF1389
	.byte	0x7d
	.uleb128 0x1
	.long	.LASF1390
	.byte	0x7e
	.uleb128 0x1
	.long	.LASF1391
	.byte	0x7f
	.uleb128 0x1
	.long	.LASF1392
	.byte	0x80
	.uleb128 0x1
	.long	.LASF1393
	.byte	0x81
	.uleb128 0x1
	.long	.LASF1394
	.byte	0x82
	.uleb128 0x1
	.long	.LASF1395
	.byte	0x83
	.uleb128 0x1
	.long	.LASF1396
	.byte	0x84
	.uleb128 0x1
	.long	.LASF1397
	.byte	0x85
	.uleb128 0x1
	.long	.LASF1398
	.byte	0x86
	.uleb128 0x1
	.long	.LASF1399
	.byte	0x87
	.uleb128 0x1
	.long	.LASF1400
	.byte	0x88
	.uleb128 0x1
	.long	.LASF1401
	.byte	0x89
	.byte	0
	.uleb128 0x1b
	.long	.LASF1402
	.byte	0x11
	.value	0x517
	.long	0x24af
	.uleb128 0x23
	.byte	0x5c
	.byte	0x11
	.value	0x519
	.long	0x2951
	.uleb128 0x5
	.long	.LASF1403
	.byte	0x11
	.value	0x51b
	.byte	0x9
	.long	0x8f
	.byte	0
	.uleb128 0x5
	.long	.LASF1404
	.byte	0x11
	.value	0x51c
	.byte	0x9
	.long	0x8f
	.byte	0x4
	.uleb128 0x5
	.long	.LASF1405
	.byte	0x11
	.value	0x51d
	.byte	0x9
	.long	0x8f
	.byte	0x8
	.uleb128 0x5
	.long	.LASF1406
	.byte	0x11
	.value	0x51e
	.byte	0x9
	.long	0x8f
	.byte	0xc
	.uleb128 0x5
	.long	.LASF1407
	.byte	0x11
	.value	0x51f
	.byte	0x9
	.long	0x8f
	.byte	0x10
	.uleb128 0x5
	.long	.LASF1408
	.byte	0x11
	.value	0x520
	.byte	0x9
	.long	0x8f
	.byte	0x14
	.uleb128 0x5
	.long	.LASF1409
	.byte	0x11
	.value	0x521
	.byte	0x9
	.long	0x8f
	.byte	0x18
	.uleb128 0x5
	.long	.LASF1410
	.byte	0x11
	.value	0x522
	.byte	0x9
	.long	0x8f
	.byte	0x1c
	.uleb128 0x5
	.long	.LASF1411
	.byte	0x11
	.value	0x523
	.byte	0x9
	.long	0x8f
	.byte	0x20
	.uleb128 0x5
	.long	.LASF1412
	.byte	0x11
	.value	0x524
	.byte	0x9
	.long	0x8f
	.byte	0x24
	.uleb128 0x5
	.long	.LASF1413
	.byte	0x11
	.value	0x525
	.byte	0x9
	.long	0x8f
	.byte	0x28
	.uleb128 0x5
	.long	.LASF1414
	.byte	0x11
	.value	0x526
	.byte	0x9
	.long	0x8f
	.byte	0x2c
	.uleb128 0x5
	.long	.LASF1415
	.byte	0x11
	.value	0x527
	.byte	0x9
	.long	0x8f
	.byte	0x30
	.uleb128 0x5
	.long	.LASF1416
	.byte	0x11
	.value	0x528
	.byte	0x9
	.long	0x8f
	.byte	0x34
	.uleb128 0x5
	.long	.LASF1417
	.byte	0x11
	.value	0x529
	.byte	0x9
	.long	0x8f
	.byte	0x38
	.uleb128 0x5
	.long	.LASF1418
	.byte	0x11
	.value	0x52a
	.byte	0x9
	.long	0x8f
	.byte	0x3c
	.uleb128 0x5
	.long	.LASF1419
	.byte	0x11
	.value	0x52b
	.byte	0x9
	.long	0x8f
	.byte	0x40
	.uleb128 0x5
	.long	.LASF1420
	.byte	0x11
	.value	0x52c
	.byte	0x9
	.long	0x8f
	.byte	0x44
	.uleb128 0x5
	.long	.LASF1421
	.byte	0x11
	.value	0x52d
	.byte	0x9
	.long	0x8f
	.byte	0x48
	.uleb128 0x5
	.long	.LASF1422
	.byte	0x11
	.value	0x52e
	.byte	0x9
	.long	0x8f
	.byte	0x4c
	.uleb128 0x5
	.long	.LASF1423
	.byte	0x11
	.value	0x52f
	.byte	0x9
	.long	0x8f
	.byte	0x50
	.uleb128 0x5
	.long	.LASF1424
	.byte	0x11
	.value	0x530
	.byte	0x9
	.long	0x8f
	.byte	0x54
	.uleb128 0x5
	.long	.LASF1425
	.byte	0x11
	.value	0x531
	.byte	0x9
	.long	0x8f
	.byte	0x58
	.byte	0
	.uleb128 0x1b
	.long	.LASF1426
	.byte	0x11
	.value	0x533
	.long	0x2805
	.uleb128 0x1a
	.long	.LASF1427
	.byte	0xe0
	.byte	0x12
	.byte	0xcf
	.byte	0x10
	.long	0x2b35
	.uleb128 0x3
	.long	.LASF1428
	.byte	0x12
	.byte	0xd2
	.byte	0x10
	.long	0x6c3
	.byte	0
	.uleb128 0xe
	.string	"x"
	.byte	0x12
	.byte	0xd5
	.byte	0xe
	.long	0x5e6
	.byte	0x18
	.uleb128 0xe
	.string	"y"
	.byte	0x12
	.byte	0xd6
	.byte	0xe
	.long	0x5e6
	.byte	0x1c
	.uleb128 0xe
	.string	"z"
	.byte	0x12
	.byte	0xd7
	.byte	0xe
	.long	0x5e6
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1429
	.byte	0x12
	.byte	0xda
	.byte	0x14
	.long	0x2b35
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1430
	.byte	0x12
	.byte	0xdb
	.byte	0x14
	.long	0x2b35
	.byte	0x30
	.uleb128 0x3
	.long	.LASF144
	.byte	0x12
	.byte	0xde
	.byte	0xe
	.long	0x6dd
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1256
	.byte	0x12
	.byte	0xdf
	.byte	0x12
	.long	0xa9a
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1257
	.byte	0x12
	.byte	0xe0
	.byte	0xb
	.long	0x8f
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1431
	.byte	0x12
	.byte	0xe4
	.byte	0x14
	.long	0x2b35
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1432
	.byte	0x12
	.byte	0xe5
	.byte	0x14
	.long	0x2b35
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1433
	.byte	0x12
	.byte	0xe7
	.byte	0x19
	.long	0x2b6f
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1434
	.byte	0x12
	.byte	0xea
	.byte	0xe
	.long	0x5e6
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1435
	.byte	0x12
	.byte	0xeb
	.byte	0xe
	.long	0x5e6
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1419
	.byte	0x12
	.byte	0xee
	.byte	0xe
	.long	0x5e6
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1420
	.byte	0x12
	.byte	0xef
	.byte	0xe
	.long	0x5e6
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1436
	.byte	0x12
	.byte	0xf2
	.byte	0xe
	.long	0x5e6
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1437
	.byte	0x12
	.byte	0xf3
	.byte	0xe
	.long	0x5e6
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1438
	.byte	0x12
	.byte	0xf4
	.byte	0xe
	.long	0x5e6
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1439
	.byte	0x12
	.byte	0xf7
	.byte	0xb
	.long	0x8f
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF115
	.byte	0x12
	.byte	0xf9
	.byte	0x11
	.long	0x27f9
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1440
	.byte	0x12
	.byte	0xfa
	.byte	0x12
	.long	0x2b74
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1258
	.byte	0x12
	.byte	0xfc
	.byte	0xb
	.long	0x8f
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1441
	.byte	0x12
	.byte	0xfd
	.byte	0xf
	.long	0x2b79
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1424
	.byte	0x12
	.byte	0xfe
	.byte	0xb
	.long	0x8f
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1442
	.byte	0x12
	.byte	0xff
	.byte	0xb
	.long	0x8f
	.byte	0xa4
	.uleb128 0x5
	.long	.LASF1443
	.byte	0x12
	.value	0x102
	.byte	0xb
	.long	0x8f
	.byte	0xa8
	.uleb128 0x5
	.long	.LASF1444
	.byte	0x12
	.value	0x103
	.byte	0xb
	.long	0x8f
	.byte	0xac
	.uleb128 0x5
	.long	.LASF1445
	.byte	0x12
	.value	0x107
	.byte	0x14
	.long	0x2b35
	.byte	0xb0
	.uleb128 0x5
	.long	.LASF1408
	.byte	0x12
	.value	0x10b
	.byte	0xb
	.long	0x8f
	.byte	0xb8
	.uleb128 0x5
	.long	.LASF1446
	.byte	0x12
	.value	0x10f
	.byte	0xb
	.long	0x8f
	.byte	0xbc
	.uleb128 0x5
	.long	.LASF1447
	.byte	0x12
	.value	0x113
	.byte	0x16
	.long	0x2d53
	.byte	0xc0
	.uleb128 0x5
	.long	.LASF1448
	.byte	0x12
	.value	0x116
	.byte	0xb
	.long	0x8f
	.byte	0xc8
	.uleb128 0x5
	.long	.LASF1449
	.byte	0x12
	.value	0x119
	.byte	0x11
	.long	0x73f
	.byte	0xcc
	.uleb128 0x5
	.long	.LASF1450
	.byte	0x12
	.value	0x11c
	.byte	0x14
	.long	0x2b35
	.byte	0xd8
	.byte	0
	.uleb128 0xa
	.long	0x295d
	.uleb128 0x1a
	.long	.LASF1451
	.byte	0x10
	.byte	0x13
	.byte	0xe3
	.byte	0x10
	.long	0x2b6f
	.uleb128 0x3
	.long	.LASF1452
	.byte	0x13
	.byte	0xe5
	.byte	0xf
	.long	0x2f96
	.byte	0
	.uleb128 0x3
	.long	.LASF1453
	.byte	0x13
	.byte	0xe6
	.byte	0xb
	.long	0x88
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1454
	.byte	0x13
	.byte	0xe7
	.byte	0xb
	.long	0x88
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.long	0x2b3a
	.uleb128 0xa
	.long	0x2951
	.uleb128 0xa
	.long	0x24a3
	.uleb128 0x33
	.long	.LASF1455
	.value	0x140
	.byte	0x14
	.byte	0x53
	.byte	0x10
	.long	0x2d53
	.uleb128 0xe
	.string	"mo"
	.byte	0x14
	.byte	0x55
	.byte	0xe
	.long	0x2eab
	.byte	0
	.uleb128 0x3
	.long	.LASF1456
	.byte	0x14
	.byte	0x56
	.byte	0x13
	.long	0x30d2
	.byte	0x8
	.uleb128 0xe
	.string	"cmd"
	.byte	0x14
	.byte	0x57
	.byte	0xf
	.long	0x5da
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1457
	.byte	0x14
	.byte	0x5c
	.byte	0xe
	.long	0x5e6
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1458
	.byte	0x14
	.byte	0x5e
	.byte	0xe
	.long	0x5e6
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1459
	.byte	0x14
	.byte	0x60
	.byte	0x16
	.long	0x5e6
	.byte	0x1c
	.uleb128 0xe
	.string	"bob"
	.byte	0x14
	.byte	0x62
	.byte	0x16
	.long	0x5e6
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1442
	.byte	0x14
	.byte	0x66
	.byte	0xb
	.long	0x8f
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1460
	.byte	0x14
	.byte	0x67
	.byte	0xb
	.long	0x8f
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1461
	.byte	0x14
	.byte	0x69
	.byte	0xb
	.long	0x8f
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1462
	.byte	0x14
	.byte	0x6c
	.byte	0xb
	.long	0x30de
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1463
	.byte	0x14
	.byte	0x6d
	.byte	0xe
	.long	0x30ee
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1464
	.byte	0x14
	.byte	0x6e
	.byte	0xe
	.long	0x4f1
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1465
	.byte	0x14
	.byte	0x71
	.byte	0xb
	.long	0x2eb0
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1466
	.byte	0x14
	.byte	0x72
	.byte	0x12
	.long	0x44d
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1467
	.byte	0x14
	.byte	0x75
	.byte	0x12
	.long	0x44d
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1468
	.byte	0x14
	.byte	0x77
	.byte	0xe
	.long	0x30fe
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1469
	.byte	0x14
	.byte	0x78
	.byte	0xb
	.long	0x2eb0
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1470
	.byte	0x14
	.byte	0x79
	.byte	0xb
	.long	0x2eb0
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1471
	.byte	0x14
	.byte	0x7c
	.byte	0xb
	.long	0x8f
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1472
	.byte	0x14
	.byte	0x7d
	.byte	0xb
	.long	0x8f
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1473
	.byte	0x14
	.byte	0x81
	.byte	0xb
	.long	0x8f
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1474
	.byte	0x14
	.byte	0x84
	.byte	0xb
	.long	0x8f
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1475
	.byte	0x14
	.byte	0x87
	.byte	0xb
	.long	0x8f
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1476
	.byte	0x14
	.byte	0x88
	.byte	0xb
	.long	0x8f
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1477
	.byte	0x14
	.byte	0x89
	.byte	0xb
	.long	0x8f
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1478
	.byte	0x14
	.byte	0x8c
	.byte	0xc
	.long	0xc3
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1479
	.byte	0x14
	.byte	0x8f
	.byte	0xb
	.long	0x8f
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1480
	.byte	0x14
	.byte	0x90
	.byte	0xb
	.long	0x8f
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1481
	.byte	0x14
	.byte	0x93
	.byte	0xe
	.long	0x2eab
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1482
	.byte	0x14
	.byte	0x96
	.byte	0xb
	.long	0x8f
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1483
	.byte	0x14
	.byte	0x9a
	.byte	0xb
	.long	0x8f
	.byte	0xfc
	.uleb128 0x24
	.long	.LASF1484
	.byte	0x9e
	.byte	0xb
	.long	0x8f
	.value	0x100
	.uleb128 0x24
	.long	.LASF1485
	.byte	0xa1
	.byte	0xf
	.long	0x310e
	.value	0x108
	.uleb128 0x24
	.long	.LASF1486
	.byte	0xa4
	.byte	0xe
	.long	0x4f1
	.value	0x138
	.byte	0
	.uleb128 0xa
	.long	0x2b7e
	.uleb128 0x1b
	.long	.LASF1487
	.byte	0x12
	.value	0x11e
	.long	0x295d
	.uleb128 0x17
	.byte	0x8
	.byte	0x13
	.byte	0x47
	.long	0x2d83
	.uleb128 0xe
	.string	"x"
	.byte	0x13
	.byte	0x49
	.byte	0xd
	.long	0x5e6
	.byte	0
	.uleb128 0xe
	.string	"y"
	.byte	0x13
	.byte	0x4a
	.byte	0xd
	.long	0x5e6
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	.LASF1488
	.byte	0x13
	.byte	0x4c
	.byte	0x3
	.long	0x2d64
	.uleb128 0x17
	.byte	0x28
	.byte	0x13
	.byte	0x58
	.long	0x2dc6
	.uleb128 0x3
	.long	.LASF1428
	.byte	0x13
	.byte	0x5a
	.byte	0x10
	.long	0x6c3
	.byte	0
	.uleb128 0xe
	.string	"x"
	.byte	0x13
	.byte	0x5b
	.byte	0xe
	.long	0x5e6
	.byte	0x18
	.uleb128 0xe
	.string	"y"
	.byte	0x13
	.byte	0x5c
	.byte	0xe
	.long	0x5e6
	.byte	0x1c
	.uleb128 0xe
	.string	"z"
	.byte	0x13
	.byte	0x5d
	.byte	0xe
	.long	0x5e6
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.long	.LASF1489
	.byte	0x13
	.byte	0x5f
	.byte	0x3
	.long	0x2d8f
	.uleb128 0x17
	.byte	0x80
	.byte	0x13
	.byte	0x65
	.long	0x2eab
	.uleb128 0x3
	.long	.LASF1490
	.byte	0x13
	.byte	0x67
	.byte	0xd
	.long	0x5e6
	.byte	0
	.uleb128 0x3
	.long	.LASF1491
	.byte	0x13
	.byte	0x68
	.byte	0xd
	.long	0x5e6
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1492
	.byte	0x13
	.byte	0x69
	.byte	0xb
	.long	0x88
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1493
	.byte	0x13
	.byte	0x6a
	.byte	0xb
	.long	0x88
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1494
	.byte	0x13
	.byte	0x6b
	.byte	0xb
	.long	0x88
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1495
	.byte	0x13
	.byte	0x6c
	.byte	0xb
	.long	0x88
	.byte	0xe
	.uleb128 0xe
	.string	"tag"
	.byte	0x13
	.byte	0x6d
	.byte	0xb
	.long	0x88
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1496
	.byte	0x13
	.byte	0x70
	.byte	0xa
	.long	0x8f
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1497
	.byte	0x13
	.byte	0x73
	.byte	0xd
	.long	0x2eab
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1498
	.byte	0x13
	.byte	0x76
	.byte	0xa
	.long	0x2eb0
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1499
	.byte	0x13
	.byte	0x79
	.byte	0x11
	.long	0x2dc6
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1439
	.byte	0x13
	.byte	0x7c
	.byte	0xa
	.long	0x8f
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1500
	.byte	0x13
	.byte	0x7f
	.byte	0xd
	.long	0x2eab
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1501
	.byte	0x13
	.byte	0x82
	.byte	0xb
	.long	0xb5
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1502
	.byte	0x13
	.byte	0x84
	.byte	0xb
	.long	0x8f
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1503
	.byte	0x13
	.byte	0x85
	.byte	0x15
	.long	0x2f80
	.byte	0x78
	.byte	0
	.uleb128 0xa
	.long	0x2d58
	.uleb128 0xc
	.long	0x8f
	.long	0x2ec0
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.long	.LASF1504
	.byte	0x58
	.byte	0x13
	.byte	0xb3
	.byte	0x10
	.long	0x2f80
	.uleb128 0xe
	.string	"v1"
	.byte	0x13
	.byte	0xb6
	.byte	0xf
	.long	0x2fcc
	.byte	0
	.uleb128 0xe
	.string	"v2"
	.byte	0x13
	.byte	0xb7
	.byte	0xf
	.long	0x2fcc
	.byte	0x8
	.uleb128 0xe
	.string	"dx"
	.byte	0x13
	.byte	0xba
	.byte	0xd
	.long	0x5e6
	.byte	0x10
	.uleb128 0xe
	.string	"dy"
	.byte	0x13
	.byte	0xbb
	.byte	0xd
	.long	0x5e6
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1424
	.byte	0x13
	.byte	0xbe
	.byte	0xb
	.long	0x88
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1495
	.byte	0x13
	.byte	0xbf
	.byte	0xb
	.long	0x88
	.byte	0x1a
	.uleb128 0xe
	.string	"tag"
	.byte	0x13
	.byte	0xc0
	.byte	0xb
	.long	0x88
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1505
	.byte	0x13
	.byte	0xc4
	.byte	0xb
	.long	0x6e9
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1506
	.byte	0x13
	.byte	0xc8
	.byte	0xd
	.long	0x2fd1
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1507
	.byte	0x13
	.byte	0xcb
	.byte	0x11
	.long	0x2fc0
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1508
	.byte	0x13
	.byte	0xcf
	.byte	0xf
	.long	0x2f96
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1509
	.byte	0x13
	.byte	0xd0
	.byte	0xf
	.long	0x2f96
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1439
	.byte	0x13
	.byte	0xd3
	.byte	0xa
	.long	0x8f
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1501
	.byte	0x13
	.byte	0xd6
	.byte	0xb
	.long	0xb5
	.byte	0x50
	.byte	0
	.uleb128 0xa
	.long	0x2f85
	.uleb128 0xa
	.long	0x2ec0
	.uleb128 0x6
	.long	.LASF1510
	.byte	0x13
	.byte	0x87
	.byte	0x3
	.long	0x2dd2
	.uleb128 0xa
	.long	0x2f8a
	.uleb128 0x11
	.long	0x7a
	.byte	0x13
	.byte	0xa9
	.byte	0x1
	.long	0x2fc0
	.uleb128 0x1
	.long	.LASF1511
	.byte	0
	.uleb128 0x1
	.long	.LASF1512
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1513
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1514
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF1515
	.byte	0x13
	.byte	0xaf
	.byte	0x3
	.long	0x2f9b
	.uleb128 0xa
	.long	0x2d83
	.uleb128 0xc
	.long	0x5e6
	.long	0x2fe1
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x23
	.byte	0x28
	.byte	0x13
	.value	0x164
	.long	0x3031
	.uleb128 0x5
	.long	.LASF1516
	.byte	0x13
	.value	0x166
	.byte	0xc
	.long	0x88
	.byte	0
	.uleb128 0x5
	.long	.LASF1420
	.byte	0x13
	.value	0x167
	.byte	0xc
	.long	0x88
	.byte	0x2
	.uleb128 0x5
	.long	.LASF1517
	.byte	0x13
	.value	0x168
	.byte	0xc
	.long	0x88
	.byte	0x4
	.uleb128 0x5
	.long	.LASF1518
	.byte	0x13
	.value	0x169
	.byte	0xc
	.long	0x88
	.byte	0x6
	.uleb128 0x5
	.long	.LASF1519
	.byte	0x13
	.value	0x16a
	.byte	0xb
	.long	0x3031
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x8f
	.long	0x3041
	.uleb128 0x9
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x1b
	.long	.LASF1520
	.byte	0x13
	.value	0x16c
	.long	0x2fe1
	.uleb128 0x11
	.long	0x7a
	.byte	0x15
	.byte	0x3d
	.byte	0x1
	.long	0x306c
	.uleb128 0x1
	.long	.LASF1521
	.byte	0
	.uleb128 0x1
	.long	.LASF1522
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1523
	.byte	0x2
	.byte	0
	.uleb128 0x17
	.byte	0x18
	.byte	0x15
	.byte	0x44
	.long	0x30a7
	.uleb128 0x3
	.long	.LASF1441
	.byte	0x15
	.byte	0x46
	.byte	0xe
	.long	0x2b79
	.byte	0
	.uleb128 0x3
	.long	.LASF1258
	.byte	0x15
	.byte	0x47
	.byte	0xa
	.long	0x8f
	.byte	0x8
	.uleb128 0xe
	.string	"sx"
	.byte	0x15
	.byte	0x48
	.byte	0xd
	.long	0x5e6
	.byte	0xc
	.uleb128 0xe
	.string	"sy"
	.byte	0x15
	.byte	0x49
	.byte	0xd
	.long	0x5e6
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	.LASF1524
	.byte	0x15
	.byte	0x4b
	.byte	0x3
	.long	0x306c
	.uleb128 0x11
	.long	0x7a
	.byte	0x14
	.byte	0x36
	.byte	0x1
	.long	0x30d2
	.uleb128 0x1
	.long	.LASF1525
	.byte	0
	.uleb128 0x1
	.long	.LASF1526
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1527
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.long	.LASF1528
	.byte	0x14
	.byte	0x3e
	.byte	0x3
	.long	0x30b3
	.uleb128 0xc
	.long	0x8f
	.long	0x30ee
	.uleb128 0x9
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.long	0x4f1
	.long	0x30fe
	.uleb128 0x9
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.long	0x4f1
	.long	0x310e
	.uleb128 0x9
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x30a7
	.long	0x311e
	.uleb128 0x9
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.long	.LASF1529
	.byte	0x14
	.byte	0xa6
	.byte	0x3
	.long	0x2b7e
	.uleb128 0xa
	.long	0x4fd
	.uleb128 0x10
	.long	.LASF1530
	.byte	0x16
	.byte	0x34
	.byte	0xc
	.long	0x8f
	.uleb128 0x10
	.long	.LASF1531
	.byte	0x17
	.byte	0x35
	.byte	0x11
	.long	0x4f1
	.uleb128 0x10
	.long	.LASF1532
	.byte	0x17
	.byte	0x3c
	.byte	0x13
	.long	0x322
	.uleb128 0x10
	.long	.LASF1533
	.byte	0x17
	.byte	0x45
	.byte	0x16
	.long	0x353
	.uleb128 0x10
	.long	.LASF1534
	.byte	0x17
	.byte	0x5c
	.byte	0x11
	.long	0x4f1
	.uleb128 0x10
	.long	.LASF1535
	.byte	0x17
	.byte	0x6d
	.byte	0xc
	.long	0x8f
	.uleb128 0x10
	.long	.LASF1536
	.byte	0x17
	.byte	0x6e
	.byte	0xc
	.long	0x8f
	.uleb128 0x10
	.long	.LASF1537
	.byte	0x17
	.byte	0x84
	.byte	0x11
	.long	0x4f1
	.uleb128 0x10
	.long	.LASF1538
	.byte	0x17
	.byte	0x85
	.byte	0x11
	.long	0x4f1
	.uleb128 0x10
	.long	.LASF1539
	.byte	0x17
	.byte	0x9e
	.byte	0xd
	.long	0x8f
	.uleb128 0x10
	.long	.LASF1540
	.byte	0x17
	.byte	0xb4
	.byte	0x11
	.long	0x4f1
	.uleb128 0x10
	.long	.LASF1541
	.byte	0x17
	.byte	0xb7
	.byte	0x11
	.long	0x4f1
	.uleb128 0x10
	.long	.LASF1542
	.byte	0x17
	.byte	0xc1
	.byte	0x19
	.long	0x384
	.uleb128 0x10
	.long	.LASF1543
	.byte	0x17
	.byte	0xd0
	.byte	0xd
	.long	0x8f
	.uleb128 0xc
	.long	0x311e
	.long	0x31e7
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.long	.LASF1544
	.byte	0x17
	.byte	0xd4
	.byte	0x11
	.long	0x31d7
	.uleb128 0x10
	.long	.LASF1545
	.byte	0x17
	.byte	0xff
	.byte	0x19
	.long	0x8f
	.uleb128 0x11
	.long	0x7a
	.byte	0x18
	.byte	0xb2
	.byte	0x1
	.long	0x34a0
	.uleb128 0x1
	.long	.LASF1546
	.byte	0
	.uleb128 0x1
	.long	.LASF1547
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1548
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1549
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1550
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1551
	.byte	0x5
	.uleb128 0x1
	.long	.LASF1552
	.byte	0x6
	.uleb128 0x1
	.long	.LASF1553
	.byte	0x7
	.uleb128 0x1
	.long	.LASF1554
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1555
	.byte	0x9
	.uleb128 0x1
	.long	.LASF1556
	.byte	0xa
	.uleb128 0x1
	.long	.LASF1557
	.byte	0xb
	.uleb128 0x1
	.long	.LASF1558
	.byte	0xc
	.uleb128 0x1
	.long	.LASF1559
	.byte	0xd
	.uleb128 0x1
	.long	.LASF1560
	.byte	0xe
	.uleb128 0x1
	.long	.LASF1561
	.byte	0xf
	.uleb128 0x1
	.long	.LASF1562
	.byte	0x10
	.uleb128 0x1
	.long	.LASF1563
	.byte	0x11
	.uleb128 0x1
	.long	.LASF1564
	.byte	0x12
	.uleb128 0x1
	.long	.LASF1565
	.byte	0x13
	.uleb128 0x1
	.long	.LASF1566
	.byte	0x14
	.uleb128 0x1
	.long	.LASF1567
	.byte	0x15
	.uleb128 0x1
	.long	.LASF1568
	.byte	0x16
	.uleb128 0x1
	.long	.LASF1569
	.byte	0x17
	.uleb128 0x1
	.long	.LASF1570
	.byte	0x18
	.uleb128 0x1
	.long	.LASF1571
	.byte	0x19
	.uleb128 0x1
	.long	.LASF1572
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF1573
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF1574
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF1575
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF1576
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF1577
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF1578
	.byte	0x20
	.uleb128 0x1
	.long	.LASF1579
	.byte	0x21
	.uleb128 0x1
	.long	.LASF1580
	.byte	0x22
	.uleb128 0x1
	.long	.LASF1581
	.byte	0x23
	.uleb128 0x1
	.long	.LASF1582
	.byte	0x24
	.uleb128 0x1
	.long	.LASF1583
	.byte	0x25
	.uleb128 0x1
	.long	.LASF1584
	.byte	0x26
	.uleb128 0x1
	.long	.LASF1585
	.byte	0x27
	.uleb128 0x1
	.long	.LASF1586
	.byte	0x28
	.uleb128 0x1
	.long	.LASF1587
	.byte	0x29
	.uleb128 0x1
	.long	.LASF1588
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF1589
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF1590
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF1591
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF1592
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF1593
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF1594
	.byte	0x30
	.uleb128 0x1
	.long	.LASF1595
	.byte	0x31
	.uleb128 0x1
	.long	.LASF1596
	.byte	0x32
	.uleb128 0x1
	.long	.LASF1597
	.byte	0x33
	.uleb128 0x1
	.long	.LASF1598
	.byte	0x34
	.uleb128 0x1
	.long	.LASF1599
	.byte	0x35
	.uleb128 0x1
	.long	.LASF1600
	.byte	0x36
	.uleb128 0x1
	.long	.LASF1601
	.byte	0x37
	.uleb128 0x1
	.long	.LASF1602
	.byte	0x38
	.uleb128 0x1
	.long	.LASF1603
	.byte	0x39
	.uleb128 0x1
	.long	.LASF1604
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF1605
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF1606
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF1607
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF1608
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF1609
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF1610
	.byte	0x40
	.uleb128 0x1
	.long	.LASF1611
	.byte	0x41
	.uleb128 0x1
	.long	.LASF1612
	.byte	0x42
	.uleb128 0x1
	.long	.LASF1613
	.byte	0x43
	.uleb128 0x1
	.long	.LASF1614
	.byte	0x44
	.uleb128 0x1
	.long	.LASF1615
	.byte	0x45
	.uleb128 0x1
	.long	.LASF1616
	.byte	0x46
	.uleb128 0x1
	.long	.LASF1617
	.byte	0x47
	.uleb128 0x1
	.long	.LASF1618
	.byte	0x48
	.uleb128 0x1
	.long	.LASF1619
	.byte	0x49
	.uleb128 0x1
	.long	.LASF1620
	.byte	0x4a
	.uleb128 0x1
	.long	.LASF1621
	.byte	0x4b
	.uleb128 0x1
	.long	.LASF1622
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF1623
	.byte	0x4d
	.uleb128 0x1
	.long	.LASF1624
	.byte	0x4e
	.uleb128 0x1
	.long	.LASF1625
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF1626
	.byte	0x50
	.uleb128 0x1
	.long	.LASF1627
	.byte	0x51
	.uleb128 0x1
	.long	.LASF1628
	.byte	0x52
	.uleb128 0x1
	.long	.LASF1629
	.byte	0x53
	.uleb128 0x1
	.long	.LASF1630
	.byte	0x54
	.uleb128 0x1
	.long	.LASF1631
	.byte	0x55
	.uleb128 0x1
	.long	.LASF1632
	.byte	0x56
	.uleb128 0x1
	.long	.LASF1633
	.byte	0x57
	.uleb128 0x1
	.long	.LASF1634
	.byte	0x58
	.uleb128 0x1
	.long	.LASF1635
	.byte	0x59
	.uleb128 0x1
	.long	.LASF1636
	.byte	0x5a
	.uleb128 0x1
	.long	.LASF1637
	.byte	0x5b
	.uleb128 0x1
	.long	.LASF1638
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF1639
	.byte	0x5d
	.uleb128 0x1
	.long	.LASF1640
	.byte	0x5e
	.uleb128 0x1
	.long	.LASF1641
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF1642
	.byte	0x60
	.uleb128 0x1
	.long	.LASF1643
	.byte	0x61
	.uleb128 0x1
	.long	.LASF1644
	.byte	0x62
	.uleb128 0x1
	.long	.LASF1645
	.byte	0x63
	.uleb128 0x1
	.long	.LASF1646
	.byte	0x64
	.uleb128 0x1
	.long	.LASF1647
	.byte	0x65
	.uleb128 0x1
	.long	.LASF1648
	.byte	0x66
	.uleb128 0x1
	.long	.LASF1649
	.byte	0x67
	.uleb128 0x1
	.long	.LASF1650
	.byte	0x68
	.uleb128 0x1
	.long	.LASF1651
	.byte	0x69
	.uleb128 0x1
	.long	.LASF1652
	.byte	0x6a
	.uleb128 0x1
	.long	.LASF1653
	.byte	0x6b
	.uleb128 0x1
	.long	.LASF1654
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF1655
	.byte	0x6d
	.byte	0
	.uleb128 0xc
	.long	0x34b0
	.long	0x34b0
	.uleb128 0x9
	.long	0x43
	.byte	0x3e
	.byte	0
	.uleb128 0xa
	.long	0x3041
	.uleb128 0x10
	.long	.LASF1656
	.byte	0x1
	.byte	0x44
	.byte	0x12
	.long	0x34a0
	.uleb128 0x10
	.long	.LASF1657
	.byte	0x1
	.byte	0x45
	.byte	0x11
	.long	0x4f1
	.uleb128 0x10
	.long	.LASF1658
	.byte	0x1
	.byte	0x47
	.byte	0x11
	.long	0x4f1
	.uleb128 0x29
	.long	0x31f3
	.byte	0x4c
	.byte	0x7
	.uleb128 0x9
	.byte	0x3
	.quad	mouseSensitivity
	.uleb128 0xd
	.long	.LASF1659
	.byte	0x4f
	.byte	0x7
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	showMessages
	.uleb128 0xd
	.long	.LASF1660
	.byte	0x53
	.byte	0x7
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	detailLevel
	.uleb128 0xd
	.long	.LASF1661
	.byte	0x54
	.byte	0x7
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	screenblocks
	.uleb128 0xd
	.long	.LASF1662
	.byte	0x57
	.byte	0x7
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	screenSize
	.uleb128 0xd
	.long	.LASF1663
	.byte	0x5a
	.byte	0x7
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	quickSaveSlot
	.uleb128 0xd
	.long	.LASF1664
	.byte	0x5d
	.byte	0x7
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	messageToPrint
	.uleb128 0xd
	.long	.LASF1665
	.byte	0x5f
	.byte	0x9
	.long	0xc3
	.uleb128 0x9
	.byte	0x3
	.quad	messageString
	.uleb128 0xd
	.long	.LASF1666
	.byte	0x62
	.byte	0x7
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	messx
	.uleb128 0xd
	.long	.LASF1667
	.byte	0x63
	.byte	0x7
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	messy
	.uleb128 0xd
	.long	.LASF1668
	.byte	0x64
	.byte	0x7
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	messageLastMenuActive
	.uleb128 0xd
	.long	.LASF1669
	.byte	0x67
	.byte	0xb
	.long	0x4f1
	.uleb128 0x9
	.byte	0x3
	.quad	messageNeedsInput
	.uleb128 0x22
	.long	0x35dc
	.uleb128 0x4
	.long	0x8f
	.byte	0
	.uleb128 0xd
	.long	.LASF1670
	.byte	0x69
	.byte	0xb
	.long	0x35f1
	.uleb128 0x9
	.byte	0x3
	.quad	messageRoutine
	.uleb128 0xa
	.long	0x35d1
	.uleb128 0xc
	.long	0x4a
	.long	0x360c
	.uleb128 0x9
	.long	0x43
	.byte	0x4
	.uleb128 0x9
	.long	0x43
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.long	.LASF1671
	.byte	0x6d
	.byte	0x6
	.long	0x35f6
	.uleb128 0x9
	.byte	0x3
	.quad	gammamsg
	.uleb128 0xd
	.long	.LASF1672
	.byte	0x77
	.byte	0x7
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	saveStringEnter
	.uleb128 0xd
	.long	.LASF1673
	.byte	0x78
	.byte	0x12
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	saveSlot
	.uleb128 0xd
	.long	.LASF1674
	.byte	0x79
	.byte	0x7
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	saveCharIndex
	.uleb128 0xc
	.long	0x4a
	.long	0x3670
	.uleb128 0x9
	.long	0x43
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.long	.LASF1675
	.byte	0x7b
	.byte	0x8
	.long	0x3660
	.uleb128 0x9
	.byte	0x3
	.quad	saveOldString
	.uleb128 0xd
	.long	.LASF1676
	.byte	0x7d
	.byte	0xb
	.long	0x4f1
	.uleb128 0x9
	.byte	0x3
	.quad	inhelpscreens
	.uleb128 0x29
	.long	0x318f
	.byte	0x7e
	.byte	0xb
	.uleb128 0x9
	.byte	0x3
	.quad	menuactive
	.uleb128 0xc
	.long	0x4a
	.long	0x36c1
	.uleb128 0x9
	.long	0x43
	.byte	0x9
	.uleb128 0x9
	.long	0x43
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.long	.LASF1677
	.byte	0x84
	.byte	0x8
	.long	0x36ab
	.uleb128 0x9
	.byte	0x3
	.quad	savegamestrings
	.uleb128 0xc
	.long	0x4a
	.long	0x36e6
	.uleb128 0x9
	.long	0x43
	.byte	0x9f
	.byte	0
	.uleb128 0xd
	.long	.LASF1678
	.byte	0x86
	.byte	0x6
	.long	0x36d6
	.uleb128 0x9
	.byte	0x3
	.quad	endstring
	.uleb128 0x17
	.byte	0x20
	.byte	0x1
	.byte	0x8c
	.long	0x3738
	.uleb128 0x3
	.long	.LASF1679
	.byte	0x1
	.byte	0x8f
	.byte	0xb
	.long	0x88
	.byte	0
	.uleb128 0x3
	.long	.LASF1680
	.byte	0x1
	.byte	0x91
	.byte	0xa
	.long	0x3738
	.byte	0x2
	.uleb128 0x3
	.long	.LASF1681
	.byte	0x1
	.byte	0x96
	.byte	0xc
	.long	0x35f1
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1682
	.byte	0x1
	.byte	0x99
	.byte	0xa
	.long	0x4a
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.long	0x4a
	.long	0x3748
	.uleb128 0x9
	.long	0x43
	.byte	0x9
	.byte	0
	.uleb128 0x6
	.long	.LASF1683
	.byte	0x1
	.byte	0x9a
	.byte	0x3
	.long	0x36fb
	.uleb128 0x1a
	.long	.LASF1684
	.byte	0x28
	.byte	0x1
	.byte	0x9e
	.byte	0x10
	.long	0x37b9
	.uleb128 0x3
	.long	.LASF1685
	.byte	0x1
	.byte	0xa0
	.byte	0xc
	.long	0x88
	.byte	0
	.uleb128 0x3
	.long	.LASF1686
	.byte	0x1
	.byte	0xa1
	.byte	0x14
	.long	0x37b9
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1687
	.byte	0x1
	.byte	0xa2
	.byte	0x12
	.long	0x37be
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1681
	.byte	0x1
	.byte	0xa3
	.byte	0xd
	.long	0x5fe
	.byte	0x18
	.uleb128 0xe
	.string	"x"
	.byte	0x1
	.byte	0xa4
	.byte	0xc
	.long	0x88
	.byte	0x20
	.uleb128 0xe
	.string	"y"
	.byte	0x1
	.byte	0xa5
	.byte	0xc
	.long	0x88
	.byte	0x22
	.uleb128 0x3
	.long	.LASF1688
	.byte	0x1
	.byte	0xa6
	.byte	0xc
	.long	0x88
	.byte	0x24
	.byte	0
	.uleb128 0xa
	.long	0x3754
	.uleb128 0xa
	.long	0x3748
	.uleb128 0x6
	.long	.LASF1689
	.byte	0x1
	.byte	0xa7
	.byte	0x3
	.long	0x3754
	.uleb128 0xd
	.long	.LASF1690
	.byte	0xa9
	.byte	0x8
	.long	0x88
	.uleb128 0x9
	.byte	0x3
	.quad	itemOn
	.uleb128 0xd
	.long	.LASF1691
	.byte	0xaa
	.byte	0x8
	.long	0x88
	.uleb128 0x9
	.byte	0x3
	.quad	skullAnimCounter
	.uleb128 0xd
	.long	.LASF1692
	.byte	0xab
	.byte	0x8
	.long	0x88
	.uleb128 0x9
	.byte	0x3
	.quad	whichSkull
	.uleb128 0xc
	.long	0x4a
	.long	0x3824
	.uleb128 0x9
	.long	0x43
	.byte	0x1
	.uleb128 0x9
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	.LASF1693
	.byte	0xaf
	.byte	0x9
	.long	0x380e
	.uleb128 0x9
	.byte	0x3
	.quad	skullName
	.uleb128 0xd
	.long	.LASF1694
	.byte	0xb2
	.byte	0x9
	.long	0x384e
	.uleb128 0x9
	.byte	0x3
	.quad	currentMenu
	.uleb128 0xa
	.long	0x37c3
	.uleb128 0x11
	.long	0x7a
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.long	0x388a
	.uleb128 0x1
	.long	.LASF1695
	.byte	0
	.uleb128 0x1
	.long	.LASF145
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1696
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1697
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1698
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1699
	.byte	0x5
	.uleb128 0x1
	.long	.LASF1700
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.long	.LASF1701
	.byte	0xf8
	.byte	0x3
	.long	0x3853
	.uleb128 0x9
	.byte	0x3
	.quad	main_e
	.uleb128 0xc
	.long	0x3748
	.long	0x38af
	.uleb128 0x9
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.long	.LASF1702
	.byte	0xfa
	.byte	0xc
	.long	0x389f
	.uleb128 0x9
	.byte	0x3
	.quad	MainMenu
	.uleb128 0xb
	.long	.LASF1703
	.value	0x105
	.byte	0x9
	.long	0x37c3
	.uleb128 0x9
	.byte	0x3
	.quad	MainDef
	.uleb128 0x18
	.long	0x7a
	.byte	0x1
	.value	0x114
	.byte	0x1
	.long	0x3906
	.uleb128 0x1d
	.string	"ep1"
	.byte	0
	.uleb128 0x1d
	.string	"ep2"
	.byte	0x1
	.uleb128 0x1d
	.string	"ep3"
	.byte	0x2
	.uleb128 0x1d
	.string	"ep4"
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1704
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.long	.LASF1705
	.value	0x11a
	.byte	0x3
	.long	0x38da
	.uleb128 0x9
	.byte	0x3
	.quad	episodes_e
	.uleb128 0xc
	.long	0x3748
	.long	0x392c
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	.LASF1706
	.value	0x11c
	.byte	0xc
	.long	0x391c
	.uleb128 0x9
	.byte	0x3
	.quad	EpisodeMenu
	.uleb128 0xb
	.long	.LASF1707
	.value	0x124
	.byte	0x9
	.long	0x37c3
	.uleb128 0x9
	.byte	0x3
	.quad	EpiDef
	.uleb128 0x18
	.long	0x7a
	.byte	0x1
	.value	0x132
	.byte	0x1
	.long	0x398a
	.uleb128 0x1
	.long	.LASF1708
	.byte	0
	.uleb128 0x1
	.long	.LASF1709
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1710
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1711
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1712
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1713
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	.LASF1714
	.value	0x139
	.byte	0x3
	.long	0x3958
	.uleb128 0x9
	.byte	0x3
	.quad	newgame_e
	.uleb128 0xc
	.long	0x3748
	.long	0x39b0
	.uleb128 0x9
	.long	0x43
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.long	.LASF1715
	.value	0x13b
	.byte	0xc
	.long	0x39a0
	.uleb128 0x9
	.byte	0x3
	.quad	NewGameMenu
	.uleb128 0xb
	.long	.LASF1716
	.value	0x144
	.byte	0x9
	.long	0x37c3
	.uleb128 0x9
	.byte	0x3
	.quad	NewDef
	.uleb128 0x18
	.long	0x7a
	.byte	0x1
	.value	0x154
	.byte	0x1
	.long	0x3a20
	.uleb128 0x1
	.long	.LASF1717
	.byte	0
	.uleb128 0x1
	.long	.LASF1718
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1719
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1720
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1721
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1722
	.byte	0x5
	.uleb128 0x1
	.long	.LASF1723
	.byte	0x6
	.uleb128 0x1
	.long	.LASF1724
	.byte	0x7
	.uleb128 0x1
	.long	.LASF1725
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	.LASF1726
	.value	0x15e
	.byte	0x3
	.long	0x39dc
	.uleb128 0x9
	.byte	0x3
	.quad	options_e
	.uleb128 0xc
	.long	0x3748
	.long	0x3a46
	.uleb128 0x9
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.long	.LASF1727
	.value	0x160
	.byte	0xc
	.long	0x3a36
	.uleb128 0x9
	.byte	0x3
	.quad	OptionsMenu
	.uleb128 0xb
	.long	.LASF1728
	.value	0x16c
	.byte	0x9
	.long	0x37c3
	.uleb128 0x9
	.byte	0x3
	.quad	OptionsDef
	.uleb128 0x18
	.long	0x7a
	.byte	0x1
	.value	0x17a
	.byte	0x1
	.long	0x3a8c
	.uleb128 0x1
	.long	.LASF1729
	.byte	0
	.uleb128 0x1
	.long	.LASF1730
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.long	.LASF1731
	.value	0x17d
	.byte	0x3
	.long	0x3a72
	.uleb128 0x9
	.byte	0x3
	.quad	read_e
	.uleb128 0xc
	.long	0x3748
	.long	0x3ab2
	.uleb128 0x9
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF1732
	.value	0x17f
	.byte	0xc
	.long	0x3aa2
	.uleb128 0x9
	.byte	0x3
	.quad	ReadMenu1
	.uleb128 0xb
	.long	.LASF1733
	.value	0x184
	.byte	0x9
	.long	0x37c3
	.uleb128 0x9
	.byte	0x3
	.quad	ReadDef1
	.uleb128 0x18
	.long	0x7a
	.byte	0x1
	.value	0x18f
	.byte	0x1
	.long	0x3af8
	.uleb128 0x1
	.long	.LASF1734
	.byte	0
	.uleb128 0x1
	.long	.LASF1735
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.long	.LASF1736
	.value	0x192
	.byte	0x3
	.long	0x3ade
	.uleb128 0x9
	.byte	0x3
	.quad	read_e2
	.uleb128 0xb
	.long	.LASF1737
	.value	0x194
	.byte	0xc
	.long	0x3aa2
	.uleb128 0x9
	.byte	0x3
	.quad	ReadMenu2
	.uleb128 0xb
	.long	.LASF1738
	.value	0x199
	.byte	0x9
	.long	0x37c3
	.uleb128 0x9
	.byte	0x3
	.quad	ReadDef2
	.uleb128 0x18
	.long	0x7a
	.byte	0x1
	.value	0x1a7
	.byte	0x1
	.long	0x3b66
	.uleb128 0x1
	.long	.LASF1739
	.byte	0
	.uleb128 0x1
	.long	.LASF1740
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1741
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1742
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1743
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.long	.LASF1744
	.value	0x1ad
	.byte	0x3
	.long	0x3b3a
	.uleb128 0x9
	.byte	0x3
	.quad	sound_e
	.uleb128 0xb
	.long	.LASF1745
	.value	0x1af
	.byte	0xc
	.long	0x391c
	.uleb128 0x9
	.byte	0x3
	.quad	SoundMenu
	.uleb128 0xb
	.long	.LASF1746
	.value	0x1b7
	.byte	0x9
	.long	0x37c3
	.uleb128 0x9
	.byte	0x3
	.quad	SoundDef
	.uleb128 0x18
	.long	0x7a
	.byte	0x1
	.value	0x1c5
	.byte	0x1
	.long	0x3be0
	.uleb128 0x1
	.long	.LASF1747
	.byte	0
	.uleb128 0x1
	.long	.LASF1748
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1749
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1750
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1751
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1752
	.byte	0x5
	.uleb128 0x1
	.long	.LASF1753
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.long	.LASF1754
	.value	0x1cd
	.byte	0x3
	.long	0x3ba8
	.uleb128 0x9
	.byte	0x3
	.quad	load_e
	.uleb128 0xb
	.long	.LASF1755
	.value	0x1cf
	.byte	0xc
	.long	0x389f
	.uleb128 0x9
	.byte	0x3
	.quad	LoadMenu
	.uleb128 0xb
	.long	.LASF1756
	.value	0x1d9
	.byte	0x9
	.long	0x37c3
	.uleb128 0x9
	.byte	0x3
	.quad	LoadDef
	.uleb128 0xb
	.long	.LASF1757
	.value	0x1e6
	.byte	0xc
	.long	0x389f
	.uleb128 0x9
	.byte	0x3
	.quad	SaveMenu
	.uleb128 0xb
	.long	.LASF1758
	.value	0x1f0
	.byte	0x9
	.long	0x37c3
	.uleb128 0x9
	.byte	0x3
	.quad	SaveDef
	.uleb128 0xc
	.long	0x4a
	.long	0x3c5e
	.uleb128 0x9
	.long	0x43
	.byte	0x4f
	.byte	0
	.uleb128 0xb
	.long	.LASF1759
	.value	0x2a7
	.byte	0x9
	.long	0x3c4e
	.uleb128 0x9
	.byte	0x3
	.quad	tempstring
	.uleb128 0x34
	.string	"epi"
	.byte	0x1
	.value	0x37b
	.byte	0x9
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	epi
	.uleb128 0xb
	.long	.LASF1760
	.value	0x3b3
	.byte	0x9
	.long	0x380e
	.uleb128 0x9
	.byte	0x3
	.quad	detailNames
	.uleb128 0xb
	.long	.LASF1761
	.value	0x3b4
	.byte	0x6
	.long	0x380e
	.uleb128 0x9
	.byte	0x3
	.quad	msgNames
	.uleb128 0xb
	.long	.LASF1762
	.value	0x41e
	.byte	0x9
	.long	0x3031
	.uleb128 0x9
	.byte	0x3
	.quad	quitsounds
	.uleb128 0xb
	.long	.LASF1763
	.value	0x42a
	.byte	0x9
	.long	0x3031
	.uleb128 0x9
	.byte	0x3
	.quad	quitsounds2
	.uleb128 0x19
	.long	.LASF1764
	.byte	0x19
	.byte	0x90
	.byte	0xe
	.long	0xc3
	.long	0x3d03
	.uleb128 0x4
	.long	0xc3
	.uleb128 0x4
	.long	0xfe
	.uleb128 0x4
	.long	0xd4
	.byte	0
	.uleb128 0x19
	.long	.LASF1765
	.byte	0x19
	.byte	0x3d
	.byte	0xe
	.long	0xb5
	.long	0x3d23
	.uleb128 0x4
	.long	0xb5
	.uleb128 0x4
	.long	0x8f
	.uleb128 0x4
	.long	0xd4
	.byte	0
	.uleb128 0x15
	.long	.LASF1767
	.byte	0x1b
	.byte	0x2b
	.byte	0x6
	.long	0x3d35
	.uleb128 0x4
	.long	0x312a
	.byte	0
	.uleb128 0x25
	.long	.LASF1769
	.byte	0x1d
	.byte	0x47
	.uleb128 0x35
	.long	.LASF1863
	.byte	0x1e
	.byte	0x2d
	.byte	0x5
	.long	0x8f
	.uleb128 0x19
	.long	.LASF1766
	.byte	0x1a
	.byte	0x7d
	.byte	0xc
	.long	0x8f
	.long	0x3d5e
	.uleb128 0x4
	.long	0x8f
	.byte	0
	.uleb128 0x15
	.long	.LASF1768
	.byte	0x1c
	.byte	0xa5
	.byte	0x6
	.long	0x3d75
	.uleb128 0x4
	.long	0x8f
	.uleb128 0x4
	.long	0x8f
	.byte	0
	.uleb128 0x25
	.long	.LASF1770
	.byte	0x1e
	.byte	0x4f
	.uleb128 0x15
	.long	.LASF1771
	.byte	0x1b
	.byte	0x31
	.byte	0x6
	.long	0x3d8e
	.uleb128 0x4
	.long	0x8f
	.byte	0
	.uleb128 0x25
	.long	.LASF1772
	.byte	0x1f
	.byte	0x3e
	.uleb128 0x15
	.long	.LASF1773
	.byte	0x1d
	.byte	0x29
	.byte	0x6
	.long	0x3db1
	.uleb128 0x4
	.long	0x3bb
	.uleb128 0x4
	.long	0x8f
	.uleb128 0x4
	.long	0x8f
	.byte	0
	.uleb128 0x15
	.long	.LASF1774
	.byte	0x20
	.byte	0x64
	.byte	0x6
	.long	0x3dc3
	.uleb128 0x4
	.long	0x8f
	.byte	0
	.uleb128 0x15
	.long	.LASF1775
	.byte	0x20
	.byte	0x65
	.byte	0x6
	.long	0x3dd5
	.uleb128 0x4
	.long	0x8f
	.byte	0
	.uleb128 0x15
	.long	.LASF1776
	.byte	0x20
	.byte	0x3b
	.byte	0x1
	.long	0x3dec
	.uleb128 0x4
	.long	0xb5
	.uleb128 0x4
	.long	0x8f
	.byte	0
	.uleb128 0x1e
	.long	.LASF1777
	.byte	0x19
	.value	0x197
	.byte	0xf
	.long	0xd4
	.long	0x3e03
	.uleb128 0x4
	.long	0xfe
	.byte	0
	.uleb128 0x19
	.long	.LASF1778
	.byte	0x19
	.byte	0x9c
	.byte	0xc
	.long	0x8f
	.long	0x3e1e
	.uleb128 0x4
	.long	0xfe
	.uleb128 0x4
	.long	0xfe
	.byte	0
	.uleb128 0x19
	.long	.LASF1779
	.byte	0x19
	.byte	0x8d
	.byte	0xe
	.long	0xc3
	.long	0x3e39
	.uleb128 0x4
	.long	0xc3
	.uleb128 0x4
	.long	0xfe
	.byte	0
	.uleb128 0x15
	.long	.LASF1780
	.byte	0x1d
	.byte	0x34
	.byte	0x6
	.long	0x3e50
	.uleb128 0x4
	.long	0x8f
	.uleb128 0x4
	.long	0xc3
	.byte	0
	.uleb128 0x15
	.long	.LASF1781
	.byte	0x1d
	.byte	0x2f
	.byte	0x6
	.long	0x3e62
	.uleb128 0x4
	.long	0xc3
	.byte	0
	.uleb128 0x15
	.long	.LASF1782
	.byte	0x16
	.byte	0x4f
	.byte	0x1
	.long	0x3e83
	.uleb128 0x4
	.long	0x8f
	.uleb128 0x4
	.long	0x8f
	.uleb128 0x4
	.long	0x8f
	.uleb128 0x4
	.long	0x34b0
	.byte	0
	.uleb128 0x19
	.long	.LASF1783
	.byte	0x21
	.byte	0x4f
	.byte	0x7
	.long	0xb5
	.long	0x3e9e
	.uleb128 0x4
	.long	0xc3
	.uleb128 0x4
	.long	0x8f
	.byte	0
	.uleb128 0x1e
	.long	.LASF1784
	.byte	0x3
	.value	0x166
	.byte	0xc
	.long	0x8f
	.long	0x3eb5
	.uleb128 0x4
	.long	0x8f
	.byte	0
	.uleb128 0x1e
	.long	.LASF1785
	.byte	0x3
	.value	0x173
	.byte	0x10
	.long	0xc8
	.long	0x3ed6
	.uleb128 0x4
	.long	0x8f
	.uleb128 0x4
	.long	0xb5
	.uleb128 0x4
	.long	0xd4
	.byte	0
	.uleb128 0x19
	.long	.LASF1786
	.byte	0x22
	.byte	0xd1
	.byte	0xc
	.long	0x8f
	.long	0x3ef2
	.uleb128 0x4
	.long	0xfe
	.uleb128 0x4
	.long	0x8f
	.uleb128 0x21
	.byte	0
	.uleb128 0x1e
	.long	.LASF1787
	.byte	0x8
	.value	0x16d
	.byte	0xc
	.long	0x8f
	.long	0x3f0f
	.uleb128 0x4
	.long	0xc3
	.uleb128 0x4
	.long	0xfe
	.uleb128 0x21
	.byte	0
	.uleb128 0x19
	.long	.LASF1788
	.byte	0x23
	.byte	0x22
	.byte	0x5
	.long	0x8f
	.long	0x3f25
	.uleb128 0x4
	.long	0xc3
	.byte	0
	.uleb128 0x1c
	.long	.LASF1789
	.value	0x737
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.long	.LASF1790
	.value	0x72a
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.long	.LASF1792
	.value	0x720
	.byte	0x6
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f85
	.uleb128 0x7
	.long	.LASF1798
	.value	0x720
	.byte	0x1e
	.long	0x384e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.long	.LASF1791
	.value	0x713
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.long	.LASF1793
	.value	0x6cc
	.byte	0x6
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x4023
	.uleb128 0xf
	.string	"x"
	.value	0x6ce
	.byte	0x12
	.long	0x88
	.uleb128 0x9
	.byte	0x3
	.quad	x.0
	.uleb128 0xf
	.string	"y"
	.value	0x6cf
	.byte	0x12
	.long	0x88
	.uleb128 0x9
	.byte	0x3
	.quad	y.1
	.uleb128 0xf
	.string	"i"
	.value	0x6d0
	.byte	0xc
	.long	0x88
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xf
	.string	"max"
	.value	0x6d1
	.byte	0xc
	.long	0x88
	.uleb128 0x3
	.byte	0x91
	.sleb128 -86
	.uleb128 0x12
	.long	.LASF1795
	.value	0x6d2
	.byte	0xb
	.long	0xe7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x12
	.long	.LASF1796
	.value	0x6d3
	.byte	0xb
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x1c
	.long	.LASF1797
	.value	0x6bb
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.long	.LASF1806
	.value	0x545
	.byte	0x9
	.long	0x4f1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x410c
	.uleb128 0x14
	.string	"ev"
	.value	0x545
	.byte	0x1f
	.long	0x410c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"ch"
	.value	0x547
	.byte	0x15
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"i"
	.value	0x548
	.byte	0x15
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.long	.LASF1799
	.value	0x549
	.byte	0x15
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	joywait.7
	.uleb128 0x12
	.long	.LASF1800
	.value	0x54a
	.byte	0x15
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	mousewait.6
	.uleb128 0x12
	.long	.LASF1801
	.value	0x54b
	.byte	0x15
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	mousey.5
	.uleb128 0x12
	.long	.LASF1802
	.value	0x54c
	.byte	0x15
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	lasty.4
	.uleb128 0x12
	.long	.LASF1803
	.value	0x54d
	.byte	0x15
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	mousex.3
	.uleb128 0x12
	.long	.LASF1804
	.value	0x54e
	.byte	0x15
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	lastx.2
	.byte	0
	.uleb128 0xa
	.long	0x577
	.uleb128 0x8
	.long	.LASF1805
	.value	0x511
	.byte	0x1
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x419d
	.uleb128 0x14
	.string	"x"
	.value	0x512
	.byte	0x8
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.string	"y"
	.value	0x513
	.byte	0x8
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.long	.LASF1795
	.value	0x514
	.byte	0xa
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.string	"w"
	.value	0x516
	.byte	0xa
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.string	"ch"
	.value	0x517
	.byte	0xb
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"c"
	.value	0x518
	.byte	0xa
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.string	"cx"
	.value	0x519
	.byte	0xa
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"cy"
	.value	0x51a
	.byte	0xa
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x26
	.long	.LASF1807
	.value	0x4fe
	.byte	0x5
	.long	0x8f
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x41f8
	.uleb128 0x7
	.long	.LASF1795
	.value	0x4fe
	.byte	0x1a
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.string	"i"
	.value	0x500
	.byte	0x15
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.string	"h"
	.value	0x501
	.byte	0x15
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.long	.LASF1420
	.value	0x502
	.byte	0x15
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x26
	.long	.LASF1808
	.value	0x4e7
	.byte	0x5
	.long	0x8f
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x4251
	.uleb128 0x7
	.long	.LASF1795
	.value	0x4e7
	.byte	0x19
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.string	"i"
	.value	0x4e9
	.byte	0x15
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.string	"w"
	.value	0x4ea
	.byte	0x15
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"c"
	.value	0x4eb
	.byte	0x15
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1c
	.long	.LASF1809
	.value	0x4dc
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.long	.LASF1810
	.value	0x4cc
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x42b6
	.uleb128 0x7
	.long	.LASF1795
	.value	0x4cd
	.byte	0xa
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.long	.LASF1681
	.value	0x4ce
	.byte	0xa
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.long	.LASF1811
	.value	0x4cf
	.byte	0xb
	.long	0x4f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x8
	.long	.LASF1812
	.value	0x4c2
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x42f3
	.uleb128 0x7
	.long	.LASF1813
	.value	0x4c3
	.byte	0xb
	.long	0x384e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.long	.LASF1814
	.value	0x4c4
	.byte	0x8
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x8
	.long	.LASF1815
	.value	0x4b9
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x4330
	.uleb128 0x7
	.long	.LASF1813
	.value	0x4ba
	.byte	0xb
	.long	0x384e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.long	.LASF1814
	.value	0x4bb
	.byte	0x8
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x8
	.long	.LASF1816
	.value	0x49f
	.byte	0x1
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x43a2
	.uleb128 0x14
	.string	"x"
	.value	0x4a0
	.byte	0x7
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"y"
	.value	0x4a1
	.byte	0x7
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.long	.LASF1817
	.value	0x4a2
	.byte	0x7
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.long	.LASF1818
	.value	0x4a3
	.byte	0x7
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"xx"
	.value	0x4a5
	.byte	0xa
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"i"
	.value	0x4a6
	.byte	0xa
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF1819
	.value	0x480
	.byte	0x6
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x43d0
	.uleb128 0x7
	.long	.LASF1820
	.value	0x480
	.byte	0x18
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF1821
	.value	0x46b
	.byte	0x6
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x43fe
	.uleb128 0x7
	.long	.LASF1820
	.value	0x46b
	.byte	0x19
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.long	.LASF1822
	.value	0x459
	.byte	0x6
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x442c
	.uleb128 0x7
	.long	.LASF1820
	.value	0x459
	.byte	0x1e
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF1823
	.value	0x44a
	.byte	0x6
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x445a
	.uleb128 0x7
	.long	.LASF1820
	.value	0x44a
	.byte	0x15
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF1824
	.value	0x438
	.byte	0x6
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x4487
	.uleb128 0x14
	.string	"ch"
	.value	0x438
	.byte	0x19
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF1825
	.value	0x412
	.byte	0x6
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x44b5
	.uleb128 0x7
	.long	.LASF1820
	.value	0x412
	.byte	0x1b
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF1826
	.value	0x40c
	.byte	0x6
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x44e3
	.uleb128 0x7
	.long	.LASF1820
	.value	0x40c
	.byte	0x16
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF1827
	.value	0x406
	.byte	0x6
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x4511
	.uleb128 0x7
	.long	.LASF1820
	.value	0x406
	.byte	0x15
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF1828
	.value	0x3ee
	.byte	0x6
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x453f
	.uleb128 0x7
	.long	.LASF1820
	.value	0x3ee
	.byte	0x14
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF1829
	.value	0x3e4
	.byte	0x6
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x456c
	.uleb128 0x14
	.string	"ch"
	.value	0x3e4
	.byte	0x1c
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.long	.LASF1830
	.value	0x3d2
	.byte	0x6
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x459a
	.uleb128 0x7
	.long	.LASF1820
	.value	0x3d2
	.byte	0x1b
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF1831
	.value	0x3c8
	.byte	0x6
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x45c8
	.uleb128 0x7
	.long	.LASF1820
	.value	0x3c8
	.byte	0x14
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.long	.LASF1832
	.value	0x3b7
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.long	.LASF1833
	.value	0x397
	.byte	0x6
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x460f
	.uleb128 0x7
	.long	.LASF1820
	.value	0x397
	.byte	0x14
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF1834
	.value	0x38b
	.byte	0x6
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x463d
	.uleb128 0x7
	.long	.LASF1820
	.value	0x38b
	.byte	0x18
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF1835
	.value	0x382
	.byte	0x6
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x466a
	.uleb128 0x14
	.string	"ch"
	.value	0x382
	.byte	0x1c
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.long	.LASF1836
	.value	0x37d
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.long	.LASF1837
	.value	0x369
	.byte	0x6
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x46b1
	.uleb128 0x7
	.long	.LASF1820
	.value	0x369
	.byte	0x14
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.long	.LASF1838
	.value	0x363
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.long	.LASF1839
	.value	0x358
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.long	.LASF1840
	.value	0x341
	.byte	0x6
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x4711
	.uleb128 0x7
	.long	.LASF1820
	.value	0x341
	.byte	0x15
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF1841
	.value	0x330
	.byte	0x6
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x473f
	.uleb128 0x7
	.long	.LASF1820
	.value	0x330
	.byte	0x13
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF1842
	.value	0x32b
	.byte	0x6
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x476d
	.uleb128 0x7
	.long	.LASF1820
	.value	0x32b
	.byte	0x12
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.long	.LASF1843
	.value	0x320
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.long	.LASF1844
	.value	0x308
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.long	.LASF1845
	.value	0x2f0
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.long	.LASF1846
	.value	0x2d8
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.long	.LASF1847
	.value	0x2ce
	.byte	0x6
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x47fe
	.uleb128 0x14
	.string	"ch"
	.value	0x2ce
	.byte	0x1e
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.long	.LASF1848
	.value	0x2b2
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.long	.LASF1849
	.value	0x2a9
	.byte	0x6
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x4844
	.uleb128 0x14
	.string	"ch"
	.value	0x2a9
	.byte	0x1e
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF1850
	.value	0x293
	.byte	0x6
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x4872
	.uleb128 0x7
	.long	.LASF1820
	.value	0x293
	.byte	0x16
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF1851
	.value	0x284
	.byte	0x6
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x48a0
	.uleb128 0x7
	.long	.LASF1820
	.value	0x284
	.byte	0x17
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF1852
	.value	0x277
	.byte	0x6
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x48ce
	.uleb128 0x7
	.long	.LASF1853
	.value	0x277
	.byte	0x13
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF1854
	.value	0x262
	.byte	0x6
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x48fa
	.uleb128 0xf
	.string	"i"
	.value	0x264
	.byte	0x15
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF1855
	.value	0x252
	.byte	0x6
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x4928
	.uleb128 0x7
	.long	.LASF1820
	.value	0x252
	.byte	0x16
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF1856
	.value	0x243
	.byte	0x6
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x4967
	.uleb128 0x7
	.long	.LASF1820
	.value	0x243
	.byte	0x17
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x12
	.long	.LASF1680
	.value	0x245
	.byte	0xd
	.long	0x4967
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.uleb128 0xc
	.long	0x4a
	.long	0x4977
	.uleb128 0x9
	.long	0x43
	.byte	0xff
	.byte	0
	.uleb128 0x8
	.long	.LASF1857
	.value	0x22f
	.byte	0x6
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x49bd
	.uleb128 0x14
	.string	"x"
	.value	0x22f
	.byte	0x1f
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"y"
	.value	0x22f
	.byte	0x25
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"i"
	.value	0x231
	.byte	0x15
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF1858
	.value	0x21e
	.byte	0x6
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x49e9
	.uleb128 0xf
	.string	"i"
	.value	0x220
	.byte	0x15
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x36
	.long	.LASF1864
	.byte	0x1
	.value	0x1ff
	.byte	0x6
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x12
	.long	.LASF1859
	.value	0x201
	.byte	0x15
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x12
	.long	.LASF1860
	.value	0x202
	.byte	0x15
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0xf
	.string	"i"
	.value	0x203
	.byte	0x15
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x12
	.long	.LASF1680
	.value	0x204
	.byte	0xd
	.long	0x4967
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
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
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x20
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x24
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 20
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
	.uleb128 0x25
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
	.uleb128 0x27
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x34
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
.LASF1756:
	.string	"LoadDef"
.LASF1767:
	.string	"I_SetPalette"
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
.LASF1590:
	.string	"sfx_cybsit"
.LASF214:
	.string	"SPR_YSKU"
.LASF1556:
	.string	"sfx_sawup"
.LASF1481:
	.string	"attacker"
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
.LASF45:
	.string	"_unused2"
.LASF586:
	.string	"S_FIRE19"
.LASF1398:
	.string	"MT_MISC84"
.LASF1331:
	.string	"MT_MISC20"
.LASF1145:
	.string	"S_MEGA2"
.LASF31:
	.string	"_fileno"
.LASF1147:
	.string	"S_MEGA4"
.LASF1335:
	.string	"MT_MISC24"
.LASF1336:
	.string	"MT_MISC25"
.LASF1338:
	.string	"MT_MISC26"
.LASF1339:
	.string	"MT_MISC27"
.LASF1340:
	.string	"MT_MISC28"
.LASF1343:
	.string	"MT_MISC29"
.LASF776:
	.string	"S_SARG_PAIN2"
.LASF1446:
	.string	"threshold"
.LASF80:
	.string	"wp_pistol"
.LASF255:
	.string	"SPR_COL1"
.LASF256:
	.string	"SPR_COL2"
.LASF257:
	.string	"SPR_COL3"
.LASF258:
	.string	"SPR_COL4"
.LASF267:
	.string	"SPR_COL5"
.LASF261:
	.string	"SPR_COL6"
.LASF1788:
	.string	"M_CheckParm"
.LASF1859:
	.string	"handle"
.LASF1665:
	.string	"messageString"
.LASF1793:
	.string	"M_Drawer"
.LASF1652:
	.string	"sfx_skesit"
.LASF1633:
	.string	"sfx_tink"
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
.LASF241:
	.string	"SPR_COLU"
.LASF593:
	.string	"S_FIRE26"
.LASF63:
	.string	"GS_FINALE"
.LASF595:
	.string	"S_FIRE28"
.LASF596:
	.string	"S_FIRE29"
.LASF1663:
	.string	"quickSaveSlot"
.LASF1513:
	.string	"ST_POSITIVE"
.LASF1344:
	.string	"MT_MISC30"
.LASF1259:
	.string	"action"
.LASF1346:
	.string	"MT_MISC32"
.LASF1347:
	.string	"MT_MISC33"
.LASF938:
	.string	"S_BSPI_PAIN"
.LASF1349:
	.string	"MT_MISC35"
.LASF410:
	.string	"S_BFGEXP"
.LASF94:
	.string	"am_misl"
.LASF1352:
	.string	"MT_MISC38"
.LASF1353:
	.string	"MT_MISC39"
.LASF1492:
	.string	"floorpic"
.LASF940:
	.string	"S_BSPI_DIE1"
.LASF1523:
	.string	"NUMPSPRITES"
.LASF945:
	.string	"S_BSPI_DIE6"
.LASF1639:
	.string	"sfx_getpow"
.LASF1822:
	.string	"M_ChangeSensitivity"
.LASF641:
	.string	"S_SKEL_RAISE4"
.LASF1457:
	.string	"viewz"
.LASF59:
	.string	"unknown"
.LASF1720:
	.string	"scrnsize"
.LASF836:
	.string	"S_BOSS_RAISE1"
.LASF837:
	.string	"S_BOSS_RAISE2"
.LASF1278:
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
.LASF209:
	.string	"SPR_BKEY"
.LASF853:
	.string	"S_BOS2_ATK1"
.LASF854:
	.string	"S_BOS2_ATK2"
.LASF855:
	.string	"S_BOS2_ATK3"
.LASF243:
	.string	"SPR_GOR1"
.LASF250:
	.string	"SPR_GOR2"
.LASF36:
	.string	"_shortbuf"
.LASF252:
	.string	"SPR_GOR4"
.LASF253:
	.string	"SPR_GOR5"
.LASF1356:
	.string	"MT_MISC42"
.LASF1357:
	.string	"MT_MISC43"
.LASF610:
	.string	"S_SKEL_RUN1"
.LASF611:
	.string	"S_SKEL_RUN2"
.LASF612:
	.string	"S_SKEL_RUN3"
.LASF613:
	.string	"S_SKEL_RUN4"
.LASF614:
	.string	"S_SKEL_RUN5"
.LASF615:
	.string	"S_SKEL_RUN6"
.LASF616:
	.string	"S_SKEL_RUN7"
.LASF617:
	.string	"S_SKEL_RUN8"
.LASF618:
	.string	"S_SKEL_RUN9"
.LASF83:
	.string	"wp_missile"
.LASF1096:
	.string	"S_BEXP2"
.LASF1406:
	.string	"seestate"
.LASF791:
	.string	"S_HEAD_ATK1"
.LASF792:
	.string	"S_HEAD_ATK2"
.LASF793:
	.string	"S_HEAD_ATK3"
.LASF1507:
	.string	"slopetype"
.LASF1823:
	.string	"M_QuitDOOM"
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
.LASF144:
	.string	"angle"
.LASF1273:
	.string	"MT_FATSHOT"
.LASF229:
	.string	"SPR_CELL"
.LASF1810:
	.string	"M_StartMessage"
.LASF230:
	.string	"SPR_CELP"
.LASF1211:
	.string	"S_HEARTCOL"
.LASF1502:
	.string	"linecount"
.LASF1453:
	.string	"numlines"
.LASF1128:
	.string	"S_MEDI"
.LASF1135:
	.string	"S_PINV"
.LASF1322:
	.string	"MT_INS"
.LASF1365:
	.string	"MT_MISC51"
.LASF1366:
	.string	"MT_MISC52"
.LASF1320:
	.string	"MT_INV"
.LASF1368:
	.string	"MT_MISC54"
.LASF1225:
	.string	"S_BTORCHSHRT"
.LASF346:
	.string	"S_MISSILEUP"
.LASF1371:
	.string	"MT_MISC57"
.LASF60:
	.string	"Language_t"
.LASF1373:
	.string	"MT_MISC59"
.LASF1732:
	.string	"ReadMenu1"
.LASF523:
	.string	"S_SPOS_RAISE1"
.LASF1669:
	.string	"messageNeedsInput"
.LASF1550:
	.string	"sfx_dshtgn"
.LASF317:
	.string	"S_SGUNFLASH1"
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
.LASF869:
	.string	"S_BOS2_RAISE5"
.LASF17:
	.string	"_flags"
.LASF871:
	.string	"S_BOS2_RAISE7"
.LASF630:
	.string	"S_SKEL_PAIN"
.LASF1117:
	.string	"S_RKEY"
.LASF138:
	.string	"next"
.LASF1684:
	.string	"menu_s"
.LASF1562:
	.string	"sfx_firsht"
.LASF1827:
	.string	"M_ReadThis"
.LASF1554:
	.string	"sfx_plasma"
.LASF299:
	.string	"S_PISTOLUP"
.LASF985:
	.string	"S_CYBER_DIE8"
.LASF1567:
	.string	"sfx_dorcls"
.LASF10:
	.string	"__off_t"
.LASF1374:
	.string	"MT_MISC60"
.LASF1375:
	.string	"MT_MISC61"
.LASF1376:
	.string	"MT_MISC62"
.LASF1377:
	.string	"MT_MISC63"
.LASF1378:
	.string	"MT_MISC64"
.LASF1379:
	.string	"MT_MISC65"
.LASF1380:
	.string	"MT_MISC66"
.LASF1381:
	.string	"MT_MISC67"
.LASF414:
	.string	"S_EXPLODE1"
.LASF415:
	.string	"S_EXPLODE2"
.LASF416:
	.string	"S_EXPLODE3"
.LASF1645:
	.string	"sfx_manatk"
.LASF605:
	.string	"S_TRACEEXP1"
.LASF606:
	.string	"S_TRACEEXP2"
.LASF607:
	.string	"S_TRACEEXP3"
.LASF993:
	.string	"S_PAIN_RUN5"
.LASF1095:
	.string	"S_BEXP"
.LASF994:
	.string	"S_PAIN_RUN6"
.LASF1482:
	.string	"extralight"
.LASF1815:
	.string	"M_DrawEmptyCell"
.LASF1212:
	.string	"S_HEARTCOL2"
.LASF391:
	.string	"S_RBALLX1"
.LASF1553:
	.string	"sfx_dbload"
.LASF1420:
	.string	"height"
.LASF1305:
	.string	"MT_TELEPORTMAN"
.LASF37:
	.string	"_lock"
.LASF61:
	.string	"GS_LEVEL"
.LASF1384:
	.string	"MT_MISC70"
.LASF174:
	.string	"SPR_IFOG"
.LASF1386:
	.string	"MT_MISC72"
.LASF1387:
	.string	"MT_MISC73"
.LASF1388:
	.string	"MT_MISC74"
.LASF1389:
	.string	"MT_MISC75"
.LASF1390:
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
.LASF1675:
	.string	"saveOldString"
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
.LASF1021:
	.string	"S_SSWV_RUN7"
.LASF1022:
	.string	"S_SSWV_RUN8"
.LASF1200:
	.string	"S_SKULLCOL"
.LASF1753:
	.string	"load_end"
.LASF1272:
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
.LASF1681:
	.string	"routine"
.LASF50:
	.string	"shareware"
.LASF1125:
	.string	"S_YSKULL"
.LASF1126:
	.string	"S_YSKULL2"
.LASF227:
	.string	"SPR_ROCK"
.LASF1297:
	.string	"MT_ROCKET"
.LASF1395:
	.string	"MT_MISC81"
.LASF1396:
	.string	"MT_MISC82"
.LASF1397:
	.string	"MT_MISC83"
.LASF703:
	.string	"S_CPOS_ATK1"
.LASF704:
	.string	"S_CPOS_ATK2"
.LASF705:
	.string	"S_CPOS_ATK3"
.LASF706:
	.string	"S_CPOS_ATK4"
.LASF1264:
	.string	"MT_PLAYER"
.LASF1668:
	.string	"messageLastMenuActive"
.LASF239:
	.string	"SPR_SHOT"
.LASF432:
	.string	"S_IFOG2"
.LASF433:
	.string	"S_IFOG3"
.LASF434:
	.string	"S_IFOG4"
.LASF435:
	.string	"S_IFOG5"
.LASF168:
	.string	"SPR_PLSE"
.LASF160:
	.string	"SPR_PLSF"
.LASF159:
	.string	"SPR_PLSG"
.LASF828:
	.string	"S_BOSS_PAIN2"
.LASF1539:
	.string	"consoleplayer"
.LASF528:
	.string	"S_VILE_STND"
.LASF1056:
	.string	"S_COMMKEEN6"
.LASF1057:
	.string	"S_COMMKEEN7"
.LASF1058:
	.string	"S_COMMKEEN8"
.LASF167:
	.string	"SPR_PLSS"
.LASF907:
	.string	"S_SPID_PAIN2"
.LASF1782:
	.string	"V_DrawPatchDirect"
.LASF1580:
	.string	"sfx_oof"
.LASF1421:
	.string	"mass"
.LASF1621:
	.string	"sfx_posact"
.LASF280:
	.string	"SPR_POB1"
.LASF281:
	.string	"SPR_POB2"
.LASF1838:
	.string	"M_DrawNewGame"
.LASF1129:
	.string	"S_SOUL"
.LASF1612:
	.string	"sfx_skldth"
.LASF1139:
	.string	"S_PSTR"
.LASF1711:
	.string	"violence"
.LASF69:
	.string	"sk_hard"
.LASF971:
	.string	"S_CYBER_ATK1"
.LASF972:
	.string	"S_CYBER_ATK2"
.LASF973:
	.string	"S_CYBER_ATK3"
.LASF974:
	.string	"S_CYBER_ATK4"
.LASF975:
	.string	"S_CYBER_ATK5"
.LASF976:
	.string	"S_CYBER_ATK6"
.LASF1166:
	.string	"S_BFUG"
.LASF206:
	.string	"SPR_FCAN"
.LASF649:
	.string	"S_FATT_STND"
.LASF1086:
	.string	"S_BRAINEXPLODE1"
.LASF1087:
	.string	"S_BRAINEXPLODE2"
.LASF1088:
	.string	"S_BRAINEXPLODE3"
.LASF370:
	.string	"S_BFGUP"
.LASF211:
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
.LASF1275:
	.string	"MT_TROOP"
.LASF557:
	.string	"S_VILE_PAIN2"
.LASF685:
	.string	"S_FATT_RAISE1"
.LASF84:
	.string	"wp_plasma"
.LASF687:
	.string	"S_FATT_RAISE3"
.LASF688:
	.string	"S_FATT_RAISE4"
.LASF689:
	.string	"S_FATT_RAISE5"
.LASF690:
	.string	"S_FATT_RAISE6"
.LASF23:
	.string	"_IO_write_end"
.LASF692:
	.string	"S_FATT_RAISE8"
.LASF1840:
	.string	"M_MusicVol"
.LASF401:
	.string	"S_ROCKET"
.LASF1296:
	.string	"MT_HEADSHOT"
.LASF1848:
	.string	"M_QuickSave"
.LASF1689:
	.string	"menu_t"
.LASF1505:
	.string	"sidenum"
.LASF954:
	.string	"S_ARACH_PLAZ"
.LASF1193:
	.string	"S_STALAGTITE"
.LASF795:
	.string	"S_HEAD_PAIN2"
.LASF796:
	.string	"S_HEAD_PAIN3"
.LASF109:
	.string	"byte"
.LASF453:
	.string	"S_PLAY_XDIE2"
.LASF77:
	.string	"it_redskull"
.LASF1622:
	.string	"sfx_bgact"
.LASF1303:
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
.LASF194:
	.string	"SPR_APLS"
.LASF1664:
	.string	"messageToPrint"
.LASF1474:
	.string	"refire"
.LASF119:
	.string	"event_t"
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
.LASF1646:
	.string	"sfx_mandth"
.LASF111:
	.string	"ev_keyup"
.LASF185:
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
.LASF1746:
	.string	"SoundDef"
.LASF79:
	.string	"wp_fist"
.LASF1414:
	.string	"missilestate"
.LASF215:
	.string	"SPR_STIM"
.LASF1851:
	.string	"M_SaveSelect"
.LASF762:
	.string	"S_SARG_STND"
.LASF987:
	.string	"S_CYBER_DIE10"
.LASF165:
	.string	"SPR_BAL1"
.LASF166:
	.string	"SPR_BAL2"
.LASF188:
	.string	"SPR_BAL7"
.LASF1440:
	.string	"info"
.LASF1616:
	.string	"sfx_bspdth"
.LASF1181:
	.string	"S_HEADSONSTICK"
.LASF1651:
	.string	"sfx_skeact"
.LASF1435:
	.string	"ceilingz"
.LASF1790:
	.string	"M_Ticker"
.LASF1647:
	.string	"sfx_sssit"
.LASF638:
	.string	"S_SKEL_RAISE1"
.LASF153:
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
.LASF152:
	.string	"SPR_SHTF"
.LASF148:
	.string	"SPR_SHTG"
.LASF430:
	.string	"S_IFOG01"
.LASF431:
	.string	"S_IFOG02"
.LASF916:
	.string	"S_SPID_DIE9"
.LASF1791:
	.string	"M_ClearMenus"
.LASF1158:
	.string	"S_AMMO"
.LASF112:
	.string	"ev_mouse"
.LASF95:
	.string	"NUMAMMO"
.LASF1725:
	.string	"opt_end"
.LASF1816:
	.string	"M_DrawThermo"
.LASF989:
	.string	"S_PAIN_RUN1"
.LASF990:
	.string	"S_PAIN_RUN2"
.LASF991:
	.string	"S_PAIN_RUN3"
.LASF992:
	.string	"S_PAIN_RUN4"
.LASF274:
	.string	"SPR_HDB1"
.LASF275:
	.string	"SPR_HDB2"
.LASF276:
	.string	"SPR_HDB3"
.LASF277:
	.string	"SPR_HDB4"
.LASF278:
	.string	"SPR_HDB5"
.LASF279:
	.string	"SPR_HDB6"
.LASF1265:
	.string	"MT_POSSESSED"
.LASF324:
	.string	"S_DSGUN3"
.LASF325:
	.string	"S_DSGUN4"
.LASF115:
	.string	"type"
.LASF344:
	.string	"S_MISSILE"
.LASF1777:
	.string	"strlen"
.LASF1172:
	.string	"S_SHOT2"
.LASF1239:
	.string	"S_HANGTLOOKDN"
.LASF1443:
	.string	"movedir"
.LASF1676:
	.string	"inhelpscreens"
.LASF716:
	.string	"S_CPOS_XDIE1"
.LASF1775:
	.string	"S_SetSfxVolume"
.LASF1737:
	.string	"ReadMenu2"
.LASF1787:
	.string	"sprintf"
.LASF133:
	.string	"actionf_t"
.LASF1770:
	.string	"I_Quit"
.LASF128:
	.string	"actionf_v"
.LASF235:
	.string	"SPR_MGUN"
.LASF1277:
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
.LASF1800:
	.string	"mousewait"
.LASF1412:
	.string	"painsound"
.LASF1695:
	.string	"newgame"
.LASF1820:
	.string	"choice"
.LASF1826:
	.string	"M_ReadThis2"
.LASF1785:
	.string	"read"
.LASF1529:
	.string	"player_t"
.LASF1495:
	.string	"special"
.LASF1014:
	.string	"S_SSWV_STND2"
.LASF236:
	.string	"SPR_CSAW"
.LASF1149:
	.string	"S_PMAP"
.LASF30:
	.string	"_chain"
.LASF1704:
	.string	"ep_end"
.LASF1812:
	.string	"M_DrawSelCell"
.LASF1155:
	.string	"S_PVIS"
.LASF369:
	.string	"S_BFGDOWN"
.LASF1594:
	.string	"sfx_vilsit"
.LASF1289:
	.string	"MT_BOSSBRAIN"
.LASF182:
	.string	"SPR_SKEL"
.LASF364:
	.string	"S_PLASMA1"
.LASF365:
	.string	"S_PLASMA2"
.LASF1726:
	.string	"options_e"
.LASF1229:
	.string	"S_GTORCHSHRT"
.LASF1724:
	.string	"soundvol"
.LASF1581:
	.string	"sfx_telept"
.LASF1454:
	.string	"firstline"
.LASF1163:
	.string	"S_SHEL"
.LASF920:
	.string	"S_BSPI_STND2"
.LASF4:
	.string	"unsigned char"
.LASF1615:
	.string	"sfx_spidth"
.LASF180:
	.string	"SPR_FATB"
.LASF285:
	.string	"NUMSPRITES"
.LASF186:
	.string	"SPR_SARG"
.LASF403:
	.string	"S_BFGSHOT2"
.LASF184:
	.string	"SPR_FATT"
.LASF1602:
	.string	"sfx_skeswg"
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
.LASF1862:
	.string	"_IO_lock_t"
.LASF890:
	.string	"S_SPID_RUN1"
.LASF891:
	.string	"S_SPID_RUN2"
.LASF892:
	.string	"S_SPID_RUN3"
.LASF893:
	.string	"S_SPID_RUN4"
.LASF894:
	.string	"S_SPID_RUN5"
.LASF895:
	.string	"S_SPID_RUN6"
.LASF896:
	.string	"S_SPID_RUN7"
.LASF897:
	.string	"S_SPID_RUN8"
.LASF141:
	.string	"float"
.LASF1097:
	.string	"S_BEXP3"
.LASF1098:
	.string	"S_BEXP4"
.LASF1560:
	.string	"sfx_rlaunc"
.LASF1186:
	.string	"S_DEADSTICK"
.LASF1801:
	.string	"mousey"
.LASF1483:
	.string	"fixedcolormap"
.LASF1468:
	.string	"weaponowned"
.LASF1748:
	.string	"load2"
.LASF1749:
	.string	"load3"
.LASF1750:
	.string	"load4"
.LASF1751:
	.string	"load5"
.LASF1306:
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
.LASF1649:
	.string	"sfx_keenpn"
.LASF155:
	.string	"SPR_CHGF"
.LASF154:
	.string	"SPR_CHGG"
.LASF1678:
	.string	"endstring"
.LASF699:
	.string	"S_CPOS_RUN5"
.LASF958:
	.string	"S_ARACH_PLEX3"
.LASF700:
	.string	"S_CPOS_RUN6"
.LASF960:
	.string	"S_ARACH_PLEX5"
.LASF701:
	.string	"S_CPOS_RUN7"
.LASF1578:
	.string	"sfx_itemup"
.LASF1445:
	.string	"target"
.LASF265:
	.string	"SPR_CEYE"
.LASF1511:
	.string	"ST_HORIZONTAL"
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
.LASF1717:
	.string	"endgame"
.LASF1680:
	.string	"name"
.LASF1512:
	.string	"ST_VERTICAL"
.LASF222:
	.string	"SPR_SUIT"
.LASF872:
	.string	"S_SKULL_STND"
.LASF1698:
	.string	"readthis"
.LASF1847:
	.string	"M_QuickLoadResponse"
.LASF1546:
	.string	"sfx_None"
.LASF906:
	.string	"S_SPID_PAIN"
.LASF1401:
	.string	"NUMMOBJTYPES"
.LASF204:
	.string	"SPR_BAR1"
.LASF319:
	.string	"S_DSGUN"
.LASF1198:
	.string	"S_CANDLESTIK"
.LASF101:
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
.LASF187:
	.string	"SPR_HEAD"
.LASF1432:
	.string	"bprev"
.LASF1723:
	.string	"option_empty2"
.LASF248:
	.string	"SPR_POL1"
.LASF244:
	.string	"SPR_POL2"
.LASF247:
	.string	"SPR_POL3"
.LASF246:
	.string	"SPR_POL4"
.LASF245:
	.string	"SPR_POL5"
.LASF249:
	.string	"SPR_POL6"
.LASF1534:
	.string	"netgame"
.LASF1093:
	.string	"S_BAR1"
.LASF1191:
	.string	"S_MEAT4"
.LASF585:
	.string	"S_FIRE18"
.LASF1837:
	.string	"M_NewGame"
.LASF1744:
	.string	"sound_e"
.LASF1307:
	.string	"MT_MISC0"
.LASF1179:
	.string	"S_DEADTORSO"
.LASF321:
	.string	"S_DSGUNUP"
.LASF1641:
	.string	"sfx_boscub"
.LASF1533:
	.string	"language"
.LASF1535:
	.string	"snd_SfxVolume"
.LASF1603:
	.string	"sfx_pldeth"
.LASF1404:
	.string	"spawnstate"
.LASF1850:
	.string	"M_SaveGame"
.LASF730:
	.string	"S_TROO_STND2"
.LASF1250:
	.string	"S_TECH2LAMP"
.LASF1427:
	.string	"mobj_s"
.LASF1536:
	.string	"snd_MusicVolume"
.LASF1566:
	.string	"sfx_doropn"
.LASF1687:
	.string	"menuitems"
.LASF1293:
	.string	"MT_SPAWNFIRE"
.LASF1843:
	.string	"M_DrawSound"
.LASF1268:
	.string	"MT_FIRE"
.LASF1786:
	.string	"open"
.LASF1260:
	.string	"nextstate"
.LASF827:
	.string	"S_BOSS_PAIN"
.LASF198:
	.string	"SPR_SSWV"
.LASF22:
	.string	"_IO_write_ptr"
.LASF1236:
	.string	"S_RTORCHSHRT4"
.LASF389:
	.string	"S_RBALL1"
.LASF390:
	.string	"S_RBALL2"
.LASF1436:
	.string	"momx"
.LASF1194:
	.string	"S_TALLGRNCOL"
.LASF1740:
	.string	"sfx_empty1"
.LASF1742:
	.string	"sfx_empty2"
.LASF1776:
	.string	"S_StartSound"
.LASF1774:
	.string	"S_SetMusicVolume"
.LASF1448:
	.string	"lastlook"
.LASF1613:
	.string	"sfx_brsdth"
.LASF1549:
	.string	"sfx_sgcock"
.LASF1528:
	.string	"playerstate_t"
.LASF1183:
	.string	"S_HEADONASTICK"
.LASF1764:
	.string	"strncpy"
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
.LASF70:
	.string	"sk_nightmare"
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
.LASF56:
	.string	"english"
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
.LASF1424:
	.string	"flags"
.LASF784:
	.string	"S_SARG_RAISE2"
.LASF785:
	.string	"S_SARG_RAISE3"
.LASF428:
	.string	"S_TFOG10"
.LASF786:
	.string	"S_SARG_RAISE4"
.LASF1784:
	.string	"close"
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
.LASF91:
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
.LASF1759:
	.string	"tempstring"
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
.LASF46:
	.string	"FILE"
.LASF642:
	.string	"S_SKEL_RAISE5"
.LASF643:
	.string	"S_SKEL_RAISE6"
.LASF1202:
	.string	"S_BIGTREE"
.LASF1758:
	.string	"SaveDef"
.LASF1834:
	.string	"M_ChooseSkill"
.LASF1514:
	.string	"ST_NEGATIVE"
.LASF1112:
	.string	"S_BON2C"
.LASF1113:
	.string	"S_BON2D"
.LASF418:
	.string	"S_TFOG01"
.LASF419:
	.string	"S_TFOG02"
.LASF237:
	.string	"SPR_LAUN"
.LASF474:
	.string	"S_POSS_PAIN"
.LASF768:
	.string	"S_SARG_RUN5"
.LASF769:
	.string	"S_SARG_RUN6"
.LASF1271:
	.string	"MT_SMOKE"
.LASF1285:
	.string	"MT_CYBORG"
.LASF1854:
	.string	"M_DrawSave"
.LASF1422:
	.string	"damage"
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
.LASF1671:
	.string	"gammamsg"
.LASF1574:
	.string	"sfx_vipain"
.LASF14:
	.string	"size_t"
.LASF1251:
	.string	"S_TECH2LAMP2"
.LASF1487:
	.string	"mobj_t"
.LASF1115:
	.string	"S_BKEY"
.LASF1760:
	.string	"detailNames"
.LASF99:
	.string	"pw_invisibility"
.LASF1545:
	.string	"mouseSensitivity"
.LASF1694:
	.string	"currentMenu"
.LASF202:
	.string	"SPR_ARM1"
.LASF203:
	.string	"SPR_ARM2"
.LASF1267:
	.string	"MT_VILE"
.LASF1565:
	.string	"sfx_pstop"
.LASF75:
	.string	"it_blueskull"
.LASF1499:
	.string	"soundorg"
.LASF362:
	.string	"S_PLASMADOWN"
.LASF674:
	.string	"S_FATT_PAIN2"
.LASF1650:
	.string	"sfx_keendt"
.LASF1072:
	.string	"S_BRAINEYESEE"
.LASF1515:
	.string	"slopetype_t"
.LASF609:
	.string	"S_SKEL_STND2"
.LASF962:
	.string	"S_CYBER_STND2"
.LASF1263:
	.string	"state_t"
.LASF806:
	.string	"S_HEAD_RAISE4"
.LASF1032:
	.string	"S_SSWV_DIE2"
.LASF51:
	.string	"registered"
.LASF1625:
	.string	"sfx_bspwlk"
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
.LASF809:
	.string	"S_BRBALL1"
.LASF810:
	.string	"S_BRBALL2"
.LASF1458:
	.string	"viewheight"
.LASF1431:
	.string	"bnext"
.LASF1644:
	.string	"sfx_bosdth"
.LASF1817:
	.string	"thermWidth"
.LASF26:
	.string	"_IO_save_base"
.LASF663:
	.string	"S_FATT_ATK1"
.LASF196:
	.string	"SPR_CYBR"
.LASF664:
	.string	"S_FATT_ATK2"
.LASF567:
	.string	"S_VILE_DIE10"
.LASF157:
	.string	"SPR_MISF"
.LASF156:
	.string	"SPR_MISG"
.LASF1825:
	.string	"M_FinishReadThis"
.LASF169:
	.string	"SPR_MISL"
.LASF1121:
	.string	"S_BSKULL"
.LASF200:
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
.LASF271:
	.string	"SPR_SMBT"
.LASF1630:
	.string	"sfx_hoof"
.LASF1799:
	.string	"joywait"
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
.LASF1494:
	.string	"lightlevel"
.LASF262:
	.string	"SPR_TRE1"
.LASF263:
	.string	"SPR_TRE2"
.LASF919:
	.string	"S_BSPI_STND"
.LASF1561:
	.string	"sfx_rxplod"
.LASF1413:
	.string	"meleestate"
.LASF1469:
	.string	"ammo"
.LASF709:
	.string	"S_CPOS_DIE1"
.LASF270:
	.string	"SPR_TRED"
.LASF163:
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
.LASF173:
	.string	"SPR_TFOG"
.LASF377:
	.string	"S_BLOOD1"
.LASF378:
	.string	"S_BLOOD2"
.LASF379:
	.string	"S_BLOOD3"
.LASF1836:
	.string	"M_DrawEpisode"
.LASF1261:
	.string	"misc1"
.LASF1262:
	.string	"misc2"
.LASF1572:
	.string	"sfx_dmpain"
.LASF122:
	.string	"angleturn"
.LASF40:
	.string	"_wide_data"
.LASF1736:
	.string	"read_e2"
.LASF1169:
	.string	"S_LAUN"
.LASF429:
	.string	"S_IFOG"
.LASF176:
	.string	"SPR_POSS"
.LASF181:
	.string	"SPR_FBXP"
.LASF1672:
	.string	"saveStringEnter"
.LASF978:
	.string	"S_CYBER_DIE1"
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
.LASF1449:
	.string	"spawnpoint"
.LASF1256:
	.string	"sprite"
.LASF57:
	.string	"french"
.LASF1692:
	.string	"whichSkull"
.LASF1334:
	.string	"MT_MISC23"
.LASF1520:
	.string	"patch_t"
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
.LASF1403:
	.string	"doomednum"
.LASF305:
	.string	"S_SGUN"
.LASF1195:
	.string	"S_SHRTGRNCOL"
.LASF1648:
	.string	"sfx_ssdth"
.LASF1576:
	.string	"sfx_pepain"
.LASF1638:
	.string	"sfx_flamst"
.LASF880:
	.string	"S_SKULL_PAIN"
.LASF1729:
	.string	"rdthsempty1"
.LASF1734:
	.string	"rdthsempty2"
.LASF1292:
	.string	"MT_SPAWNSHOT"
.LASF1805:
	.string	"M_WriteText"
.LASF1821:
	.string	"M_ChangeDetail"
.LASF604:
	.string	"S_TRACER2"
.LASF1203:
	.string	"S_TECHPILLAR"
.LASF608:
	.string	"S_SKEL_STND"
.LASF763:
	.string	"S_SARG_STND2"
.LASF1631:
	.string	"sfx_metal"
.LASF54:
	.string	"indetermined"
.LASF509:
	.string	"S_SPOS_DIE1"
.LASF510:
	.string	"S_SPOS_DIE2"
.LASF511:
	.string	"S_SPOS_DIE3"
.LASF512:
	.string	"S_SPOS_DIE4"
.LASF513:
	.string	"S_SPOS_DIE5"
.LASF1527:
	.string	"PST_REBORN"
.LASF1855:
	.string	"M_LoadGame"
.LASF1598:
	.string	"sfx_sgtatk"
.LASF1238:
	.string	"S_HANGBNOBRAIN"
.LASF1595:
	.string	"sfx_mansit"
.LASF772:
	.string	"S_SARG_ATK1"
.LASF773:
	.string	"S_SARG_ATK2"
.LASF774:
	.string	"S_SARG_ATK3"
.LASF363:
	.string	"S_PLASMAUP"
.LASF1258:
	.string	"tics"
.LASF1666:
	.string	"messx"
.LASF1119:
	.string	"S_YKEY"
.LASF1569:
	.string	"sfx_swtchn"
.LASF1418:
	.string	"speed"
.LASF1853:
	.string	"slot"
.LASF332:
	.string	"S_DSNR1"
.LASF1001:
	.string	"S_PAIN_DIE1"
.LASF12:
	.string	"__ssize_t"
.LASF1570:
	.string	"sfx_swtchx"
.LASF531:
	.string	"S_VILE_RUN2"
.LASF1636:
	.string	"sfx_itmbk"
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
.LASF129:
	.string	"actionf_p1"
.LASF130:
	.string	"actionf_p2"
.LASF233:
	.string	"SPR_BPAK"
.LASF702:
	.string	"S_CPOS_RUN8"
.LASF1099:
	.string	"S_BEXP5"
.LASF1653:
	.string	"sfx_skeatk"
.LASF146:
	.string	"mapthing_t"
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
.LASF131:
	.string	"acp1"
.LASF132:
	.string	"acp2"
.LASF787:
	.string	"S_SARG_RAISE5"
.LASF788:
	.string	"S_SARG_RAISE6"
.LASF1674:
	.string	"saveCharIndex"
.LASF1605:
	.string	"sfx_podth1"
.LASF1606:
	.string	"sfx_podth2"
.LASF1607:
	.string	"sfx_podth3"
.LASF1806:
	.string	"M_Responder"
.LASF1367:
	.string	"MT_MISC53"
.LASF1655:
	.string	"NUMSFX"
.LASF272:
	.string	"SPR_SMGT"
.LASF1063:
	.string	"S_KEENPAIN"
.LASF411:
	.string	"S_BFGEXP2"
.LASF412:
	.string	"S_BFGEXP3"
.LASF413:
	.string	"S_BFGEXP4"
.LASF342:
	.string	"S_CHAINFLASH1"
.LASF343:
	.string	"S_CHAINFLASH2"
.LASF298:
	.string	"S_PISTOLDOWN"
.LASF1700:
	.string	"main_end"
.LASF58:
	.string	"german"
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
.LASF1407:
	.string	"seesound"
.LASF65:
	.string	"gamestate_t"
.LASF1151:
	.string	"S_PMAP3"
.LASF1152:
	.string	"S_PMAP4"
.LASF1153:
	.string	"S_PMAP5"
.LASF1154:
	.string	"S_PMAP6"
.LASF1733:
	.string	"ReadDef1"
.LASF1738:
	.string	"ReadDef2"
.LASF1480:
	.string	"bonuscount"
.LASF881:
	.string	"S_SKULL_PAIN2"
.LASF1075:
	.string	"S_SPAWN2"
.LASF1541:
	.string	"demoplayback"
.LASF1411:
	.string	"painchance"
.LASF707:
	.string	"S_CPOS_PAIN"
.LASF1491:
	.string	"ceilingheight"
.LASF52:
	.string	"commercial"
.LASF1741:
	.string	"music_vol"
.LASF1012:
	.string	"S_PAIN_RAISE6"
.LASF1501:
	.string	"specialdata"
.LASF1350:
	.string	"MT_MISC36"
.LASF1803:
	.string	"mousex"
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
.LASF1861:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1475:
	.string	"killcount"
.LASF957:
	.string	"S_ARACH_PLEX2"
.LASF1201:
	.string	"S_TORCHTREE"
.LASF1013:
	.string	"S_SSWV_STND"
.LASF959:
	.string	"S_ARACH_PLEX4"
.LASF1060:
	.string	"S_COMMKEEN10"
.LASF1061:
	.string	"S_COMMKEEN11"
.LASF1062:
	.string	"S_COMMKEEN12"
.LASF977:
	.string	"S_CYBER_PAIN"
.LASF1187:
	.string	"S_LIVESTICK"
.LASF104:
	.string	"stderr"
.LASF496:
	.string	"S_SPOS_RUN1"
.LASF254:
	.string	"SPR_SMIT"
.LASF108:
	.string	"boolean"
.LASF499:
	.string	"S_SPOS_RUN4"
.LASF500:
	.string	"S_SPOS_RUN5"
.LASF191:
	.string	"SPR_SKUL"
.LASF502:
	.string	"S_SPOS_RUN7"
.LASF503:
	.string	"S_SPOS_RUN8"
.LASF1160:
	.string	"S_BROK"
.LASF1405:
	.string	"spawnhealth"
.LASF1614:
	.string	"sfx_cybdth"
.LASF290:
	.string	"S_PUNCHDOWN"
.LASF956:
	.string	"S_ARACH_PLEX"
.LASF1217:
	.string	"S_GREENTORCH"
.LASF87:
	.string	"wp_supershotgun"
.LASF356:
	.string	"S_SAWDOWN"
.LASF28:
	.string	"_IO_save_end"
.LASF1559:
	.string	"sfx_sawhit"
.LASF1712:
	.string	"nightmare"
.LASF1558:
	.string	"sfx_sawful"
.LASF1255:
	.string	"statenum_t"
.LASF1295:
	.string	"MT_TROOPSHOT"
.LASF1280:
	.string	"MT_BRUISERSHOT"
.LASF1626:
	.string	"sfx_vilact"
.LASF1722:
	.string	"mousesens"
.LASF126:
	.string	"ticcmd_t"
.LASF1400:
	.string	"MT_MISC86"
.LASF961:
	.string	"S_CYBER_STND"
.LASF1591:
	.string	"sfx_spisit"
.LASF1841:
	.string	"M_SfxVol"
.LASF444:
	.string	"S_PLAY_PAIN2"
.LASF1557:
	.string	"sfx_sawidl"
.LASF839:
	.string	"S_BOSS_RAISE4"
.LASF840:
	.string	"S_BOSS_RAISE5"
.LASF1257:
	.string	"frame"
.LASF183:
	.string	"SPR_MANF"
.LASF694:
	.string	"S_CPOS_STND2"
.LASF1624:
	.string	"sfx_bspact"
.LASF507:
	.string	"S_SPOS_PAIN"
.LASF858:
	.string	"S_BOS2_DIE1"
.LASF81:
	.string	"wp_shotgun"
.LASF1804:
	.string	"lastx"
.LASF1802:
	.string	"lasty"
.LASF1660:
	.string	"detailLevel"
.LASF475:
	.string	"S_POSS_PAIN2"
.LASF1301:
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
.LASF1485:
	.string	"psprites"
.LASF1167:
	.string	"S_MGUN"
.LASF1279:
	.string	"MT_BRUISER"
.LASF232:
	.string	"SPR_SBOX"
.LASF1477:
	.string	"secretcount"
.LASF1402:
	.string	"mobjtype_t"
.LASF1416:
	.string	"xdeathstate"
.LASF1462:
	.string	"powers"
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
.LASF5:
	.string	"short unsigned int"
.LASF1281:
	.string	"MT_KNIGHT"
.LASF7:
	.string	"signed char"
.LASF121:
	.string	"sidemove"
.LASF1423:
	.string	"activesound"
.LASF1864:
	.string	"M_ReadSaveStrings"
.LASF508:
	.string	"S_SPOS_PAIN2"
.LASF1796:
	.string	"start"
.LASF1629:
	.string	"sfx_punch"
.LASF672:
	.string	"S_FATT_ATK10"
.LASF1354:
	.string	"MT_MISC40"
.LASF269:
	.string	"SPR_TGRN"
.LASF1521:
	.string	"ps_weapon"
.LASF1326:
	.string	"MT_MEGA"
.LASF171:
	.string	"SPR_BFE1"
.LASF172:
	.string	"SPR_BFE2"
.LASF1500:
	.string	"thinglist"
.LASF1360:
	.string	"MT_MISC46"
.LASF1679:
	.string	"status"
.LASF1763:
	.string	"quitsounds2"
.LASF1519:
	.string	"columnofs"
.LASF1860:
	.string	"count"
.LASF1288:
	.string	"MT_KEEN"
.LASF1498:
	.string	"blockbox"
.LASF1073:
	.string	"S_BRAINEYE1"
.LASF729:
	.string	"S_TROO_STND"
.LASF676:
	.string	"S_FATT_DIE2"
.LASF367:
	.string	"S_PLASMAFLASH2"
.LASF90:
	.string	"weapontype_t"
.LASF124:
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
.LASF1471:
	.string	"attackdown"
.LASF1714:
	.string	"newgame_e"
.LASF147:
	.string	"SPR_TROO"
.LASF11:
	.string	"__off64_t"
.LASF158:
	.string	"SPR_SAWG"
.LASF1317:
	.string	"MT_MISC10"
.LASF1587:
	.string	"sfx_sgtsit"
.LASF207:
	.string	"SPR_BON1"
.LASF20:
	.string	"_IO_read_base"
.LASF1833:
	.string	"M_Episode"
.LASF38:
	.string	"_offset"
.LASF1795:
	.string	"string"
.LASF74:
	.string	"it_redcard"
.LASF1196:
	.string	"S_TALLREDCOL"
.LASF1773:
	.string	"G_DeferedInitNew"
.LASF1441:
	.string	"state"
.LASF25:
	.string	"_IO_buf_end"
.LASF1171:
	.string	"S_SHOT"
.LASF1027:
	.string	"S_SSWV_ATK5"
.LASF1818:
	.string	"thermDot"
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
.LASF1463:
	.string	"cards"
.LASF1703:
	.string	"MainDef"
.LASF264:
	.string	"SPR_ELEC"
.LASF1065:
	.string	"S_BRAIN"
.LASF1811:
	.string	"input"
.LASF1772:
	.string	"D_StartTitle"
.LASF1691:
	.string	"skullAnimCounter"
.LASF1283:
	.string	"MT_SPIDER"
.LASF1148:
	.string	"S_SUIT"
.LASF162:
	.string	"SPR_BFGF"
.LASF161:
	.string	"SPR_BFGG"
.LASF1540:
	.string	"usergame"
.LASF44:
	.string	"_mode"
.LASF988:
	.string	"S_PAIN_STND"
.LASF1589:
	.string	"sfx_brssit"
.LASF21:
	.string	"_IO_write_base"
.LASF404:
	.string	"S_BFGLAND"
.LASF1094:
	.string	"S_BAR2"
.LASF1467:
	.string	"pendingweapon"
.LASF139:
	.string	"function"
.LASF1632:
	.string	"sfx_chgun"
.LASF1661:
	.string	"screenblocks"
.LASF92:
	.string	"am_shell"
.LASF1543:
	.string	"gametic"
.LASF1808:
	.string	"M_StringWidth"
.LASF1783:
	.string	"W_CacheLumpName"
.LASF1439:
	.string	"validcount"
.LASF1830:
	.string	"M_ChangeMessages"
.LASF1538:
	.string	"menuactive"
.LASF1478:
	.string	"message"
.LASF684:
	.string	"S_FATT_DIE10"
.LASF78:
	.string	"NUMCARDS"
.LASF1221:
	.string	"S_REDTORCH"
.LASF1299:
	.string	"MT_BFG"
.LASF468:
	.string	"S_POSS_RUN6"
.LASF1600:
	.string	"sfx_vilatk"
.LASF1828:
	.string	"M_EndGame"
.LASF1659:
	.string	"showMessages"
.LASF178:
	.string	"SPR_VILE"
.LASF1780:
	.string	"G_SaveGame"
.LASF1635:
	.string	"sfx_bdcls"
.LASF1302:
	.string	"MT_BLOOD"
.LASF297:
	.string	"S_PISTOL"
.LASF1701:
	.string	"main_e"
.LASF107:
	.string	"true"
.LASF68:
	.string	"sk_medium"
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
.LASF113:
	.string	"ev_joystick"
.LASF1686:
	.string	"prevMenu"
.LASF1437:
	.string	"momy"
.LASF9:
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
.LASF1042:
	.string	"S_SSWV_XDIE7"
.LASF1043:
	.string	"S_SSWV_XDIE8"
.LASF1044:
	.string	"S_SSWV_XDIE9"
.LASF334:
	.string	"S_DSGUNFLASH1"
.LASF335:
	.string	"S_DSGUNFLASH2"
.LASF1333:
	.string	"MT_MISC22"
.LASF1486:
	.string	"didsecret"
.LASF592:
	.string	"S_FIRE25"
.LASF686:
	.string	"S_FATT_RAISE2"
.LASF1369:
	.string	"MT_MISC55"
.LASF1459:
	.string	"deltaviewheight"
.LASF594:
	.string	"S_FIRE27"
.LASF76:
	.string	"it_yellowskull"
.LASF1124:
	.string	"S_RSKULL2"
.LASF1450:
	.string	"tracer"
.LASF691:
	.string	"S_FATT_RAISE7"
.LASF899:
	.string	"S_SPID_RUN10"
.LASF900:
	.string	"S_SPID_RUN11"
.LASF901:
	.string	"S_SPID_RUN12"
.LASF47:
	.string	"_IO_marker"
.LASF1846:
	.string	"M_QuickLoad"
.LASF1727:
	.string	"OptionsMenu"
.LASF1779:
	.string	"strcpy"
.LASF1794:
	.string	"rcsid"
.LASF1579:
	.string	"sfx_wpnup"
.LASF1781:
	.string	"G_LoadGame"
.LASF1845:
	.string	"M_DrawReadThis1"
.LASF1844:
	.string	"M_DrawReadThis2"
.LASF1697:
	.string	"savegame"
.LASF1735:
	.string	"read2_end"
.LASF1425:
	.string	"raisestate"
.LASF350:
	.string	"S_MISSILEFLASH1"
.LASF351:
	.string	"S_MISSILEFLASH2"
.LASF352:
	.string	"S_MISSILEFLASH3"
.LASF353:
	.string	"S_MISSILEFLASH4"
.LASF1809:
	.string	"M_StopMessage"
.LASF1708:
	.string	"killthings"
.LASF213:
	.string	"SPR_RSKU"
.LASF1599:
	.string	"sfx_skepch"
.LASF1842:
	.string	"M_Sound"
.LASF134:
	.string	"think_t"
.LASF120:
	.string	"forwardmove"
.LASF711:
	.string	"S_CPOS_DIE3"
.LASF712:
	.string	"S_CPOS_DIE4"
.LASF713:
	.string	"S_CPOS_DIE5"
.LASF714:
	.string	"S_CPOS_DIE6"
.LASF715:
	.string	"S_CPOS_DIE7"
.LASF1718:
	.string	"messages"
.LASF1530:
	.string	"usegamma"
.LASF1156:
	.string	"S_PVIS2"
.LASF1294:
	.string	"MT_BARREL"
.LASF888:
	.string	"S_SPID_STND"
.LASF660:
	.string	"S_FATT_RUN10"
.LASF661:
	.string	"S_FATT_RUN11"
.LASF662:
	.string	"S_FATT_RUN12"
.LASF1286:
	.string	"MT_PAIN"
.LASF48:
	.string	"_IO_codecvt"
.LASF1214:
	.string	"S_BLUETORCH2"
.LASF1426:
	.string	"mobjinfo_t"
.LASF1215:
	.string	"S_BLUETORCH3"
.LASF1582:
	.string	"sfx_posit1"
.LASF1216:
	.string	"S_BLUETORCH4"
.LASF273:
	.string	"SPR_SMRT"
.LASF1584:
	.string	"sfx_posit3"
.LASF375:
	.string	"S_BFGFLASH1"
.LASF376:
	.string	"S_BFGFLASH2"
.LASF909:
	.string	"S_SPID_DIE2"
.LASF190:
	.string	"SPR_BOS2"
.LASF912:
	.string	"S_SPID_DIE5"
.LASF913:
	.string	"S_SPID_DIE6"
.LASF1642:
	.string	"sfx_bossit"
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
.LASF201:
	.string	"SPR_BOSF"
.LASF1503:
	.string	"lines"
.LASF189:
	.string	"SPR_BOSS"
.LASF1298:
	.string	"MT_PLASMA"
.LASF1654:
	.string	"sfx_radio"
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
.LASF88:
	.string	"NUMWEAPONS"
.LASF921:
	.string	"S_BSPI_SIGHT"
.LASF1571:
	.string	"sfx_plpain"
.LASF2:
	.string	"long unsigned int"
.LASF923:
	.string	"S_BSPI_RUN2"
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
.LASF1479:
	.string	"damagecount"
.LASF1798:
	.string	"menudef"
.LASF1807:
	.string	"M_StringHeight"
.LASF1552:
	.string	"sfx_dbcls"
.LASF242:
	.string	"SPR_SMT2"
.LASF1118:
	.string	"S_RKEY2"
.LASF1089:
	.string	"S_ARM1"
.LASF1091:
	.string	"S_ARM2"
.LASF1619:
	.string	"sfx_pedth"
.LASF1184:
	.string	"S_HEADCANDLES"
.LASF220:
	.string	"SPR_PINS"
.LASF814:
	.string	"S_BOSS_STND"
.LASF1743:
	.string	"sound_end"
.LASF1623:
	.string	"sfx_dmact"
.LASF794:
	.string	"S_HEAD_PAIN"
.LASF73:
	.string	"it_yellowcard"
.LASF1270:
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
.LASF225:
	.string	"SPR_CLIP"
.LASF1747:
	.string	"load1"
.LASF1685:
	.string	"numitems"
.LASF1197:
	.string	"S_SHRTREDCOL"
.LASF1240:
	.string	"S_HANGTSKULL"
.LASF1544:
	.string	"players"
.LASF1752:
	.string	"load6"
.LASF1745:
	.string	"SoundMenu"
.LASF24:
	.string	"_IO_buf_base"
.LASF103:
	.string	"NUMPOWERS"
.LASF1730:
	.string	"read1_end"
.LASF1835:
	.string	"M_VerifyNightmare"
.LASF1025:
	.string	"S_SSWV_ATK3"
.LASF1026:
	.string	"S_SSWV_ATK4"
.LASF331:
	.string	"S_DSGUN10"
.LASF1611:
	.string	"sfx_cacdth"
.LASF98:
	.string	"pw_strength"
.LASF529:
	.string	"S_VILE_STND2"
.LASF259:
	.string	"SPR_CAND"
.LASF1568:
	.string	"sfx_stnmov"
.LASF1852:
	.string	"M_DoSave"
.LASF1276:
	.string	"MT_SERGEANT"
.LASF1563:
	.string	"sfx_firxpl"
.LASF67:
	.string	"sk_easy"
.LASF19:
	.string	"_IO_read_end"
.LASF1127:
	.string	"S_STIM"
.LASF1813:
	.string	"menu"
.LASF93:
	.string	"am_cell"
.LASF72:
	.string	"it_bluecard"
.LASF1434:
	.string	"floorz"
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
.LASF135:
	.string	"_IO_FILE"
.LASF450:
	.string	"S_PLAY_DIE6"
.LASF451:
	.string	"S_PLAY_DIE7"
.LASF1766:
	.string	"toupper"
.LASF461:
	.string	"S_POSS_STND"
.LASF1863:
	.string	"I_GetTime"
.LASF417:
	.string	"S_TFOG"
.LASF49:
	.string	"_IO_wide_data"
.LASF1355:
	.string	"MT_MISC41"
.LASF1451:
	.string	"subsector_s"
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
.LASF1082:
	.string	"S_SPAWNFIRE5"
.LASF1083:
	.string	"S_SPAWNFIRE6"
.LASF1084:
	.string	"S_SPAWNFIRE7"
.LASF64:
	.string	"GS_DEMOSCREEN"
.LASF749:
	.string	"S_TROO_XDIE1"
.LASF123:
	.string	"consistancy"
.LASF1690:
	.string	"itemOn"
.LASF1832:
	.string	"M_DrawOptions"
.LASF1452:
	.string	"sector"
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
.LASF85:
	.string	"wp_bfg"
.LASF1226:
	.string	"S_BTORCHSHRT2"
.LASF1227:
	.string	"S_BTORCHSHRT3"
.LASF1228:
	.string	"S_BTORCHSHRT4"
.LASF1705:
	.string	"episodes_e"
.LASF1618:
	.string	"sfx_kntdth"
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
.LASF1610:
	.string	"sfx_sgtdth"
.LASF1428:
	.string	"thinker"
.LASF1640:
	.string	"sfx_bospit"
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
.LASF1575:
	.string	"sfx_mnpain"
.LASF1213:
	.string	"S_BLUETORCH"
.LASF1856:
	.string	"M_LoadSelect"
.LASF1662:
	.string	"screenSize"
.LASF651:
	.string	"S_FATT_RUN1"
.LASF652:
	.string	"S_FATT_RUN2"
.LASF653:
	.string	"S_FATT_RUN3"
.LASF654:
	.string	"S_FATT_RUN4"
.LASF100:
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
.LASF43:
	.string	"__pad5"
.LASF1192:
	.string	"S_MEAT5"
.LASF1596:
	.string	"sfx_pesit"
.LASF304:
	.string	"S_PISTOLFLASH"
.LASF1490:
	.string	"floorheight"
.LASF524:
	.string	"S_SPOS_RAISE2"
.LASF525:
	.string	"S_SPOS_RAISE3"
.LASF526:
	.string	"S_SPOS_RAISE4"
.LASF1819:
	.string	"M_SizeDisplay"
.LASF527:
	.string	"S_SPOS_RAISE5"
.LASF216:
	.string	"SPR_MEDI"
.LASF218:
	.string	"SPR_PINV"
.LASF1585:
	.string	"sfx_bgsit1"
.LASF1586:
	.string	"sfx_bgsit2"
.LASF1620:
	.string	"sfx_skedth"
.LASF1066:
	.string	"S_BRAIN_PAIN"
.LASF337:
	.string	"S_CHAINDOWN"
.LASF1761:
	.string	"msgNames"
.LASF556:
	.string	"S_VILE_PAIN"
.LASF1667:
	.string	"messy"
.LASF603:
	.string	"S_TRACER"
.LASF62:
	.string	"GS_INTERMISSION"
.LASF29:
	.string	"_markers"
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
.LASF1444:
	.string	"movecount"
.LASF1797:
	.string	"M_StartControlPanel"
.LASF210:
	.string	"SPR_RKEY"
.LASF1592:
	.string	"sfx_bspsit"
.LASF1174:
	.string	"S_STALAG"
.LASF1573:
	.string	"sfx_popain"
.LASF889:
	.string	"S_SPID_STND2"
.LASF143:
	.string	"angle_t"
.LASF39:
	.string	"_codecvt"
.LASF1493:
	.string	"ceilingpic"
.LASF1175:
	.string	"S_BLOODYTWITCH"
.LASF1244:
	.string	"S_SMALLPOOL"
.LASF1524:
	.string	"pspdef_t"
.LASF1370:
	.string	"MT_MISC56"
.LASF673:
	.string	"S_FATT_PAIN"
.LASF1757:
	.string	"SaveMenu"
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
.LASF142:
	.string	"double"
.LASF205:
	.string	"SPR_BEXP"
.LASF1531:
	.string	"devparm"
.LASF1455:
	.string	"player_s"
.LASF1122:
	.string	"S_BSKULL2"
.LASF164:
	.string	"SPR_PUFF"
.LASF1051:
	.string	"S_COMMKEEN"
.LASF1564:
	.string	"sfx_pstart"
.LASF1472:
	.string	"usedown"
.LASF1710:
	.string	"hurtme"
.LASF843:
	.string	"S_BOS2_STND"
.LASF170:
	.string	"SPR_BFS1"
.LASF1658:
	.string	"chat_on"
.LASF1074:
	.string	"S_SPAWN1"
.LASF13:
	.string	"ssize_t"
.LASF1076:
	.string	"S_SPAWN3"
.LASF1077:
	.string	"S_SPAWN4"
.LASF1247:
	.string	"S_TECHLAMP2"
.LASF1248:
	.string	"S_TECHLAMP3"
.LASF86:
	.string	"wp_chainsaw"
.LASF1284:
	.string	"MT_BABY"
.LASF1470:
	.string	"maxammo"
.LASF1637:
	.string	"sfx_flame"
.LASF1188:
	.string	"S_LIVESTICK2"
.LASF1233:
	.string	"S_RTORCHSHRT"
.LASF1330:
	.string	"MT_MISC19"
.LASF192:
	.string	"SPR_SPID"
.LASF789:
	.string	"S_HEAD_STND"
.LASF1537:
	.string	"automapactive"
.LASF764:
	.string	"S_SARG_RUN1"
.LASF765:
	.string	"S_SARG_RUN2"
.LASF116:
	.string	"data1"
.LASF117:
	.string	"data2"
.LASF118:
	.string	"data3"
.LASF770:
	.string	"S_SARG_RUN7"
.LASF771:
	.string	"S_SARG_RUN8"
.LASF1308:
	.string	"MT_MISC1"
.LASF1309:
	.string	"MT_MISC2"
.LASF1310:
	.string	"MT_MISC3"
.LASF1311:
	.string	"MT_MISC4"
.LASF1312:
	.string	"MT_MISC5"
.LASF1313:
	.string	"MT_MISC6"
.LASF1314:
	.string	"MT_MISC7"
.LASF1315:
	.string	"MT_MISC8"
.LASF1316:
	.string	"MT_MISC9"
.LASF354:
	.string	"S_SAW"
.LASF1831:
	.string	"M_Options"
.LASF221:
	.string	"SPR_MEGA"
.LASF443:
	.string	"S_PLAY_PAIN"
.LASF1601:
	.string	"sfx_claw"
.LASF395:
	.string	"S_PLASBALL2"
.LASF1522:
	.string	"ps_flash"
.LASF1456:
	.string	"playerstate"
.LASF1771:
	.string	"I_WaitVBL"
.LASF1739:
	.string	"sfx_vol"
.LASF199:
	.string	"SPR_KEEN"
.LASF1683:
	.string	"menuitem_t"
.LASF1029:
	.string	"S_SSWV_PAIN"
.LASF1410:
	.string	"painstate"
.LASF1849:
	.string	"M_QuickSaveResponse"
.LASF1064:
	.string	"S_KEENPAIN2"
.LASF102:
	.string	"pw_infrared"
.LASF551:
	.string	"S_VILE_ATK10"
.LASF552:
	.string	"S_VILE_ATK11"
.LASF1709:
	.string	"toorough"
.LASF1762:
	.string	"quitsounds"
.LASF1518:
	.string	"topoffset"
.LASF1030:
	.string	"S_SSWV_PAIN2"
.LASF1394:
	.string	"MT_MISC80"
.LASF1417:
	.string	"deathsound"
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
.LASF1510:
	.string	"sector_t"
.LASF1516:
	.string	"width"
.LASF219:
	.string	"SPR_PSTR"
.LASF1332:
	.string	"MT_MISC21"
.LASF775:
	.string	"S_SARG_PAIN"
.LASF208:
	.string	"SPR_BON2"
.LASF1327:
	.string	"MT_CLIP"
.LASF234:
	.string	"SPR_BFUG"
.LASF1382:
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
.LASF1657:
	.string	"message_dontfuckwithme"
.LASF1464:
	.string	"backpack"
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
.LASF238:
	.string	"SPR_PLAS"
.LASF1110:
	.string	"S_BON2A"
.LASF1111:
	.string	"S_BON2B"
.LASF151:
	.string	"SPR_PISF"
.LASF150:
	.string	"SPR_PISG"
.LASF1114:
	.string	"S_BON2E"
.LASF1337:
	.string	"MT_CHAINGUN"
.LASF1673:
	.string	"saveSlot"
.LASF386:
	.string	"S_TBALLX1"
.LASF387:
	.string	"S_TBALLX2"
.LASF388:
	.string	"S_TBALLX3"
.LASF89:
	.string	"wp_nochange"
.LASF449:
	.string	"S_PLAY_DIE5"
.LASF1274:
	.string	"MT_CHAINGUY"
.LASF1489:
	.string	"degenmobj_t"
.LASF1583:
	.string	"sfx_posit2"
.LASF1146:
	.string	"S_MEGA3"
.LASF882:
	.string	"S_SKULL_DIE1"
.LASF1526:
	.string	"PST_DEAD"
.LASF1245:
	.string	"S_BRAINSTEM"
.LASF1716:
	.string	"NewDef"
.LASF1050:
	.string	"S_KEENSTND"
.LASF1150:
	.string	"S_PMAP2"
.LASF175:
	.string	"SPR_PLAY"
.LASF42:
	.string	"_freeres_buf"
.LASF1466:
	.string	"readyweapon"
.LASF1588:
	.string	"sfx_cacsit"
.LASF1597:
	.string	"sfx_sklatk"
.LASF1719:
	.string	"detail"
.LASF1769:
	.string	"G_ScreenShot"
.LASF1670:
	.string	"messageRoutine"
.LASF15:
	.string	"long long unsigned int"
.LASF1185:
	.string	"S_HEADCANDLES2"
.LASF1304:
	.string	"MT_IFOG"
.LASF1656:
	.string	"hu_font"
.LASF34:
	.string	"_cur_column"
.LASF266:
	.string	"SPR_FSKU"
.LASF1643:
	.string	"sfx_bospn"
.LASF501:
	.string	"S_SPOS_RUN6"
.LASF357:
	.string	"S_SAWUP"
.LASF1090:
	.string	"S_ARM1A"
.LASF693:
	.string	"S_CPOS_STND"
.LASF1345:
	.string	"MT_MISC31"
.LASF1438:
	.string	"momz"
.LASF1164:
	.string	"S_SBOX"
.LASF1496:
	.string	"soundtraversed"
.LASF1693:
	.string	"skullName"
.LASF1348:
	.string	"MT_MISC34"
.LASF1506:
	.string	"bbox"
.LASF396:
	.string	"S_PLASEXP"
.LASF1351:
	.string	"MT_MISC37"
.LASF1577:
	.string	"sfx_slop"
.LASF1180:
	.string	"S_DEADBOTTOM"
.LASF1634:
	.string	"sfx_bdopn"
.LASF1237:
	.string	"S_HANGNOGUTS"
.LASF251:
	.string	"SPR_GOR3"
.LASF1814:
	.string	"item"
.LASF1409:
	.string	"attacksound"
.LASF1141:
	.string	"S_PINS2"
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
.LASF307:
	.string	"S_SGUNUP"
.LASF1508:
	.string	"frontsector"
.LASF105:
	.string	"endmsg"
.LASF260:
	.string	"SPR_CBRA"
.LASF1415:
	.string	"deathstate"
.LASF1721:
	.string	"option_empty1"
.LASF1092:
	.string	"S_ARM2A"
.LASF110:
	.string	"ev_keydown"
.LASF1517:
	.string	"leftoffset"
.LASF1120:
	.string	"S_YKEY2"
.LASF570:
	.string	"S_FIRE3"
.LASF1408:
	.string	"reactiontime"
.LASF27:
	.string	"_IO_backup_base"
.LASF1699:
	.string	"quitdoom"
.LASF575:
	.string	"S_FIRE8"
.LASF815:
	.string	"S_BOSS_STND2"
.LASF1627:
	.string	"sfx_noway"
.LASF18:
	.string	"_IO_read_ptr"
.LASF710:
	.string	"S_CPOS_DIE2"
.LASF1430:
	.string	"sprev"
.LASF358:
	.string	"S_SAW1"
.LASF359:
	.string	"S_SAW2"
.LASF360:
	.string	"S_SAW3"
.LASF1103:
	.string	"S_BON1"
.LASF1682:
	.string	"alphaKey"
.LASF1109:
	.string	"S_BON2"
.LASF1447:
	.string	"player"
.LASF355:
	.string	"S_SAWB"
.LASF743:
	.string	"S_TROO_PAIN2"
.LASF41:
	.string	"_freeres_list"
.LASF1290:
	.string	"MT_BOSSSPIT"
.LASF568:
	.string	"S_FIRE1"
.LASF569:
	.string	"S_FIRE2"
.LASF127:
	.string	"fixed_t"
.LASF571:
	.string	"S_FIRE4"
.LASF572:
	.string	"S_FIRE5"
.LASF573:
	.string	"S_FIRE6"
.LASF574:
	.string	"S_FIRE7"
.LASF228:
	.string	"SPR_BROK"
.LASF576:
	.string	"S_FIRE9"
.LASF1358:
	.string	"MT_MISC44"
.LASF1359:
	.string	"MT_MISC45"
.LASF1161:
	.string	"S_CELL"
.LASF1361:
	.string	"MT_MISC47"
.LASF226:
	.string	"SPR_AMMO"
.LASF1362:
	.string	"MT_MISC48"
.LASF1363:
	.string	"MT_MISC49"
.LASF874:
	.string	"S_SKULL_RUN1"
.LASF875:
	.string	"S_SKULL_RUN2"
.LASF1241:
	.string	"S_HANGTLOOKUP"
.LASF336:
	.string	"S_CHAIN"
.LASF1542:
	.string	"gamestate"
.LASF114:
	.string	"evtype_t"
.LASF1688:
	.string	"lastOn"
.LASF366:
	.string	"S_PLASMAFLASH1"
.LASF322:
	.string	"S_DSGUN1"
.LASF323:
	.string	"S_DSGUN2"
.LASF217:
	.string	"SPR_SOUL"
.LASF177:
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
.LASF197:
	.string	"SPR_PAIN"
.LASF722:
	.string	"S_CPOS_RAISE1"
.LASF1728:
	.string	"OptionsDef"
.LASF1465:
	.string	"frags"
.LASF1702:
	.string	"MainMenu"
.LASF1617:
	.string	"sfx_vildth"
.LASF33:
	.string	"_old_offset"
.LASF1460:
	.string	"armorpoints"
.LASF125:
	.string	"buttons"
.LASF371:
	.string	"S_BFG1"
.LASF372:
	.string	"S_BFG2"
.LASF373:
	.string	"S_BFG3"
.LASF374:
	.string	"S_BFG4"
.LASF1754:
	.string	"load_e"
.LASF1707:
	.string	"EpiDef"
.LASF286:
	.string	"spritenum_t"
.LASF333:
	.string	"S_DSNR2"
.LASF873:
	.string	"S_SKULL_STND2"
.LASF1136:
	.string	"S_PINV2"
.LASF1137:
	.string	"S_PINV3"
.LASF766:
	.string	"S_SARG_RUN3"
.LASF767:
	.string	"S_SARG_RUN4"
.LASF1252:
	.string	"S_TECH2LAMP3"
.LASF1253:
	.string	"S_TECH2LAMP4"
.LASF1715:
	.string	"NewGameMenu"
.LASF1504:
	.string	"line_s"
.LASF16:
	.string	"long long int"
.LASF149:
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
.LASF904:
	.string	"S_SPID_ATK3"
.LASF32:
	.string	"_flags2"
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
.LASF1857:
	.string	"M_DrawSaveLoadBorder"
.LASF1364:
	.string	"MT_MISC50"
.LASF803:
	.string	"S_HEAD_RAISE1"
.LASF1399:
	.string	"MT_MISC85"
.LASF804:
	.string	"S_HEAD_RAISE2"
.LASF805:
	.string	"S_HEAD_RAISE3"
.LASF1473:
	.string	"cheats"
.LASF212:
	.string	"SPR_BSKU"
.LASF807:
	.string	"S_HEAD_RAISE5"
.LASF808:
	.string	"S_HEAD_RAISE6"
.LASF1372:
	.string	"MT_MISC58"
.LASF1765:
	.string	"memset"
.LASF1829:
	.string	"M_EndGameResponse"
.LASF1342:
	.string	"MT_SUPERSHOTGUN"
.LASF223:
	.string	"SPR_PMAP"
.LASF1071:
	.string	"S_BRAINEYE"
.LASF224:
	.string	"SPR_PVIS"
.LASF1525:
	.string	"PST_LIVE"
.LASF1789:
	.string	"M_Init"
.LASF1300:
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
.LASF1713:
	.string	"newg_end"
.LASF1628:
	.string	"sfx_barexp"
.LASF1209:
	.string	"S_FLOATSKULL2"
.LASF1210:
	.string	"S_FLOATSKULL3"
.LASF1551:
	.string	"sfx_dbopn"
.LASF1839:
	.string	"M_DrawMainMenu"
.LASF1555:
	.string	"sfx_bfg"
.LASF1144:
	.string	"S_MEGA"
.LASF824:
	.string	"S_BOSS_ATK1"
.LASF825:
	.string	"S_BOSS_ATK2"
.LASF826:
	.string	"S_BOSS_ATK3"
.LASF1433:
	.string	"subsector"
.LASF282:
	.string	"SPR_BRS1"
.LASF1488:
	.string	"vertex_t"
.LASF631:
	.string	"S_SKEL_PAIN2"
.LASF1168:
	.string	"S_CSAW"
.LASF97:
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
.LASF82:
	.string	"wp_chaingun"
.LASF946:
	.string	"S_BSPI_DIE7"
.LASF71:
	.string	"skill_t"
.LASF870:
	.string	"S_BOS2_RAISE6"
.LASF497:
	.string	"S_SPOS_RUN2"
.LASF1509:
	.string	"backsector"
.LASF498:
	.string	"S_SPOS_RUN3"
.LASF1000:
	.string	"S_PAIN_PAIN2"
.LASF635:
	.string	"S_SKEL_DIE4"
.LASF1547:
	.string	"sfx_pistol"
.LASF231:
	.string	"SPR_SHEL"
.LASF1383:
	.string	"MT_MISC69"
.LASF1461:
	.string	"armortype"
.LASF106:
	.string	"false"
.LASF283:
	.string	"SPR_TLMP"
.LASF462:
	.string	"S_POSS_STND2"
.LASF1341:
	.string	"MT_SHOTGUN"
.LASF1266:
	.string	"MT_SHOTGUY"
.LASF1476:
	.string	"itemcount"
.LASF1246:
	.string	"S_TECHLAMP"
.LASF1731:
	.string	"read_e"
.LASF1287:
	.string	"MT_WOLFSS"
.LASF1755:
	.string	"LoadMenu"
.LASF844:
	.string	"S_BOS2_STND2"
.LASF1497:
	.string	"soundtarget"
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
.LASF268:
	.string	"SPR_TBLU"
.LASF495:
	.string	"S_SPOS_STND2"
.LASF6:
	.string	"unsigned int"
.LASF1548:
	.string	"sfx_shotgn"
.LASF1429:
	.string	"snext"
.LASF96:
	.string	"am_noammo"
.LASF1696:
	.string	"loadgame"
.LASF136:
	.string	"thinker_s"
.LASF140:
	.string	"thinker_t"
.LASF1706:
	.string	"EpisodeMenu"
.LASF1608:
	.string	"sfx_bgdth1"
.LASF1609:
	.string	"sfx_bgdth2"
.LASF1778:
	.string	"strcmp"
.LASF1085:
	.string	"S_SPAWNFIRE8"
.LASF471:
	.string	"S_POSS_ATK1"
.LASF472:
	.string	"S_POSS_ATK2"
.LASF473:
	.string	"S_POSS_ATK3"
.LASF66:
	.string	"sk_baby"
.LASF1385:
	.string	"MT_MISC71"
.LASF1234:
	.string	"S_RTORCHSHRT2"
.LASF1235:
	.string	"S_RTORCHSHRT3"
.LASF905:
	.string	"S_SPID_ATK4"
.LASF1677:
	.string	"savegamestrings"
.LASF1138:
	.string	"S_PINV4"
.LASF8:
	.string	"short int"
.LASF922:
	.string	"S_BSPI_RUN1"
.LASF1391:
	.string	"MT_MISC77"
.LASF1392:
	.string	"MT_MISC78"
.LASF1393:
	.string	"MT_MISC79"
.LASF1282:
	.string	"MT_SKULL"
.LASF1858:
	.string	"M_DrawLoad"
.LASF1269:
	.string	"MT_UNDEAD"
.LASF55:
	.string	"GameMode_t"
.LASF137:
	.string	"prev"
.LASF35:
	.string	"_vtable_offset"
.LASF632:
	.string	"S_SKEL_DIE1"
.LASF633:
	.string	"S_SKEL_DIE2"
.LASF634:
	.string	"S_SKEL_DIE3"
.LASF179:
	.string	"SPR_FIRE"
.LASF636:
	.string	"S_SKEL_DIE5"
.LASF637:
	.string	"S_SKEL_DIE6"
.LASF1792:
	.string	"M_SetupNextMenu"
.LASF1243:
	.string	"S_COLONGIBS"
.LASF1532:
	.string	"gamemode"
.LASF284:
	.string	"SPR_TLP2"
.LASF394:
	.string	"S_PLASBALL"
.LASF1604:
	.string	"sfx_pdiehi"
.LASF240:
	.string	"SPR_SGN2"
.LASF145:
	.string	"options"
.LASF193:
	.string	"SPR_BSPI"
.LASF195:
	.string	"SPR_APBX"
.LASF1484:
	.string	"colormap"
.LASF1768:
	.string	"R_SetViewSize"
.LASF53:
	.string	"retail"
.LASF1318:
	.string	"MT_MISC11"
.LASF1319:
	.string	"MT_MISC12"
.LASF1321:
	.string	"MT_MISC13"
.LASF1323:
	.string	"MT_MISC14"
.LASF1324:
	.string	"MT_MISC15"
.LASF1325:
	.string	"MT_MISC16"
.LASF1328:
	.string	"MT_MISC17"
.LASF1329:
	.string	"MT_MISC18"
.LASF1157:
	.string	"S_CLIP"
.LASF1419:
	.string	"radius"
.LASF1442:
	.string	"health"
.LASF1291:
	.string	"MT_BOSSTARGET"
.LASF1593:
	.string	"sfx_kntsit"
.LASF1824:
	.string	"M_QuitResponse"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"m_menu.c"
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
