; =============================================================================
; Ininitialize MSX in graphics mode
; =============================================================================
; (C) 2022 Manoel Neto - tremyen@gmail.com;  
; =============================================================================
Init:
  ; ===========================================================================
  ; adjust MSX PAL or NTSC
  ; ===========================================================================
  ld a,NTSC               ; a princípio eh NTSC
  ld (vdpCycle1),a        ; carrego o valor 1/10s (1 ciclo de VDP)
  ld a,NTSC*10            ; multiplico por 10
  ld (vdpCycle5),a        ; carrego o valor 1s (5 ciclos de VDP)
  ld a,(0x002b)           ; leio a versão do MSX na ROM
  bit 7,a                 ; se o bit 7 for 1 é 50Hz senão é 60Hz
  jr z, noPalAdjust       ; sendo 0 eu sigo adiante
palAdjust:
  ld a,PAL                ; defino o novo valor para PAL
  ld (vdpCycle1),a        ; o valor para 1/10s em PAL
  ld a,PAL*10             ; 1/10*10=1, certo?
  ld (vdpCycle5),a        ; o valor é o de 1s em PAL
noPalAdjust:
  ; =========================================================================
  ; Configuro o MSX no modo Screen 2
  ; =========================================================================
  call SetScreen2_16x16   ; Seta a tela para screen 2 com sprites 16 x 16  
  ; =========================================================================
  ; Carrego a tabela de sprites no VDP
  ; =========================================================================
  call LoadSpritesTable   ; Carrega os sprites
  ; =========================================================================
ret