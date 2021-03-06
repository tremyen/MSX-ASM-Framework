; ========================================
; SPRT.ASM
; ========================================
; (C) 2022 Manoel Neto - tremyen@gmail.com
; Definicao dos sprites usados no jogo
; ========================================

; ========================================
; TAMANHO TOTAL DA TABELA DE SPRITES 
; ========================================
SPRITETABLESIZE:        EQU 256

; ========================================
; DEFINICAO DOS SPRITES  
; each sprite is a block of 32b 8X4
; ========================================
SPRITES: 
    ; --- Slot 0
    ; --- Up / Right
    ; color 8
    DB $0F,$1F,$3F,$7F,$FF,$FF,$FF,$FE  
    DB $FD,$FB,$F7,$FF,$7F,$3F,$1F,$0F
    DB $F0,$F8,$FC,$FE,$1F,$9F,$5F,$FF
    DB $FF,$FF,$FF,$FF,$FE,$FC,$F8,$F0
    ; --- Slot 1
    ; color 15
    DB $00,$00,$00,$00,$00,$00,$00,$01
    DB $02,$04,$08,$00,$00,$00,$00,$00
    DB $00,$00,$00,$00,$E0,$60,$A0,$00
    DB $00,$00,$00,$00,$00,$00,$00,$00
    ; --- Slot 2
    ; --- Seta cima esquerda
    ; color 8
    DB $0F,$1F,$3F,$7F,$FF,$F1,$F3,$F5
    DB $FE,$FF,$FF,$FF,$7F,$3F,$1F,$0F
    DB $F0,$F8,$FC,$FE,$FF,$FF,$FF,$FF
    DB $FF,$7F,$BF,$DF,$FE,$FC,$F8,$F0
    ; --- Slot 3
    ; color 15
    DB $00,$00,$00,$00,$00,$0E,$0C,$0A
    DB $01,$00,$00,$00,$00,$00,$00,$00
    DB $00,$00,$00,$00,$00,$00,$00,$00
    DB $00,$80,$40,$20,$00,$00,$00,$00
    ; --- Slot 4
    ; --- Seta baixo direita 
    ; color 8
    DB $0F,$1F,$3F,$7F,$F7,$FB,$FD,$FE
    DB $FF,$FF,$FF,$FF,$7F,$3F,$1F,$0F
    DB $F0,$F8,$FC,$FE,$FF,$FF,$FF,$FF
    DB $7F,$BF,$D7,$E7,$C6,$FC,$F8,$F0
    ; --- Slot 5
    ; color 15
    DB $00,$00,$00,$00,$08,$04,$02,$01
    DB $00,$00,$00,$00,$00,$00,$00,$00
    DB $00,$00,$00,$00,$00,$00,$00,$00
    DB $80,$40,$28,$18,$38,$00,$00,$00
    ; --- Slot 6
    ; --- Seta baixo esquerda
    ; color 8
    DB $0F,$1F,$3F,$7F,$FF,$FF,$FF,$FF
    DB $FE,$FD,$EB,$E7,$63,$3F,$1F,$0F
    DB $F0,$F8,$FC,$FE,$EF,$DF,$BF,$7F
    DB $FF,$FF,$FF,$FF,$FE,$FC,$F8,$F0
    ; --- Slot 7
    ; color 15
    DB $00,$00,$00,$00,$00,$00,$00,$00
    DB $01,$02,$14,$18,$1C,$00,$00,$00
    DB $00,$00,$00,$00,$10,$20,$40,$80
    DB $00,$00,$00,$00,$00,$00,$00,$00
; ========================================
