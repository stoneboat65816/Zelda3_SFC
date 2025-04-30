arch snes.cpu
lorom

org $8000
	JML $9FFF80
	
org $9FFF80
	LDA #$01
	STA $00420D
	STZ $4200
	STZ $420C
	STZ $420B
	JML $00800A

org $09857A
	db $04  //master sword
	
org $0780F7
	NOP
	NOP
	NOP
	NOP
	
org $07AE59
	JML blink1
	
org $078739
	JML blink2
	
org $0787FF
	JML blink3
	
org $09ACB5
	JML blink4
	
org $9FFF50
blink1:
	LDA #$1E
	STA $037B
	STZ $55
	JML $07AE5E
	
blink2:
	LDA #$1E
	STA $037B
	LDA $5D
	JML $07873E
	
blink3:
	LDA #$1E
	STA $037B
	STZ $0360
	JML $078805
	
blink4:
	LDA #$1E
	STA $037B
	STZ $037A
	JML $09ACB8