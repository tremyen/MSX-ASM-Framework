; =============================================================================
; VAR.ASM
; =============================================================================
; (C) 2022 Manoel Neto - tremyen@gmail.com
; =============================================================================
NumCentenas: 	    equ ramArea+1   ; Used to print numbers
NumDezenas:  	    equ ramArea+2   ; Used to print numbers
NumUnidades: 	    equ ramArea+3   ; Used to print numbers
vdpCycle1:          equ ramArea+4   ; VPD Cycle calculation
vdpCycle5:          equ ramArea+5   ; VPD Cycle calculation
HeroXPos:           equ ramArea+6   ; Hero X position
HeroYPos:           equ ramArea+7   ; Hero Y position
HeroXVel:           equ ramArea+8   ; Hero X velocity
HeroYVel:           equ ramArea+9   ; Hero Y velocity
HeroFlags:          equ ramArea+10  ; XXXXXX00 => BIT 0 LEFT/RIGHT, BIT 1 UP/DOWN
HeroSprite1:        equ ramArea+11  ; Hero animation sprite 1
HeroSprite2:        equ ramArea+12  ; Hero animation sprite 2
; =============================================================================