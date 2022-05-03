; =============================================================================
;  <NomeDoJogo> 1.0
; =============================================================================
;  (C) 2022 Manoel Neto - tremyen@gmail.com
; =============================================================================
__VERSION:  equ 1
__RELEASE:  equ 0
include "Hardware\BIOSMSX.ASM"
include "Assets\Constantes.asm"

org romArea
  db "AB"                     ; identifica como ROM
  dw startCode                ; endereço de execução
  db "AM01"                   ; string de identificação
  ds 6,0
; =============================================================================
; INICIO PROGRAMA
; =============================================================================
startCode:  
  call Inicializar         	; Inicializar o ambiente do jogo
GameLoop:
DesenharQuadro:
  xor a 						      ; zero A
  ld (JIFFY),a				    ; zero o incremento do VDP
  ld a,(vdpCycle1)			  ; carrego 1/10s
  ld b,a						      ; carrego 1/10s em b
  call PauseVDP           ; aguardo 1/10s
  jp DesenharQuadro			  ; loop de desenho do frame
FimDoJogo:
  jp startCode				    ; recomeca o jogo

include "INIT.ASM"

; =============================================================================
; FIM PROGRAMA
; =============================================================================
include "Assets\Variaveis.asm"
include "Assets\Sprites.asm"
include "Assets\Strings.asm"
include "Assets\Library.asm"
include "Hardware\AY38910.ASM"
include "Hardware\TMS9918.ASM"
include "Hardware\KEYBOARD.ASM"
; =============================================================================
; Padding
; =============================================================================
romPad:
 ds romSize-(romPad-romArea),0