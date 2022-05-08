; =============================================================================
; Constantes.asm
; =============================================================================
; (C) 2022 Manoel Neto - tremyen@gmail.com
; =============================================================================
romSize:            equ 32768   ; O tamanho que a ROM deve ter
romArea:            equ &4000   ; Minha ROM comeca aqui
ramArea:            equ &E000   ; Inicio da area de variaveis
PAL:                equ 5       ; 1/10s em 50Hz (PAL-B/G/N)
NTSC:               equ 6       ; 1/10s em 60Hz (NTSC & PAL-M)
; =============================================================================