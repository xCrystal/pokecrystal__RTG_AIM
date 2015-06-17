PokeCenter2F_MapScriptHeader: ; 0x192845
	; trigger count
	db 6

	; triggers
	dw UnknownScript_0x19285f, $0000
	dw UnknownScript_0x192873, $0000
	dw UnknownScript_0x192877, $0000
	dw UnknownScript_0x19287b, $0000
	dw UnknownScript_0x19287f, $0000
	dw UnknownScript_0x192883, $0000

	; callback count
	db 0
; 0x19285f

UnknownScript_0x19285f: ; 0x19285f
	special $0011
	if_equal $0, UnknownScript_0x192872
	clearevent $0711
	checkevent $0001
	iftrue UnknownScript_0x192872
	priorityjump UnknownScript_0x192887
; 0x192872

UnknownScript_0x192872: ; 0x192872
	end
; 0x192873

UnknownScript_0x192873: ; 0x192873
	priorityjump UnknownScript_0x192ab6
	end
; 0x192877

UnknownScript_0x192877: ; 0x192877
	priorityjump UnknownScript_0x192add
	end
; 0x19287b

UnknownScript_0x19287b: ; 0x19287b
	priorityjump UnknownScript_0x192c4e
	end
; 0x19287f

UnknownScript_0x19287f: ; 0x19287f
	priorityjump UnknownScript_0x192ac3
	end
; 0x192883

UnknownScript_0x192883: ; 0x192883
	priorityjump UnknownScript_0x192aea
	end
; 0x192887

UnknownScript_0x192887: ; 0x192887
	appear $5
	setevent $0001
	end
; 0x19288d

UnknownScript_0x19288d: ; 0x19288d
	faceplayer
	loadfont
	2writetext UnknownText_0x19312f
	closetext
	loadmovesprites
	end
; 0x192895

UnknownScript_0x192895: ; 0x192895
	faceplayer
	loadfont
	2writetext UnknownText_0x19315f
	closetext
	loadmovesprites
	end
; 0x19289d

LinkReceptionistScript_0x19289d: ; 0x19289d
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iffalse UnknownScript_0x19288d
	loadfont
	2writetext UnknownText_0x192e3a
	yesorno
	iffalse UnknownScript_0x19291d
	special $00a0
	iffalse UnknownScript_0x1928be
	2writetext UnknownText_0x192d7e
	special $008c
	iffalse UnknownScript_0x19291d
	if_equal $1, UnknownScript_0x19291f
UnknownScript_0x1928be: ; 0x1928be
	special $0001
	2writetext UnknownText_0x192f67
	special $0002
	iffalse UnknownScript_0x1928f6
	2writetext UnknownText_0x192f34
	yesorno
	iffalse UnknownScript_0x192917
	special $0004
	iffalse UnknownScript_0x192917
	2writetext UnknownText_0x192f67
	special $0003
	iffalse UnknownScript_0x192911
	copybytetovar $cf51
	iffalse UnknownScript_0x1928fe
	special $0005
	iffalse UnknownScript_0x192909
	2writetext UnknownText_0x19306b
	closetext
	loadmovesprites
	2call UnknownScript_0x192b04
	warpcheck
	end
; 0x1928f6

UnknownScript_0x1928f6: ; 0x1928f6
	special $0008
	2writetext UnknownText_0x192f19
	loadmovesprites
	end
; 0x1928fe

UnknownScript_0x1928fe: ; 0x1928fe
	special $0006
	2writetext UnknownText_0x193029
	special $0007
	loadmovesprites
	end
; 0x192909

UnknownScript_0x192909: ; 0x192909
	2writetext UnknownText_0x19304a
	special $0007
	loadmovesprites
	end
; 0x192911

UnknownScript_0x192911: ; 0x192911
	2writetext UnknownText_0x192f75
	2jump UnknownScript_0x19291a
; 0x192917

UnknownScript_0x192917: ; 0x192917
	2writetext UnknownText_0x192fd1
