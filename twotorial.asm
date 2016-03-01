;;===============================
;;Name:
;;===============================

.orig x3000

	LD R6, STACK			; load the stack pointer

	LD R0, N				; R0 = N
	ADD R6, R6, -1			; push argument N on stack
	STR R0, R6, 0			

	JSR TWOTORIAL

	LDR R0, R6, 0			; load return value off top of stack
	ADD R6, R6, 2 			; restore stack to previous value

	ST R0, ANSWER			; store answer
	HALT

N 		.fill 10
ANSWER 	.blkw 1
STACK 	.fill xF000


TWOTORIAL
	; your code here!
.end
