; =============================================================================
; Render game frame 
; =============================================================================
;  (C) 2022 Manoel Neto - tremyen@gmail.com
; =============================================================================
Render:
  ; =========================================
  ; Move Hero 
  ; =========================================
  ;=============================
  	; Coloca Sprite cor 8
  	;=============================
    ld a,(HeroYPos)
    ld d,a                  ; D => posicao Y
    ld a,(HeroXPos)
    ld e,a                  ; E => posicao X
    ld a,0 
    ld b,a                  ; B => Numero do sprite na tabela de sprites
    ld c,8                  ; C => Early / Cor
	ld a,(HeroSprite1)      ; A => Numero do Sprite na tabela de atributos
  	call PutSprite
	;=============================
 	; Coloca Sprite cor 15
 	;=============================
    ld a,(HeroYPos)
    ld d,a                  ; D => posicao Y
    ld a,(HeroXPos)
    ld e,a                  ; E => posicao X
    ld a,4  
    ld b,a                  ; B => Numero do sprite na tabela de sprites
  	ld c,15                 ; C => Early / Cor
	ld a,(HeroSprite2)      ; A => Numero do Sprite na tabela de atributos
    call PutSprite
    ; ============================
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