UnknownScript_0x19291a: ; 0x19291a
	special $0008
UnknownScript_0x19291d: ; 0x19291d
	loadmovesprites
	end
; 0x19291f

UnknownScript_0x19291f: ; 0x19291f
	2call UnknownScript_0x19292b
	iftrue UnknownScript_0x19292a
	2call UnknownScript_0x19294a
	warpcheck
	end
; 0x19292a

UnknownScript_0x19292a: ; 0x19292a
	end
; 0x19292b

UnknownScript_0x19292b: ; 0x19292b
	2writetext UnknownText_0x192f34
	yesorno
	iffalse UnknownScript_0x192943
	special $0004
	iffalse UnknownScript_0x192943
	special $007f
	2writetext UnknownText_0x19306b
	closetext
	loadmovesprites
	writebyte $0
	end
; 0x192943

UnknownScript_0x192943: ; 0x192943
	2writetext UnknownText_0x192fd1
	loadmovesprites
	writebyte $1
	end
; 0x19294a

UnknownScript_0x19294a: ; 0x19294a
	applymovement2 MovementData_0x192cce
	applymovement $0, MovementData_0x192ce7
	end
; 0x192952

LinkReceptionistScript_0x192952: ; 0x192952
	; checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	; iffalse UnknownScript_0x192895
	loadfont
	2writetext UnknownText_0x192de0
	yesorno
	iffalse UnknownScript_0x1929d2
	special $00a0
	iffalse UnknownScript_0x192973
	2writetext UnknownText_0x192d39
	special $008c
	iffalse UnknownScript_0x1929d2
	if_equal $1, UnknownScript_0x1929d4
UnknownScript_0x192973: ; 0x192973
	special $0009
	2writetext UnknownText_0x192f67
	special $0002
	iffalse UnknownScript_0x1929ab
	2writetext UnknownText_0x192f34
	yesorno
	iffalse UnknownScript_0x1929cc
	special $0004
	iffalse UnknownScript_0x1929cc
	2writetext UnknownText_0x192f67
	special $0003
	iffalse UnknownScript_0x1929c6
	copybytetovar $cf51
	iffalse UnknownScript_0x1929b3
	special $0005
	iffalse UnknownScript_0x1929be
	2writetext UnknownText_0x19306b
	closetext
	loadmovesprites
	2call UnknownScript_0x192b04
	warpcheck
	end
; 0x1929ab

UnknownScript_0x1929ab: ; 0x1929ab
	special $0008
	2writetext UnknownText_0x192f19
	loadmovesprites
	end
; 0x1929b3

UnknownScript_0x1929b3: ; 0x1929b3
	special $0006
	2writetext UnknownText_0x193029
	special $0007
	loadmovesprites
	end
; 0x1929be

UnknownScript_0x1929be: ; 0x1929be
	2writetext UnknownText_0x19304a
	special $0007
	loadmovesprites
	end
; 0x1929c6

UnknownScript_0x1929c6: ; 0x1929c6
	2writetext UnknownText_0x192f75
	2jump UnknownScript_0x1929cf
; 0x1929cc

UnknownScript_0x1929cc: ; 0x1929cc
	2writetext UnknownText_0x192fd1
UnknownScript_0x1929cf: ; 0x1929cf
	special $0008
UnknownScript_0x1929d2: ; 0x1929d2
	loadmovesprites
	end
; 0x1929d4

UnknownScript_0x1929d4: ; 0x1929d4
	2call UnknownScript_0x192a05
	iffalse UnknownScript_0x1929e5
	2call UnknownScript_0x1929e6
	iftrue UnknownScript_0x1929e5
	2call UnknownScript_0x19294a
	warpcheck
	end
; 0x1929e5

UnknownScript_0x1929e5: ; 0x1929e5
	end
; 0x1929e6

