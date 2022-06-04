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
    ; Decide if its moving left or right 
    ; ========================================
    ld a,(HeroXVel)         ; Get hero x velocity
    bit 7,a                 ; if its a negative, is going left 
    jp z,SpriteLeft         ; set left sprites
    ; ========================================

    ; ========================================
    ; Set Hero animation sprite right
    ; ========================================
    ld a,0                  ; set right sprite 1
    ld (HeroSprite1),a      ;
    ld a,1                  ; set right sprite 2
    ld (HeroSprite2),a      ;
    jp DesenharSprite
    ; ========================================
SpriteLeft:    
    ; ========================================
    ; Set Hero animation sprite left 
    ; ========================================
    ld a,2                  ; set right sprite 1
    ld (HeroSprite1),a      ;
    ld a,3                  ; set right sprite 2
    ld (HeroSprite2),a      ;
    ; ========================================
DesenharSprite:
  	
    
    ; ========================================
    ; Detect Colisions
    ; ========================================
    call ColisionDetection
    ; ========================================
ret