;Write a program to move a block of FIVE data starting from RAM 40H to external RAM memory 3000H onwards and perform complement operation before storing to external RAM.

ORG 0000H 
MOV R0, #40H
MOV DPTR, #3000H
MOV R2, #05H
LOOP: MOV A, @R0
CPL A
MOVX @DPTR, A
INC R0
INC DPTR
DJNZ R2, LOOP
END
