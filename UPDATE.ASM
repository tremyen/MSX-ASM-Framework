; =============================================================================
; Update objects states
; =============================================================================
; (C) 2022 Manoel Neto - tremyen@gmail.com
; =============================================================================
UpdateState:
    ; ========================================
    ; Set Hero position
    ; ========================================
    ld a,(HeroXPos)         ; Get hero position
    ld b,a                  ; Save position
    ld a,(HeroVelocity)     ; Get hero velocity
    add a,b                 ; Add velocity to position
    ld (HeroXPos),a         ; Set new hero position
    ; ========================================
    ; Set Hero position
    ; ========================================
    call ColisionDetection
ret