;To find a smallest element in an array

.DATA
A:.WORD 15,30,52,5,32
B:.WORD 0

.TEXT
LDR R1,=A
LDR R2,=B

MOV R5,#0

LDR R3,[R1],#4
Loop:LDR R4,[R1],#4
CMP R3,R4
MOVGE R3,R4
ADD R5,R5,#1
CMP R5,#4
BNE Loop
STR R2,[R3]
SWI 0X11
