; =============================================================================
; Collision Detection
; =============================================================================
; (C) 2022 Manoel Neto - tremyen@gmail.com
; =============================================================================
ColisionDetection:
    ld a,(HeroXPos)         ; Get Hero position
    cp 240                  ; check if hit boundary (right)
    jp nc,InvertX           ; invert x velocity signal 
    cp 2                    ; Check if hit boundary (left)
    jp c,InvertX            ; invert x velocity signal
    jp CheckY               ; Check axis Y collision 
    ; ========================================
InvertX:   
    ld a,(HeroXVel)         ; get velocity 
    neg                     ; inverts signal
    ld (HeroXVel),a         ; set velocity
CheckY:
    ld a,(HeroYPos)         ; Get Hero Y position
    cp 176                  ; check if hit boundary (botton)
    jp nc,InvertY           ; invert Y velocity signal 
    cp 2                    ; Check if hit boundary (top)
    jp c,InvertY            ; invert x velocity signal
    jp EndDetection         ; End Updating
InvertY:   
    ld a,(HeroYVel)         ; get velocity 
    neg                     ; inverts signal
    ld (HeroYVel),a         ; Set velocity 
EndDetection:
ret
; =============================================================================