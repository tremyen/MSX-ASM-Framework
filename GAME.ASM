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
  call Init         	      ; Initialize MSX in graphics mode
  call TSTSCR               ; Framework Test
GameLoop:
  call EventHandler         ; Handle game events
  call UpdateState          ; Update objects 
  call Render               ; Render frame 
  jp GameLoop			          ; loop de desenho do frame
EndGame:
  jp startCode				      ; recomeca o jogo

include "INIT.ASM"
include "EVHNDLR.ASM"
include "UPDATE.ASM"
include "RENDER.ASM"
include "TST\TSTSCR.ASM"

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