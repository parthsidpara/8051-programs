;Write an 8051-assembly language program to glow the LEDs connected on PORT1 one at a time 
;in a serial fashion (from LSB to MSB) continuously with 1 second delay for each. Assume the Crystal frequency as 24 MHz

ORG 0000H
START MOV P1, #01H
LOOP CALL DELAY
RL A
MOV P1, A
JNZ LOOP
MOV A, #01H
SJMP LOOP
DELAY	MOV R2, #0FH
DELAY_1	MOV R1, #0FFH
DELAY_2	MOV R0, #0FFH
DELAY_3	DJNZ R0, DELAY_3
DJNZ R1, DELAY_2
DJNZ R2, DELAY_1
RET
END
