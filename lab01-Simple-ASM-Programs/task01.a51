;To write a 8051 ASM program to perform the following operations:
;-	Move operation between A and data
;-	Move operation between Rn and data
;-	Move operation between A and Rn

ORG 0000H 
MOV A, #55H 
MOV R0, #0D3H 
MOV A, R0
END
