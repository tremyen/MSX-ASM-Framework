; ========================================
; TSTSCR.ASM
; ========================================
; (C) 2022 Manoel Neto - tremyen@gmail.com
; Test puting a sprite 
; ========================================
TSTSCR:
    ld a,0      ; A => Numero do Sprite na tabela de atributos
    ld d,98     ; D => posicao Y
    ld e,127    ; E => posicao X
    ld b,0      ; B => Numero do sprite na tabela de sprites
    ld c,10     ; C => Early / Cor
    call PutSprite
ret