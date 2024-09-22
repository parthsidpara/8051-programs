;Write an 8051 ASM program to add the first 15 natural numbers.

ORG 0000H
MOV R0, #15
MOV R1, #0
MOV R2, #1
LOOP: MOV A, R1
ADD A, R2
MOV R1, A
INC R2
DJNZ R0, LOOP
MOV 30H, R1
END