UnknownScript_0x1929e6: ; 0x1929e6
	2writetext UnknownText_0x192f34
	yesorno
	iffalse UnknownScript_0x1929fe
	special $00a1
	iffalse UnknownScript_0x1929fe
	special $007f
	2writetext UnknownText_0x19306b
	closetext
	loadmovesprites
	writebyte $0
	end
; 0x1929fe

UnknownScript_0x1929fe: ; 0x1929fe
	2writetext UnknownText_0x192fd1
	loadmovesprites
	writebyte $1
	end
; 0x192a05

UnknownScript_0x192a05: ; 0x192a05
	special $009a
	iffalse UnknownScript_0x192a1e
	if_equal $1, UnknownScript_0x192a22
	if_equal $2, UnknownScript_0x192a22
	if_equal $3, UnknownScript_0x192a1a
	2jump UnknownScript_0x192a1e
; 0x192a1a

UnknownScript_0x192a1a: ; 0x192a1a
	2writetext UnknownText_0x1932bc
	closetext
UnknownScript_0x192a1e: ; 0x192a1e
	loadmovesprites
	writebyte $0
	end
; 0x192a22

UnknownScript_0x192a22: ; 0x192a22
	writebyte $1
	end
; 0x192a25

UnknownScript_0x192a25: ; 0x192a25
	faceplayer
	loadfont
	2writetext UnknownText_0x193100
	closetext
	loadmovesprites
	end
; 0x192a2d

LinkReceptionistScript_0x192a2d: ; 0x192a2d
	checkevent $0712
	iftrue UnknownScript_0x192a25
	checkflag $0053
	iftrue UnknownScript_0x192a25
	special $000a
	faceplayer
	loadfont
	2writetext UnknownText_0x192e9f
	yesorno
	iffalse UnknownScript_0x192aa2
	special $000b
	if_equal $1, UnknownScript_0x192aa7
	if_equal $2, UnknownScript_0x192aac
	if_equal $3, UnknownScript_0x192ab1
	2writetext UnknownText_0x192f67
	special $0002
	iffalse UnknownScript_0x192a91
	2writetext UnknownText_0x192f34
	yesorno
	iffalse UnknownScript_0x192a9f
	special $0004
	iffalse UnknownScript_0x192a9f
	2writetext UnknownText_0x192f67
	special $0003
	iffalse UnknownScript_0x192a99
	copybytetovar $cf51
	iffalse UnknownScript_0x192a84
	special $0005
	2writetext UnknownText_0x19304a
	special $0007
	loadmovesprites
	end
; 0x192a84

UnknownScript_0x192a84: ; 0x192a84
	special $000c
	2writetext UnknownText_0x19306b
	closetext
	loadmovesprites
	2call UnknownScript_0x192bc4
	warpcheck
	end
; 0x192a91

UnknownScript_0x192a91: ; 0x192a91
	special $0008
	2writetext UnknownText_0x192f19
	loadmovesprites
	end
; 0x192a99

UnknownScript_0x192a99: ; 0x192a99
	2writetext UnknownText_0x192f75
	2jump UnknownScript_0x192aa2
; 0x192a9f

UnknownScript_0x192a9f: ; 0x192a9f
	2writetext UnknownText_0x192fd1
UnknownScript_0x192aa2: ; 0x192aa2
	special $0008
	loadmovesprites
	end
; 0x192aa7

UnknownScript_0x192aa7: ; 0x192aa7
	2writetext UnknownText_0x19308b
	loadmovesprites
	end
; 0x192aac

UnknownScript_0x192aac: ; 0x192aac
	2writetext UnknownText_0x1930a8
	loadmovesprites
	end
; 0x192ab1

UnknownScript_0x192ab1: ; 0x192ab1
	2writetext UnknownText_0x1930cf
	loadmovesprites
	end
; 0x192ab6

UnknownScript_0x192ab6: ; 0x192ab6
	special $0008
	2call UnknownScript_0x192b50
	dotrigger $0
	domaptrigger GROUP_TRADE_CENTER, MAP_TRADE_CENTER, $0
	end
