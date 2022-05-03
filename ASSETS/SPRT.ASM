; ========================================
; SPRT.ASM
; ========================================
; (C) 2022 Manoel Neto - tremyen@gmail.com
; Definicao dos sprites usados no jogo
; ========================================

; ========================================
; TAMANHO TOTAL DA TABELA DE SPRITES 
; ========================================
SPRITETABLESIZE:        EQU 32

; ========================================
; DEFINICAO DOS SPRITES  
; ========================================
SPRITES: 
    ; --- Slot 0
    ; color 10
    DB $00,$00,$1F,$3F,$7F,$7F,$7F,$7F
    DB $7F,$7F,$7F,$7F,$7F,$3F,$1F,$00
    DB $00,$00,$F8,$FC,$FE,$FE,$FE,$FE
    DB $FE,$FE,$FE,$FE,$FE,$FC,$F8,$00
; ========================================
