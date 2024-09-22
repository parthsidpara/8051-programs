;Write an 8051 ASM program to add a block of five data and move using conditional statements from 500H ROM to External RAM memory 40H to do addition and store the result in 40H (High Byte) and 41H(Lower Byte).

ORG 0000H
LJMP MAIN
ORG 0030H
MAIN	MOV DPTR, #500H
MOV R0, #40H
MOV R2, #5
CLR A
MOV R3, #0
LOOP	CLR A
MOVC A, @A+DPTR
MOV @R0, A
ADD A, R3
MOV R3, A
JNC NEXT
INC R4
NEXT	INC DPTR
INC R0
DJNZ R2, LOOP
MOV 40H, R4
MOV 41H, R3
SJMP $
END
