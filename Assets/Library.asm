; =============================================================================
; Library.asm
; =============================================================================
; (C) 2022 Manoel Neto - tremyen@gmail.com
; Funcoes ASM de uso geral para o MSX
; =============================================================================

; =============================================================================
; Print String (Tela Grafica)
; =============================================================================
; Parametros
; HL => Endereço da string
; D  => posicao x
; E  => posicao y
; =============================================================================
; Altera => Escreve a mensagem em HL na tela nas coordenadas DE
; =============================================================================
PrintString:
	call PrintStringGRP
ret
; =============================================================================

; =============================================================================
; Sortear Numero randomico
; =============================================================================
; A => Numero maximo do sorteio
; =============================================================================
; Altera => A (Numero aleatorio de 0 ate A)
; =============================================================================
RandomNumber:
	push bc
	push de
		ld b,a						; Numero Maximo Sorteio
		ld a,128					; Dividir 128 pelo tamanho numero maximo
		ld d,0						; contador de subtracao sucessivas
DvPTamanho:
		sub b    					; comeca a divisao pelo tamanho maximo
		inc d						; aumenta o acumulador
		jr nc, DvPTamanho		  	; repete enquanto nao tem "vai um"
		dec d						; elimina o resto
		ld a,d						; nesse momento D tem o divisior ideal
		ld b,a						; carrega o divisor ideal
		ld a,r						; Gera um aleatorio entre 0 e 127
		ld d,0						; contador de subtracao sucessivas
DvPIdeal:
		sub b 						; comeca a divisao pelo divisor ideal
		inc d						; aumenta o acumulador
		jr nc, DvPIdeal 			; repete enquanto nao tem "vai um"
		dec d						; elimina o resto
		ld a,d						; Retorna o numero aleatorio
	pop de
	pop bc
ret
; =============================================================================

; =============================================================================
; Esperar a tecla ENTER
; =============================================================================
; Parametros
; Nenhum
; =============================================================================
; Altera => Nada
; =============================================================================
WaitEnter:
	push af
LoopWaitEnter:
		call CHGET
		cp 13
		jr z,EndWaitEnter
		jr LoopWaitEnter
EndWaitEnter:
	pop af 
ret
; =============================================================================

; =============================================================================
; Converter um numero de 0 a 15 em seu digito hexadecimal
; =============================================================================
; A => Numero a ser convertido
; =============================================================================
; ALTERA => A
; =============================================================================
ConvNumChar:
	cp 0
	jp z,Zero
	cp 1
	jp z,Um
	cp 2
	jp z,Dois
	cp 3
	jp z,Tres
	cp 4
	jp z,Quatro
	cp 5
	jp z,Cinco
	cp 6
	jp z,Seis
	cp 7
	jp z,Sete
	cp 8
	jp z,Oito
	cp 9
	jp z,Nove
	cp 10
	jp z,DezA
	cp 11
	jp z,OnzeB
	cp 12
	jp z,Dozec
	cp 13
	jp z,TrezeD
	cp 14
	jp z,QuatorzeE
	cp 15
	jp z,QuinzeF
	ret
Zero:
	ld a,'0'
ret

Um:
	ld a,'1'
ret

Dois:
	ld a,'2'
ret

Tres:
	ld a,'3'
ret

Quatro:
	ld a,'4'
ret

Cinco:
	ld a,'5'
ret

Seis:
	ld a,'6'
ret

Sete:
	ld a,'7'
ret

Oito:
	ld a,'8'
ret

Nove:
	ld a,'9'
ret

DezA:
	ld a,'A'
ret

OnzeB:
	ld a,'B'
ret

Dozec:
	ld a,'C'
ret

TrezeD:
	ld a,'D'
ret

QuatorzeE:
	ld a,'E'
ret

QuinzeF:
	ld a,'F'
ret
; =============================================================================