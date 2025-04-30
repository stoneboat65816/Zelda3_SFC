arch snes.cpu
lorom
define	dma_adr		$0240
define	dma_size	$0242
define	vram_adr	$0244
define	dma_bank	$0246
define	save_y		$26
define	save_a		$28
define	scroll_flag	$2A
define	avatar_flag	$2C  //8bit
define	kuchi	$2D
define	kuchipaku	$2E
define	kuchi_index $34
define	event_ptr	$36	//24 bit
define 	event_index $39
define	event_timer	$3B
define	event_flag		$3C
define	event_flag2	$3D
define	event_id		$2F		//8bit
define	nmi_dma_index	$024E
define	anten_timer		$0250
define	cont_dma_times	$0150
define	cont_dma_bank		$0151
define	cont_dma_adr		$0152
define	cont_dma_size		$0154
define	cont_dma_vram		$0156
define	kindan		$7FFFD0
define	vram_a	$80
define	vram_b	$82

define	bounce		$0372

org $3AF000
	incbin "Data/ukokiek.bin"

org $A18000
nintendo:
	incbin "Data/nintendo.bin"
zelda_chr:
	incbin "Data/Title.bin"
zelda_map:
	incbin "Data/Title.map"	
zelda_pal:
	incbin "Data/Title.pal"
restore:
	incbin "Data/restore_chr.bin"
font0:
	incbin "Data/font0.bin"
font0_width:
	db $06, $07, $07, $07, $07, $07, $07, $07		
	db $04, $07, $07, $07, $08, $07, $07, $07		
	db $07, $07, $07, $07, $07, $07, $08, $07		//10
	db $07, $07, $07, $07, $07, $06, $06, $06		
	db $06, $0A, $07, $04, $05, $06, $04, $08		//20
	db $07, $07, $07, $07, $06, $06, $06, $07		
	db $07, $08, $06, $07, $07, $07, $07, $07		//30
	db $07, $07, $07, $07, $07, $07, $07, $07		
	db $07, $07, $07, $07, $07, $07, $07, $06		//40
	db $06, $06, $06, $06, $06, $06, $06, $06		
	db $06, $06, $04, $04, $04, $04, $04, $07		//50
	db $07, $07, $07, $07, $07, $07, $07, $07		
	db $07, $07, $07, $07, $07, $07, $07, $07		//60
	db $07, $07, $07, $07, $07, $08, $08, $08		
	db $08, $08, $08, $07, $07, $07, $07, $08		//70
	db $04, $0B, $0B, $0A, $0A, $07, $07, $07		
	db $06, $05, $05, $08, $08, $0D, $04, $0C		//80
	db $04, $04, $07, $06, $06, $08, $08, $08		
	db $08, $08, $08, $08, $06, $08, $06, $05		//90
	db $06, $07, $06, $05, $06, $08, $02, $07		
	db $07, $05, $08, $08, $08, $06, $06, $06		//A0
	db $06, $06, $08, $08, $08, $07, $07, $07	
	db $07, $07, $04, $05, $08, $08, $08, $08		//B0
	db $08, $09, $09, $09, $09, $0A, $0D, $0C
	
opening:
	incbin "Data/intro.bin"
	
playerselect:
	incbin "Data/playerselect.bin"
alphabet:
	incbin "Data/alphabet.bin"
	
org $A28000
naming:
	incbin "Data/naming.bin"
naming_map:
	incbin "Data/naming.map"
namingbg3_map:
	incbin "Data/naming_bg3.map"
copybg1map:
	incbin "Data/copybg1.map"
copybg3tile:
	incbin "Data/copy.bin"
delete_tile:
	incbin "Data/delete.bin"	
menu_text:
	incbin "Data/menutext.bin"
restore_map:
	incbin "Data/restoremap.bin"
kishi:
	incbin "Data/FE.bin"
kishi_pal:
	incbin "Data/FE.pal"
hajimari:
	incbin "Data/hajimari.bin"
ishibune_chr:
	incbin "Data/ishibune.bin"
ishibune_map:
	incbin "Data/ishibune.map"
ishibune_pal:
	incbin "Data/ishibune.pal"
	
uma_pal0:
	incbin "Data/0.pal"
uma_pal1:
	incbin "Data/1.pal"
uma_pal2:
	incbin "Data/2.pal"
uma_pal3:
	incbin "Data/3.pal"
uma_pal4:
	incbin "Data/4.pal"
uma_pal5:
	incbin "Data/5.pal"
uma_pal6:
	incbin "Data/6.pal"
uma_pal7:
	incbin "Data/7.pal"
hiiro_pal:
	incbin "Data/hiiro.pal"
	
	
org $A38000
uma_chr:
	incbin "Data/horse.bin"
uma_pal8:
	incbin "Data/8.pal"
uma_pal9:
	incbin "Data/9.pal"
jump_pal1:
	incbin "Data/jump1.pal"
jump_pal2:
	incbin "Data/jump2.pal"
walk_pal0:
	incbin "Data/walk0.pal"
walk_pal1:
	incbin "Data/walk1.pal"
walk_pal2:
	incbin "Data/walk2.pal"
	
org $A48000
ishibune_chr2:
	incbin "Data/ishibune2.bin"
ishibune_map2:
	incbin "Data/ishibune2.map"
ishibune_chr3:
	incbin "Data/ishibune3.bin"
ishibune_map3:
	incbin "Data/ishibune3.map"
chara_chr:
	incbin "Data/chara.bin"
yukiguni_map1:
	incbin "Data/yukiguni1.map"
yukiguni_map2:
	incbin "Data/yukiguni2.map"
yukiguni_pal:
	incbin "Data/yukiguni.pal"
honoo_chr:
	incbin "Data/flame.bin"
ue_pal:
	incbin "Data/ue.pal"
shita_pal:
	incbin "Data/shita.pal"
hidari_pal:
	incbin "Data/hidari.pal"
yukiguni2_pal:
	incbin "Data/yukiguni2.pal"
	
org $A58000
yukiguni_chr:
	incbin "Data/yukiguni.bin"
intro_kaiwa_frame:
	incbin "Data/frame.bin"
intro_frame_map:
	incbin "Data/frame.map"
avatar_pal:
	incbin "Data/avatar.pal"
byu_pal:
	incbin "Data/byu.pal"

org $A68000
avatar_chr:
	incbin "Data/avatar.bin"
byu_chr:
	incbin "Data/byu.bin"
byu_map:
	incbin "Data/byu.map"
ending_chr:
	incbin "Data/ending.bin"
	
org $A78000
staffroll_chr:
	incbin "Data/staffroll.bin"
org $A98000
you_chr:
	incbin "Data/you.bin"
site_chr:
	incbin "Data/site.bin"

//######FAST ROM#######
org $00FFD5
	db $30

org $008000
	JML fast_main
org $0080C9
	SEI
	REP #$30
	JML fast_nmi

org $0082D8
	SEI
	REP #$30
	JML fast_irq
	
org $9FFF80
fast_main:
	LDA #$01
	STA $00420D
	STZ $4200
	STZ $420C
	STZ $420B
	JML $80800A
	
//##########RESTART###########
org $82A49B
	JML restart
org $82884F
	JML restart2
	
//######DEBUG##############
org $808039
	NOP #2
	LDA $F2
	CMP #$A0
	BNE _8044
	INC $0FD7
_8044:
	LDA $F2
	CMP #$90
	BEQ _8051
	LDA $0FD7
	AND #$01
	BNE _805A
_8051:
	INC $1A
	JSR $841E		//init oam
	JSL $8080B5		//game mode
_805A:
	
	

//######INIT#########
org $028000
	JML new_init
	
//###MENU ITEM#####
org $0DDD5A
	JML new_item_screen
org $0DE6B6
	JML new_ability_text
org $8DE81A
	JML new_ability_text2
org $0DEBB0
	JML item_name
org $0DE2C1
	JML vial_name
org $8DE79C
	JML item_frame
org $0DE460
	JML item_frame2
org $8DEAA4
	JML _crystal
org $8DEA15
	JML _emblem
org $8DEDFE
	JML _dungeon_item
	
org $0AE84A
	JML restore_dungeon_map
org $0DDFAF
	JML restore_dungeon_map2
	
//########For Byu########
org $8CC224
	JML for_byu
	
//#######QUICK SELECT#######
org $028801
	JML new_press_dungeon
org $02A45E
	JML new_press_field

//#######SAVE######
org $00FA2F
	JML new_save_menu
org $0EF214
	JML new_save_menu2
	
//##########EASY############
org $079C8A		//hadouken
//	CMP #$01

org $0780F7
//	NOP #2	//immortal
	
org $08DCDE
//	NOP #2	//no dec mp
org $07B0C8
//	NOP #2	//no dec mp
org $07AE33
//	NOP #2	//no dec mp
org $07AEB6
//	NOP #2	//no dec mp

org $0DDF1E
	JML kaifuku
	
//#####Ending##########
org $028508
	JML ending1
org $0EECE2
	JML ending2
org $0EE7BA
	JML staff_roll
org $0EE7A0		//length
	CMP #$0AE0


//#####NEW TITLE###########
org $008F45
	JML new_title
org $808F45
	JML new_title
org $0CC171
	JML new_nintendo_color
org $8CC171
	JML new_nintendo_color
org $0CC19C
	JML new_nintendo_map
org $8CC19C
	JML new_nintendo_map
org $0CC251
	JML new_screen
org $8CC251
	JML new_screen
org $008BE2
	JMP $DD50
org $808BE2
	JMP $DD50
org $00DD50
	JML new_title_map
org $80DD50
	JML new_title_map
new_color:
	JML new_title_color
original_color_routine:
	JSR $EA14
	JMP $E97D
org $0CC2C9	//title screen endurance
	JML new_timing
org $0CC51A
	JML new_timing2
org $00E97A		//color
	JMP new_color
	
org $0EF5A3
//	NOP #3		//disable rewrite bg1 tilemap buffer

org $0CC7DF
	JML hashire
org $0CC120
	JML _cursor
	
//#########INTRO REWRITE##########
org $0CC2C5
	JML guest
org $00E37E
	JML new_intro
//duration1
org $0CEDDF
	LDX #$123C
//Intro tilemap
org $0CFA2D
	dw $6561, $2840
	dw $3480
	dw $8561, $2840
	dw $3490
	dw $A561, $2900
	db $81, $34, $82, $34, $81, $34, $82, $34, $81, $34
	db $82, $34, $81, $34, $82, $34, $81, $34, $83, $30
	db $83, $70, $82, $34, $81, $34, $82, $34, $81, $34
	db $82, $34, $81, $34, $82, $34, $81, $34, $82, $34, $81, $34
	dw $C561, $2900
	db $91, $34, $92, $34, $91, $34, $92, $34, $91, $34, $92
	db $34, $91, $34, $92, $34, $91, $34, $93, $34, $93, $74
	db $92, $34, $91, $34, $92, $34, $91, $34, $92, $34, $91
	db $34, $92, $34, $91, $34, $92, $34, $91, $34
	dw $E561, $2900
	db $A0, $34, $A1, $34, $A0, $34, $A1, $34, $A0, $34
	db $A1, $34, $A0, $34, $A1, $34, $A0, $34, $A1, $34
	db $A0, $34, $A1, $34, $A0, $34, $A1, $34, $A0, $34
	db $A1, $34, $A0, $34, $A1, $34, $A0, $34, $A1, $34
	db $A0, $34
	dw $0562, $2840
	db $80, $B4
	db $FF
	
incbin "Data/intro_map.bin"

//#########PLAYER SCREEN#############
org $0CCCEC
	JML new_player_screen
org $0CCDC5
	JML new_player_screen_map
	
org $008BDD
	JML new_player_screen_map2
	
org $0CD7A3
	LDA #$01FC	//bg3 scroll
	
org $0CD804
	db $05	//F
	db $06 //G
	db $07 //H
	db $08 //I
	db $09 //J
	db $0A	//K
	db $0B	//L
	db $CC
	db $70		//wr
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC	
	
org $0CD81F
	db $78		//space
	db $0C	//M
	db $0D	//N
	db $0E		//O
	db $0F		//P
	db $10		//Q
	db $11		//R
	db $12		//S
	db $13		//T
	db $14		//U
	db $15		//V
	db $16		//W
	db $CC
	db $71		//wx
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	
org $0CD83F
	db $17		//X
	db $18		//Y
	db $19		//Z
	db $1A	//DD
	db $1B	//a
	db $1C	//b
	db $1D	//c
	db $1E		//d
	db $1F		//e
	db $20		//f
	db $21		//g
	db $22		//h
	db $CC
	db $72		//wj
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
org $0CD85F
	db $23	//i
	db $24	//j
	db $25	//k
	db $26		//l
	db $27		//m
	db $28		//n
	db $29		//o
	db $2A	//p
	db $2B	//q
	db $2C	//r
	db $2D	//s
	db $2E		//t
	db $CC
	db $73		//ys
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
org $0CD87F
	db $2F		//u
	db $30		//v
	db $31		//w
	db $32		//x
	db $33		//y
	db $34		//z
	db $35		//dd
	db $36		//as
	db $37		//af
	db $38		//ar
	db $39		//ax
	db $3A	//aj
	db $CC
	db $74		//yf
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
org $0CD89F
	db $3B	//aw
	db $3C	//aws
	db $3D	//awf
	db $3E		//awr
	db $3F 	//awx
	db $40 	//awj
	db $41 	//aa
	db $42 	//aas
	db $43 	//aaf
	db $44 	//aar
	db $45 	//aax
	db $46 	//aaj
	db $CC
	db $75		//yr
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	
org $0CD8BF
	db $47		//es
	db $48		//ef
	db $49		//er
	db $4A		//ex
	db $4B		//ej
	db $4C		//ee
	db $4D		//ees
	db $4E		//eef
	db $4F		//eer
	db $50		//eex
	db $51		//eej
	db $52		//is
	db $CC
	db $76	//yx
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
org $0CD8DF
	db $53		//if
	db $54		//ir
	db $55		//ix
	db $56		//ij
	db $57		//os
	db $58		//of
	db $59		//or
	db $5A		//ox
	db $5B		//oj
	db $5C		//oo
	db $5D		//oos
	db $5E		//oof
	db $CC
	db $77	//yj
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
org $0CD8FF
	db $5F		//oor
	db $60		//oox
	db $61		//ooj
	db $78		//space
	db $62		//ow
	db $63		//ows
	db $64		//owf
	db $CA
	db $CB
	db $CD
	db $CD
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC	
	
org $0CD91F
	db $65		//owr
	db $66		//owx
	db $67		//owj
	db $68		//us
	db $69		//uf
	db $6A		//ur
	db $6B		//ur
	db $6C		//uj
	db $6D		//w
	db $6E		//ws
	db $6F		//wf
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	db $CC
	
//#######COPY  SCREEN#############
org $0CE2F7	//blinking text
	dw $C560
	dw $0D00
	dw $0188, $2DC3, $2DC4, $2DC5, $2DC6, $0188, $0188
	dw $E560
	dw $0D00
	dw $0188, $2DD3, $2DD4, $2DD5, $2DD6, $0188, $0188
org $0CE3B8
	dw $D460
	dw $0D00
	dw $0188, $0188, $2DC7, $2DC8, $2DC9, $0188, $0188
	dw $F460
	dw $0D00
	dw $0188, $0188, $2DD7, $2DD8, $2DD9, $0188, $0188
org $0CD156
	dw $C562
	dw $1100
	dw $25E0, $25E1, $25E2, $25E3, $25E4, $0188, $0188, $0188, $0188
	dw $E562
	dw $1100
	dw $25F0, $25F1, $25F2, $25F3, $25F4, $0188, $0188, $0188, $0188
	
//#######DELETE SCREEN#############
org $0CD57F		//heart
	LDA #$05E5
	
org $0CD344
	dw $A562
	dw $1700
	dw $25E0, $25E1, $25E2, $25E3, $25E4, $0188, $0188, $0188, $0188, $0188, $0188, $0188
	dw $C562
	dw $1700
	dw $25F0, $25F1, $25F2, $25F3, $25F4, $0188, $0188, $0188, $0188, $0188, $0188, $0188	
	
//#######MODE 7: DUNGEON#######
org $05DE2C
	JML ojisan_serifu

//###MODE 11: HOLE############
org $028BB4
	JML init_hole

//########MODE 14: OPENING ##############
org $0CED93
	JML restore_mode14_vram

//#######TEXT##############
define char_haba	$0143
define	shift				$0145
define	buffer1		$0147
define	buffer2		$0149
define	tile_no		$014B
define	line				$014D
define  char_buffer $BFC0
define	textbox_pos		$7FFFE0
define	window1_hidari		$7FFFE2
define	window1_migi		$7FFFE3
define	window2_hidari		$7FFFE4
define	window2_migi		$7FFFE5
define	irq_hi		$7FFFE6
define	irq_low	$7FFFE8
define	scanline_vpos		$7FFFEA	//16bit
define	scanline_hpos		$7FFFEC
define	color1	$7FFFEE
define	color2	$7FFFEF
define	color3	$7FFFF0
define	color_math	$7FFFF1
define	uranai_flag		$7FFFF2
define	save_tilemap_flag		$7FFFF3
define	flag1	$0250	//8bit
define	flag2	$0251	//8bit
define	flag3	$0252
define	save_x		$0253
define	flag4		$0255
define	box_irq_trigger		$7FFFFF
define	new_kaiwa_trigger	$1D00

org $0EFBDD
	JML save_boxpos

org $05D57D
	JML new_world_kaiwa
org $09C7AF
	JML kaikin
	
org $05EE2F
	JML new_kyokai_kaiwa
org $05DE08
	JML new_kyokai_kaiwa2
org $05DDCE
	JML new_kyokai_kaiwa3
org $05EDF5
	JML new_kyokai_kaiwa4
org $0DC4B3
	JML new_kakariko_kaiwa1
org $05E3BE
	JML new_kakariko_kaiwa2
org $028140	//enter house
	JML clear_flag
org $0DC7E7
	JML new_uranai
org $0DC93D
	JML new_uranai2
org $0EF0D2		//num
	ORA #$00A0
org $0DC2F7
	JML new_ajito
org $05EEC5
	JML new_fake_sword
org $0DC9D3
	JML yami_uranai
org $1EF624
	JML tougen_ojisan
	
org $0EFD3E
	dw $6124		//frame pos
	dw $6284
	
org $0EF274
	JML end_text

org $0EEE86
	JML new_ptr
	
org $0EF2D7
	JML vwf
	
org $0EF1A5
	LDA $1CDD
	LDY #$0000
	CMP #$00FF
org $0EF1B8
	CMP #$00FF
org $0EF1BD
	CMP #$00FF
org $0EF1CA
	CMP #$00FF
org $0EF1CF
	CMP #$00FF
org $0EF1DD
	CMP #$00FF
org $0EF1E2
	CMP #$00FF
org $0EF1E7
	CMP #$00FF
org $0EF2C0
	CMP #$00FF
org $0EF2C5
	CMP #$00FF
org $0EF2CA
	CMP #$00FF
	
org $008CE4		//new tileset DMA
	REP #$10
	LDA #$80
	STA $2115
	LDX #$1801
	STX $4300
	LDY #$7A80
	STY $2116
	LDY #$8000
	STY $4302
	LDA #$7F
	STA $4304
	LDX #$09C0
	STX $4305
	LDA #$01
	STA $420B
	SEP #$10
	STZ $0710
	RTS
org $0EFA21
	JML new_line

org $0EF952		//text scroll
	JML new_scroll
	
org $0EFC4F	//disable box opening extra map 
	NOP #3
	
//#############NMI DMA################
org $808C75
	JML nmi_dma
	
//#########KAIWA WAKU############
org $0EF10C
	JML new_frame_width
org $0EF259
	JML del_new_frame
	

//#########NEW NMI#################
org $A08000
fast_nmi:
	PHA
	LDA $10
	CMP #$FFFF
	BEQ +
	PLA
	PHA
	PHX
	PHY
	PHD
	PHB
	JML $8080D1
+
	SEP #$20
	LDA $004210
	REP #$30
	PLB
	PLD
	PLY
	PLX
	PLA
	RTI
	
new_title:
	LDA $10
	BEQ +
	LDA $0116
	STA $2117
	JML $808F4B
+
	PHP
	SEP #$20
	REP #$10
	LDX #$1801
	STX $4300
	LDX #(nintendo)
	STX $4302
	LDA.b #(nintendo>>16)
	STA $4304
	LDA #$80
	STA $2115
	LDX #$0400
	STX $4305
	LDX #$9000>>1
	STX $2116	
	LDA #$01
	STA $420B
	PLP
	JML $808F71
new_nintendo_color:
	LDX #$20
	LDA #$7FFF
	STZ $2118
-
	STA $7EC620,x
	DEX #2
	BPL -
	LDA #$64A5
	STA $7EC622 //blue
	JML $8CC181
new_nintendo_map:
	JSR nintendo_map
	LDA $B0
	JML $8CC1A1
	
	
nintendo_map:
	PHP
	PHB
	PHK
	PLB
	SEP #$30
	LDA #$08
	STA {buffer1}
	LDX #$00
	TXY
-
	LDA nintendo_x,y
	STA $7E0800,x
	LDA #$68
	STA $7E0801,x
	LDA nintendo_tile,y
	STA $7E0802,x
	LDA #$32
	STA $7E0803,x
	INX #4
	INY
	DEC {buffer1}
	BNE -

	LDA #$AA
	STA $7E0A20
	STA $7E0A21
	STA $7E0A22
	STA $7E0A23
	STA $7E0A24
	STA $7E0A25
	STA $7E0A26
	STA $7E0A27
	STA $7E0A28
	STA $7E0A29
	STA $7E0A2A
	STA $7E0A2B
	PLB
	PLP
	RTS
	
nintendo_x:
	db $40, $50, $60, $70, $80, $90, $A0, $B0

nintendo_tile:
	db $80, $82, $84, $86, $88, $8A, $8C, $8E
	
new_screen:
	PHP
	SEP #$20
	REP #$10
	LDA.b #(zelda_chr>>16)
	STA $4304
	LDA #$80
	STA $2115
	LDX #$1801
	STX $4300
	LDX #(zelda_chr)
	STX $4302
	LDX #$1A00
	STX $4305
	LDX #$6000>>1
	STX $2116
	LDA #$01
	STA $420B
	LDX #$0000
_loop:
	LDA zelda_map,x
	STA $7F7500,x
	INX
	CPX #$0700
	BNE _loop
	LDX #$0000
_loop2:
	LDA zelda_map+1,x
	CLC
	ADC #$39
	STA $7F7501,x
	INX #2
	CPX #$0700
	BNE _loop2
	LDA #$7F
	STA $4304
	LDX #$7500
	STX $4302
	LDX #$2000>>1
	STX $2116
	LDX #$0700
	STX $4305
	LDA #$01
	STA $420B

	REP #$20
	LDA #$8000>>1
	STA $2116
	LDA #$0800
	STA $4305
	LDA #(kishi)
	STA $4302
	SEP #$20
	LDA.b #(kishi>>16)
	STA $4304
	LDA #$01
	STA $420B
	
	REP #$20
	LDA #(hajimari)
	STA $4302
	LDA #$0200
	STA $4305
	LDA #$A200>>1
	STA $2116
	SEP #$20
	LDA #$01
	STA $420B	
	PLP
	LDY #$5D
	JSL $80D377
	JML $8CC257
	
wait_vblank:
	PHP
	SEP #$20
	LDA $7E0013
	BMI +
-
	LDA $004212
	BIT #$80
	BEQ -
+
	PLP
	RTL
	
wait_end_vblank:
	PHP
	SEP #$20
-
	LDA $004212
	BIT #$80
	BNE -
	PLP
	RTL
	
new_title_map:
	LDA $10
	BNE +
	PHP
	SEP #$20
	REP #$10
	LDX #$1801
	STX $4300
	LDX #$0700
	STX $4305
	LDX #$7500
	STX $4302
	LDX #$2000>>1
	STX $2116
	LDA #$7F
	STA $4304
	LDA #$80
	STA $2115
	LDA #$01
	STA $420B
	PLP	
	JML $808BE5
+
	LDA $02
	JSR _0092a1
	JML $808BE5

_0092a1:
	REP #$10
	STA $4314
	STZ $06
	LDY #$0000
	LDA [$00],y
	BPL _0092b2
	SEP #$30
	RTS
_0092b2:
	STA $04
	INY
	LDA [$00],y
	STA $03
	INY
	LDA [$00],y
	AND #$80
	ASL
	ROL
	STA $07
	LDA [$00],y
	AND #$40
	STA $05
	LSR #3
	ORA #$01
	STA $4310
	LDA #$18
	STA $4311
	REP #$20
	LDA $03
	STA $2116
	LDA [$00],y
	XBA
	AND #$3FFF
	TAX
	INX
	STX $4315
	INY #2
	TYA
	CLC
	ADC $00
	STA $4312
	LDA $05
	BEQ +
	INX
	TXA
	LSR
	TAX
	STX $4315
	SEP #$20
	LDA $05
	LSR #3
	STA $4310
	LDA $07
	STA $2115
	LDA #$02
	STA $420B
	LDA #$19
	STA $4311
	REP #$21
	TYA
	ADC $00
	INC
	STA $4312
	LDA $03
	STA $2116
	STX $4315
	LDX #$0002
+
	STX $03
	TYA
	CLC
	ADC $03
	TAY
	SEP #$20
	LDA $07
	ORA #$80
	STA $2115
	LDA #$02
	STA $420B
	LDA [$00],y
	BMI _009344
	JMP _0092b2
_009344:
	SEP #$30
	RTS
	
new_timing:
	REP #$20
	DEC $B0
	BNE +
	SEP #$20
	LDA #$14
	STA $10
	STZ $11
	STZ $22
+
	SEP #$20
	RTL
new_timing2:
	LDA #$31
	STA $9A
	LDA #$01
	STA $B0
	LDA #$02
	STA $B1
	JML $8CC520
	
new_title_color:
	LDA $10
	AND #$00FF
	BEQ +
	JML original_color_routine	
+
	PHP
	REP #$30
	LDA $0B00
	AND #$00FF
	ASL
	TAX
	JSR (title_color,x)
	SEP #$20
	LDA $0B00
	CMP #$16
	BEQ +
	INC $0B00
+
	PLP
	JML $80E97D
	
_EA14:
	
	RTL

title_color:
	dw	color0
	dw	color1
	dw	color2
	dw	color3
	dw	color4
	dw	color5
	dw	color6
	dw	color7
	dw	color8
	dw	color9
	dw	color10
	dw	color11
	dw	color12
	dw	color13
	dw	color14
	dw	color15
	dw	color16
	dw	color17
	dw	color18
	dw	color19
	dw	color20
	dw	color21
	dw	color22
color0:
	PHP
	SEP #$20
	LDX #$0020
-
	LDA pal0,x
	STA $7EC5C0,x
	DEX
	BPL -
	PLP
	RTS
color1:
	PHP
	SEP #$20
	LDX #$0020
-
	LDA pal1,x
	STA $7EC5C0,x
	DEX
	BPL -
	PLP
	RTS
color2:
	PHP
	SEP #$20
	LDX #$0020
-
	LDA pal2,x
	STA $7EC5C0,x
	DEX
	BPL -
	PLP
	RTS
color3:
	PHP
	SEP #$20
	LDX #$0020
-
	LDA pal3,x
	STA $7EC5C0,x
	DEX
	BPL -
	PLP
	RTS
color4:
	PHP
	SEP #$20
	LDX #$0020
-
	LDA pal4,x
	STA $7EC5C0,x
	DEX
	BPL -
	PLP
	RTS
color5:
	PHP
	SEP #$20
	LDX #$0020
-
	LDA pal5,x
	STA $7EC5C0,x
	DEX
	BPL -
	PLP
	RTS
color6:
	PHP
	SEP #$20
	LDX #$0020
-
	LDA pal6,x
	STA $7EC5C0,x
	DEX
	BPL -
	PLP
	RTS
color7:
	PHP
	SEP #$20
	LDX #$0020
-
	LDA pal7,x
	STA $7EC5C0,x
	DEX
	BPL -
	PLP
	RTS
color8:
	PHP
	SEP #$20
	LDX #$0020
-
	LDA pal8,x
	STA $7EC5C0,x
	DEX
	BPL -
	PLP
	RTS
color9:
	PHP
	SEP #$20
	LDX #$0020
-
	LDA pal9,x
	STA $7EC5C0,x
	DEX
	BPL -
	PLP
	RTS
color10:
	PHP
	SEP #$20
	LDX #$0020
-
	LDA pal10,x
	STA $7EC5C0,x
	DEX
	BPL -
	PLP
	RTS
color11:
	PHP
	SEP #$20
	LDX #$0020
-
	LDA pal11,x
	STA $7EC5C0,x
	DEX
	BPL -
	PLP
	RTS
color12:
	PHP
	SEP #$20
	LDX #$0020
-
	LDA pal12,x
	STA $7EC5C0,x
	DEX
	BPL -
	PLP
	RTS
color13:
	PHP
	SEP #$20
	LDX #$0020
-
	LDA pal13,x
	STA $7EC5C0,x
	DEX
	BPL -
	PLP
	RTS
color14:
	PHP
	SEP #$20
	LDX #$0020
-
	LDA pal14,x
	STA $7EC5C0,x
	DEX
	BPL -
	PLP
	RTS
color15:
	PHP
	SEP #$20
	LDX #$0020
-
	LDA pal15,x
	STA $7EC5C0,x
	DEX
	BPL -
	PLP
	RTS
color16:
	PHP
	SEP #$20
	LDX #$0020
-
	LDA pal16,x
	STA $7EC5C0,x
	DEX
	BPL -
	PLP
	RTS
color17:
	PHP
	SEP #$20
	LDX #$0020
-
	LDA pal17,x
	STA $7EC5C0,x
	DEX
	BPL -
	PLP
	RTS
color18:
	PHP
	SEP #$20
	LDX #$0020
-
	LDA pal18,x
	STA $7EC5C0,x
	DEX
	BPL -
	PLP
	RTS
color19:
	PHP
	SEP #$20
	LDX #$0020
-
	LDA pal19,x
	STA $7EC5C0,x
	DEX
	BPL -
	PLP
	RTS
color20:
	PHP
	SEP #$20
	LDX #$0020
-
	LDA pal20,x
	STA $7EC5C0,x
	DEX
	BPL -
	PLP
	RTS
color21:
	PHP
	SEP #$20
	LDX #$0020
-
	LDA pal21,x
	STA $7EC5C0,x
	DEX
	BPL -
	PLP
	RTS
color22:
	LDX #$0020
-
	LDA zelda_pal,x
	STA $7EC5C0,x
	DEX #2
	BPL -
	LDX #$0080
-
	LDA pal23,x
	STA $7EC540,x
	DEX #2
	BPL -
	LDX #$0120
-
	LDA pal24,x
	STA $7EC5E0,x
	DEX #2
	BPL -	
	
	REP #$20
	LDX #$003E
-
	LDA kishi_pal,x
	STA $7EC6C0,x
	DEX #2
	BPL -
	SEP #$20
	RTS

pal0:
dw $0000, $0003, $0000, $0003, $0842, $0C63, $0002, $0023
dw $0023, $0043, $0C20, $0801, $0C00, $0400, $0000, $0003
pal1:
dw $0000, $0004, $0004, $0004, $0C63, $1084, $0003, $0044
dw $0044, $0085, $1040, $0C21, $1401, $0400, $1802, $0405
pal2:
dw $0000, $000B, $0009, $000B, $2529, $2D6B, $0007, $008B
dw $00AB, $012C, $2CA0, $2043, $3043, $0C01, $0400, $080B
pal3:
dw $0000, $000C, $000B, $000C, $294A, $318C, $0009, $00AD
dw $00CC, $014D, $30C0, $2464, $3843, $1001, $4426, $082D
pal4:
dw $0000, $000E, $000C, $000E, $2D6B, $39CE, $000A, $04CE
dw $00EE, $018F, $38E0, $2864, $4044, $1001, $4C27, $0C2F
pal5:
dw $0000, $000F, $042D, $000F, $318C, $3DEF, $000B, $04D0
dw $010F, $01B1, $3D00, $2C85, $4844, $1401, $5428, $0C31
pal6:
dw $0000, $000F, $042D, $000F, $318C, $3DEF, $000B, $04D0
dw $010F, $01B1, $3D00, $2C85, $4844, $1401, $5428, $0C31
pal7:
dw $0000, $0011, $042F, $0011, $39CE, $4631, $000C, $04F1
dw $0131, $01D3, $4520, $3085, $4C65, $1401, $5C29, $0C32
pal8:
dw $0000, $0011, $042F, $0011, $39CE, $4631, $000C, $04F1
dw $0131, $01D3, $4520, $3085, $4C65, $1401, $5C29, $0C32
pal9:
dw $0000, $0013, $0430, $0013, $3DEF, $4E73, $000D, $0513
dw $0133, $0214, $4D20, $3886, $5465, $1801, $6829, $6961
pal10:
dw $0000, $0013, $0430, $0013, $3DEF, $4E73, $000D, $0513
dw $0133, $0214, $4D20, $3886, $5465, $1801, $6829, $6961
pal11:
dw $0000, $0014, $0432, $0014, $4210, $5294, $000E, $0515
dw $0154, $0236, $5140, $3CA6, $5C66, $1801, $702A, $1036
pal12:
dw $0000, $0014, $0432, $0014, $4210, $5294, $000E, $0515
dw $0154, $0236, $5140, $3CA6, $5C66, $1801, $702A, $1036
pal13:
dw $0000, $0016, $0433, $0016, $4A52, $5AD6, $000F, $0536
dw $0176, $0258, $5960, $40A7, $6486, $1C02, $784B, $1037
pal14:
dw $0000, $0016, $0433, $0016, $4A52, $5AD6, $000F, $0536
dw $0176, $0258, $5960, $40A7, $6486, $1C02, $784B, $1037
pal15:
dw $0000, $0017, $0434, $0017, $4E73, $5EF7, $0010, $0558
dw $0197, $029A, $5D80, $44C7, $6C87, $1C02, $788D, $1459
pal16:
dw $0000, $0017, $0434, $0017, $4E73, $5EF7, $0010, $0558
dw $0197, $029A, $5D80, $44C7, $6C87, $1C02, $788D, $1459
pal17:
dw $0000, $0017, $0434, $0017, $4E73, $5EF7, $0010, $0558
dw $0197, $029A, $5D80, $44C7, $6C87, $1C02, $788D, $1459
pal18:
dw $0000, $0019, $0436, $0019, $5294, $6739, $0012, $055A
dw $01B9, $06BB, $65A0, $48C8, $6CC8, $2002, $78CE, $145B
pal19:
dw $0000, $001B, $0437, $001B, $56B5, $6F7B, $0013, $097B
dw $01DB, $06DD, $6DC0, $50E8, $6CEA, $2002, $7910, $185D
pal20:
dw $0000, $001C, $0438, $001C, $5EF7, $739C, $0014, $099D
dw $01DC, $06FE, $71C0, $54E9, $712C, $2402, $7971, $1C7D
pal21:
dw $0000, $001E, $043A, $043E, $6318, $7BDE, $0015, $0DBD
dw $01FE, $0F1E, $79E0, $58E9, $716D, $2402, $79B3, $20BD
pal23:
db $00, $00, $63, $00, $84, $00, $C6, $00, $C7, $00, $2A, $01, $EC, $00, $F7, $00
db $00, $00, $F2, $7A, $34, $7B, $B8, $7B, $DC, $7B, $A7, $2D, $00, $00, $AF, $7A
db $00, $00, $80, $00, $E0, $00, $21, $05, $62, $09, $83, $0D, $6B, $21, $E7, $14
db $00, $00, $DE, $7B, $3B, $00, $00, $00, $3B, $01, $FE, $01, $9E, $02, $1E, $03
db $00, $00, $C5, $20, $41, $10, $83, $18, $E6, $24, $AC, $18, $EE, $20, $CD, $1C
db $00, $00, $DE, $7B, $DE, $7B, $DE, $7B, $DE, $7B, $DE, $7B, $DE, $7B, $DE, $7B
db $00, $00, $6A, $35, $28, $2D, $E5, $24, $C5, $20, $83, $10, $6B, $21, $E7, $14
db $00, $00, $F2, $7A, $34, $7B, $B8, $7B, $DC, $7B, $A7, $2D, $00, $00, $AF, $7A
pal24:
db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
db $00, $00, $DE, $7B, $DE, $7B, $DE, $7B, $DE, $7B, $DE, $7B, $DE, $7B, $DE, $7B
db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
db $00, $00, $DE, $7B, $B8, $04, $E6, $19, $A9, $46, $84, $10, $1E, $0F, $BE, $15
db $00, $00, $DE, $7B, $58, $15, $95, $10, $BB, $35, $84, $10, $D6, $62, $CE, $41
db $00, $00, $DE, $7B, $28, $65, $CB, $5E, $D3, $6B, $84, $10, $30, $7B, $2E, $7A
db $00, $00, $DE, $7B, $FE, $55, $89, $51, $91, $72, $84, $10, $BE, $26, $76, $11
db $00, $00, $DE, $7B, $D5, $16, $75, $11, $7D, $32, $84, $10, $DD, $3D, $F6, $20
db $00, $00, $84, $10, $84, $10, $84, $10, $84, $10, $84, $10, $84, $10, $84, $10
db $00, $00, $DE, $7B, $7A, $2D, $75, $11, $7D, $32, $84, $10, $35, $7A, $A9, $61
db $00, $00, $DE, $7B, $B8, $08, $28, $16, $32, $37, $84, $10, $3E, $1B, $16, $0E
db $00, $00, $4D, $01, $B0, $01, $F3, $01, $56, $02, $79, $02, $FD, $02, $5F, $03
db $00, $00, $FF, $7F, $9F, $5F, $0A, $00, $15, $7E, $24, $2C, $D0, $75, $2B, $61
db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
db $00, $00, $DE, $7B, $7E, $5B, $09, $00, $F4, $79, $23, $28, $AF, $71, $0A, $5D
db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00


restore_mode14_vram:
	PHP
	SEP #$20
	REP #$10
	LDA #$80
	STA $2115
	LDA.b #(restore>>16)
	STA $4374
	LDX #$1801
	STX $4370
	LDX #(restore)
	STX $4372
	LDX #$0400
	STX $4375
	LDX #$7200>>1
	STX $2116
	LDA #$80
	STA $420B
	PLP
	LDX #$50
-
	STZ $20,x
	DEX
	BPL -
	JML $8CED9A
	
new_ptr:
	REP #$30
	LDA $1CF0
	PHA
	ASL
	CLC
	ADC $01,s
	TAX
	PLA
	LDA $3E8000,x
	STA $04
	LDA $3E8001,x
	STA $05
	JSR init_kaiwa
	JML $8EEE98
	
new_frame_width:
	JSR new_frame
	REP #$30
	LDA #$0006
	STA $00
-
	LDX #$0006
	JSR new_frame
	DEC $00
	BNE -
	LDX #$000C
	JSR new_frame
	LDA #$FFFF
	STA $1002,y
	SEP #$20
	LDA #$FF
	STA {box_irq_trigger}	//color math flag
	LDA #$A1	//v-irq
	STA $4200
	REP #$20
	LDA {irq_hi}
	STA $4209
	JML $8EF12C
	
new_frame:
	REP #$30
	LDA $1CD0
	SEC
	SBC #$0002	//waku vram pos
	XBA
	STA $1002,y
	INY #2
	XBA
	CLC
	ADC #$0022
	STA $1CD0
	LDA #$3700		//dma size
	STA $1002,y
	INY #2
	LDA frame,x
	STA $1002,y
	INX #2
	INY #2
	LDA #$001A
	STA $0E
-
	LDA frame,x
	STA $1002,y
	INY #2
	DEC $0E
	BNE -
	INX #2
	LDA frame,x
	STA $1002,y
	INY #2
	RTS
	
frame:
	dw $28F3, $28F4, $68F3
	dw $28C8, $387F, $68C8
	dw $A8F3, $A8F4, $E8F3

del_new_frame:
	REP #$30
	LDA $1CD0
	SEC
	SBC #$0002
	XBA
	STA $1002,x
	INX #2
	JML $8EF264
	
vwf:
	REP #$30
	LDX $1CD9
	LDA $7F1200,x
	CMP #$FF00
	BEQ +
	SEP #$30
	LDA #$0C
	STA $012F
	REP #$30
+
	LDA $1CDD
	ASL
	TAX
	SEP #$20
	LDA $1CDC	//tile pro
	STA $1301,x
	STA $1303,x
	STA $1305,x
	STA $1329,x
	STA $132B,x
	STA $132D,x
	JSR write_text_pos
	REP #$30
	JSR text_render
	JSR tile2buffer
	JSR get_width
	JSR shift_cal
	JMP end_vwf
	LDX $1CD9
	LDA $7F1200,x
	XBA
	AND #$01FF
	ASL #2
	STA $09
	LDY #$0000
	LDA $1CDD
	ASL #4
	TAX
//	JSR _F482
	LDX $1CD9
	LDA $7F1200,x
	XBA
	AND #$01FF
	ASL #2
	STA $09
	LDY #$0016
	LDA $1CDD
	ASL #4
	CLC
	ADC #$0140
	TAX
	JSR _F482
	LDA $09
	AND #$0003
	TAX
	LDA $FD7C,x
	CLC
	ADC $1CE6
	TAY
	AND #$0007
	STA $1CE6
	TYA
	AND #$00FF
	LSR #3
	CLC
	ADC $1CDD
	STA $1CDD
	LDX $1CD9
	LDA $7F1200,x
	XBA
	AND #$01FF
	ASL #2
	STA $09
	INC $09
	LDY #$0010
	LDA $1CDD
	ASL #4
	TAX
	JSR _F3E5
	LDX $1CD9
	LDA $7F1200,x
	XBA
	AND #$01FF
	ASL #2
	STA $09
	INC $09
	LDY #$0026
	LDA $1CDD
	ASL #4
	CLC
	ADC #$0140
	TAX
	JSR _F3E5
	LDA $09
	AND #$0003
	TAX
	LDA $FD7C,x
	CLC
	ADC $1CE6
	TAY
	AND #$0007
	STA $1CE6
	TYA
	AND #$00FF
	LSR #3
	CLC
	ADC $1CDD
	STA $1CDD
end_vwf:
	INC $1CD9
	INC $1CD9
	SEP #$30
	LDA $1CD6
	STA $1CD5
	JML $8EF3E4
	
	
write_text_pos:
	REP #$30
	LDA #$0006
	STA $0E
	JSR _FBE8
	REP #$30
	LDA $1CD0
	CLC
	ADC #$0022
	STA $1CD0
	LDA #(tilemap0)>>16
	XBA
	STA $7E
	LDA $1CDC	//tilepro, color
	AND #$00FF
	CMP #$0021
	BNE +
	LDA #(tilemap0)
	BRA _writecolor
+
	CMP #$0024
	BNE +
	LDA #(tilemap1)
	BRA _writecolor
+
	CMP #$0029
	BNE +
	LDA #(tilemap2)
	BRA _writecolor
+
	CMP #$002D
	BNE +
	LDA #(tilemap3)
	BRA _writecolor
+
	CMP #$0031
	BNE +
	LDA #(tilemap4)
	BRA _writecolor
+
	CMP #$0035
	BNE +
	LDA #(tilemap5)
	BRA _writecolor
+
	CMP #$0039
	BNE +
	LDA #(tilemap6)
	BRA _writecolor
+
	LDA #(tilemap7)
_writecolor:
	STA $7D
_FC75:
	LDA $1CD0
	SEC
	SBC #$0003
	XBA
	STA $1002,x
	XBA
	CLC
	ADC #$0023
	STA $1CD0
	INX #2
	LDA #$3300
	STA $1002,x
	INX #2
	LDA #$001A
	STA $0C
-
	LDA [$7D],y
	STA $1002,x
	INX #2
	INY #2
	DEC $0C
	BNE -
	DEC $0E
	BNE _FC75
	LDA #$FFFF
	STA $1002,x
	LDA $10
	CMP #$0B0E
	BNE +
	JSR dma_text_map
+
	SEP #$30
	LDA #$01
	STA $14
	RTS
	
_FBE8:
	REP #$30
	LDA $1CD2
	STA $1CD0
	LDX #$0000
	TXY
	SEP #$30
	RTS
	
_F482:
	SEP #$20
	LDA #$0F
	STA $0F
_F488:
	STY $0D
	STX $0B
	STZ $03
	SEP #$30
	LDA $09
	AND #$03
	TAY 
	LDA $FD7C,y
	TAY 
	LDA $F479,y
	STA $00
	REP #$10
	LDA #$FF
	STA $01
	LDY $0D
	LDA [$04],y
	STA $02
	REP #$30
	LDA $1CE6
	AND #$0007
	TAY 
	SEP #$20
	BEQ _F4C4
_F4B7:
	SEC 
	ROR $00
	ROR $01
	CLC 
	ROR $02
	ROR $03
	DEY 
	BNE _F4B7
_F4C4:
	LDX $0B
	LDA $00
	AND $7F0000,x
	STA $7F0000,x
	LDA $01
	AND $7F0010,x
	STA $7F0010,x
	LDA $02
	ORA $7F0000,x
	STA $7F0000,x
	LDA $03
	ORA $7F0010,x
	STA $7F0010,x
	LDY $0D
	LDX $0B
	INX 
	INY 
	DEC $0F
	BPL _F488
	REP #$30
	RTS

_F3E5:
	SEP #$20
	PHB 
	LDA #$7F
	PHA
	PLB
	REP #$30
	STZ $1F8E
	STZ $1F8C
	STZ $1F8A
	STZ $1F88
	STZ $1F86
	STZ $1F84
	STZ $1F82
	STZ $1F80
	SEP #$20
	LDA #$02
	STA $0E
	INY 
	INY 
	INY 
	INY 
	INY
_F411:
	LDA [$04],y
	LSR
	ROR $1F8F
	LSR
	ROR $1F8D
	LSR
	ROR $1F8B
	LSR
	ROR $1F89
	LSR
	ROR $1F87
	LSR
	ROR $1F85
	LSR
	ROR $1F83
	LSR
	ROR $1F81
	DEY 
	LDA [$04],y
	LSR
	ROR $1F8E
	LSR
	ROR $1F8C
	LSR
	ROR $1F8A
	LSR
	ROR $1F88
	LSR
	ROR $1F86
	LSR
	ROR $1F84
	LSR
	ROR $1F82
	LSR
	ROR $1F80
	DEY 
	DEC $0E
	BPL _F411
	REP #$30
	PLB 
	LDY #$0000
	LDA #$1F80
	STA $04
	LDA #$007F
	STA $06
	JSR _F482
	LDA #$BFC0
	STA $04
	LDA #$007E
	STA $06
	RTS
	
text_render:
	LDA #$0000
	LDX #$003E
-
	STA $7EBFC0,x
	DEX 
	DEX 
	BPL -

	PHB
	SEP #$20
	LDA #$7E
	PHA
	PLB
	LDA #$10
	STA {buffer1}
	LDX $1CD9
	REP #$20
	LDA $7F1200,x
	XBA
	AND #$00FF
	CMP #$00E8
	BNE +
	LDA $7EF377
	INC
	STA $7EF377
	LDA $7EF343
	INC
	INC
	STA $7EF343
	PLB
	RTS
	
+
	ASL #6
	TAX
	LDY #$0000
	SEP #$20
-
	LDA font0,x
	XBA
	LDA font0+0x20,x
	JSR shift_pix
	ORA {char_buffer}+0x20,y
	STA {char_buffer}+0x20,y
	XBA
	ORA {char_buffer},y
	STA {char_buffer},y	
	
	LDA font0+0x10,x
	XBA
	LDA font0+0x30,x
	JSR shift_pix
	ORA {char_buffer}+0x30,y
	STA {char_buffer}+0x30,y
	XBA
	ORA {char_buffer}+0x10,y
	STA {char_buffer}+0x10,y
	INY
	INX
	DEC {buffer1}
	BNE -
	PLB
	REP #$20
	LDA #$BFC0
	STA $04
	LDA #$007E
	STA $06
	RTS

shift_pix:
	REP #$20
	CMP #$0000
	BEQ end_shift_pix
	PHX
	LDX {shift}
	CPX #$0000
	BEQ end_shift_pix-1
-
	LSR
	DEX
	BNE -
	PLX
end_shift_pix:
	SEP #$20
	RTS
	
tilemap0:
	dw $2150, $2152, $2154, $2156, $2158, $215A, $215C, $215E
	dw $2160, $2162, $2164, $2166, $2168, $216A, $216C, $216E
	dw $2170, $2172, $2174, $2176, $2178, $217A, $217C, $217E
	dw $2180, $2182
	dw $2151, $2153, $2155, $2157, $2159, $215B, $215D, $215F
	dw $2161, $2163, $2165, $2167, $2169, $216B, $216D, $216F
	dw $2171, $2173, $2175, $2177, $2179, $217B, $217D, $217F
	dw $2181, $2183
	
	dw $2184, $2186, $2188, $218A, $218C, $218E, $2190, $2192
	dw $2194, $2196, $2198, $219A, $219C, $219E, $21A0, $21A2
	dw $21A4, $21A6, $21A8, $21AA, $21AC, $21AE, $21B0, $21B2
	dw $21B4, $21B6
	dw $2185, $2187, $2189, $218B, $218D, $218F, $2191, $2193
	dw $2195, $2197, $2199, $219B, $219D, $219F, $21A1, $21A3
	dw $21A5, $21A7, $21A9, $21AB, $21AD, $21AF, $21B1, $21B3
	dw $21B5, $21B7
	
	dw $21B8, $21BA, $21BC, $21BE, $21C0, $21C2, $21C4, $21C6
	dw $21C8, $21CA, $21CC, $21CE, $21D0, $21D2, $21D4, $21D6
	dw $21D8, $21DA, $21DC, $21DE, $21E0, $21E2, $21E4, $21E6
	dw $21E8, $21EA
	dw $21B9, $21BB, $21BD, $21BF, $21C1, $21C3, $21C5, $21C7
	dw $21C9, $21CB, $21CD, $21CF, $21D1, $21D3, $21D5, $21D7
	dw $21D9, $21DB, $21DD, $21DF, $21E1, $21E3, $21E5, $21E7
	dw $21E9, $21EB
	
tilemap1:
	dw $2550, $2552, $2554, $2556, $2558, $255A, $255C, $255E
	dw $2560, $2562, $2564, $2566, $2568, $256A, $256C, $256E
	dw $2570, $2572, $2574, $2576, $2578, $257A, $257C, $257E
	dw $2580, $2582
	dw $2551, $2553, $2555, $2557, $2559, $255B, $255D, $255F
	dw $2561, $2563, $2565, $2567, $2569, $256B, $256D, $256F
	dw $2571, $2573, $2575, $2577, $2579, $257B, $257D, $257F
	dw $2581, $2583
	
	dw $2584, $2586, $2588, $258A, $258C, $258E, $2590, $2592
	dw $2594, $2596, $2598, $259A, $259C, $259E, $25A0, $25A2
	dw $25A4, $25A6, $25A8, $25AA, $25AC, $25AE, $25B0, $25B2
	dw $25B4, $25B6
	dw $2585, $2587, $2589, $258B, $258D, $258F, $2591, $2593
	dw $2595, $2597, $2599, $259B, $259D, $259F, $25A1, $25A3
	dw $25A5, $25A7, $25A9, $25AB, $25AD, $25AF, $25B1, $25B3
	dw $25B5, $25B7
	
	dw $25B8, $25BA, $25BC, $25BE, $25C0, $25C2, $25C4, $25C6
	dw $25C8, $25CA, $25CC, $25CE, $25D0, $25D2, $25D4, $25D6
	dw $25D8, $25DA, $25DC, $25DE, $25E0, $25E2, $25E4, $25E6
	dw $25E8, $25EA
	dw $25B9, $25BB, $25BD, $25BF, $25C1, $25C3, $25C5, $25C7
	dw $25C9, $25CB, $25CD, $25CF, $25D1, $25D3, $25D5, $25D7
	dw $25D9, $25DB, $25DD, $25DF, $25E1, $25E3, $25E5, $25E7
	dw $25E9, $25EB
	
tilemap2:
	dw $2950, $2952, $2954, $2956, $2958, $295A, $295C, $295E
	dw $2960, $2962, $2964, $2966, $2968, $296A, $296C, $296E
	dw $2970, $2972, $2974, $2976, $2978, $297A, $297C, $297E
	dw $2980, $2982
	dw $2951, $2953, $2955, $2957, $2959, $295B, $295D, $295F
	dw $2961, $2963, $2965, $2967, $2969, $296B, $296D, $296F
	dw $2971, $2973, $2975, $2977, $2979, $297B, $297D, $297F
	dw $2981, $2983
	
	dw $2984, $2986, $2988, $298A, $298C, $298E, $2990, $2992
	dw $2994, $2996, $2998, $299A, $299C, $299E, $29A0, $29A2
	dw $29A4, $29A6, $29A8, $29AA, $29AC, $29AE, $29B0, $29B2
	dw $29B4, $29B6
	dw $2985, $2987, $2989, $298B, $298D, $298F, $2991, $2993
	dw $2995, $2997, $2999, $299B, $299D, $299F, $29A1, $29A3
	dw $29A5, $29A7, $29A9, $29AB, $29AD, $29AF, $29B1, $29B3
	dw $29B5, $29B7
	
	dw $29B8, $29BA, $29BC, $29BE, $29C0, $29C2, $29C4, $29C6
	dw $29C8, $29CA, $29CC, $29CE, $29D0, $29D2, $29D4, $29D6
	dw $29D8, $29DA, $29DC, $29DE, $29E0, $29E2, $29E4, $29E6
	dw $29E8, $29EA
	dw $29B9, $29BB, $29BD, $29BF, $29C1, $29C3, $29C5, $29C7
	dw $29C9, $29CB, $29CD, $29CF, $29D1, $29D3, $29D5, $29D7
	dw $29D9, $29DB, $29DD, $29DF, $29E1, $29E3, $29E5, $29E7
	dw $29E9, $29EB
	
tilemap3:
	dw $2D50, $2D52, $2D54, $2D56, $2D58, $2D5A, $2D5C, $2D5E
	dw $2D60, $2D62, $2D64, $2D66, $2D68, $2D6A, $2D6C, $2D6E
	dw $2D70, $2D72, $2D74, $2D76, $2D78, $2D7A, $2D7C, $2D7E
	dw $2D80, $2D82
	dw $2D51, $2D53, $2D55, $2D57, $2D59, $2D5B, $2D5D, $2D5F
	dw $2D61, $2D63, $2D65, $2D67, $2D69, $2D6B, $2D6D, $2D6F
	dw $2D71, $2D73, $2D75, $2D77, $2D79, $2D7B, $2D7D, $2D7F
	dw $2D81, $2D83
	
	dw $2D84, $2D86, $2D88, $2D8A, $2D8C, $2D8E, $2D90, $2D92
	dw $2D94, $2D96, $2D98, $2D9A, $2D9C, $2D9E, $2DA0, $2DA2
	dw $2DA4, $2DA6, $2DA8, $2DAA, $2DAC, $2DAE, $2DB0, $2DB2
	dw $2DB4, $2DB6
	dw $2D85, $2D87, $2D89, $2D8B, $2D8D, $2D8F, $2D91, $2D93
	dw $2D95, $2D97, $2D99, $2D9B, $2D9D, $2D9F, $2DA1, $2DA3
	dw $2DA5, $2DA7, $2DA9, $2DAB, $2DAD, $2DAF, $2DB1, $2DB3
	dw $2DB5, $2DB7
	
	dw $2DB8, $2DBA, $2DBC, $2DBE, $2DC0, $2DC2, $2DC4, $2DC6
	dw $2DC8, $2DCA, $2DCC, $2DCE, $2DD0, $2DD2, $2DD4, $2DD6
	dw $2DD8, $2DDA, $2DDC, $2DDE, $2DE0, $2DE2, $2DE4, $2DE6
	dw $2DE8, $2DEA
	dw $2DB9, $2DBB, $2DBD, $2DBF, $2DC1, $2DC3, $2DC5, $2DC7
	dw $2DC9, $2DCB, $2DCD, $2DCF, $2DD1, $2DD3, $2DD5, $2DD7
	dw $2DD9, $2DDB, $2DDD, $2DDF, $2DE1, $2DE3, $2DE5, $2DE7
	dw $2DE9, $2DEB
	
tilemap4:
	dw $3150, $3152, $3154, $3156, $3158, $315A, $315C, $315E
	dw $3160, $3162, $3164, $3166, $3168, $316A, $316C, $316E
	dw $3170, $3172, $3174, $3176, $3178, $317A, $317C, $317E
	dw $3180, $3182
	dw $3151, $3153, $3155, $3157, $3159, $315B, $315D, $315F
	dw $3161, $3163, $3165, $3167, $3169, $316B, $316D, $316F
	dw $3171, $3173, $3175, $3177, $3179, $317B, $317D, $317F
	dw $3181, $3183
	
	dw $3184, $3186, $3188, $318A, $318C, $318E, $3190, $3192
	dw $3194, $3196, $3198, $319A, $319C, $319E, $31A0, $31A2
	dw $31A4, $31A6, $31A8, $31AA, $31AC, $31AE, $31B0, $31B2
	dw $31B4, $31B6
	dw $3185, $3187, $3189, $318B, $318D, $318F, $3191, $3193
	dw $3195, $3197, $3199, $319B, $319D, $319F, $31A1, $31A3
	dw $31A5, $31A7, $31A9, $31AB, $31AD, $31AF, $31B1, $31B3
	dw $31B5, $31B7
	
	dw $31B8, $31BA, $31BC, $31BE, $31C0, $31C2, $31C4, $31C6
	dw $31C8, $31CA, $31CC, $31CE, $31D0, $31D2, $31D4, $31D6
	dw $31D8, $31DA, $31DC, $31DE, $31E0, $31E2, $31E4, $31E6
	dw $31E8, $31EA
	dw $31B9, $31BB, $31BD, $31BF, $31C1, $31C3, $31C5, $31C7
	dw $31C9, $31CB, $31CD, $31CF, $31D1, $31D3, $31D5, $31D7
	dw $31D9, $31DB, $31DD, $31DF, $31E1, $31E3, $31E5, $31E7
	dw $31E9, $31EB
	
tilemap5:
	dw $3550, $3552, $3554, $3556, $3558, $355A, $355C, $355E
	dw $3560, $3562, $3564, $3566, $3568, $356A, $356C, $356E
	dw $3570, $3572, $3574, $3576, $3578, $357A, $357C, $357E
	dw $3580, $3582
	dw $3551, $3553, $3555, $3557, $3559, $355B, $355D, $355F
	dw $3561, $3563, $3565, $3567, $3569, $356B, $356D, $356F
	dw $3571, $3573, $3575, $3577, $3579, $357B, $357D, $357F
	dw $3581, $3583
	
	dw $3584, $3586, $3588, $358A, $358C, $358E, $3590, $3592
	dw $3594, $3596, $3598, $359A, $359C, $359E, $35A0, $35A2
	dw $35A4, $35A6, $35A8, $35AA, $35AC, $35AE, $35B0, $35B2
	dw $35B4, $35B6
	dw $3585, $3587, $3589, $358B, $358D, $358F, $3591, $3593
	dw $3595, $3597, $3599, $359B, $359D, $359F, $35A1, $35A3
	dw $35A5, $35A7, $35A9, $35AB, $35AD, $35AF, $35B1, $35B3
	dw $35B5, $35B7
	
	dw $35B8, $35BA, $35BC, $35BE, $35C0, $35C2, $35C4, $35C6
	dw $35C8, $35CA, $35CC, $35CE, $35D0, $35D2, $35D4, $35D6
	dw $35D8, $35DA, $35DC, $35DE, $35E0, $35E2, $35E4, $35E6
	dw $35E8, $35EA
	dw $35B9, $35BB, $35BD, $35BF, $35C1, $35C3, $35C5, $35C7
	dw $35C9, $35CB, $35CD, $35CF, $35D1, $35D3, $35D5, $35D7
	dw $35D9, $35DB, $35DD, $35DF, $35E1, $35E3, $35E5, $35E7
	dw $35E9, $35EB

tilemap6:
	dw $3950, $3952, $3954, $3956, $3958, $395A, $395C, $395E
	dw $3960, $3962, $3964, $3966, $3968, $396A, $396C, $396E
	dw $3970, $3972, $3974, $3976, $3978, $397A, $397C, $397E
	dw $3980, $3982
	dw $3951, $3953, $3955, $3957, $3959, $395B, $395D, $395F
	dw $3961, $3963, $3965, $3967, $3969, $396B, $396D, $396F
	dw $3971, $3973, $3975, $3977, $3979, $397B, $397D, $397F
	dw $3981, $3983
	
	dw $3984, $3986, $3988, $398A, $398C, $398E, $3990, $3992
	dw $3994, $3996, $3998, $399A, $399C, $399E, $39A0, $39A2
	dw $39A4, $39A6, $39A8, $39AA, $39AC, $39AE, $39B0, $39B2
	dw $39B4, $39B6
	dw $3985, $3987, $3989, $398B, $398D, $398F, $3991, $3993
	dw $3995, $3997, $3999, $399B, $399D, $399F, $39A1, $39A3
	dw $39A5, $39A7, $39A9, $39AB, $39AD, $39AF, $39B1, $39B3
	dw $39B5, $39B7
	
	dw $39B8, $39BA, $39BC, $39BE, $39C0, $39C2, $39C4, $39C6
	dw $39C8, $39CA, $39CC, $39CE, $39D0, $39D2, $39D4, $39D6
	dw $39D8, $39DA, $39DC, $39DE, $39E0, $39E2, $39E4, $39E6
	dw $39E8, $39EA
	dw $39B9, $39BB, $39BD, $39BF, $39C1, $39C3, $39C5, $39C7
	dw $39C9, $39CB, $39CD, $39CF, $39D1, $39D3, $39D5, $39D7
	dw $39D9, $39DB, $39DD, $39DF, $39E1, $39E3, $39E5, $39E7
	dw $39E9, $39EB
	
tilemap7:
	dw $3D50, $3D52, $3D54, $3D56, $3D58, $3D5A, $3D5C, $3D5E
	dw $3D60, $3D62, $3D64, $3D66, $3D68, $3D6A, $3D6C, $3D6E
	dw $3D70, $3D72, $3D74, $3D76, $3D78, $3D7A, $3D7C, $3D7E
	dw $3D80, $3D82
	dw $3D51, $3D53, $3D55, $3D57, $3D59, $3D5B, $3D5D, $3D5F
	dw $3D61, $3D63, $3D65, $3D67, $3D69, $3D6B, $3D6D, $3D6F
	dw $3D71, $3D73, $3D75, $3D77, $3D79, $3D7B, $3D7D, $3D7F
	dw $3D81, $3D83
	
	dw $3D84, $3D86, $3D88, $3D8A, $3D8C, $3D8E, $3D90, $3D92
	dw $3D94, $3D96, $3D98, $3D9A, $3D9C, $3D9E, $3DA0, $3DA2
	dw $3DA4, $3DA6, $3DA8, $3DAA, $3DAC, $3DAE, $3DB0, $3DB2
	dw $3DB4, $3DB6
	dw $3D85, $3D87, $3D89, $3D8B, $3D8D, $3D8F, $3D91, $3D93
	dw $3D95, $3D97, $3D99, $3D9B, $3D9D, $3D9F, $3DA1, $3DA3
	dw $3DA5, $3DA7, $3DA9, $3DAB, $3DAD, $3DAF, $3DB1, $3DB3
	dw $3DB5, $3DB7
	
	dw $3DB8, $3DBA, $3DBC, $3DBE, $3DC0, $3DC2, $3DC4, $3DC6
	dw $3DC8, $3DCA, $3DCC, $3DCE, $3DD0, $3DD2, $3DD4, $3DD6
	dw $3DD8, $3DDA, $3DDC, $3DDE, $3DE0, $3DE2, $3DE4, $3DE6
	dw $3DE8, $3DEA
	dw $3DB9, $3DBB, $3DBD, $3DBF, $3DC1, $3DC3, $3DC5, $3DC7
	dw $3DC9, $3DCB, $3DCD, $3DCF, $3DD1, $3DD3, $3DD5, $3DD7
	dw $3DD9, $3DDB, $3DDD, $3DDF, $3DE1, $3DE3, $3DE5, $3DE7
	dw $3DE9, $3DEB
	
tile2buffer:
	LDY #$0000
	LDA {tile_no}
	ASL #5
	TAX
-
	LDA [$04],y
	ORA $7F8000,x
	STA $7F8000,x
	INY #2
	INX #2
	CPY #$0040
	BNE -
	RTS
	
get_width:
	LDX $1CD9
	LDA $7F1200,x
	XBA
	AND #$00FF	
	TAX
	LDA font0_width,x
	AND #$00FF
	STA {char_haba}
	RTS
	
shift_cal:
	LDA {shift}
	CLC
	ADC {char_haba}
	CMP #$0008
	BCS +
	AND #$0007
	STA {shift}
	RTS
+
	CMP #$0010
	BCS +
	SEC
	SBC #$0008
	AND #$0007
	STA {shift}
	INC {tile_no}
	RTS
+
	SEC
	SBC #$0010
	AND #$0007
	STA {shift}
	INC {tile_no}
	INC {tile_no}
	RTS
	
init_kaiwa:
	PHA
	PHX
	LDA $1CF0
	CMP #$0002
	BNE +
	LDA #$001E
	STA {line}
	LDA #$0000
	LDX #$0340
	BRA _init
+
	CMP #$0001
	BNE +
	LDA #$001E
	STA {line}
	LDA #$0000
	LDX #$0680
	BRA _init
+
	CMP #$000A			//select pressed
	BNE +
	LDA #$001E
	STA {line}
	LDX #$0000
	LDA #$0000
	BRA _init
+
	CMP #$0009			//select pressed
	BNE +
	LDA #$001E
	STA {line}
	LDA #$0000
	LDX #$0340
	BRA _init
+
	CMP #$0006
	BNE +
	BRA _sentaku6
+
	CMP #$0007
	BNE +
	BRL _sentaku7
+
	CMP #$0008
	BNE +
	BRL _sentaku8
+
	LDA #$0EFE
	STA {line}
	LDA #$0000
	TAX
_init:
	STA $7F8000,x		//text buffer
	INX #2
	DEC {line}
	DEC {line}
	BPL _init
e_initkaiwai:
	STA {tile_no}
	STA {line}
	STA {shift}
	STA {buffer1}
	STA {buffer2}
	PLX
	PLA
	RTS
	
_sentaku6:
	LDA #$001E
	STA {line}
	LDA #$0000
	LDX #$0340
-
	STA $7F8000,x
	INX #2
	DEC {line}
	DEC {line}
	BPL -
	LDA #$001E
	STA {line}
	LDA #$0000
	LDX #$0680
-
	STA $7F8000,x
	INX #2
	DEC {line}
	DEC {line}
	BPL -
	BRA e_initkaiwai
	
_sentaku7:
	LDA #$001E
	STA {line}
	LDA #$0000
	TAX
-
	STA $7F8000,x
	INX #2
	DEC {line}
	DEC {line}
	BPL -
	LDA #$001E
	STA {line}
	LDA #$0000
	LDX #$0680
-
	STA $7F8000,x
	INX #2
	DEC {line}
	DEC {line}
	BPL -
	BRL e_initkaiwai
	
_sentaku8:
	LDA #$001E
	STA {line}
	LDA #$0000
	TAX
-
	STA $7F8000,x
	INX #2
	DEC {line}
	DEC {line}
	BPL -
	LDA #$001E
	STA {line}
	LDA #$0000
	LDX #$0340
-
	STA $7F8000,x
	INX #2
	DEC {line}
	DEC {line}
	BPL -
	BRL e_initkaiwai
	
new_line:
	REP #$30
	INC $1CD9
	INC {line}
	LDA {line}
	CMP #$0003
	BNE +
	LDA #$0000
	STA {line}
+
	ASL
	TAX
	LDA text_pos,x
	STA {tile_no}
	STZ {shift}
	JML $8EFA38
text_pos:
	dw $0000
	dw $001A
	dw $0034

define scroll_flag2 $70
define	current_scroll	$77

new_scroll:
	PHB
	LDA #$7F
	PHA
	PLB
	REP #$30
	LDA #$0010
	STA {scroll_flag2}
	JSL scroll_shori2
	BCS +
	PLB
	LDA #$8000
	STA {cont_dma_adr}
	LDA #$0A00
	STA {cont_dma_size}
	LDA #$F500>>1
	STA {cont_dma_vram}
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank}
	LDA #$01
	STA {cont_dma_times}
	LDA #$22
	STA $17
	REP #$20
-
	LDA {line}
	ASL
	TAX
	LDA text_pos,x
	STA {tile_no}
	STZ {shift}	
	SEP #$30
	JML $8EFA20
+
	PLB
	REP #$20
	LDA $1CD9
	INC
	STA $1CD9
	STZ {scroll_flag2}
	STZ {current_scroll}
	BRA -


	PHB
	LDA #$7F
	PHA
	PLB
	LDA $F2
	AND #$80
	BEQ +
	LDA $001CEA
	BRA _F967
+
	LDA $001CEA
_F967:
	STA $02
_F969:
	REP #$30
	LDA $7E0149	//buffer2
	BNE +
	JSR copy_tile
+
	STZ $00
-
	LDX $00
	JSR shift_up
	LDA $00
	CLC
	ADC #$0010
	STA $00
	CMP #$0EFE
	BCC -
+
	JSR clear_bottom
	SEP #$30
	LDA $001CDF
	CLC
	ADC #$01
	STA $001CDF
	AND #$0F
	BNE +
	REP #$30
	JSR restore_tile
	LDA $001CD9
	CLC
	ADC #$0001
	STA $001CD9
	LDA #$0050
	STA $001CDD
	SEP #$30
	LDA #$00
	STA $001CE6
	STZ $02
+
	DEC $02
	BMI +
	JMP _F969
+
	REP #$30
	PLB
	LDA {line}
	ASL
	TAX
	LDA text_pos,x
	STA {tile_no}
	STZ {shift}	
	SEP #$30
	JML $8EFA20
	
shift_up:
	LDA $8002,x
	STA $8000,x
	LDA $8004,x
	STA $8002,x
	LDA $8006,x
	STA $8004,x
	LDA $8008,x
	STA $8006,x
	LDA $800A,x
	STA $8008,x
	LDA $800C,x
	STA $800A,x
	LDA $800E,x
	STA $800C,x
	LDA $8010,x
	STA $800E,x
	RTS
	
clear_bottom:
-
	LDX {buffer1}	
	LDA #$0000
	STA $801E,x
	STA $803E,x
	STA $805E,x
	STA $807E,x
	STA $809E,x
	STA $80BE,x
	STA $80DE,x
	STA $80FE,x
	LDA {buffer1}
	CLC
	ADC #$0100
	STA {buffer1}
	CMP #$0F00
	BCC -
	STZ {buffer1}
	RTS
	
copy_bottom2top:
	LDA {buffer2}
	CMP #$0010
	BCS +
	JMP _e
+

-
	LDX {buffer1}
	LDY {buffer2}
	LDA $8340,x
	STA $8000,y
	LDA $8360,x
	STA $8020,y
	LDA $8380,x
	STA $8040,y
	LDA $83A0,x
	STA $8060,y
	LDA $83C0,x
	STA $8080,y
	LDA $83E0,x
	STA $80A0,y
	LDA $8400,x
	STA $80C0,y
	LDA $8420,x
	STA $80E0,y
	LDA $8440,x
	STA $8100,y
	LDA $8460,x
	STA $8120,y
	LDA $8480,x
	STA $8140,y
	LDA $84A0,x
	STA $8160,y
	LDA $84C0,x
	STA $8180,y
	LDA $84E0,x
	STA $81A0,y
	LDA $8500,x
	STA $81C0,y
	LDA $8520,x
	STA $81E0,y
	LDA $8540,x
	STA $8200,y
	LDA $8560,x
	STA $8220,y
	LDA $8580,x
	STA $8240,y
	LDA $85A0,x
	STA $8260,y
	LDA $85C0,x
	STA $8280,y
	LDA {buffer1}
	CLC
	ADC #$0002
	STA {buffer1}
	LDA {buffer2}
	SEC
	SBC #$0002
	STA {buffer2}
	CMP #$0010
	BCC +
	JMP -
+
_e:
	RTS
	
copy_tile:
	PHB
	PHP
	SEP #$20
	LDA #$7F
	PHA
	PLB
	REP #$30
	LDX #$0000
-
	LDA $8340,x
	STA $9000,x
	LDA $8680,x
	STA $9340,x
	INX #2
	CPX #$0340
	BNE -
	LDA #$FFFF
	STA $7E0149
	PLP
	PLB
	RTS
	
restore_tile:
	LDX #$0000
-
	LDA $9000,x
	STA $8000,x
	LDA $9340,x
	STA $8340,x
	INX #2
	CPX #$0340
	BNE -
	LDA #$0000
	STA $7E0149
	RTS
	
new_intro:
	REP #$30
	LDA $10
	CMP #$0014
	BNE +
	SEP #$20
	LDA.b #(opening>>16)
	STA $4304
	LDA #$80
	STA $2115
	LDX #(opening)
	STX $4302
	LDX #$1801
	STX $4300
	LDX #$0800
	STX $4305
	LDX #$E800>>1
	STX $2116
	LDA #$01
	STA $420B
	JML $80E3AA
+
	LDX #$00FF
-
	LDA [$00]
	STA $2118
	INC $00
	INC $00
	LDA [$00]
	STA $2118
	INC $00
	INC $00
	LDA [$00]
	STA $2118
	INC $00
	INC $00	
	LDA [$00]
	STA $2118
	INC $00
	INC $00
	DEX
	BPL -
	JML $80E3AA
	
new_player_screen:
	REP #$10
	SEP #$20
	LDA #$80
	STA $2115
	LDA.b #(playerselect>>16)
	STA $4304
	LDX #$1801
	STX $4300
	LDX #$0200
	STX $4305
	LDX #(playerselect)
	STX $4302
	LDX #$F200>>1
	STX $2116
	LDA #$01
	STA $420B
	
	REP #$20
	LDA #(playerselect)
	CLC
	ADC #$0200
	TAX
	SEP #$20
	STX $4302
	LDX #$0200
	STX $4305
	LDX #$F000>>1
	STX $2116
	LDA #$01
	STA $420B
	
	LDX #(alphabet)
	STX $4302
	LDX #$1000
	STX $4305
	LDX #$E000>>1
	STX $2116
	LDA #$01
	STA $420B
	
	LDX #(naming)
	STX $4302
	LDX #$0C00
	STX $4305
	LDX #$4800>>1
	STX $2116
	LDA.b #(naming>>16)
	STA $4304
	LDA #$01
	STA $420B
	
	REP #$20
	STZ $00
	LDX $00
	JML $8CCCF2
	
new_player_screen_map:
	LDA $11
	CMP #$01
	BNE +
	PHP
	REP #$10
	SEP #$20
	LDA #$80
	STA $2115
	LDA.b #(screen_map>>16)
	STA $4304
	LDX #(screen_map)
	STX $4302
	LDX #$1801
	STX $4300
	LDX #$0080
	STX $4305
	LDX #$C0C0>>1
	STX $2116
	LDA #$01
	STA $420B
	
	LDX #(copy_delete_map)
	STX $4302
	LDX #$0160
	STX $4305
	LDX #$C540>>1
	STX $2116
	LDA #$01
	STA $420B
	JSR dma_delete_chr
	REP #$20
	LDX #$07FE
	LDA #$0000
-
	STA $7E2000,x
	DEX #2
	BPL -
	PLP
+
	JSL $1BEF96
	INC $15
	INC $11
	JML $8CCDCD
screen_map:
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $20, $25, $21, $25, $22, $25
	db $23, $25, $24, $25, $25, $25, $26, $25, $27, $25, $28, $25
	db $29, $25, $2A, $25, $2B, $25, $2C, $25, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $30, $25
	db $31, $25, $32, $25, $33, $25, $34, $25, $35, $25, $36, $25
	db $37, $25, $38, $25, $39, $25, $3A, $25, $3B, $25, $3C, $25
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01
	
copy_delete_map:
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $2D, $29, $2E
	db $29, $2F, $29, $00, $29, $01, $29, $02, $29, $03, $29, $04, $29
	db $05, $29, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88
	db $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88
	db $01, $88, $01, $88, $01, $88, $01, $88, $01, $3D, $29, $3E, $29
	db $3F, $29, $10, $29, $11, $29, $12, $29, $13, $29, $14, $29, $15
	db $29, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88
	db $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88
	db $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88
	db $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88
	db $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88
	db $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88
	db $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $06, $29, $07, $29, $08, $29, $09
	db $29, $0A, $29, $0B, $29, $0C, $29, $0D, $29, $0E, $29, $0F, $29
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88
	db $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88
	db $01, $88, $01, $88, $01, $16, $29, $17, $29, $18, $29, $19, $29
	db $1A, $29, $1B, $29, $1C, $29, $1D, $29, $1E, $29, $1F, $29, $88, $01
	
new_player_screen_map2:
	LDA $938C,y
	STA $02
	REP #$20
	CPY #$01
	BNE +
	SEP #$20
	JML $80DD50
+
	LDA $10
	CMP #$0401
	BNE +
	SEP #$20
	JML $808BE5
+
	CMP #$0301
	BNE +
	SEP #$20
	JML $808BE5	
+
	CMP #$0204
	BNE +
	JSR dma_naming_map
	SEP #$20
	JML $808BE5
+
	CMP #$0202
	BNE +
	JSR dma_copy_map
	SEP #$20
	JML $808BE5
+
	CMP #$0203
	BNE +
	JSR dma_delete
	SEP #$20
	JML $808BE5
+
	SEP #$20
	JML $80DD50
	
dma_copy_map:
	PHP
	SEP #$20
	REP #$10
	LDA #$80
	STA $2115
	LDA.b #(copybg1map>>16)
	STA $4314
	STA $4304
	LDX #(copybg1map)
	STX $4312
	LDX #$1801
	STX $4310
	STX $4300
	LDX #$0700
	STX $4315
	LDX #$2000>>1
	STX $2116
	LDA #$02
	STA $420B
	
	LDX #(copybg3tile)
	STX $4302
	LDX #$0400
	STX $4305
	LDX #$FA00>>1
	STX $2116
	LDA #$01
	STA $420B
	
	LDA.b #(copybg3title_map>>16)
	STA $4314
	STA $4304
	LDX #(copybg3title_map)
	STX $4312
	LDX #$0060
	STX $4315
	LDX #$C050>>1
	STX $2116
	LDA #$02
	STA $420B
	LDX #(cancel_map)
	STX $4302
	LDX #$0050
	STX $4305
	LDX #$C640>>1
	STX $2116
	LDA #$01
	STA $420B	
	PLP
	RTS
	
copybg3title_map:
	db $88, $01, $A0, $25, $A1, $25, $A2, $25, $A3, $25, $A4, $25, $A5, $25, $A6, $25
	db $A7, $25, $A8, $25, $A9, $25, $AA, $25, $AB, $25, $AC, $25, $AD, $25, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88
	db $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $B0, $25, $B1, $25, $B2, $25, $B3, $25, $B4, $25, $B5, $25, $B6, $25, $B7, $25
	db $B8, $25, $B9, $25, $BA, $25, $BB, $25, $BC, $25, $BD, $25, $88, $01
	
cancel_map:
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $C0, $25, $C1, $25, $C2, $25
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01, $D0, $25, $D1, $25, $D2, $25

dma_naming_map:
	PHP
	SEP #$20
	REP #$10
	LDA #$80
	STA $2115
	LDA.b #(naming_map>>16)
	STA $4314
	STA $4304
	LDX #(naming_map)
	STX $4312
	LDX #$1801
	STX $4310
	STX $4300
	LDX #$0700
	STX $4315
	LDX #$2000>>1
	STX $2116
	LDA #$02
	STA $420B
	
	LDX #(namingbg3_map)
	STX $4302
	LDX #$0700
	STX $4305
	LDX #$C000>>1
	STX $2116
	LDA #$01
	STA $420B
	
	LDA #$2F
	STA $2121
	LDA #$FF
	STA $2122
	STA $2122
	LDA #$2E
	STA $2121
	LDA #$6B
	STA $2122
	LDA #$7D
	STA $2122
	
	LDX #$000E
	STX $4305
	STX $4315
	LDX #(name)
	STX $4302
	LDX #$C0EA>>1
	STX $2116
	LDA.b #(name>>16)
	STA $4304
	STA $4314
	LDA #$01
	STA $420B
	LDX #(name_low)
	STX $4312
	LDX #$C12A>>1
	STX $2116
	LDA #$02
	STA $420B
	
	REP #$30
	LDX $0200
	LDA $7003D9,x
	CMP #$018C
	BNE +
	INX #2
+
	LDA $7003D9,x
	CMP #$018C
	BNE +
	INX #2
+
	LDA $7003D9,x
	CMP #$018C
	BNE +
	INX #2
+
	LDA $7003D9,x
	CMP #$018C
	BEQ +
	PLP
	RTS
+
	LDA $A0
	PHA
	LDA $A2
	PHA
	LDA $A4
	PHA
	LDA #$7070
	STA $A2
	LDA #$03D9
	STA $A0
	LDA #$0004
	STA $A4
	LDY $0200
	LDX #$0000
-
	LDA name_sram,x
	STA [$A0],y
	INX #2
	INY #2
	DEC $A4
	BNE -	
	PLA
	STA $A4
	PLA
	STA $A2
	PLA
	STA $A0
	PLP
	RTS 
	
name:
	dw $1C0B, $0188, $1C08, $0188, $1C0D, $0188, $1C0A
name_low:
	dw $1C1B, $0188, $1C18, $0188, $1C1D, $0188, $1C1A
name_sram:
	dw $000B, $0008, $000D, $000A
	
dma_delete:
	PHP
	SEP #$20
	REP #$10
	JSR dma_delete_chr
	LDA.b #(delete_map>>16)
	STA $4314
	LDX #(delete_map)
	STX $4312
	LDX #$0120
	STX $4315
	LDX #$C050>>1
	STX $2116
	LDA #$02
	STA $420B
	
	LDX #(delete2_map)
	STX $4312
	LDX #$0050
	STX $4315
	LDX #$C640>>1
	STX $2116
	LDA #$02
	STA $420B
	PLP
	RTS
	
dma_delete_chr:
	LDA #$80
	STA $2115
	LDA.b #(delete_tile>>16)
	STA $4314
	LDX #(delete_tile)
	STX $4312
	LDX #$1801
	STX $4310
	LDX #$FA00>>1
	STX $2116
	LDX #$0600
	STX $4315
	LDA #$02
	STA $420B
	RTS
	
delete_map:
	db $88, $01, $A0, $25, $A1, $25, $A2, $25, $A3, $25
	db $A4, $25, $A5, $25, $A6, $25, $A7, $25, $A8, $25
	db $A9, $25, $AA, $25, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $B0, $25, $B1, $25
	db $B2, $25, $B3, $25, $B4, $25, $B5, $25, $B6, $25
	db $B7, $25, $B8, $25, $B9, $25, $BA, $25, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $C0, $2D, $C1, $2D, $C2, $2D, $C3, $2D, $C4
	db $2D, $C5, $2D, $C6, $2D, $C7, $2D, $C8, $2D
	db $C9, $2D, $CA, $2D, $CB, $2D, $CC, $2D, $CD
	db $2D, $CE, $2D, $CF, $2D, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $D0, $2D
	db $D1, $2D, $D2, $2D, $D3, $2D, $D4, $2D, $D5
	db $2D, $D6, $2D, $D7, $2D, $D8, $2D, $D9, $2D
	db $DA, $2D, $DB, $2D, $DC, $2D, $DD, $2D, $DE, $2D, $DF, $2D, $88, $01
	
delete2_map:
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $AB, $25, $AC, $25, $AD, $25, $88, $01, $88
	db $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88
	db $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $88, $01
	db $88, $01, $88, $01, $88, $01, $88, $01, $BB, $25, $BC, $25, $BD, $25
	
fast_irq:
	PHA
	PHX 
	PHY
	PHD
	PHB
	SEP #$30
	LDA #$00
	PHA
	PLB
	LDA {box_irq_trigger}
	CMP #$FF
	BNE +
	LDA $4211
	JSR frame_color_setting
	LDA $2137
	LDA $213F
	LDA $213D
	STA {scanline_vpos}
	LDA $213D
	STA {scanline_vpos}+1
	REP #$20
	LDA {scanline_vpos}
	AND #$01FF
	CMP {irq_low}
	BCS clear_irq
	SEP #$20
	BRL end_irq
	
clear_irq:
	SEP #$20
	LDA $4211
	LDA #$00
	STA $2124
	STA $2125
	STA $2123
	LDA #$82
	STA $2130
	LDA #$72
	STA $2131
	LDA #$20
	STA $2132
	LDA #$40
	STA $2132
	LDA #$80
	STA $2132
	LDA #$16
	STA $212C
	LDA #$01
	STA $212D
	BRL end_irq
	
+
	LDA $012A
	BNE _831F
	LDA $4211
	BPL end_irq
	LDA $0128
	BEQ end_irq
-
	BIT $4212
	BVC -
	LDA $0630
	STA $2111		//BG3 hscroll
	LDA $0631
	STA $2111
	STZ $2112
	STZ $2112
	LDA $0128
	BPL end_irq
	STZ $0128
	LDA #$81
	STA $4200
end_irq:
	REP #$30
	PLB
	PLD
	PLY
	PLX
	PLA
	RTI
	
_831F:
	LDA $4211
	REP #$30
	TSC
	TAX
	LDA $1F0A
	TCS
	STX $1F0A
	BRA end_irq
	
frame_color_setting:
	LDA {color1}
	STA $2132
	LDA {color2}
	STA $2132
	LDA {color3}
	STA $2132
	LDA #$20		//inside window
	STA $2130
	LDA {color_math}
	STA $2131
	LDA {window1_hidari}
	STA $2126
	LDA {window1_migi}
	STA $2127
	LDA {window2_hidari}
	STA $2128
	LDA {window2_migi}
	STA $2129
	LDA #$C0
	STA $2125
	LDA #$04
	STA $212B
	RTS
	
save_boxpos:
	LDA #$0001
	PHA
	STA {textbox_pos}
	ASL #3
	TAX
	LDA box_pos,x
	STA {window1_hidari}
	LDA box_pos+2,x
	STA {window2_hidari}
	LDA box_pos+4,x
	STA {irq_hi}
	LDA box_pos+6,x
	STA {irq_low}	
	PLA
	TAY
	SEP #$20
	LDA $2137
	LDA $213F
	LDA $213C
	STA {scanline_hpos}
	LDA $213C
	STA {scanline_hpos}+1
	REP #$20
	LDA {scanline_hpos}
	XBA
	AND #$000F
	CMP #$000C
	BCC +
-
	SEC
	SBC #$000C
	CMP #$000C
	BCS -
+
	PHA
	ASL
	CLC
	ADC $01,s
	TAX
	PLA
	SEP #$20
	LDA box_color,x
	STA {color1}
	LDA box_color+1,x
	STA {color2}
	LDA box_color+2,x
	STA {color3}
	REP #$20
	LDA {scanline_hpos}
	AND #$0001
	TAX
	SEP #$20
	LDA color_math_data,x
	STA {color_math}
	REP #$20
	TYA
	ASL
	TAX
	LDA $FD3E,x
	STA $1CD2
	JML $8EFBE5
	
box_pos:
	dw $FF00, $EB12, $004A, $0082
	dw $FF00, $EA16, $00A4, $00DA
box_color:
	db $30, $50, $81
	db $25, $4F, $8F
	db $3B, $45, $9B
	db $3F, $4C, $80
	db $8E, $4E, $25
	db $9F, $9F, $9F
	db $1F, $5F, $00
	db $00, $00, $9F
	db $2F, $00, $00
	db $12, $AF, $12
	db $12, $9F, $12
	db $12, $8F, $12
	
color_math_data:
	db $B3, $F3
	
	
end_text:
	LDA #$FFFF
	STA $1002,x
	LDA #$0000
	STA {textbox_pos}
	STA {window1_hidari}
	STA {window2_hidari}
	STA {irq_hi}
	STA {irq_low}
	STA {scanline_vpos}
	SEP #$30
	STA {box_irq_trigger}
	LDA #$01
	STA $14
	LDA #$81
	STA $4200
	JML $8EF280
	
new_world_kaiwa:
	LDA $040A	//area
	CMP #$1B
	BNE _downguard
	LDA #$B0
	LDY $0D00,x
	CPY #$50
	BNE +
	LDA $7EF3CC	//himezure
	CMP #$01
	BNE no_hime
	LDA #$CB
	LDY #$01
	JSL $85FA59
	JML $85D5B5
no_hime:
	LDA #$B0
	LDY #$00
	JSL $85FA59
	JML $85D5B5	
+
	LDA #$B1
	CPY #$90
	BNE _downguard
_D593:
	LDY #$00
	JSL $05FA59		//write PTR
	BCC +
	INC $0256
+
	LDA $0256
	CMP #$04
	BCC +
	LDA #$05
	STA {flag1}
+
	PHX
	REP #$30
	LDA {flag1}
	AND #$00FF
	ASL
	TAX
	JSR (upguard_kaiwa,x)
	PLX
	JML $85D5B5
	
_downguard:
	LDA {flag3}
	BNE +
	LDA $0B69		//kaiwa No.
	PHA
	CLC
	ADC #$0D
	LDY #$00
	JSL $05FA59
	PLA
	BCC _D5B2
	INC
	CMP #$07
	BNE _D5B2
	LDA #$01
	STA {flag1}
	LDA #$00
	STA $0256
_D5B2:
	JML $85D5B2
+
	STX {save_x}
	LDA #$00
	LDY #$00
	JSL $05FA59		//active PTR
	PHP
	REP #$30
	LDA {flag1}
	XBA
	AND #$00FF
	ASL
	TAX
	JSR (downguard_kaiwa,x)
	PLP
	BCC +
	LDA {flag3}
	STA {flag2}
+	
	LDX {save_x}
	JML $85D5B5
	
upguard_kaiwa:
	dw upguard0
	dw upguard1
	dw upguard2
	dw upguard3
	dw upguard4
	dw upguard5
downguard_kaiwa:
	dw downguard0
	dw downguard1
	dw downguard2
	dw downguard3
	dw downguard4
	dw downguard5
	dw downguard6
	dw downguard7
	dw downguard8
	dw downguard9
	dw downguardA
	dw downguardB
	dw downguardC
	dw downguardD
	dw downguardE
	dw downguardF
	dw downguard10
	dw downguard11
	dw downguard12
	dw downguard13
	dw downguard14
	dw downguard15
	dw downguard16
	dw downguard17
	
downguard0:
	SEP #$30
	LDA #$8C
	STA $1CF0
	LDA #$01
	STA $1CF1
	RTS
downguard1:
	SEP #$30
	LDA #$8D
	STA $1CF0
	LDA #$01
	STA $1CF1
	STA {flag3}
	LDA #$02
	STA {flag1}
	STZ $0256
	RTS
	
downguard2:
	SEP #$30
	LDA #$91
	STA $1CF0
	LDA #$01
	STA $1CF1
	LDA #$03
	STA {flag3}
	RTS
	
downguard3:
	SEP #$30
	LDA #$92
	STA $1CF0
	LDA #$01
	STA $1CF1
	LDA #$04
	STA {flag3}
	RTS
	
downguard4:
	SEP #$30
	LDA #$93
	STA $1CF0
	LDA #$01
	STA $1CF1
	LDA #$05
	STA {flag3}
	RTS
	
downguard5:
	SEP #$30
	LDA #$94
	STA $1CF0
	LDA #$01
	STA $1CF1
	LDA #$06
	STA {flag3}
	RTS
	
downguard6:
	SEP #$30
	LDA #$95
	STA $1CF0
	LDA #$01
	STA $1CF1
	LDA #$07
	STA {flag3}
	RTS
	
downguard7:
	SEP #$30
	LDA #$96
	STA $1CF0
	LDA #$01
	STA $1CF1
	LDA #$08
	STA {flag3}
	RTS
	
downguard8:
	SEP #$30
	LDA #$97
	STA $1CF0
	LDA #$01
	STA $1CF1
	LDA #$09
	STA {flag3}
	RTS
	
downguard9:
	SEP #$30
	LDA #$98
	STA $1CF0
	LDA #$01
	STA $1CF1
	LDA #$0A
	STA {flag3}
	RTS
	
downguardA:
	SEP #$30
	LDA #$99
	STA $1CF0
	LDA #$01
	STA $1CF1
	LDA #$0B
	STA {flag3}
	RTS
	
downguardB:
	SEP #$30
	LDA #$9A
	STA $1CF0
	LDA #$01
	STA $1CF1
	LDA #$0C
	STA {flag3}
	RTS
	
downguardC:
	SEP #$30
	LDA #$9B
	STA $1CF0
	LDA #$01
	STA $1CF1
	LDA #$0D
	STA {flag3}
	RTS
	
downguardD:
	SEP #$30
	LDA #$9C
	STA $1CF0
	LDA #$01
	STA $1CF1
	LDA #$0E
	STA {flag3}
	RTS
downguardE:
	SEP #$30
	LDA #$9D
	STA $1CF0
	LDA #$01
	STA $1CF1
	LDA #$03
	STA {flag1}
	STZ $0256
	RTS
	
downguardF:
	SEP #$30
	LDA #$9E
	STA $1CF0
	LDA #$01
	STA $1CF1
	LDA $F0
	CMP #$85		//migi, shita, b
	BEQ +
	LDA #$0F
	STA {flag3}
	RTS
+
	LDA #$10
	STA {flag2}
	STA {flag3}
	LDA #$9F
	STA $1CF0
	LDA #$01
	STA $1CF1
	JSL $1CFD6A		//active kaiwa
	LDA #$04
	STA {flag1}
	RTS
downguard10:
	SEP #$30
	LDA #$A0
	STA $1CF0
	LDA #$01
	STA $1CF1
	LDA #$11
	STA {flag3}
	LDA #$FF
	STA {flag4}
	STZ $0256
	RTS
	
downguard11:
	SEP #$30
	LDA {flag4}
	BEQ +
	LDA #$FF
	STA $0DEA
	STA $0DEB
	STA $0DEC
	STA $0DED
	STZ {flag4}
	LDA #$12
	STA {flag3}
	STA {flag2}
-
	JSR disable_kaiwa
	LDA #$04
	STA {flag1}
	RTS
+
	LDA #$11
	STA {flag3}
	STA {flag2}
	BRA -


downguard12:
	SEP #$30
	LDA $0DEA
	CMP #$FF
	BEQ +
-
	LDA #$A1
	STA $1CF0
	LDA #$01
	STA $1CF1
	JSL $1CFD6A		//active kaiwa
	LDA #$13
	STA {flag2}
	LDA #$38
	STA {flag4}
	LDA #$04
	STA {flag1}
	STZ $0256
	RTS
+
	LDA $0DEB
	CMP #$FF
	BEQ +
	BRA -
+
	LDA $0DEC
	CMP #$FF
	BEQ +
	BRA -
	LDA $0DED
	CMP #$FF
	BEQ +
	BRA -
+
	JSR disable_kaiwa
	RTS
	
downguard13:
	SEP #$30
	LDA #$A2
	STA $1CF0
	LDA #$01
	STA $1CF1
	LDA #$14
	STA {flag3}
	LDA $040A
	STA $0257
	LDA #$04
	STA {flag1}
	STZ $0256
	RTS
	
downguard14:
	SEP #$30
	JSR disable_kaiwa
	LDA {flag4}
	BEQ +
	DEC $0D1A
	DEC $0D0C
	DEC {flag4}
	LDA #$FF
	STA {kindan}
	RTS
+
	LDA #$15
	STA {flag3}
	LDA #$04
	STA {flag1}
	STZ $0256
	RTS
	
downguard15:
	SEP #$30
	LDA #$A3
	STA $1CF0
	LDA #$01
	STA $1CF1
	LDA #$16
	STA {flag3}
	STZ $0256
	LDA $0257
	CMP $040A	//area
	BEQ +
	LDA #$17
	STA {flag2}
	STA {flag3}
+
	RTS	
	
downguard16:
	SEP #$30
	STZ $0256
	LDA #$A4
	STA $1CF0
	LDA #$01
	STA $1CF1
	LDA $0257
	CMP $040A	//area
	BEQ +
	LDA #$17
	STA {flag2}
	STA {flag3}
+
	RTS	
	
downguard17:
	SEP #$30
	LDA #$A5
	STA $1CF0
	LDA #$01
	STA $1CF1
	LDA #$17
	STA {flag2}
	STA {flag3}
	STZ $0256
	RTS

disable_kaiwa:
	STZ $1CD8
	STZ $11
	LDA $010C
	STA $10
	RTS
	
upguard0:
	LDA #$00B1
	STA $1CF0
	SEP #$30
	RTS
	
upguard1:
	LDA #$018B
	STA $1CF0
	SEP #$30
	LDA #$01
	STA {flag3}
	RTS
	
upguard2:
	LDA #$018E
	STA $1CF0
	SEP #$30
	LDA #$02
	STA {flag2}
	RTS
	
upguard3:
	LDA #$018F
	STA $1CF0
	SEP #$30
	LDA #$0F
	STA {flag2}
	LDA #$03
	STA {flag1}
	RTS
	
upguard4:
	LDA #$0190
	STA $1CF0
	SEP #$30
	LDA #$04
	STA {flag1}
	LDA {flag3}
	CMP #$14
	BCC +
	LDA #$17
	STA {flag2}
	STA {flag3}
+
	RTS
	
upguard5:
	LDA #$01A6
	STA $1CF0
	SEP #$30
	STZ {flag4}
	RTS
	
init_hole:
	REP #$30
	STZ $0250
	STZ $0252
	STZ $0254
	STZ $0256
	LDA #$0000
	JML $828BB9
	
ojisan_serifu:
	LDA {flag4}
	BNE +
	CMP #$FE
	BEQ e_ojisan
	LDA $22
	CMP #$80
	BCS e_ojisan
	LDA $20
	CMP #$A0
	BCC e_ojisan
	LDA #$A7
	STA $1CF0
	LDA #$01
	STA $1CF1
	JSL $1CFD6A		//active kaiwa
	LDA #$FF
	STA {flag4}
	LDA #$00
	STA {kindan}
e_ojisan:
	JSL $8DD381
	JML $85DE30
+
	CMP #$FF
	BNE +
	LDA $22
	CMP #$CA
	BCC +
	LDA $20
	CMP #$68
	BCC +
	CMP #$78
	BCS +
	LDA #$A8
	STA $1CF0
	LDA #$01
	STA $1CF1
	JSL $1CFD6A		//active kaiwa
	LDA #$FE
	STA {flag4}
+
	JSL $8DD381
	JML $85DE30

new_kyokai_kaiwa:
	LDA $EE06,y
	XBA
	LDA $EE09,y
	TAY
	XBA
	CMP #$1C
	BEQ _hime
e_kyokai:
	JSL $05E1A7
	BCC _EE4A
	STA $0DE0,x
	STA $0EB0,x
	LDA #$A0
	STA $7EF372
	INC {flag1}
_EE4A:
	JML $85EE4A
_hime:
	LDA {flag1}
	BNE +
	LDA #$1C
	BRA e_kyokai
+
	CMP #$01
	BNE +
	LDA #$AB
	LDY #$01
	BRA e_kyokai
+
	LDA #$AC
	LDY #$01
	JSL $05E1A7
	BCC +
	STA $0DE0,x
	STA $0EB0,x
	LDA #$A0
	STA $7EF372
	STZ {flag1}
+
	JML $85EE4A
	
new_kyokai_kaiwa2:
	LDA $DDDF,y
	XBA
	LDA $DDE2,y
	TAY
	XBA
	CMP #$14
	BEQ _shimpu
e_kyokai2:
	JSL $05E1A7
	BCC +
	STA $0DE0,x
	STA $0EB0,x
	LDA #$A0
	STA $7EF372
	INC {flag2}
+
	JML $85DE23
_shimpu:
	LDA {flag2}
	BNE +
	LDA #$14
	BRA e_kyokai2
+
	CMP #$01
	BNE +
	LDA #$A9
	LDY #$01
	BRA e_kyokai2
+
	CMP #$02
	BNE +
	LDA #$AA
	LDY #$01
	BRA e_kyokai2
+
	LDA #$AD
	LDY #$01
	JSL $05E1A7
	BCC +
	STA $0DE0,x
	STA $0EB0,x
	LDA #$A0
	STA $7EF372
	STZ {flag2}
+
	JML $85DE23
	
new_kyokai_kaiwa3:
	LDA {flag2}
	BNE _shimpu2
	LDA #$14
	LDY #$00
	JSL $05E1A7
	BCC +
	STA $0DE0,x
	STA $0EB0,x
	LDA #$A0
	STA $7EF372
	INC {flag2}
+
	JML $85DDDE
_shimpu2:
	LDA #$AE
	LDY #$01
	JSL $05E1A7
	BCC +
	STA $0DE0,x
	STA $0EB0,x
	LDA #$A0
	STA $7EF372
	STZ {flag2}
+
	JML $85DDDE

new_kyokai_kaiwa4:
	LDA {flag1}
	BNE _hime2
	LDA #$1C
	LDY #$00
	JSL $05E1A7
	BCC +
	STA $0DE0,x
	STA $0EB0,x
	LDA #$A0
	STA $7EF372
	INC {flag1}
+
	JML $85EE05
_hime2:
	LDA #$AF
	LDY #$01
	JSL $05E1A7
	BCC +
	STA $0DE0,x
	STA $0EB0,x
	LDA #$A0
	STA $7EF372
	STZ {flag1}
+
	JML $85EE05
	
new_kakariko_kaiwa1:
	LDA {flag1}
	BNE +
	LDA #$A3
	LDY #$00
	JSL $05E1A7
	BCC _baba
	INC {flag1}
_baba:
	JML $8DC4BB
+
	CMP #$01
	BNE +
	LDA #$B0
	LDY #$01
	JSL $05E1A7
	BCC _baba2
	INC {flag1}
_baba2:
	JML $8DC4BB
+
	LDA #$B1
	LDY #$01
	JSL $05E1A7
	BCC _baba3
	STZ {flag1}
_baba3:
	JML $8DC4BB	
	
new_kakariko_kaiwa2:
	LDA {flag1}
	BNE +
	LDA $E3A3,y
	XBA
	LDA $E3A5,y
	TAY
	XBA	
	JSL $05E1A7
	BCC _ojisan1
	INC {flag1}
_ojisan1:
	JML $85E3CB
+
	CMP #$01
	BNE +
	LDA #$B2
	LDY #$01
	JSL $05E1A7
	BCC _ojisan2
	INC {flag1}
_ojisan2:
	JML $85E3CB
+
	CMP #$02
	BNE +
	LDA #$B3
	LDY #$01
	JSL $05E1A7
	BCC _ojisan3
	INC {flag1}
_ojisan3:
	JML $85E3CB
+
	LDA #$B4
	LDY #$01
	JSL $05E1A7
	BCC _ojisan4
	LDA #$01
	STA {flag1}
_ojisan4:
	JML $85E3CB
	
clear_flag:
	STA $0250
	STA $0252
	STA $0254
	STA $0256
	STA $7EC019
	STA $7EC01B
	JML $828148
	
-
	LDA {flag1}
	BNE +
	LDA #$F1
	LDY #$00
	JSL $05E1A7
	BCC _uranai1
	INC {flag1}
	JML $8DC7F1
_uranai1:
	JML $8DC7FE
+
	LDA #$B5
	LDY #$01
	JSL $05E1A7
	BCC _uranai2
	STZ {flag1}
	JML $8DC7F1
_uranai2:
	JML $8DC7FE
	
new_uranai2:
	LDA $C821,y
	XBA
	LDA $C831,y
	TAY
	XBA
	JSL $05E219
	LDA #$FF
	STA {uranai_flag}
	JML $8DC94A
	
new_uranai:
	LDA {uranai_flag}
	CMP #$FF
	BNE -
	LDA {flag1}
	BNE +
	LDA #$B6
	LDY #$01
	JSL $05E1A7
	BCC _a
	INC {flag1}
	JML $8DC7F1
_a:
	JML $8DC7FE
+
	LDA #$B5
	LDY #$01
	JSL $05E1A7
	BCC _uranai2
	STZ {flag1}
	JML $8DC7F1
_uranai2:
	JML $8DC7FE
	
new_ajito:
	STX {flag2}
	LDA {flag1}
	ASL
	TAX
	JSR (ajito,x)
	JML $8DC307
ajito:
	dw ajito0
	dw ajito1
	dw ajito2
	dw ajito3
	dw ajito4
	dw ajito5
	dw ajito6
	dw ajito7
	dw ajito8
	dw ajito9
	dw ajito10
	dw ajito11
	dw ajito12
	dw ajito13
	dw ajito14
	dw ajito15
	dw ajito16
	dw ajito17
	dw ajito18
	
	
ajito0:
	LDX {flag2}
	LDA #$70
	LDY #$01
	JSL $05E1A7
	BCC _ajito0
	INC {flag1}
	STA $0ED0,x
	STA $0BE0,x
_ajito0:
	RTS
ajito1:
	LDX {flag2}
	LDA #$B7
	LDY #$01
	JSL $05E1A7
	BCC _ajito1
	INC {flag1}
	STA $0ED0,x
	STA $0BE0,x
_ajito1:
	RTS
ajito2:
	LDX {flag2}
	LDA #$B8
	LDY #$01
	JSL $05E1A7
	BCC _ajito2
	INC {flag1}
	STA $0ED0,x
	STA $0BE0,x
_ajito2:
	RTS
ajito3:
	LDX {flag2}
	LDA #$B9
	LDY #$01
	JSL $05E1A7
	BCC _ajito3
	INC {flag1}
	STA $0ED0,x
	STA $0BE0,x
_ajito3:
	RTS
ajito4:
	LDX {flag2}
	LDA #$BA
	LDY #$01
	JSL $05E1A7
	BCC _ajito4
	INC {flag1}
	STA $0ED0,x
	STA $0BE0,x
_ajito4:
	RTS
ajito5:
	LDX {flag2}
	LDA #$BB
	LDY #$01
	JSL $05E1A7
	BCC _ajito5
	INC {flag1}
	STA $0ED0,x
	STA $0BE0,x
_ajito5:
	RTS
ajito6:
	LDX {flag2}
	LDA #$BC
	LDY #$01
	JSL $05E1A7
	BCC _ajito6
	INC {flag1}
	STA $0ED0,x
	STA $0BE0,x
_ajito6:
	RTS
ajito7:
	LDX {flag2}
	LDA #$BD
	LDY #$01
	JSL $05E1A7
	BCC _ajito7
	INC {flag1}
	STA $0ED0,x
	STA $0BE0,x
_ajito7:
	RTS
ajito8:
	LDX {flag2}
	LDA #$BE
	LDY #$01
	JSL $05E1A7
	BCC _ajito8
	INC {flag1}
	STA $0ED0,x
	STA $0BE0,x
_ajito8:
	RTS
ajito9:
	LDX {flag2}
	LDA #$BF
	LDY #$01
	JSL $05E1A7
	BCC _ajito9
	INC {flag1}
	STA $0ED0,x
	STA $0BE0,x
_ajito9:
	RTS
ajito10:
	LDX {flag2}
	LDA #$C0
	LDY #$01
	JSL $05E1A7
	BCC _ajito10
	INC {flag1}
	STA $0ED0,x
	STA $0BE0,x
_ajito10:
	RTS
ajito11:
	LDX {flag2}
	LDA #$C1
	LDY #$01
	JSL $05E1A7
	BCC _ajito11
	INC {flag1}
	STA $0ED0,x
	STA $0BE0,x
_ajito11:
	RTS
ajito12:
	LDX {flag2}
	LDA #$C2
	LDY #$01
	JSL $05E1A7
	BCC _ajito12
	INC {flag1}
	STA $0ED0,x
	STA $0BE0,x
_ajito12:
	RTS
ajito13:
	LDX {flag2}
	LDA #$C3
	LDY #$01
	JSL $05E1A7
	BCC _ajito13
	INC {flag1}
	STA $0ED0,x
	STA $0BE0,x
_ajito13:
	RTS
ajito14:
	LDX {flag2}
	LDA #$C4
	LDY #$01
	JSL $05E1A7
	BCC _ajito14
	INC {flag1}
	STA $0ED0,x
	STA $0BE0,x
_ajito14:
	RTS
ajito15:
	LDX {flag2}
	LDA #$C5
	LDY #$01
	JSL $05E1A7
	BCC _ajito15
	INC {flag1}
	STA $0ED0,x
	STA $0BE0,x
_ajito15:
	RTS
ajito16:
	LDX {flag2}
	LDA #$C6
	LDY #$01
	JSL $05E1A7
	BCC _ajito16
	INC {flag1}
	STA $0ED0,x
	STA $0BE0,x
_ajito16:
	RTS
ajito17:
	LDX {flag2}
	LDA #$C7
	LDY #$01
	JSL $05E1A7
	BCC _ajito17
	INC {flag1}
	STA $0ED0,x
	STA $0BE0,x
_ajito17:
	RTS
ajito18:
	LDX {flag2}
	LDA #$C8
	LDY #$01
	JSL $05E1A7
	BCC _ajito17
	LDA #$0F
	STA {flag1}
	STA $0ED0,x
	STA $0BE0,x
_ajito17:
	RTS
	
new_save_menu:
	LDA #$00
	STA {save_tilemap_flag}
	LDA #$01
	STA $11
	STZ $05FC
	STZ $05FD
	RTL
	
new_save_menu2:
	LDA #$00
	STA {save_tilemap_flag}
	LDA #$02
	STA $17
	STA $0710
	LDA #$00
	STA {nmi_dma_index}
	JML $8EF21B

new_fake_sword:
	LDA $7EF359
	CMP #$01
	BNE +
	LDA #$6D
	LDY #$00
	JML $85EEC9
+
	LDA #$C9
	LDY #$01
	JML $85EEC9

dma_text_map:
	PHP
	//JSL wait_end_vblank
	JSL wait_vblank
	SEP #$20
	REP #$10
	LDA #$80
	STA $2115
	LDA.b #(tilemap0>>16)
	STA $4304
	LDX #$1801
	STX $4300
	LDA #$06
	STA $0274
	REP #$20
	LDA $7D
	STA $0272
	LDA $1002
	XBA
	STA $0270
-
	REP #$20
	LDA $0270
	STA $2116
	CLC
	ADC #$0020
	STA $0270
	LDA #$0034
	STA $4305
	LDA $0272
	STA $4302
	CLC
	ADC #$0034
	STA $0272
	SEP #$20
	LDA #$01
	STA $420B
	DEC $0274
	BNE -
	PLP
	RTS
	
yami_uranai:
	LDA {uranai_flag}
	BNE +
	LDA #$F1
	LDY #$00
	JML $8DC9D7
+
	LDA #$CA
	LDY #$01
	JML $8DC9D7
	
new_item_screen:
	REP #$20
	LDX #$00
	LDA #$207F
-
	STA $1000,x
	STA $1080,x
	STA $1100,x
	STA $1180,x
	STA $1200,x
	STA $1280,x
	STA $1300,x 
	STA $1380,x 
	STA $1400,x
	STA $1480,x
	STA $1500,x
	STA $1580,x
	STA $1600,x
	STA $1680,x
	STA $1700,x
	STA $1780,x
	INX #2
	CPX #$80
	BNE -
	JSL wait_vblank
	LDA #$1801
	STA $4300
	LDA #$0A00
	STA $4305
	LDA #$F500>>1
	STA $2116
	LDA #(menu_text)
	STA $4302
	SEP #$20
	LDA.b #(menu_text>>16)
	STA $4304
	LDA #$80
	STA $2115
	LDA #$01
	STA $420B
	
	REP #$20
	LDA #(menu_text)
	CLC
	ADC #$0A00
	STA $4302
	LDA #$E000>>1
	STA $2116
	LDA #$0200
	STA $4305
	SEP #$20
	LDA #$01
	STA $420B
	
	REP #$20
	LDA #(menu_text)
	CLC
	ADC #$0C00
	STA $4302
	LDA #$F000>>1
	STA $2116
	LDA #$0200
	STA $4305
	SEP #$20
	LDA #$01
	STA $420B
	
	REP #$20
	LDA #(menu_text)
	CLC
	ADC #$0E00
	STA $4302
	LDA #$FF00>>1
	STA $2116
	LDA #$0100
	STA $4305
	SEP #$20
	LDA #$01
	STA $420B
	
	REP #$20
	LDA #(menu_text)
	CLC
	ADC #$0F00
	STA $4302
	LDA #$E200>>1
	STA $2116
	LDA #$0090
	STA $4305
	SEP #$20
	LDA #$01
	STA $420B
	
	REP #$20
	LDA #(menu_text)
	CLC
	ADC #$0F90
	STA $4302
	LDA #$E300>>1
	STA $2116
	LDA #$0030
	STA $4305
	SEP #$20
	LDA #$01
	STA $420B
	
	REP #$20
	LDA #(menu_text)
	CLC
	ADC #$0FC0
	STA $4302
	LDA #$E690>>1
	STA $2116
	LDA #$0060
	STA $4305
	SEP #$20
	LDA #$01
	STA $420B
	
	REP #$20
	LDA #(menu_text)
	CLC
	ADC #$1020
	STA $4302
	LDA #$E2D0>>1
	STA $2116
	LDA #$0030
	STA $4305
	SEP #$20
	LDA #$01
	STA $420B
	
	REP #$20
	LDA #$E4B0>>1
	STA $2116
	LDA #(menu_text)
	CLC
	ADC #$1050
	STA $4302
	LDA #$0010
	STA $4305
	SEP #$20
	LDA #$01
	STA $420B
	
	REP #$20
	LDA #$E4F0>>1
	STA $2116
	LDA #(menu_text)
	CLC
	ADC #$1060
	STA $4302
	LDA #$0010
	STA $4305
	SEP #$20
	LDA #$01
	STA $420B
	
	REP #$20
	LDA #$E820>>1
	STA $2116
	LDA #(menu_text)
	CLC
	ADC #$1070
	STA $4302
	LDA #$0010
	STA $4305
	SEP #$20
	LDA #$01
	STA $420B	
	
	JML $8DDD99
	
new_ability_text:
	REP #$30
	LDX #$0000
	LDY #$0010
	LDA #$24F5
-
	STA $1584,x
	STA $15C4,x 
	STA $1604,x
	STA $1644,x
	STA $1684,x
	STA $16C4,x
	STA $1704,x
	INX #2
	DEY
	BPL -
	LDA $7EF378
	AND #$FF00
	STA $02
	LDA #$0003
	STA $04
	LDY #$0000
	TYX
_E6ED:
	LDA #$0004
	STA $06
_E6F2:
	ASL $02
	BCC +
	LDA ability_map3,x
	STA $1586,y
	LDA ability_map3+2,x
	STA $1588,y
	LDA ability_map3+4,x
	STA $158A,y
	LDA ability_map3+6,x
	STA $158C,y
	LDA ability_map3+8,x
	STA $158E,y
	
	LDA ability_map3+10,x
	STA $15C6,y
	LDA ability_map3+12,x
	STA $15C8,y
	LDA ability_map3+14,x
	STA $15CA,y
	LDA ability_map3+16,x
	STA $15CC,y
	LDA ability_map3+18,x
	STA $15CE,y
+
	TXA
	CLC
	ADC #$0014
	TAX
	TYA
	CLC
	ADC #$000A
	TAY
	DEC $06
	BNE _E6F2
	TYA
	CLC
	ADC #$0058
	TAY
	DEC $04
	BNE _E6ED
	JML $8DE74C
	
new_ability_text2:
	STA $00
	ASL #2
	ADC $00
	ASL #2
	TAX
	LDA ability_map1,x
	STA $1586
	LDA ability_map1+2,x
	STA $1588
	LDA ability_map1+4,x
	STA $158A
	LDA ability_map1+6,x
	STA $158C
	LDA ability_map1+8,x
	STA $158E
	
	LDA ability_map1+10,x
	STA $15C6
	LDA ability_map1+12,x
	STA $15C8
	LDA ability_map1+14,x
	STA $15CA
	LDA ability_map1+16,x
	STA $15CC
	LDA ability_map1+18,x
	STA $15CE
	JML $8DE85F
	
item_name:
	LDY #$0000
	LDA $0202
	AND #$00FF
	ASL
	TAX
	JSR (itemmap,x)
	JML $8DECE6
	
itemmap:
	dw $FFFF
	dw write_yumi
	dw write_boomerang
	dw write_hook
	dw write_bomb
	dw write_kona
	dw write_fire
	dw write_ice
	dw write_bomber
	dw write_ether
	dw write_shake
	dw write_lamp
	dw write_hammer
	dw write_ocarina
	dw write_net
	dw write_book
	dw write_bin
	dw write_somalia
	dw write_byla
	dw write_mant
	dw write_kagami
	
write_yumi:
	TYX
	LDA $7EF340	//yumi
	AND #$00FF
	CMP #$0001
	BNE +
-
	LDA yumi_map,x
	STA $122C,y
	LDA yumi_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS
+
	CMP #$0003
	BEQ -
	CMP #$0002
	BNE +
-
	LDA yumiya_map,x
	STA $122C,y
	LDA yumiya_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS
+
-
	LDA ginya_map,x
	STA $122C,y
	LDA ginya_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS
	
write_boomerang:
	TYX
-
	LDA boomerang_map,x
	STA $122C,y
	LDA boomerang_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS	
	
write_hook:
	TYX
-
	LDA hook_map,x
	STA $122C,y
	LDA hook_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS	
	
write_bomb:
	TYX
-
	LDA bomb_map,x
	STA $122C,y
	LDA bomb_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS	
	
write_kona:
	TYX
	LDA $7EF344		//kinoko, kona
	AND #$00FF
	CMP #$0001
	BNE +
-
	LDA kinoko_map,x
	STA $122C,y
	LDA kinoko_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS
+
-
	LDA kona_map,x
	STA $122C,y
	LDA kona_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS
	
write_fire:
	TYX
-
	LDA fire_map,x
	STA $122C,y
	LDA fire_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS
	
write_ice:
	TYX
-
	LDA ice_map,x
	STA $122C,y
	LDA ice_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS
	
write_bomber:
	TYX
-
	LDA bomber_map,x
	STA $122C,y
	LDA bomber_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS
	
write_ether:
	TYX
-
	LDA ether_map,x
	STA $122C,y
	LDA ether_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS
	
write_shake:
	TYX
-
	LDA shake_map,x
	STA $122C,y
	LDA shake_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS
	
write_lamp:
	TYX
-
	LDA lamp_map,x
	STA $122C,y
	LDA lamp_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS
	
write_hammer:
	TYX
-
	LDA hammer_map,x
	STA $122C,y
	LDA hammer_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS
	
write_ocarina:
	TYX
	LDA $7EF34C
	AND #$00FF
	CMP #$0001
	BEQ +
-
	LDA ocarina_map,x
	STA $122C,y
	LDA ocarina_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS
+
-
	LDA shabel_map,x
	STA $122C,y
	LDA shabel_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS
	
write_net:
	TYX
-
	LDA net_map,x
	STA $122C,y
	LDA net_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS	
	
write_book:
	TYX
-
	LDA book_map,x
	STA $122C,y
	LDA book_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS	
	
write_bin:
	LDA $7EF34F
	AND #$00FF
write_bin2:
	TAX
	LDA $7EF35B,x		//bin naiyoubutsu
	AND #$00FF
	CMP #$0001
	BNE +
	TYX
-
	LDA kinoko_map,x
	STA $122C,y
	LDA kinoko_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS

+
	CMP #$0002
	BNE +
	TYX
-
	LDA bin_map,x
	STA $122C,y
	LDA bin_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS
+
	CMP #$0003
	BNE +
	TYX
-
	LDA aka_map,x
	STA $122C,y
	LDA aka_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS
+
	CMP #$0004
	BNE +
	TYX
-
	LDA midori_map,x
	STA $122C,y
	LDA midori_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS
+
	CMP #$0005
	BNE +
	TYX
-
	LDA aoi_map,x
	STA $122C,y
	LDA aoi_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS
	
+
	CMP #$0006
	BNE +
	TYX
-
	LDA kusuri_map,x
	STA $122C,y
	LDA kusuri_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS
+
	CMP #$0007
	BNE +
	TYX
-
	LDA hachi_map,x
	STA $122C,y
	LDA hachi_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS
	
+
	TYX
-
	LDA kinbachi_map,x
	STA $122C,y
	LDA kinbachi_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS

	
write_somalia:
	TYX
-
	LDA somalia_map,x
	STA $122C,y
	LDA somalia_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS
	
write_byla:
	TYX
-
	LDA byla_map,x
	STA $122C,y
	LDA byla_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS
	
write_mant:
	TYX
-
	LDA mant_map,x
	STA $122C,y
	LDA mant_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS
	
write_kagami:
	TYX
	LDA $7EF353
	AND #$00FF
	CMP #$0001
	BNE +
-
	LDA tegami_map,x
	STA $122C,y
	LDA tegami_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS
+
-
	LDA kagami_map,x
	STA $122C,y
	LDA kagami_map+16,x
	STA $126C,y
	INX #2
	INY #2
	CPY #$0010
	BCC -
	RTS
	
vial_name:
	LDY #$0000
	LDA $7EF34F
	AND #$00FF
	BEQ _E2F1
	JSR write_bin2
_E2F1:
	JML $8DE2F1

item_frame:
	LDA #$2DFE
	STA $1550		//skill
	LDA #$2C6D
	STA $1552
	LDA #$2C6E
	STA $1554
	LDA #$2C69
	STA $1556
	STA $1558
	
	LDA #$A4F0		//Button A
	STA $1584
	LDA #$24F2
	STA $15C4
	JML $8DE7B4
	
item_frame2:
	LDA #$2C6E	//item
	STA $1150
	LDA #$2DFF
	STA $1152
	LDA #$2C6A
	STA $1154
	LDA #$2C6B
	STA $1156

	LDA #$3CF0
	STA $1184
	LDA #$3CF1
	STA $11C4

	LDA #$3CF9
	STA $1146
	STA $1148		
	JML $8DE478
	
_crystal:
	LDA #$2DFB
	STA $132C
	LDA #$2DFC
	STA $132E
	LDA #$2DFD
	STA $1330
	LDA #$2DFE
	STA $1332
	LDA #$2DFF
	STA $1334
	LDA #$2C32
	STA $1336
	LDA #$2C69
	STA $1338
	
	LDA $7EF37A
	AND #$0001
	BEQ _EAB9
	LDA #$2D44
	STA $13B0
	LDA #$2D45
	STA $13B2
_EAB9:
	JML $8DEAB9
	
_emblem:
	LDA #$2CF5
	STA $132C
	LDA #$2C6A
	STA $132E
	STA $1336
	LDA #$2C6B
	STA $1330
	LDA #$2C6C
	STA $1332
	LDA #$2C69
	STA $1334
	LDA #$2C6B
	STA $1338
	
	LDA #$13B2
	STA $00
	JML $8DEA1A
	
restore_dungeon_map:
	REP #$20
	LDA #$F000>>1
	STA $002116
	LDA #$1801
	STA $004300
	LDA #$0200
	STA $004305
	LDA #(restore_map)
	STA $004302
	SEP #$20
	LDA #$80
	STA $002115
	LDA.b #(restore_map>>16)
	STA $004304
	LDA #$01
	STA $00420B
	REP #$20
	STZ $00
	STZ $02
	JML $8AE850
	
restore_dungeon_map2:
	JSL wait_vblank
	REP #$20
	LDA #$F000>>1
	STA $002116
	LDA #$1801
	STA $004300
	LDA #$0200
	STA $004305
	LDA #(restore_map)
	STA $004302
	SEP #$20
	LDA #$80
	STA $002115
	LDA.b #(restore_map>>16)
	STA $004304
	LDA #$01
	STA $00420B
	REP #$20
	STZ $00
	STZ $02
	
	SEP #$30
	LDX $0202
	LDA $0DFA35,x
	STA $0303
	JML $8DDFB9

	
_dungeon_item:
	REP #$30
	LDA #$2CF5
	STA $16AC
	STA $16AE
	STA $16B8
	LDA #$2C6E	//item
	STA $16B0
	LDA #$2DFF
	STA $16B2
	LDA #$2C6A
	STA $16B4
	LDA #$2C6B
	STA $16B6
	
	LDA #$15EC
	STA $00
	JML $8DEE05

	
kinoko_map:
	dw $2CF5, $2CF5, $2CF5, $2DF8, $2DF9, $2DFA, $2CF5, $2CF5
	dw $2CF5, $2CF5, $2CF5, $2C28, $2C30, $2C31, $2CF5, $2CF5
kona_map:
	dw $2CF5, $2CF5, $2CF5, $2D9A, $2D9B, $2D9C, $2CF5, $2CF5
	dw $2CF5, $2CF5, $2CF5, $2DAA, $2DAB, $2DAC, $2CF5, $2CF5
kagami_map:
	dw $2CF5, $2CF5, $2CF5, $2D00, $2D01, $2D02, $2CF5, $2CF5
	dw $2CF5, $2CF5, $2CF5, $2D10, $2D11, $2D12, $2CF5, $2CF5
ocarina_map:
	dw $2CF5, $2CF5, $2DD6, $2DD7, $2DD8, $2DD9, $2DDA, $2CF5
	dw $2CF5, $2CF5, $2DE6, $2DE7, $2DE8, $2DE9, $2DEA, $2CF5
yumi_map:
	dw $2CF5, $2CF5, $2CF5, $2D72, $2D73, $2D74, $2CF5, $2CF5
	dw $2CF5, $2CF5, $2CF5, $2D82, $2D83, $2D84, $2CF5, $2CF5
yumiya_map:
	dw  $2CF5, $2D72, $2D73, $2D74, $2D75, $2D76, $2D77, $2CF5
	dw  $2CF5, $2D82, $2D83, $2D84, $2D85, $2D86, $2D87, $2CF5
ginya_map:
	dw $2CF5, $2CF5, $2D78, $2D79, $2D7A, $2D7B, $2D7C, $2CF5
	dw $2CF5, $2CF5, $2D88, $2D89, $2D8A, $2D8B, $2D8C, $2CF5
shabel_map:
	dw $2CF5, $2CF5, $2CF5, $2D03, $2D04, $2D05, $2CF5, $2CF5
	dw $2CF5, $2CF5, $2CF5, $2D13, $2D14, $2D15, $2CF5, $2CF5
boomerang_map:
	dw $2CF5, $2D7D, $2D7E, $2D7F, $2D90, $2D91, $2D92, $2D93
	dw $2CF5, $2D8D, $2D8E, $2D8F, $2DA0, $2DA1, $2DA2, $2DA3
hook_map:
	dw $2CF5, $2CF5, $2CF5, $2D94, $2D95, $2D96, $2CF5, $2CF5
	dw $2CF5, $2CF5, $2CF5, $2DA4, $2DA5, $2DA6, $2CF5, $2CF5
bomb_map:
	dw $2CF5, $2CF5, $2CF5, $2D97, $2D98, $2D99, $2CF5, $2CF5
	dw $2CF5, $2CF5, $2CF5, $2DA7, $2DA8, $2DA9, $2CF5, $2CF5
fire_map:
	dw $2CF5, $2CF5, $2CF5, $2D9D, $2D9E, $2D9F, $2CF5, $2CF5
	dw $2CF5, $2CF5, $2CF5, $2DAD, $2DAE, $2DAF, $2CF5, $2CF5
ice_map:
	dw $2CF5, $2CF5, $2CF5, $2DB0, $2DB1, $2DB2, $2CF5, $2CF5
	dw $2CF5, $2CF5, $2CF5, $2DC0, $2DC1, $2DC2, $2CF5, $2CF5
bomber_map:
	dw $2CF5, $2CF5, $2DB3, $2DB4, $2DB5, $2DB6, $2DB7, $2CF5
	dw $2CF5, $2CF5, $2DC3, $2DC4, $2DC5, $2DC6, $2DC7, $2CF5
ether_map:
	dw $2CF5, $2CF5, $2DB8, $2DB9, $2DBA, $2DBB, $2CF5, $2CF5
	dw $2CF5, $2CF5, $2DC8, $2DC9, $2DCA, $2DCB, $2CF5, $2CF5
shake_map:
	dw $2CF5, $2CF5, $2DBC, $2DBD, $2DBE, $2DBF, $2CF5, $2CF5
	dw $2CF5, $2CF5, $2DCC, $2DCD, $2DCE, $2DCF, $2CF5, $2CF5	
lamp_map:
	dw $2CF5, $2CF5, $2CF5, $2DD0, $2DD1, $2DD2, $2CF5, $2CF5
	dw $2CF5, $2CF5, $2CF5, $2DE0, $2DE1, $2DE2, $2CF5, $2CF5
hammer_map:
	dw $2CF5, $2CF5, $2CF5, $2DD3, $2DD4, $2DD5, $2CF5, $2CF5
	dw $2CF5, $2CF5, $2CF5, $2DE3, $2DE4, $2DE5, $2CF5, $2CF5
net_map:
	dw $2CF5, $2CF5, $2CF5, $2DDB, $2DDC, $2DDD, $2CF5, $2CF5
	dw $2CF5, $2CF5, $2CF5, $2DEB, $2DEC, $2DED, $2CF5, $2CF5
bin_map:
	dw $2CF5, $2CF5, $2CF5, $2DDE, $2DDF, $2CF5, $2CF5, $2CF5
	dw $2CF5, $2CF5, $2CF5, $2DEE, $2DEF, $2CF5, $2CF5, $2CF5
book_map:
	dw $2CF5,  $2CF5, $2CF5, $2C00, $2C01, $2C02, $2CF5, $2CF5
	dw $2CF5,  $2CF5, $2CF5, $2C10, $2C11, $2C12, $2CF5, $2CF5
somalia_map:
	dw $2CF5,  $2CF5, $2C06, $2C07, $2C08, $2C09, $2C0A, $2CF5
	dw $2CF5,  $2CF5, $2C16, $2C17, $2C18, $2C19, $2C1A, $2CF5
byla_map:
	dw $2CF5,  $2CF5, $2CF5, $2C03, $2C04, $2C05, $2CF5, $2CF5
	dw $2CF5,  $2CF5, $2CF5, $2C13, $2C14, $2C15, $2CF5, $2CF5
mant_map:
	dw $2CF5,  $2CF5, $2C0B, $2C0C, $2C0D, $2C0E, $2C0F, $2CF5
	dw $2CF5,  $2CF5, $2C1B, $2C1C, $2C1D, $2C1E, $2C1F, $2CF5
tegami_map:
	dw $2CF5, $2CF5, $2CF5, $2C2D, $2C2E, $2C2F, $2CF5, $2CF5
	dw $2CF5, $2CF5, $2CF5, $2C4B, $2C4F, $2C82, $2CF5, $2CF5
aka_map:
	dw $2CF5, $2D0C, $2D0D, $2D0E, $2D0F, $2DF0, $2DF1, $2CF5
	dw $2CF5, $2D1C, $2D1D, $2D1E, $2D1F, $2C20, $2C21, $2CF5
midori_map:
	dw $2CF5, $2D0C, $2D0D, $2D0E, $2D0F, $2DF5, $2DF6, $2DF7
	dw $2CF5, $2D1C, $2D1D, $2D1E, $2D1F, $2C25, $2C26, $2C27
aoi_map:
	dw $2CF5, $2D0C, $2D0D, $2D0E, $2D0F, $2DF2, $2DF3, $2DF4
	dw $2CF5, $2D1C, $2D1D, $2D1E, $2D1F, $2C22, $2C23, $2C24
kusuri_map:
	dw $2CF5, $2CF5, $2CF5, $2D0C, $2D0D, $2D0E, $2D0F, $2CF5
	dw $2CF5, $2CF5, $2CF5, $2D1C, $2D1D, $2D1E, $2D1F, $2CF5
hachi_map:
	dw $2CF5, $2CF5, $2CF5, $2D06, $2D07, $2D08, $2CF5, $2CF5
	dw $2CF5, $2CF5, $2CF5, $2D16, $2D17, $2D18, $2CF5, $2CF5
kinbachi_map:
	dw $2CF5, $2D06, $2D07, $2D08, $2D09, $2D0A, $2D0B, $2CF5
	dw $2CF5, $2D16, $2D17, $2D18, $2D19, $2D1A, $2D1B, $2CF5
	
ability_map1:		//glove2
dw $2CF5, $2D50, $2D51, $2D53, $2CF5
dw $2CF5, $2D60, $2D61, $2D63, $2CF5

ability_map2:		//glove3
dw $2CF5, $2D50, $2D51, $2D54, $2CF5
dw $2CF5,$2D60, $2D61, $2D64, $2CF5

ability_map3:		//glove1
dw $2CF5, $2D50, $2D51, $2D52, $2CF5
dw $2CF5, $2D60, $2D61, $2D62, $2CF5

dw $2CF5, $2D5B, $2D5C, $2D5D, $2CF5		//yomu
dw $2CF5, $2D6B, $2D6C, $2D6D, $2CF5

dw $2CF5, $2D5E, $2D5F, $2CF5, $2CF5	//hanasu
dw $2CF5, $2D6E, $2D6F, $2CF5, $2CF5

dw $2CF5, $207F, $207F, $207F, $2CF5
dw $2CF5, $207F, $207F, $207F, $2CF5

dw $2CF5, $2D55, $2D56, $2D57, $2CF5	//hipparu
dw $2CF5, $2D65, $2D66, $2D67, $2CF5

dw $2CF5, $2D58, $2D59, $2D5A, $2CF5	//hashiru
dw $2CF5, $2D68, $2D69, $2D6A, $2CF5

dw $2CF5, $2D70, $2D71, $2CF5, $2CF5	//oyogu
dw $2CF5, $2D80, $2D81, $2CF5, $2CF5

dw $2CF5, $2CF5, $2CF5, $207F, $207F
dw $2C01, $1C18, $2C28, $207F
dw $207F, $000A, $0064, $24A2, $24A2, $24A2, $24A2, $24A1
dw $24A0, $24A3, $24A4, $24A3, $24A0

new_press_dungeon:
	LDA $F6
	AND #$40
	BEQ _8823
	LDA $040C
	CMP #$FF
	BEQ _8823
	LDA $A0
	BEQ _8823
	JML $828812	
_8823:
	JSR quick_select
	JML $828823
quick_select:
	LDA $0202
	BNE +
	RTS
+
	LDA $F6
	AND #$20	//L, dec
	BEQ +
-
	DEC $0202
	BNE _dec
	LDA #$14
	STA $0202
_dec:
	LDX $0202
	LDA $7EF33F,x		//item string
	BNE _item1
	BRA -
_item1:
	TXA
	STA $0202
	JSR item_function
	RTS
+
	LDA $F6
	AND #$10	//R, inc
	BEQ +
-
	INC $0202
	LDA $0202
	CMP #$15
	BCC _inc
	LDA #$01
	STA $0202
_inc:
	LDX $0202
	LDA $7EF33F,x		//item string
	BNE _item2
	BRA -
_item2:
	TXA
	STA $0202
	JSR item_function
+
	RTS
	
item_function:
	LDX $0202
	LDA $0DFA35,x
	STA $0303
	REP #$30
	LDA $0202
	AND #$00FF
	ASL
	TAX
	JSR (item_graphic,x)
	SEP #$30
	RTS
	
new_press_field:
	LDA $F6
	AND #$40
	BEQ _A475
	STZ $0200
	LDA #$07
	STA $11
	LDA $10
	STA $010C
	LDA #$0E
	STA $10
	JML $82A474
	
_A475:
	JSR quick_select
	JML $82A475

item_graphic:
	dw graphic_blank
	dw graphic_yumi
	dw graphic_boomerang
	dw graphic_hook
	dw graphic_bomb
	dw graphic_kona
	dw graphic_fire
	dw graphic_ice
	dw graphic_bomber
	dw graphic_ether
	dw graphic_shake
	dw graphic_lamp
	dw graphic_hammer
	dw graphic_ocarina
	dw graphic_net
	dw graphic_book
	dw graphic_bin
	dw graphic_somalia
	dw graphic_byla
	dw graphic_mant
	dw graphic_kagami
	
graphic_blank:
	LDA #$207F
	STA $7EC74A
	STA $7EC74C
	STA $7EC78A
	STA $7EC78C
	RTS
	
graphic_yumi:
	LDA $7EF340
	AND #$00FF
	CMP #$0001
	BNE +
-
	LDA #$28BA
	STA $7EC74A
	LDA #$28E9
	STA $7EC74C
	LDA #$28E8
	STA $7EC78A
	LDA #$28CB
	STA $7EC78C
	RTS	
+
	CMP #$0002
	BNE +
	LDA #$28BA
	STA $7EC74A
	LDA #$284A
	STA $7EC74C
	LDA #$2849
	STA $7EC78A
	LDA #$28CB
	STA $7EC78C
	RTS
+
	CMP #$0003
	BNE +
	BRA -
+
	LDA #$28BA
	STA $7EC74A
	INC
	STA $7EC74C
	LDA #$24CA
	STA $7EC78A
	LDA #$28CB
	STA $7EC78C
	RTS
graphic_boomerang:
	LDA $7EF341
	AND #$00FF
	CMP #$0001
	BNE +
	LDA #$2CB8
	STA $7EC74A
	INC
	STA $7EC74C
	LDA #$2CF5
	STA $7EC78A
	LDA #$2CC9
	STA $7EC78C
	RTS
+
	LDA #$24B8
	STA $7EC74A
	INC
	STA $7EC74C
	LDA #$24F5
	STA $7EC78A
	LDA #$24C9
	STA $7EC78C
	RTS
graphic_hook:
	LDA #$24F5
	STA $7EC74A
	INC
	STA $7EC74C
	LDA #$24C0
	STA $7EC78A
	LDA #$24F5
	STA $7EC78C
	RTS
graphic_bomb:
	LDA #$2CB2
	STA $7EC74A
	INC
	STA $7EC74C
	LDA #$2CC2
	STA $7EC78A
	LDA #$6CC2
	STA $7EC78C
	RTS
graphic_kona:
	LDA $7EF344	//kinoko
	AND #$00FF
	CMP #$0001
	BNE +
	LDA #$2444
	STA $7EC74A
	INC
	STA $7EC74C
	LDA #$2446
	STA $7EC78A
	INC
	STA $7EC78C
	RTS	
+
	LDA #$203B
	STA $7EC74A
	INC
	STA $7EC74C
	LDA #$203D
	STA $7EC78A
	INC
	STA $7EC78C
	RTS
graphic_fire:
	LDA #$24B0
	STA $7EC74A
	INC
	STA $7EC74C
	LDA #$24C0
	STA $7EC78A
	INC
	STA $7EC78C
	RTS
graphic_ice:
	LDA #$2CB0
	STA $7EC74A
	LDA #$2CBE
	STA $7EC74C
	LDA #$2CC0
	STA $7EC78A
	INC
	STA $7EC78C
	RTS
graphic_bomber:
	LDA #$287D
	STA $7EC74A
	INC
	STA $7EC74C
	LDA #$E87E
	STA $7EC78A
	LDA #$E87D
	STA $7EC78C
	RTS
graphic_ether:
	LDA #$2876
	STA $7EC74A
	INC
	STA $7EC74C
	LDA #$E877
	STA $7EC78A
	LDA #$E876
	STA $7EC78C
	RTS
graphic_shake:
	LDA #$2866
	STA $7EC74A
	INC
	STA $7EC74C
	LDA #$E867
	STA $7EC78A
	LDA #$E866
	STA $7EC78C
	RTS
graphic_lamp:
	LDA #$24BC
	STA $7EC74A
	INC
	STA $7EC74C
	LDA #$24CC
	STA $7EC78A
	INC
	STA $7EC78C
	RTS
graphic_hammer:
	LDA #$20B6
	STA $7EC74A
	INC
	STA $7EC74C
	LDA #$20C6
	STA $7EC78A
	INC
	STA $7EC78C
	RTS
graphic_ocarina:
	LDA $7EF34C
	AND #$00FF
	CMP #$0001
	BNE +
	LDA #$20D0
	STA $7EC74A
	INC
	STA $7EC74C
	LDA #$20E0
	STA $7EC78A
	INC
	STA $7EC78C
	RTS	
+	
	LDA #$2CD4
	STA $7EC74A
	INC
	STA $7EC74C
	LDA #$2CE4
	STA $7EC78A
	INC
	STA $7EC78C
	RTS
graphic_net:
	LDA #$3C40
	STA $7EC74A
	INC
	STA $7EC74C
	LDA #$2842
	STA $7EC78A
	LDA #$3C43
	STA $7EC78C
	RTS
graphic_book:
	LDA #$3CA5
	STA $7EC74A
	INC
	STA $7EC74C
	LDA #$3CD8
	STA $7EC78A
	INC
	STA $7EC78C
	RTS
graphic_bin:
	LDA $7EF34F
	AND #$00FF	
	TAX
	LDA $7EF35B,x		//bin naiyoubutsu
	AND #$00FF
	CMP #$0001
	BNE +
	LDA #$2044
	STA $7EC74A
	INC
	LDA #$2046
	STA $7EC78A
	INC
	STA $7EC78C
	RTS
+
	CMP #$0002
	BNE +
	LDA #$2837
	STA $7EC74A
	INC
	STA $7EC74C
	LDA #$2CC3
	STA $7EC78A
	LDA #$2CD3
	STA $7EC78C
	RTS
+
	CMP #$0003
	BNE +
	LDA #$24D2
	STA $7EC74A
	LDA #$64D2
	STA $7EC74C
	LDA #$24E2
	STA $7EC78A
	INC
	STA $7EC78C
	RTS	
+
	CMP #$0004
	BNE +
	LDA #$3CD2
	STA $7EC74A
	LDA #$7CD2
	STA $7EC74C
	LDA #$3CE2
	STA $7EC78A
	INC
	STA $7EC78C
	RTS	
+
	CMP #$0005
	BNE +
	LDA #$2CD2
	STA $7EC74A
	LDA #$6CD2
	STA $7EC74C
	LDA #$2CE2
	STA $7EC78A
	INC
	STA $7EC78C
	RTS	
+
	CMP #$0006
	BNE +
	LDA #$2855
	STA $7EC74A
	LDA #$6855
	STA $7EC74C
	LDA #$2C57
	STA $7EC78A
	LDA #$2C5A
	STA $7EC78C
	RTS	
+
	LDA #$2837
	STA $7EC74A
	INC
	STA $7EC74C
	LDA #$2839
	STA $7EC78A
	INC
	STA $7EC78C
	RTS
	
graphic_somalia:
	LDA #$24DC
	STA $7EC74A
	INC
	STA $7EC74C
	LDA #$24EC
	STA $7EC78A
	INC
	STA $7EC78C
	RTS
graphic_byla:
	LDA #$2CDC
	STA $7EC74A
	INC
	STA $7EC74C
	LDA #$2CEC
	STA $7EC78A
	INC
	STA $7EC78C
	RTS
graphic_mant:
	LDA #$24B4
	STA $7EC74A
	INC
	STA $7EC74C
	LDA #$24C4
	STA $7EC78A
	INC
	STA $7EC78C
	RTS
graphic_kagami:
	LDA $7EF353
	AND #$00FF
	CMP #$0001
	BNE +
	LDA #$28DE
	STA $7EC74A
	INC
	STA $7EC74C
	LDA #$28EE
	STA $7EC78A
	INC
	STA $7EC78C
	RTS	
+
	LDA #$2C62
	STA $7EC74A
	INC
	STA $7EC74C
	LDA #$2C72
	STA $7EC78A
	INC
	STA $7EC78C
	RTS
		
guest:
	REP #$30
	LDA {flag1}
	AND #$00FF
	ASL
	TAX
	JSR (knight,x)
	SEP #$30
	JSL $0CC3F2
	JML $8CC2C9
	
knight:
	dw knight0
	dw knight1
	dw knight2
	dw knight3
	dw knight4

knight0:
	LDX #$001E
-
	LDA kishi_pal,x
	STA $7EC6E0,x
	DEX #2
	BPL -
	LDA #$AAAA
	STA $7E0A9C
	STA $7E0A9E
	
	LDA #$10E0
	STA $7E09F0
	LDA #$2E00
	STA $7E09F2
	LDA #$10F0
	STA $7E09F4
	LDA #$2E02
	STA $7E09F6
	
	LDA #$20E0
	STA $7E09F8
	LDA #$2E20
	STA $7E09FA
	LDA #$20F0
	STA $7E09FC
	LDA #$2E22
	STA $7E09FE
	INC {flag1}
	RTS
knight1:
	LDA #$2E00
	STA $7E09F2
	LDA #$2E02
	STA $7E09F6
	LDA #$2E20
	STA $7E09FA
	LDA #$2E22
	STA $7E09FE
	
	DEC $09F0
	DEC $09F4
	DEC $09F8
	DEC $09FC
	
	INC {flag3}
	LDA {flag3}
	AND #$00FF
	CMP #$0008
	BCC +
	STZ {flag3}
	INC {flag1}
+
	RTS
knight2:
	LDA #$2E04
	STA $7E09F2
	LDA #$2E06
	STA $7E09F6
	LDA #$2E24
	STA $7E09FA
	LDA #$2E26
	STA $7E09FE
	DEC $09F0
	DEC $09F4
	DEC $09F8
	DEC $09FC	

	INC {flag3}
	LDA {flag3}
	AND #$00FF
	CMP #$0008
	BCC +
	STZ {flag3}
	INC {flag1}
+
	RTS
knight3:
	LDA #$2E08
	STA $7E09F2
	LDA #$2E0A
	STA $7E09F6
	LDA #$2E28
	STA $7E09FA
	LDA #$2E2A
	STA $7E09FE
	DEC $09F0
	DEC $09F4
	DEC $09F8
	DEC $09FC
	INC {flag3}
	LDA {flag3}
	AND #$00FF
	CMP #$0008
	BCC +
	STZ {flag3}
	INC {flag1}
+
	RTS
knight4:
	LDA #$2E0C
	STA $7E09F2
	LDA #$2E0E
	STA $7E09F6	
	LDA #$2E2C
	STA $7E09FA
	LDA #$2E2E
	STA $7E09FE
	DEC $09F0
	DEC $09F4
	DEC $09F8
	DEC $09FC
	INC {flag3}
	LDA {flag3}
	AND #$00FF
	CMP #$000A
	BCC +
	STZ {flag3}
	LDA #$0001
	STA {flag1}
+
	RTS
	
hashire:
	LDA #$10
	STA $7E09F1
	STA $7E09F5
	LDA #$20
	STA $7E09F9
	STA $7E09FD
	LDA #$0A
	STA $06
	JML $8CC7E3
	
_intro:
	PHP
	REP #$30
	LDA $11
	AND #$00FF
	SEC
	SBC #$000A
	ASL
	TAX
	JSR (new_intro_ptr,x)
	PLP
	RTL
	
_cursor:
	LDA $11
	CMP #$04
	BCC _C133
	CMP #$08
	BEQ _C133
	CMP #$0A
	BCS _intro
	LDA $F8
	AND #$08
	BEQ +
	LDA #$96
	STA $0260
	BRA _writecursor
+
	LDA $F8
	AND #$04
	BEQ +
_c:
	LDA #$A4
	STA $0260	
+
_writecursor:
	JSR write_cursor_pos
	JSR enable_oam
	LDA $F6
	AND #$C0
	ORA $F4
	AND #$D0
	BEQ +
	BRA _checkstart
+
	JML $8CC133
_C133:
	LDA #$96
	STA $0260
	LDA #$F0
	STA $09E1
	STA $09E5
	STA $09E9
	STA $09ED
	STA $09F1
	STA $09F5
	STA $09F9
	STA $09FD
	LDA #$55
	STA $0A98
	STA $0A99
	STA $0A9A
	STA $0A9B
	STA $0A9C
	STA $0A9D
	STA $0A9E
	STA $0A9F
	JML $8CC133

_checkstart:
	LDA $0260
	CMP #$96
	BNE +
	JML $8CC2D6
+
	LDA #$0A
	STA $11
	LDA #$FF
	STA $0128	//disable irq
	LDA #$F1
	STA $012C
	RTL
	
	
write_cursor_pos:
	LDA #$54
	STA $09E0
	STA $09E4
	CLC
	ADC #$08
	STA $09E8
	STA $09EC
	
	LDA $0260
	STA $09E1
	STA $09E9
	CLC
	ADC #$08
	STA $09E5
	STA $09ED
	
	LDA #$10
	STA $09E2
	INC
	STA $09E6
	INC
	STA $09EA
	INC
	STA $09EE
	
	LDA #$2D
	STA $09E3
	STA $09E7
	STA $09EB
	STA $09EF
	STZ $0A98
	STZ $0A99
	STZ $0A9A
	STZ $0A9B
	RTS

enable_oam:
	REP #$20
	LDA #$AAAA
	STA $7E0A9C
	STA $7E0A9E
	SEP #$20
	RTS
	
define	timer1		$0260
define	timer2		$0261
define	horse_spd		$0262
define	horsepose		$0263
define	charapose		$0264
define	chara_x			$0265
define	chara_y			$0266
define	clock				$0267
define	flame				$0268
define	clock_timer	$0269
define	flame_timer	$026A
define 	hiiro		$026B
define	hiiro_timer	$026C
define	charasubpose		$026D
define	chara_timer		$026E
define	characopy			$026F
define	kaiwa_ptr			$20
define	kaiwa_index		$23
define	ptr_index			$25	//8bit

new_intro_ptr:
	dw intro0
	dw intro1
	dw intro2
	dw intro3
	dw intro4
	dw intro5
	dw intro6
	dw intro7
	dw intro8
	dw intro9
	dw introA
	dw introB
	dw introC
	dw introD
	dw introE
	dw introF
	dw intro10
	dw intro11
	dw intro12
	dw intro13
	dw intro14
	dw intro15
	dw intro16
	dw intro17
	dw intro18
	dw intro19
	dw intro1A
intro0:
	SEP #$20
	LDA #$FF
	STA $210E
	STA $210E
	INC {timer1}
	LDA {timer1}
	CMP #$03
	BCC +
	STZ {timer1}
	DEC $13		//brightness
	BNE +
	LDA #$0B
	STA $11
	LDA #$80
	STA $13
	STA $2100
+	
	RTS
	
intro1:
	LDA #$01FF
	LDX #$07FE
-
	STA $7F1000,x
	DEX #2
	BPL -
	LDA #$1801
	STA $4370
	STA $4300
	LDA #$1000
	STA $4372
	LDA #$0800
	STA $4375	
	LDA #$2000>>1
	STA $2116
	LDA #(ishibune_map)
	STA $4302
	LDA #$0700
	STA $4305
	SEP #$20
	LDA #$80
	STA $2115
	LDA.b #(ishibune_map>>16)
	STA $4304
	LDA #$01
	STA $420B
	REP #$20
	LDA #$4000>>1
	STA $2116
	LDA #(ishibune_chr)
	STA $4302
	LDA #$2700
	STA $4305
	SEP #$20
	LDA.b #(ishibune_chr>>16)
	STA $4304
	LDA #$01
	STA $420B
	REP #$20
	LDA #$C000>>1
	STA $2116
	SEP #$20
	LDA #$7F
	STA $4374
	LDA #$80
	STA $420B	
	REP #$20
	LDA #$2200
	STA $4300
	LDA #(ishibune_pal)
	STA $4302
	LDA #$0020
	STA $4305
	SEP #$20
	STZ $2121
	LDA #$01
	STA $420B
	LDA #$0C
	STA $11
	STZ $13
	STZ {timer1}
	LDA #$05
	STA $012C
	LDA #$11
	STA $1C
	STA $212C
	LDA #$FF
	STA $EA
	STA $EB	//bg3 vscroll
	LDA #$60
	STA $2109
	RTS
	
intro2:
	SEP #$20
	LDA #$FF
	STA $210E
	STA $210E
	LDA $13
	CMP #$0F
	BEQ _d
	INC {timer1}
	LDA {timer1}
	CMP #$04
	BCC +
	STZ {timer1}
	INC $13
	LDA $13
	CMP #$0F
	BNE  +
	STA $2100
	BRA +
_d:
	REP #$20
	INC {timer2}
	LDA {timer2}
	CMP #$0060
	BNE +
	STZ {timer2}
	SEP #$20
	LDA #$0D
	STA $11
	LDA #$1F
	STA $7EC500	//red
	LDA #$FF
	STA $7EC502
	STA $7EC503
	STZ {timer1}
+
-
	RTS

intro3:
	SEP #$20
	LDA #$FF
	STA $210E
	STA $210E
	INC {timer1}
	LDA {timer1}
	CMP #$03
	BCC -
	STZ {timer1}
	DEC $13
	LDA $13
	BNE +
	LDA #$80
	STA $13
	STA $2100
	LDA #$0E
	STA $11
	REP #$20
	LDA #$0000
	LDX #$06FE
-
	STA $7F7500,x
	DEX
	DEX
	BPL -
	JSR dma_ishibune2
	REP #$20
	LDA #$1801
	STA $4300
	LDA #$8000>>1
	STA $2116
	LDA #(uma_chr)
	STA $4302
	LDA #$2000
	STA $4305
	SEP #$20
	LDA #$80
	STA $2115
	LDA.b #(uma_chr>>16)
	STA $4304
	LDA #$01
	STA $420B
	JSR horse_pos1
	JSR init_horse
	LDA #$01
	STA $15
	LDA #$0E
	STA $11
	STZ $13
	STZ {timer1}
	STZ {timer2}
+
	RTS
	
intro4:
	SEP #$20
	LDA #$FF
	STA $210E
	STA $210E
	INC {timer1}
	LDA {timer1}
	CMP #$08
	BCC +
	STZ {timer1}
	INC $13
	LDA $13
	CMP #$0F
	BNE +
	STZ {timer2}
	LDA #$0F
	STA $11
	RTS
+
	INC {horse_spd}
	LDA {horse_spd}
	CMP #$07		//horse speed
	BCC +
	STZ {horse_spd}
	INC {horsepose}
	LDA #$01
	STA $15
	JSR horse_pos2
	LDA {horsepose}
	CMP #$04
	BCC +
	STZ {horsepose}
+
	JSR init_horse
	RTS
intro5:
	SEP #$20
	LDA #$FF
	STA $210E
	STA $210E
	INC {timer1}
	LDA {timer1}
	CMP #$40
	BCC +
	STZ {timer1}
	LDA #$10
	STA $11
	RTS
+
	INC {horse_spd}
	LDA {horse_spd}
	CMP #$07		//horse speed
	BCC +
	STZ {horse_spd}
	INC {horsepose}
	LDA #$01
	STA $15
	JSR horse_pos2
	LDA {horsepose}
	CMP #$04
	BCC +
	STZ {horsepose}
+
	JSR init_horse
	RTS
intro6:
	SEP #$20
	LDA #$FF
	STA $210E
	STA $210E
	INC {timer1}
	LDA {timer1}
	CMP #$08
	BCC +
	STZ {timer1}
	DEC $13
	BNE +
	LDA #$80
	STA $13
	STA $2100
	LDA #$11
	STA $11
	RTS
+	
	INC {horse_spd}
	LDA {horse_spd}
	CMP #$07		//horse speed
	BCC +
	STZ {horse_spd}
	INC {horsepose}
	LDA #$01
	STA $15
	JSR horse_pos2
	LDA {horsepose}
	CMP #$04
	BCC +
	STZ {horsepose}
+
	JSR init_horse
	RTS
	
intro7:
	LDA #$2000>>1
	STA $2116
	LDA #$1801
	STA $4300
	LDA #(ishibune_map3)
	STA $4302
	LDA #$0700
	STA $4305
	SEP #$20
	LDA.b #(ishibune_map3>>16)
	STA $4304
	LDA #$01
	STA $420B
	
	REP #$20
	LDA #$4000>>1
	STA $2116
	LDA #(ishibune_chr3)
	STA $4302
	LDA #$1220
	STA $4305
	SEP #$20
	LDA.b #(ishibune_chr3>>16)
	STA $4304
	LDA #$01
	STA $420B
	
	REP #$20
	LDA #$8000>>1
	STA $2116
	LDA #(uma_chr)
	CLC
	ADC #$2000
	STA $4302
	LDA #$4000
	STA $4305
	SEP #$20
	LDA.b #(uma_chr>>16)
	STA $4304
	LDA #$01
	STA $420B
	STZ {timer1}
	STZ {timer2}
	JSR init_horse
	LDA #$12
	STA $11
	STZ {horse_spd}
	STZ $13
	STZ $2100
	LDA #$04
	STA {horsepose}
	LDA #$70
	STA $7E09C0
	STA $7E09D0
	STA $7E09E0
	STA $7E09F0
	LDA #$80
	STA $7E09C4
	STA $7E09D4
	STA $7E09E4
	STA $7E09F4
	LDA #$90
	STA $7E09C8
	STA $7E09D8
	STA $7E09E8
	STA $7E09F8
	LDA #$A0
	STA $7E09CC
	STA $7E09DC
	STA $7E09EC
	STA $7E09FC
	RTS
	
intro8:
	SEP #$20
	INC {timer1}
	LDA {timer1}
	CMP #$0A
	BCC +
	STZ {timer1}
	INC $13
	LDA $13
	CMP #$0F
	BNE +
	STA $2100
	LDA #$13
	STA $11
	LDA #$07
	STA {horsepose}
	JSR init_horse
	LDA #$01
	STA $15
	STZ {timer1}
	RTS
+
	INC {horse_spd}
	LDA {horse_spd}
	CMP #$15
	BCC +
	STZ {horse_spd}
	INC {horsepose}
	LDA {horsepose}
	CMP #$08
	BCC +
	LDA #$04
	STA {horsepose}
+
	JSR init_horse
	INC {timer2}
	LDA {timer2}
	CMP #$07
	BCC +
	STZ {timer2}
	JSR horse_pos2
+
	LDA #$01
	STA $15		//update CG
	RTS
	
intro9:
	SEP #$20
	INC {timer1}
	LDA {timer1}
	CMP #$1F
	BCC +
	STZ {timer1}
	LDA #$08
	STA {horsepose}
	LDA #$01
	STA $15
	JSR init_horse
	LDA #$14
	STA $11
	RTS
+
	JSR init_horse
	RTS
	
introA:
	SEP #$20
	INC {timer1}
	LDA {timer1}
	CMP #$50
	BCC +
	STZ {timer1}
	LDA #$09
	STA {horsepose}
	LDA #$01
	STA $15
	LDA #$15
	STA $11
	JSR init_horse
	RTS
+
	JSR init_horse
	RTS
	
introB:
	SEP #$20
	LDA #$A4
	STA {chara_x}
	LDA #$48
	STA {chara_y}

	JSR init_chara
	JSR init_horse
	STZ {timer1}
	STZ {timer2}
	LDA #$16
	STA $11
	RTS
	
introC:
	SEP #$20
	INC {timer1}
	LDA {timer1}
	CMP #$04
	BCC +
	STZ {timer1}
	INC {chara_x}
	DEC {chara_y}
	INC {timer2}
	LDA {timer2}
	CMP #$04
	BCC +
	STZ {timer2}
	STZ {timer1}
	LDA #$01
	STA {charapose}
	LDA #$17
	STA $11
	JSR init_chara
	JSR chara_pos
	JSR init_horse
	RTS
+
	JSR init_chara
	JSR chara_pos
	JSR init_horse
	RTS
	
introD:
	SEP #$20
	INC {timer1}
	LDA {timer1}
	CMP #$04
	BCC +
	STZ {timer1}
	INC {timer2}
	LDA {timer2}
	CMP #$05
	BCC +
	STZ {timer1}
	STZ {timer2}
	LDA #$02
	STA {charapose}
	JSR init_chara
	JSR chara_pos
	JSR init_horse
	LDA #$18
	STA $11
	RTS	
+
	INC {chara_x}
	INC {chara_y}
	INC {chara_y}
	JSR init_chara
	JSR chara_pos
	JSR init_horse
	RTS
	
introE:
	SEP #$20
	INC {timer1}
	LDA {timer1}
	CMP #$20
	BCC +
	STZ {timer1}
	LDA #$19
	STA $11
	RTS
+
	JSR init_chara
	JSR chara_pos
	JSR init_horse
	RTS
	
introF:
	SEP #$20
	INC {timer2}
	LDA {timer2}
	CMP #$18
	BCC +
	STZ {timer2}
	DEC $13
	LDA $13
	BNE +
	LDA #$80
	STA $2110
	STA $13
	LDA #$1A
	STA $11
	RTS
+
	INC {timer1}
	LDA {timer1}
	CMP #$06
	BCC +
	STZ {timer1}
	INC {chara_x}
	INC {chara_y}
	INC {charapose}
	LDA {charapose}
	CMP #$05
	BCC +
	LDA #$02
	STA {charapose}	
+
	JSR init_chara
	JSR chara_pos
	JSR init_horse
	RTS
	
intro10:
	LDA #$8000>>1
	STA $2116
	LDA #$1000
	STA $4305
	LDA #(chara_chr)
	STA $4302
	LDA #$1801
	STA $4300
	SEP #$20
	LDA #$80
	STA $2115
	LDA.b #(chara_chr>>16)
	STA $4304
	LDA #$01
	STA $420B
	REP #$20
	LDA #$0000
	STA $2116
	LDA #$60A0
	STA $4305
	LDA #(yukiguni_chr)
	STA $4302
	SEP #$20
	LDA.b #(yukiguni_chr>>16)
	STA $4304
	LDA #$01
	STA $420B
	STA $15
		
	REP #$20
	LDX #$00FE
-
	LDA yukiguni_pal,x
	STA $7EC500,x
	DEX #2
	BPL -
	LDA #$A000>>1
	STA $2116
	LDA #(yukiguni_map1)
	STA $4302
	LDA #$1000
	STA $4305
	SEP #$20
	LDA.b #(yukiguni_map1>>16)
	STA $4304
	LDA #$01
	STA $420B
	REP #$20
	LDA #$B000>>1
	STA $2116
	LDA #(yukiguni_map2)
	STA $4302
	LDA #$1000
	STA $4305
	SEP #$20
	LDA.b #(yukiguni_map2>>16)
	STA $4304
	LDA #$01
	STA $420B
	
	LDA #$51
	STA $2107
	LDA #$59
	STA $2108
	STZ $210B	//Bg1,2 tileset 0000
	LDA #$17
	STA $212C
	STA $1C		//main screen
	LDA #$01
	STA $212D
	STA $1D
	LDA #$02
	STA $2130
	STA $99
	LDA #$02
	STA $2131
	STA $9A
	STZ $13
	LDA #$1B
	STA $11
	STZ {timer1}
	STZ {timer2}
	LDA #$00
	LDX #$0000
-
	STA $7E09B0,x
	INX
	CPX #$0060
	BCC -
	LDX #$0000
-
	STA $7E0A8C,x
	INX
	CPX #$0014
	BCC -
	LDA #$60
	STA {chara_x}
	LDA #$C0
	STA {chara_y}
	STZ {charapose}
	LDA #$01
	STA {characopy}
	RTS

intro11:
	SEP #$20
	INC {timer1}
	LDA {timer1}
	CMP #$07
	BCC +
	STZ {timer1}
	INC $13
	LDA $13
	CMP #$0F
	BNE +
	STA $2100
	LDA #$1C
	STA $11
	STZ {timer1}
	STZ {timer2}
	JSR check_clock
	JSR check_flame
	JSR check_flame_color
	JSR check_chara
	RTS
+
	JSR check_clock
	JSR check_flame
	JSR check_flame_color
	JSR check_chara
	RTS
	
intro12:
	SEP #$20
	JSR check_clock
	JSR check_flame
	JSR check_flame_color
	LDA {charapose}
	CMP #$01
	BNE +
	INC {timer1}
	LDA {timer1}
	CMP #$20
	BCC +
	LDA #$1D
	STA $11
	STZ {charasubpose}
	STZ {timer1}
	STZ {timer2}
+
	JSR check_chara
	RTS
	
intro13:
	SEP #$20
	INC {timer1}
	LDA {timer1}
	CMP #$30
	BCC +
	STZ {timer1}
	LDA #$1E
	STA $11
	LDA #$02
	STA {charapose}
+	
	JSR check_clock
	JSR check_flame
	JSR check_flame_color
	JSR write_charapos
	RTS
	
intro14:
	SEP #$20
	INC {timer1}
	LDA {timer1}
	CMP #$21
	BCC +
	STZ {timer1}
	STZ {timer2}
	LDA #$1F
	STA $11
	STZ {charapose}
	STZ {charasubpose}
+
	JSR check_clock
	JSR check_flame
	JSR check_flame_color
	JSR check_chara
	RTS
	
intro15:
	SEP #$20
	INC {timer1}
	LDA {timer1}
	CMP #$08
	BCC +
	LDA #$20
	STA $11
	LDA #$03
	STA {charapose}
	LDA #$B9	//nmi dma blank
	STA {dma_bank}
	REP #$20
	LDA #$8000
	STA {dma_adr}
	LDA #$2000
	STA {dma_size}
	LDA #$E000>>1
	STA {vram_adr}
	SEP #$20
+	
	JSR check_clock
	JSR check_flame
	JSR check_flame_color
	JSR write_charapos
	RTS	
	
intro16:
	SEP #$20
	INC {timer1}
	LDA {timer1}
	CMP #$1A
	BCC +
	STZ {timer1}
	STZ {timer2}
	LDA #$88
	STA {kuchi}
	LDA #$21
	STA $11
	LDA #$01
	STA {charapose}
	LDA.b #(intro_kaiwa_frame>>16)
	STA {dma_bank}
	REP #$20
	LDA #(intro_kaiwa_frame)
	STA {dma_adr}
	LDA #$0040
	STA {dma_size}
	LDA #$E000>>1
	STA {vram_adr}
	SEP #$20
+
	JSR check_clock
	JSR check_flame
	JSR check_flame_color
	JSR check_chara
	RTS	
	
intro17:
	SEP #$20
	INC {timer1}
	LDA {timer1}
	CMP #$30
	BCC +
	STZ {timer1}
	LDA #$22
	STA $11
+
	JSR check_flame_color
	JSR write_charapos
	INC $15
	RTS	
	
intro18:
	SEP #$20
	JSR event
	JSR check_flame_color
	JSR write_charapos
	JSR check_clock
	JSR check_flame
	INC $15
	RTS
	
intro19:
	SEP #$20
	INC {timer2}
	LDA {timer2}
	CMP #$0A
	BCC +
	STZ {timer1}
	STZ {timer2}
	LDA #$F1
	STA $012C
	INC $11
+
	RTS	
intro1A:
	SEP #$20
	INC {timer1}
	LDA {timer1}
	CMP #$50
	BCC +
	STZ {timer1}
	REP #$20
	LDA #$01FF
	TCS
	SEP #$30
	STZ $10
	STZ $11
	STZ $4200
	JML $80802C
+
	RTS

	
check_flame:
	INC {flame_timer}
	LDA {flame_timer}
	CMP #$07
	BCC e_checkflame
	STZ {flame_timer}
	INC {flame}
	LDA #$00
	XBA
	LDA {flame}
	CMP #$04
	BCC +
	STZ {flame}
	LDA #$00
+
	TAX
	LDA flame_movement,x
	ASL
	TAX
	JSR (dma_flame,x)
	LDA #$20
	STA $17
	LDA #$00
	STA {nmi_dma_index}
e_checkflame:
	RTS
		
check_flame_color:
	INC {hiiro_timer}
	LDA {hiiro_timer}
	CMP #$06
	BCC e_checkcolor
	STZ {hiiro_timer}
	INC {hiiro}
	LDA #$00
	XBA
	LDA {hiiro}
	CMP #$04
	BCC +
	STZ {hiiro}
	LDA #$00
+
	TAX
	LDA hiiro,x
	ASL
	TAX
	JSR (write_hiiro,x)
	LDA #$01
	STA $15
e_checkcolor:
	RTS
	
hiiro:
	db $00, $01, $02, $03

write_hiiro:
	dw hiiro0
	dw hiiro1
	dw hiiro2
	dw hiiro3
hiiro0:
	REP #$20
	LDX #$001E
-
	LDA hiiro_pal,x
	STA $7EC580,x
	DEX #2
	BPL -
	SEP #$20
	RTS
	
hiiro1:
	REP #$20
	LDX #$001E
-
	LDA hiiro_pal+32,x
	STA $7EC580,x
	DEX #2
	BPL -
	SEP #$20
	RTS

hiiro2:
	REP #$20
	LDX #$001E
-
	LDA hiiro_pal+64,x
	STA $7EC580,x
	DEX #2
	BPL -
	SEP #$20
	RTS
	
hiiro3:
	REP #$20
	LDX #$001E
-
	LDA hiiro_pal+96,x
	STA $7EC580,x
	DEX #2
	BPL -
	SEP #$20
	RTS
	
check_clock:
	INC {clock_timer}
	LDA {clock_timer}
	CMP #$09
	BCC e_checklock
	STZ {clock_timer}
	INC {clock}
	LDA #$00
	XBA
	LDA {clock}
	CMP #$06
	BCC +
	STZ {clock}
	LDA #$00
+
	TAX
	LDA clock_movement,x
	ASL
	TAX
	JSR (dma_clock,x)
	LDA #$20
	STA $17		//nmi dma
	LDA #$00
	STA {nmi_dma_index}
e_checklock:
	RTS
	
clock_movement:
	db $00, $01, $02, $03, $02, $01
flame_movement:
	db $00, $01, $02, $03

dma_clock:
	dw clock0
	dw clock1
	dw clock2
	dw clock3
dma_flame:
	dw flame0
	dw flame1
	dw flame2
	dw flame3
	
init_chara:
	PHP
	REP #$30
	LDA {charapose}
	AND #$00FF
	ASL
	TAX
	JSR (chara_pose,x)
	PLP
	LDA #$0A
	STA $7E0A8C
	STA $7E0A8D
	STA $7E0A8E
	STA $7E0A8F
	LDA #$2D
	STA $7E09B3
	STA $7E09B7
	STA $7E09BB
	STA $7E09BF
	LDA #$01
	STA $15
	RTS
	
chara_pose:
	dw chara_pose0
	dw chara_pose1
	dw chara_pose2
	dw chara_pose3
	dw chara_pose4
	
chara_pos:
	LDA {chara_x}
	STA $7E09B0
	STA $7E09B8
	CLC
	ADC #$10
	STA $7E09B4
	STA $7E09BC
	LDA {chara_y}
	STA $7E09B1
	STA $7E09B5
	CLC
	ADC #$10
	STA $7E09B9
	STA $7E09BD
	RTS

chara_pose0:
	SEP #$20
	LDA #$80
	STA $7E09B2
	LDA #$82
	STA $7E09B6
	LDA #$A0
	STA $7E09BA
	LDA #$A2
	STA $7E09BE
	LDX #$001E
	REP #$20
-
	LDA jump_pal1,x
	STA $7EC6C0,x
	DEX #2
	BPL -
	RTS
	
chara_pose1:
	SEP #$20
	LDA #$84
	STA $7E09B2
	LDA #$86
	STA $7E09B6
	LDA #$A4
	STA $7E09BA
	LDA #$A6
	STA $7E09BE
	REP #$20
	LDX #$001E
-
	LDA jump_pal2,x
	STA $7EC6C0,x
	DEX #2
	BPL -
	RTS
	
chara_pose2:
	SEP #$20
	LDA #$C0
	STA $7E09B2
	LDA #$C2
	STA $7E09B6
	LDA #$E0
	STA $7E09BA
	LDA #$E2
	STA $7E09BE
	LDX #$001E
	REP #$20
-
	LDA walk_pal0,x
	STA $7EC6C0,x
	DEX #2
	BPL -
	RTS
	
chara_pose3:
	SEP #$20
	LDA #$C4
	STA $7E09B2
	LDA #$C6
	STA $7E09B6
	LDA #$E4
	STA $7E09BA
	LDA #$E6
	STA $7E09BE
	LDX #$001E
	REP #$20
-
	LDA walk_pal1,x
	STA $7EC6C0,x
	DEX #2
	BPL -
	RTS
	
chara_pose4:
	SEP #$20
	LDA #$C8
	STA $7E09B2
	LDA #$CA
	STA $7E09B6
	LDA #$E8
	STA $7E09BA
	LDA #$EA
	STA $7E09BE
	LDX #$001E
	REP #$20
-
	LDA walk_pal2,x
	STA $7EC6C0,x
	DEX #2
	BPL -
	RTS
		
init_horse:
	LDA #$50
	STA $7E09C1
	STA $7E09C5
	STA $7E09C9
	STA $7E09CD	
	LDA #$60
	STA $7E09D1
	STA $7E09D5
	STA $7E09D9
	STA $7E09DD
	LDA #$70
	STA $7E09E1
	STA $7E09E5
	STA $7E09E9
	STA $7E09ED
	LDA #$80
	STA $7E09F1
	STA $7E09F5
	STA $7E09F9
	STA $7E09FD
	
	LDA #$0E
	STA $7E09C3
	STA $7E09C7
	STA $7E09CB
	STA $7E09CF
	STA $7E09D3
	STA $7E09D7
	STA $7E09DB
	STA $7E09DF
	STA $7E09E3
	STA $7E09E7
	STA $7E09EB
	STA $7E09EF
	STA $7E09F3
	STA $7E09F7
	STA $7E09FB
	STA $7E09FF
		
	LDA #$0A
	STA $7E0A90
	STA $7E0A91
	STA $7E0A92
	STA $7E0A93
	STA $7E0A94
	STA $7E0A95
	STA $7E0A96
	STA $7E0A97
	STA $7E0A98
	STA $7E0A99
	STA $7E0A9A
	STA $7E0A9B
	STA $7E0A9C
	STA $7E0A9D
	STA $7E0A9E
	STA $7E0A9F
	REP #$20
	LDA {horsepose}
	AND #$00FF
	ASL
	TAX
	JSR (horse_pose,x)
	RTS
	
horse_pose:
	dw horsepose0
	dw horsepose1
	dw horsepose2
	dw horsepose3
	dw horsepose4
	dw horsepose5
	dw horsepose6
	dw horsepose7
	dw horsepose8
	dw horsepose9
	
	
horsepose0:
	SEP #$20
	LDA #$10
	STA $7E09C2
	LDA #$12
	STA $7E09C6
	LDA #$14
	STA $7E09CA
	LDA #$16
	STA $7E09CE
	
	LDA #$30
	STA $7E09D2
	LDA #$32
	STA $7E09D6
	LDA #$34
	STA $7E09DA
	LDA #$36
	STA $7E09DE
	
	LDA #$50
	STA $7E09E2
	LDA #$52
	STA $7E09E6
	LDA #$54
	STA $7E09EA
	LDA #$56
	STA $7E09EE
	
	LDA #$70
	STA $7E09F2
	LDA #$72
	STA $7E09F6
	LDA #$74
	STA $7E09FA
	LDA #$76
	STA $7E09FE
	
	LDX #$001F
-
	LDA uma_pal0,x
	STA $7EC6E0,x
	DEX
	BPL -
	RTS
	
horsepose1:
	SEP #$20
	LDA #$18
	STA $7E09C2
	LDA #$1A
	STA $7E09C6
	LDA #$1C
	STA $7E09CA
	LDA #$1E
	STA $7E09CE
	
	LDA #$38
	STA $7E09D2
	LDA #$3A
	STA $7E09D6
	LDA #$3C
	STA $7E09DA
	LDA #$3E
	STA $7E09DE
	
	LDA #$58
	STA $7E09E2
	LDA #$5A
	STA $7E09E6
	LDA #$5C
	STA $7E09EA
	LDA #$5E
	STA $7E09EE
	
	LDA #$78
	STA $7E09F2
	LDA #$7A
	STA $7E09F6
	LDA #$7C
	STA $7E09FA
	LDA #$7E
	STA $7E09FE
	
	LDX #$001F
-
	LDA uma_pal1,x
	STA $7EC6E0,x
	DEX
	BPL -
	RTS
	
horsepose2:
	SEP #$20
	LDA #$90
	STA $7E09C2
	LDA #$92
	STA $7E09C6
	LDA #$94
	STA $7E09CA
	LDA #$96
	STA $7E09CE
	
	LDA #$B0
	STA $7E09D2
	LDA #$B2
	STA $7E09D6
	LDA #$B4
	STA $7E09DA
	LDA #$B6
	STA $7E09DE
	
	LDA #$D0
	STA $7E09E2
	LDA #$D2
	STA $7E09E6
	LDA #$D4
	STA $7E09EA
	LDA #$D6
	STA $7E09EE
	
	LDA #$F0
	STA $7E09F2
	LDA #$F2
	STA $7E09F6
	LDA #$F4
	STA $7E09FA
	LDA #$F6
	STA $7E09FE
	
	LDX #$001F
-
	LDA uma_pal2,x
	STA $7EC6E0,x
	DEX
	BPL -
	RTS

horsepose3:
	SEP #$20
	LDA #$98
	STA $7E09C2
	LDA #$9A
	STA $7E09C6
	LDA #$9C
	STA $7E09CA
	LDA #$9E
	STA $7E09CE
	
	LDA #$B8
	STA $7E09D2
	LDA #$BA
	STA $7E09D6
	LDA #$BC
	STA $7E09DA
	LDA #$BE
	STA $7E09DE
	
	LDA #$D8
	STA $7E09E2
	LDA #$DA
	STA $7E09E6
	LDA #$DC
	STA $7E09EA
	LDA #$DE
	STA $7E09EE
	
	LDA #$F8
	STA $7E09F2
	LDA #$FA
	STA $7E09F6
	LDA #$FC
	STA $7E09FA
	LDA #$FE
	STA $7E09FE
	
	LDX #$001F
-
	LDA uma_pal3,x
	STA $7EC6E0,x
	DEX
	BPL -
	RTS
	
horse_pos1:
	LDA #$10
	STA $7E09C0
	STA $7E09D0
	STA $7E09E0
	STA $7E09F0
	LDA #$20
	STA $7E09C4
	STA $7E09D4
	STA $7E09E4
	STA $7E09F4
	LDA #$30
	STA $7E09C8
	STA $7E09D8
	STA $7E09E8
	STA $7E09F8
	LDA #$40
	STA $7E09CC
	STA $7E09DC
	STA $7E09EC
	STA $7E09FC
	RTS
	
horse_pos2:
	PHB
	PHP
	SEP #$20
	LDA #$7E
	PHA
	PLB
	INC $09C0
	INC $09D0
	INC $09E0
	INC $09F0
	INC $09C4
	INC $09D4
	INC $09E4
	INC $09F4
	INC $09C8
	INC $09D8
	INC $09E8
	INC $09F8
	INC $09CC
	INC $09DC
	INC $09EC
	INC $09FC

	INC $09C0
	INC $09D0
	INC $09E0
	INC $09F0
	INC $09C4
	INC $09D4
	INC $09E4
	INC $09F4
	INC $09C8
	INC $09D8
	INC $09E8
	INC $09F8
	INC $09CC
	INC $09DC
	INC $09EC
	INC $09FC
	PLB
	PLB
	RTS
	
horsepose4:
	SEP #$20
	LDA #$10
	STA $7E09C2
	LDA #$12
	STA $7E09C6
	LDA #$14
	STA $7E09CA
	LDA #$16
	STA $7E09CE
	
	LDA #$30
	STA $7E09D2
	LDA #$32
	STA $7E09D6
	LDA #$34
	STA $7E09DA
	LDA #$36
	STA $7E09DE
	
	LDA #$50
	STA $7E09E2
	LDA #$52
	STA $7E09E6
	LDA #$54
	STA $7E09EA
	LDA #$56
	STA $7E09EE
	
	LDA #$70
	STA $7E09F2
	LDA #$72
	STA $7E09F6
	LDA #$74
	STA $7E09FA
	LDA #$76
	STA $7E09FE
	
	LDX #$001F
-
	LDA uma_pal4,x
	STA $7EC6E0,x
	DEX
	BPL -
	RTS
	
horsepose5:
	SEP #$20
	LDA #$18
	STA $7E09C2
	LDA #$1A
	STA $7E09C6
	LDA #$1C
	STA $7E09CA
	LDA #$1E
	STA $7E09CE
	
	LDA #$38
	STA $7E09D2
	LDA #$3A
	STA $7E09D6
	LDA #$3C
	STA $7E09DA
	LDA #$3E
	STA $7E09DE
	
	LDA #$58
	STA $7E09E2
	LDA #$5A
	STA $7E09E6
	LDA #$5C
	STA $7E09EA
	LDA #$5E
	STA $7E09EE
	
	LDA #$78
	STA $7E09F2
	LDA #$7A
	STA $7E09F6
	LDA #$7C
	STA $7E09FA
	LDA #$7E
	STA $7E09FE
	
	LDX #$001F
-
	LDA uma_pal5,x
	STA $7EC6E0,x
	DEX
	BPL -
	RTS
	
horsepose6:
	SEP #$20
	LDA #$90
	STA $7E09C2
	LDA #$92
	STA $7E09C6
	LDA #$94
	STA $7E09CA
	LDA #$96
	STA $7E09CE
	
	LDA #$B0
	STA $7E09D2
	LDA #$B2
	STA $7E09D6
	LDA #$B4
	STA $7E09DA
	LDA #$B6
	STA $7E09DE
	
	LDA #$D0
	STA $7E09E2
	LDA #$D2
	STA $7E09E6
	LDA #$D4
	STA $7E09EA
	LDA #$D6
	STA $7E09EE
	
	LDA #$F0
	STA $7E09F2
	LDA #$F2
	STA $7E09F6
	LDA #$F4
	STA $7E09FA
	LDA #$F6
	STA $7E09FE
	
	LDX #$001F
-
	LDA uma_pal6,x
	STA $7EC6E0,x
	DEX
	BPL -
	RTS

horsepose7:
	SEP #$20
	LDA #$98
	STA $7E09C2
	LDA #$9A
	STA $7E09C6
	LDA #$9C
	STA $7E09CA
	LDA #$9E
	STA $7E09CE
	
	LDA #$B8
	STA $7E09D2
	LDA #$BA
	STA $7E09D6
	LDA #$BC
	STA $7E09DA
	LDA #$BE
	STA $7E09DE
	
	LDA #$D8
	STA $7E09E2
	LDA #$DA
	STA $7E09E6
	LDA #$DC
	STA $7E09EA
	LDA #$DE
	STA $7E09EE
	
	LDA #$F8
	STA $7E09F2
	LDA #$FA
	STA $7E09F6
	LDA #$FC
	STA $7E09FA
	LDA #$FE
	STA $7E09FE
	
	LDX #$001F
-
	LDA uma_pal7,x
	STA $7EC6E0,x
	DEX
	BPL -
	RTS
	
horsepose8:
	SEP #$20
	LDA #$10
	STA $7E09C2
	LDA #$12
	STA $7E09C6
	LDA #$14
	STA $7E09CA
	LDA #$16
	STA $7E09CE
	
	LDA #$30
	STA $7E09D2
	LDA #$32
	STA $7E09D6
	LDA #$34
	STA $7E09DA
	LDA #$36
	STA $7E09DE
	
	LDA #$50
	STA $7E09E2
	LDA #$52
	STA $7E09E6
	LDA #$54
	STA $7E09EA
	LDA #$56
	STA $7E09EE
	
	LDA #$70
	STA $7E09F2
	LDA #$72
	STA $7E09F6
	LDA #$74
	STA $7E09FA
	LDA #$76
	STA $7E09FE
	
	LDA #$0F
	STA $7E09C3
	STA $7E09C7
	STA $7E09CB
	STA $7E09CF
	STA $7E09D3
	STA $7E09D7
	STA $7E09DB
	STA $7E09DF
	STA $7E09E3
	STA $7E09E7
	STA $7E09EB
	STA $7E09EF
	STA $7E09F3
	STA $7E09F7
	STA $7E09FB
	STA $7E09FF
	
	LDX #$001F
-
	LDA uma_pal8,x
	STA $7EC6E0,x
	DEX
	BPL -
	RTS
	
horsepose9:
	SEP #$20
	LDA #$18
	STA $7E09C2
	LDA #$1A
	STA $7E09C6
	LDA #$1C
	STA $7E09CA
	LDA #$1E
	STA $7E09CE
	
	LDA #$38
	STA $7E09D2
	LDA #$3A
	STA $7E09D6
	LDA #$3C
	STA $7E09DA
	LDA #$3E
	STA $7E09DE
	
	LDA #$58
	STA $7E09E2
	LDA #$5A
	STA $7E09E6
	LDA #$5C
	STA $7E09EA
	LDA #$5E
	STA $7E09EE
	
	LDA #$78
	STA $7E09F2
	LDA #$7A
	STA $7E09F6
	LDA #$7C
	STA $7E09FA
	LDA #$7E
	STA $7E09FE
	
	LDA #$0F
	STA $7E09C3
	STA $7E09C7
	STA $7E09CB
	STA $7E09CF
	STA $7E09D3
	STA $7E09D7
	STA $7E09DB
	STA $7E09DF
	STA $7E09E3
	STA $7E09E7
	STA $7E09EB
	STA $7E09EF
	STA $7E09F3
	STA $7E09F7
	STA $7E09FB
	STA $7E09FF
	
	LDX #$001F
-
	LDA uma_pal9,x
	STA $7EC6E0,x
	DEX
	BPL -
	RTS
	RTS
	
dma_ishibune2:
	LDA #$2000>>1
	STA $2116
	LDA #$1801
	STA $4310
	LDA #(ishibune_map2)
	STA $4312
	LDA #$0700
	STA $4315
	SEP #$20
	LDA.b #(ishibune_chr2>>16)
	STA $4314
	LDA #$02
	STA $420B
	
	REP #$20
	LDA #$4000>>1
	STA $2116
	LDA #(ishibune_chr2)
	STA $4312
	LDA #$0E60
	STA $4315
	SEP #$20
	LDA #$02
	STA $420B
	RTS
	
nmi_dma:
	LDA $17
	CMP #$20
	BCS +
	ASL
	TAX
	JML $808C79
+
	CMP #$22
	BNE +
	JMP cont_dma
+
	CMP #$21
	BEQ +
	REP #$20
	LDX {nmi_dma_index}
-
	LDA #$1801
	STA $004370
	LDA {vram_adr},x
	STA $002116
	LDA {dma_adr},x
	STA $004372
	LDA {dma_size},x
	STA $004375
	SEP #$20
	LDA #$80
	STA $002115
	LDA {dma_bank},x
	STA $004374
	LDA #$80
	STA $420B
	
	LDA.w {nmi_dma_index}+1
	BEQ e_nmi
	LDX #$07
	LDA #$00
	STA.w {nmi_dma_index}+1
	REP #$20
	BRA -
e_nmi:
	JML $808CE3
+
	STZ $17
	REP #$20
	LDX #$07
	BRA -
	
cont_dma:
	LDA #$80
	STA $2115
	REP #$20
	LDA #$1801
	STA $4300
-
	REP #$20
	LDA {cont_dma_times}
	AND #$00FF
	DEC
	PHA
	ASL #3
	SEC
	SBC $01,s
	TAX
	PLA
	LDA {cont_dma_adr},x
	STA $4302
	LDA {cont_dma_size},x
	STA $4305
	LDA {cont_dma_vram},x
	STA $2116
	SEP #$20
	LDA {cont_dma_bank},x
	STA $4304
	LDA #$01
	STA $420B
	DEC {cont_dma_times}
	BNE -
	STZ $17
	STZ {cont_dma_times}
	JML $808CE3
	
flame0:
	REP #$20
	LDA #(honoo_chr)
	STA {dma_adr}
	LDA #$00C0
	STA {dma_size}
	LDA #$58A0>>1
	STA {vram_adr}
	SEP #$20
	LDA.b #(honoo_chr>>16)
	STA {dma_bank}
	RTS
	
flame1:
	REP #$20
	LDA #(honoo_chr)
	CLC
	ADC #$00C0
	STA {dma_adr}
	LDA #$00C0
	STA {dma_size}
	LDA #$58A0>>1
	STA {vram_adr}
	SEP #$20
	LDA.b #(honoo_chr>>16)
	STA {dma_bank}
	RTS
flame2:
	REP #$20
	LDA #(honoo_chr)
	CLC
	ADC #$0200
	STA {dma_adr}
	LDA #$00C0
	STA {dma_size}
	LDA #$58A0>>1
	STA {vram_adr}
	SEP #$20
	LDA.b #(honoo_chr>>16)
	STA {dma_bank}
	RTS
flame3:
	REP #$20
	LDA #(honoo_chr)
	CLC
	ADC #$02C0
	STA {dma_adr}
	LDA #$00C0
	STA {dma_size}
	LDA #$58A0>>1
	STA {vram_adr}
	SEP #$20
	LDA.b #(honoo_chr>>16)
	STA {dma_bank}
	RTS
	
	
clock0:
	REP #$20
	LDA #(chara_chr)
	CLC
	ADC #$0980
	STA {dma_adr}
	LDA #$0040
	STA {dma_size}
	LDA #$5AA0>>1
	STA {vram_adr}
	SEP #$20
	LDA.b #(chara_chr>>16)
	STA {dma_bank}
	RTS
clock1:
	REP #$20
	LDA #(chara_chr)
	CLC
	ADC #$09C0
	STA {dma_adr}
	LDA #$0040
	STA {dma_size}
	LDA #$5AA0>>1
	STA {vram_adr}
	SEP #$20
	LDA.b #(chara_chr>>16)
	STA {dma_bank}
	RTS
clock2:
	REP #$20
	LDA #(chara_chr)
	CLC
	ADC #$0B80
	STA {dma_adr}
	LDA #$0040
	STA {dma_size}
	LDA #$5AA0>>1
	STA {vram_adr}
	SEP #$20
	LDA.b #(chara_chr>>16)
	STA {dma_bank}
	RTS
clock3:
	REP #$20
	LDA #(chara_chr)
	CLC
	ADC #$0BC0
	STA {dma_adr}
	LDA #$0040
	STA {dma_size}
	LDA #$5AA0>>1
	STA {vram_adr}
	SEP #$20
	LDA.b #(chara_chr>>16)
	STA {dma_bank}
	RTS

check_chara:
	LDA #$2C
	STA $7E09EB
	STA $7E09EF
	STA $7E09F3
	STA $7E09F7
	STA $7E09FB
	STA $7E09FF
	LDA #$0A
	STA $7E0A9A
	STA $7E0A9B
	LDA #$00
	STA $7E0A9C
	STA $7E0A9D
	STA $7E0A9E
	STA $7E0A9F
	XBA
	LDA {chara_y}
	CMP #$56
	BCS +
	LDA #$02
	STA {charapose}
+	
	LDA {timer2}
	CMP #$D8
	BCC +
	LDA #$01
	STA {charapose}
	STZ {timer2}
+
	LDA {charapose}
	ASL
	TAX
	JSR (charamove,x)
	RTS
	
charamove:
	dw charamoveup
	dw charamovedown
	dw charamoveright
	dw charamoveleft
	
charamoveup:
	LDX #$0000
-
	LDA ue_pal,x
	STA $7EC6C0,x
	INX
	CPX #$0020
	BNE -
	JSR write_charapos
	LDA {charasubpose}
	TAX
	LDA #$00
	XBA
	LDA string0,x
	PHA
	INC {chara_timer}
	LDA {chara_timer}
	CMP #$09
	BCC +
	STZ {chara_timer}
	INC {charasubpose}
	LDA {charasubpose}
	CMP #$04
	BCC +
	STZ {charasubpose}
	DEC {chara_y}
+
	PLA
	ASL
	TAX
	JMP (moveup,x)
	
string0:
	db $00, $01, $00, $03
moveup:
	dw up0
	dw up1
	dw up0
	dw up2
movedown:
	dw down0
	dw down1
	dw down0
	dw down2
moveleft:
	dw left0
	dw left1
	dw left0
	dw left2
moveright:
	dw right0
	dw right1
	dw right0
	dw right2

charamoveright:
	LDX #$0000
-
	LDA hidari_pal,x
	STA $7EC6C0,x
	INX
	CPX #$0020
	BNE -
	JSR write_charapos
	LDA {charasubpose}
	TAX
	LDA #$00
	XBA
	LDA string0,x
	PHA
	INC {chara_timer}
	LDA {chara_timer}
	CMP #$09
	BCC +
	STZ {chara_timer}
	INC {charasubpose}
	LDA {charasubpose}
	CMP #$04
	BCC +
	STZ {charasubpose}
	INC {chara_x}
+
	PLA
	ASL
	TAX
	JMP (moveright,x)
charamoveleft:
	LDX #$0000
-
	LDA hidari_pal,x
	STA $7EC6C0,x
	INX
	CPX #$0020
	BNE -
	JSR write_charapos
	LDA {charasubpose}
	TAX
	LDA #$00
	XBA
	LDA string0,x
	PHA
	INC {chara_timer}
	LDA {chara_timer}
	CMP #$09
	BCC +
	STZ {chara_timer}
	INC {charasubpose}
	LDA {charasubpose}
	CMP #$04
	BCC +
	STZ {charasubpose}
	DEC {chara_x}
+
	PLA
	ASL
	TAX
	JMP (moveleft,x)


charamovedown:
	LDX #$0000
-
	LDA shita_pal,x
	STA $7EC6C0,x
	INX
	CPX #$0020
	BNE -
	JSR write_charapos
	LDA {charasubpose}
	TAX
	LDA #$00
	XBA
	LDA string0,x
	PHA
	INC {chara_timer}
	LDA {chara_timer}
	CMP #$09
	BCC +
	STZ {chara_timer}
	INC {charasubpose}
	LDA {charasubpose}
	CMP #$04
	BCC +
	STZ {charasubpose}
	INC {chara_y}
+
	PLA
	ASL
	TAX
	JMP (movedown,x)

down0:
	LDA #$09
	STA $7E09EA
	LDA #$29
	STA $7E09EE
	LDA #$0B
	STA $7E09F2
	LDA #$1B
	STA $7E09F6
	LDA #$2B
	STA $7E09FA
	LDA #$3B
	STA $7E09FE
	INC {chara_y}
	RTS
down1:
	LDA #$0C
	STA $7E09EA
	LDA #$2C
	STA $7E09EE
	LDA #$0E
	STA $7E09F2
	LDA #$1E
	STA $7E09F6
	LDA #$2E
	STA $7E09FA
	LDA #$3E
	STA $7E09FE
	INC {chara_y}
	RTS
down2:
	LDA #$40
	STA $7E09EA
	LDA #$60
	STA $7E09EE
	LDA #$42
	STA $7E09F2
	LDA #$52
	STA $7E09F6
	LDA #$62
	STA $7E09FA
	LDA #$72
	STA $7E09FE
	INC {chara_y}
	RTS

up0:
	LDA #$00
	STA $7E09EA
	LDA #$20
	STA $7E09EE
	LDA #$02
	STA $7E09F2
	LDA #$12
	STA $7E09F6
	LDA #$22
	STA $7E09FA
	LDA #$32
	STA $7E09FE
	DEC {chara_y}
	RTS
up1:
	LDA #$03
	STA $7E09EA
	LDA #$23
	STA $7E09EE
	LDA #$05
	STA $7E09F2
	LDA #$15
	STA $7E09F6
	LDA #$25
	STA $7E09FA
	LDA #$35
	STA $7E09FE
	DEC {chara_y}
	RTS
up2:
	LDA #$06
	STA $7E09EA
	LDA #$26
	STA $7E09EE
	LDA #$08
	STA $7E09F2
	LDA #$18
	STA $7E09F6
	LDA #$28
	STA $7E09FA
	LDA #$38
	STA $7E09FE
	DEC {chara_y}
	RTS
	
left0:
	LDA #$43
	STA $7E09EA
	LDA #$63
	STA $7E09EE
	LDA #$45
	STA $7E09F2
	LDA #$55
	STA $7E09F6
	LDA #$65
	STA $7E09FA
	LDA #$75
	STA $7E09FE
	DEC {chara_x}
	LDA #$2C
	ORA #$40
	STA $7E09EB
	STA $7E09EF
	STA $7E09F3
	STA $7E09F7
	STA $7E09FB
	STA $7E09FF
	RTS
left1:
	LDA #$46
	STA $7E09EA
	LDA #$66
	STA $7E09EE
	LDA #$48
	STA $7E09F2
	LDA #$58
	STA $7E09F6
	LDA #$68
	STA $7E09FA
	LDA #$78
	STA $7E09FE
	DEC {chara_x}
	LDA #$2C
	ORA #$40
	STA $7E09EB
	STA $7E09EF
	STA $7E09F3
	STA $7E09F7
	STA $7E09FB
	STA $7E09FF
	RTS
left2:
	LDA #$49
	STA $7E09EA
	LDA #$69
	STA $7E09EE
	LDA #$4B
	STA $7E09F2
	LDA #$5B
	STA $7E09F6
	LDA #$6B
	STA $7E09FA
	LDA #$7B
	STA $7E09FE
	DEC {chara_x}
	LDA #$2C
	ORA #$40
	STA $7E09EB
	STA $7E09EF
	STA $7E09F3
	STA $7E09F7
	STA $7E09FB
	STA $7E09FF
	RTS
	
right0:
	LDA #$43
	STA $7E09EA
	LDA #$63
	STA $7E09EE
	LDA #$45
	STA $7E09F2
	LDA #$55
	STA $7E09F6
	LDA #$65
	STA $7E09FA
	LDA #$75
	STA $7E09FE
	LDA #$3C
	STA $7E09EB
	STA $7E09EF
	STA $7E09F3
	STA $7E09F7
	STA $7E09FB
	STA $7E09FF
	RTS
right1:
	LDA #$46
	STA $7E09EA
	LDA #$66
	STA $7E09EE
	LDA #$48
	STA $7E09F2
	LDA #$58
	STA $7E09F6
	LDA #$68
	STA $7E09FA
	LDA #$78
	STA $7E09FE
	LDA #$3C
	STA $7E09EB
	STA $7E09EF
	STA $7E09F3
	STA $7E09F7
	STA $7E09FB
	STA $7E09FF
	RTS
right2:
	LDA #$49
	STA $7E09EA
	LDA #$69
	STA $7E09EE
	LDA #$4B
	STA $7E09F2
	LDA #$5B
	STA $7E09F6
	LDA #$6B
	STA $7E09FA
	LDA #$7B
	STA $7E09FE
	LDA #$3C
	STA $7E09EB
	STA $7E09EF
	STA $7E09F3
	STA $7E09F7
	STA $7E09FB
	STA $7E09FF
	RTS

write_charapos:
	LDA {chara_x}
	STA $7E09E8
	STA $7E09EC
	CLC
	ADC #$10
	STA $7E09F0
	STA $7E09F4
	STA $7E09F8
	STA $7E09FC
	LDA {chara_y}
	STA $7E09E9
	STA $7E09F1
	CLC
	ADC #$10
	STA $7E09ED
	LDA {chara_y}
	CLC
	ADC #$08
	STA $7E09F5
	CLC
	ADC #$08
	STA $7E09F9
	CLC
	ADC #$08
	STA $7E09FD
	LDA {charapose}
	CMP #$02
	BNE +
	INC {timer2}
	LDA {timer2}
	CMP #$F0
	BCS +
	INC $0120
	INC $011E	
+
	RTS

new_init:
	PHB
	LDA #$7F
	PHA
	PLB
	REP #$30
	LDX #$7FFE
	LDA #$0000
-
	STA $0000,x
	DEX #2
	BPL -
	LDA #$1801
	STA $004300
	LDA #$0000
	STA $002116
	LDA #$0000
	STA $004302
	LDA #$8000
	STA $004305
	SEP #$20
	LDA #$80
	STA $002115
	LDA #$7F
	STA $004304
	LDA #$01
	STA $00420B	
	
	REP #$20
	LDA #$8000>>1
	STA $002116
	LDA #$0000
	STA $004302
	LDA #$8000
	STA $004305
	SEP #$20
	LDA #$80
	STA $002115
	LDA #$7F
	STA $004304
	LDA #$01
	STA $00420B		
	
	SEP #$30
	PLB
	LDA #$10
	STA $1C
	STZ $1D
	JML $828006
	
intro_kaiwa:
	JSR write_avatar
	JSR get_ptr
	REP #$20
	LDA $F4
	AND #$0010
	BNE +
-
	JSR check_pointer
	LDY {kaiwa_index}
	LDA [{kaiwa_ptr}],y
	AND #$00FF
	CMP #$00FF
	BEQ +
	CMP #$00C0
	BCC text_shori
	SEC
	SBC #$00C0
	ASL
	TAX
	JSR (controlcode,x)
	BCS -
	SEP #$20
	RTS
+
	LDY #$0007
	LDA #$1000
	STA {dma_adr},y
	LDA #$0800
	STA {dma_size},y
	LDA #$C000>>1
	STA {vram_adr},y
	STZ {line}
	STZ {shift}
	STZ {tile_no}
	SEP #$20
	LDA #$7F
	STA {dma_bank},y
	LDA #$FF
	STA.w {nmi_dma_index}+1
	STZ {avatar_flag}
	LDA #$20
	STA $17
	LDA #$00
	STA {box_irq_trigger}
	STZ {kuchipaku}
	LDA #$FF
	STA {kuchipaku}
	LDY {event_index}
	INY #2
	STY {event_index}
	STZ {event_flag}
	LDY #$0000
	STY {kaiwa_index}
	JSR clear_buffer
	RTS
	
check_pointer:
	LDA {kaiwa_ptr}
	BNE +
	SEP #$20
	LDA #$3A
	STA {kaiwa_ptr}+2
	REP #$20
	LDA #$F000
	STA {kaiwa_ptr}
+	
	RTS
	
text_shori:
	PHB
	PHA
	STA {kuchipaku}
	LDA #$7E7E
	PHA
	PLB
	PLB
	LDA #$0000
	LDX #$003E
-
	STA {char_buffer},x
	DEX 
	DEX 
	BPL -
	PLA
	ASL #6
	TAX
	SEP #$20
	LDA #$10
	STA {buffer1}
	LDY #$0000
-
	LDA font0,x
	XBA
	LDA font0+0x20,x
	JSR shift_pix
	ORA {char_buffer}+0x20,y
	STA {char_buffer}+0x20,y
	XBA
	ORA {char_buffer},y
	STA {char_buffer},y	
	
	LDA font0+0x10,x
	XBA
	LDA font0+0x30,x
	JSR shift_pix
	ORA {char_buffer}+0x30,y
	STA {char_buffer}+0x30,y
	XBA
	ORA {char_buffer}+0x10,y
	STA {char_buffer}+0x10,y
	INY
	INX
	DEC {buffer1}
	BNE -	
	REP #$20
	LDA #$BFC0
	STA $30
	LDA #$007E
	STA $32
	JSR tile2buffer2
	JSR get_width2
	JSR shift_cal	
	LDY {kaiwa_index}
	INY
	STY {kaiwa_index}
	LDY #$0007
	
	LDA #$0400
	STA {dma_size},y
	LDA {line}
	ASL #2
	TAX
	LDA string1,x
	STA {vram_adr},y
	LDA string1+2,x
	STA {dma_adr},y
	SEP #$20
	LDA #$7F
	STA {dma_bank},y
	LDA #$20
	STA $17
	LDA #$40
	STA $012F	//sfx
	LDA #$07
	STA {nmi_dma_index}
	LDA #$FF
	STA {nmi_dma_index}+1
	PLB
	RTS
	
string1:
	dw $E200>>1, $8000
	dw $E600>>1, $8400
	dw $EA00>>1, $8800
		
tile2buffer2:
	LDY #$0000
	LDA {tile_no}
	ASL #5
	TAX
-
	LDA [$30],y
	ORA $7F8000,x
	STA $7F8000,x
	INY #2
	INX #2
	CPY #$0040
	BNE -
	RTS
	
get_width2:
	LDY {kaiwa_index}
	LDA [{kaiwa_ptr}],y
	AND #$00FF
	TAX
	LDA font0_width,x
	AND #$00FF
	STA {char_haba}
	RTS
	
controlcode:
	dw code_line
	dw code_scroll
	dw code_pause
	dw code_frame
	dw code_clear
	dw code_avatar
	
code_line:
	SEP #$20
	LDA #$C0
	STA {kuchipaku}
	REP #$20
	INC {line}
	LDA {line}
	CMP #$0003
	BCS +
	ASL #5
	STA {tile_no}
	INY
	STY {kaiwa_index}
	STZ {shift}
	CLC
	RTS
+
	LDA #$0002
	STA {line}
	PHB
	LDA #$7F7F
	PHA
	PLB
	PLB
	LDA #$0010
	STA {scroll_flag}
	JSR scroll_shori
	BCS +
	PLB
	SEP #$20
	LDY #$0000
	LDA #$7F
	STA {dma_bank},y
	LDA #$20
	STA $17
	LDA #$00
	STA.w {nmi_dma_index},y
	LDA #$00
	STA.w {nmi_dma_index}+1,y
	REP #$20
	LDA #$8000
	STA {dma_adr},y
	LDA #$0C00
	STA {dma_size},y
	LDA #$E200>>1
	STA {vram_adr},y
	CLC
	RTS
+
	PLB
	LDA {line}
	ASL #5
	STA {tile_no}
	STZ {shift}
	STZ {scroll_flag}
	STZ {save_a}
	INC {kaiwa_index}
	CLC
	RTS
		
code_scroll:
	SEP #$20
	LDA #$C1
	STA {kuchipaku}
	PHB
	LDA #$7F
	PHA
	PLB
	REP #$20
	LDA #$0030
	STA {scroll_flag}
	JSR scroll_shori
	BCS +
	PLB
	SEP #$20
	LDY #$0000
	LDA #$7F
	STA {dma_bank},y
	LDA #$20
	STA $17
	LDA #$00
	STA {nmi_dma_index},y
	LDA #$00
	STA {nmi_dma_index}+1
	REP #$20
	LDA #$8000
	STA {dma_adr},y
	LDA #$0C00
	STA {dma_size},y
	LDA #$E200>>1
	STA {vram_adr},y
	CLC
	RTS
+
	PLB
	STZ {line}
	STZ {tile_no}
	STZ {shift}
	STZ {scroll_flag}
	STZ {save_a}
	INC {kaiwa_index}
	SEC
	RTS
	
scroll_shori:
	LDA {save_a}
	CMP {scroll_flag}
	BCC +
	JMP _a1
+
	LDA #$0000
	TAY
	LDA #$0002
	TAX
-
	LDA $8000,x
	STA $8000,y
	LDA $8002,x
	STA $8002,y
	LDA $8004,x
	STA $8004,y
	LDA $8006,x
	STA $8006,y
	LDA $8008,x
	STA $8008,y
	LDA $800A,x
	STA $800A,y
	LDA $800C,x
	STA $800C,y
	LDA $800E,x
	STA $800E,y
	LDA $8010,x
	STA $8010,y
	LDA $8012,x
	STA $8012,y
	LDA $8014,x
	STA $8014,y
	LDA $8016,x
	STA $8016,y
	LDA $8018,x
	STA $8018,y
	LDA $801A,x
	STA $801A,y
	LDA $801C,x
	STA $801C,y
	LDA $8400,y
	STA $801E,y
	LDA $8400,x
	STA $8400,y
	LDA $8402,x
	STA $8402,y
	LDA $8404,x
	STA $8404,y
	LDA $8406,x
	STA $8406,y
	LDA $8408,x
	STA $8408,y
	LDA $840A,x
	STA $840A,y
	LDA $840C,x
	STA $840C,y
	LDA $840E,x
	STA $840E,y
	LDA $8410,x
	STA $8410,y
	LDA $8412,x
	STA $8412,y
	LDA $8414,x
	STA $8414,y
	LDA $8416,x
	STA $8416,y
	LDA $8418,x
	STA $8418,y
	LDA $841A,x
	STA $841A,y
	LDA $841C,x
	STA $841C,y
	LDA $8800,y
	STA $841E,y
	LDA $8800,x
	STA $8800,y
	LDA $8802,x
	STA $8802,y
	LDA $8804,x
	STA $8804,y
	LDA $8806,x
	STA $8806,y
	LDA $8808,x
	STA $8808,y
	LDA $880A,x
	STA $880A,y
	LDA $880C,x
	STA $880C,y
	LDA $880E,x
	STA $880E,y
	LDA $8810,x
	STA $8810,y
	LDA $8812,x
	STA $8812,y
	LDA $8814,x
	STA $8814,y
	LDA $8816,x
	STA $8816,y
	LDA $8818,x
	STA $8818,y
	LDA $881A,x
	STA $881A,y
	LDA $881C,x
	STA $881C,y
	LDA #$0000
	STA $881E,y
	TYA
	CLC
	ADC #$0020
	TAY
	CLC
	ADC #$0002
	TAX
	CMP #$03E2
	BEQ +
	JMP -
+
	INC {save_a}
	CLC
	RTS
_a1:	
	SEC
	RTS
	
	
code_pause:
	SEP #$20
	LDA #$C2
	STA {kuchipaku}
	LDA $FA
	AND #$80
	BEQ +
	REP #$20
	INY
	STY {kaiwa_index}
	SEC
	RTS
+
	CLC
	RTS

code_frame:
	LDX #$0007
	LDA #(intro_frame_map)
	STA {dma_adr},x
	LDA #$0200
	STA {dma_size},x
	LDA #$C500>>1
	STA {vram_adr},x
	LDA #$FF00
	STA {window1_hidari}
	LDA #$F60C
	STA {window2_hidari}
	LDA #$00A2
	STA {irq_hi}
	LDA #$00A2
	STA $004209	//irq
	LDA #$00DA
	STA {irq_low}
	SEP #$20
	LDA.b #(intro_frame_map>>16)
	STA {dma_bank},x
	LDA #$1F
	STA {color1}
	LDA #$5F
	STA {color2}
	LDA #$00
	STA {color3}
	LDA #$B3
	STA {color_math}
	LDA #$FF
	STA {box_irq_trigger}
	LDA #$A2
	STA $FF	//irq
	LDA #$20
	STA $17
	LDA #$07
	STA.w {nmi_dma_index}
	LDA #$FF
	STA.w {nmi_dma_index}+1
	INY
	STY {kaiwa_index}
	REP #$20
	CLC
	RTS
code_clear:
	SEP #$20
	LDA #$C4
	STA {kuchipaku}
	REP #$20
	STZ {tile_no}
	STZ {line}
	STZ {shift}
	INY
	STY {kaiwa_index}
	LDX #$0BFE
	LDA #$0000
-
	STA $7F8000,x
	DEX #2
	BPL -
	SEP #$20
	LDY #$0007
	LDA #$7F
	STA {dma_bank},y
	LDA #$20
	STA $17
	LDA #$00
	STA {nmi_dma_index},y
	LDA #$FF
	STA.w {nmi_dma_index}+1
	REP #$20
	LDA #$8000
	STA {dma_adr},y
	LDA #$0C00
	STA {dma_size},y
	LDA #$E200>>1
	STA {vram_adr}		,y
	CLC
	RTS
	
code_avatar:
	SEP #$20
	LDA.b #(avatar_chr>>16)
	STA {dma_bank}
	LDA #$20
	STA $17
	INC $15
	STZ {nmi_dma_index}
	LDA #$FF
	STA {avatar_flag}
	REP #$20
	LDA #$9000>>1
	STA {vram_adr}
	LDA #$0800
	STA {dma_size}
	LDA #(avatar_chr)
	STA {dma_adr}
	
	LDX #$001E
-
	LDA avatar_pal,x
	STA $7EC6E0,x
	DEX #2
	BPL -
	INY
	STY {kaiwa_index}
	CLC
	RTS
	

get_ptr:
	LDA #$00
	XBA
	LDA {ptr_index}
	PHA
	ASL
	CLC
	ADC $01,s
	TAX
	PLA
	LDA $BA8000,x
	STA {kaiwa_ptr}
	LDA $BA8001,x
	STA {kaiwa_ptr}+1
	LDA $BA8002,x
	STA {kaiwa_ptr}+2
	RTS
	
write_avatar:
	SEP #$20
	LDA {avatar_flag}
	BNE  +
	RTS
+
	LDA #$B0
	STA $7E09B0
	STA $7E09BC
	STA $7E09C8
	STA $7E09D4
	CLC
	ADC #$10
	STA $7E09B4
	STA $7E09C0
	STA $7E09CC
	STA $7E09D8
	CLC
	ADC #$10
	STA $7E09B8
	STA $7E09C4
	STA $7E09D0
	STA $7E09DC
	
	LDA #$60
	STA $7E09B1
	STA $7E09B5
	STA $7E09B9
	CLC
	ADC #$10
	STA $7E09BD
	STA $7E09C1
	STA $7E09C5
	CLC
	ADC #$10
	STA $7E09C9
	STA $7E09CD
	STA $7E09D1
	CLC
	ADC #$10
	STA $7E09D5
	STA $7E09D9
	STA $7E09DD
	
	LDA #$80
	STA $7E09B2
	LDA #$82
	STA $7E09B6
	LDA #$84
	STA $7E09BA
	LDA #$A0
	STA $7E09BE
	LDA #$A2
	STA $7E09C2
	LDA #$A4
	STA $7E09C6
	LDA #$86
	STA $7E09CA
	LDA {kuchi}
	STA $7E09CE
	LDA #$8A
	STA $7E09D2
	LDA #$A6
	STA $7E09D6
	LDA #$A8
	STA $7E09DA
	LDA #$AA
	STA $7E09DE
	
	LDA #$3E
	STA $7E09B3
	STA $7E09B7
	STA $7E09BB
	STA $7E09BF
	STA $7E09C3
	STA $7E09C7
	STA $7E09CB
	STA $7E09CF
	STA $7E09D3
	STA $7E09D7
	STA $7E09DB
	STA $7E09DF
	
	LDA #$0A
	STA $7E0A8C
	STA $7E0A8D
	STA $7E0A8E
	STA $7E0A8F
	STA $7E0A90
	STA $7E0A91
	STA $7E0A92
	STA $7E0A93
	STA $7E0A94
	STA $7E0A95
	STA $7E0A96
	STA $7E0A97
	
	LDA {tile_no}
	BNE +
	LDA #$8E
	STA $7E09CE
	STA {kuchi}
	BRL e_kuchi
+	
	LDA {kuchipaku}
	CMP #$C0
	BCC +
-
	LDA #$88
	STA $7E09CE
	STA {kuchi}
	BRL e_kuchi
+
	CMP #$81
	BNE +
	BRA -
+
	CMP #$82
	BNE +
	BRA -
+
	CMP #$83
	BNE +
	BRA -
+
	CMP #$84
	BNE +
	BRA -
+
	CMP #$85
	BNE +
	BRL -
+
	CMP #$87
	BNE +
	BRL -
+
	LDA {tile_no}
	AND #$03
	BNE e_kuchi
	INC {kuchi_index}
	LDX {kuchi_index}
	CPX #$0003
	BCC +
	LDX #$0000
	STX {kuchi_index}
+
	LDA mouth,x
	STA {kuchi}
	STA $7E09CE
e_kuchi:
	RTS
	
mouth:
	db $88, $8E, $AE
	
event:
	REP #$20
	LDA {event_id}
	AND #$00FF
	PHA
	ASL
	CLC
	ADC $01,s
	TAX
	PLA
	LDA $BB8000+1,x
	STA {event_ptr}+1
	LDA $BB8000,x
	STA {event_ptr}
	SEP #$20
	LDA {event_flag2}
	BNE e_event
	LDA #$00
	XBA
	LDY {event_index}
	LDA [{event_ptr}],y
	CMP #$FF
	BNE +
	LDY #$0000
	STY {event_index}
	LDA #$FF
	STA {event_flag2}
e_event:
	RTS
+
	ASL
	TAX
	JMP (eventwrite,x)
	
eventwrite:
	dw event0
	dw event1
	dw event2
	dw event3
	dw event4
	dw event5
	dw event6
	dw event7
	dw event8
	
event0:
	LDA {event_flag}
	BNE +
	LDY {event_index}
	INY
	LDA [{event_ptr}],y
	STA {event_timer}
	LDA #$FF
	STA {event_flag}
	RTS
+
	DEC {event_timer}
	BNE +
	LDY {event_index}
	INY #2
	STY {event_index}
	STZ {event_flag}
	RTS
+	
	LDA #$3C
	STA $7E09EB
	STA $7E09EF
	STA $7E09F3
	STA $7E09F7
	STA $7E09FB
	STA $7E09FF
	LDA #$0A
	STA $7E0A9A
	STA $7E0A9B
	LDA #$00
	STA $7E0A9C
	STA $7E0A9D
	STA $7E0A9E
	STA $7E0A9F
	XBA
	STZ {charapose}
	LDA {charapose}
	ASL
	TAX
	JSR (charamove,x)	
	RTS
	
event1:
	LDA {event_flag}
	BNE +
	LDY {event_index}
	INY
	LDA [{event_ptr}],y
	STA {event_timer}
	LDA #$FF
	STA {event_flag}
	RTS
+
	DEC {event_timer}
	BNE +
	LDY {event_index}
	INY #2
	STY {event_index}
	STZ {event_flag}
	RTS
+	
	LDA #$3C
	STA $7E09EB
	STA $7E09EF
	STA $7E09F3
	STA $7E09F7
	STA $7E09FB
	STA $7E09FF
	LDA #$0A
	STA $7E0A9A
	STA $7E0A9B
	LDA #$00
	STA $7E0A9C
	STA $7E0A9D
	STA $7E0A9E
	STA $7E0A9F
	XBA
	LDA #$01
	STA {charapose}
	LDA {charapose}
	ASL
	TAX
	JSR (charamove,x)	
	RTS
	
event2:
	LDA {event_flag}
	BNE +
	LDY {event_index}
	INY
	LDA [{event_ptr}],y
	STA {event_timer}
	LDA #$FF
	STA {event_flag}
	RTS
+
	DEC {event_timer}
	BNE +
	LDY {event_index}
	INY #2
	STY {event_index}
	STZ {event_flag}
	RTS
+	
	LDA #$3C
	STA $7E09EB
	STA $7E09EF
	STA $7E09F3
	STA $7E09F7
	STA $7E09FB
	STA $7E09FF
	LDA #$0A
	STA $7E0A9A
	STA $7E0A9B
	LDA #$00
	STA $7E0A9C
	STA $7E0A9D
	STA $7E0A9E
	STA $7E0A9F
	LDX #$0000
-
	LDA hidari_pal,x
	STA $7EC6C0,x
	INX
	CPX #$0020
	BNE -
	JSR write_charapos
	LDA {charasubpose}
	TAX
	LDA #$00
	XBA
	LDA string0,x
	PHA
	INC {chara_timer}
	LDA {chara_timer}
	CMP #$09
	BCC +
	STZ {chara_timer}
	INC {charasubpose}
	LDA {charasubpose}
	CMP #$04
	BCC +
	STZ {charasubpose}
	INC {chara_x}
+
	PLA
	ASL
	TAX
	INC {chara_x}
	JMP (moveright,x)	
	
event3:
	LDA {event_flag}
	BNE +
	LDY {event_index}
	INY
	LDA [{event_ptr}],y
	STA {event_timer}
	LDA #$FF
	STA {event_flag}
	RTS
+
	DEC {event_timer}
	BNE +
	LDY {event_index}
	INY #2
	STY {event_index}
	STZ {event_flag}
	RTS
+	
	LDA #$3C
	STA $7E09EB
	STA $7E09EF
	STA $7E09F3
	STA $7E09F7
	STA $7E09FB
	STA $7E09FF
	LDA #$0A
	STA $7E0A9A
	STA $7E0A9B
	LDA #$00
	STA $7E0A9C
	STA $7E0A9D
	STA $7E0A9E
	STA $7E0A9F
	XBA
	LDA #$03
	STA {charapose}
	LDA {charapose}
	ASL
	TAX
	LDX #$0000
-
	LDA hidari_pal,x
	STA $7EC6C0,x
	INX
	CPX #$0020
	BNE -
	JSR write_charapos
	LDA {charasubpose}
	TAX
	LDA #$00
	XBA
	LDA string0,x
	PHA
	LDA $011E
	CMP #$08
	BCC no_scroll
	DEC $011E
	DEC $0120
	BRA _e1
no_scroll:
	DEC {chara_x}
_e1:
	INC {chara_timer}
	LDA {chara_timer}
	CMP #$09
	BCC +
	STZ {chara_timer}
	INC {charasubpose}
	LDA {charasubpose}
	CMP #$04
	BCC +
	STZ {charasubpose}
+
	PLA
	ASL
	TAX
	JMP (moveleft2,x)

moveleft2:
	dw left02
	dw left12
	dw left02
	dw left22

left02:
	LDA #$44
	STA $7E09EA
	LDA #$64
	STA $7E09EE
	LDA #$43
	STA $7E09F2
	LDA #$53
	STA $7E09F6
	LDA #$63
	STA $7E09FA
	LDA #$73
	STA $7E09FE
	LDA #$3C
	ORA #$40
	STA $7E09EB
	STA $7E09EF
	STA $7E09F3
	STA $7E09F7
	STA $7E09FB
	STA $7E09FF
	RTS
left12:
	LDA #$47
	STA $7E09EA
	LDA #$67
	STA $7E09EE
	LDA #$46
	STA $7E09F2
	LDA #$56
	STA $7E09F6
	LDA #$66
	STA $7E09FA
	LDA #$76
	STA $7E09FE
	LDA #$3C
	ORA #$40
	STA $7E09EB
	STA $7E09EF
	STA $7E09F3
	STA $7E09F7
	STA $7E09FB
	STA $7E09FF
	RTS
left22:
	LDA #$4A
	STA $7E09EA
	LDA #$6A
	STA $7E09EE
	LDA #$49
	STA $7E09F2
	LDA #$59
	STA $7E09F6
	LDA #$69
	STA $7E09FA
	LDA #$79
	STA $7E09FE
	LDA #$3C
	ORA #$40
	STA $7E09EB
	STA $7E09EF
	STA $7E09F3
	STA $7E09F7
	STA $7E09FB
	STA $7E09FF
	RTS
	
event4:
	LDA {event_flag}
	BNE +
	LDY {event_index}
	INY
	LDA [{event_ptr}],y
	STA {event_timer}
	LDA #$FF
	STA {event_flag}
	RTS
+	
	DEC {event_timer}
	BNE +
	LDY {event_index}
	INY #2
	STY {event_index}
	STZ {event_flag}
+
	RTS	
	
event5:
	LDA {event_flag}
	BNE +
	LDY {event_index}
	INY
	LDA [{event_ptr}],y
	STA {ptr_index}
	LDA #$FF
	STA {event_flag}
	LDY #$0007
	LDA #$7F
	STA {dma_bank},y
	REP #$20
	LDA #$0C00
	STA {dma_size},y
	LDA #$8000
	STA {dma_adr},y
	LDA #$E200>>1
	STA {vram_adr},y
	SEP #$20
	LDA #$20
	STA $17
	LDA #$07
	STA {nmi_dma_index}
	LDA #$FF
	STA {nmi_dma_index}+1
	RTS
+	
	JSR intro_kaiwa
	RTS
	
clear_buffer:
	REP #$30
	LDX #$0BFE
	LDA #$0000
-
	STA $7F8000,x
	DEX #2
	BPL -
	SEP #$20
	RTS
	
event6:
	INY
	LDA [{event_ptr}],y
	AND #$01
	BNE +
	REP #$20
	LDX #$0000
-
	LDA yukiguni_pal,x
	STA $7EC500,x
	INX #2
	CPX #$0100
	BNE -
	INC {event_index}
	INC {event_index}
	SEP #$20
	INC $15
	RTS	
+
	REP #$20
	LDX #$0000
-
	LDA yukiguni2_pal,x
	STA $7EC500,x
	INX #2
	CPX #$0100
	BNE -
	INC {event_index}
	INC {event_index}
	SEP #$20
	INC $15
	RTS
	
event7:
	INC.w {anten_timer}
	LDA.w {anten_timer}
	CMP #$08
	BCC +
	STZ.w {anten_timer}
	DEC $13
	LDA $13
	BNE +
	INC {event_index}
+
	RTS

event8:
	INC $11
	RTS
	
for_byu:
	LDA #$00
	XBA
	LDA {buffer2}
	ASL
	TAX
	JMP (byu,x)

byu:
	dw byu0
	dw byu1
	dw byu2
	dw byu3
	dw byu4
	dw byu5
	
byu0:
	DEC $13
	BNE +
	INC {buffer2}
+
	RTL
	
byu1:
	PHP
	SEP #$20
	REP #$10
	LDA #$80
	STA $2100
	STA $13
	LDA.b #(byu_chr>>16)
	STA $4304
	LDA #$80
	STA $2115
	LDX #$1801
	STX $4300
	LDX #$1360
	STX $4305
	LDX #$4000>>1
	STX $2116
	LDX #(byu_chr)
	STX $4302
	LDA #$01
	STA $420B

	LDA.b #(byu_map>>16)
	STA $4304
	LDA #$80
	STA $2115
	LDX #$1801
	STX $4300
	LDX #$0700
	STX $4305
	LDX #$2000>>1
	STX $2116
	LDX #(byu_map)
	STX $4302
	LDA #$01
	STA $420B
		
	INC $15
	REP #$20
	LDX #$001E
-
	LDA byu_pal,x
	STA $7EC500,x
	DEX #2
	BPL -	
	PLP
	INC {buffer2}
	STZ $13
	STZ $2100
	LDA #$01
	STA $1C	//$212C
	LDA #$10
	STA $B0
	RTL

byu2:
	INC {timer2}
	LDA {timer2}
	CMP #$08
	BCC +
	STZ {timer2}
	INC $13
	LDA $13
	CMP #$0F
	BNE +
	INC {buffer2}
+
	LDA #$10
	STA $B0
	RTL
	
byu3:
	LDA $7FFF60
	INC
	STA $7FFF60
	CMP #$90
	BNE +
	LDA #$00
	STA $7FFF60
	INC {buffer2}
	STZ {timer2}
+
	LDA #$10
	STA $B0
	RTL
	
byu4:
	INC {timer2}
	LDA {timer2}
	CMP #$08
	BNE +
	STZ {timer2}
	DEC $13
	BNE +
	STZ {timer2}
	LDA #$80
	STA $13
	STA $2100
	INC {buffer2}
	LDA #$10
	STA $1C		//oam on
+
	LDA #$10
	STA $B0
	RTL

byu5:
	JSL $80893D
	JSL $80834B
	LDA #$02
	STA $2101
	STZ {buffer2}
	JML $8CC235	

tougen_ojisan:
	LDA {flag1}
	BNE +
	LDA #$73
	LDY #$01
	JSL $85E1A7
	BCC _F631
	STZ $0DC0,x
	INC {flag1}
_F631:
	JML $9EF631
+
	CMP #$01
	BNE +
	LDA #$CC
	LDY #$01
	JSL $85E1A7
	BCC _F631
	INC {flag1}
	JML $9EF631
+
	CMP #$02
	BNE +
	LDA #$CD
	LDY #$01
	JSL $85E1A7
	BCC _F631
	INC {flag1}
	JML $9EF631
+
	LDA #$CE
	LDY #$01
	JSL $85E1A7
	BCC _F631
	STZ {flag1}
	JML $9EF631
	
restart:
	LDA $F0
	AND #$10
	BEQ +
	LDA $F2
	AND #$30
	BEQ +
	LDA #$F1
	STA $012C
	REP #$20
	LDA #$01FF
	TCS
	SEP #$30
	STZ $10
	STZ $11
	JML $80802C	
+
	LDA $04C6
	BEQ _82A4A4
	JSL $9BCAC4
_82A4A4:
	JML $82A4A4
	
restart2:
	LDA $F0
	AND #$10
	BEQ +
	LDA $F2
	AND #$30
	BEQ +
	LDA #$F1
	STA $012C
	REP #$20
	LDA #$01FF
	TCS
	SEP #$30
	STZ $10
	STZ $11
	JML $80802C		
+
	JSL $878000
	JML $828853
	
kaifuku:
	LDA $F4
	AND #$28
	BEQ +
	LDA $7EF36C
	STA $7EF36D
	BRA _close
+
	LDA $F4
	AND #$24
	BEQ +
	LDA #$80
	STA $7EF36E
+
	LDA $F4
	AND #$22
	BEQ +
	LDA $7EF343
	INC
	STA $7EF343	//bakudan
	BRA _close
+
	LDA $F4
	AND #$21
	BEQ _close
	LDA $7EF377
	INC
	STA $7EF377	//ya
_close:
	LDA $F4
	AND #$10
	BEQ _DF2F
	JML $8DDF24	
_DF2F:
	JML $8DDF2F
	
ending1:
	JSL $80893D
	JSL $80834B
	PHP
	REP #$30
	LDX #$07FE
	LDA #$2588
-
	STA $7ED000,x
	DEX #2
	BPL -
	PLP
	LDA #$16	//oam, bg3,2
	STA $1C
	STA $212C
	JML $828510
	
ending2:
	PHB
	SEP #$20
	REP #$10
	LDA #$00
	PHA
	PLB
	REP #$20
	LDA #$0060
	STA $1002
	LDA #$FE47
	STA $1004
	LDA #$2588
	STA $1006
	LDA $11
	AND #$00FF
	ASL
	TAX
	JMP (ending_bg3,x)
	
ending_bg3:
	dw ed0
	dw ed1
	dw ed2
	dw ed3
	dw ed4
	dw ed5
	dw ed6
	dw ed7
	dw ed8
	dw ed9
	dw eda
	dw edb
	dw edc
	dw edd
	dw ede
	dw edf
	dw ed10
	dw ed11
	dw ed12
	dw ed13
	dw ed14
	dw ed15
	dw ed16
	dw ed17
	dw ed18
	dw ed19
	dw ed1a
	dw ed1b
	dw ed1c
	dw ed1d
	dw ed1e
	dw ed1f
	
ed0:
ed1:
	LDA #$E000>>1
	STA $2116
	LDA #(ending_chr)
	STA $4302
	LDA #$1801
	STA $4300
	LDA #$0400
	STA $4305
	SEP #$20
	LDA.b #(ending_chr>>16)
	STA $4304
	LDA #$80
	STA $2115
	LDA #$01
	STA $420B
	REP #$20
	JSR dma_blank_bg3
	LDA.b #(ed_text0>>16)
	STA $46
	REP #$20
	LDA #(ed_text0)
	STA $44
	STZ {buffer1}
	JSR write_ending_text
	SEP #$30
	LDA #$16
	STA $212C
	STA $1C
	STA $1D
	STA $212D
	PLB
	JML $8EED5A

ed2:
ed3:
	LDA #$E000>>1
	STA $2116
	LDA #(ending_chr)
	CLC
	ADC #$0400
	STA $4302
	LDA #$1801
	STA $4300
	LDA #$0600
	STA $4305
	SEP #$20
	LDA.b #(ending_chr>>16)
	STA $4304
	LDA #$80
	STA $2115
	LDA #$01
	STA $420B
	REP #$20
	JSR dma_blank_bg3
	LDA.b #(ed_text1>>16)
	STA $46
	REP #$20
	LDA #(ed_text1)
	STA $44
	STZ {buffer1}
	JSR write_ending_text
	SEP #$30
	LDA #$16
	STA $212C
	STA $1C
	STA $1D
	STA $212D
	PLB
	JML $8EED5A
	
ed4:
ed5:
	LDA #$E000>>1
	STA $2116
	LDA #(ending_chr)
	CLC
	ADC #$0800
	STA $4302
	LDA #$1801
	STA $4300
	LDA #$0600
	STA $4305
	SEP #$20
	LDA.b #(ending_chr>>16)
	STA $4304
	LDA #$80
	STA $2115
	LDA #$01
	STA $420B
	REP #$20
	JSR dma_blank_bg3
	LDA.b #(ed_text2>>16)
	STA $46
	REP #$20
	LDA #(ed_text2)
	STA $44
	STZ {buffer1}
	JSR write_ending_text
	SEP #$30
	LDA #$16
	STA $212C
	STA $1C
	STA $1D
	STA $212D
	PLB
	JML $8EED5A
	
ed6:
ed7:
	LDA #$E000>>1
	STA $2116
	LDA #(ending_chr)
	CLC
	ADC #$2600
	STA $4302
	LDA #$1801
	STA $4300
	LDA #$0600
	STA $4305
	SEP #$20
	LDA.b #(ending_chr>>16)
	STA $4304
	LDA #$80
	STA $2115
	LDA #$01
	STA $420B
	REP #$20
	JSR dma_blank_bg3
	LDA.b #(ed_text3>>16)
	STA $46
	REP #$20
	LDA #(ed_text3)
	STA $44
	STZ {buffer1}
	JSR write_ending_text
	SEP #$30
	LDA #$16
	STA $212C
	STA $1C
	STA $1D
	STA $212D
	PLB
	JML $8EED5A
	
ed8:
ed9:
	LDA #$E000>>1
	STA $2116
	LDA #(ending_chr)
	CLC
	ADC #$0C00
	STA $4302
	LDA #$1801
	STA $4300
	LDA #$0600
	STA $4305
	SEP #$20
	LDA.b #(ending_chr>>16)
	STA $4304
	LDA #$80
	STA $2115
	LDA #$01
	STA $420B
	REP #$20
	JSR dma_blank_bg3
	LDA.b #(ed_text4>>16)
	STA $46
	REP #$20
	LDA #(ed_text4)
	STA $44
	STZ {buffer1}
	JSR write_ending_text
	SEP #$30
	LDA #$16
	STA $212C
	STA $1C
	STA $1D
	STA $212D
	PLB
	JML $8EED5A

eda:
edb:
	LDA #$E000>>1
	STA $2116
	LDA #(ending_chr)
	CLC
	ADC #$1200
	STA $4302
	LDA #$1801
	STA $4300
	LDA #$0600
	STA $4305
	SEP #$20
	LDA.b #(ending_chr>>16)
	STA $4304
	LDA #$80
	STA $2115
	LDA #$01
	STA $420B
	REP #$20
	JSR dma_blank_bg3
	LDA.b #(ed_text5>>16)
	STA $46
	REP #$20
	LDA #(ed_text5)
	STA $44
	STZ {buffer1}
	JSR write_ending_text
	SEP #$30
	LDA #$16
	STA $212C
	STA $1C
	STA $1D
	STA $212D
	PLB
	JML $8EED5A
	
edc:
edd:
	LDA #$E000>>1
	STA $2116
	LDA #(ending_chr)
	CLC
	ADC #$1600
	STA $4302
	LDA #$1801
	STA $4300
	LDA #$0600
	STA $4305
	SEP #$20
	LDA.b #(ending_chr>>16)
	STA $4304
	LDA #$80
	STA $2115
	LDA #$01
	STA $420B
	REP #$20
	JSR dma_blank_bg3
	LDA.b #(ed_text6>>16)
	STA $46
	REP #$20
	LDA #(ed_text6)
	STA $44
	STZ {buffer1}
	JSR write_ending_text
	SEP #$30
	LDA #$16
	STA $212C
	STA $1C
	STA $1D
	STA $212D
	PLB
	JML $8EED5A

ede:
edf:
	LDA #$E000>>1
	STA $2116
	LDA #(ending_chr)
	CLC
	ADC #$1C00
	STA $4302
	LDA #$1801
	STA $4300
	LDA #$0400
	STA $4305
	SEP #$20
	LDA.b #(ending_chr>>16)
	STA $4304
	LDA #$80
	STA $2115
	LDA #$01
	STA $420B
	REP #$20
	JSR dma_blank_bg3
	LDA.b #(ed_text7>>16)
	STA $46
	REP #$20
	LDA #(ed_text7)
	STA $44
	STZ {buffer1}
	JSR write_ending_text
	SEP #$30
	LDA #$16
	STA $212C
	STA $1C
	STA $1D
	STA $212D
	PLB
	JML $8EED5A
	
ed10:
ed11:
	LDA #$E000>>1
	STA $2116
	LDA #(ending_chr)
	CLC
	ADC #$2000
	STA $4302
	LDA #$1801
	STA $4300
	LDA #$0800
	STA $4305
	SEP #$20
	LDA.b #(ending_chr>>16)
	STA $4304
	LDA #$80
	STA $2115
	LDA #$01
	STA $420B
	REP #$20
	JSR dma_blank_bg3
	LDA.b #(ed_text8>>16)
	STA $46
	REP #$20
	LDA #(ed_text8)
	STA $44
	STZ {buffer1}
	JSR write_ending_text
	SEP #$30
	LDA #$16
	STA $212C
	STA $1C
	STA $1D
	STA $212D
	PLB
	JML $8EED5A
	
ed12:
ed13:
	LDA #$E000>>1
	STA $2116
	LDA #(ending_chr)
	CLC
	ADC #$2A00
	STA $4302
	LDA #$1801
	STA $4300
	LDA #$0800
	STA $4305
	SEP #$20
	LDA.b #(ending_chr>>16)
	STA $4304
	LDA #$80
	STA $2115
	LDA #$01
	STA $420B
	REP #$20
	JSR dma_blank_bg3
	LDA.b #(ed_text9>>16)
	STA $46
	REP #$20
	LDA #(ed_text9)
	STA $44
	STZ {buffer1}
	JSR write_ending_text
	SEP #$30
	LDA #$16
	STA $212C
	STA $1C
	STA $1D
	STA $212D
	PLB
	JML $8EED5A

ed14:
ed15:
	LDA #$E000>>1
	STA $2116
	LDA #(ending_chr)
	CLC
	ADC #$3000
	STA $4302
	LDA #$1801
	STA $4300
	LDA #$0400
	STA $4305
	SEP #$20
	LDA.b #(ending_chr>>16)
	STA $4304
	LDA #$80
	STA $2115
	LDA #$01
	STA $420B
	REP #$20
	JSR dma_blank_bg3
	LDA.b #(ed_textA>>16)
	STA $46
	REP #$20
	LDA #(ed_textA)
	STA $44
	STZ {buffer1}
	JSR write_ending_text
	SEP #$30
	LDA #$16
	STA $212C
	STA $1C
	STA $1D
	STA $212D
	PLB
	JML $8EED5A

ed16:
ed17:
	LDA #$E000>>1
	STA $2116
	LDA #(ending_chr)
	CLC
	ADC #$4200
	STA $4302
	LDA #$1801
	STA $4300
	LDA #$0600
	STA $4305
	SEP #$20
	LDA.b #(ending_chr>>16)
	STA $4304
	LDA #$80
	STA $2115
	LDA #$01
	STA $420B
	REP #$20
	JSR dma_blank_bg3
	LDA.b #(ed_textB>>16)
	STA $46
	REP #$20
	LDA #(ed_textB)
	STA $44
	STZ {buffer1}
	JSR write_ending_text
	SEP #$30
	LDA #$16
	STA $212C
	STA $1C
	STA $1D
	STA $212D
	PLB
	JML $8EED5A
	
ed18:
ed19:
	LDA #$E000>>1
	STA $2116
	LDA #(ending_chr)
	CLC
	ADC #$3400
	STA $4302
	LDA #$1801
	STA $4300
	LDA #$0400
	STA $4305
	SEP #$20
	LDA.b #(ending_chr>>16)
	STA $4304
	LDA #$80
	STA $2115
	LDA #$01
	STA $420B
	REP #$20
	JSR dma_blank_bg3
	LDA.b #(ed_textC>>16)
	STA $46
	REP #$20
	LDA #(ed_textC)
	STA $44
	STZ {buffer1}
	JSR write_ending_text
	SEP #$30
	LDA #$16
	STA $212C
	STA $1C
	STA $1D
	STA $212D
	PLB
	JML $8EED5A
	
ed1a:
ed1b:
	LDA #$E000>>1
	STA $2116
	LDA #(ending_chr)
	CLC
	ADC #$3600
	STA $4302
	LDA #$1801
	STA $4300
	LDA #$0600
	STA $4305
	SEP #$20
	LDA.b #(ending_chr>>16)
	STA $4304
	LDA #$80
	STA $2115
	LDA #$01
	STA $420B
	REP #$20
	JSR dma_blank_bg3
	LDA.b #(ed_textD>>16)
	STA $46
	REP #$20
	LDA #(ed_textD)
	STA $44
	STZ {buffer1}
	JSR write_ending_text
	SEP #$30
	LDA #$16
	STA $212C
	STA $1C
	STA $1D
	STA $212D
	PLB
	JML $8EED5A
	
ed1c:
ed1d:
	LDA #$E000>>1
	STA $2116
	LDA #(ending_chr)
	CLC
	ADC #$3A00
	STA $4302
	LDA #$1801
	STA $4300
	LDA #$0400
	STA $4305
	SEP #$20
	LDA.b #(ending_chr>>16)
	STA $4304
	LDA #$80
	STA $2115
	LDA #$01
	STA $420B
	REP #$20
	JSR dma_blank_bg3
	LDA.b #(ed_textE>>16)
	STA $46
	REP #$20
	LDA #(ed_textE)
	STA $44
	STZ {buffer1}
	JSR write_ending_text
	SEP #$30
	LDA #$16
	STA $212C
	STA $1C
	STA $1D
	STA $212D
	PLB
	JML $8EED5A
	
ed1e:
ed1f:
	LDA #$E000>>1
	STA $2116
	LDA #(ending_chr)
	CLC
	ADC #$3C00
	STA $4302
	LDA #$1801
	STA $4300
	LDA #$0800
	STA $4305
	SEP #$20
	LDA.b #(ending_chr>>16)
	STA $4304
	LDA #$80
	STA $2115
	LDA #$01
	STA $420B
	REP #$20
	JSR dma_blank_bg3
	LDA.b #(ed_textF>>16)
	STA $46
	REP #$20
	LDA #(ed_textF)
	STA $44
	STZ {buffer1}
	JSR write_ending_text
	SEP #$30
	LDA #$16
	STA $212C
	STA $1C
	STA $1D
	STA $212D
	PLB
	JML $8EED5A
	
dma_blank_bg3:
	LDA #$C000>>1
	STA $2116
	LDA #$0800
	STA $4305
	LDA #$D000
	STA $4302
	SEP #$20
	LDA #$7E
	STA $4304
	LDA #$01
	STA $420B
	RTS
	
write_ending_text:
	LDY #$0000
	LDA #$1801
	STA $4300
-
	LDA [$44],y
	STA $2116
	INY #2
	LDA [$44],y
	STA $4305
	STA {buffer1}
	INY #2
	TYA
	CLC
	ADC $44
	STA $4302
	SEP #$20
	PHK
	PLA
	STA $4304
	LDA #$01
	STA $420B
	REP #$20
	TYA
	CLC
	ADC {buffer1}
	TAY
	LDA [$44],y
	CMP #$FFFF
	BNE -
	RTS
	
	
ed_text0:
	dw $C512>>1, $0020
	dw $2400, $2401, $2402, $2403, $2404, $2405, $2406, $2407, $2408
	dw $2409, $240A, $240B, $240C, $240D, $240E, $240F
	dw $C552>>1, $0020
	dw $2410, $2411, $2412, $2413, $2414, $2415, $2416, $2417, $2418
	dw $2419, $241A, $241B, $241C, $241D, $241E, $241F	
	dw $C5D2>>1, $0020
	dw $2420, $2421, $2422, $2423, $2424, $2425, $2426, $2427
	dw $2428, $2429, $242A, $242B, $242C, $242D, $242E, $242F
	dw $C612>>1, $0020
	dw $2430, $2431, $2432, $2433, $2434, $2435, $2436, $2437
	dw $2438, $2439, $243A, $243B, $243C, $243D, $243E, $243F	
	dw $FFFF
	
ed_text1:
	dw $C50E>>1, $0024
	dw $2400, $2401, $2402, $2403, $2404, $2405, $2406, $2407, $2408
	dw $2409, $240A, $240B, $240C, $240D, $240E, $240F, $2420, $2421
	dw $C54E>>1, $0024
	dw $2410, $2411, $2412, $2413, $2414, $2415, $2416, $2417, $2418
	dw $2419, $241A, $241B, $241C, $241D, $241E, $241F, $2430, $2431
	dw $C5CC>>1, $0028
	dw $2422, $2423, $2424, $2425, $2426, $2427, $2428, $2429, $242A
	dw $242B, $242C, $242D, $242E, $242F, $2440, $2441, $2442, $2443, $2444, $2445
	dw $C60C>>1, $0028
	dw $2432, $2433, $2434, $2435, $2436, $2437, $2438, $2439, $243A
	dw $243B, $243C, $243D, $243E, $243F, $2450, $2451, $2452, $2453, $2454, $2455	
	dw $FFFF
	
ed_text2:
	dw $C50E>>1, $0022
	dw $2406, $2407, $2408, $2409, $240A, $240B
	dw $240C, $240D, $240E, $240F, $2420, $2421, $2422, $2423, $2424, $2425, $2426
	dw $C54E>>1, $0022
	dw $2416, $2417, $2418, $2419, $241A, $241B
	dw $241C, $241D, $241E, $241F, $2430, $2431, $2432, $2433, $2434, $2435, $2436
	dw $C5D0>>1, $001E
	dw $2427, $2428, $2429, $242A, $242B, $242C, $242D, $242E, $242F
	dw $2440, $2441, $2442, $2443, $2444, $2445
	dw $C610>>1, $001E
	dw $2437, $2438, $2439, $243A, $243B, $243C, $243D, $243E, $243F
	dw $2450, $2451, $2452, $2453, $2454, $2455
	dw $FFFF
	
ed_text3:
	dw $C510>>1, $0020
	dw $2408, $2409, $240A, $240B, $240C, $240D, $240E, $240F
	dw $2420, $2421, $2422, $2423, $2424, $2425, $2426, $2427
	dw $C550>>1, $0020
	dw $2418, $2419, $241A, $241B, $241C, $241D, $241E, $241F
	dw $2430, $2431, $2432, $2433, $2434, $2435, $2436, $2437
	dw $C5CE>>1, $0024
	dw $2428, $2429, $242A, $242B, $242C, $242D, $242E, $242F
	dw $2440, $2441, $2442, $2443, $2444, $2445, $2446, $2447, $2448, $2449
	dw $C60E>>1, $0024
	dw $2438, $2439, $243A, $243B, $243C, $243D, $243E, $243F
	dw $2450, $2451, $2452, $2453, $2454, $2455, $2456, $2457, $2458, $2459	
	dw $FFFF
	
ed_text4:
	dw $C50E>>1, $0026
	dw $2406, $2407, $2408, $2409, $240A, $240B, $240C, $240D, $240E, $240F
	dw $2420, $2421, $2422, $2423, $2424, $2425, $2426, $2427, $2428
	dw $C54E>>1, $0026
	dw $2416, $2417, $2418, $2419, $241A, $241B, $241C, $241D, $241E, $241F
	dw $2430, $2431, $2432, $2433, $2434, $2435, $2436, $2437, $2438
	dw $C5CE>>1, $0026
	dw $242A, $242B, $242C, $242D, $242E, $242F, $2440, $2441, $2442, $2443, $2444
	dw $2445, $2446, $2447, $2448, $2449, $244A, $244B, $244C
	dw $C60E>>1, $0026
	dw $243A, $243B, $243C, $243D, $243E, $243F, $2450, $2451, $2452, $2453, $2454
	dw $2455, $2456, $2457, $2458, $2459, $245A, $245B, $245C	
	dw $FFFF
	
ed_text5:
	dw $C510>>1, $001E
	dw $2400, $2401, $2402, $2403, $2404, $2405, $2406, $2407
	dw $2408, $2409, $240A, $240B, $240C, $240D, $240E
	dw $C550>>1, $001E
	dw $2410, $2411, $2412, $2413, $2414, $2415, $2416, $2417
	dw $2418, $2419, $241A, $241B, $241C, $241D, $241E
	dw $C5CC>>1, $0028
	dw $2420, $2421, $2422, $2423, $2424, $2425, $2426, $2427, $2428, $2429
	dw $242A, $242B, $242C, $242D, $242E, $242F, $2440, $2441, $2442, $2443
	dw $C60C>>1, $0028
	dw $2430, $2431, $2432, $2433, $2434, $2435, $2436, $2437, $2438, $2439
	dw $243A, $243B, $243C, $243D, $243E, $243F, $2450, $2451, $2452, $2453
	dw $FFFF
	
ed_text6:
	dw $C512>>1, $001A
	dw $2404, $2405, $2406, $2407, $2408, $2409, $240A
	dw $240B, $240C, $240D, $240E, $240F, $2420
	dw $C552>>1, $001A
	dw $2414, $2415, $2416, $2417, $2418, $2419, $241A
	dw $241B, $241C, $241D, $241E, $241F, $2430
	dw $C5CC>>1, $0026
	dw $2421, $2422, $2423, $2424, $2425, $2426, $2427, $2428, $2429
	dw $242A, $242B, $242C, $242D, $242E, $242F, $2440, $2441, $2442, $2443
	dw $C60C>>1, $0026
	dw $2431, $2432, $2433, $2434, $2435, $2436, $2437, $2438, $2439
	dw $243A, $243B, $243C, $243D, $243E, $243F, $2450, $2451, $2452, $2453
	dw $FFFF
	
ed_text7:
	dw $C512>>1, $001C
	dw $2400, $2401, $2402, $2403, $2404, $2405, $2406, $2407, $2408
	dw $2409, $240A, $240B, $240C, $240D
	dw $C552>>1, $001C
	dw $2410, $2411, $2412, $2413, $2414, $2415, $2416, $2417, $2418
	dw $2419, $241A, $241B, $241C, $241D
	dw $C5D0>>1, $0022
	dw $240E, $240F, $2420, $2421, $2422, $2423, $2424, $2425, $2426, $2427
	dw $2428, $2429, $242A, $242B, $242C, $242D, $242E
	dw $C610>>1, $0022
	dw $241E, $241F, $2430, $2431, $2432, $2433, $2434, $2435, $2436, $2437
	dw $2438, $2439, $243A, $243B, $243C, $243D, $243E	
	dw  $FFFF

ed_text8:
	dw $C40E>>1, $0026
	dw $2400, $2401, $2402, $2403, $2404, $2405, $2406, $2407, $2408
	dw $2409, $240A, $240B, $240C, $240D, $240E, $240F, $2420, $2421, $2422
	dw $C44E>>1, $0026
	dw $2410, $2411, $2412, $2413, $2414, $2415, $2416, $2417, $2418
	dw $2419, $241A, $241B, $241C, $241D, $241E, $241F, $2430, $2431, $2432
	dw $C4CE>>1, $0028
	dw $2423, $2424, $2425, $2426, $2427, $2428, $2429, $242A, $242B, $242C
	dw $242D, $242E, $242F, $2440, $2441, $2442, $2443, $2444, $2445, $2446
	dw $C50E>>1, $0028
	dw $2433, $2434, $2435, $2436, $2437, $2438, $2439, $243A, $243B, $243C
	dw $243D, $243E, $243F, $2450, $2451, $2452, $2453, $2454, $2455, $2456
	dw $C590>>1, $0022
	dw $2447, $2448, $2449, $244A, $244B, $244C, $244D, $244E, $244F
	dw $2460, $2461, $2462, $2463, $2464, $2465, $2466, $2467
	dw $C5D0>>1, $0022
	dw $2457, $2458, $2459, $245A, $245B, $245C, $245D, $245E, $245F
	dw $2470, $2471, $2472, $2473, $2474, $2475, $2476, $2477
	dw $FFFF
	
ed_text9:
	dw $C50C>>1, $0028
	dw $240A, $240B, $240C, $240D, $240E, $240F, $2420, $2421, $2422, $2423
	dw $2424, $2425, $2426, $2427, $2428, $2429, $242A, $242B, $242C, $242D
	dw $C54C>>1, $0028
	dw $241A, $241B, $241C, $241D, $241E, $241F, $2430, $2431, $2432, $2433
	dw $2434, $2435, $2436, $2437, $2438, $2439, $243A, $243B, $243C, $243D	
	dw $C5CA>>1, $002C
	dw $242E, $242F, $2440, $2441, $2442, $2443, $2444, $2445, $2446, $2447, $2448
	dw $2449, $244A, $244B, $244C, $244D, $244E, $244F, $2460, $2461, $2462, $2463
	dw $C60A>>1, $002C
	dw $243E, $243F, $2450, $2451, $2452, $2453, $2454, $2455, $2456, $2457, $2458
	dw $2459, $245A, $245B, $245C, $245D, $245E, $245F, $2470, $2471, $2472, $2473
	dw $FFFF
	
ed_textA:
	dw $C510>>1, $001E
	dw $2404, $2405, $2406, $2407, $2408, $2409, $240A, $240B, $240C, $240D, $240E, $240F
	dw $2420, $2421, $2422
	dw $C550>>1, $001E
	dw $2414, $2415, $2416, $2417, $2418, $2419, $241A, $241B, $241C, $241D, $241E, $241F
	dw $2430, $2431, $2432
	dw $C5D2>>1, $001A
	dw $2423, $2424, $2425, $2426, $2427, $2428, $2429
	dw $242A, $242B, $242C, $242D, $242E, $242F
	dw $C612>>1, $001A
	dw $2433, $2434, $2435, $2436, $2437, $2438, $2439
	dw $243A, $243B, $243C, $243D, $243E, $243F
	dw $FFFF
	
ed_textB:
	dw $C510>>1, $0020
	dw $2407, $2408, $2409, $240A, $240B, $240C, $240D, $240E, $240F
	dw $2420, $2421, $2422, $2423, $2424, $2425, $2426
	dw $C550>>1, $0020
	dw $2417, $2418, $2419, $241A, $241B, $241C, $241D, $241E, $241F
	dw $2430, $2431, $2432, $2433, $2434, $2435, $2436
	dw $C5D4>>1, $0018
	dw $2427, $2428, $2429, $242A, $242B, $242C, $242D, $242E, $242F
	dw $2440, $2441, $2442
	dw $C614>>1, $0018
	dw $2437, $2438, $2439, $243A, $243B, $243C, $243D, $243E, $243F
	dw $2450, $2451, $2452	
	dw $FFFF
	
ed_textC:
	dw $C512>>1, $0018
	dw $2400, $2401, $2402, $2403, $2404, $2405, $2406
	dw $2407, $2408, $2409, $240A, $240B
	dw $C552>>1, $0018
	dw $2410, $2411, $2412, $2413, $2414, $2415, $2416
	dw $2417, $2418, $2419, $241A, $241B
	dw $C5D4>>1, $0016
	dw $240C, $240D, $240E, $240F, $2420, $2421
	dw $2422, $2423, $2424, $2425, $2426
	dw $C614>>1, $0016
	dw $241C, $241D, $241E, $241F, $2430, $2431
	dw $2432, $2433, $2434, $2435, $2436
	dw $FFFF
	
ed_textD:
	dw $C512>>1, $001C
	dw $2407, $2408, $2409, $240A, $240B, $240C, $240D, $240E, $240F
	dw $2420, $2421, $2422, $2423, $2424
	dw $C552>>1, $001C
	dw $2417, $2418, $2419, $241A, $241B, $241C, $241D, $241E, $241F
	dw $2430, $2431, $2432, $2433, $2434
	dw $C5D4>>1, $001A
	dw $2425, $2426, $2427, $2428, $2429, $242A, $242B, $242C, $242D
	dw $242E, $242F, $2440, $2441
	dw $C614>>1, $001A
	dw $2435, $2436, $2437, $2438, $2439, $243A, $243B, $243C, $243D
	dw $243E, $243F, $2450, $2451
	dw $FFFF
	
ed_textE:
	dw $C512>>1, $0018
	dw $2402, $2403, $2404, $2405, $2406, $2407, $2408, $2409, $240A, $240B, $240C, $240D
	dw $C552>>1, $0018
	dw $2412, $2413, $2414, $2415, $2416, $2417, $2418, $2419, $241A, $241B, $241C, $241D	
	dw $C5D2>>1, $001A
	dw $240E, $240F, $2420, $2421, $2422, $2423, $2424, $2425, $2426
	dw $2427, $2428, $2429, $242A
	dw $C612>>1, $001A
	dw $241E, $241F, $2430, $2431, $2432, $2433, $2434, $2435, $2436
	dw $2437, $2438, $2439, $243A
	dw $FFFF
	
ed_textF:
	dw $C50C>>1, $002A
	dw $240B, $240C, $240D, $240E, $240F, $2420, $2421, $2422, $2423, $2424, $2425
	dw $2426, $2427, $2428, $2429, $242A, $242B, $242C, $242D, $242E, $242F
	dw $C54C>>1, $002A
	dw $241B, $241C, $241D, $241E, $241F, $2430, $2431, $2432, $2433, $2434, $2435
	dw $2436, $2437, $2438, $2439, $243A, $243B, $243C, $243D, $243E, $243F
	dw $C5CC>>1, $002E
	dw $2440, $2441, $2442, $2443, $2444, $2445, $2446, $2447, $2448, $2449, $244A
	dw $244B, $244C, $244D, $244E, $244F, $2460, $2461, $2462, $2463, $2464
	dw $2465, $2466
	dw $C60C>>1, $002E
	dw $2450, $2451, $2452, $2453, $2454, $2455, $2456, $2457, $2458, $2459, $245A
	dw $245B, $245C, $245D, $245E, $245F, $2470, $2471, $2472, $2473, $2474
	dw $2475, $2476
	dw $FFFF
	
org $A88000
staff_roll:
	LDA $EA
	LSR #3
	DEC
	ASL
	TAX
	JMP (staff,x)
	
staff:
	dw staff0
	dw staff1
	dw staff2
	dw staff3
	dw staff4
	dw staff5
	dw staff6
	dw staff7
	dw staff8
	dw staff9
	dw staffa
	dw staffb
	dw staffc
	dw staffd
	dw staffe
	dw stafff
	dw staff10
	dw staff11
	dw staff12
	dw staff13
	dw staff14
	dw staff15
	dw staff16
	dw staff17
	dw staff18
	dw staff19
	dw staff1a
	dw staff1b
	dw staff1c
	dw staff1d
	dw staff1e
	dw staff1f
	dw staff20
	dw staff21
	dw staff22
	dw staff23
	dw staff24
	dw staff25
	dw staff26
	dw staff27
	dw staff28
	dw staff29
	dw staff2a
	dw staff2b
	dw staff2c
	dw staff2d
	dw staff2e
	dw staff2f
	dw staff30
	dw staff31
	dw staff32
	dw staff33
	dw staff34
	dw staff35
	dw staff36
	dw staff37
	dw staff38
	dw staff39
	dw staff3a
	dw staff3b
	dw staff3c
	dw staff3d
	dw staff3e
	dw staff3f
	dw staff40
	dw staff41
	dw staff42
	dw staff43
	dw staff44
	dw staff45
	dw staff46
	dw staff47
	dw staff48
	dw staff49
	dw staff4a
	dw staff4b
	dw staff4c
	dw staff4d
	dw staff4e
	dw staff4f
	dw staff50
	dw staff51
	dw staff52
	dw staff53
	dw staff54
	dw staff55
	dw staff56
	dw staff57
	dw staff58
	dw staff59
	dw staff5a
	dw staff5b
	dw staff5c
	dw staff5d
	dw staff5e
	dw staff5f
	dw staff60
	dw staff61
	dw staff62
	dw staff63
	dw staff64
	dw staff65
	dw staff66
	dw staff67
	dw staff68
	dw staff69
	dw staff6a
	dw staff6b
	dw staff6c
	dw staff6d
	dw staff6e
	dw staff6f
	dw staff70
	dw staff71
	dw staff72
	dw staff73
	dw staff74
	dw staff75
	dw staff76
	dw staff77
	dw staff78
	dw staff79
	dw staff7a
	dw staff7b
	dw staff7c
	dw staff7d
	dw staff7e
	dw staff7f
	dw staff80
	dw staff81
	dw staff82
	dw staff83
	dw staff84
	dw staff85
	dw staff86
	dw staff87
	dw staff88
	dw staff89
	dw staff8a
	dw staff8b
	dw staff8c
	dw staff8d
	dw staff8e
	dw staff8f
	dw staff90
	dw staff91
	dw staff92
	dw staff93
	dw staff94
	dw staff95
	dw staff96
	dw staff97
	dw staff98
	dw staff99
	dw staff9a
	dw staff9b
	dw staff9c
	dw staff9d
	dw staff9e
	dw staff9f
	dw staffa0
	dw staffa1
	dw staffa2
	dw staffa3
	dw staffa4
	dw staffa5
	dw staffa6
	dw staffa7
	dw staffa8
	dw staffa9
	dw staffaa
	dw staffab
	dw staffac
	dw staffad
	dw staffae
	dw staffaf
	dw staffb0
	dw staffb1
	dw staffb2
	dw staffb3
	dw staffb4
	dw staffb5
	dw staffb6
	dw staffb7
	dw staffb8
	dw staffb9
	dw staffba
	dw staffbb
	dw staffbc
	dw staffbd
	dw staffbe
	dw staffbf
	dw staffc0
	dw staffc1
	dw staffc2
	dw staffc3
	dw staffc4
	dw staffc5
	dw staffc6
	dw staffc7
	dw staffc8
	dw staffc9
	dw staffca
	dw staffcb
	dw staffcc
	dw staffcd
	dw staffce
	dw staffcf
	dw staffd0
	dw staffd1
	dw staffd2
	dw staffd3
	dw staffd4
	dw staffd5
	dw staffd6
	dw staffd7
	dw staffd8
	dw staffd9
	dw staffda
	dw staffdb
	dw staffdc
	dw staffdd
	dw staffde
	dw staffdf
	dw staffe0
	dw staffe1
	dw staffe2
	dw staffe3
	dw staffe4
	dw staffe5
	dw staffe6
	dw staffe7
	dw staffe8
	dw staffe9
	dw staffea
	dw staffeb
	dw staffec
	dw staffed
	dw staffee
	dw staffef
	dw stafff0
	dw stafff1
	dw stafff2
	dw stafff3
	dw stafff4
	dw stafff5
	dw stafff6
	dw stafff7
	dw stafff8
	dw stafff9
	dw stafffa
	dw stafffb
	dw stafffc
	dw stafffd
	dw stafffe
	dw staffff
	dw staff100
	dw staff101
	dw staff102
	dw staff103
	dw staff104
	dw staff105
	dw staff106
	dw staff107
	dw staff108
	dw staff109
	dw staff10a
	dw staff10b
	dw staff10c
	dw staff10d
	dw staff10e
	dw staff10f
	dw staff110
	dw staff111
	dw staff112
	dw staff113
	dw staff114
	dw staff115
	dw staff116
	dw staff117
	dw staff118
	dw staff119
	dw staff11a
	dw staff11b
	dw staff11c
	dw staff11d
	dw staff11e
	dw staff11f
	dw staff120
	dw staff121
	dw staff122
	dw staff123
	dw staff124
	dw staff125
	dw staff126
	dw staff127
	dw staff128
	dw staff129
	dw staff12a
	dw staff12b
	dw staff12c
	dw staff12d
	dw staff12e
	dw staff12f
	dw staff130
	dw staff131
	dw staff132
	dw staff133
	dw staff134
	dw staff135
	dw staff136
	dw staff137
	dw staff138
	dw staff139
	dw staff13a
	dw staff13b
	dw staff13c
	dw staff13d
	dw staff13e
	dw staff13f
	dw staff140
	dw staff141
	dw staff142
	dw staff143
	dw staff144
	dw staff145
	dw staff146
	dw staff147
	dw staff148
	dw staff149
	dw staff14a
	dw staff14b
	dw staff14c
	dw staff14d
	dw staff14e
	dw staff14f
	dw staff150
	dw staff151
	dw staff152
	dw staff153
	dw staff154
	dw staff155
	dw staff156
	dw staff157
	dw staff158
	dw staff159
	dw staff15a
	dw staff15b
	dw staff15c
	dw staff15d
	dw staff15e
	dw staff15f
	
staff0:
	LDX #$0000
	LDA #(staffroll_chr)
	STA {cont_dma_adr},x
	LDA #$0400
	STA {cont_dma_size},x
	LDA #$E000>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	REP #$20
	LDX #$03FE
	LDA #$0188
-
	STA $7F9900,x
	DEX #2
	BPL -
	LDX #$0007
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0400
	STA {cont_dma_size},x
	LDA #$D000>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x	
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3	

staff1:
	LDX #$0000
	LDA #(execute1)
	STA {cont_dma_adr},x
	LDA #$000C
	STA {cont_dma_size},x
	LDA #$D01A>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(execute2)
	STA {cont_dma_adr},x
	LDA #$000C
	STA {cont_dma_size},x
	LDA #$D05A>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3	

execute1:
	dw $2800, $2802, $2804, $2806, $2808, $280A
execute2:
	dw $2801, $2803, $2805, $2807, $2809, $280B
yamauchi1:
	dw $240C, $240E, $2410, $2412, $2414, $2416, $2418, $241A, $241C, $241E, $2420
yamauchi2:
	dw $240D, $240F, $2411, $2413, $2415, $2417, $2419, $241B, $241D, $241F, $2421
producer1:
	dw $2822, $2824, $2826, $2828, $282A, $282C
producer2:
	dw $2823, $2825, $2827, $2829, $282B, $282D
shigeru1:
	dw $242E, $2430, $2432, $2434, $2436, $2438, $243A, $243C, $243E, $2440, $2442
shigeru2:
	dw $242F, $2431, $2433, $2435, $2437, $2439, $243B, $243D, $243F, $2441, $2443
director1:
	dw $2844, $2846, $2848, $284A, $284C, $284E
director2:
	dw $2845, $2847, $2849, $284B, $284D, $284F
tezuka1:
	dw $2450, $2452, $2454, $2456, $2458, $245A, $245C, $245E, $2460, $2462
tezuka2:
	dw $2451, $2453, $2455, $2457, $2459, $245B, $245D, $245F, $2461, $2463
script1:
	dw $2864, $2866, $2868, $286A, $286C, $286E
script2:
	dw $2865, $2867, $2869, $286B, $286D, $286F
tanabe1:
	dw $2470, $2472, $2474, $2476, $2478, $247A, $247C, $247E, $2480, $2482
tanabe2:
	dw $2471, $2473, $2475, $2477, $2479, $247B, $247D, $247F, $2481, $2483
ass1:
	dw $2884, $2886, $2888, $288A, $288C, $288E
	dw $2890, $2892, $2894, $2896
ass2:
	dw $2885, $2887, $2889, $288B, $288D, $288F
	dw $2891, $2893, $2895, $2897
yamamura1:
	dw $2498, $249A, $249C, $249E, $24A0, $24A2
	dw $24A4, $24A6, $24A8, $24AA, $24AC, $24AE
yamamura2:
	dw $2499, $249B, $249D, $249F, $24A1, $24A3
	dw $24A5, $24A7, $24A9, $24AB, $24AD, $24AF
yamada1:
	dw $24B0, $24B2, $24B4, $24B6, $24B8, $24BA, $24BC, $24BE, $24C0
yamada2:
	dw $24B1, $24B3, $24B5, $24B7, $24B9, $24BB, $24BD, $24BF, $24C1
graphic1:
	dw $2CC2, $2CC4, $2CC6, $2CC8, $2CCA, $2CCC, $2CCE, $2CD0
	dw $2CD2, $2CD4, $2CD6, $2CD8, $2CDA, $2CDC, $2CDE, $2CE0
graphic2:
	dw $2CC3, $2CC5, $2CC7, $2CC9, $2CCB, $2CCD, $2CCF, $2CD1
	dw $2CD3, $2CD5, $2CD7, $2CD9, $2CDB, $2CDD, $2CDF, $2CE1
oam1:
	dw $28E2, $28E4, $28E6, $28E8, $28EA, $28EC, $28EE, $28F0, $28F2, $28F4
oam2:
	dw $28E3, $28E5, $28E7, $28E9, $28EB, $28ED, $28EF, $28F1, $28F3, $28F5
tomita1:
	dw $24F6, $24F8, $24FA, $24FC, $24FE, $2500, $2502, $2504, $2506, $2508, $250A
tomita2:
	dw $24F7, $24F9, $24FB, $24FD, $24FF, $2501, $2503, $2505, $2507, $2509, $250B
imamura1:
	dw $250C, $250E, $2510, $2512, $2514, $2516, $2518, $251A, $251C, $251E
imamura2:
	dw $250D, $250F, $2511, $2513, $2515, $2517, $2519, $251B, $251D, $251F
haikei1:
	dw $2920, $2922, $2924, $2926, $2928, $292A, $292C, $292E
	dw $2930, $2932, $2934, $2936
haikei2:
	dw $2921, $2923, $2925, $2927, $2929, $292B, $292D, $292F
	dw $2931, $2933, $2935, $2937
arimoto1:
	dw $2538, $253A, $253C, $253E, $2540, $2542, $2544, $2546, $2548, $254A, $254C
arimoto2:
	dw $2539, $253B, $253D, $253F, $2541, $2543, $2545, $2547, $2549, $254B, $254D
watanabe1:
	dw $254E, $2550, $2552, $2554, $2556, $2558, $255A, $255C, $255E, $2560
	dw $2562, $2564
watanabe2:
	dw $254F, $2551, $2553, $2555, $2557, $2559, $255B, $255D, $255F, $2561
	dw $2563, $2565
pro1:
	dw $2D66, $2D68, $2D6A, $2D6C, $2D6E, $2D70, $2D72, $2D74, $2D76, $2D78, $2D7A, $2D7C
pro2:
	dw $2D67, $2D69, $2D6B, $2D6D, $2D6F, $2D71, $2D73, $2D75, $2D77, $2D79, $2D7B, $2D7D
nakago1:
	dw $2400, $2402, $2404, $2406, $2408, $240A, $240C, $240E
	dw $2410, $2412, $2414, $2416
nakago2:
	dw $2401, $2403, $2405, $2407, $2409, $240B, $240D, $240F
	dw $2411, $2413, $2415, $2417
main1:
	dw $2818, $281A, $281C, $281E, $2820, $2822, $2824, $2826, $2828, $282A, $282C, $282E
	dw $2830, $2832
main2:
	dw $2819, $281B, $281D, $281F, $2821, $2823, $2825, $2827, $2829, $282B, $282D, $282F
	dw $2831, $2833
soejima1:
	dw $2434, $2436, $2438, $243A, $243C, $243E, $2440, $2442, $2444, $2446, $2448
soejima2:
	dw $2435, $2437, $2439, $243B, $243D, $243F, $2441, $2443, $2445, $2447, $2449
tsuyoshi1:
	dw $244A, $244C, $244E, $2450, $2452, $2454, $2456, $2458, $245A, $245C, $245E, $2460
tsuyoshi2:
	dw $244B, $244D, $244F, $2451, $2453, $2455, $2457, $2459, $245B, $245D, $245F, $2461
sprite1:
	dw $2862, $2864, $2866, $2868, $286A, $286C, $286E, $2870
	dw $2872, $2874, $2876, $2878, $287A, $287C
sprite2:
	dw $2863, $2865, $2867, $2869, $286B, $286D, $286F, $2871
	dw $2873, $2875, $2877, $2879, $287B, $287D
morita1:
	dw $2480, $2482, $2484, $2486, $2488, $248A, $248C, $248E, $2490, $2492
morita2:
	dw $2481, $2483, $2485, $2487, $2489, $248B, $248D, $248F, $2491, $2493
other1:
	dw $2894, $2896, $2898, $289A, $289C, $289E
	dw $28A0, $28A2, $28A4, $28A6, $28A8, $28AA, $28AC, $28AE, $28B0, $28B2
other2:
	dw $2895, $2897, $2899, $289B, $289D, $289F
	dw $28A1, $28A3, $28A5, $28A7, $28A9, $28AB, $28AD, $28AF, $28B1, $28B3
nishiyama1:
	dw $24B4, $24B6, $24B8, $24BA, $24BC, $24BE, $24C0
	dw $24C2, $24C4, $24C6, $24C8
nishiyama2:
	dw $24B5, $24B7, $24B9, $24BB, $24BD, $24BF, $24C1
	dw $24C3, $24C5, $24C7, $24C9
yamamoto1:
	dw $24CA, $24CC, $24CE, $24D0, $24D2, $24D4, $24D6, $24D8, $24DA, $24DC, $24DE
yamamoto2:
	dw $24CB, $24CD, $24CF, $24D1, $24D3, $24D5, $24D7, $24D9, $24DB, $24DD, $24DF
nomoto1:
	dw $24E0, $24E2, $24E4, $24E6, $24E8, $24EA, $24EC, $24EE
	dw $24F0, $24F2, $24F4, $24F6
nomoto2:
	dw $24E1, $24E3, $24E5, $24E7, $24E9, $24EB, $24ED, $24EF
	dw $24F1, $24F3, $24F5, $24F7
eiji1:
	dw $24F8, $24FA, $24FC, $24FE, $2500, $2502
eiji2:
	dw $24F9, $24FB, $24FD, $24FF, $2501, $2503
takahata1:
	dw $2504, $2506, $2508, $250A, $250C, $250E
	dw $2510, $2512, $2514, $2516, $2518
takahata2:
	dw $2505, $2507, $2509, $250B, $250D, $250F
	dw $2511, $2513, $2515, $2517, $2519
iwaki1:
	dw $251A, $251C, $251E, $2520, $2522, $2524, $2526, $2528
iwaki2:
	dw $251B, $251D, $251F, $2521, $2523, $2525, $2527, $2529
kasamatsu1:
	dw $2532, $2534, $2536, $2538, $253A, $253C, $253E
	dw $2540, $2542, $2544, $2546, $2548, $254A
kasamatsu2:
	dw $2533, $2535, $2537, $2539, $253B, $253D, $253F
	dw $2541, $2543, $2545, $2547, $2549, $254B
nishida1:
	dw $254C, $254E, $2550, $2552, $2554, $2556, $2558, $255A, $255C, $255E, $2560
nishida2:
	dw $254D, $254F, $2551, $2553, $2555, $2557, $2559, $255B, $255D, $255F, $2561
sekishu1:
	dw $2562, $2564, $2566, $2568, $256A, $256C, $256E
sekishu2:
	dw $2563, $2565, $2567, $2569, $256B, $256D, $256F
composer1:
	dw $2810, $2812, $2814, $2816, $2818, $281A, $281C
composer2:
	dw $2811, $2813, $2815, $2817, $2819, $281B, $281D
kondo1:
	dw $2420, $2422, $2424, $2426, $2428, $242A, $242C
kondo2:
	dw $2421, $2423, $2425, $2427, $2429, $242B, $242D
coo1:
	dw $282E, $2830, $2832, $2834, $2836, $2838, $283A, $283C, $283E, $2840
coo2:
	dw $282F, $2831, $2833, $2835, $2837, $2839, $283B, $283D, $283F, $2841
kato1:
	dw $2442, $2444, $2446, $2448, $244A, $244C, $244E
kato2:
	dw $2443, $2445, $2447, $2449, $244B, $244D, $244F
shimizu1:
	dw $2450, $2452, $2454, $2456, $2458, $245A, $245C, $245E, $2460
shimizu2:
	dw $2451, $2453, $2455, $2457, $2459, $245B, $245D, $245F, $2461
artwork1:
	dw $2862, $2864, $2866, $2868, $286A, $286C, $286E, $2870, $2872, $2874, $2876
artwork2:
	dw $2863, $2865, $2867, $2869, $286B, $286D, $286F, $2871, $2873, $2875, $2877
kotabe1:
	dw $2478, $247A, $247C, $247E, $2480, $2482, $2484, $2486, $2488
kotabe2:
	dw $2479, $247B, $247D, $247F, $2481, $2483, $2485, $2487, $2489
fujii1:
	dw $248A, $248C, $248E, $2490, $2492, $2494, $2496, $2498
fujii2:
	dw $248B, $248D, $248F, $2491, $2493, $2495, $2497, $2499
koizumi1:
	dw $249A, $249C, $249E, $24A0, $24A2, $24A4, $24A6, $24A8, $24AA, $24AC, $24AE
koizumi2:
	dw $249B, $249D, $249F, $24A1, $24A3, $24A5, $24A7, $24A9, $24AB, $24AD, $24AF
sakai1:
	dw $24B0, $24B2, $24B4, $24B6, $24B8, $24BA, $24BC, $24BE, $24C0, $24C2
sakai2:
	dw $24B1, $24B3, $24B5, $24B7, $24B9, $24BB, $24BD, $24BF, $24C1, $24C3
kuroume1:
	dw $24C4, $24C6, $24C8, $24CA, $24CC, $24CE
	dw $24D0, $24D2, $24D4, $24D6, $24D8
kuroume2:
	dw $24C5, $24C7, $24C9, $24CB, $24CD, $24CF
	dw $24D1, $24D3, $24D5, $24D7, $24D9
special1:
	dw $28DA, $28DC, $28DE, $28E0, $28E2, $28E4, $28E6, $28E8, $28EA, $28EC, $28EE
	dw $28F0, $28F2, $28F4, $28F6, $28F8, $28FA, $28FC, $28FE, $2900, $2902, $2904
special2:
	dw $28DB, $28DD, $28DF, $28E1, $28E3, $28E5, $28E7, $28E9, $28EB, $28ED, $28EF
	dw $28F1, $28F3, $28F5, $28F7, $28F9, $28FB, $28FD, $28FF, $2901, $2903, $2905
okajima1:
	dw $2506, $2508, $250A, $250C, $250E, $2510, $2512, $2514, $2516
okajima2:
	dw $2507, $2509, $250B, $250D, $250F, $2511, $2513, $2515, $2517
taketani1:
	dw $2518, $251A, $251C, $251E, $2520, $2522, $2524, $2526, $2528
	dw $252A, $252C, $252E, $2530
taketani2:
	dw $2519, $251B, $251D, $251F, $2521, $2523, $2525, $2527, $2529
	dw $252B, $252D, $252F, $2531
koda1:
	dw $2532, $2534, $2536, $2538, $253A, $253C, $253E, $2540, $2542
koda2:
	dw $2533, $2535, $2537, $2539, $253B, $253D, $253F, $2541, $2543
kuzuhara1:
	dw $2544, $2546, $2548, $254A, $254C, $254E
	dw $2550, $2552, $2554, $2556, $2558, $255A, $255C
kuzuhara2:
	dw $2545, $2547, $2549, $254B, $254D, $254F
	dw $2551, $2553, $2555, $2557, $2559, $255B, $255D
kakui1:
	dw $2560, $2562, $2564, $2566, $2568, $256A, $256C, $256E, $2570, $2572
kakui2:
	dw $2561, $2563, $2565, $2567, $2569, $256B, $256D, $256F, $2571, $2573
yamashiro1:
	dw $2574, $2576, $2578, $257A, $257C, $257E
	dw $2400, $2402, $2404, $2406, $2408, $240A
yamashiro2:
	dw $2575, $2577, $2579, $257B, $257D, $257F
	dw $2401, $2403, $2405, $2407, $2409, $240B
beto1:
	dw $2C0C, $2C0E, $2C10, $2C12, $2C14, $2C16, $2C18, $2C1A, $2C1C, $2C1E
	dw $2C20, $2C22, $2C24
beto2:
	dw $2C0D, $2C0F, $2C11, $2C13, $2C15, $2C17, $2C19, $2C1B, $2C1D, $2C1F
	dw $2C21, $2C23, $2C25
stone1:
	dw $2482, $2484, $2486, $2488, $248A, $248C, $248E
stone2:
	dw $2483, $2485, $2487, $2489, $248B, $248D, $248F
yaku1:
	dw $2C28, $2C2A, $2C2C, $2C2E, $2C30, $2C32, $2C34, $2C36, $2C38, $2C3A
	dw $2C3C, $2C3E, $2C40, $2C42, $2C44, $2C46, $2C48
yaku2:
	dw $2C29, $2C2B, $2C2D, $2C2F, $2C31, $2C33, $2C35, $2C37, $2C39, $2C3B
	dw $2C3D, $2C3F, $2C41, $2C43, $2C45, $2C47, $2C49
yaku3:
	dw $2C4A, $2C4C, $2C4E, $2C50, $2C52, $2C60, $2C62
	dw $2C64, $2C66, $2C68, $2C6A, $2C6C
yaku4:
	dw $2C4B, $2C4D, $2C4F, $2C51, $2C53, $2C61, $2C63
	dw $2C65, $2C67, $2C69, $2C6B, $2C6D
shibou1:
	dw $2890, $2892, $2894, $2896, $2898, $28A0, $28A2, $28A4, $28A6, $28A8
	dw $28AA, $28AC, $28AE, $28B0, $28B2, $28B4, $28B6, $28B8, $28BA, $28BC
shibou2:
	dw $2891, $2893, $2895, $2897, $2899, $28A1, $28A3, $28A5, $28A7, $28A9
	dw $28AB, $28AD, $28AF, $28B1, $28B3, $28B5, $28B7, $28B9, $28BB, $28BD
dungeon1:
	dw $2CC0, $2CC2, $2CC4, $2CC6, $2CC8, $2CCA, $2CCC, $2CCE
	dw $2CD0, $2CD2, $2CD4, $2CD6, $2CD8, $2CDA, $2CDC, $2CDE
dungeon2:
	dw $2CC1, $2CC3, $2CC5, $2CC7, $2CC9, $2CCB, $2CCD, $2CCF
	dw $2CD1, $2CD3, $2CD5, $2CD7, $2CD9, $2CDB, $2CDD, $2CDF
hyrule1:
	dw $2CE0, $2CE2, $2CE4, $2CE6, $2CE8, $2CEA, $2CEC, $2CEE, $2CF0, $2CF2
hyrule2:
	dw $2CE1, $2CE3, $2CE5, $2CE7, $2CE9, $2CEB, $2CED, $2CEF, $2CF1, $2CF3
higashi1:
	dw $2CF4, $2CF6, $2CF8, $2CFA, $2CFC, $2CFE
	dw $2D00, $2D02, $2D04, $2D06, $2D08, $2D0A, $2D0C, $2D0E, $2D10
higashi2:
	dw $2CF5, $2CF7, $2CF9, $2CFB, $2CFD, $2CFF
	dw $2D01, $2D03, $2D05, $2D07, $2D09, $2D0B, $2D0D, $2D0F, $2D11
sabaku1:
	dw $2D12, $2D14, $2D16, $2D18, $2D1A, $2D1C, $2D1E, $2D20, $2D22, $2D24, $2D26, $2D28
sabaku2:
	dw $2D13, $2D15, $2D17, $2D19, $2D1B, $2D1D, $2D1F, $2D21, $2D23, $2D25, $2D27, $2D29
yami1:
	dw $2D2C, $2D2E, $2D30, $2D32, $2D34, $2D36, $2D38, $2D3A, $2D3C, $2D3E
	dw $2D40, $2D42, $2D44, $2D46
yami2:
	dw $2D2D, $2D2F, $2D31, $2D33, $2D35, $2D37, $2D39, $2D3B, $2D3D, $2D3F
	dw $2D41, $2D43, $2D45, $2D47
numa1:
	dw $2D48, $2D4A, $2D4C, $2D4E, $2D50, $2D52, $2D54, $2D56, $2D58, $2D5A
numa2:
	dw $2D49, $2D4B, $2D4D, $2D4F, $2D51, $2D53, $2D55, $2D57, $2D59, $2D5B
skull1:
	dw $2D5C, $2D5E, $2D60, $2D62, $2D64, $2D66, $2D68, $2D6A, $2D6C, $2D6E
	dw $2D70, $2D72, $2D74
skull2:
	dw $2D5D, $2D5F, $2D61, $2D63, $2D65, $2D67, $2D69, $2D6B, $2D6D, $2D6F
	dw $2D71, $2D73, $2D75
ice1:
	dw $2D76, $2D78, $2D7A, $2D7C, $2D7E, $2C00, $2C02, $2C04, $2C06, $2C08, $2C0A
ice2:
	dw $2D77, $2D79, $2D7B, $2D7D, $2D7F, $2C01, $2C03, $2C05, $2C07, $2C09, $2C0B
swamp1:
	dw $2D12, $2D14, $2D16, $2D18, $2D1A, $2D1C, $2D1E
	dw $2C24, $2C26, $2C28, $2C2A, $2C2C, $2C2E
swamp2:
	dw $2D13, $2D15, $2D17, $2D19, $2D1B, $2D1D, $2D1F
	dw $2C25, $2C27, $2C29, $2C2B, $2C2D, $2C2F
hera1:
	dw $2C0C, $2C0E, $2C10, $2C12, $2C14, $2C16, $2C18, $2C1A
hera2:
	dw $2C0D, $2C0F, $2C11, $2C13, $2C15, $2C17, $2C19, $2C1B
thief1:
	dw $2C1C, $2C1E, $2C40, $2C42, $2C44, $2C46, $2C48, $2C4A, $2C4C, $2C4E, $2C50
	dw $2C52, $2C54, $2C56
thief2:
	dw $2C1D, $2C1F, $2C41, $2C43, $2C45, $2C47, $2C49, $2C4B, $2C4D, $2C4F, $2C51
	dw $2C53, $2C55, $2C57
kame1:
	dw $2C58, $2C5A, $2C5C, $2C5E, $2C60, $2C62, $2C64, $2C66,$2C68
	dw $2C6A, $2C6C, $2C6E, $2C70
kame2:
	dw $2C59, $2C5B, $2C5D, $2C5F, $2C61, $2C63, $2C65, $2C67, $2C69
	dw $2C6B, $2C6D, $2C6F, $2C71
ganon1:
	dw $2C72, $2C74, $2C76, $2C78, $2C7A, $2C7C, $2C7E, $2C20, $2C22
ganon2:
	dw $2C73, $2C75, $2C77, $2C79, $2C7B, $2C7D, $2C7F, $2C21, $2C23
total1:
	dw $2880, $2882, $2884, $2886, $2888, $288A, $288C, $288E, $2890, $2892, $2894
	dw $2896, $2898, $289A, $289C, $289E, $28A0
total2:
	dw $2881, $2883, $2885, $2887, $2889, $288B, $288D, $288F, $2891, $2893, $2895
	dw $2897, $2899, $289B, $289D, $289F, $28A1
you1:
	dw $20C0, $20C2, $20C4, $20C6, $20C8, $20CA, $20CC, $20CE, $20D0, $20D2
	dw $20D4, $20D6, $20D8, $20DA, $20DC, $20DE, $20E0, $20E2, $20E4
	dw $20E6, $20E8, $20EA
you2:
	dw $20C1, $20C3, $20C5, $20C7, $20C9, $20CB, $20CD, $20CF, $20D1, $20D3
	dw $20D5, $20D7, $20D9, $20DB, $20DD, $20DF, $20E1, $20E3, $20E5
	dw $20E7, $20E9, $20EB
site1:
	dw $2D00, $2D02, $2D04, $2D06, $2D08, $2D0A, $2D0C, $2D0E
	dw $2D10, $2D12, $2D14, $2D16, $2D18, $2D1A, $2D1C, $2D1E
	dw $2D20, $2D22, $2D24, $2D26, $2D28, $2D2A, $2D2C, $2D2E
	dw $2D30, $2D32, $2D34, $2D36, $2D38, $2D3A, $2D3C, $2D3E
site2:
	dw $2D01, $2D03, $2D05, $2D07, $2D09, $2D0B, $2D0D, $2D0F
	dw $2D11, $2D13, $2D15, $2D17, $2D19, $2D1B, $2D1D, $2D1F
	dw $2D21, $2D23, $2D25, $2D27, $2D29, $2D2B, $2D2D, $2D2F
	dw $2D31, $2D33, $2D35, $2D37, $2D39, $2D3B, $2D3D, $2D3F

staff2:
	LDX #$0000
	LDA #(yamauchi1)
	STA {cont_dma_adr},x
	LDA #$0016
	STA {cont_dma_size},x
	LDA #$D0D5>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(yamauchi2)
	STA {cont_dma_adr},x
	LDA #$0016
	STA {cont_dma_size},x
	LDA #$D115>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$000E
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0400
	STA {cont_dma_size},x
	LDA #$D400>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x	
	LDA #$22
	STA $17
	LDA #$03
	STA {cont_dma_times}
	JML $8EE7C3	
staff3:
	LDX #$0000
	LDA #(staffroll_chr)
	CLC
	ADC #$0400
	STA {cont_dma_adr},x
	LDA #$0400
	STA {cont_dma_size},x
	LDA #$E400>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3
	
staff4:
	LDX #$0000
	LDA #(producer1)
	STA {cont_dma_adr},x
	LDA #$000C
	STA {cont_dma_size},x
	LDA #$D41A>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(producer2)
	STA {cont_dma_adr},x
	LDA #$000C
	STA {cont_dma_size},x
	LDA #$D45A>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$000E
	LDA #(shigeru1)
	STA {cont_dma_adr},x
	LDA #$0016
	STA {cont_dma_size},x
	LDA #$D4D5>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0015
	LDA #(shigeru2)
	STA {cont_dma_adr},x
	LDA #$0016
	STA {cont_dma_size},x
	LDA #$D515>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x	
	LDA #$22
	STA $17
	LDA #$04
	STA {cont_dma_times}
	JML $8EE7C3		

staff5:
	LDX #$0000
	LDA #(director1)
	STA {cont_dma_adr},x
	LDA #$000C
	STA {cont_dma_size},x
	LDA #$D61A>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(director2)
	STA {cont_dma_adr},x
	LDA #$000C
	STA {cont_dma_size},x
	LDA #$D65A>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$000E
	LDA #(tezuka1)
	STA {cont_dma_adr},x
	LDA #$0014
	STA {cont_dma_size},x
	LDA #$D6D6>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0015
	LDA #(tezuka2)
	STA {cont_dma_adr},x
	LDA #$0014
	STA {cont_dma_size},x
	LDA #$D716>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x	
	LDA #$22
	STA $17
	LDA #$04
	STA {cont_dma_times}
	JML $8EE7C3
staff6:
	LDX #$0000
	LDA #(staffroll_chr)
	CLC
	ADC #$0800
	STA {cont_dma_adr},x
	LDA #$0400
	STA {cont_dma_size},x
	LDA #$E800>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3	
staff7:
	LDX #$0000
	LDA #(script1)
	STA {cont_dma_adr},x
	LDA #$000C
	STA {cont_dma_size},x
	LDA #$C05A>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(script2)
	STA {cont_dma_adr},x
	LDA #$000C
	STA {cont_dma_size},x
	LDA #$C09A>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$000E
	LDA #(tanabe1)
	STA {cont_dma_adr},x
	LDA #$0014
	STA {cont_dma_size},x
	LDA #$C116>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0015
	LDA #(tanabe2)
	STA {cont_dma_adr},x
	LDA #$0014
	STA {cont_dma_size},x
	LDA #$C156>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x	
	LDA #$22
	STA $17
	LDA #$04
	STA {cont_dma_times}
	JML $8EE7C3
staff8:
	LDX #$0000
	LDA #(staffroll_chr)
	CLC
	ADC #$0C00
	STA {cont_dma_adr},x
	LDA #$0400
	STA {cont_dma_size},x
	LDA #$EC00>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3		
	
staff9:
staffa:
staffb:
staffc:
staffd:
staffe:
stafff:
staff10:
staff11:
staff12:
staff13:
staff14:
staff15:
staff16:
	SEP #$20
	JML $8EE7C3
staff17:
	LDX #$0000
	LDA #(ass1)
	STA {cont_dma_adr},x
	LDA #$0014
	STA {cont_dma_size},x
	LDA #$C316>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(ass2)
	STA {cont_dma_adr},x
	LDA #$0014
	STA {cont_dma_size},x
	LDA #$C356>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$000E
	LDA #(yamamura1)
	STA {cont_dma_adr},x
	LDA #$0018
	STA {cont_dma_size},x
	LDA #$C3D4>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0015
	LDA #(yamamura2)
	STA {cont_dma_adr},x
	LDA #$0018
	STA {cont_dma_size},x
	LDA #$C414>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x	
	LDA #$22
	STA $17
	LDA #$04
	STA {cont_dma_times}
	JML $8EE7C3	
staff18:
	LDX #$0000
	LDA #(yamada1)
	STA {cont_dma_adr},x
	LDA #$0012
	STA {cont_dma_size},x
	LDA #$C496>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(yamada2)
	STA {cont_dma_adr},x
	LDA #$0012
	STA {cont_dma_size},x
	LDA #$C4D6>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3	
staff19:
staff1a:
staff1b:
staff1c:
staff1d:
staff1e:
staff1f:
staff20:
staff21:
staff22:
	SEP #$20
	JML $8EE7C3
staff23:
	LDX #$0000
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0200
	STA {cont_dma_size},x
	LDA #$D000>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3	
staff24:
	LDX #$0000
	LDA #(graphic1)
	STA {cont_dma_adr},x
	LDA #$0020
	STA {cont_dma_size},x
	LDA #$C690>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(graphic2)
	STA {cont_dma_adr},x
	LDA #$0020
	STA {cont_dma_size},x
	LDA #$C6D0>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff25:
	LDX #$0000
	LDA #(oam1)
	STA {cont_dma_adr},x
	LDA #$0014
	STA {cont_dma_size},x
	LDA #$C756>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(oam2)
	STA {cont_dma_adr},x
	LDA #$0014
	STA {cont_dma_size},x
	LDA #$C796>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff26:
	LDX #$0000
	LDA #(staffroll_chr)
	CLC
	ADC #$1000
	STA {cont_dma_adr},x
	LDA #$0200
	STA {cont_dma_size},x
	LDA #$F000>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3	
staff27:
	LDX #$0000
	LDA #(tomita1)
	STA {cont_dma_adr},x
	LDA #$0016
	STA {cont_dma_size},x
	LDA #$D016>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(tomita2)
	STA {cont_dma_adr},x
	LDA #$0016
	STA {cont_dma_size},x
	LDA #$D056>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3

staff28:
	LDX #$0000
	LDA #(imamura1)
	STA {cont_dma_adr},x
	LDA #$0014
	STA {cont_dma_size},x
	LDA #$D0D6>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(imamura2)
	STA {cont_dma_adr},x
	LDA #$0014
	STA {cont_dma_size},x
	LDA #$D116>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff29:
staff2a:
staff2b:
staff2c:
staff2d:
staff2e:
staff2f:
staff30:
staff31:
staff32:
staff33:
	SEP #$20
	JML $8EE7C3
staff34:
	LDX #$0000
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0200
	STA {cont_dma_size},x
	LDA #$D400>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3	
staff35:
	LDX #$0000
	LDA #(staffroll_chr)
	CLC
	ADC #$1200
	STA {cont_dma_adr},x
	LDA #$0600
	STA {cont_dma_size},x
	LDA #$F200>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3		
staff36:
	LDX #$0000
	LDA #(haikei1)
	STA {cont_dma_adr},x
	LDA #$0018
	STA {cont_dma_size},x
	LDA #$D294>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(haikei2)
	STA {cont_dma_adr},x
	LDA #$0018
	STA {cont_dma_size},x
	LDA #$D2D4>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff37:
	LDX #$0000
	LDA #(arimoto1)
	STA {cont_dma_adr},x
	LDA #$0016
	STA {cont_dma_size},x
	LDA #$D354>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(arimoto2)
	STA {cont_dma_adr},x
	LDA #$0016
	STA {cont_dma_size},x
	LDA #$D394>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff38:
staff39:
staff3a:
staff3b:
staff3c:
	SEP #$20
	JML $8EE7C3
staff3d:
	LDX #$0000
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0200
	STA {cont_dma_size},x
	LDA #$D600>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3		
staff3e:
	LDX #$0000
	LDA #(watanabe1)
	STA {cont_dma_adr},x
	LDA #$0018
	STA {cont_dma_size},x
	LDA #$D412>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(watanabe2)
	STA {cont_dma_adr},x
	LDA #$0018
	STA {cont_dma_size},x
	LDA #$D452>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff3f:
	LDX #$0000
	LDA #(pro1)
	STA {cont_dma_adr},x
	LDA #$0018
	STA {cont_dma_size},x
	LDA #$D5D4>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(pro2)
	STA {cont_dma_adr},x
	LDA #$0018
	STA {cont_dma_size},x
	LDA #$D614>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff40:
	LDX #$0000
	LDA #(staffroll_chr)
	CLC
	ADC #$1800
	STA {cont_dma_adr},x
	LDA #$0600
	STA {cont_dma_size},x
	LDA #$E000>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3
staff41:
	LDX #$0000
	LDA #(nakago1)
	STA {cont_dma_adr},x
	LDA #$0018
	STA {cont_dma_size},x
	LDA #$D694>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(nakago2)
	STA {cont_dma_adr},x
	LDA #$0018
	STA {cont_dma_size},x
	LDA #$D6D4>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff42:
staff43:
	SEP #$20
	JML $8EE7C3
staff44:
	LDX #$0000
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0200
	STA {cont_dma_size},x
	LDA #$C040>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3		
staff45:
	LDX #$0000
	LDA #(main1)
	STA {cont_dma_adr},x
	LDA #$001C
	STA {cont_dma_size},x
	LDA #$C012>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(main2)
	STA {cont_dma_adr},x
	LDA #$001C
	STA {cont_dma_size},x
	LDA #$C052>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff46:
	LDX #$0000
	LDA #(soejima1)
	STA {cont_dma_adr},x
	LDA #$0016
	STA {cont_dma_size},x
	LDA #$C0D4>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(soejima2)
	STA {cont_dma_adr},x
	LDA #$0016
	STA {cont_dma_size},x
	LDA #$C114>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff47:
staff48:
staff49:
staff4a:
staff4b:
staff4c:
staff4d:
staff4e:
staff4f:
staff50:
staff51:
staff52:
staff53:
staff54:
	SEP #$20
	JML $8EE7C3
staff55:
	LDX #$0000
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0200
	STA {cont_dma_size},x
	LDA #$C300>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3		
staff56:
	LDX #$0000
	LDA #(staffroll_chr)
	CLC
	ADC #$1E00
	STA {cont_dma_adr},x
	LDA #$0600
	STA {cont_dma_size},x
	LDA #$E600>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3
staff57:
	LDX #$0000
	LDA #(tsuyoshi1)
	STA {cont_dma_adr},x
	LDA #$0018
	STA {cont_dma_size},x
	LDA #$C192>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(tsuyoshi2)
	STA {cont_dma_adr},x
	LDA #$0018
	STA {cont_dma_size},x
	LDA #$C1D2>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff58:
staff59:
	SEP #$20
	JML $8EE7C3
staff5a:
	LDX #$0000
	LDA #(sprite1)
	STA {cont_dma_adr},x
	LDA #$001C
	STA {cont_dma_size},x
	LDA #$C352>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(sprite2)
	STA {cont_dma_adr},x
	LDA #$001C
	STA {cont_dma_size},x
	LDA #$C392>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff5b:
	LDX #$0000
	LDA #(morita1)
	STA {cont_dma_adr},x
	LDA #$0014
	STA {cont_dma_size},x
	LDA #$C416>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(morita2)
	STA {cont_dma_adr},x
	LDA #$0014
	STA {cont_dma_size},x
	LDA #$C456>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
	
staff5c:
staff5d:
staff5e:
staff5f:
staff60:
	SEP #$20
	JML $8EE7C3
staff61:
	LDX #$0000
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0400
	STA {cont_dma_size},x
	LDA #$C680>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3		
staff62:
	LDX #$0000
	LDA #(other1)
	STA {cont_dma_adr},x
	LDA #$0020
	STA {cont_dma_size},x
	LDA #$C5D0>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(other2)
	STA {cont_dma_adr},x
	LDA #$0020
	STA {cont_dma_size},x
	LDA #$C610>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff63:
	LDX #$0000
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0200
	STA {cont_dma_size},x
	LDA #$D000>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3	
staff64:
	LDX #$0000
	LDA #(staffroll_chr)
	CLC
	ADC #$2400
	STA {cont_dma_adr},x
	LDA #$0400
	STA {cont_dma_size},x
	LDA #$EC00>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3
staff65:
	LDX #$0000
	LDA #(nishiyama1)
	STA {cont_dma_adr},x
	LDA #$0016
	STA {cont_dma_size},x
	LDA #$C696>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(nishiyama2)
	STA {cont_dma_adr},x
	LDA #$0016
	STA {cont_dma_size},x
	LDA #$C6D6>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff66:
	LDX #$0000
	LDA #(yamamoto1)
	STA {cont_dma_adr},x
	LDA #$0016
	STA {cont_dma_size},x
	LDA #$C756>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(yamamoto2)
	STA {cont_dma_adr},x
	LDA #$0016
	STA {cont_dma_size},x
	LDA #$C796>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff67:
	LDX #$0000
	LDA #(nomoto1)
	STA {cont_dma_adr},x
	LDA #$0018
	STA {cont_dma_size},x
	LDA #$D016>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(nomoto2)
	STA {cont_dma_adr},x
	LDA #$0018
	STA {cont_dma_size},x
	LDA #$D056>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff68:
staff69:
staff6a:
staff6b:
staff6c:
staff6d:
staff6e:
staff6f:
staff70:
	JML $8EE7C3	
staff71:
	LDX #$0000
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0200
	STA {cont_dma_size},x
	LDA #$D280>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3	
staff72:
	LDX #$0000
	LDA #(staffroll_chr)
	CLC
	ADC #$2800
	STA {cont_dma_adr},x
	LDA #$0400
	STA {cont_dma_size},x
	LDA #$F000>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3
staff73:
	LDX #$0000
	LDA #(eiji1)
	STA {cont_dma_adr},x
	LDA #$000C
	STA {cont_dma_size},x
	LDA #$D0DA>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(eiji2)
	STA {cont_dma_adr},x
	LDA #$000C
	STA {cont_dma_size},x
	LDA #$D11A>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff74:
staff75:
	LDX #$0000
	LDA #(takahata1)
	STA {cont_dma_adr},x
	LDA #$0016
	STA {cont_dma_size},x
	LDA #$D196>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(takahata2)
	STA {cont_dma_adr},x
	LDA #$0016
	STA {cont_dma_size},x
	LDA #$D1D6>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff76:
	LDX #$0000
	LDA #(iwaki1)
	STA {cont_dma_adr},x
	LDA #$0010
	STA {cont_dma_size},x
	LDA #$D258>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(iwaki2)
	STA {cont_dma_adr},x
	LDA #$0010
	STA {cont_dma_size},x
	LDA #$D298>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff77:
staff78:
staff79:
staff7a:
staff7b:
staff7c:
staff7d:
	JML $8EE7C3
staff7e:
	LDX #$0000
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0200
	STA {cont_dma_size},x
	LDA #$D5C0>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3	
staff7f:
	LDX #$0000
	LDA #(staffroll_chr)
	CLC
	ADC #$2C00
	STA {cont_dma_adr},x
	LDA #$0400
	STA {cont_dma_size},x
	LDA #$F400>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3
staff80:
	LDX #$0000
	LDA #(kasamatsu1)
	STA {cont_dma_adr},x
	LDA #$001A
	STA {cont_dma_size},x
	LDA #$D314>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(kasamatsu2)
	STA {cont_dma_adr},x
	LDA #$001A
	STA {cont_dma_size},x
	LDA #$D354>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3

staff81:
	LDX #$0000
	LDA #(nishida1)
	STA {cont_dma_adr},x
	LDA #$0016
	STA {cont_dma_size},x
	LDA #$D3D6>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(nishida2)
	STA {cont_dma_adr},x
	LDA #$0016
	STA {cont_dma_size},x
	LDA #$D416>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff82:
	LDX #$0000
	LDA #(sekishu1)
	STA {cont_dma_adr},x
	LDA #$000E
	STA {cont_dma_size},x
	LDA #$D49A>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(sekishu2)
	STA {cont_dma_adr},x
	LDA #$000E
	STA {cont_dma_size},x
	LDA #$D4DA>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff83:
staff84:
staff85:
staff86:
staff87:
staff88:
	JML $8EE7C3	
staff89:
	LDX #$0000
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0200
	STA {cont_dma_size},x
	LDA #$C000>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3	
staff8a:
	LDX #$0000
	LDA #(staffroll_chr)
	CLC
	ADC #$2E00
	STA {cont_dma_adr},x
	LDA #$0600
	STA {cont_dma_size},x
	LDA #$E000>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3	
staff8b:
	LDX #$0000
	LDA #(composer1)
	STA {cont_dma_adr},x
	LDA #$000E
	STA {cont_dma_size},x
	LDA #$D65A>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(composer2)
	STA {cont_dma_adr},x
	LDA #$000E
	STA {cont_dma_size},x
	LDA #$D69A>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff8c:
	LDX #$0000
	LDA #(kondo1)
	STA {cont_dma_adr},x
	LDA #$000E
	STA {cont_dma_size},x
	LDA #$D71A>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(kondo2)
	STA {cont_dma_adr},x
	LDA #$000E
	STA {cont_dma_size},x
	LDA #$D75A>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff8d:
	LDX #$0000
	LDA #(coo1)
	STA {cont_dma_adr},x
	LDA #$0014
	STA {cont_dma_size},x
	LDA #$C0D6>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(coo2)
	STA {cont_dma_adr},x
	LDA #$0014
	STA {cont_dma_size},x
	LDA #$C116>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff8e:
	LDX #$0000
	LDA #(kato1)
	STA {cont_dma_adr},x
	LDA #$000E
	STA {cont_dma_size},x
	LDA #$C198>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(kato2)
	STA {cont_dma_adr},x
	LDA #$000E
	STA {cont_dma_size},x
	LDA #$C1D8>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff8f:
staff90:
staff91:
staff92:
	JML $8EE7C3
staff93:
	LDX #$0000
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0200
	STA {cont_dma_size},x
	LDA #$C340>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3	
staff94:
	LDX #$0000
	LDA #(staffroll_chr)
	CLC
	ADC #$3400
	STA {cont_dma_adr},x
	LDA #$0200
	STA {cont_dma_size},x
	LDA #$E600>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3	
staff95:
	LDX #$0000
	LDA #(shimizu1)
	STA {cont_dma_adr},x
	LDA #$0012
	STA {cont_dma_size},x
	LDA #$C256>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(shimizu2)
	STA {cont_dma_adr},x
	LDA #$0012
	STA {cont_dma_size},x
	LDA #$C296>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff96:
	LDX #$0000
	LDA #(artwork1)
	STA {cont_dma_adr},x
	LDA #$0016
	STA {cont_dma_size},x
	LDA #$C414>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(artwork2)
	STA {cont_dma_adr},x
	LDA #$0016
	STA {cont_dma_size},x
	LDA #$C454>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff97:
staff98:
staff99:
staff9a:
staff9b:
staff9c:
staff9d:
staff9e:
staff9f:
	JML $8EE7C3
staffa0:
	LDX #$0000
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0200
	STA {cont_dma_size},x
	LDA #$C5C0>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3	
staffa1:
	LDX #$0000
	LDA #(staffroll_chr)
	CLC
	ADC #$3600
	STA {cont_dma_adr},x
	LDA #$0600
	STA {cont_dma_size},x
	LDA #$E800>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3	
staffa2:
	LDX #$0000
	LDA #(kotabe1)
	STA {cont_dma_adr},x
	LDA #$0012
	STA {cont_dma_size},x
	LDA #$C4D6>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(kotabe2)
	STA {cont_dma_adr},x
	LDA #$0012
	STA {cont_dma_size},x
	LDA #$C516>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staffa3:
	LDX #$0000
	LDA #(fujii1)
	STA {cont_dma_adr},x
	LDA #$0010
	STA {cont_dma_size},x
	LDA #$C598>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(fujii2)
	STA {cont_dma_adr},x
	LDA #$0010
	STA {cont_dma_size},x
	LDA #$C5D8>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staffa4:
	LDX #$0000
	LDA #(koizumi1)
	STA {cont_dma_adr},x
	LDA #$0016
	STA {cont_dma_size},x
	LDA #$C654>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(koizumi2)
	STA {cont_dma_adr},x
	LDA #$0016
	STA {cont_dma_size},x
	LDA #$C694>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staffa5:
	LDX #$0000
	LDA #(sakai1)
	STA {cont_dma_adr},x
	LDA #$0014
	STA {cont_dma_size},x
	LDA #$C716>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(sakai2)
	STA {cont_dma_adr},x
	LDA #$0014
	STA {cont_dma_size},x
	LDA #$C756>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staffa6:
	JML $8EE7C3
staffa7:
	LDX #$0000
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0200
	STA {cont_dma_size},x
	LDA #$D000>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3
staffa8:
	LDX #$0000
	LDA #(kuroume1)
	STA {cont_dma_adr},x
	LDA #$0016
	STA {cont_dma_size},x
	LDA #$C7D4>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(kuroume2)
	STA {cont_dma_adr},x
	LDA #$0016
	STA {cont_dma_size},x
	LDA #$D014>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staffa9:
staffaa:
staffab:
staffac:
staffad:
staffae:
staffaf:
	JML $8EE7C3
staffb0:
	LDX #$0000
	LDA #(staffroll_chr)
	CLC
	ADC #$3C00
	STA {cont_dma_adr},x
	LDA #$0600
	STA {cont_dma_size},x
	LDA #$EE00>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3	
staffb1:
	LDX #$0000
	LDA #(special1)
	STA {cont_dma_adr},x
	LDA #$002C
	STA {cont_dma_size},x
	LDA #$D18A>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(special2)
	STA {cont_dma_adr},x
	LDA #$002C
	STA {cont_dma_size},x
	LDA #$D1CA>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staffb2:
	LDX #$0000
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0200
	STA {cont_dma_size},x
	LDA #$D240>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3
staffb3:
	LDX #$0000
	LDA #(okajima1)
	STA {cont_dma_adr},x
	LDA #$0012
	STA {cont_dma_size},x
	LDA #$D256>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(okajima2)
	STA {cont_dma_adr},x
	LDA #$0012
	STA {cont_dma_size},x
	LDA #$D296>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staffb4:
	LDX #$0000
	LDA #(taketani1)
	STA {cont_dma_adr},x
	LDA #$001A
	STA {cont_dma_size},x
	LDA #$D314>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(taketani2)
	STA {cont_dma_adr},x
	LDA #$001A
	STA {cont_dma_size},x
	LDA #$D354>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staffb5:
	LDX #$0000
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0100
	STA {cont_dma_size},x
	LDA #$D480>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3
staffb6:
	LDX #$0000
	LDA #(staffroll_chr)
	CLC
	ADC #$4200
	STA {cont_dma_adr},x
	LDA #$0400
	STA {cont_dma_size},x
	LDA #$F400>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3	
staffb7:
	LDX #$0000
	LDA #(koda1)
	STA {cont_dma_adr},x
	LDA #$0012
	STA {cont_dma_size},x
	LDA #$D3D8>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(koda2)
	STA {cont_dma_adr},x
	LDA #$0012
	STA {cont_dma_size},x
	LDA #$D418>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staffb8:
	LDX #$0000
	LDA #(kuzuhara1)
	STA {cont_dma_adr},x
	LDA #$001A
	STA {cont_dma_size},x
	LDA #$D494>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(kuzuhara2)
	STA {cont_dma_adr},x
	LDA #$001A
	STA {cont_dma_size},x
	LDA #$D4D4>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staffb9:
	LDX #$0000
	LDA #(kakui1)
	STA {cont_dma_adr},x
	LDA #$0014
	STA {cont_dma_size},x
	LDA #$D558>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(kakui2)
	STA {cont_dma_adr},x
	LDA #$0014
	STA {cont_dma_size},x
	LDA #$D598>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staffba:
staffbb:
staffbc:
staffbd:
staffbe:
staffbf:
	JML $8EE7C3
staffc0:
	LDX #$0000
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0400
	STA {cont_dma_size},x
	LDA #$D640>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3
staffc1:
staffc2:
staffc3:
staffc4:
staffc5:
staffc6:
staffc7:
staffc8:
staffc9:
	JML $8EE7C3
staffca:
	LDX #$0000
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0200
	STA {cont_dma_size},x
	LDA #$C0C0>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3
staffcb:
	LDX #$0000
	LDA #(staffroll_chr)
	CLC
	ADC #$4600
	STA {cont_dma_adr},x
	LDA #$0600
	STA {cont_dma_size},x
	LDA #$E000>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3	
staffcc:
	LDX #$0000
	LDA #(yamashiro1)
	STA {cont_dma_adr},x
	LDA #$0018
	STA {cont_dma_size},x
	LDA #$D616>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(yamashiro2)
	STA {cont_dma_adr},x
	LDA #$0018
	STA {cont_dma_size},x
	LDA #$D656>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staffcd:
	LDX #$0000
	LDA #(beto1)
	STA {cont_dma_adr},x
	LDA #$001A
	STA {cont_dma_size},x
	LDA #$C012>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(beto2)
	STA {cont_dma_adr},x
	LDA #$001A
	STA {cont_dma_size},x
	LDA #$C052>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staffce:
staffcf:
staffd0:
staffd1:
staffd2:
staffd3:
staffd4:
staffd5:
staffd6:
staffd7:
	JML $8EE7C3
staffd8:
	LDX #$0000
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0200
	STA {cont_dma_size},x
	LDA #$C400>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3
staffd9:
	LDX #$0000
	LDA #(staffroll_chr)
	CLC
	ADC #$4C00
	STA {cont_dma_adr},x
	LDA #$0100
	STA {cont_dma_size},x
	LDA #$E600>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3	
staffda:
	LDX #$0000
	LDA #(staffroll_chr)
	CLC
	ADC #$2E00
	STA {cont_dma_adr},x
	LDA #$0100
	STA {cont_dma_size},x
	LDA #$E800>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3	
staffdb:
	LDX #$0000
	LDA #(stone1)
	STA {cont_dma_adr},x
	LDA #$000E
	STA {cont_dma_size},x
	LDA #$C0D8>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(stone2)
	STA {cont_dma_adr},x
	LDA #$000E
	STA {cont_dma_size},x
	LDA #$C118>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staffdc:
	LDX #$0000
	LDA #(yaku1)
	STA {cont_dma_adr},x
	LDA #$0022
	STA {cont_dma_size},x
	LDA #$C190>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(yaku2)
	STA {cont_dma_adr},x
	LDA #$0022
	STA {cont_dma_size},x
	LDA #$C1D0>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staffdd:
	LDX #$0000
	LDA #(yaku3)
	STA {cont_dma_adr},x
	LDA #$0018
	STA {cont_dma_size},x
	LDA #$C214>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(yaku4)
	STA {cont_dma_adr},x
	LDA #$0018
	STA {cont_dma_size},x
	LDA #$C254>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staffde:
staffdf:
staffe0:
staffe1:
staffe2:
staffe3:
staffe4:
staffe5:
staffe6:
staffe7:
staffe8:
staffe9:
staffea:
staffeb:
staffec:
staffed:
staffee:
staffef:
	JML $8EE7C3
stafff0:
	LDX #$0000
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0200
	STA {cont_dma_size},x
	LDA #$C640>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3
stafff1:
	LDX #$0000
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0200
	STA {cont_dma_size},x
	LDA #$D000>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3
stafff2:
	LDX #$0000
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0200
	STA {cont_dma_size},x
	LDA #$C640>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3
stafff3:
	LDX #$0000
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0200
	STA {cont_dma_size},x
	LDA #$D240>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3
stafff4:
stafff5:
stafff6:
stafff7:
stafff8:
stafff9:
stafffa:
stafffb:
stafffc:
stafffd:
stafffe:
	JML $8EE7C3
staffff:
	LDX #$0000
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0200
	STA {cont_dma_size},x
	LDA #$D480>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3
staff100:
	LDX #$0000
	LDA #(staffroll_chr)
	CLC
	ADC #$4B40
	STA {cont_dma_adr},x
	LDA #$00C0
	STA {cont_dma_size},x
	LDA #$FA00>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3	
staff101:
	LDX #$0000
	LDA #(staffroll_chr)
	CLC
	ADC #$4CE0
	STA {cont_dma_adr},x
	LDA #$0080
	STA {cont_dma_size},x
	LDA #$FAC0>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3	
staff102:
	LDX #$0000
	LDA #(staffroll_chr)
	CLC
	ADC #$4D60
	STA {cont_dma_adr},x
	LDA #$00A0
	STA {cont_dma_size},x
	LDA #$E900>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(staffroll_chr)
	CLC
	ADC #$4E00
	STA {cont_dma_adr},x
	LDA #$0600
	STA {cont_dma_size},x
	LDA #$EA00>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x	
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff103:
	LDX #$0000
	LDA #(shibou1)
	STA {cont_dma_adr},x
	LDA #$0028
	STA {cont_dma_size},x
	LDA #$D00C>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(shibou2)
	STA {cont_dma_adr},x
	LDA #$0028
	STA {cont_dma_size},x
	LDA #$D04C>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	
	REP #$20
	LDX #$000E
	LDA #(dungeon1)
	STA {cont_dma_adr},x
	LDA #$0020
	STA {cont_dma_size},x
	LDA #$D182>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0015
	LDA #(dungeon2)
	STA {cont_dma_adr},x
	LDA #$0020
	STA {cont_dma_size},x
	LDA #$D1C2>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$04
	STA {cont_dma_times}
	JML $8EE7C3
staff104:
	LDA #$D1BC>>1
	STA {vram_a}
	LDA $7EF3E3
	JSR write_num
	SEP #$20
	LDA #$22
	STA $17
	LDA #$06
	STA {cont_dma_times}	
	JML $8EE7C3	
staff105:
	LDX #$0000
	LDA #(hyrule1)
	STA {cont_dma_adr},x
	LDA #$0014
	STA {cont_dma_size},x
	LDA #$D242>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(hyrule2)
	STA {cont_dma_adr},x
	LDA #$0014
	STA {cont_dma_size},x
	LDA #$D282>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}	
	JML $8EE7C3	
	
staff106:
	LDA #$D27C>>1
	STA {vram_a}
	LDA $7EF3E5
	JSR write_num
	SEP #$20
	LDA #$22
	STA $17
	LDA #$06
	STA {cont_dma_times}	
	JML $8EE7C3
staff107:
	LDX #$0000
	LDA #(staffroll_chr)
	CLC
	ADC #$5400
	STA {cont_dma_adr},x
	LDA #$0800
	STA {cont_dma_size},x
	LDA #$F000>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3
staff108:
	LDX #$0000
	LDA #(higashi1)
	STA {cont_dma_adr},x
	LDA #$001E
	STA {cont_dma_size},x
	LDA #$D302>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(higashi2)
	STA {cont_dma_adr},x
	LDA #$001E
	STA {cont_dma_size},x
	LDA #$D342>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}	
	JML $8EE7C3
staff109:
	LDA #$D33C>>1
	STA {vram_a}
	LDA $7EF3E7
	JSR write_num
	SEP #$20
	LDA #$22
	STA $17
	LDA #$06
	STA {cont_dma_times}	
	JML $8EE7C3	
staff10a:
	LDX #$0000
	LDA #(sabaku1)
	STA {cont_dma_adr},x
	LDA #$0018
	STA {cont_dma_size},x
	LDA #$D3C2>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(sabaku2)
	STA {cont_dma_adr},x
	LDA #$0018
	STA {cont_dma_size},x
	LDA #$D402>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}	
	JML $8EE7C3
staff10b:
	LDA #$D3FC>>1
	STA {vram_a}
	LDA $7EF3E9
	JSR write_num
	SEP #$20
	LDA #$22
	STA $17
	LDA #$06
	STA {cont_dma_times}	
	JML $8EE7C3	
staff10c:
	LDX #$0000
	LDA #(yami1)
	STA {cont_dma_adr},x
	LDA #$001C
	STA {cont_dma_size},x
	LDA #$D482>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(yami2)
	STA {cont_dma_adr},x
	LDA #$001C
	STA {cont_dma_size},x
	LDA #$D4C2>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}	
	JML $8EE7C3
staff10d:
	LDA #$D4BC>>1
	STA {vram_a}
	LDA $7EF3EF
	JSR write_num
	SEP #$20
	LDA #$22
	STA $17
	LDA #$06
	STA {cont_dma_times}	
	JML $8EE7C3	
staff10e:
	LDX #$0000
	LDA #(numa1)
	STA {cont_dma_adr},x
	LDA #$0014
	STA {cont_dma_size},x
	LDA #$D542>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(numa2)
	STA {cont_dma_adr},x
	LDA #$0014
	STA {cont_dma_size},x
	LDA #$D582>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}	
	JML $8EE7C3
staff10f:
	LDA #$D57C>>1
	STA {vram_a}
	LDA $7EF3F1
	JSR write_num
	SEP #$20
	LDA #$22
	STA $17
	LDA #$06
	STA {cont_dma_times}	
	JML $8EE7C3
staff110:
	LDX #$0000
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0400
	STA {cont_dma_size},x
	LDA #$C000>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3
staff111:
	LDX #$0000
	LDA #(skull1)
	STA {cont_dma_adr},x
	LDA #$001A
	STA {cont_dma_size},x
	LDA #$D602>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(skull2)
	STA {cont_dma_adr},x
	LDA #$001A
	STA {cont_dma_size},x
	LDA #$D642>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}	
	JML $8EE7C3
staff112:
	LDA #$D63C>>1
	STA {vram_a}
	LDA $7EF3F3
	JSR write_num
	SEP #$20
	LDA #$22
	STA $17
	LDA #$06
	STA {cont_dma_times}	
	JML $8EE7C3
staff113:
	LDX #$0000
	LDA #(staffroll_chr)
	CLC
	ADC #$5C00
	STA {cont_dma_adr},x
	LDA #$0200
	STA {cont_dma_size},x
	LDA #$E000>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3
staff114:
	LDX #$0000
	LDA #(ice1)
	STA {cont_dma_adr},x
	LDA #$0016
	STA {cont_dma_size},x
	LDA #$D6C2>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(ice2)
	STA {cont_dma_adr},x
	LDA #$0016
	STA {cont_dma_size},x
	LDA #$D702>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}	
	JML $8EE7C3
staff115:
	LDA #$D6FC>>1
	STA {vram_a}
	LDA $7EF3F5
	JSR write_num
	SEP #$20
	LDA #$22
	STA $17
	LDA #$06
	STA {cont_dma_times}	
	JML $8EE7C3
staff116:
	LDX #$0000
	LDA #(staffroll_chr)
	CLC
	ADC #$6200
	STA {cont_dma_adr},x
	LDA #$0200
	STA {cont_dma_size},x
	LDA #$E200>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3
staff117:
	LDX #$0000
	LDA #(swamp1)
	STA {cont_dma_adr},x
	LDA #$001A
	STA {cont_dma_size},x
	LDA #$D782>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(swamp2)
	STA {cont_dma_adr},x
	LDA #$001A
	STA {cont_dma_size},x
	LDA #$D7C2>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}	
	JML $8EE7C3

staff118:
	LDA #$D7BC>>1
	STA {vram_a}
	LDA $7EF3ED
	JSR write_num
	SEP #$20
	LDA #$22
	STA $17
	LDA #$06
	STA {cont_dma_times}	
	JML $8EE7C3
staff119:
	LDX #$0000
	LDA #(staffroll_chr)
	CLC
	ADC #$5E00
	STA {cont_dma_adr},x
	LDA #$0400
	STA {cont_dma_size},x
	LDA #$E400>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3
staff11a:
	LDX #$0000
	LDA #(hera1)
	STA {cont_dma_adr},x
	LDA #$0010
	STA {cont_dma_size},x
	LDA #$C042>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(hera2)
	STA {cont_dma_adr},x
	LDA #$0010
	STA {cont_dma_size},x
	LDA #$C082>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}	
	JML $8EE7C3
staff11b:
	LDA #$C07C>>1
	STA {vram_a}
	LDA $7EF3F7
	JSR write_num
	SEP #$20
	LDA #$22
	STA $17
	LDA #$06
	STA {cont_dma_times}	
	JML $8EE7C3
staff11c:
	LDX #$0000
	LDA #(thief1)
	STA {cont_dma_adr},x
	LDA #$001C
	STA {cont_dma_size},x
	LDA #$C102>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(thief2)
	STA {cont_dma_adr},x
	LDA #$001C
	STA {cont_dma_size},x
	LDA #$C142>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}	
	JML $8EE7C3
staff11d:
	LDA #$C13C>>1
	STA {vram_a}
	LDA $7EF3F9
	JSR write_num
	SEP #$20
	LDA #$22
	STA $17
	LDA #$06
	STA {cont_dma_times}	
	JML $8EE7C3
staff11e:
	LDX #$0000
	LDA #(kame1)
	STA {cont_dma_adr},x
	LDA #$001A
	STA {cont_dma_size},x
	LDA #$C1C2>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(kame2)
	STA {cont_dma_adr},x
	LDA #$001A
	STA {cont_dma_size},x
	LDA #$C202>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}	
	JML $8EE7C3
staff11f:
	LDA #$C1FC>>1
	STA {vram_a}
	LDA $7EF3FB
	JSR write_num
	SEP #$20
	LDA #$22
	STA $17
	LDA #$06
	STA {cont_dma_times}	
	JML $8EE7C3
staff120:
	LDX #$0000
	LDA #(ganon1)
	STA {cont_dma_adr},x
	LDA #$0012
	STA {cont_dma_size},x
	LDA #$C282>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(ganon2)
	STA {cont_dma_adr},x
	LDA #$0012
	STA {cont_dma_size},x
	LDA #$C2C2>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}	
	JML $8EE7C3
staff121:
	LDA #$C2BC>>1
	STA {vram_a}
	LDA $7EF3FD
	JSR write_num
	SEP #$20
	LDA #$22
	STA $17
	LDA #$06
	STA {cont_dma_times}	
	JML $8EE7C3
staff122:
staff123:
staff124:
staff125:
staff126:
staff127:
staff128:
staff129:
staff12a:
staff12b:
staff12c:
staff12d:
staff12e:
	JML $8EE7C3
staff12f:
	LDX #$0000
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0300
	STA {cont_dma_size},x
	LDA #$D000>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3
staff130:
	LDX #$0000
	LDA #(staffroll_chr)
	CLC
	ADC #$6300
	STA {cont_dma_adr},x
	LDA #$0100
	STA {cont_dma_size},x
	LDA #$E800>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(staffroll_chr)
	CLC
	ADC #$6400
	STA {cont_dma_adr},x
	LDA #$0140
	STA {cont_dma_size},x
	LDA #$E900>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(staffroll_chr>>16)
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}
	JML $8EE7C3
staff131:
	LDX #$0000
	LDA #(total1)
	STA {cont_dma_adr},x
	LDA #$0022
	STA {cont_dma_size},x
	LDA #$C38C>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(total2)
	STA {cont_dma_adr},x
	LDA #$0022
	STA {cont_dma_size},x
	LDA #$C3CC>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}	
	JML $8EE7C3
staff132:
	LDA #$C3B4>>1
	STA {vram_a}
	LDA $7EF401
	JSR write_num
	SEP #$20
	LDA #$22
	STA $17
	LDA #$06
	STA {cont_dma_times}	
	JML $8EE7C3
staff133:
	LDX #$0000
	LDA #(you_chr)
	STA {cont_dma_adr},x
	LDA #$0400
	STA {cont_dma_size},x
	LDA #$EC00>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(you_chr>>16)
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}	
	JML $8EE7C3
staff134:
staff135:
staff136:
staff137:
staff138:
staff139:
staff13a:
staff13b:
staff13c:
staff13d:
staff13e:
staff13f:
staff140:
staff141:
staff142:
staff143:
staff144:
staff145:
staff146:
	JML $8EE7C3
staff147:
	LDX #$0000
	LDA #(you1)
	STA {cont_dma_adr},x
	LDA #$002C
	STA {cont_dma_size},x
	LDA #$D20A>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(you2)
	STA {cont_dma_adr},x
	LDA #$002C
	STA {cont_dma_size},x
	LDA #$D24A>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}	
	JML $8EE7C3
staff148:
	LDX #$0000
	LDA #(site_chr)
	STA {cont_dma_adr},x
	LDA #$0400
	STA {cont_dma_size},x
	LDA #$F000>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA.b #(you_chr>>16)
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}	
	JML $8EE7C3
staff149:
	LDX #$0000
	LDA #$9900
	STA {cont_dma_adr},x
	LDA #$0400
	STA {cont_dma_size},x
	LDA #$D300>>1
	STA {cont_dma_vram},x
	SEP #$20
	LDA #$7F
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$01
	STA {cont_dma_times}
	JML $8EE7C3

staff14a:
	LDX #$0000
	LDA #(site1)
	STA {cont_dma_adr},x
	LDA #$0040
	STA {cont_dma_size},x
	LDA #$D2C0>>1
	STA {cont_dma_vram},x
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	REP #$20
	LDX #$0007
	LDA #(site2)
	STA {cont_dma_adr},x
	LDA #$0040
	STA {cont_dma_size},x
	LDA #$D300>>1
	STA {cont_dma_vram},x	
	SEP #$20
	PHK
	PLA
	STA {cont_dma_bank},x
	LDA #$22
	STA $17
	LDA #$02
	STA {cont_dma_times}	
	JML $8EE7C3
staff14b:
staff14c:
staff14d:
staff14e:
staff14f:
staff150:
staff151:
staff152:
staff153:
staff154:
staff155:
staff156:
staff157:
staff158:
staff159:
staff15a:
staff15b:
staff15c:
staff15d:
staff15e:
staff15f:
	SEP #$20
	JML $8EE7C3
	
write_num:
	PHA
	LDA #$0000
	STA {save_x}
	PLA
	CMP #$03E7	//999
	BCC +
	LDA #$0009
	JSR digit_shori
	LDA #$000E
	STA {save_x}
	DEC {vram_a}
	LDA #$0009
	JSR digit_shori
	LDA #$001C
	STA {save_x}
	DEC {vram_a}
	LDA #$0009
	JSR digit_shori
	RTS
+	
	STA $4204
	SEP #$20
	LDA #$0A
	STA $4206
	REP #$20
	NOP #5
	LDA $4216
	JSR digit_shori
	LDA #$000E
	STA {save_x}
	DEC {vram_a}
	LDA $4214
	STA $4204
	SEP #$20
	LDA #$0A
	STA $4206
	REP #$20
	NOP #5
	LDA $4216
	JSR digit_shori
	LDA #$001C
	STA {save_x}
	DEC {vram_a}
	LDA $4214
	JSR digit_shori
	RTS

	
digit_shori:
	ASL
	TAX
	JMP (digit,x)
	
digit:
	dw digit0
	dw digit1
	dw digit2
	dw digit3
	dw digit4
	dw digit5
	dw digit6
	dw digit7
	dw digit8
	dw digit9
	
digit0:
	LDA #(zero)
	BRA write_digit
digit1:
	LDA #(one)
	BRA write_digit
digit2:
	LDA #(two)
	BRA write_digit
digit3:
	LDA #(three)
	BRA write_digit
digit4:
	LDA #(four)
	BRA write_digit
digit5:
	LDA #(five)
	BRA write_digit
digit6:
	LDA #(six)
	BRA write_digit
digit7:
	LDA #(seven)
	BRA write_digit
digit8:
	LDA #(eight)
	BRA write_digit
digit9:
	LDA #(nine)
	BRA write_digit
	
write_digit:
	LDX {save_x}
	STA {cont_dma_adr},x
	CLC
	ADC #$0002
	STA.w {cont_dma_adr}+7,x
	LDA #$0002
	STA.w {cont_dma_size},x
	STA.w {cont_dma_size}+7,x
	SEP #$20
	PHK
	PLA
	STA.w {cont_dma_bank},x
	STA.w {cont_dma_bank}+7,x
	REP #$20
	LDA {vram_a}
	STA.w {cont_dma_vram},x
	CLC
	ADC #$0020
	STA.w {cont_dma_vram}+7,x
	RTS
	
zero:
	dw $25A0, $25A1
one:
	dw $25A2, $25A3
two:
	dw $25A4, $25A5
three:
	dw $25A6, $25A7
four:
	dw $25A8, $25A9
five:
	dw $25AA, $25AB
six:
	dw $25AC, $25AD
seven:
	dw $25AE, $25AF
eight:
	dw $25B0, $25B1
nine:
	dw $25B2, $25B3
	
scroll_shori2:
	LDA {current_scroll}
	CMP {scroll_flag2}
	BCC +
	JMP _a11
+
	LDA #$0000
	TAY
	LDA #$0002
	TAX
-
	LDA $8000,x
	STA $8000,y
	LDA $8002,x
	STA $8002,y
	LDA $8004,x
	STA $8004,y
	LDA $8006,x
	STA $8006,y
	LDA $8008,x
	STA $8008,y
	LDA $800A,x
	STA $800A,y
	LDA $800C,x
	STA $800C,y
	LDA $800E,x
	STA $800E,y
	LDA $8010,x
	STA $8010,y
	LDA $8012,x
	STA $8012,y
	LDA $8014,x
	STA $8014,y
	LDA $8016,x
	STA $8016,y
	LDA $8018,x
	STA $8018,y
	LDA $801A,x
	STA $801A,y
	LDA $801C,x
	STA $801C,y
	LDA $8340,y
	STA $801E,y
	LDA $8340,x
	STA $8340,y
	LDA $8342,x
	STA $8342,y
	LDA $8344,x
	STA $8344,y
	LDA $8346,x
	STA $8346,y
	LDA $8348,x
	STA $8348,y
	LDA $834A,x
	STA $834A,y
	LDA $834C,x
	STA $834C,y
	LDA $834E,x
	STA $834E,y
	LDA $8350,x
	STA $8350,y
	LDA $8352,x
	STA $8352,y
	LDA $8354,x
	STA $8354,y
	LDA $8356,x
	STA $8356,y
	LDA $8358,x
	STA $8358,y
	LDA $835A,x
	STA $835A,y
	LDA $835C,x
	STA $835C,y
	LDA $8680,y
	STA $835E,y
	LDA $8680,x
	STA $8680,y
	LDA $8682,x
	STA $8682,y
	LDA $8684,x
	STA $8684,y
	LDA $8686,x
	STA $8686,y
	LDA $8688,x
	STA $8688,y
	LDA $868A,x
	STA $868A,y
	LDA $868C,x
	STA $868C,y
	LDA $868E,x
	STA $868E,y
	LDA $8690,x
	STA $8690,y
	LDA $8692,x
	STA $8692,y
	LDA $8694,x
	STA $8694,y
	LDA $8696,x
	STA $8696,y
	LDA $8698,x
	STA $8698,y
	LDA $869A,x
	STA $869A,y
	LDA $869C,x
	STA $869C,y
	LDA #$0000
	STA $869E,y
	TYA
	CLC
	ADC #$0020
	TAY
	CLC
	ADC #$0002
	TAX
	CMP #$0342
	BEQ +
	JMP -
+
	INC {current_scroll}
	CLC
	RTL
_a11:	
	SEC
	RTL
	
kaikin:
	LDA [$02]
	ORA $C731,y
	STA [$02]
	PHX
	TXA
	ASL
	TAX
	REP #$20
	LDA $00
	STA $0BC0,x
	SEP #$20
	PLX
	LDA {kindan}
	CMP #$FF
	BNE +
	STZ $0E20,x
	JML $89C7CA
+
	LDA [$05]
	DEC
	STA $0E20,x
	JML $89C7CA
	