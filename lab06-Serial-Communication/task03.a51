;Assume a switch is connected to a port pin P1.3. Monitor this port pin continuously, 
;whenever P1.3 is HIGH perform the transmission of “Your Register Number” message to the serial port. 
;When P1.3 LOW performs the transmission of “Your Name” message to the serial port using data pointer.

ORG 0000H
MOV P1,#0FFH
MOV TMOD,#20H
MOV TH1,#0FDH
MOV SCON,#50H
SETB TR1
AGAIN: MOV C,P1.3 
JNC LOW1 
MOV A,#'2' 
ACALL TRANS
MOV A,#'3'
ACALL TRANS
MOV A,#'B'
ACALL TRANS
MOV A,#'C'
ACALL TRANS
MOV A,#'E'
ACALL TRANS
MOV A,#'1'
ACALL TRANS
MOV A,#'2'
ACALL TRANS
MOV A,#'2'
ACALL TRANS
MOV A,#'8'
ACALL TRANS
SJMP AGAIN 
LOW1: 
MOV A,#'P' 
ACALL TRANS
MOV A,#'A'
ACALL TRANS
MOV A,#'R'
ACALL TRANS
MOV A,#'T'
ACALL TRANS
MOV A,#'H'
ACALL TRANS
SJMP AGAIN 
TRANS: MOV SBUF,A
HERE: JNB TI,HERE
CLR TI
RET
END
