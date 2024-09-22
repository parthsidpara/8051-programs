;Write an 8051 ASM program to copy a block of 5 bytes from RAM 50H to 40H.

ORG 0000H 
MOV R0, #50H
MOV R1, #40H
MOV R2, #05H
LOOP:	MOV A, @R0
MOV @R1, A
INC R0
INC R1
DJNZ R2, LOOP
END
