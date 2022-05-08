; =============================================================================
; Update objects states
; =============================================================================
; (C) 2022 Manoel Neto - tremyen@gmail.com
; =============================================================================
UpdateState:
    ; ========================================
    ; Set Hero position X
    ; ========================================
    ld a,(HeroXPos)         ; Get hero position
    ld b,a                  ; Save position
    ld a,(HeroXVel)         ; Get hero velocity
    add a,b                 ; Add velocity to position
    ld (HeroXPos),a         ; Set new hero position
    ; ========================================

    ; ========================================
    ; Set Hero position y
    ; ========================================
    ld a,(HeroYPos)         ; Get hero position
    ld b,a                  ; Save position
    ld a,(HeroYVel)         ; Get hero velocity
    add a,b                 ; Add velocity to position
    ld (HeroYPos),a         ; Set new hero position
    ; ========================================
    
    ; ========================================
    ; Detect Colisions
    ; ========================================
    call ColisionDetection
    ; ========================================
ret