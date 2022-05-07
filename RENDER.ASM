; =============================================================================
; Render game frame 
; =============================================================================
;  (C) 2022 Manoel Neto - tremyen@gmail.com
; =============================================================================
Render:
  ; =========================================
  ; Move Hero 
  ; =========================================
  ld a,(HeroXPos)
  ld c,a                ; C => Coordenada X
  ld a,(HeroYPos)
  ld b,a                ; B => Coordenada Y  
  ld a,0                ; A => Sprite a ser movido (tabela de atributos)
  call MoveSprite  
  ; =========================================
  ; Frame Adjustment
  ; =========================================
  xor a 						  ; zero A
  ld (JIFFY),a				; zero o incremento do VDP
  ld a,(vdpCycle1)		; carrego 1/10s
  ld b,a						  ; carrego 1/10s em b
  call PauseVDP       ; aguardo 1/10s
ret
; =============================================================================