;Write an 8051 ASM program to copy a block of 5 bytes from ROM 200H to Internal RAM 18H.

ORG 0000H 
MOV R0, #18H
MOV A, #00H
MOV DPTR, #200H
MOV R2, #05
LOOP: CLR A
MOVC A, @A+DPTR
MOV @R0, A
INC DPTR
INC R0
DJNZ R2, LOOP
END
