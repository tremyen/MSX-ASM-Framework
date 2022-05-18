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
    ld a,0                  ;
    ld (HeroSprite1),a      ; Initial hero sprites 
    ld a,1                  ;
    ld (HeroSprite2),a      ; Initial hero sprites
    ; ========================================

ret
; ========================================