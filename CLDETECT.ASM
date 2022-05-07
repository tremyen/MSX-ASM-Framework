; =============================================================================
; Colision Detection
; =============================================================================
; (C) 2022 Manoel Neto - tremyen@gmail.com
; =============================================================================
ColisionDetection:
    ld a,(HeroXPos)         ; Get Hero position
    cp 240                  ; check if hit boundary (right)
    jp nc,Invert            ; invert velocity signal 
    cp 2                    ; Check if hit boundary (left)
    jp c,Invert             ; invert velocity signal
    jp EndDetection         ; End Updating 
    ; ========================================
Invert:   
    ld a,(HeroVelocity)     ; get velocity 
    neg                     ; inverts signal
    ld (HeroVelocity),a     ; Set velocity 
    jp EndDetection         ; End Updating
EndDetection:
ret
; =============================================================================