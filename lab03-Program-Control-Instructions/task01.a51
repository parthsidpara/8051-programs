;Write a program to clear accumulator [A], then add 5 to the accumulator 20 times.

ORG 0000H 
MOV A, #00
MOV R0, #20
Loop:	ADD A, #05
DJNZ R0, Loop
MOV R5, A
END
