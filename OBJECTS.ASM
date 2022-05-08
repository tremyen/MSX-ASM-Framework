; ========================================
; OBJECTS.ASM
; ========================================
; (C) 2022 Manoel Neto - tremyen@gmail.com
; ========================================
PutObjects:
    ; ========================================
    ; Place Hero
    ; ========================================    
    ld a,98
    ld (HeroYPos),a         ; Set hero initial y
    ld a,127 
    ld (HeroXPos),a         ; Set hero initial x
    ld a,3
    ld (HeroXVel),a         ; Set hero initial x velocity
    ld (HeroYVel),a         ; Set hero initial y velocity
    ; ========================================
    ld a,(HeroYPos)
    ld d,a                  ; D => posicao Y
    ld a,(HeroXPos)
    ld e,a                  ; E => posicao X
    ld b,0                  ; B => Numero do sprite na tabela de sprites
    ld c,10                 ; C => Early / Cor
    ld a,0                  ; A => Numero do Sprite na tabela de atributos
    call PutSprite
    ; ========================================   
ret
; ========================================