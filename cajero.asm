%include "stdmac.mac"
;%include "archivos.mac"
;%include "cajero.mac"

section .bss

section .data
		
	msj		db "Hola saico loco.",10
	lenMsj	equ $-msj
	

section .text
	global _start

_start:

	write	msj, lenMsj
	read	msj, lenMsj - 2
	write msj, lenMsj
	return 0