; 0x192ac3

UnknownScript_0x192ac3: ; 0x192ac3
	special $0080
	2call UnknownScript_0x192ad0
	dotrigger $0
	domaptrigger GROUP_MOBILE_TRADE_ROOM_MOBILE, MAP_MOBILE_TRADE_ROOM_MOBILE, $0
	end
; 0x192ad0

UnknownScript_0x192ad0: ; 0x192ad0
	applymovement $2, MovementData_0x192d0b
	applymovement $0, MovementData_0x192d0f
	applymovement $2, MovementData_0x192d14
	end
; 0x192add

UnknownScript_0x192add: ; 0x192add
	special $0008
	2call UnknownScript_0x192b8a
	dotrigger $0
	domaptrigger GROUP_COLOSSEUM, MAP_COLOSSEUM, $0
	end
; 0x192aea

UnknownScript_0x192aea: ; 0x192aea
	special $0080
	2call UnknownScript_0x192af7
	dotrigger $0
	domaptrigger GROUP_MOBILE_BATTLE_ROOM, MAP_MOBILE_BATTLE_ROOM, $0
	end
; 0x192af7

UnknownScript_0x192af7: ; 0x192af7
	applymovement $3, MovementData_0x192d0b
	applymovement $0, MovementData_0x192d0f
	applymovement $3, MovementData_0x192d14
	end
; 0x192b04

UnknownScript_0x192b04: ; 0x192b04
	checkflag $0063
	iftrue UnknownScript_0x192b12
	applymovement2 MovementData_0x192cca
	applymovement $0, MovementData_0x192cde
	end
; 0x192b12

UnknownScript_0x192b12: ; 0x192b12
	applymovement2 MovementData_0x192cd8
	applymovement $0, MovementData_0x192ce2
	loadfont
	2writetext UnknownText_0x193266
	closetext
	loadmovesprites
	applymovement2 MovementData_0x192cdc
	spriteface $0, $2
	loadfont
	2writetext UnknownText_0x193278
	closetext
	loadmovesprites
	playsound SFX_TINGLE
	applymovement $0, MovementData_0x192d17
	writebyte $80
	special $0098
	applymovement $0, MovementData_0x192d1c
	setflag $009f
	special $0038
	loadfont
	2writetext UnknownText_0x19329a
	closetext
	loadmovesprites
	showemote $0, $0, 15
	applymovement $0, MovementData_0x192ce5
	end
; 0x192b50

UnknownScript_0x192b50: ; 0x192b50
	checkflag $009f
	iftrue UnknownScript_0x192b63
	applymovement $2, MovementData_0x192d04
	applymovement $0, MovementData_0x192cf5
	applymovement $2, MovementData_0x192cfe
	end
; 0x192b63

UnknownScript_0x192b63: ; 0x192b63
	applymovement $2, MovementData_0x192d04
	applymovement $0, MovementData_0x192d28
	clearflag $009f
	playsound SFX_TINGLE
	applymovement $0, MovementData_0x192d17
	writebyte $90
	special $0098
	applymovement $0, MovementData_0x192d1c
	special $0038
	applymovement $0, MovementData_0x192d2a
	applymovement $2, MovementData_0x192cfe
	end
; 0x192b8a

UnknownScript_0x192b8a: ; 0x192b8a
	checkflag $009f
	iftrue UnknownScript_0x192b9d
	applymovement $3, MovementData_0x192d04
	applymovement $0, MovementData_0x192cf5
	applymovement $3, MovementData_0x192cfe
	end
; 0x192b9d

UnknownScript_0x192b9d: ; 0x192b9d
	applymovement $3, MovementData_0x192d04
	applymovement $0, MovementData_0x192d28
	clearflag $009f
	playsound SFX_TINGLE
	applymovement $0, MovementData_0x192d17
	writebyte $90
	special $0098
	applymovement $0, MovementData_0x192d1c
	special $0038
	applymovement $0, MovementData_0x192d2a
	applymovement $3, MovementData_0x192cfe
	end
