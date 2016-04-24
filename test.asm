	.bank 0 ; main
	.org $8000

PPU_Setup:

	LDA #%10010011 ; PPU setup with mostly regular stuff
	STA $2000
	LDA #%00011111 : also mostly regular PPU config
	STA $2001
	RTS



	.bank 1 ;interrupt stuff
	.org $FFFA

	.dw 0 ; apparently, location of NMI Interrupt
	.dw Start ; when reset


	.bank2 ; VROM
	.org $0000

	; .incbin "sprites.bin" example