; =============================================================================
;  <NomeDoJogo> 1.0
; =============================================================================
;  (C) 2022 Manoel Neto - tremyen@gmail.com
; =============================================================================
__VERSION:  equ 1
__RELEASE:  equ 0
include "ASSETS\CONST.ASM"

org romArea
  db "AB"                   ; identifica como ROM
  dw startCode              ; endereço de execução
  db "AM01"                 ; string de identificação
  ds 6,0
; =============================================================================
; INICIO PROGRAMA
; =============================================================================
startCode:  
  call Inicializar         	; Inicializar o ambiente do jogo
  call TSTSCR               ; TESTA O SETUP DA TELA 
GameInit:
FrameDraw:
  call LeftRightMove
  xor a 						        ; zero A
  ld (JIFFY),a				      ; zero o incremento do VDP
  ld a,(vdpCycle1)			    ; carrego 1/10s
  ld b,a						        ; carrego 1/10s em b
  call PauseVDP             ; aguardo 1/10s
  jp FrameDraw			        ; loop de desenho do frame
EndGame:
  jp startCode				      ; recomeca o jogo

include "INIT.ASM"
include "TST\TSTSCR.ASM"
include "TST\TSTMVM.ASM"

; =============================================================================
; FIM PROGRAMA
; =============================================================================
include "ASSETS\VAR.ASM"
include "ASSETS\SPRT.ASM"
include "ASSETS\STRS.ASM"
include "ASSETS\LIB.ASM"
include "HARDWARE\BIOSMSX.ASM"
include "HARDWARE\AY38910.ASM"
include "HARDWARE\TMS9918.ASM"
include "HARDWARE\KEYBOARD.ASM"
; =============================================================================
; Padding
; =============================================================================
romPad:
 ds romSize-(romPad-romArea),0