; 0x192bc4

UnknownScript_0x192bc4: ; 0x192bc4
	checkflag $0063
	iftrue UnknownScript_0x192bec
	checkcode $9
	if_equal $2, UnknownScript_0x192bdc
	if_equal $3, UnknownScript_0x192be4
	applymovement2 MovementData_0x192cd2
	applymovement $0, MovementData_0x192cec
	end
; 0x192bdc

UnknownScript_0x192bdc: ; 0x192bdc
	applymovement2 MovementData_0x192cd2
	applymovement $0, MovementData_0x192cef
	end
; 0x192be4

UnknownScript_0x192be4: ; 0x192be4
	applymovement2 MovementData_0x192cd5
	applymovement $0, MovementData_0x192cf2
	end
; 0x192bec

UnknownScript_0x192bec: ; 0x192bec
	checkcode $9
	if_equal $3, UnknownScript_0x192c00
	if_equal $2, UnknownScript_0x192c0a
	applymovement2 MovementData_0x192d33
	applymovement $0, MovementData_0x192d2d
	2jump UnknownScript_0x192c11
; 0x192c00

UnknownScript_0x192c00: ; 0x192c00
	applymovement2 MovementData_0x192d36
	applymovement $0, MovementData_0x192d2f
	2jump UnknownScript_0x192c11
; 0x192c0a

UnknownScript_0x192c0a: ; 0x192c0a
	applymovement2 MovementData_0x192d33
	applymovement $0, MovementData_0x192d31
UnknownScript_0x192c11: ; 0x192c11
	loadfont
	2writetext UnknownText_0x193266
	closetext
	loadmovesprites
	checkcode $9
	if_not_equal $1, UnknownScript_0x192c20
	spriteface $0, $2
UnknownScript_0x192c20: ; 0x192c20
	loadfont
	2writetext UnknownText_0x193278
	closetext
	loadmovesprites
	playsound SFX_TINGLE
	applymovement $0, MovementData_0x192d17
	writebyte $80
	special $0098
	applymovement $0, MovementData_0x192d22
	faceperson $0, $4
	setflag $009f
	special $0038
	loadfont
	2writetext UnknownText_0x19329a
	closetext
	loadmovesprites
	showemote $0, $0, 15
	applymovement $0, MovementData_0x192d2d
	end
; 0x192c4e

UnknownScript_0x192c4e: ; 0x192c4e
	special $0008
	checkflag $009f
	iftrue UnknownScript_0x192c66
	applymovement $4, MovementData_0x192d08
	applymovement $0, MovementData_0x192cf9
	applymovement $4, MovementData_0x192d01
	2jump UnknownScript_0x192c8c
; 0x192c66

UnknownScript_0x192c66: ; 0x192c66
	applymovement $4, MovementData_0x192d08
	applymovement $0, MovementData_0x192cfc
	clearflag $009f
	playsound SFX_TINGLE
	applymovement $0, MovementData_0x192d17
	writebyte $90
	special $0098
	applymovement $0, MovementData_0x192d1c
	special $0038
	applymovement $0, MovementData_0x192cfc
	applymovement $4, MovementData_0x192d01
UnknownScript_0x192c8c: ; 0x192c8c
	dotrigger $0
	domaptrigger GROUP_TIME_CAPSULE, MAP_TIME_CAPSULE, $0
	end
; 0x192c93

MapPokeCenter2FSignpost0Script: ; 0x192c93
	refreshscreen $0
	special $0058
	loadmovesprites
	end
; 0x192c9a

OfficerScript_0x192c9a: ; 0x192c9a
	faceplayer
	loadfont
	checkevent $0711
	iftrue UnknownScript_0x192cb8
	2writetext UnknownText_0x193190
	yesorno
	iffalse UnknownScript_0x192cc4
	2writetext UnknownText_0x1931c4
	keeptextopen
	waitbutton
	special $0012
	iffalse UnknownScript_0x192cbe
	itemnotify
	setevent $0711
