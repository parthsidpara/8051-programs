;Write a program for the 8051 to transfer “LAB” serially at 9600 baud, 8-bit data, 1 stop bit, do this continuously.

ORG 0000H
MOV TMOD,#20H
MOV TH1,#0FDH
MOV SCON,#50H
SETB TR1
AGAIN: MOV A,#'L'
ACALL TRANS
MOV A,#'A'
ACALL TRANS
MOV A,#'B'
ACALL TRANS
MOV A,#' '
ACALL TRANS
SJMP AGAIN
TRANS: MOV SBUF,A
HERE: JNB TI,HERE
CLR TI
RET
END
