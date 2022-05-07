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
    cp 240                  ; check if hit boundary
    jp z,MoveLeft           ; Set velocity to left 
    cp 15                   ; Check if hit boundary
    jp z,MoveRight          ; Set velocity to left
    jp EndUpdate            ; End Updating 
    ; ========================================
MoveLeft:   
    ld a,-1                 ; Set velocity to left
    ld (HeroVelocity),a     ; Set velocity to left
    jp EndUpdate            ; End Updating
MoveRight:
    ld a,1                  ; Set velocity to left
    ld (HeroVelocity),a     ; Set velocity to left
    jp EndUpdate            ; End Updating
EndUpdate:
ret