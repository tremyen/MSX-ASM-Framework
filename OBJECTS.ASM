; ========================================
; OBJECTS.ASM
; ========================================
; (C) 2022 Manoel Neto - tremyen@gmail.com
; ========================================
PutObjects:
    ; ========================================
    ; Place Hero
    ; ========================================    
    ld a,90
    ld (HeroYPos),a
    ld a,127 
    ld (HeroXPos),a
    ld a,1
    ld (HeroVelocity),a
    
    ld d,(HeroYPos)     ; D => posicao Y
    ld e,(HeroXPos)     ; E => posicao X
    ld b,0              ; B => Numero do sprite na tabela de sprites
    ld c,10             ; C => Early / Cor
    ld a,0              ; A => Numero do Sprite na tabela de atributos
    PutSprite
    ; ========================================   
ret
; ========================================