UnknownScript_0x192cb8: ; 0x192cb8
	2writetext UnknownText_0x1931d2
	closetext
	loadmovesprites
	end
; 0x192cbe

UnknownScript_0x192cbe: ; 0x192cbe
	2writetext UnknownText_0x1931ef
	closetext
	loadmovesprites
	end
; 0x192cc4

UnknownScript_0x192cc4: ; 0x192cc4
	2writetext UnknownText_0x19324d
	closetext
	loadmovesprites
	end
; 0x192cca

MovementData_0x192cca: ; 0x192cca
	slow_step_up
	slow_step_left
	turn_head_right
	step_end
; 0x192cce

MovementData_0x192cce: ; 0x192cce
	slow_step_up
	slow_step_left
	turn_head_down
	step_end
; 0x192cd2

MovementData_0x192cd2: ; 0x192cd2
	slow_step_left
	turn_head_down
	step_end
; 0x192cd5

MovementData_0x192cd5: ; 0x192cd5
	slow_step_right
	turn_head_down
	step_end
; 0x192cd8

MovementData_0x192cd8: ; 0x192cd8
	slow_step_up
	slow_step_left
	turn_head_right
	step_end
; 0x192cdc

MovementData_0x192cdc: ; 0x192cdc
	turn_head_right
	step_end
; 0x192cde

MovementData_0x192cde: ; 0x192cde
	step_up
	step_up
	step_up
	step_end
; 0x192ce2

MovementData_0x192ce2: ; 0x192ce2
	step_up
	step_up
	step_end
; 0x192ce5

MovementData_0x192ce5: ; 0x192ce5
	step_up
	step_end
; 0x192ce7

MovementData_0x192ce7: ; 0x192ce7
	step_up
	step_up
	step_right
	step_up
	step_end
; 0x192cec

MovementData_0x192cec: ; 0x192cec
	step_up
	step_up
	step_end
; 0x192cef

MovementData_0x192cef: ; 0x192cef
	step_left
	step_up
	step_end
; 0x192cf2

MovementData_0x192cf2: ; 0x192cf2
	step_right
	step_up
	step_end
; 0x192cf5

MovementData_0x192cf5: ; 0x192cf5
	step_down
	step_down
	step_down
	step_end
; 0x192cf9

MovementData_0x192cf9: ; 0x192cf9
	step_down
	step_down
	step_end
; 0x192cfc

MovementData_0x192cfc: ; 0x192cfc
	step_down
	step_end
; 0x192cfe

MovementData_0x192cfe: ; 0x192cfe
	slow_step_right
	slow_step_down
	step_end
; 0x192d01

MovementData_0x192d01: ; 0x192d01
	slow_step_right
	turn_head_down
	step_end
; 0x192d04

MovementData_0x192d04: ; 0x192d04
	slow_step_up
	slow_step_left
	turn_head_right
	step_end
; 0x192d08

MovementData_0x192d08: ; 0x192d08
	slow_step_left
	turn_head_right
	step_end
; 0x192d0b

MovementData_0x192d0b: ; 0x192d0b
	slow_step_up
	slow_step_left
	turn_head_right
	step_end
; 0x192d0f

MovementData_0x192d0f: ; 0x192d0f
	step_down
	step_left
	step_down
	step_down
	step_end
; 0x192d14

MovementData_0x192d14: ; 0x192d14
	slow_step_right
	slow_step_down
	step_end
; 0x192d17

MovementData_0x192d17: ; 0x192d17
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	step_end
; 0x192d1c

MovementData_0x192d1c: ; 0x192d1c
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_left
	step_end
; 0x192d22

MovementData_0x192d22: ; 0x192d22
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	step_end
; 0x192d28

MovementData_0x192d28: ; 0x192d28
	step_down
	step_end
; 0x192d2a

