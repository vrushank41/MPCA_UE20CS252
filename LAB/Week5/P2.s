;FIBONACCI SERIES

.DATA
A:.WORD 0,1
FIB:.WORD 0,0,0,0,0,0,0,0,0,0

.TEXT
LDR R0,=A
LDR R1,=FIB
MOV R5,#0

LDR R2,[R0],#4
LDR R3,[R0],#4
STR R2,[R1],#4
STR R3,[R1],#4
Loop:
ADD R4,R3,R2
MOV R2,R3
MOV R3,R4
STR R3,[R1],#4
ADD R5,R5,#1
CMP R5,#8
BNE Loop
SWI 0X011
