; Write an 8051-assembly language program to toggle all the bits of P1 for every 200ms. Assume the crystal frequency as 24 MH

ORG 0000H
MOV P1, #00H
BACK:	MOV A, #55H
MOV P1, A
ACALL DELAY
MOV A, #0AAH
MOV P1, A
ACALL DELAY
SJMP BACK
DELAY: MOV R2, #200
AGAIN: MOV R3, #250
HERE: NOP
NOP
DJNZ R3, HERE
DJNZ R2, AGAIN
RET
END