MovementData_0x192d2a: ; 0x192d2a
	step_down
	step_down
	step_end
; 0x192d2d

MovementData_0x192d2d: ; 0x192d2d
	step_up
	step_end
; 0x192d2f

MovementData_0x192d2f: ; 0x192d2f
	step_right
	step_end
; 0x192d31

MovementData_0x192d31: ; 0x192d31
	step_left
	step_end
; 0x192d33

MovementData_0x192d33: ; 0x192d33
	slow_step_left
	turn_head_right
	step_end
; 0x192d36

MovementData_0x192d36: ; 0x192d36
	slow_step_right
	turn_head_left
	step_end
; 0x192d39

UnknownText_0x192d39: ; 0x192d39
	text "Would you like to"
	line "battle over a GAME"

	para "LINK cable or by"
	line "mobile phone?"
	done
; 0x192d7e

UnknownText_0x192d7e: ; 0x192d7e
	text "Would you like to"
	line "trade over a GAME"

	para "LINK cable or by"
	line "mobile phone?"
	done
; 0x192dc2

UnknownText_0x192dc2: ; 0x192dc2
	text "This way to the"
	line "MOBILE ROOM."
	done
; 0x192de0

UnknownText_0x192de0: ; 0x192de0
	text "Welcome to CABLE"
	line "CLUB COLOSSEUM."

	para "You may battle a"
	line "friend here."

	para "Would you like to"
	line "battle?"
	done
; 0x192e3a

UnknownText_0x192e3a: ; 0x192e3a
	text "Welcome to CABLE"
	line "TRADE CENTER."

	para "You may trade your"
	line "#MON here with"
	cont "a friend."

	para "Would you like to"
	line "trade?"
	done
; 0x192e9f

UnknownText_0x192e9f: ; 0x192e9f
	text "Welcome to CABLE"
	line "CLUB TIME CAPSULE."

	para "You can travel to"
	line "the past and trade"
	cont "your #MON."

	para "Would you like to"
	line "trade across time?"
	done
; 0x192f19

UnknownText_0x192f19: ; 0x192f19
	text "Your friend is not"
	line "ready."
	prompt
; 0x192f34

UnknownText_0x192f34: ; 0x192f34
	text "Before opening the"
	line "link, you must"
	cont "save your game."
	done
; 0x192f67

UnknownText_0x192f67: ; 0x192f67
	text "Please wait."
	done
; 0x192f75

UnknownText_0x192f75: ; 0x192f75
	text "The link has been"
	line "closed because of"
	cont "inactivity."

	para "Please contact"
	line "your friend and"
	cont "come again."
	prompt
; 0x192fd1

UnknownText_0x192fd1: ; 0x192fd1
	text "Please come again."
	prompt
; 0x192fe5

UnknownText_0x192fe5: ; 0x192fe5
	text "Please come in."
	prompt
; 0x192ff6

UnknownText_0x192ff6: ; 0x192ff6
	text "We'll put you in"
	line "the link room for"
	cont "the time being."
	done
; 0x193029

UnknownText_0x193029: ; 0x193029
	text "You can't link to"
	line "the past here."
	prompt
; 0x19304a

UnknownText_0x19304a: ; 0x19304a
	text "Incompatible rooms"
	line "were chosen."
	prompt
; 0x19306b

UnknownText_0x19306b: ; 0x19306b
	text "Please come in."
	done
; 0x19307c

UnknownText_0x19307c: ; 0x19307c
	text "Please enter."
	prompt
; 0x19308b

UnknownText_0x19308b: ; 0x19308b
	text "Sorry--@"
	text_from_ram $d073
	db $0
	line "can't be taken."
	prompt
; 0x1930a8

UnknownText_0x1930a8: ; 0x1930a8
	text "You can't take the"
	line "@"
	text_from_ram $d073
	text " with a"
	cont "@"
	text_from_ram $d086
	text "."
	prompt
; 0x1930cf

