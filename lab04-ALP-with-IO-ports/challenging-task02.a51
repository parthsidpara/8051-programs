;Write an 8051 assembly language program to glow the LEDs connected on PORT1 in a serial fashion 
;(from LSB to MSB) continuously with 0.5 seconds delay for each. Assume the crystal frequency as 33 MHz.

ORG 0000H
START: MOV P1, #01H
LOOP: CALL DELAY
RL A
MOV P1, A
JNZ LOOP
MOV A, #01H
SJMP LOOP
DELAY: MOV R2, #10
DELAY_1: MOV R1, #250
DELAY_2: MOV R0, #250
DELAY_3: NOP
NOP
DJNZ R0, DELAY_3
DJNZ R1, DELAY_2
DJNZ R2, DELAY_1
RET
END
