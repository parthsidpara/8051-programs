;To write an 8051 ASM program to perform subtraction of two 8-bit numbers 76H and 97H and store the result at address location 55H.

ORG 0000H 
MOV A, #76H 
SUBB A, #97H
MOV 55H, A
END