UnknownText_0x1930cf: ; 0x1930cf
	text "You can't take the"
	line "@"
	text_from_ram $d073
	text " that"
	cont "has MAIL with you."
	prompt
; 0x193100

UnknownText_0x193100: ; 0x193100
	text "I'm sorry--the"
	line "TIME CAPSULE is"
	cont "being adjusted."
	done
; 0x19312f

UnknownText_0x19312f: ; 0x19312f
	text "I'm sorry--the"
	line "TRADE MACHINE is"
	cont "being adjusted."
	done
; 0x19315f

UnknownText_0x19315f: ; 0x19315f
	text "I'm sorry--the"
	line "BATTLE MACHINE is"
	cont "being adjusted."
	done
; 0x193190

UnknownText_0x193190: ; 0x193190
	text "Hello! You're"
	line $52, ", right?"

	para "I have some-"
	line "thing for you."
	done
; 0x1931c4

UnknownText_0x1931c4: ; 0x1931c4
	text "Here you go!"
	done
; 0x1931d2

UnknownText_0x1931d2: ; 0x1931d2
	text "We hope to serve"
	line "you again."
	done
; 0x1931ef

UnknownText_0x1931ef: ; 0x1931ef
	text "Oh, you have no"
	line "space for this."

	para "Stop in at any"
	line "#MON CENTER"

	para "across the country"
	line "to pick it up."
	done
; 0x19324d

UnknownText_0x19324d: ; 0x19324d
	text "No? That's very"
	line "strange…"
	done
; 0x193266

UnknownText_0x193266: ; 0x193266
	text "Oh, please wait."
	done
; 0x193278

UnknownText_0x193278: ; 0x193278
	text "We need to change"
	line "the look here…"
	done
; 0x19329a

UnknownText_0x19329a: ; 0x19329a
	text "How does this"
	line "style look to you?"
	done
; 0x1932bc

UnknownText_0x1932bc: ; 0x1932bc
	text "Excuse me!"

	para "For STADIUM rules,"
	line "please bring six"

	para "different #MON,"
	line "excluding EGGS."

	para "The six #MON"
	line "must be different."

	para "Also, they must"
	line "not be holding"
	cont "identical items."

	para "Please come back"
	line "when you're ready."
	done
; 0x19337f

PokeCenter2F_MapEventHeader: ; 0x19337f
	; filler
	db 0, 0

	; warps
	db 6
	warp_def $7, $0, 255, GROUP_POKECENTER_2F, MAP_POKECENTER_2F
	warp_def $0, $5, 1, GROUP_TRADE_CENTER, MAP_TRADE_CENTER
	warp_def $0, $9, 1, GROUP_COLOSSEUM, MAP_COLOSSEUM
	warp_def $2, $d, 1, GROUP_TIME_CAPSULE, MAP_TIME_CAPSULE
	warp_def $0, $6, 1, GROUP_MOBILE_TRADE_ROOM_MOBILE, MAP_MOBILE_TRADE_ROOM_MOBILE
	warp_def $0, $a, 1, GROUP_MOBILE_BATTLE_ROOM, MAP_MOBILE_BATTLE_ROOM

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 3, 7, $0, MapPokeCenter2FSignpost0Script

	; people-events
	db 4
	person_event SPRITE_LINK_RECEPTIONIST, 6, 9, $6, $0, 255, 255, $a0, 0, LinkReceptionistScript_0x19289d, $ffff
	person_event SPRITE_LINK_RECEPTIONIST, 6, 13, $6, $0, 255, 255, $a0, 0, LinkReceptionistScript_0x192952, $ffff
	person_event SPRITE_LINK_RECEPTIONIST, 7, 17, $6, $0, 255, 255, $a0, 0, LinkReceptionistScript_0x192a2d, $ffff
	person_event SPRITE_OFFICER, 5, 5, $6, $0, 255, 255, $0, 0, OfficerScript_0x192c9a, $0711
; 0x1933dc

