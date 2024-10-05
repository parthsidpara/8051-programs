;Write an 8051-assembly language program using timers to generate a frequency of 
;2kHz on pin port pin P2.7. Assume the crystal frequency as 11.0592 MHz

ORG 0000H
MOV TMOD, #01H
MOV TH0, #0FFH
MOV TL0, #34H
SETB TR0
SETB P2.7
MAIN_LOOP: JNB TF0, MAIN_LOOP
CLR TF0
CPL P2.7
MOV TH0, #0FFH
MOV TL0, #34H
SJMP MAIN_LOOP
END
