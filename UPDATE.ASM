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

SpriteLeft:

    ; ========================================
    ; Decide if its moving left or right 
    ; ========================================
    ld a,(HeroXVel)         ; Get hero x velocity
    bit 7,a                 ; if its a negative, is going left 
    jp z,SpriteRight        ; set left sprites
    ; ========================================

    ; ========================================
    ; Set Hero animation sprite left
    ; ========================================
    ld a,(HeroFlags)
    set 0,a
    ld (HeroFlags),a
    jp SpriteDown
    ; ========================================

SpriteRight:   

    ; ========================================
    ; Set Hero animation sprite right
    ; ========================================
    ld a,(HeroFlags)
    res 0,a
    ld (HeroFlags),a
    ; ========================================

SpriteDown:

    ; ========================================
    ; Decide if its moving up or down 
    ; ========================================
    ld a,(HeroYVel)         ; Get hero x velocity
    bit 7,a                 ; if its a negative, is going up 
    jp z,SpriteUp           ; set left sprites
    ; ========================================

    ; ========================================
    ; Set Hero animation sprite down
    ; ========================================
    ld a,(HeroFlags)
    set 1,a
    ld (HeroFlags),a
    jp SetAnimationSprite
    ; ========================================

SpriteUp:

    ; ========================================
    ; Set Hero animation sprite up
    ; ========================================
    ld a,(HeroFlags)
    res 1,a
    ld (HeroFlags),a
    ; ========================================

SetAnimationSprite:

    ; ========================================
    ; HeroFlags
    ; ========================================
    ; xxxxxx00 -> Up / Righ
    ; XXXXXX01 -> Up / Left
    ; XXXXXX10 -> Down / Right
    ; XXXXXX11 -> Down / Left
    ; ========================================
    ld a,(HeroFlags)
    cp 0
    jp z, UpRight
    cp 1
    jp z, UpLeft
    cp 2
    jp z, DownRight
    cp 3
    jp z, DownLeft
UpRight:
    ld a,0
    ld (HeroSprite1),a
    ld a,1
    ld (HeroSprite2),a    
    jp CollisionTest
UpLeft:
    ld a,2
    ld (HeroSprite1),a
    ld a,3
    ld (HeroSprite2),a 
    jp CollisionTest
DownRight:
    ld a,4
    ld (HeroSprite1),a
    ld a,5
    ld (HeroSprite2),a 
    jp CollisionTest
DownLeft:
    ld a,6
    ld (HeroSprite1),a
    ld a,7
    ld (HeroSprite2),a    
CollisionTest:
    ; ========================================
    ; Detect Colisions
    ; ========================================
    call ColisionDetection
    ; ========================================
ret