;Write an 8051 ASM program to solve the following mathematical equation:
; (a - b)^2 = a^2 + b^2 – 2ab
;Where “a” & “b” are values at memory locations 55H & 56H and store the result in 57H (High byte) & 58H (Low Byte).

ORG 0000H
MOV A, 55H
MOV R0, A
MOV A, 56H
MOV R1, A
MOV A, R0
MOV R2, A
MOV A, R0
MUL AB
MOV 59H, A
MOV 5AH, B
MOV A, R1
MOV R2, A
MOV A, R1
MUL AB
MOV R3, A
MOV R4, B
MOV A, R0
MOV B, R1
MUL AB
MOV R5, A
MOV R6, B
MOV A, R5
ADD A, R5
MOV R7, A
MOV A, R6
END
