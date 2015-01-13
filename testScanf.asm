SECTION .data
format_read	db	'%d',0

SECTION .bss
buffer	resd	1

SECTION .text
global main
extern scanf
main:

;storage reg. values
PUSH	EBP
MOV	EBP,ESP
PUSH	EBX
PUSH	ESI
PUSH	EDI

read:
   PUSH		buffer		
   PUSH		format_read	;need to send via address whenever it's > 32b
   CALL 	scanf
   ADD		ESP,8
;after this block in buffer variable is entered number

   MOV 		EAX,[buffer]	;check

;load reg. values
POP	EDI
POP	ESI
POP	EBX
MOV	ESP,EBP
POP	EBP

RET


