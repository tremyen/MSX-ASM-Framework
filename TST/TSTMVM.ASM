LeftRightMove:
    ld a,0
    call ReadSprite
    ld a,e
    cp 15
    jp c,LoopLeft
    cp 240
    jp nc,LoopRight
LoopRight:
    ld a,1 
    jp MoveDirection
LoopLeft:
    ld a,-1
MoveDirection:   
    add a,e
    ld e,a
    ld a,0  ; A => Sprite a ser movido (tabela de atributos)
    ld b,98 ; B => Coordenada Y
    ld c,e  ; C => Coordenada X
    call MoveSprite
ret

